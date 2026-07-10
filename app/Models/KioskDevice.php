<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class KioskDevice extends Model
{
    use HasFactory;

    protected $fillable = [
        'device_id', 'location_name', 'status', 'last_seen'
    ];

    protected $casts = [
        'last_seen' => 'datetime',
    ];

    // Relasi: 1 Mesin bisa menjalankan banyak Sesi Photobooth
    public function sessions(): HasMany
    {
        return $this->hasMany(PhotoboothSession::class);
    }
}