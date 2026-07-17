<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use App\Models\PhotoboothSession;
use App\Models\SessionPhoto;
use Carbon\Carbon;

class CleanExpiredPhotos extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'photos:clean-expired';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Clean up local photo files that have expired (older than 1 hour) to save disk space';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('Starting expired photos cleanup...');
        
        $now = Carbon::now();
        
        // 1. Cari sesi yang waktu download-nya sudah kedaluwarsa
        $expiredSessions = PhotoboothSession::where('download_expired_at', '<=', $now)
            ->whereNotNull('final_photo_path')
            ->get();

        $sessionCleaned = 0;
        $filesDeleted = 0;

        foreach ($expiredSessions as $session) {
            // Hapus file final
            if ($session->final_photo_path && Storage::disk('public')->exists($session->final_photo_path)) {
                Storage::disk('public')->delete($session->final_photo_path);
                $filesDeleted++;
            }

            // Cari dan hapus file raw
            $rawPhotos = SessionPhoto::where('photobooth_session_id', $session->id)->get();
            foreach ($rawPhotos as $rawPhoto) {
                if ($rawPhoto->raw_photo_path && Storage::disk('public')->exists($rawPhoto->raw_photo_path)) {
                    Storage::disk('public')->delete($rawPhoto->raw_photo_path);
                    $filesDeleted++;
                }
                $rawPhoto->delete();
            }

            // Set final_photo_path ke null agar tidak diproses lagi berikutnya
            $session->update([
                'final_photo_path' => null
            ]);

            $sessionCleaned++;
        }

        // 2. Bersihkan file di public/raw_photos yang berumur lebih dari 1 jam
        $rawPhotosDir = public_path('raw_photos');
        if (File::exists($rawPhotosDir)) {
            $files = File::files($rawPhotosDir);
            foreach ($files as $file) {
                // Lewati file seeder default agar tidak terhapus selama development
                $fileName = $file->getFilename();
                if ($fileName === 'photo_1784298780_XFWUa.jpg' || $fileName === 'photo_1784298962_T7EhQ.jpg') {
                    continue;
                }

                // Cek waktu modifikasi (jika lebih dari 1 jam yang lalu, hapus)
                $mtime = $file->getMTime();
                if (($now->getTimestamp() - $mtime) > 3600) { // 3600 detik = 1 jam
                    File::delete($file->getRealPath());
                    $filesDeleted++;
                }
            }
        }

        $this->info("Cleanup completed! Cleaned {$sessionCleaned} sessions and deleted {$filesDeleted} physical files.");
    }
}
