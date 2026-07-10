<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        // Validasi user, password, dan status keaktifan user[cite: 11]
        if (! $user || ! Hash::check($request->password, $user->password) || !$user->is_active) {
            throw ValidationException::withMessages([
                'email' => ['Kredensial yang Anda masukkan salah atau akun dinonaktifkan.'],
            ]);
        }

        // Update log last_login[cite: 11]
        $user->update(['last_login' => now()]);

        // Buat token akses baru
        $token = $user->createToken('admin-token')->plainTextToken;

        return response()->json([
            'message' => 'Login berhasil',
            'token' => $token,
            'user' => [
                'name' => $user->name,
                'email' => $user->email,
                'role' => $user->role
            ]
        ],200);
    }

    public function logout(Request $request)
    {
        // Hapus token yang sedang digunakan saat ini
        $request->user()->currentAccessToken()->delete();

        return response()->json(['message' => 'Logout berhasil']);
    }
}