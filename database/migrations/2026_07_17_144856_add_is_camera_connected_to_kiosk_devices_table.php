<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('kiosk_devices', function (Blueprint $table) {
            $table->boolean('is_camera_connected')->default(true)->after('status');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('kiosk_devices', function (Blueprint $table) {
            $table->dropColumn('is_camera_connected');
        });
    }
};
