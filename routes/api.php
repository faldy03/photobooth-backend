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

// Route Publik
Route::post('/admin/login', [AuthController::class, 'login'])->middleware('throttle:5,1');
Route::post('/checkout', [TransactionController::class, 'checkout']);
Route::post('/doku/notification', [TransactionController::class, 'notification']);
Route::get('/checkout/status/{invoice}', [TransactionController::class, 'checkStatus']);
Route::get('/kiosk/settings', [SystemSettingController::class, 'index']);
Route::get('/kiosk/frames', [PhotoAssetController::class, 'getActiveFrames']);

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
    return response()->file($path, [
        'Access-Control-Allow-Origin' => '*',
        'Access-Control-Allow-Methods' => 'GET, OPTIONS',
    ]);
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
        
        return response($file, 200)->header('Content-Type', $type)->header('Access-Control-Allow-Origin', '*');
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