<?php

namespace App\Http\Controllers;

use App\Models\KioskDevice;
use Illuminate\Http\Request;

class KioskDeviceController extends Controller
{
    // 1. Tampilkan semua data Mesin Kios
    public function index()
    {
        // Mengambil data kios, sekalian menghitung jumlah sesi foto yang pernah dilakukan mesin ini
        $devices = KioskDevice::withCount('sessions')->latest()->get()->map(function ($device) {
            // Jika tidak ada aktivitas heartbeat lebih dari 1 menit, tandai dinamis sebagai offline
            if ($device->last_seen && $device->last_seen->diffInMinutes(now()) >= 1) {
                $device->status = 'offline';
            }
            return $device;
        });
        
        return response()->json([
            'success' => true,
            'data'    => $devices
        ], 200);
    }

    // 1b. Menerima Heartbeat / Ping dari Kios Lokal
    public function ping(Request $request)
    {
        $validated = $request->validate([
            'device_id'           => 'required|string|exists:kiosk_devices,device_id',
            'is_camera_connected' => 'required|boolean',
        ]);

        $device = KioskDevice::where('device_id', $validated['device_id'])->first();

        $device->update([
            'last_seen'           => now(),
            'is_camera_connected' => $validated['is_camera_connected'],
            'status'              => 'active', // Aktifkan kembali saat ping diterima
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Heartbeat berhasil diterima.',
            'data'    => $device
        ], 200);
    }

    // 2. Tambah Mesin Kios Baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'device_id'     => 'required|string|unique:kiosk_devices,device_id|max:100',
            'location_name' => 'required|string|max:255',
            'status'        => 'required|in:active,offline,maintenance',
        ]);

        $device = KioskDevice::create($validated);

        return response()->json([
            'success' => true,
            'message' => 'Mesin kios berhasil didaftarkan.',
            'data'    => $device
        ], 201);
    }

    // 3. Ubah Data Mesin Kios
    public function update(Request $request, $id)
    {
        $device = KioskDevice::find($id);

        if (!$device) {
            return response()->json(['success' => false, 'message' => 'Mesin tidak ditemukan'], 404);
        }

        $validated = $request->validate([
            'device_id'     => 'required|string|max:100|unique:kiosk_devices,device_id,' . $id,
            'location_name' => 'required|string|max:255',
            'status'        => 'required|in:active,offline,maintenance',
        ]);

        $device->update($validated);

        return response()->json([
            'success' => true,
            'message' => 'Data mesin berhasil diperbarui.',
            'data'    => $device
        ], 200);
    }

    // 4. Hapus Mesin Kios
    public function destroy($id)
    {
        $device = KioskDevice::find($id);

        if (!$device) {
            return response()->json(['success' => false, 'message' => 'Mesin tidak ditemukan'], 404);
        }

        $device->delete();

        return response()->json([
            'success' => true,
            'message' => 'Mesin kios berhasil dihapus.'
        ], 200);
    }
}