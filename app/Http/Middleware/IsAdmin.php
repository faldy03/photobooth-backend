<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class IsAdmin
{
    public function handle(Request $request, Closure $next): Response
    {
        // ✅ FIX: cek dua kondisi secara TERPISAH dan eksplisit, supaya
        // middleware ini "fail closed" (menolak secara default) dan tidak
        // bergantung pada urutan middleware lain (misal auth:sanctum) untuk
        // aman. Sebelumnya, kondisi `$request->user() && role !== 'admin'`
        // punya celah: kalau $request->user() null (belum login / token
        // tidak valid), kondisi if jadi FALSE karena short-circuit `&&`,
        // sehingga request LOLOS ke $next() tanpa ditolak sama sekali.

        // 1. Kalau belum login / token tidak valid → tolak eksplisit (401)
        if (!$request->user()) {
            return response()->json([
                'success' => false,
                'message' => 'Silakan login terlebih dahulu.'
            ], 401);
        }

        // 2. Kalau sudah login TAPI role bukan admin → tolak eksplisit (403)
        if ($request->user()->role !== 'admin') {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak. Area ini khusus Administrator.'
            ], 403);
        }

        // 3. Hanya lolos kalau benar-benar sudah login DAN role admin
        return $next($request);
    }
}