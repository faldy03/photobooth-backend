<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Voucher extends Model
{
    use HasFactory;

    /**
     * Properti $fillable menentukan kolom mana saja yang boleh diisi
     * saat Next.js mengirimkan data (Mass Assignment Protection).
     */
    protected $fillable = [
        'code',
        'type',
        'discount_value',
        'max_uses',
        'used_count',
        'expired_at',
        'is_active',
        'created_by',
    ];

    /**
     * Konfigurasi tipe data casting agar format JSON yang dikirim ke Next.js
     * memiliki tipe data yang konsisten dan akurat.
     */
    protected $casts = [
        'discount_value' => 'integer',
        'max_uses' => 'integer',
        'used_count' => 'integer',
        'is_active' => 'boolean',
        'expired_at' => 'datetime',
    ];

    /**
     * Relasi (Relationship): Menghubungkan voucher dengan Admin/Staf yang membuatnya.
     * Berelasi ke tabel users (Many-to-One).
     */
    public function creator(): BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}