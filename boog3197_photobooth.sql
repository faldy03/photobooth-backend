-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Jul 2026 pada 22.12
-- Versi server: 10.11.18-MariaDB-cll-lve
-- Versi PHP: 8.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boog3197_photobooth`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-3887f93a656d62280b853c5061e0d926950795af', 'i:2;', 1783856787),
('laravel-cache-3887f93a656d62280b853c5061e0d926950795af:timer', 'i:1783856787;', 1783856787),
('laravel-cache-710ce716db1e7a63664adbaffc4ff617e17c554d', 'i:1;', 1783779439),
('laravel-cache-710ce716db1e7a63664adbaffc4ff617e17c554d:timer', 'i:1783779439;', 1783779439),
('laravel-cache-a5ea567c640d422c06afb8e72eb468488d2a0d6d', 'i:1;', 1783951306),
('laravel-cache-a5ea567c640d422c06afb8e72eb468488d2a0d6d:timer', 'i:1783951306;', 1783951306),
('laravel-cache-b5cddafd289c93504411a6682bfb3b2bb5e77945', 'i:1;', 1783769958),
('laravel-cache-b5cddafd289c93504411a6682bfb3b2bb5e77945:timer', 'i:1783769958;', 1783769958),
('laravel-cache-b6dc8f637a1c626d4e58aeca91253d45f0af58c9', 'i:1;', 1784274578),
('laravel-cache-b6dc8f637a1c626d4e58aeca91253d45f0af58c9:timer', 'i:1784274578;', 1784274578);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(3, 'default', '{\"uuid\":\"8e9b638f-5f35-400d-8a5d-e0f45c9c0754\",\"displayName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\\\":3:{s:16:\\\"\\u0000*\\u0000finalFileName\\\";s:46:\\\"final_25df932f-ec4d-4ab3-be2b-7991797ef864.jpg\\\";s:16:\\\"\\u0000*\\u0000finalFilePath\\\";s:55:\\\"sessions\\/final_25df932f-ec4d-4ab3-be2b-7991797ef864.jpg\\\";s:16:\\\"\\u0000*\\u0000rawPhotosData\\\";a:3:{i:0;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_25df932f-ec4d-4ab3-be2b-7991797ef864_0.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_25df932f-ec4d-4ab3-be2b-7991797ef864_0.jpg\\\";}i:1;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_25df932f-ec4d-4ab3-be2b-7991797ef864_1.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_25df932f-ec4d-4ab3-be2b-7991797ef864_1.jpg\\\";}i:2;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_25df932f-ec4d-4ab3-be2b-7991797ef864_2.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_25df932f-ec4d-4ab3-be2b-7991797ef864_2.jpg\\\";}}}\",\"batchId\":null},\"createdAt\":1783701772,\"delay\":null}', 0, NULL, 1783701772, 1783701772),
(4, 'default', '{\"uuid\":\"dd55216e-d952-4bd5-960d-5677edc86677\",\"displayName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\\\":3:{s:16:\\\"\\u0000*\\u0000finalFileName\\\";s:46:\\\"final_718ed1ed-a998-4544-8096-1122d690992d.jpg\\\";s:16:\\\"\\u0000*\\u0000finalFilePath\\\";s:55:\\\"sessions\\/final_718ed1ed-a998-4544-8096-1122d690992d.jpg\\\";s:16:\\\"\\u0000*\\u0000rawPhotosData\\\";a:3:{i:0;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_718ed1ed-a998-4544-8096-1122d690992d_0.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_718ed1ed-a998-4544-8096-1122d690992d_0.jpg\\\";}i:1;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_718ed1ed-a998-4544-8096-1122d690992d_1.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_718ed1ed-a998-4544-8096-1122d690992d_1.jpg\\\";}i:2;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_718ed1ed-a998-4544-8096-1122d690992d_2.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_718ed1ed-a998-4544-8096-1122d690992d_2.jpg\\\";}}}\",\"batchId\":null},\"createdAt\":1783702005,\"delay\":null}', 0, NULL, 1783702005, 1783702005),
(5, 'default', '{\"uuid\":\"58abe2c3-58f1-48ba-9f7e-f2a35d80e48e\",\"displayName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\\\":3:{s:16:\\\"\\u0000*\\u0000finalFileName\\\";s:46:\\\"final_0d5bbac9-61de-4eab-a807-202fedb31c6d.jpg\\\";s:16:\\\"\\u0000*\\u0000finalFilePath\\\";s:55:\\\"sessions\\/final_0d5bbac9-61de-4eab-a807-202fedb31c6d.jpg\\\";s:16:\\\"\\u0000*\\u0000rawPhotosData\\\";a:3:{i:0;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_0.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_0.jpg\\\";}i:1;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_1.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_1.jpg\\\";}i:2;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_2.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_2.jpg\\\";}}}\",\"batchId\":null},\"createdAt\":1783702425,\"delay\":null}', 0, NULL, 1783702425, 1783702425),
(6, 'default', '{\"uuid\":\"57416277-d1c8-4f04-b92e-709f800a9ee6\",\"displayName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\\\":3:{s:16:\\\"\\u0000*\\u0000finalFileName\\\";s:46:\\\"final_5178b16f-9607-4624-96f1-4d701c6f86dd.jpg\\\";s:16:\\\"\\u0000*\\u0000finalFilePath\\\";s:55:\\\"sessions\\/final_5178b16f-9607-4624-96f1-4d701c6f86dd.jpg\\\";s:16:\\\"\\u0000*\\u0000rawPhotosData\\\";a:3:{i:0;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_5178b16f-9607-4624-96f1-4d701c6f86dd_0.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_5178b16f-9607-4624-96f1-4d701c6f86dd_0.jpg\\\";}i:1;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_5178b16f-9607-4624-96f1-4d701c6f86dd_1.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_5178b16f-9607-4624-96f1-4d701c6f86dd_1.jpg\\\";}i:2;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_5178b16f-9607-4624-96f1-4d701c6f86dd_2.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_5178b16f-9607-4624-96f1-4d701c6f86dd_2.jpg\\\";}}}\",\"batchId\":null},\"createdAt\":1783702696,\"delay\":null}', 0, NULL, 1783702696, 1783702696),
(7, 'default', '{\"uuid\":\"d924c556-34a7-43cf-97a4-bd847a6c8f65\",\"displayName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\\\":3:{s:16:\\\"\\u0000*\\u0000finalFileName\\\";s:46:\\\"final_d8461fe4-ef8f-4e16-99ba-3a127161a3d9.jpg\\\";s:16:\\\"\\u0000*\\u0000finalFilePath\\\";s:55:\\\"sessions\\/final_d8461fe4-ef8f-4e16-99ba-3a127161a3d9.jpg\\\";s:16:\\\"\\u0000*\\u0000rawPhotosData\\\";a:3:{i:0;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_0.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_0.jpg\\\";}i:1;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_1.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_1.jpg\\\";}i:2;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_2.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_2.jpg\\\";}}}\",\"batchId\":null},\"createdAt\":1783703193,\"delay\":null}', 0, NULL, 1783703193, 1783703193),
(8, 'default', '{\"uuid\":\"eeab28fd-1127-4a74-98fa-1073bff03886\",\"displayName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\\\":3:{s:16:\\\"\\u0000*\\u0000finalFileName\\\";s:46:\\\"final_2f8b90a6-7f39-404f-9eaa-b3f418a7f311.jpg\\\";s:16:\\\"\\u0000*\\u0000finalFilePath\\\";s:55:\\\"sessions\\/final_2f8b90a6-7f39-404f-9eaa-b3f418a7f311.jpg\\\";s:16:\\\"\\u0000*\\u0000rawPhotosData\\\";a:3:{i:0;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_0.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_0.jpg\\\";}i:1;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_1.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_1.jpg\\\";}i:2;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_2.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_2.jpg\\\";}}}\",\"batchId\":null},\"createdAt\":1783704029,\"delay\":null}', 0, NULL, 1783704029, 1783704029),
(9, 'default', '{\"uuid\":\"b9a6cab0-16a7-41f0-b557-104c6cbf0aa2\",\"displayName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\UploadPhotoToGoogleDrive\\\":3:{s:16:\\\"\\u0000*\\u0000finalFileName\\\";s:46:\\\"final_9037fe35-1e54-4889-aea4-c1541bdaa172.jpg\\\";s:16:\\\"\\u0000*\\u0000finalFilePath\\\";s:55:\\\"sessions\\/final_9037fe35-1e54-4889-aea4-c1541bdaa172.jpg\\\";s:16:\\\"\\u0000*\\u0000rawPhotosData\\\";a:3:{i:0;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_9037fe35-1e54-4889-aea4-c1541bdaa172_0.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_9037fe35-1e54-4889-aea4-c1541bdaa172_0.jpg\\\";}i:1;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_9037fe35-1e54-4889-aea4-c1541bdaa172_1.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_9037fe35-1e54-4889-aea4-c1541bdaa172_1.jpg\\\";}i:2;a:2:{s:4:\\\"name\\\";s:46:\\\"raw_9037fe35-1e54-4889-aea4-c1541bdaa172_2.jpg\\\";s:4:\\\"path\\\";s:55:\\\"sessions\\/raw_9037fe35-1e54-4889-aea4-c1541bdaa172_2.jpg\\\";}}}\",\"batchId\":null},\"createdAt\":1783704714,\"delay\":null}', 0, NULL, 1783704714, 1783704714);

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kiosk_devices`
--

CREATE TABLE `kiosk_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `status` enum('active','maintenance','offline') NOT NULL DEFAULT 'active',
  `last_seen` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kiosk_devices`
--

INSERT INTO `kiosk_devices` (`id`, `device_id`, `location_name`, `status`, `last_seen`, `created_at`, `updated_at`) VALUES
(1, 'kios-001', 'universitas islam', 'active', NULL, '2026-06-16 00:01:19', '2026-06-16 00:01:19'),
(2, 'kios-002', 'universitas indonesia', 'active', NULL, '2026-06-16 00:08:39', '2026-06-16 00:08:39'),
(3, 'kios-003', 'oxford university', 'active', NULL, '2026-06-16 00:35:48', '2026-06-16 00:35:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_04_100150_create_personal_access_tokens_table', 1),
(5, '2026_06_04_114453_create_vouchers_table', 1),
(6, '2026_06_04_121720_create_kiosk_devices_table', 1),
(7, '2026_06_04_121721_create_photo_assets_table', 1),
(8, '2026_06_04_121722_create_transactions_table', 1),
(9, '2026_06_04_121723_create_photobooth_sessions_table', 1),
(10, '2026_06_04_121724_create_session_photos_table', 1),
(11, '2026_06_04_121725_create_system_settings_table', 1),
(12, '2026_06_04_121726_create_voucher_usages_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'admin-token', 'd6abcd79db85a1377b235b4349b4d7360b0f11725220acc38a7f72c81368b104', '[\"*\"]', NULL, NULL, '2026-06-06 05:42:14', '2026-06-06 05:42:14'),
(2, 'App\\Models\\User', 1, 'admin-token', '9f401df98cb134ce662630975a26e0cb236a3e7de6e9c32c49eab47c4cc7d8b1', '[\"*\"]', '2026-06-06 05:53:17', NULL, '2026-06-06 05:53:08', '2026-06-06 05:53:17'),
(3, 'App\\Models\\User', 1, 'admin-token', '717d5f648c19abdbd71a96ece09a4030c6c769b2f6b84dfb073ea75b951511b9', '[\"*\"]', '2026-06-06 06:03:14', NULL, '2026-06-06 06:03:13', '2026-06-06 06:03:14'),
(4, 'App\\Models\\User', 1, 'admin-token', 'f2ff176a410e5fa68e00e5e687c7c44543312945a936c8d17b6db51bc896fcaf', '[\"*\"]', '2026-06-06 06:07:04', NULL, '2026-06-06 06:04:50', '2026-06-06 06:07:04'),
(5, 'App\\Models\\User', 1, 'admin-token', '2b89f566553818e7bff9b218f8c8a0468ea1ccd9459f6e00ecf93a77e467cd5f', '[\"*\"]', '2026-06-06 06:07:24', NULL, '2026-06-06 06:07:23', '2026-06-06 06:07:24'),
(6, 'App\\Models\\User', 1, 'admin-token', 'fbe00e955508b1ec82b16a6c01058ca8303bb0add56c239c67e99d76b1b1d7c2', '[\"*\"]', '2026-06-06 06:56:17', NULL, '2026-06-06 06:09:54', '2026-06-06 06:56:17'),
(7, 'App\\Models\\User', 1, 'admin-token', '950578f9fa17d278a21c59bb7d8e807edca46c18799822b6f1e03abe27ab27ea', '[\"*\"]', NULL, NULL, '2026-06-07 04:32:14', '2026-06-07 04:32:14'),
(8, 'App\\Models\\User', 1, 'admin-token', 'fa3b7d4bf594123800554dc2d527eaf37a09897dffaf5ab99fe0b2d7991a4495', '[\"*\"]', '2026-06-07 04:32:18', NULL, '2026-06-07 04:32:16', '2026-06-07 04:32:18'),
(9, 'App\\Models\\User', 1, 'admin-token', '237c535cf018aa09930a324b24ac61cc4754d2c545320243292997f061f20be7', '[\"*\"]', '2026-06-07 04:38:17', NULL, '2026-06-07 04:32:16', '2026-06-07 04:38:17'),
(10, 'App\\Models\\User', 1, 'admin-token', '8656d27c9fee3772c2d6eec012de115f0b2c5051290dc91d36022e543b754da2', '[\"*\"]', '2026-06-08 11:39:49', NULL, '2026-06-08 11:26:06', '2026-06-08 11:39:49'),
(11, 'App\\Models\\User', 1, 'admin-token', '92192d719766d51abcab727aeb14ec1e1b71c50ea54f0c6fc42ef2e36daf440b', '[\"*\"]', '2026-06-15 21:42:47', NULL, '2026-06-15 21:42:41', '2026-06-15 21:42:47'),
(12, 'App\\Models\\User', 1, 'admin-token', 'f0e84a964ffaec09a39aa758e435da113d469a398c8d9e3d226b68f51f4f3ef5', '[\"*\"]', '2026-06-16 00:35:49', NULL, '2026-06-15 21:42:42', '2026-06-16 00:35:49'),
(13, 'App\\Models\\User', 1, 'admin-token', '696449c67ad58f46da1c71490aee7659864ac5da844dc6ea1986a612089d1dbe', '[\"*\"]', NULL, NULL, '2026-06-29 08:37:23', '2026-06-29 08:37:23'),
(14, 'App\\Models\\User', 1, 'admin-token', '52877f074c8bc67e70a953f3c0efe4b101f3c2b81b91c7492f257c3ce75ec9b5', '[\"*\"]', '2026-06-29 08:44:03', NULL, '2026-06-29 08:37:25', '2026-06-29 08:44:03'),
(15, 'App\\Models\\User', 1, 'admin-token', 'f2c92b493b8f110e4f366758bed9d7b9786c8f122c75f64371f5260d768510ac', '[\"*\"]', '2026-06-30 04:15:30', NULL, '2026-06-30 04:15:27', '2026-06-30 04:15:30'),
(16, 'App\\Models\\User', 1, 'admin-token', 'ca7409e3cda667a5a1f597c140915950488b05f3ce5688de740dc73223c21b52', '[\"*\"]', '2026-06-30 04:41:22', NULL, '2026-06-30 04:15:28', '2026-06-30 04:41:22'),
(17, 'App\\Models\\User', 1, 'admin-token', '590b9f78f31bf9a77fb35793b06e973606bda6d2e6901fed674a9fbb90cf91b0', '[\"*\"]', '2026-07-05 00:27:00', NULL, '2026-06-30 04:41:49', '2026-07-05 00:27:00'),
(18, 'App\\Models\\User', 1, 'admin-token', 'afdc79f92ab02b135fc677db899e949f13cb1c593f644c9833f58c6cdc347b17', '[\"*\"]', '2026-07-05 19:57:19', NULL, '2026-07-05 19:55:47', '2026-07-05 19:57:19'),
(19, 'App\\Models\\User', 1, 'admin-token', '005978029003f877f3a23e7d8e0728d44638f91ab464a7a96fe307a21c8cedbb', '[\"*\"]', '2026-07-06 02:24:23', NULL, '2026-07-06 02:24:15', '2026-07-06 02:24:23'),
(20, 'App\\Models\\User', 1, 'admin-token', '0a9a40d800a23caec39e56e6bda321da0e0a40d757aec62519d548dacd9a5289', '[\"*\"]', NULL, NULL, '2026-07-06 02:24:16', '2026-07-06 02:24:16'),
(21, 'App\\Models\\User', 1, 'admin-token', '8dc49ff18debc5c500e0fe924fbd179ae4af0da22ff4deb981e053420a724022', '[\"*\"]', '2026-07-06 02:39:25', NULL, '2026-07-06 02:24:20', '2026-07-06 02:39:25'),
(22, 'App\\Models\\User', 1, 'admin-token', '3048c0e4d5f47c29f7b74adc24cb08ed0b881749f38b6e330ee7ad16c3c32f4e', '[\"*\"]', NULL, NULL, '2026-07-06 03:42:11', '2026-07-06 03:42:11'),
(23, 'App\\Models\\User', 1, 'admin-token', '2071be093c6cc070b3a731f229f48c4de98fb2c89980ea0d38173315fd72492c', '[\"*\"]', '2026-07-06 04:21:13', NULL, '2026-07-06 03:42:12', '2026-07-06 04:21:13'),
(24, 'App\\Models\\User', 1, 'admin-token', '3f01743223c7a32063d2ade296c2354add2baee1564b2111280c29072c85fb61', '[\"*\"]', '2026-07-07 03:02:03', NULL, '2026-07-07 03:01:55', '2026-07-07 03:02:03'),
(25, 'App\\Models\\User', 1, 'admin-token', 'bb901ab7f569af67fb50c1ad17007e39408a7bf08edabe73835dbadee26928f3', '[\"*\"]', NULL, NULL, '2026-07-07 03:01:56', '2026-07-07 03:01:56'),
(26, 'App\\Models\\User', 1, 'admin-token', 'e9e876a430d859f698588ff617cf66c612e6dccdea607af5afc7e9f50ef0bb2b', '[\"*\"]', '2026-07-07 03:33:31', NULL, '2026-07-07 03:02:00', '2026-07-07 03:33:31'),
(27, 'App\\Models\\User', 1, 'admin-token', '95a3412fc901927ab67f7965ce0e25dff969ed764892021df207dacb2ca232fc', '[\"*\"]', '2026-07-09 02:42:39', NULL, '2026-07-09 02:10:45', '2026-07-09 02:42:39'),
(28, 'App\\Models\\User', 1, 'admin-token', '331166892abb60d5fdfb9b10574073a1df33fba9417375775af9acf9f1e8cd11', '[\"*\"]', NULL, NULL, '2026-07-09 08:17:06', '2026-07-09 08:17:06'),
(29, 'App\\Models\\User', 1, 'admin-token', '814db9952cfa35ac96372207ea22dba7d63103696a264a9d17329b1ec900eb8d', '[\"*\"]', '2026-07-09 11:35:39', NULL, '2026-07-09 08:17:06', '2026-07-09 11:35:39'),
(30, 'App\\Models\\User', 1, 'admin-token', 'e8f5cfddceed05c3536d43d6d77dd0153362f6707e460232de9bed83d8610142', '[\"*\"]', '2026-07-10 01:30:55', NULL, '2026-07-10 01:29:11', '2026-07-10 01:30:55'),
(31, 'App\\Models\\User', 1, 'admin-token', '2e9e35522bdcf97ed24e4dd7756701f929c0a7aa3a8a5de8bd4833f23d9c44a0', '[\"*\"]', '2026-07-10 10:33:38', NULL, '2026-07-10 09:51:03', '2026-07-10 10:33:38'),
(32, 'App\\Models\\User', 1, 'admin-token', '26a98e61068e33d2df3048b0bc19bd553ec8d78a7adc75b2ac7f1bce9db6b899', '[\"*\"]', '2026-07-10 23:19:11', NULL, '2026-07-10 23:18:33', '2026-07-10 23:19:11'),
(33, 'App\\Models\\User', 1, 'admin-token', '2b242373f03eda7dd18ef1309b565cbc94d6a6db1ed2f88e2bbb6900045cf61d', '[\"*\"]', '2026-07-10 23:21:31', NULL, '2026-07-10 23:20:47', '2026-07-10 23:21:31'),
(34, 'App\\Models\\User', 1, 'admin-token', '4d437a9ea72d453b6ea15e2fe001c056816bdcb43a17a6bf331e8ee6d2e71b60', '[\"*\"]', '2026-07-11 01:18:25', NULL, '2026-07-11 01:17:35', '2026-07-11 01:18:25'),
(35, 'App\\Models\\User', 1, 'admin-token', '171c025cfa67359b8cfd0c00a541db8446a6bcfd3483fe384d90605af21c7abb', '[\"*\"]', '2026-07-11 01:21:46', NULL, '2026-07-11 01:20:57', '2026-07-11 01:21:46'),
(36, 'App\\Models\\User', 1, 'admin-token', '64379352197d36659a14ab4c9c0d1fdfb8f06b472ed9bb6a9eb733312cb93ee4', '[\"*\"]', '2026-07-11 01:23:08', NULL, '2026-07-11 01:21:21', '2026-07-11 01:23:08'),
(37, 'App\\Models\\User', 1, 'admin-token', 'd7caf0e60ba3fdbbb9c78f6ea5f1708d6ee35b2a62ec0ed7c63705c0fa09b9dc', '[\"*\"]', '2026-07-11 01:57:35', NULL, '2026-07-11 01:35:58', '2026-07-11 01:57:35'),
(38, 'App\\Models\\User', 1, 'admin-token', '05e5b739405f0ba9aaba16ed1815d9d3ea0d2df689a6e773c2c2a81f86859855', '[\"*\"]', '2026-07-11 03:26:49', NULL, '2026-07-11 03:20:40', '2026-07-11 03:26:49'),
(39, 'App\\Models\\User', 1, 'admin-token', '76267e5b87278dc09b7053e3b61c982478954e60836fb8b81bc26bd52976038b', '[\"*\"]', '2026-07-11 03:36:11', NULL, '2026-07-11 03:27:17', '2026-07-11 03:36:11'),
(40, 'App\\Models\\User', 4, 'admin-token', '48a73ea05731108a98654bb7d919bbba55c8e5244067d9c7a571c77a7d1be051', '[\"*\"]', '2026-07-11 03:36:29', NULL, '2026-07-11 03:36:24', '2026-07-11 03:36:29'),
(41, 'App\\Models\\User', 4, 'admin-token', 'f18c1b128c7949dd90621224ea03675adfeb5531010ac46d1e2c6a5732d62a63', '[\"*\"]', '2026-07-11 04:37:29', NULL, '2026-07-11 03:36:53', '2026-07-11 04:37:29'),
(42, 'App\\Models\\User', 4, 'admin-token', '9516aaebab9ee6a58dd8f832a7a10f34e0309a930f13aa4a8fac9755c2587a68', '[\"*\"]', '2026-07-11 04:38:28', NULL, '2026-07-11 04:38:19', '2026-07-11 04:38:28'),
(43, 'App\\Models\\User', 1, 'admin-token', '3fc7140f929148aa7b9cf1123e2d2f775bf7d6cc39c8c6117081b7d3aa3bcea7', '[\"*\"]', '2026-07-11 07:17:01', NULL, '2026-07-11 07:16:20', '2026-07-11 07:17:01'),
(44, 'App\\Models\\User', 1, 'admin-token', 'f66ba124d7bbd1a5e3be805ec435d228cef5d4f9b939d6e6be77dd11b94d5bfd', '[\"*\"]', NULL, NULL, '2026-07-12 04:45:28', '2026-07-12 04:45:28'),
(45, 'App\\Models\\User', 1, 'admin-token', '90868a5277369b75fa264d7411fcba797ac28a07d03f644f2a9763efc914694f', '[\"*\"]', '2026-07-12 04:49:04', NULL, '2026-07-12 04:45:28', '2026-07-12 04:49:04'),
(46, 'App\\Models\\User', 1, 'admin-token', '73fc0f9dbda7428d5af4559314e111894be4367e821a2140a67b4f7da5b22dee', '[\"*\"]', '2026-07-12 20:09:15', NULL, '2026-07-12 20:07:57', '2026-07-12 20:09:15'),
(47, 'App\\Models\\User', 1, 'admin-token', 'a26d50b4320bba81bae119f052634a8b57a4ac07ed82fa4cd50f58221e82db86', '[\"*\"]', '2026-07-13 07:18:13', NULL, '2026-07-13 07:00:46', '2026-07-13 07:18:13'),
(48, 'App\\Models\\User', 1, 'admin-token', '42749a7527152ec63c3edf5378f9fcd56286713912aaf21f72bbfe30c4fc080c', '[\"*\"]', '2026-07-17 00:48:40', NULL, '2026-07-17 00:48:38', '2026-07-17 00:48:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photobooth_sessions`
--

CREATE TABLE `photobooth_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_uuid` char(36) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kiosk_device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `final_photo_path` varchar(255) DEFAULT NULL,
  `download_expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `photobooth_sessions`
--

INSERT INTO `photobooth_sessions` (`id`, `session_uuid`, `transaction_id`, `kiosk_device_id`, `start_time`, `end_time`, `final_photo_path`, `download_expired_at`, `created_at`, `updated_at`) VALUES
(35, '25df932f-ec4d-4ab3-be2b-7991797ef864', 117, 1, '2026-07-10 09:42:52', '2026-07-10 09:42:52', 'sessions/final_25df932f-ec4d-4ab3-be2b-7991797ef864.jpg', '2026-07-10 10:42:52', '2026-07-10 09:42:52', '2026-07-10 09:42:52'),
(36, '718ed1ed-a998-4544-8096-1122d690992d', 118, 1, '2026-07-10 09:46:45', '2026-07-10 09:46:45', 'sessions/final_718ed1ed-a998-4544-8096-1122d690992d.jpg', '2026-07-10 10:46:45', '2026-07-10 09:46:45', '2026-07-10 09:46:45'),
(37, '0d5bbac9-61de-4eab-a807-202fedb31c6d', 119, 1, '2026-07-10 09:53:45', '2026-07-10 09:53:45', 'sessions/final_0d5bbac9-61de-4eab-a807-202fedb31c6d.jpg', '2026-07-10 10:53:45', '2026-07-10 09:53:45', '2026-07-10 09:53:45'),
(38, '5178b16f-9607-4624-96f1-4d701c6f86dd', 121, 1, '2026-07-10 09:58:16', '2026-07-10 09:58:16', 'sessions/final_5178b16f-9607-4624-96f1-4d701c6f86dd.jpg', '2026-07-10 10:58:16', '2026-07-10 09:58:16', '2026-07-10 09:58:16'),
(39, 'd8461fe4-ef8f-4e16-99ba-3a127161a3d9', 123, 1, '2026-07-10 10:06:32', '2026-07-10 10:06:32', 'sessions/final_d8461fe4-ef8f-4e16-99ba-3a127161a3d9.jpg', '2026-07-10 11:06:32', '2026-07-10 10:06:33', '2026-07-10 10:06:33'),
(40, '2f8b90a6-7f39-404f-9eaa-b3f418a7f311', 124, 1, '2026-07-10 10:20:29', '2026-07-10 10:20:29', 'sessions/final_2f8b90a6-7f39-404f-9eaa-b3f418a7f311.jpg', '2026-07-10 11:20:29', '2026-07-10 10:20:29', '2026-07-10 10:20:29'),
(41, '9037fe35-1e54-4889-aea4-c1541bdaa172', 126, 1, '2026-07-10 10:31:54', '2026-07-10 10:31:54', 'sessions/final_9037fe35-1e54-4889-aea4-c1541bdaa172.jpg', '2026-07-10 11:31:54', '2026-07-10 10:31:54', '2026-07-10 10:31:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photo_assets`
--

CREATE TABLE `photo_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('frame','filter') NOT NULL DEFAULT 'frame',
  `file_path` varchar(255) NOT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`config`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `photo_assets`
--

INSERT INTO `photo_assets` (`id`, `name`, `type`, `file_path`, `thumbnail_path`, `config`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'contoh 1', 'frame', 'photo_assets/Zlprc0G6YKMOIyjvnPyV8xMI5ug4636T98NwZSVG.png', NULL, NULL, 1, '2026-06-30 04:34:31', '2026-06-30 04:34:31'),
(2, 'contoh 2', 'frame', 'photo_assets/NbuihfKpHp1ftyoJj5IRynJE1gJSn6ROUZRQIwgq.png', NULL, NULL, 1, '2026-06-30 04:38:20', '2026-06-30 04:38:20'),
(3, 'contoh 3', 'frame', 'photo_assets/0yFQSMwSFABPMDcCdZuDJv1sksJdzh5IqzHvSLgD.png', NULL, NULL, 1, '2026-07-04 23:47:01', '2026-07-04 23:47:01'),
(6, 'contoh6', 'frame', 'photo_assets/HxbgKvwDnEX6jZwpl0JDqlCAjUcCTTHDEa3bwBHl.png', NULL, '{\"slots\":[{\"id\":1783420400053,\"x\":60,\"y\":60,\"width\":480,\"height\":480},{\"id\":1783420400054,\"x\":60,\"y\":600,\"width\":480,\"height\":480},{\"id\":1783420400055,\"x\":60,\"y\":1140,\"width\":480,\"height\":480},{\"id\":1783420400056,\"x\":660,\"y\":60,\"width\":480,\"height\":480},{\"id\":1783420400057,\"x\":660,\"y\":600,\"width\":480,\"height\":480},{\"id\":1783420400058,\"x\":660,\"y\":1140,\"width\":480,\"height\":480}]}', 1, '2026-07-07 03:33:30', '2026-07-07 03:33:30'),
(8, 'wisuda', 'frame', 'photo_assets/NXQFa0tgA1Hh0SFDj45VIxskTlJs8JR8sPoEzIhA.png', NULL, '{\"slots\":[{\"id\":1783588511408,\"x\":60,\"y\":300,\"width\":480,\"height\":480},{\"id\":1783588511409,\"x\":60,\"y\":720,\"width\":480,\"height\":480},{\"id\":1783588511410,\"x\":60,\"y\":1140,\"width\":480,\"height\":480},{\"id\":1783588511411,\"x\":660,\"y\":300,\"width\":480,\"height\":480},{\"id\":1783588511412,\"x\":660,\"y\":720,\"width\":480,\"height\":480},{\"id\":1783588511413,\"x\":660,\"y\":1140,\"width\":480,\"height\":480}]}', 1, '2026-07-09 02:15:21', '2026-07-09 02:42:38'),
(9, 'contoh 19', 'frame', 'photo_assets/CIyXYmFuJIcMLG04cyGlkU8QPtTLmhdeJhpXcYXq.png', NULL, '{\"slots\":[{\"id\":1783610258790,\"x\":40,\"y\":190,\"width\":520,\"height\":400},{\"id\":1783610261270,\"x\":40,\"y\":670,\"width\":520,\"height\":400},{\"id\":1783610261837,\"x\":40,\"y\":1150,\"width\":520,\"height\":400},{\"id\":1783610262466,\"x\":640,\"y\":190,\"width\":520,\"height\":400},{\"id\":1783610262974,\"x\":640,\"y\":670,\"width\":520,\"height\":400},{\"id\":1783610305831,\"x\":640,\"y\":1150,\"width\":520,\"height\":400}]}', 1, '2026-07-09 08:19:59', '2026-07-09 08:25:57'),
(10, 'contoh 18', 'frame', 'photo_assets/8lLWZYYuDElRqqRq14V7ppgw8vtW450Wgs2ZseAV.png', NULL, '{\"slots\":[{\"id\":1783611378368,\"x\":20,\"y\":80,\"width\":560,\"height\":420},{\"id\":1783611379140,\"x\":20,\"y\":640,\"width\":560,\"height\":420},{\"id\":1783611379729,\"x\":20,\"y\":1200,\"width\":560,\"height\":420},{\"id\":1783611380403,\"x\":620,\"y\":80,\"width\":560,\"height\":420},{\"id\":1783611381036,\"x\":620,\"y\":640,\"width\":560,\"height\":420},{\"id\":1783611381716,\"x\":620,\"y\":1200,\"width\":560,\"height\":420}]}', 1, '2026-07-09 09:25:30', '2026-07-09 09:31:24'),
(11, 'CONTOH SAJA', 'frame', 'photo_assets/wP5q2CmMecw46KuRDKXvjqZfCehckID9gawqR8sG.png', NULL, '{\"slots\":[]}', 1, '2026-07-11 03:50:49', '2026-07-11 03:50:49'),
(12, 'kotak catyrrr', 'frame', 'photo_assets/iWTK6063JHNr8GT5cU4MesQfn1Eu1Xig8ReuL3Hx.png', NULL, '{\"slots\":[]}', 1, '2026-07-11 04:22:05', '2026-07-11 04:22:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('18P0WbptOX92eYKYADRAtlBkUg4pLO8FVX0nnCMf', NULL, '52.159.90.233', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXJxaEtwajFPU296bThpMjM4WVlyNWlkWWFlVmxkelZTT3BKQms0OSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784290211),
('2NUBs2pg90L7RE2xsVFE26dFNPmBhTTQxRwYPlZm', NULL, '113.31.186.195', 'Dalvik/2.1.0 (Linux; U; Android 9.0; ZTE BA520 Build/MRA58K)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHZnaFkzaE8wbnhVMDFSaHBUcjhBZFFjdmdhdGdKUm5ieW01ODFKbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784283449),
('3rHpPtpumtgMy28J3tlreYrnRci5KUFetwZqc3Rb', NULL, '43.165.174.53', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDlJSUs2T3JrRmc0dE1QVUgxdlVYMjBkeXpiN1NyS2FnYTFtWTJRQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784257929),
('89eSeEW3jNGeQycFTvVTgY7e3pYvSPBe0hAcMGZy', NULL, '43.166.132.142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHVOamtFTjkyVVJwNklsRzYwTU9xd29BOHA0UmkxeDE2VGtSbEk2QyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784290044),
('9yz3pqRVjgcdVs5jvn1L8yBMq3O1zAtVBhvT4A2i', NULL, '192.36.109.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1ZRZGVuREhSMUJlVDJLZ3g2TjBFc0h2bG1VSlA0QWtxZGJEUEhTSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784291489),
('BCk3405h0Cly1UWFHmCTxRDqzuFAXptNRMDlnfiJ', NULL, '113.31.186.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.27 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/601.1.27', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm9vQ01WbEowUmlnQ1NDQ2o4azhra1EyQWF5U3hLMTFEa2V6dHBYbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784260733),
('bfMvDdZfDI9Ot1TwBku87JAtX38UrODxIA5a0LaA', NULL, '94.154.43.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlNpdlV5Q2RMTURoRmw3bUFXYzJhZExYdnEydUFUS0hCZnRXM3lXNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784274002),
('BihiI8BtRjpEMWQzdYLbmvTDzDGoo9DV6GrsDb7a', NULL, '146.56.197.150', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHBpc1pxN1R2V2xrMFRrVm54RVFTZXNmdXdqUkN1aW5DdGRDY3NhcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784265284),
('BWldksIG4lmi9pyJYIfexvwva65LmFW7RnKU5pWT', NULL, '81.171.74.60', 'Go-http-client/1.1', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidk5TT3h0enBhOXh3dWlMOFVXSFkyUldkYU8zTTFUbGN4b3lCRmcycCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784282374),
('D3toyWGMZxVhAIQuO16n86OyMI81p6ZBhltuToc2', NULL, '52.159.90.233', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjRlZWM3YnRZWXRZYUpMUGk2aVdSRU1idktWYzNnY3lIU2FDWUxSZiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784290328),
('dEb4rQW0K2qUrVFOYOOCbtlkQiSQnmCYXaJggRQ5', NULL, '52.159.90.236', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFYwbnExY2tRTFFlRHNNandVcURtTjhvRTNCZjZIZXZMNUNSV09iYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784295019),
('DKHILYoNsHgg2hvCSwKSul3X4XwupdxS5t7JFvBr', NULL, '34.122.147.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.60 Safari/537.36 Edge/12.246', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGxEWURlbmlmSDJjUWdMWGlYanBvS1pYNmt1Y1piSGYzOTJlQ29VNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784280707),
('DshvncRzvrjAS88UpOPKiaBLKWNP5i0V0PhTofQK', NULL, '43.157.168.43', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3JlZXRnSWUwY2JrRjZWMjNEYnBhYlNHYXhHZEdFSG9Ddzllc3NiYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784294961),
('ecuHb6nH9DCsZNeNiPwUleGsXXVvSVYLofk3rdWk', NULL, '52.159.90.238', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialJldWxPcVh3YXg3Y0xGNTZHUzY3dXkxbzJTMXZXcDFJQkcyeURIdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784295857),
('EgODLr4fqJpbr9n17QtsViQ2RUx897a8bGla0NRh', NULL, '113.31.186.195', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.27 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/601.1.27', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDVXUGRUaGUxTXJObXdWUGJPY05xMm8xMXF0WDk3RXcwUU5HbzN1NyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784281326),
('fF5caNVl2feKtTCE6qyWg0a71pkRetnzuaBWdYSn', NULL, '130.213.21.191', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVNvWWR2aVBJMExmWUZraGZCS21ybm15dzJ5M2hmdUhMYmQ3Rmo0ViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784295662),
('fG3sr08d6miKqrWG3trkhovyplqLZlL1AhbDluhk', NULL, '52.159.90.239', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW5ZRUhyMU1POGdnVEtlS0k0YWJRVWFvOVdGMzNZNm9KcUJ1QUxBdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784295871),
('FiSMRTclfG84wus2Nkq9ApkWihV4irJpICJQqlj2', NULL, '38.49.216.84', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0NRODdLdnVoYWF5cm9hMUdFbWs1U3Qzd2E1ZE9wUWxib3RoeXFkTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784277238),
('FUoXBvBYVBpznnRxhs0hPbkVBUEAjqghdM6yJnZi', NULL, '130.213.21.191', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTNuanpuc1d4UkFTUUExdmhqS0RwbzZZWXRVVUNtSkphaGptNlJwdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784290324),
('GVb01fGdZLuo9v00a4AAkuBqHVVKPqWBc6lpOFTX', NULL, '101.32.52.164', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWZBbk41Y2N6NnVoWERQd0Jqc1FFWFdTUzI5SVpjRkZaNHRzS0JtcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784274980),
('IxuMzBfY9NRpGkpm96Nb2AvvGlhHdwqgtIdYx3vo', NULL, '124.221.163.189', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjQ4U1NwTm5PN21iejIzMUlBalhQTmlmeXE5TTFzZ0VsejR2RUpOSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784285469),
('kR2tsZFkbiosPJNjK0GJTE5df8ZnVHrBh4qLJznZ', NULL, '113.31.186.195', 'Dalvik/2.1.0 (Linux; U; Android 9.0; ZTE BA520 Build/MRA58K)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0JORWU3YjE5TGNlVkpnYUlOMThDcGRTVkIxbWEzRmZlR2M0aDlxQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784284772),
('KyzN2OaVZRd0sP6qKKzVi2QEGsuriA4CJLQLwfbC', NULL, '198.44.133.14', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU1uOFY2ZXVjZ0FvSE5lS3FEVnBoUmxmR05yZlRRSmVhOFpleEVDaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784270766),
('l7HENUOzskutiB9rTHDSfduWB4JQuy9SdFNvM3X8', NULL, '110.172.98.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEJVdFdRSUd6b1lkNmdxMkZoakVzWUpPSUhCU2VhaE8yVmN4czhhTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9tYWlsLmJvb3RoZmxvdy5zaXRlIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1784299526),
('lblpvp6pJLeTcrtmtNETdDdKtyPJA6zKQwEljocp', NULL, '91.231.89.20', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDR5MkVxYW44Yk5JVnIzZ295QWlqOVV4R1lOWTYwbjRxakRLNWVuaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784277962),
('lCfRL7Xyo4Q1mfnkqJrfAje5uafIgzYwHrFKMgaL', NULL, '52.159.90.237', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU9mdlcxa0JFWmdqdWg1UDRpSG5nb1RtYlNNTnpNeVhYQ1JHQzFkaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784290596),
('lCUfWqkV4QqCctMfQd9IuZ4sgAGta9VlTx5Lqz2T', NULL, '81.196.20.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2oxVzdmdUdDRU5CaFp0NTFJS3l4dHBsNGJ6TVEwV3VqUThscFlpOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784254782),
('LHF0IzqfaLruP5xzR9j3Uldyy9Xf5Q3GQwuScfKj', NULL, '45.92.87.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnBNRDVDc0RJNWZlSTZpTnQ3bDdiVUlIS3FIZlhWZk8wekNpdVdoUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784269215),
('MGRjdLg6MHP5lNhP6fEjl4CmPPXv6ZN0NVzhGXY1', NULL, '47.251.73.54', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmxnNHo3U0N1SjdYbU5UcXRDOGlQSW01NndndWUyMGxqS0tGSExCbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784276727),
('nB2CPthY52d8eunihJtBzYOmg7bQWA6MwAluXbjx', NULL, '43.130.74.193', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWw4Z1FYaFpUejJaTlhwbFBrQngwdzFmOGpvenBoYnppNE11c0JyWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784253598),
('O7HX7Iwqpjdebibpzti2WV2KFRCkcKb8FAIwqZ9d', NULL, '149.102.246.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHl2cWxiR2JvM3NFQ2haOFhWMnJjOU1wOEY1WjYxZUo5cW5XRnRJayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784276571),
('Q6myZl57LkLCXmW5Y3c9xr3FvwVWe97U9J3WxUND', NULL, '171.217.24.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid0ZEdzZpSDF0MWZzcHUzaGhSaDY1VzJsaVF0TlV3NnZLSnZkYVUwMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784279171),
('qpgrXcGZAnpfKhrCklPf0q8zraZX8gAArDCZJ8HB', NULL, '94.154.43.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEZHemRPaUNESzdpU25CYzdrNnUzRUdabFpxSWhtczlUelNQdjV1QiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbWFpbC5ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784274002),
('RFCxGqnrKrS9VsKn7ZSgqF4qHHotMXDYZZbsx3FL', NULL, '124.156.157.91', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXVJWk1ERGhjMWRsREtlcGF4YmZVcVNaUVRLSGtCZHMyS0hDRTJONCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784279252),
('RhGtlaq7ow3UVVQyjn3XVYw2qcuQJdcnw8U6Ke6b', NULL, '43.130.9.111', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHo5amowczZ0RGVtQkk1UERZN0p5YmRteTlBek5tb0s3bTFEanp0aCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784300643),
('S9fyrxx69kW6OJVvsVMfBfiCcG10ItCiRNESHk4S', NULL, '43.159.143.139', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnlTSHlLQUdmc25QN1kzYndkRXIwMDJEZGxqWlpxekVrVWxNSDlYYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly93d3cuYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784253948),
('SgqduosnYnDghKiHrdJ0rIJucdwE4Sr7BtMLybsj', NULL, '91.148.245.81', 'Go-http-client/1.1', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMFFrTVVWaVBtak5XZ3E1dUcxZnVFVlQ1VndPNDk2VU1IVkFqWEFHayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784282374),
('t9MD6ayQrmvthuAphSX8ZO126N0gdK5z6riz76hE', NULL, '81.171.74.60', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlRXcXAyeHBLQkVpOG10ejd2NWNXbE5QYjM4YVk0TEw5SXRZYkx1cCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vbWFpbC5ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784282374),
('Tqyswz39PAJZegk1ld4Qnnjo5TWc2W6PlqzPYbGZ', NULL, '109.243.146.23', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Googlebot/2.1; +https://www.google.com/bot.html) Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjJGUmk2eFFxa29SZDFSWGk4Vkx6Q3BHZWJJN3NkbThHSnMyNXNmeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784274441),
('vfpiitZvwORXMLUUIM2pyyNogETAoGNhmHbICwwf', NULL, '91.231.89.18', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnVNTzlwWTBPOExhUDVTVUc2eTRTQWQzdEl3RXoyNDczdkExWHRYRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784277957),
('VUuhcUiQ3xNGynrNiO0CgBgGdh8fgcSGxRGlLYaG', NULL, '47.91.109.17', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkp0bTIxSVJCTzJhcG9HUGhMTWNWZjRDZm9lZllsWEFONTR0U2ROZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784276727),
('vYhPbyxHLdwi2nIhBNmq5q066s83tZQLLznw9L55', NULL, '130.213.21.191', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0NWRjhQR29VNHJNYXBOT3hteUhCZ0EzUHdYa2FlQzNMcXJxV0VXZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784294779),
('WKDHEbIrOpHAzOvcwU8Fua38OIlzkzVAv3dSASXi', NULL, '62.238.17.239', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDRyUjBISXJ2THpmMnJCa3NhanZMY3VaUExRV0x2Q05pMTNaVm9WRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784272666),
('WKeznUrOU2TxJ3Mwwp8ZfG8Nf3n43xU6vvFqdY3d', NULL, '178.128.141.201', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWZSWFprUHZyOVJnd1FScjFadzBQd3RueTdrbzQwaFNhNjQ0aEdQSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784301033),
('WxReonJ6L6t1s5Ztk8yQz1PMxX4ilnFHf02LWuZz', NULL, '178.105.183.10', '2ip bot/1.1 (+https://2ip.io/bot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkNKNlRtZk1xUWhPcmJSOG1BcldUc0RrU1R3MjkyM2NsY0NaeGpXTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784258730),
('xlfl83crfuPYopWqOdRkKKH4rGG7cRRGeXkNTqzc', NULL, '62.238.17.239', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTJaSzYzd0JvVXAxYnpjMFg1eHhpeUVzd05KT1VtU1dISjhaNUxzeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784278311),
('XnYh79Ej4czgQs1AeXStAemYuJO8jzvV1BcY1XrS', NULL, '180.243.241.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGc4Y09kNHpBd2l2TUo5TUF3ZVpaUmoxYUJSWkJZNVg4T29YMERZRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784276020),
('XX6zxnlm5LQbRk1yu6Ga09MXYlpof5H0UHNyL4Rd', NULL, '113.31.186.195', 'Opera/9.10 (Windows NT 5.1; U; nl)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWVva1Rza0wzcVgydjFUOG11Z1JTZG1yVjdzcWxveE15NVlRMTZPbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784260628),
('YH6zTKAhzrihmRiaEu1jn5WbgBEHkwgthfHfT8yq', NULL, '130.213.21.191', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzFMd0FYd3pEd0RMeTZCZXpQTjFlREloOEtGY3JDNEtscHdHcVhDSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYm9vdGhmbG93LnNpdGUiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1784290500),
('yoMdSIrKqkaVHxpakuPUTbiYv7A9f7nNDm67MesT', NULL, '124.156.179.141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUtPREp2Yml6NzBWbXg2amZrRGY4TjlSZW94bmtqdkdrYXl4WVFYSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784292356),
('zFPsy3tPri8Zca2H4mJSaerkri5ysTdpq6HKVLfa', NULL, '104.28.162.7', 'Python/3.14 aiohttp/3.13.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmNveXhnM3U3cEoyRThON0pIdFpuajBWTjhNWkFxQm53amxSWXpsMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ib290aGZsb3cuc2l0ZSI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1784277770);

-- --------------------------------------------------------

--
-- Struktur dari tabel `session_photos`
--

CREATE TABLE `session_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photobooth_session_id` bigint(20) UNSIGNED NOT NULL,
  `raw_photo_path` varchar(255) NOT NULL,
  `is_selected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `session_photos`
--

INSERT INTO `session_photos` (`id`, `photobooth_session_id`, `raw_photo_path`, `is_selected`, `created_at`, `updated_at`) VALUES
(97, 35, 'sessions/raw_25df932f-ec4d-4ab3-be2b-7991797ef864_0.jpg', 1, '2026-07-10 09:42:52', '2026-07-10 09:42:52'),
(98, 35, 'sessions/raw_25df932f-ec4d-4ab3-be2b-7991797ef864_1.jpg', 1, '2026-07-10 09:42:52', '2026-07-10 09:42:52'),
(99, 35, 'sessions/raw_25df932f-ec4d-4ab3-be2b-7991797ef864_2.jpg', 1, '2026-07-10 09:42:52', '2026-07-10 09:42:52'),
(100, 36, 'sessions/raw_718ed1ed-a998-4544-8096-1122d690992d_0.jpg', 1, '2026-07-10 09:46:45', '2026-07-10 09:46:45'),
(101, 36, 'sessions/raw_718ed1ed-a998-4544-8096-1122d690992d_1.jpg', 1, '2026-07-10 09:46:45', '2026-07-10 09:46:45'),
(102, 36, 'sessions/raw_718ed1ed-a998-4544-8096-1122d690992d_2.jpg', 1, '2026-07-10 09:46:45', '2026-07-10 09:46:45'),
(103, 37, 'sessions/raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_0.jpg', 1, '2026-07-10 09:53:45', '2026-07-10 09:53:45'),
(104, 37, 'sessions/raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_1.jpg', 1, '2026-07-10 09:53:45', '2026-07-10 09:53:45'),
(105, 37, 'sessions/raw_0d5bbac9-61de-4eab-a807-202fedb31c6d_2.jpg', 1, '2026-07-10 09:53:45', '2026-07-10 09:53:45'),
(106, 38, 'sessions/raw_5178b16f-9607-4624-96f1-4d701c6f86dd_0.jpg', 1, '2026-07-10 09:58:16', '2026-07-10 09:58:16'),
(107, 38, 'sessions/raw_5178b16f-9607-4624-96f1-4d701c6f86dd_1.jpg', 1, '2026-07-10 09:58:16', '2026-07-10 09:58:16'),
(108, 38, 'sessions/raw_5178b16f-9607-4624-96f1-4d701c6f86dd_2.jpg', 1, '2026-07-10 09:58:16', '2026-07-10 09:58:16'),
(109, 39, 'sessions/raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_0.jpg', 1, '2026-07-10 10:06:33', '2026-07-10 10:06:33'),
(110, 39, 'sessions/raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_1.jpg', 1, '2026-07-10 10:06:33', '2026-07-10 10:06:33'),
(111, 39, 'sessions/raw_d8461fe4-ef8f-4e16-99ba-3a127161a3d9_2.jpg', 1, '2026-07-10 10:06:33', '2026-07-10 10:06:33'),
(112, 40, 'sessions/raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_0.jpg', 1, '2026-07-10 10:20:29', '2026-07-10 10:20:29'),
(113, 40, 'sessions/raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_1.jpg', 1, '2026-07-10 10:20:29', '2026-07-10 10:20:29'),
(114, 40, 'sessions/raw_2f8b90a6-7f39-404f-9eaa-b3f418a7f311_2.jpg', 1, '2026-07-10 10:20:29', '2026-07-10 10:20:29'),
(115, 41, 'sessions/raw_9037fe35-1e54-4889-aea4-c1541bdaa172_0.jpg', 1, '2026-07-10 10:31:54', '2026-07-10 10:31:54'),
(116, 41, 'sessions/raw_9037fe35-1e54-4889-aea4-c1541bdaa172_1.jpg', 1, '2026-07-10 10:31:54', '2026-07-10 10:31:54'),
(117, 41, 'sessions/raw_9037fe35-1e54-4889-aea4-c1541bdaa172_2.jpg', 1, '2026-07-10 10:31:54', '2026-07-10 10:31:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_settings`
--

CREATE TABLE `system_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'string',
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `system_settings`
--

INSERT INTO `system_settings` (`id`, `key`, `value`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'price_per_session', '30000', 'string', NULL, '2026-06-30 05:16:46', '2026-07-11 01:37:07'),
(2, 'session_duration_minutes', '5', 'string', NULL, '2026-06-30 05:16:46', '2026-06-30 05:16:46'),
(3, 'countdown_duration_seconds', '5', 'string', NULL, '2026-06-30 05:16:46', '2026-06-30 05:16:46'),
(4, 'max_photos_taken', '6', 'string', NULL, '2026-06-30 05:16:46', '2026-07-04 23:47:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `voucher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gross_amount` decimal(10,2) NOT NULL,
  `net_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','success','failed') NOT NULL DEFAULT 'pending',
  `webhook_log` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`webhook_log`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `invoice_number`, `voucher_id`, `gross_amount`, `net_amount`, `payment_status`, `webhook_log`, `created_at`, `updated_at`) VALUES
(1, 'INV-20260607-YOMLS', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 04:56:10', '2026-06-07 04:56:10'),
(2, 'INV-20260607-GEHG6', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 04:56:37', '2026-06-07 04:56:37'),
(3, 'INV-20260607-R3KOG', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 05:41:08', '2026-06-07 05:41:08'),
(4, 'INV-20260607-C8AXE', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 05:44:27', '2026-06-07 05:44:27'),
(26, 'INV-20260607-56COM', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 06:34:02', '2026-06-07 06:34:02'),
(27, 'INV-20260607-CYQBX', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 06:34:06', '2026-06-07 06:34:06'),
(28, 'INV-20260607-7GBDK', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:03:28', '2026-06-07 07:03:28'),
(29, 'INV-20260607143330-K2OA9', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:33:30', '2026-06-07 07:33:30'),
(30, 'INV-20260607143446-ZNFRZ', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:34:46', '2026-06-07 07:34:46'),
(31, 'INV-20260607143500-OOQAO', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:35:00', '2026-06-07 07:35:00'),
(32, 'INV-20260607143618-ER0TA', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:36:18', '2026-06-07 07:36:18'),
(33, 'INV-20260607143622-ULZLX', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:36:22', '2026-06-07 07:36:22'),
(34, 'INV-20260607143644-HT2WJ', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:36:44', '2026-06-07 07:36:44'),
(35, 'INV-20260607143942-LSQTM', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:39:43', '2026-06-07 07:39:43'),
(36, 'INV-20260607143953-OLVLC', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:39:53', '2026-06-07 07:39:53'),
(37, 'INV-20260607144227-NXGYV', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:42:27', '2026-06-07 07:42:27'),
(38, 'INV-20260607144325-NHJ9L', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:43:25', '2026-06-07 07:43:25'),
(39, 'INV-20260607144452-M2QXL', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-07 07:44:52', '2026-06-07 07:44:52'),
(40, 'INV-20260608172347-VLXVW', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-08 10:23:47', '2026-06-08 10:23:47'),
(41, 'INV-20260608172625-LRJF6', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-08 10:26:25', '2026-06-08 10:26:25'),
(42, 'INV-20260608174646-DH77L', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-08 10:46:46', '2026-06-08 10:46:46'),
(43, 'INV-20260608180335-CFATS', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-08 11:03:35', '2026-06-08 11:03:35'),
(44, 'INV-20260608181237-XGAAI', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-06-08 11:12:37', '2026-06-08 11:12:37'),
(45, 'INV-20260608182247-3XARY', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260608182247-3XARY\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"368421\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-08T18:23:21Z\\\",\\\"original_request_id\\\":\\\"202606081822485827\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-08 11:22:47', '2026-06-08 11:23:22'),
(46, 'INV-20260608182648-BZ2HQ', 1, 35000.00, 25000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260608182648-BZ2HQ\\\",\\\"amount\\\":25000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"368422\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-08T18:27:06Z\\\",\\\"original_request_id\\\":\\\"202606081826496004\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-08 11:26:48', '2026-06-08 11:27:07'),
(47, 'INV-20260608183707-T7GIL', 1, 35000.00, 25000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260608183707-T7GIL\\\",\\\"amount\\\":25000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"368423\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-08T18:37:32Z\\\",\\\"original_request_id\\\":\\\"202606081837094380\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-08 11:37:07', '2026-06-08 11:37:32'),
(48, 'INV-20260616043104-1YLR7', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260616043104-1YLR7\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"368668\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-16T04:31:29Z\\\",\\\"original_request_id\\\":\\\"202606160431092943\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-15 21:31:05', '2026-06-15 22:02:02'),
(49, 'INV-20260616043852-OSFXA', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260616043852-OSFXA\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"368670\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-16T04:39:05Z\\\",\\\"original_request_id\\\":\\\"202606160438537711\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-15 21:38:52', '2026-06-15 21:39:07'),
(50, 'INV-20260616063941-LY6GP', 2, 35000.00, 34000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260616063941-LY6GP\\\",\\\"amount\\\":34000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"368678\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-16T06:40:08Z\\\",\\\"original_request_id\\\":\\\"202606160639437049\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-15 23:39:41', '2026-06-15 23:40:08'),
(51, 'INV-20260616072152-GQEUW', 2, 35000.00, 34000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260616072152-GQEUW\\\",\\\"amount\\\":34000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"368681\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-16T07:22:26Z\\\",\\\"original_request_id\\\":\\\"202606160721544163\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-16 00:21:52', '2026-06-16 00:22:27'),
(52, 'INV-20260629154319-B9OZX', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260629154319-B9OZX\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369193\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-29T15:43:32Z\\\",\\\"original_request_id\\\":\\\"202606291543205273\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-29 08:43:19', '2026-06-29 08:43:33'),
(53, 'INV-20260630114210-CFC6P', NULL, 35000.00, 35000.00, 'pending', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260630114210-CFC6P\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"FAILURE\\\",\\\"date\\\":\\\"2026-06-30T11:43:32Z\\\",\\\"original_request_id\\\":\\\"202606301142125045\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-30 04:42:10', '2026-06-30 04:43:32'),
(54, 'INV-20260630121654-6TKFS', NULL, 50000.00, 50000.00, 'pending', NULL, '2026-06-30 05:16:54', '2026-06-30 05:16:54'),
(55, 'INV-20260630121742-YUSBJ', NULL, 40000.00, 40000.00, 'pending', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260630121742-YUSBJ\\\",\\\"amount\\\":40000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"FAILURE\\\",\\\"date\\\":\\\"2026-06-30T12:18:05Z\\\",\\\"original_request_id\\\":\\\"202606301217442676\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-30 05:17:42', '2026-06-30 05:18:05'),
(56, 'INV-20260630121922-ARJ5Z', NULL, 40000.00, 40000.00, 'pending', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260630121922-ARJ5Z\\\",\\\"amount\\\":40000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"FAILURE\\\",\\\"date\\\":\\\"2026-06-30T12:19:34Z\\\",\\\"original_request_id\\\":\\\"202606301219226199\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-30 05:19:22', '2026-06-30 05:19:35'),
(57, 'INV-20260630122247-4SWWX', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260630122247-4SWWX\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369233\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-06-30T12:22:58Z\\\",\\\"original_request_id\\\":\\\"202606301222487209\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-06-30 05:22:47', '2026-06-30 05:22:58'),
(58, 'INV-20260705072635-E1UH1', NULL, 100.00, 100.00, 'pending', NULL, '2026-07-05 00:26:35', '2026-07-05 00:26:35'),
(59, 'INV-20260705072708-9PNJ3', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260705072708-9PNJ3\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369400\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-05T07:27:24Z\\\",\\\"original_request_id\\\":\\\"202607050727087201\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 00:27:08', '2026-07-05 00:27:26'),
(60, 'INV-20260705080105-I69YH', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260705080105-I69YH\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369401\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-05T08:01:19Z\\\",\\\"original_request_id\\\":\\\"202607050801062061\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 01:01:05', '2026-07-05 01:01:20'),
(61, 'INV-20260705080537-ZTMGT', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260705080537-ZTMGT\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369402\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-05T08:05:51Z\\\",\\\"original_request_id\\\":\\\"202607050805395175\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 01:05:37', '2026-07-05 01:05:52'),
(62, 'INV-20260705081133-ATVCD', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260705081133-ATVCD\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369403\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-05T08:11:42Z\\\",\\\"original_request_id\\\":\\\"202607050811334153\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 01:11:33', '2026-07-05 01:11:44'),
(63, 'INV-20260705082842-K2OPG', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260705082842-K2OPG\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369404\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-05T08:28:55Z\\\",\\\"original_request_id\\\":\\\"202607050828431427\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 01:28:42', '2026-07-05 01:28:57'),
(64, 'INV-20260705084353-PBTFC', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260705084353-PBTFC\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369405\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-05T08:44:07Z\\\",\\\"original_request_id\\\":\\\"202607050843547937\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 01:43:53', '2026-07-05 01:44:08'),
(65, 'INV-20260706020340-BCTFC', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260706020340-BCTFC\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369418\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-06T02:04:01Z\\\",\\\"original_request_id\\\":\\\"202607060203415994\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 19:03:40', '2026-07-05 19:04:01'),
(66, 'INV-20260706025248-DYTAV', NULL, 1000.00, 1000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260706025248-DYTAV\\\",\\\"amount\\\":1000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369424\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-06T02:52:58Z\\\",\\\"original_request_id\\\":\\\"202607060252505115\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-05 19:52:48', '2026-07-05 19:52:59'),
(67, 'INV-20260706093558-OTFZT', 3, 1000.00, 0.00, 'success', NULL, '2026-07-06 02:35:58', '2026-07-06 02:35:58'),
(68, 'INV-20260706093628-2DARK', 3, 35000.00, 25000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260706093628-2DARK\\\",\\\"amount\\\":25000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369492\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-06T09:36:45Z\\\",\\\"original_request_id\\\":\\\"202607060936299914\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-06 02:36:28', '2026-07-06 02:36:46'),
(69, 'INV-20260706103822-IU9BT', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260706103822-IU9BT\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369499\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-06T10:39:21Z\\\",\\\"original_request_id\\\":\\\"202607061038256101\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-06 03:38:22', '2026-07-06 03:39:21'),
(70, 'INV-20260706104403-NUDL8', 3, 35000.00, 25000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260706104403-NUDL8\\\",\\\"amount\\\":25000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369500\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-06T10:44:22Z\\\",\\\"original_request_id\\\":\\\"202607061044043057\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-06 03:44:03', '2026-07-06 03:44:22'),
(71, 'INV-20260706110817-BBSF3', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260706110817-BBSF3\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369502\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-06T11:08:34Z\\\",\\\"original_request_id\\\":\\\"202607061108188329\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-06 04:08:17', '2026-07-06 04:08:34'),
(72, 'INV-20260706112403-GXDYE', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260706112403-GXDYE\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369505\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-06T11:24:16Z\\\",\\\"original_request_id\\\":\\\"202607061124058020\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-06 04:24:03', '2026-07-06 04:24:17'),
(73, 'INV-20260707101933-EJZ59', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707101933-EJZ59\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369555\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T10:19:46Z\\\",\\\"original_request_id\\\":\\\"202607071019356459\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 03:19:33', '2026-07-07 03:19:46'),
(74, 'INV-20260707103835-M5UO4', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707103835-M5UO4\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369557\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T10:38:52Z\\\",\\\"original_request_id\\\":\\\"202607071038365842\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 03:38:35', '2026-07-07 03:38:52'),
(75, 'INV-20260707104522-RZVXB', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707104522-RZVXB\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369559\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T10:45:42Z\\\",\\\"original_request_id\\\":\\\"202607071045239306\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 03:45:22', '2026-07-07 03:45:42'),
(76, 'INV-20260707104940-8XP3M', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707104940-8XP3M\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369560\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T10:49:58Z\\\",\\\"original_request_id\\\":\\\"202607071049425492\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 03:49:40', '2026-07-07 03:49:58'),
(77, 'INV-20260707105821-L2GIA', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707105821-L2GIA\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369561\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T10:58:45Z\\\",\\\"original_request_id\\\":\\\"202607071058225692\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 03:58:21', '2026-07-07 03:58:45'),
(78, 'INV-20260707114022-OJCQM', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707114022-OJCQM\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369563\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T11:40:47Z\\\",\\\"original_request_id\\\":\\\"202607071140249965\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 04:40:22', '2026-07-07 04:40:47'),
(79, 'INV-20260707115329-UTKTJ', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707115329-UTKTJ\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369564\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T11:53:49Z\\\",\\\"original_request_id\\\":\\\"202607071153316566\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 04:53:30', '2026-07-07 04:53:50'),
(80, 'INV-20260707120434-PWNSW', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707120434-PWNSW\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369565\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T12:04:52Z\\\",\\\"original_request_id\\\":\\\"202607071204353720\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 05:04:34', '2026-07-07 05:04:52'),
(81, 'INV-20260707124228-ONCWC', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707124228-ONCWC\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369570\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T12:42:49Z\\\",\\\"original_request_id\\\":\\\"202607071242297773\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 05:42:28', '2026-07-07 05:42:48'),
(82, 'INV-20260707124908-WGRC5', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707124908-WGRC5\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369572\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T12:49:23Z\\\",\\\"original_request_id\\\":\\\"202607071249091821\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 05:49:08', '2026-07-07 05:49:22'),
(83, 'INV-20260707130343-WU4HD', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260707130343-WU4HD\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369573\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-07T13:03:59Z\\\",\\\"original_request_id\\\":\\\"202607071303449214\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-07 06:03:43', '2026-07-07 06:03:58'),
(84, 'INV-20260709090451-O5HFC', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709090451-O5HFC\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369675\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T09:05:00Z\\\",\\\"original_request_id\\\":\\\"202607090904515555\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 02:04:51', '2026-07-09 02:05:01'),
(85, 'INV-20260709091208-NHOIB', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709091208-NHOIB\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369676\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T09:12:20Z\\\",\\\"original_request_id\\\":\\\"202607090912083934\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 02:12:08', '2026-07-09 02:12:21'),
(86, 'INV-20260709091539-PAPZD', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709091539-PAPZD\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369677\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T09:15:53Z\\\",\\\"original_request_id\\\":\\\"202607090915402556\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 02:15:39', '2026-07-09 02:15:54'),
(87, 'INV-20260709092303-6YAKZ', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709092303-6YAKZ\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369679\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T09:23:22Z\\\",\\\"original_request_id\\\":\\\"202607090923047662\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 02:23:03', '2026-07-09 02:23:22'),
(88, 'INV-20260709093700-D0GUJ', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709093700-D0GUJ\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369683\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T09:37:18Z\\\",\\\"original_request_id\\\":\\\"202607090937016661\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 02:37:00', '2026-07-09 02:37:19');
INSERT INTO `transactions` (`id`, `invoice_number`, `voucher_id`, `gross_amount`, `net_amount`, `payment_status`, `webhook_log`, `created_at`, `updated_at`) VALUES
(89, 'INV-20260709093911-R5TZJ', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709093911-R5TZJ\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369684\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T09:39:28Z\\\",\\\"original_request_id\\\":\\\"202607090939125344\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 02:39:11', '2026-07-09 02:39:28'),
(90, 'INV-20260709094255-CQND0', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709094255-CQND0\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369685\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T09:43:19Z\\\",\\\"original_request_id\\\":\\\"202607090942555880\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 02:42:55', '2026-07-09 02:43:19'),
(91, 'INV-20260709131236-747EF', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709131236-747EF\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369693\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T13:12:47Z\\\",\\\"original_request_id\\\":\\\"202607091312387039\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 06:12:36', '2026-07-09 06:12:49'),
(92, 'INV-20260709133903-ZF9MX', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-07-09 06:39:04', '2026-07-09 06:39:04'),
(93, 'INV-20260709133927-366O5', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-07-09 06:39:27', '2026-07-09 06:39:27'),
(94, 'INV-20260709134004-7JUPC', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709134004-7JUPC\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369700\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T13:40:20Z\\\",\\\"original_request_id\\\":\\\"202607091340067318\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 06:40:04', '2026-07-09 06:40:21'),
(95, 'INV-20260709134439-XM9JI', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709134439-XM9JI\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369701\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T13:44:57Z\\\",\\\"original_request_id\\\":\\\"202607091344418589\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 06:44:39', '2026-07-09 06:44:58'),
(96, 'INV-20260709140157-APGLW', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709140157-APGLW\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369702\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T14:02:18Z\\\",\\\"original_request_id\\\":\\\"202607091401598548\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 07:01:57', '2026-07-09 07:02:19'),
(97, 'INV-20260709140559-RL6IH', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709140559-RL6IH\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369703\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T14:06:25Z\\\",\\\"original_request_id\\\":\\\"202607091406018439\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 07:05:59', '2026-07-09 07:06:26'),
(98, 'INV-20260709142356-HIFLR', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709142356-HIFLR\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369704\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T14:24:20Z\\\",\\\"original_request_id\\\":\\\"202607091423576850\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 07:23:56', '2026-07-09 07:24:21'),
(99, 'INV-20260709143023-L4LPH', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709143023-L4LPH\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369705\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T14:30:47Z\\\",\\\"original_request_id\\\":\\\"202607091430251690\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 07:30:23', '2026-07-09 07:30:48'),
(100, 'INV-20260709143851-IM753', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709143851-IM753\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369706\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T14:39:03Z\\\",\\\"original_request_id\\\":\\\"202607091438539389\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 07:38:52', '2026-07-09 07:39:03'),
(101, 'INV-20260709144122-ENZ9B', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709144122-ENZ9B\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369707\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T14:41:38Z\\\",\\\"original_request_id\\\":\\\"202607091441232755\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 07:41:22', '2026-07-09 07:41:39'),
(102, 'INV-20260709145123-YZ98H', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709145123-YZ98H\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369708\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T14:51:47Z\\\",\\\"original_request_id\\\":\\\"202607091451266653\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 07:51:23', '2026-07-09 07:51:48'),
(103, 'INV-20260709150140-0URSG', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709150140-0URSG\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369709\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T15:01:55Z\\\",\\\"original_request_id\\\":\\\"202607091501425775\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 08:01:40', '2026-07-09 08:01:55'),
(104, 'INV-20260709150443-AEEC6', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709150443-AEEC6\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369710\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T15:05:26Z\\\",\\\"original_request_id\\\":\\\"202607091504456755\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 08:04:43', '2026-07-09 08:05:26'),
(105, 'INV-20260709151000-YL0HU', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709151000-YL0HU\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369711\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T15:10:29Z\\\",\\\"original_request_id\\\":\\\"202607091510029212\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 08:10:00', '2026-07-09 08:10:29'),
(106, 'INV-20260709152016-TYL3J', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709152016-TYL3J\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369712\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T15:20:31Z\\\",\\\"original_request_id\\\":\\\"202607091520178693\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 08:20:16', '2026-07-09 08:20:31'),
(107, 'INV-20260709152627-1AR4L', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709152627-1AR4L\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369713\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T15:26:44Z\\\",\\\"original_request_id\\\":\\\"202607091526274693\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 08:26:27', '2026-07-09 08:26:44'),
(108, 'INV-20260709162543-EOSTQ', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709162543-EOSTQ\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369717\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T16:26:44Z\\\",\\\"original_request_id\\\":\\\"202607091625446000\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 09:25:43', '2026-07-09 09:26:44'),
(109, 'INV-20260709163136-D5YAW', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709163136-D5YAW\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369718\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T16:31:59Z\\\",\\\"original_request_id\\\":\\\"202607091631367363\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 09:31:36', '2026-07-09 09:31:59'),
(110, 'INV-20260709180841-WVIO9', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709180841-WVIO9\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369723\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T18:09:03Z\\\",\\\"original_request_id\\\":\\\"202607091808438797\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 11:08:41', '2026-07-09 11:09:03'),
(111, 'INV-20260709183534-ACYBU', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709183534-ACYBU\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369724\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T18:35:53Z\\\",\\\"original_request_id\\\":\\\"202607091835369776\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 11:35:34', '2026-07-09 11:35:54'),
(112, 'INV-20260709183827-PEPLY', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709183827-PEPLY\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369725\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T18:38:41Z\\\",\\\"original_request_id\\\":\\\"202607091838286987\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 11:38:27', '2026-07-09 11:38:41'),
(113, 'INV-20260709184504-NNRP4', NULL, 35000.00, 35000.00, 'pending', NULL, '2026-07-09 11:45:04', '2026-07-09 11:45:04'),
(114, 'INV-20260709184543-KKSE0', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260709184543-KKSE0\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369727\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-09T18:45:54Z\\\",\\\"original_request_id\\\":\\\"202607091845447271\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-09 11:45:44', '2026-07-09 11:45:55'),
(115, 'INV-20260710085421-WOC0L', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260710085421-WOC0L\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369760\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-10T08:54:33Z\\\",\\\"original_request_id\\\":\\\"202607100854222485\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-10 01:54:21', '2026-07-10 01:54:33'),
(116, 'INV-20260710160038-TLJA0', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260710160038-TLJA0\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369772\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-10T16:00:49Z\\\",\\\"original_request_id\\\":\\\"202607101600392469\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-10 09:00:38', '2026-07-10 09:00:50'),
(117, 'INV-20260710163316-JVKLG', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260710163316-JVKLG\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369774\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-10T16:33:39Z\\\",\\\"original_request_id\\\":\\\"202607101633178379\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-10 09:33:16', '2026-07-10 09:33:40'),
(118, 'INV-20260710164450-8MOTX', NULL, 35000.00, 35000.00, 'success', '\"{\\\"service\\\":{\\\"id\\\":\\\"QRIS\\\",\\\"name\\\":\\\"QRIS\\\"},\\\"acquirer\\\":{\\\"id\\\":\\\"DOKU\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"issuer\\\":{\\\"id\\\":\\\"93600899\\\",\\\"name\\\":\\\"DOKU\\\"},\\\"channel\\\":{\\\"id\\\":\\\"QRIS_DOKU\\\",\\\"name\\\":\\\"QRIS-DOKU\\\"},\\\"customer\\\":{\\\"doku_id\\\":\\\"1068111113\\\",\\\"name\\\":\\\"Rama041303\\\",\\\"email\\\":\\\"rama041303@gmail.com\\\",\\\"phone\\\":\\\"62811111113\\\"},\\\"order\\\":{\\\"invoice_number\\\":\\\"INV-20260710164450-8MOTX\\\",\\\"amount\\\":35000,\\\"terminal_id\\\":\\\"A01\\\",\\\"tips\\\":0},\\\"merchant\\\":{\\\"name\\\":\\\"tMZ7dMqnKz\\\",\\\"pan\\\":\\\"936008990000021639\\\"},\\\"emoney_payment\\\":{\\\"account_id\\\":\\\"1068111113\\\",\\\"approval_code\\\":\\\"369775\\\"},\\\"transaction\\\":{\\\"status\\\":\\\"SUCCESS\\\",\\\"date\\\":\\\"2026-07-10T16:45:15Z\\\",\\\"original_request_id\\\":\\\"202607101644503197\\\"},\\\"additional_info\\\":{\\\"postalCode\\\":\\\"12190\\\",\\\"feeType\\\":\\\"1\\\"}}\"', '2026-07-10 09:44:50', '2026-07-10 09:45:16'),
(119, 'INV-20260710165230-817AE', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 09:52:30', '2026-07-10 09:52:30'),
(120, 'INV-20260710165526-5UJDK', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 09:55:26', '2026-07-10 09:55:26'),
(121, 'INV-20260710165706-CWJMH', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 09:57:06', '2026-07-10 09:57:06'),
(122, 'INV-20260710170503-MVSBR', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 10:05:03', '2026-07-10 10:05:03'),
(123, 'INV-20260710170506-KZXBC', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 10:05:06', '2026-07-10 10:05:06'),
(124, 'INV-20260710171623-PTU5V', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 10:16:23', '2026-07-10 10:16:23'),
(125, 'INV-20260710172927-YIQ30', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 10:29:27', '2026-07-10 10:29:27'),
(126, 'INV-20260710173021-SOTG7', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 10:30:21', '2026-07-10 10:30:21'),
(127, 'INV-20260711061413-3MAK4', 4, 35000.00, 0.00, 'success', NULL, '2026-07-10 23:14:13', '2026-07-10 23:14:13'),
(128, 'INV-20260711082351-TUCAD', 4, 35000.00, 0.00, 'success', NULL, '2026-07-11 01:23:51', '2026-07-11 01:23:51'),
(129, 'INV-20260711131504-1IDIH', 4, 30000.00, 0.00, 'success', NULL, '2026-07-11 06:15:04', '2026-07-11 06:15:04'),
(130, 'INV-20260712113753-XU70D', 4, 30000.00, 0.00, 'success', NULL, '2026-07-12 04:37:53', '2026-07-12 04:37:53'),
(131, 'INV-20260712113756-OSQSR', 4, 30000.00, 0.00, 'success', NULL, '2026-07-12 04:37:56', '2026-07-12 04:37:56'),
(132, 'INV-20260713145901-MHZAB', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 07:59:01', '2026-07-13 07:59:01'),
(133, 'INV-20260713150007-5VRIF', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 08:00:07', '2026-07-13 08:00:07'),
(134, 'INV-20260713150500-4S64W', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 08:05:00', '2026-07-13 08:05:00'),
(135, 'INV-20260713152235-QW1RO', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 08:22:35', '2026-07-13 08:22:35'),
(136, 'INV-20260713152848-5TE64', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 08:28:48', '2026-07-13 08:28:48'),
(137, 'INV-20260713153425-XQ98K', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 08:34:25', '2026-07-13 08:34:25'),
(138, 'INV-20260713153911-99PSS', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 08:39:11', '2026-07-13 08:39:11'),
(139, 'INV-20260713171016-S4M9F', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 10:10:16', '2026-07-13 10:10:16'),
(140, 'INV-20260713171350-4AIZB', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 10:13:50', '2026-07-13 10:13:50'),
(141, 'INV-20260713171750-F8K3E', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 10:17:50', '2026-07-13 10:17:50'),
(142, 'INV-20260713172543-KAHWK', 4, 30000.00, 0.00, 'success', NULL, '2026-07-13 10:25:43', '2026-07-13 10:25:43'),
(143, 'INV-20260717074819-EYCBY', 4, 30000.00, 0.00, 'success', NULL, '2026-07-17 00:48:19', '2026-07-17 00:48:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `is_active`, `last_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Stitched', 'admin@photobooth.com', NULL, '$2y$12$8SfCiWcRY4X51iA.Y4bT3.Xzm/yc6Sh6OzYerT7JRc/JkfhNwpxSC', 'admin', 1, '2026-07-17 00:48:38', NULL, '2026-06-06 05:41:44', '2026-07-17 00:48:38'),
(3, 'fahri', 'fahri@gmail.com', NULL, '$2y$12$Ybc5.b5k05oHzOgBnexF6OMEnODkFovTlyNkSKm7ug5NkHicjFY42', 'admin', 1, NULL, NULL, '2026-06-06 06:26:26', '2026-06-06 06:26:26'),
(4, 'rifan', 'kntl@gmail.com', NULL, '$2y$12$KRXEysIHI9Ke2hcm64TUVORuIgBqo7b2p3DeDwAPQf8VH1LcrRz.m', 'admin', 1, '2026-07-11 04:38:19', NULL, '2026-07-11 03:27:47', '2026-07-11 04:38:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('FREE_SESSION','DISCOUNT') NOT NULL DEFAULT 'FREE_SESSION',
  `discount_value` int(11) NOT NULL DEFAULT 0,
  `max_uses` int(11) NOT NULL DEFAULT 1,
  `used_count` int(11) NOT NULL DEFAULT 0,
  `expired_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `type`, `discount_value`, `max_uses`, `used_count`, `expired_at`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'PROMO', 'DISCOUNT', 10000, 10, 2, '2026-06-09 00:00:00', 1, 1, '2026-06-08 11:26:39', '2026-06-08 11:37:32'),
(2, 'PROMOACOY', 'DISCOUNT', 1000, 10, 2, '2026-06-18 00:00:00', 1, 1, '2026-06-15 23:38:54', '2026-06-16 00:22:27'),
(3, 'promoacoy2', 'DISCOUNT', 10000, 10, 3, '2026-07-07 00:00:00', 1, 1, '2026-07-06 02:35:47', '2026-07-06 03:44:22'),
(4, 'softopening', 'FREE_SESSION', 0, 100, 25, '2026-07-14 00:00:00', 1, 1, '2026-07-10 09:52:08', '2026-07-17 00:48:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `voucher_usages`
--

CREATE TABLE `voucher_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voucher_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `discount_applied` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `voucher_usages`
--

INSERT INTO `voucher_usages` (`id`, `voucher_id`, `transaction_id`, `discount_applied`, `created_at`, `updated_at`) VALUES
(1, 2, 50, 1000.00, '2026-06-15 23:40:08', '2026-06-15 23:40:08'),
(2, 2, 51, 1000.00, '2026-06-16 00:22:27', '2026-06-16 00:22:27'),
(3, 3, 67, 1000.00, '2026-07-06 02:35:58', '2026-07-06 02:35:58'),
(4, 3, 68, 10000.00, '2026-07-06 02:36:46', '2026-07-06 02:36:46'),
(5, 3, 70, 10000.00, '2026-07-06 03:44:22', '2026-07-06 03:44:22'),
(6, 4, 119, 35000.00, '2026-07-10 09:52:30', '2026-07-10 09:52:30'),
(7, 4, 120, 35000.00, '2026-07-10 09:55:26', '2026-07-10 09:55:26'),
(8, 4, 121, 35000.00, '2026-07-10 09:57:06', '2026-07-10 09:57:06'),
(9, 4, 122, 35000.00, '2026-07-10 10:05:03', '2026-07-10 10:05:03'),
(10, 4, 123, 35000.00, '2026-07-10 10:05:06', '2026-07-10 10:05:06'),
(11, 4, 124, 35000.00, '2026-07-10 10:16:23', '2026-07-10 10:16:23'),
(12, 4, 125, 35000.00, '2026-07-10 10:29:27', '2026-07-10 10:29:27'),
(13, 4, 126, 35000.00, '2026-07-10 10:30:21', '2026-07-10 10:30:21'),
(14, 4, 127, 35000.00, '2026-07-10 23:14:13', '2026-07-10 23:14:13'),
(15, 4, 128, 35000.00, '2026-07-11 01:23:51', '2026-07-11 01:23:51'),
(16, 4, 129, 30000.00, '2026-07-11 06:15:04', '2026-07-11 06:15:04'),
(17, 4, 130, 30000.00, '2026-07-12 04:37:53', '2026-07-12 04:37:53'),
(18, 4, 131, 30000.00, '2026-07-12 04:37:56', '2026-07-12 04:37:56'),
(19, 4, 132, 30000.00, '2026-07-13 07:59:01', '2026-07-13 07:59:01'),
(20, 4, 133, 30000.00, '2026-07-13 08:00:07', '2026-07-13 08:00:07'),
(21, 4, 134, 30000.00, '2026-07-13 08:05:00', '2026-07-13 08:05:00'),
(22, 4, 135, 30000.00, '2026-07-13 08:22:35', '2026-07-13 08:22:35'),
(23, 4, 136, 30000.00, '2026-07-13 08:28:48', '2026-07-13 08:28:48'),
(24, 4, 137, 30000.00, '2026-07-13 08:34:25', '2026-07-13 08:34:25'),
(25, 4, 138, 30000.00, '2026-07-13 08:39:11', '2026-07-13 08:39:11'),
(26, 4, 139, 30000.00, '2026-07-13 10:10:16', '2026-07-13 10:10:16'),
(27, 4, 140, 30000.00, '2026-07-13 10:13:50', '2026-07-13 10:13:50'),
(28, 4, 141, 30000.00, '2026-07-13 10:17:50', '2026-07-13 10:17:50'),
(29, 4, 142, 30000.00, '2026-07-13 10:25:43', '2026-07-13 10:25:43'),
(30, 4, 143, 30000.00, '2026-07-17 00:48:19', '2026-07-17 00:48:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kiosk_devices`
--
ALTER TABLE `kiosk_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kiosk_devices_device_id_unique` (`device_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indeks untuk tabel `photobooth_sessions`
--
ALTER TABLE `photobooth_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photobooth_sessions_session_uuid_unique` (`session_uuid`),
  ADD KEY `photobooth_sessions_transaction_id_foreign` (`transaction_id`),
  ADD KEY `photobooth_sessions_kiosk_device_id_foreign` (`kiosk_device_id`);

--
-- Indeks untuk tabel `photo_assets`
--
ALTER TABLE `photo_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `session_photos`
--
ALTER TABLE `session_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_photos_photobooth_session_id_foreign` (`photobooth_session_id`);

--
-- Indeks untuk tabel `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_settings_key_unique` (`key`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_invoice_number_unique` (`invoice_number`),
  ADD KEY `transactions_voucher_id_foreign` (`voucher_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vouchers_code_unique` (`code`),
  ADD KEY `vouchers_created_by_foreign` (`created_by`);

--
-- Indeks untuk tabel `voucher_usages`
--
ALTER TABLE `voucher_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_usages_voucher_id_foreign` (`voucher_id`),
  ADD KEY `voucher_usages_transaction_id_foreign` (`transaction_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kiosk_devices`
--
ALTER TABLE `kiosk_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `photobooth_sessions`
--
ALTER TABLE `photobooth_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `photo_assets`
--
ALTER TABLE `photo_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `session_photos`
--
ALTER TABLE `session_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT untuk tabel `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `voucher_usages`
--
ALTER TABLE `voucher_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `photobooth_sessions`
--
ALTER TABLE `photobooth_sessions`
  ADD CONSTRAINT `photobooth_sessions_kiosk_device_id_foreign` FOREIGN KEY (`kiosk_device_id`) REFERENCES `kiosk_devices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `photobooth_sessions_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `session_photos`
--
ALTER TABLE `session_photos`
  ADD CONSTRAINT `session_photos_photobooth_session_id_foreign` FOREIGN KEY (`photobooth_session_id`) REFERENCES `photobooth_sessions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `voucher_usages`
--
ALTER TABLE `voucher_usages`
  ADD CONSTRAINT `voucher_usages_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voucher_usages_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
