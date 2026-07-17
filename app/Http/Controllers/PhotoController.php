<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use App\Models\Photo;

class PhotoController extends Controller
{
    public function upload(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg|max:10240',
            'participant_id' => 'nullable|string',
            'event_id' => 'nullable|string',
        ]);

        try {
            $file = $request->file('image');
            $fileName = 'photo_' . time() . '_' . Str::random(5) . '.' . $file->getClientOriginalExtension();
            
            // 1. Simpan foto lokal (untuk backup & local url)
            $destinationPath = public_path('raw_photos');
            if (!File::exists($destinationPath)) {
                File::makeDirectory($destinationPath, 0755, true);
            }
            $file->move($destinationPath, $fileName);
            $localUrl = url('raw_photos/' . $fileName);

            // 2. Upload ke Google Drive (dikelompokkan per Event dan per Sesi/Participant)
            $eventFolder = $request->input('event_id') ? 'event_' . $request->input('event_id') : 'no_event';
            $sessionFolder = $request->input('participant_id') ? 'session_' . $request->input('participant_id') : 'session_' . date('Ymd_His') . '_' . Str::random(3);
            $googlePath = $eventFolder . '/' . $sessionFolder . '/' . $fileName;

            $localFilePath = $destinationPath . '/' . $fileName;
            $fileContent = file_get_contents($localFilePath);
            Storage::disk('google')->put($googlePath, $fileContent);

            // 3. Dapatkan Google Drive URL & File ID
            $googleDriveUrl = Storage::disk('google')->url($googlePath);
            
            $googleDriveFileId = null;
            $parsedUrl = parse_url($googleDriveUrl);
            if (isset($parsedUrl['query'])) {
                parse_str($parsedUrl['query'], $query);
                if (isset($query['id'])) {
                    $googleDriveFileId = $query['id'];
                }
            }

            // 4. Simpan ke database
            $participantId = $request->input('participant_id');
            $participantName = $request->input('participant_name') ?? $participantId;

            $photo = Photo::create([
                'participant_name' => $participantName,
                'participant_id' => $participantId,
                'event_id' => $request->input('event_id'),
                'filename' => $fileName,
                'google_drive_file_id' => $googleDriveFileId,
                'google_drive_url' => $googleDriveUrl,
            ]);

            return response()->json([
                'success' => true,
                'photo_url' => $localUrl,
                'google_drive_url' => $googleDriveUrl
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal mengunggah foto: ' . $e->getMessage()
            ], 500);
        }
    }
}
