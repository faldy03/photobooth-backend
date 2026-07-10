<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/generate-rsa', function () {
//     $config = [
//         "digest_alg" => "sha256",
//         "private_key_bits" => 2048,
//         "private_key_type" => OPENSSL_KEYTYPE_RSA,
//         // 🚨 TAMBAHAN PENTING: Tunjukkan jalan ke file konfigurasi XAMPP
//         "config" => "C:/xampp/php/extras/ssl/openssl.cnf",
//     ];

//     $res = openssl_pkey_new($config);

//     // Deteksi eror jika file masih tidak ditemukan
//     if (!$res) {
//         return "Gagal membuat kunci. Pesan Sistem: " . openssl_error_string();
//     }

//     // 🚨 Tambahkan variabel $config di akhir parameter export
//     openssl_pkey_export($res, $privKey, null, $config); 
    
//     $pubKey = openssl_pkey_get_details($res);
    
//     return response()->json([
//         'TUTORIAL' => 'SIMPAN KEDUA KUNCI INI!',
//         'PUBLIC_KEY' => $pubKey["key"],
//         'PRIVATE_KEY' => $privKey
//     ]);
// });
