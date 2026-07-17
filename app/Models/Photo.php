<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    protected $fillable = [
        'participant_name',
        'participant_id',
        'event_id',
        'filename',
        'google_drive_file_id',
        'google_drive_url',
    ];
}
