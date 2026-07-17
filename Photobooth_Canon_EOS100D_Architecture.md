# Photobooth Architecture - Canon EOS 100D + Laravel + Google Drive

## Tujuan

Membangun aplikasi photobooth dengan:

-   **Backend:** Laravel (di-host di Rumahweb)
-   **Kamera:** Canon EOS 100D (USB)
-   **Penyimpanan Foto:** Google Drive
-   **Database:** MySQL

Laravel **tidak mengontrol kamera secara langsung**. Pengontrolan kamera
dilakukan oleh aplikasi lokal (Photobooth Client).

------------------------------------------------------------------------

# Arsitektur

``` text
┌─────────────────────────────────────────────┐
│ Website Laravel (Rumahweb)                  │
│                                             │
│ • Authentication                            │
│ • Event Management                          │
│ • API                                       │
│ • Database                                  │
│ • Google Drive Upload                       │
└───────────────────┬─────────────────────────┘
                    │ HTTPS
                    ▼
┌─────────────────────────────────────────────┐
│ Photobooth Client (Windows)                 │
│                                             │
│ • Canon EDSDK                              │
│ • Live View                                │
│ • Capture Photo                            │
│ • Preview                                  │
│ • Upload Result to Laravel                 │
└───────────────────┬─────────────────────────┘
                    │ USB
                    ▼
          Canon EOS 100D DSLR
```

------------------------------------------------------------------------

# Mengapa Perlu Photobooth Client?

Karena Laravel berjalan di server Rumahweb, backend **tidak memiliki
akses ke perangkat USB** yang terhubung ke komputer operator.

Photobooth Client bertanggung jawab untuk:

-   Menghubungkan kamera melalui USB.
-   Mengontrol kamera menggunakan Canon EDSDK.
-   Menampilkan Live View.
-   Mengambil foto.
-   Mengirim foto ke Laravel.

------------------------------------------------------------------------

# Alur Sistem

1.  Operator membuka website Laravel.
2.  Pengunjung mengisi data (opsional).
3.  Operator menekan tombol **Capture**.
4.  Laravel mengirim permintaan ke Photobooth Client.
5.  Photobooth Client menggunakan Canon EDSDK untuk memicu shutter.
6.  Kamera mengambil foto.
7.  File diunduh ke komputer.
8.  Preview ditampilkan.
9.  Setelah disetujui, foto diunggah ke API Laravel.
10. Laravel:
    -   Menyimpan metadata ke database.
    -   Mengunggah file ke Google Drive.
    -   Menyimpan `google_drive_file_id` dan URL.

------------------------------------------------------------------------

# Penyimpanan Database

Contoh tabel:

  Kolom                  Keterangan
  ---------------------- ----------------------
  id                     Primary Key
  participant_name       Nama peserta
  event_id               Event
  filename               Nama file
  google_drive_file_id   ID file Google Drive
  google_drive_url       Link file
  created_at             Waktu upload

------------------------------------------------------------------------

# API

## Capture

Photobooth Client menerima request lokal.

    POST http://localhost:5000/capture

Response:

``` json
{
  "success": true
}
```

------------------------------------------------------------------------

## Upload Foto

Laravel menerima upload.

    POST /api/photos/upload

Multipart:

-   image
-   participant_id
-   event_id

Response:

``` json
{
  "success": true,
  "photo_url": "...",
  "google_drive_url": "..."
}
```

------------------------------------------------------------------------

# Teknologi

## Backend

-   Laravel
-   MySQL
-   Google Drive API

## Photobooth Client

Direkomendasikan:

-   C#
-   .NET
-   Canon EDSDK

Mengapa?

-   SDK resmi Canon.
-   Remote capture stabil.
-   Mendukung Live View.
-   Cepat.
-   Banyak digunakan pada aplikasi photobooth profesional.

------------------------------------------------------------------------

# Catatan Penting

-   Kamera tetap menggunakan **USB**.
-   Jangan mengakses kamera langsung dari Laravel.
-   Semua komunikasi dengan DSLR dilakukan oleh Photobooth Client.
-   Laravel hanya menerima file hasil foto melalui API.
-   Foto asli disimpan di Google Drive agar storage hosting tidak cepat
    penuh.
-   Database hanya menyimpan metadata dan referensi file.

------------------------------------------------------------------------

# Roadmap Implementasi

## Tahap 1

-   Backend Laravel.
-   API Upload.
-   Google Drive.

## Tahap 2

-   Photobooth Client.
-   Integrasi Canon EDSDK.
-   Capture.

## Tahap 3

-   Live View.
-   Countdown.
-   Preview.

## Tahap 4

-   Template Frame.
-   QR Code hasil foto.
-   Download.
-   Share.

------------------------------------------------------------------------

# Kesimpulan

Arsitektur akhir:

``` text
Canon EOS 100D
        │
      USB
        │
        ▼
Photobooth Client (Canon EDSDK)
        │
        │ HTTPS
        ▼
Laravel (Rumahweb)
        │
        ▼
Google Drive
```

Pendekatan ini stabil, scalable, dan sesuai untuk kebutuhan photobooth
profesional dengan Canon EOS 100D.
