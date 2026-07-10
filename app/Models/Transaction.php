<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'invoice_number', 'voucher_id', 'gross_amount', 
        'net_amount', 'payment_status', 'webhook_log'
    ];

    protected $casts = [
        'webhook_log' => 'array', // Otomatis konversi JSON ke Array PHP
    ];

    // Relasi: Transaksi mungkin menggunakan 1 Voucher
    public function voucher(): BelongsTo
    {
        return $this->belongsTo(Voucher::class);
    }

    // Relasi: 1 Transaksi menghasilkan 1 Sesi Photobooth
    public function session(): HasOne
    {
        return $this->hasOne(PhotoboothSession::class);
    }

    // Relasi: Transaksi ini tercatat di riwayat pemakaian voucher
    public function voucherUsages(): HasMany
    {
        return $this->hasMany(VoucherUsage::class);
    }
}