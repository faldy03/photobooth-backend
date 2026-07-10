<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    // 1. Tampilkan Semua Pengguna
    public function index()
    {
        return response()->json([
            'success' => true,
            'data' => User::latest()->get()
        ], 200);
    }

    // 2. Tambah Pengguna Baru (Lewat Dasbor Admin)
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'      => 'required|string|max:255',
            'email'     => 'required|string|email|max:255|unique:users',
            'password'  => 'required|string|min:8',
            'role'      => 'nullable|string|in:admin,customer',
            'is_active' => 'nullable|boolean',
        ]);

        $user = User::create([
            'name'      => $validated['name'],
            'email'     => $validated['email'],
            'password'  => Hash::make($validated['password']),
            // Jika dikosongkan saat diinput, otomatis menjadi 'customer'
            'role'      => $validated['role'], 
            'is_active' => $validated['is_active'] ?? true, 
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Pengguna baru berhasil ditambahkan!',
            'data'    => $user
        ], 201);
    }

    // 3. Edit Data Pengguna
    public function update(Request $request, $id)
    {
        $user = User::find($id);

        if (!$user) {
            return response()->json(['success' => false, 'message' => 'Pengguna tidak ditemukan.'], 404);
        }

        $validated = $request->validate([
            'name'      => 'required|string|max:255',
            'email'     => 'required|string|email|max:255|unique:users,email,' . $id,
            'password'  => 'nullable|string|min:8',
            'role'      => 'nullable|string|in:admin,customer',
            'is_active' => 'nullable|boolean',
        ]);

        $user->name = $validated['name'];
        $user->email = $validated['email'];
        
        if (isset($validated['role'])) {
            $user->role = $validated['role'];
        }
        
        if (isset($validated['is_active'])) {
            $user->is_active = $validated['is_active'];
        }
        
        if (!empty($validated['password'])) {
            $user->password = Hash::make($validated['password']);
        }

        $user->save();

        return response()->json([
            'success' => true,
            'message' => 'Data pengguna berhasil diperbarui!',
            'data'    => $user
        ], 200);
    }

    // 4. Hapus Pengguna
    public function destroy($id)
    {
        $user = User::find($id);

        if (!$user) {
            return response()->json(['success' => false, 'message' => 'Pengguna tidak ditemukan.'], 404);
        }

        if (request()->user() && request()->user()->id == $id) {
            return response()->json(['success' => false, 'message' => 'Peringatan: Anda tidak bisa menghapus akun yang sedang Anda gunakan.'], 403);
        }

        $user->delete();

        return response()->json(['success' => true, 'message' => 'Akses pengguna berhasil dihapus.'], 200);
    }
}