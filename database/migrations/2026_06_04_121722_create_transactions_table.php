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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_number')->unique();
            $table->foreignId('voucher_id')->nullable()->constrained('vouchers')->nullOnDelete();
            $table->decimal('gross_amount', 10, 2); // Harga kotor
            $table->decimal('net_amount', 10, 2); // Harga bersih setelah diskon
            $table->enum('payment_status', ['pending', 'success', 'failed'])->default('pending');
            $table->json('webhook_log')->nullable(); // Menyimpan respon mentah dari Midtrans
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
