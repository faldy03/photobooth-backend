<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use App\Models\Voucher;
use App\Models\VoucherUsage; // 🚨 Ditambahkan
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;

class TransactionController extends Controller
{
    // ==========================================
    // 4. List Transaksi (SERVER-SIDE PAGINATION)
    // ==========================================
    public function index(Request $request)
    {
        $query = Transaction::query();
        
        // Fitur Pencarian Nomor Invoice (Diperbaiki menggunakan filled)
        if ($request->filled('search')) {
            $query->where('invoice_number', 'like', '%' . $request->search . '%');
        }

        // Fitur Filter Rentang Tanggal (Diperbaiki menggunakan filled)
        if ($request->filled('start_date') && $request->filled('end_date')) {
            // Pastikan format dari frontend adalah YYYY-MM-DD
            $query->whereBetween('created_at', [
                $request->start_date . ' 00:00:00', 
                $request->end_date . ' 23:59:59'
            ]);
        }

        // Ambil data dengan Pagination bawaan Laravel (10 per halaman)
        $transactions = $query->latest()->paginate(10);

        return response()->json([
            'success' => true,
            'data'    => $transactions // Struktur paginate Laravel: data, current_page, last_page, total
        ], 200);
    }

    // ==========================================
    // 5. Export Laporan Pembayaran (CSV)
    // ==========================================
    public function exportReport(Request $request)
    {
        $query = Transaction::query();

        // Fitur Filter Rentang Tanggal (Diperbaiki menggunakan filled)
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $query->whereBetween('created_at', [
                $request->start_date . ' 00:00:00', 
                $request->end_date . ' 23:59:59'
            ]);
        }

        $transactions = $query->latest()->get();

        // Buat Header File CSV
        $csvData = "Tanggal Transaksi,Nomor Invoice,Harga Kotor (Rp),Total Bayar (Rp),Status Pembayaran\n";

        // Isi Data
        foreach ($transactions as $tx) {
            $csvData .= "{$tx->created_at},{$tx->invoice_number},{$tx->gross_amount},{$tx->net_amount},{$tx->payment_status}\n";
        }

        // Kirimkan langsung sebagai file yang bisa di-download
        return response($csvData)
            ->header('Content-Type', 'text/csv')
            ->header('Content-Disposition', 'attachment; filename="Laporan_Photobooth_' . date('Ymd_His') . '.csv"');
    }

    // ==========================================
    // 1. Buat Transaksi & Generate QRIS
    // ==========================================
    public function checkout(Request $request)
    {
        $validated = $request->validate([
            'gross_amount' => 'required|numeric|min:1',
            'voucher_code' => 'nullable|string|max:50',
        ]);

        $netAmount = $validated['gross_amount'];
        $invoiceNumber = 'INV-' . date('YmdHis') . '-' . strtoupper(Str::random(5));
        $voucherId = null;

        // Validasi voucher jika ada
        if (!empty($validated['voucher_code'])) {
            $voucher = Voucher::where('code', $validated['voucher_code'])->first();

            if (!$voucher || !$voucher->is_active) {
                return response()->json([
                    'success' => false,
                    'message' => 'Kupon tidak valid.'
                ], 400);
            }

            $voucherId = $voucher->id;

            if ($voucher->type === 'DISCOUNT') {
                $netAmount = max(0, $netAmount - $voucher->discount_value);
            } elseif ($voucher->type === 'FREE_SESSION') {
                $netAmount = 0;
            }
        }

        // Catat transaksi ke database
        $transaction = Transaction::create([
            'invoice_number' => $invoiceNumber,
            'voucher_id'     => $voucherId,
            'gross_amount'   => $validated['gross_amount'],
            'net_amount'     => $netAmount,
            'payment_status' => 'pending',
        ]);

        // Skenario 1: Jika total bayar Rp 0 (Gratis 100%)
        if ($netAmount <= 0) {
            $transaction->update(['payment_status' => 'success']);

            if ($voucherId) {
                $voucher->increment('used_count');
                
                // 🚨 REKAM KE TABEL VOUCHER USAGES
                VoucherUsage::create([
                    'voucher_id'       => $voucherId,
                    'transaction_id'   => $transaction->id,
                    'discount_applied' => $transaction->gross_amount - $transaction->net_amount,
                ]);
            }

            return response()->json([
                'success' => true,
                'message' => 'Gratis',
                'data'    => [
                    'id'             => $transaction->id, // ✅ FIX: id integer transaksi, dibutuhkan frontend
                                                           // sebagai transaction_id (foreign key integer) saat
                                                           // menyimpan hasil foto di /sessions/save-photos
                    'invoice_number' => $invoiceNumber,
                    'qr_string'      => null,
                    'gross_amount'   => $validated['gross_amount'],
                    'net_amount'     => $netAmount
                ]
            ]);
        }

        // Skenario 2: Transaksi Berbayar -> Ambil token B2B dari DOKU
        $tokenData = $this->getDokuSnapToken();
        if (!$tokenData['success']) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal akses Token DOKU: ' . $tokenData['message']
            ], 500);
        }

        // Generate QRIS
        $dokuResponse = $this->generateQrisSnap($tokenData['token'], $invoiceNumber, $netAmount);

        if (!$dokuResponse['success']) {
            return response()->json([
                'success' => false,
                'message' => 'Gagal generate QRIS: ' . $dokuResponse['message']
            ], 500);
        }

        // Return sukses dengan data lengkap
        return response()->json([
            'success' => true,
            'message' => 'QRIS berhasil dibuat.',
            'data'    => [
                'id'             => $transaction->id, // ✅ FIX: id integer transaksi, dibutuhkan frontend
                                                       // sebagai transaction_id (foreign key integer) saat
                                                       // menyimpan hasil foto di /sessions/save-photos
                'invoice_number' => $invoiceNumber,
                'qr_string'      => $dokuResponse['qr_string'],
                'gross_amount'   => $validated['gross_amount'],
                'net_amount'     => $netAmount
            ]
        ], 201);
    }

    // ==========================================
    // 2. Webhook DOKU (Support Format Jokul & SNAP)
    // ==========================================
    public function notification(Request $request)
    {
        $payload = $request->all();

        // Tangkap Nomor Invoice dari kedua kemungkinan format
        $invoice = $payload['order']['invoice_number'] ?? $payload['originalPartnerReferenceNo'] ?? null;

        // Tangkap Status Pembayaran
        $jokulStatus = $payload['transaction']['status'] ?? null;
        $snapStatus  = $payload['latestTransactionStatus'] ?? null;

        // "00" adalah kode standar Bank Indonesia (SNAP) untuk transaksi sukses
        $isSuccess = ($jokulStatus === 'SUCCESS' || $snapStatus === '00');

        if ($invoice) {
            $transaction = Transaction::where('invoice_number', $invoice)->first();

            if ($transaction) {
                // Simpan log asli dari DOKU untuk keperluan audit
                $transaction->webhook_log = json_encode($payload);

                // Eksekusi jika pembayaran sukses dan status masih pending
                if ($isSuccess && $transaction->payment_status === 'pending') {
                    $transaction->payment_status = 'success';

                    if ($transaction->voucher_id) {
                        $voucher = Voucher::find($transaction->voucher_id);
                        if ($voucher) {
                            $voucher->increment('used_count');
                            
                            // 🚨 REKAM KE TABEL VOUCHER USAGES
                            VoucherUsage::create([
                                'voucher_id'       => $voucher->id,
                                'transaction_id'   => $transaction->id,
                                'discount_applied' => $transaction->gross_amount - $transaction->net_amount,
                            ]);
                        }
                    }
                }

                $transaction->save();
            }
        }

        // DOKU mewajibkan respons HTTP 200 OK
        return response()->json(['message' => 'Notifikasi diterima'], 200);
    }

    // ==========================================
    // 3. Cek Status Pembayaran (Untuk Frontend)
    // ==========================================
    public function checkStatus($invoice)
    {
        $transaction = Transaction::where('invoice_number', $invoice)->first();

        if (!$transaction) {
            return response()->json([
                'success' => false,
                'message' => 'Transaksi tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success'        => true,
            'payment_status' => $transaction->payment_status,
            'id'             => $transaction->id, // ✅ FIX (opsional): disertakan juga di sini untuk
                                                   // validasi silang / jaga-jaga jika frontend butuh
                                                   // konfirmasi ulang id integer transaksi ini.
        ]);
    }

    // ==========================================
    // Private: Token B2B DOKU (WAJIB RSA)
    // ==========================================
    private function getDokuSnapToken()
    {
        $clientId = env('DOKU_CLIENT_ID');
        $baseUrl  = env('DOKU_URL', 'https://api-sandbox.doku.com');

        $timestamp    = now()->setTimezone('Asia/Jakarta')->format('Y-m-d\TH:i:sP');
        $stringToSign = $clientId . "|" . $timestamp;

        // Baca file Private Key RSA
        $keyPath = storage_path('app/doku_private.pem');

        // Pengecekan keberadaan file
        if (!file_exists($keyPath)) {
            return [
                'success' => false,
                'message' => 'File doku_private.pem tidak ditemukan di storage/app/'
            ];
        }

        $privateKey = openssl_pkey_get_private(file_get_contents($keyPath));

        // Tanda tangani dengan RSA-SHA256
        openssl_sign($stringToSign, $signature, $privateKey, OPENSSL_ALGO_SHA256);
        $signatureBase64 = base64_encode($signature);

        $response = Http::withHeaders([
            'X-CLIENT-KEY' => $clientId,
            'X-TIMESTAMP'  => $timestamp,
            'X-SIGNATURE'  => $signatureBase64,
            'Content-Type' => 'application/json',
        ])->post($baseUrl . '/authorization/v1/access-token/b2b', [
            'grantType' => 'client_credentials',
        ]);

        if ($response->successful()) {
            return [
                'success' => true,
                'token'   => $response->json('accessToken')
            ];
        }

        return [
            'success' => false,
            'message' => 'DOKU Reject Token: ' . $response->body()
        ];
    }

    // ==========================================
    // Private: Generate QRIS
    // ==========================================
    private function generateQrisSnap($accessToken, $invoiceNumber, $amount)
    {
        $clientId  = env('DOKU_CLIENT_ID');
        $secretKey = env('DOKU_SECRET_KEY');
        $baseUrl   = env('DOKU_URL', 'https://api-sandbox.doku.com');

        // Hardcode konfigurasi Sandbox DOKU
        $merchantId = '21639';
        $terminalId = 'A01';
        $channelId  = '95051';
        $targetPath = '/snap-adapter/b2b/v1.0/qr/qr-mpm-generate';

        $timestamp      = now()->setTimezone('Asia/Jakarta')->format('Y-m-d\TH:i:sP');
        $validityPeriod = now()->setTimezone('Asia/Jakarta')->addHour()->format('Y-m-d\TH:i:sP');

        $payload = [
            "partnerReferenceNo" => $invoiceNumber,
            "amount"             => [
                "value"    => number_format($amount, 2, '.', ''),
                "currency" => "IDR"
            ],
            "merchantId"     => $merchantId,
            "terminalId"     => $terminalId,
            "validityPeriod" => $validityPeriod,
            "additionalInfo" => [
                "postalCode" => "12190",
                "feeType"    => "1"
            ]
        ];

        $jsonPayload = json_encode($payload, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
        $hashBody    = strtolower(hash('sha256', $jsonPayload));

        // Rumus Signature QRIS
        $stringToSign = "POST:$targetPath:$accessToken:$hashBody:$timestamp";
        $signature    = base64_encode(hash_hmac('sha512', $stringToSign, $secretKey, true));

        $externalIdNumeric = date('YmdHis') . rand(1000, 9999);

        $response = Http::withHeaders([
            'Authorization' => "Bearer $accessToken",
            'X-TIMESTAMP'   => $timestamp,
            'X-SIGNATURE'   => $signature,
            'X-PARTNER-ID'  => $clientId,
            'X-EXTERNAL-ID' => $externalIdNumeric,
            'CHANNEL-ID'    => $channelId,
            'Content-Type'  => 'application/json',
            'Accept'        => 'application/json'
        ])->withBody($jsonPayload, 'application/json')->post($baseUrl . $targetPath);

        if ($response->successful() && $response->json('responseCode') === '2004700') {
            return [
                'success'   => true,
                'qr_string' => $response->json('qrContent')
            ];
        }

        return [
            'success' => false,
            'message' => 'DOKU Reject: ' . $response->body()
        ];
    }
    // ==========================================
    // 6. Statistik Transaksi (Dashboard & Card)
    // ==========================================
    public function statistics()
    {
        // Hitung total pendapatan kotor (hanya dari yang sukses)
        $totalPendapatan = Transaction::where('payment_status', 'success')->sum('net_amount');
        
        // Hitung jumlah transaksi sukses dan pending
        $totalSukses = Transaction::where('payment_status', 'success')->count();
        $totalPending = Transaction::where('payment_status', 'pending')->count();

        return response()->json([
            'success' => true,
            'data'    => [
                'total_revenue' => (int) $totalPendapatan,
                'total_success' => $totalSukses,
                'total_pending' => $totalPending,
            ]
        ], 200);
    }
}