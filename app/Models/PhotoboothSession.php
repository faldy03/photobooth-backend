<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class PhotoboothSession extends Model
{
    use HasFactory;

    protected $fillable = [
        'session_uuid', 'transaction_id', 'kiosk_device_id', 
        'start_time', 'end_time', 'final_photo_path', 'download_expired_at'
    ];

    protected $casts = [
        'start_time' => 'datetime',
        'end_time' => 'datetime',
        'download_expired_at' => 'datetime',
    ];

    // Relasi: Sesi ini milik 1 Transaksi
    public function transaction(): BelongsTo
    {
        return $this->belongsTo(Transaction::class);
    }

    // Relasi: Sesi ini dilakukan di 1 Mesin Kios
    public function kioskDevice(): BelongsTo
    {
        return $this->belongsTo(KioskDevice::class);
    }

    // Relasi: 1 Sesi memiliki banyak jepretan Foto Mentah
    public function photos(): HasMany
    {
        return $this->hasMany(SessionPhoto::class);
    }
}