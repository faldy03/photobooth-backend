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
        Schema::create('session_photos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('photobooth_session_id')->constrained('photobooth_sessions')->cascadeOnDelete();
            $table->string('raw_photo_path'); // Path file mentah di storage
            $table->boolean('is_selected')->default(false); // Penanda foto mana yang dipilih user
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('session_photos');
    }
};
