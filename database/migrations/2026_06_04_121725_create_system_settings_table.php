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
        Schema::create('system_settings', function (Blueprint $table) {
            $table->id();
            $table->string('key')->unique(); // Kunci identifier (Misal: 'price_basic_package')
            $table->text('value')->nullable(); // Nilai pengaturan (Misal: '35000')
            $table->string('type')->default('string'); // Penanda tipe data (string, integer, boolean)
            $table->string('description')->nullable(); // Penjelasan fungsi pengaturan
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('system_settings');
    }
};
