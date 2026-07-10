<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SessionPhoto extends Model
{
    use HasFactory;

    protected $fillable = [
        'photobooth_session_id', 'raw_photo_path', 'is_selected'
    ];

    protected $casts = [
        'is_selected' => 'boolean',
    ];

    // Relasi: Foto ini bagian dari 1 Sesi Photobooth
    public function session(): BelongsTo
    {
        return $this->belongsTo(PhotoboothSession::class, 'photobooth_session_id');
    }
}