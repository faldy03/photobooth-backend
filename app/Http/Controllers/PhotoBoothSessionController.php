<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use App\Models\PhotoboothSession;
use App\Models\SessionPhoto;
use Carbon\Carbon;
use Illuminate\Support\Facades\File;
use App\Jobs\UploadPhotoToGoogleDrive;

class PhotoBoothSessionController extends Controller
{
    public function savePhotos(Request $request)
    {
        $request->validate([
            'final_photo' => 'required|string',
            'raw_photos' => 'nullable|array',
            'transaction_id' => 'nullable|integer',
            'kiosk_device_id' => 'nullable|integer',
        ]);

        try {
            DB::beginTransaction();

            $sessionUuid = Str::uuid()->toString();

            // Decode dan Simpan Foto Final (Gabungan 2R) ke Storage Server
            $finalImage = $request->final_photo;
            $finalFileName = 'final_' . $sessionUuid . '.jpg';
            $finalFilePath = 'sessions/' . $finalFileName;

            $imageParts = explode(";base64,", $finalImage);
            $imageBase64 = base64_decode($imageParts[1]);

            Storage::disk('public')->put($finalFilePath, $imageBase64);
            $finalUrl = asset('storage/sessions/' . $finalFileName);

            // Safety Fallback: Jika transaction_id dikirim tetapi tidak ada di DB (karena database di-reset)
            $transactionId = $request->transaction_id;
            if ($transactionId) {
                $transactionExists = DB::table('transactions')->where('id', $transactionId)->exists();
                if (!$transactionExists) {
                    DB::table('transactions')->insert([
                        'id' => $transactionId,
                        'invoice_number' => 'INV-DUMMY-' . $transactionId . '-' . time(),
                        'gross_amount' => 30000.00,
                        'net_amount' => 30000.00,
                        'payment_status' => 'success',
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now(),
                    ]);
                }
            } else {
                // Jika tidak ada transaction_id sama sekali, buat transaksi baru untuk memenuhi foreign key
                $newTransactionId = DB::table('transactions')->insertGetId([
                    'invoice_number' => 'INV-AUTO-' . time() . '-' . Str::random(5),
                    'gross_amount' => 30000.00,
                    'net_amount' => 30000.00,
                    'payment_status' => 'success',
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                ]);
                $transactionId = $newTransactionId;
            }

            // Simpan ke Database
            $session = PhotoboothSession::create([
                'session_uuid' => $sessionUuid,
                'transaction_id' => $transactionId,
                'kiosk_device_id' => $request->kiosk_device_id,
                'start_time' => Carbon::now(),
                'end_time' => Carbon::now(),
                'final_photo_path' => $finalFilePath,
                'download_expired_at' => Carbon::now()->addHour(),
            ]);

            $rawPhotosForQueue = [];

            // Proses Foto Mentah
            if ($request->has('raw_photos')) {
                foreach ($request->raw_photos as $index => $rawPhoto) {
                    $rawFileName = 'raw_' . $sessionUuid . '_' . $index . '.jpg';
                    $rawFilePath = 'sessions/' . $rawFileName;

                    if (strpos($rawPhoto, ';base64,') !== false) {
                        $rawParts = explode(";base64,", $rawPhoto);
                        $rawBase64 = base64_decode($rawParts[1]);
                        Storage::disk('public')->put($rawFilePath, $rawBase64);
                        $rawPhotosForQueue[] = ['name' => $rawFileName, 'path' => $rawFilePath];
                    } else {
                        $parsedUrl = parse_url($rawPhoto);
                        $pathInfo = pathinfo($parsedUrl['path']);
                        $originalFileName = $pathInfo['basename'];

                        $sourceFile = public_path('raw_photos/' . $originalFileName);

                        if (File::exists($sourceFile)) {
                            File::copy($sourceFile, Storage::disk('public')->path($rawFilePath));
                            $rawPhotosForQueue[] = ['name' => $rawFileName, 'path' => $rawFilePath];
                        }
                    }

                    SessionPhoto::create([
                        'photobooth_session_id' => $session->id,
                        'raw_photo_path' => $rawFilePath,
                        'is_selected' => true,
                    ]);
                }
            }

            DB::commit();

            // 🚀 Lempar Tugas Upload GDrive ke Latar Belakang dengan nama folder per sesi
            $sessionFolderName = 'Session_' . Carbon::now()->format('Y-m-d_H-i-s') . '_' . substr($sessionUuid, 0, 8);
            UploadPhotoToGoogleDrive::dispatch($finalFileName, $finalFilePath, $rawPhotosForQueue, $sessionFolderName);

            // Balas ke Next.js dengan membawa final_photo_base64 agar bisa diprint lokal
            return response()->json([
                'success' => true,
                'message' => 'Foto berhasil disimpan di Database Server!',
                'download_link' => $finalUrl,
                'final_photo_base64' => $request->final_photo
            ], 200);

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Gagal menyimpan foto: ' . $e->getMessage()
            ], 500);
        }
    }

    public function receiveDslrPhoto(Request $request)
    {
        $request->validate([
            'photo' => 'required|image|mimes:jpeg,png,jpg|max:10240',
        ]);

        try {
            $file = $request->file('photo');
            $fileName = 'dslr_' . time() . '_' . Str::random(5) . '.' . $file->getClientOriginalExtension();
            $destinationPath = public_path('raw_photos');

            if (!File::exists($destinationPath)) {
                File::makeDirectory($destinationPath, 0755, true);
            }

            $file->move($destinationPath, $fileName);
            $url = url('raw_photos/' . $fileName);

            return response()->json([
                'success' => true,
                'message' => 'Foto DSLR berhasil mendarat!',
                'file_url' => $url,
                'filename' => $fileName
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal menerima foto: ' . $e->getMessage()
            ], 500);
        }
    }

    public function getLatestPhoto()
    {
        try {
            $directory = public_path('raw_photos');
            $xamppDirectory = 'C:\\xampp\\htdocs\\photobooth\\photobooth-backend\\public\\raw_photos';

            // Pastikan folder laragon ada
            if (!File::exists($directory)) {
                File::makeDirectory($directory, 0755, true);
            }

            $files = [];

            // Scan folder Laragon
            if (File::exists($directory)) {
                $files = array_merge($files, File::files($directory));
            }

            // Scan folder XAMPP sebagai fallback jika ada
            if (File::exists($xamppDirectory)) {
                $files = array_merge($files, File::files($xamppDirectory));
            }

            if (count($files) === 0) {
                return response()->json(['success' => false, 'message' => 'Belum ada foto'], 404);
            }

            // Urutkan file berdasarkan waktu modifikasi terbaru
            usort($files, function ($a, $b) {
                return $b->getMTime() - $a->getMTime();
            });

            // Ambil file urutan pertama (paling baru)
            $latestFile = $files[0];
            $filename = $latestFile->getFilename();

            // Jika file terbaru berada di folder XAMPP, salin ke folder Laragon agar bisa diakses via URL
            if ($latestFile->getPath() !== $directory) {
                $destPath = $directory . '/' . $filename;
                if (!File::exists($destPath)) {
                    File::copy($latestFile->getRealPath(), $destPath);
                }
            }

            $url = url('api/raw-photo/' . $filename);

            return response()->json([
                'success' => true,
                'filename' => $filename,
                'url' => $url
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal mengambil foto terbaru: ' . $e->getMessage()
            ], 500);
        }
    }
}