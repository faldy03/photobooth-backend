<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SystemSetting extends Model
{
    use HasFactory;

    // Pertahankan struktur asli Anda yang sudah bagus ini
    protected $fillable = [
        'key', 
        'value', 
        'type', 
        'description'
    ];

    // ==========================================
    // FUNGSI HELPER SAKTI
    // ==========================================
    /**
     * Mempermudah pemanggilan data di controller lain.
     * Contoh penggunaan: $harga = SystemSetting::getVal('price_per_session', 35000);
     */
    public static function getVal($key, $default = null)
    {
        $setting = self::where('key', $key)->first();
        return $setting ? $setting->value : $default;
    }
}