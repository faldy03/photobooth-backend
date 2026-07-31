<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');

// Jadwalkan pembersihan foto kedaluwarsa secara berkala setiap 5 menit
Schedule::command('photos:clean-expired')->everyFiveMinutes();
