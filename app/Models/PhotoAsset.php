<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PhotoAsset extends Model
{
    protected $fillable = [
        'name', 'type', 'file_path', 'thumbnail_path', 'config', 'is_active'
    ];
    protected $casts = [
        'config' => 'array',
        'is_active' => 'boolean',
    ];
}
