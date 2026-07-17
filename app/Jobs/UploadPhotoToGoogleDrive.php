<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class UploadPhotoToGoogleDrive implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $finalFileName;
    protected $finalFilePath;
    protected $rawPhotosData;
    protected $sessionFolderName;

    /**
     * Menerima data nama dan lokasi file dari Controller
     */
    public function __construct($finalFileName, $finalFilePath, $rawPhotosData = [], $sessionFolderName = null)
    {
        $this->finalFileName = $finalFileName;
        $this->finalFilePath = $finalFilePath;
        $this->rawPhotosData = $rawPhotosData;
        $this->sessionFolderName = $sessionFolderName ?? 'session_default';
    }

    /**
     * Eksekusi Upload ke Google Drive
     */
    public function handle()
    {
        // 1. Upload Final Photo
        try {
            // Ambil file fisik dari storage lokal
            if (Storage::disk('public')->exists($this->finalFilePath)) {
                $finalFileContent = Storage::disk('public')->get($this->finalFilePath);
                $gdrivePath = $this->sessionFolderName . '/' . $this->finalFileName;
                Storage::disk('google')->put($gdrivePath, $finalFileContent);
                Log::info("Queue: Berhasil upload Final Photo - " . $gdrivePath);
            }
        } catch (\Exception $e) {
            Log::error("Queue: Gagal upload Final Photo ke GDrive - " . $e->getMessage());
        }

        // 2. Upload Raw Photos
        if (!empty($this->rawPhotosData)) {
            foreach ($this->rawPhotosData as $raw) {
                try {
                    if (Storage::disk('public')->exists($raw['path'])) {
                        $rawContent = Storage::disk('public')->get($raw['path']);
                        $gdriveRawPath = $this->sessionFolderName . '/' . $raw['name'];
                        Storage::disk('google')->put($gdriveRawPath, $rawContent);
                        Log::info("Queue: Berhasil upload Raw Photo - " . $gdriveRawPath);
                    }
                } catch (\Exception $e) {
                    Log::error("Queue: Gagal upload Raw Photo ke GDrive - " . $e->getMessage());
                }
            }
        }
    }
}   