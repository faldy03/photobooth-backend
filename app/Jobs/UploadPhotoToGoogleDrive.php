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

    /**
     * Menerima data nama dan lokasi file dari Controller
     */
    public function __construct($finalFileName, $finalFilePath, $rawPhotosData = [])
    {
        $this->finalFileName = $finalFileName;
        $this->finalFilePath = $finalFilePath;
        $this->rawPhotosData = $rawPhotosData;
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
                Storage::disk('google')->put($this->finalFileName, $finalFileContent);
                Log::info("Queue: Berhasil upload Final Photo - " . $this->finalFileName);
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
                        Storage::disk('google')->put($raw['name'], $rawContent);
                        Log::info("Queue: Berhasil upload Raw Photo - " . $raw['name']);
                    }
                } catch (\Exception $e) {
                    Log::error("Queue: Gagal upload Raw Photo ke GDrive - " . $e->getMessage());
                }
            }
        }
    }
}   