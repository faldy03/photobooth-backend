<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('kiosk_devices', function (Blueprint $table) {
            $table->id();
        $table->string('device_id')->unique(); // ID unik mesin/tablet
        $table->string('location_name'); // e.g., "Mall Bekasi Cyber Park - Lantai 1"
        $table->enum('status', ['active', 'maintenance', 'offline'])->default('active');
        $table->timestamp('last_seen')->nullable(); // Detak aktivitas mesin
        $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kiosk_devices');
    }
};
