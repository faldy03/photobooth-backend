<?php

namespace App\Http\Controllers;

use App\Models\Voucher;
use Illuminate\Http\Request;

class VoucherController extends Controller
{
    // 1. READ: Mengambil semua data voucher
    public function index()
    {
        return response()->json([
            'success' => true,
            'data' => Voucher::latest()->get()
        ], 200);
    }

    // 2. CREATE: Menyimpan voucher baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'code'           => 'required|string|unique:vouchers,code|max:50',
            'type'           => 'required|in:FREE_SESSION,DISCOUNT',
            'discount_value' => 'required|integer|min:0',
            'max_uses'       => 'required|integer|min:1',
            'expired_at'     => 'required|date',
        ]);

        $validated['created_by'] = $request->user()->id; 
        $validated['is_active'] = true;

        $voucher = Voucher::create($validated);

        return response()->json([
            'success' => true,
            'message' => 'Voucher baru berhasil diterbitkan!',
            'data'    => $voucher
        ], 201);
    }

    // 3. UPDATE: Mengubah data voucher yang ada
    public function update(Request $request, $id)
    {
        $voucher = Voucher::find($id);

        if (!$voucher) {
            return response()->json([
                'success' => false,
                'message' => 'Kupon tidak ditemukan.'
            ], 404);
        }

        $validated = $request->validate([
            // Pengecualian unique code untuk ID yang sedang di-edit
            'code'           => 'required|string|max:50|unique:vouchers,code,' . $id,
            'type'           => 'required|in:FREE_SESSION,DISCOUNT',
            'discount_value' => 'required|integer|min:0',
            'max_uses'       => 'required|integer|min:1',
            'expired_at'     => 'required|date',
        ]);

        $voucher->update($validated);

        return response()->json([
            'success' => true,
            'message' => 'Data kupon berhasil diperbarui!',
            'data'    => $voucher
        ], 200);
    }

    // 4. DELETE: Menghapus voucher secara permanen
    public function destroy($id)
    {
        $voucher = Voucher::find($id);

        if (!$voucher) {
            return response()->json([
                'success' => false,
                'message' => 'Kupon tidak ditemukan.'
            ], 404);
        }

        $voucher->delete();

        return response()->json([
            'success' => true,
            'message' => 'Kupon telah musnah.'
        ], 200);
    }
}