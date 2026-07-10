<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('vouchers', function (Blueprint $table) {
            $table->id();
            $table->string('code')->unique(); // Kode kupon unik (e.g., RETROFREE)
            $table->enum('type', ['FREE_SESSION', 'DISCOUNT'])->default('FREE_SESSION'); // Tipe voucher
            $table->integer('discount_value')->default(0); // Nilai potongan jika bertipe DISCOUNT
            $table->integer('max_uses')->default(1); // Kuota maksimal pemakaian kupon
            $table->integer('used_count')->default(0); // Jumlah kupon yang sudah terpakai
            $table->dateTime('expired_at'); // Batas waktu kedaluwarsa kupon
            $table->boolean('is_active')->default(true); // Status aktif/nonaktif kupon
            $table->foreignId('created_by')->nullable()->constrained('users')->onDelete('set null'); // Admin pembuat
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('vouchers');
    }
};