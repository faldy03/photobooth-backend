<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');

// Jadwalkan pembersihan foto kedaluwarsa secara berkala setiap jam
Schedule::command('photos:clean-expired')->hourly();
