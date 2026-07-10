<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('photobooth_sessions', function (Blueprint $table) {
            $table->id();
            $table->uuid('session_uuid')->unique(); // Keamanan ekstra untuk link download (Anti-IDOR)
            $table->foreignId('transaction_id')->constrained('transactions')->cascadeOnDelete();
            $table->foreignId('kiosk_device_id')->nullable()->constrained('kiosk_devices')->nullOnDelete();
            $table->timestamp('start_time')->nullable();
            $table->timestamp('end_time')->nullable();
            $table->string('final_photo_path')->nullable(); // Lokasi S3/Cloud Storage
            $table->timestamp('download_expired_at')->nullable(); // Batas umur file 24 jam
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('photobooth_sessions');
    }
};
