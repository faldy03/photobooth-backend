<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VoucherUsage extends Model
{
    use HasFactory;

    // Menentukan nama tabel secara eksplisit (opsional, tapi bagus untuk mencegah error)
    protected $table = 'voucher_usages';

    // 1. Kolom yang diizinkan untuk diisi secara massal (Mass Assignment)
    protected $fillable = [
        'voucher_id',
        'transaction_id',
        'discount_applied',
    ];

    // ==========================================
    // 2. RELASI DATABASE
    // ==========================================

    /**
     * Relasi ke tabel Vouchers
     * Setiap riwayat penggunaan pasti milik 1 Kupon tertentu.
     */
    public function voucher()
    {
        return $this->belongsTo(Voucher::class, 'voucher_id');
    }

    /**
     * Relasi ke tabel Transactions
     * Setiap riwayat penggunaan pasti terikat pada 1 Transaksi tertentu.
     */
    public function transaction()
    {
        return $this->belongsTo(Transaction::class, 'transaction_id');
    }
}