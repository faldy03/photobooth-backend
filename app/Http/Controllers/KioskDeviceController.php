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
        $devices = KioskDevice::withCount('sessions')->latest()->get();
        
        return response()->json([
            'success' => true,
            'data'    => $devices
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