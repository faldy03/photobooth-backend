<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // 1. Akun Admin Utama (Super Admin)
        User::create([
            'name'       => 'Admin Stitched',
            'email'      => 'admin@photobooth.com',
            'password'   => Hash::make('password123'), // Ganti dengan password yang aman
            'role'       => 'admin',
            'is_active'  => true,
            'last_login' => Carbon::now(),
        ]);

        // 2. Akun Pelanggan (User Biasa)
        User::create([
            'name'       => 'Pengguna Publik',
            'email'      => 'user@photobooth.com',
            'password'   => Hash::make('password123'),
            'role'       => 'customer',
            'is_active'  => true,
            'last_login' => null,
        ]);
    }
}