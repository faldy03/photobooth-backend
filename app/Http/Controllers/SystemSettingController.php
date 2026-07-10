<?php

namespace App\Http\Controllers;

use App\Models\SystemSetting;
use Illuminate\Http\Request;

class SystemSettingController extends Controller
{
    // 1. Ambil semua konfigurasi (Untuk Frontend Kios & Admin)
    public function index()
    {
        // Mengambil semua data dan mengubahnya menjadi format Key-Value pasangannya
        $settings = SystemSetting::pluck('value', 'key');

        // Jika database masih kosong, berikan nilai default agar frontend tidak crash
        if ($settings->isEmpty()) {
            $settings = [
                'price_per_session' => '35000',
                'session_duration_minutes' => '5',
                'countdown_duration_seconds' => '5',
                'max_photos_taken' => '6'
            ];
        }

        return response()->json([
            'success' => true,
            'data'    => $settings
        ], 200);
    }

    // 2. Perbarui konfigurasi secara massal (Hanya Admin)
    public function update(Request $request)
    {
        $validated = $request->validate([
            'price_per_session'          => 'required|numeric|min:0',
            'session_duration_minutes'   => 'required|integer|min:1',
            'countdown_duration_seconds' => 'required|integer|min:1',
            'max_photos_taken'           => 'required|integer|min:1',
        ]);

        // Simpan atau perbarui setiap key ke database
        foreach ($validated as $key => $value) {
            SystemSetting::updateOrCreate(
                ['key' => $key],
                ['value' => $value]
            );
        }

        return response()->json([
            'success' => true,
            'message' => 'Konfigurasi sistem berhasil diperbarui.'
        ], 200);
    }
}