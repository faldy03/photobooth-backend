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
        Schema::create('photo_assets', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Nama aset (Misal: "Retro Strip 4 Frame")
            $table->enum('type', ['frame', 'filter'])->default('frame'); // Jenis aset
            $table->string('file_path'); // Path lokasi gambar PNG asli di storage
            $table->string('thumbnail_path')->nullable(); // Path untuk gambar pratinjau kecil
            $table->json('config')->nullable(); // Konfigurasi khusus (e.g. koordinat JSON, warna hex)
            $table->boolean('is_active')->default(true); // Status aktif aset
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('photo_assets');
    }
};
