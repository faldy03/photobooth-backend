<?php

namespace App\Http\Controllers;

use App\Models\PhotoAsset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PhotoAssetController extends Controller
{
    // 1. Tampilkan semua aset visual
    public function index()
    {
        $assets = PhotoAsset::latest()->get();

        $assets->transform(function ($asset) {
            $asset->image_url = asset('storage/' . $asset->file_path);
            return $asset;
        });

        return response()->json(['success' => true, 'data' => $assets], 200);
    }

    public function getActiveFrames()
    {
        $frames = PhotoAsset::where('type', 'frame')
            ->where('is_active', true)
            ->latest()
            ->get();

        $frames->transform(function ($frame) {
            $frame->image_url = asset('storage/' . $frame->file_path);
            return $frame;
        });

        return response()->json([
            'success' => true,
            'data' => $frames
        ], 200);
    }

    // 2. Upload & Simpan Aset Baru
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|in:frame,filter',
            'image' => 'required|image|mimes:png,jpg,jpeg|max:5120',
            'config' => 'nullable|string',
            'is_active' => 'required|boolean',
            // Menerima JSON string dari frontend
        ]);

        $filePath = $request->file('image')->store('photo_assets', 'public');

        // Decode JSON dari frontend menjadi array PHP
        $configData = null;
        if ($request->filled('config')) {
            $configData = json_decode($request->config, true);
        }

        $asset = PhotoAsset::create([
            'name' => $request->name,
            'type' => $request->type,
            'file_path' => $filePath,
            'is_active' => $request->is_active,
            'config' => $configData, // Simpan ke database
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Aset visual berhasil diunggah.',
            'data' => $asset
        ], 201);
    }

    // 3. Ubah Data
    public function update(Request $request, $id)
    {
        $asset = PhotoAsset::find($id);

        if (!$asset)
            return response()->json(['success' => false, 'message' => 'Aset tidak ditemukan'], 404);

        $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|in:frame,filter',
            'image' => 'nullable|image|mimes:png,jpg,jpeg|max:5120',
            'is_active' => 'required|boolean',
            'config' => 'nullable|string', // Menerima JSON string dari frontend
        ]);

        $filePath = $asset->file_path;

        if ($request->hasFile('image')) {
            if (Storage::disk('public')->exists($asset->file_path)) {
                Storage::disk('public')->delete($asset->file_path);
            }
            $filePath = $request->file('image')->store('photo_assets', 'public');
        }

        // Decode JSON dari frontend menjadi array PHP
        $configData = $asset->config; // Default gunakan yang lama
        if ($request->filled('config')) {
            $configData = json_decode($request->config, true);
        }

        $asset->update([
            'name' => $request->name,
            'type' => $request->type,
            'file_path' => $filePath,
            'is_active' => $request->is_active,
            'config' => $configData, // Update ke database
        ]);

        return response()->json(['success' => true, 'message' => 'Data aset diperbarui.', 'data' => $asset], 200);
    }

    // 4. Hapus Aset
    public function destroy($id)
    {
        $asset = PhotoAsset::find($id);

        if (!$asset)
            return response()->json(['success' => false, 'message' => 'Aset tidak ditemukan'], 404);

        if (Storage::disk('public')->exists($asset->file_path)) {
            Storage::disk('public')->delete($asset->file_path);
        }

        $asset->delete();

        return response()->json(['success' => true, 'message' => 'Aset visual dan file berhasil dihapus.'], 200);
    }
}