<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\File;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\VoucherController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TransactionController;
use App\Http\Middleware\IsAdmin;
use App\Http\Controllers\KioskDeviceController;
use App\Http\Controllers\PhotoAssetController;
use App\Http\Controllers\SystemSettingController;
use App\Http\Controllers\PhotoBoothSessionController;
use App\Http\Controllers\PhotoController;

// Route Publik
Route::post('/admin/login', [AuthController::class, 'login'])->middleware('throttle:5,1');
Route::post('/checkout', [TransactionController::class, 'checkout']);
Route::post('/doku/notification', [TransactionController::class, 'notification']);
Route::get('/checkout/status/{invoice}', [TransactionController::class, 'checkStatus']);
Route::get('/kiosk/settings', [SystemSettingController::class, 'index']);
Route::get('/kiosk/frames', [PhotoAssetController::class, 'getActiveFrames']);
Route::post('/kiosk/ping', [KioskDeviceController::class, 'ping']);

Route::get('/create-storage-link', function () {
    try {
        \Illuminate\Support\Facades\Artisan::call('storage:link');
        return response()->json(['success' => true, 'message' => 'Storage symbolic link created successfully!']);
    } catch (\Exception $e) {
        return response()->json(['success' => false, 'message' => $e->getMessage()]);
    }
});

Route::get('/storage-diagnostics', function () {
    $publicPath = public_path();
    $storagePath = storage_path('app/public');
    
    $symlinkInPublic = public_path('storage');
    $symlinkInPublicHtml = $_SERVER['DOCUMENT_ROOT'] . '/storage';
    
    return response()->json([
        'public_path' => $publicPath,
        'document_root' => $_SERVER['DOCUMENT_ROOT'],
        'storage_path' => $storagePath,
        'public_storage_exists' => file_exists($symlinkInPublic),
        'public_storage_is_link' => is_link($symlinkInPublic),
        'public_html_storage_exists' => file_exists($symlinkInPublicHtml),
        'public_html_storage_is_link' => is_link($symlinkInPublicHtml),
        'public_html_storage_target' => is_link($symlinkInPublicHtml) ? readlink($symlinkInPublicHtml) : null,
    ]);
});

Route::get('/fix-storage-link', function () {
    $target = '/home/boog3197/photobooth_backend/storage/app/public';
    $shortcut = '/home/boog3197/public_html/storage';
    
    // 1. Singkirkan folder fisik penghalang jika ada
    if (file_exists($shortcut)) {
        if (is_link($shortcut)) {
            unlink($shortcut);
        } else {
            // Rename folder fisik lama agar aman
            rename($shortcut, $shortcut . '_old_' . time());
        }
    }
    
    // 2. Buat symbolic link yang mengarah langsung ke folder storage inti
    try {
        symlink($target, $shortcut);
        return response()->json(['success' => true, 'message' => 'Symbolic link folder storage sukses diperbaiki di public_html!']);
    } catch (\Exception $e) {
        return response()->json(['success' => false, 'message' => 'Gagal memperbaiki link: ' . $e->getMessage()]);
    }
});

// =========================================================================
// ROUTE INTI PHOTOBOOTH (Untuk Next.js & Node.js)
// =========================================================================

// 1. Simpan Foto Final (Next.js menembak ke sini)
Route::post('/sessions/save-photos', [PhotoBoothSessionController::class, 'savePhotos']);

// 2. Menerima Foto Asli dari DSLR (Node.js Lokal menembak ke sini)
Route::post('/kiosk/receive-dslr-photo', [PhotoBoothSessionController::class, 'receiveDslrPhoto']);

Route::get('/kiosk/latest-photo', [PhotoBoothSessionController::class, 'getLatestPhoto']);
// 3. Izin Khusus Canvas (CORS Bypass) untuk Foto Jepretan
Route::get('/raw-photo/{filename}', function ($filename) {
    $path = public_path('raw_photos/' . $filename);
    if (!File::exists($path)) {
        abort(404);
    }
    return response()->file($path);
});

// 4. Proxy Image (Untuk bypass CORS bingkai dari Storage)
Route::get('/proxy-image', function (Request $request) { 
    $url = $request->query('url');
    if (!$url) return response()->json(['error' => 'URL parameter is missing'], 400);

    $parsedUrl = parse_url($url);
    $path = $parsedUrl['path'] ?? '';
    $relativePath = str_replace('/storage/', '', $path);

    if (\Illuminate\Support\Facades\Storage::disk('public')->exists($relativePath)) {
        $file = \Illuminate\Support\Facades\Storage::disk('public')->get($relativePath);
        $type = \Illuminate\Support\Facades\Storage::disk('public')->mimeType($relativePath);
        
        return response($file, 200)->header('Content-Type', $type);
    }
    
    return response()->json(['error' => 'Image not found'], 404);
});

// Route Terproteksi (Admin)
Route::middleware(['auth:sanctum', IsAdmin::class])->prefix('admin')->group(function () {
    Route::post('/admin/logout', [AuthController::class, 'logout']);
    Route::apiResource('vouchers', VoucherController::class);
    Route::apiResource('users', UserController::class);
    Route::get('/transactions/export', [TransactionController::class, 'exportReport']);
    Route::get('/transactions/statistics', [TransactionController::class, 'statistics']);
    Route::apiResource('transactions', TransactionController::class)->only(['index', 'exportReport']);
    Route::apiResource('kiosk-devices', KioskDeviceController::class);
    Route::apiResource('photo-assets', PhotoAssetController::class);
    Route::put('/system-settings', [SystemSettingController::class, 'update']);
});