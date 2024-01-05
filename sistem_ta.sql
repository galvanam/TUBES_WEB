-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2024 pada 15.42
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_aktivitas` varchar(255) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `jumlah_volume_kegiatan` double NOT NULL,
  `sks_hasil` int(11) NOT NULL,
  `path_lampiran` varchar(255) NOT NULL,
  `no_penugasan` varchar(255) DEFAULT NULL,
  `jenis_lampiran` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `angka_kredit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aktivitas`
--

INSERT INTO `aktivitas` (`id`, `nama_aktivitas`, `tahun_ajaran`, `tanggal_mulai`, `tanggal_berakhir`, `jumlah_volume_kegiatan`, `sks_hasil`, `path_lampiran`, `no_penugasan`, `jenis_lampiran`, `user_id`, `angka_kredit`) VALUES
(15, 'Fungsio', 'Ganjil 2023/2024', '2024-01-01', '2024-02-21', 6, 12, 'pBUD7PPZSpPgmAtVLBy3xqb83XViwtuxEzG1Bahc.pdf', '020202023', 'SK', 11, 3),
(16, 'jarkom', 'Ganjil 2023/2024', '2024-01-09', '2024-01-27', 4, 6, 'bCDSml97MAVMdPNVlVabvaMweY1oQJJRRMAQilXB.pdf', '126754', 'SK', 16, 3),
(17, 'mobile', 'Ganjil 2023/2024', '2024-01-09', '2024-01-18', 11, 3, 'Fn4KeEG0nE9DkutC5ZyXWacpb2KYuOGhgAMQxmL6.docx', '01331420782', 'SK', 16, 9),
(18, 'data', 'Ganjil 2023/2024', '2024-02-01', '2024-01-30', 2, 3, '8MVLrKFmCuLLtlaHXUv1ckd4gWC5lepstvmceeIo.pdf', '6767843', 'Foto Kegiatan', 11, 3);

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
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `periode_awal` date NOT NULL,
  `periode_akhir` date NOT NULL,
  `no_sk` varchar(255) NOT NULL,
  `lampiran_jabatan` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jabatans`
--

INSERT INTO `jabatans` (`id`, `jabatan`, `periode_awal`, `periode_akhir`, `no_sk`, `lampiran_jabatan`, `user_id`) VALUES
(2, 'dosen', '2024-01-01', '2024-05-04', '34232', 'cLQNZH07n71D0K0xZpyid578BprbDtOc7wxElDOq.pdf', '11'),
(3, 'sekertaris', '2024-01-01', '2024-01-08', '9876', 'eY7zH2l2wrLEpiRjr9RqUeEbeK6a075YmX4aAS3O.docx', '16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_aktivitas`
--

CREATE TABLE `kelas_aktivitas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_matkul` varchar(255) NOT NULL,
  `kelas_nama` varchar(255) NOT NULL,
  `kelas_waktu` time NOT NULL,
  `kelas_sks` int(11) NOT NULL,
  `aktivitas_id` int(11) NOT NULL,
  `kelas_hari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas_aktivitas`
--

INSERT INTO `kelas_aktivitas` (`id`, `kelas_matkul`, `kelas_nama`, `kelas_waktu`, `kelas_sks`, `aktivitas_id`, `kelas_hari`) VALUES
(4, 'Pemrograman Web', 'E', '14:10:00', 2, 13, 2),
(5, 'Etprof', 'Kelas E', '14:35:00', 2, 14, 2);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_22_094929_aktivitas', 2),
(9, '2023_12_24_190418_create_kelas_aktivitas_table', 3),
(10, '2023_12_24_191812_create_user_data_table', 4),
(11, '2023_12_27_132503_create_seminar_table', 5),
(13, '2023_12_28_045928_create_tugas_akhirs_table', 6),
(14, '2023_12_28_122525_create_pendamping_table', 6),
(15, '2023_12_28_132014_create_pengujis_table', 7),
(16, '2023_12_28_135142_create_pembimbings_table', 8),
(17, '2023_12_28_144040_create_pengembangan_p_k_s_table', 9),
(18, '2023_12_28_150006_create_pengembangan_bahan_ajars_table', 10),
(19, '2023_12_28_151055_create_orasi_ilmiahs_table', 11),
(21, '2023_12_28_152707_create_jabatans_table', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orasi_ilmiahs`
--

CREATE TABLE `orasi_ilmiahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tema_orasi` varchar(255) NOT NULL,
  `waktu` date NOT NULL,
  `lampiran_orasi` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orasi_ilmiahs`
--

INSERT INTO `orasi_ilmiahs` (`id`, `tema_orasi`, `waktu`, `lampiran_orasi`, `user_id`) VALUES
(1, '123', '2023-12-05', 'zQk1n9ZPs09jjUJEtCqFEiIVErwh5yBnO6E2vhiv.pdf', '1'),
(2, 'Cloud Bagus', '2023-12-13', 'yavgTCsTkNIxEoJNDGtoFAGVfkMQvJWDaLOnFIZc.png', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembimbings`
--

CREATE TABLE `pembimbings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `no_sk` varchar(255) NOT NULL,
  `path_lampiran` varchar(255) NOT NULL,
  `path_foto_kegiatan` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembimbings`
--

INSERT INTO `pembimbings` (`id`, `nama_kegiatan`, `tahun_ajaran`, `waktu`, `no_sk`, `path_lampiran`, `path_foto_kegiatan`, `user_id`) VALUES
(3, 'SKRIPSI', 'Genap 2023/2024', '2024-01-17 00:00:00', '23456', 'public/kNQ9BsGcrcSNVrHuL96ecslMksnYjBuXEFtJwOLM.pdf', 'public/F53U6Mde5HaEYJSqt3HngCjJRozjpboWFYVB9Ocz.pdf', 11),
(4, 'zaki', 'Genap 2023/2024', '2024-01-17 00:00:00', '05443', 'public/IPZ3wXE9237hGfFoN03mRu1t5CFGeemHbzW3e4d1.pdf', 'public/3xiQ6eE1YtFAcuU1i43WrH6CG8Ikh47uM6zEyvn8.pdf', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendampings`
--

CREATE TABLE `pendampings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_nim` varchar(255) NOT NULL,
  `mahasiswa_nama` varchar(255) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `tanggal_dimulai` datetime NOT NULL,
  `tanggal_berakhir` datetime NOT NULL,
  `no_sk` varchar(255) NOT NULL,
  `path_lampiran` varchar(255) NOT NULL,
  `path_foto_kegiatan` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendampings`
--

INSERT INTO `pendampings` (`id`, `mahasiswa_nim`, `mahasiswa_nama`, `jenis_kegiatan`, `tanggal_dimulai`, `tanggal_berakhir`, `no_sk`, `path_lampiran`, `path_foto_kegiatan`, `user_id`) VALUES
(4, '456', 'dhika', 'Magang', '2024-01-09 00:00:00', '2024-05-15 00:00:00', '34323', 'ULy5qIrsGzDkyRtBfQWYAkuaDu4kqcsb9jh02ecn.pdf', 'dnnIBhLfOMK6V9iPVzw5ysgRE09PKxn8oUmLcShm.pdf', 11),
(5, '657', 'fara', 'KKN', '2024-01-10 00:00:00', '2024-02-03 00:00:00', '23445', 'public/USt88DlxL9ZS5S3um9McZvcGIgjjMlyomIRMY7ug.pdf', 'public/6H5fA9yaDVOb0o8I44aJxfhiKvvvgFJbfUzlmdmn.pdf', 11),
(6, '43343', 'dhani', 'Magang', '2024-01-01 00:00:00', '2024-01-18 00:00:00', '7653', 'public/XNZhsJP5U1kM6C3dF9U6Ry00TlFO2QMd5O1L9ILg.pdf', 'public/SdUa3lv4GQ3qSoWARQaxwGUcqRJviBuHSr8M3zv4.pdf', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembangan_bahan_ajars`
--

CREATE TABLE `pengembangan_bahan_ajars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_bahan_ajar` varchar(255) NOT NULL,
  `deskripsi_bahan_ajar` varchar(255) NOT NULL,
  `hasil_pengembangan` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengembangan_bahan_ajars`
--

INSERT INTO `pengembangan_bahan_ajars` (`id`, `jenis_bahan_ajar`, `deskripsi_bahan_ajar`, `hasil_pengembangan`, `user_id`) VALUES
(3, 'mobile', 'pembuatan apk', 'public/Q8VgiRj9d49qnuRAhQ011YchRlnyRDebN0lrwxhF.docx', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembangan_p_k_s`
--

CREATE TABLE `pengembangan_p_k_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matkul_pengembangan` varchar(255) NOT NULL,
  `deskripsi_pengembangan` varchar(255) NOT NULL,
  `hasil_pengembangan` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengujis`
--

CREATE TABLE `pengujis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_nim` varchar(255) NOT NULL,
  `mahasiswa_nama` varchar(255) NOT NULL,
  `jenis_ujian_akhir` varchar(255) NOT NULL,
  `posisi_penguji` varchar(255) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `no_sk` varchar(255) NOT NULL,
  `path_lampiran` varchar(255) NOT NULL,
  `path_foto_kegiatan` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengujis`
--

INSERT INTO `pengujis` (`id`, `mahasiswa_nim`, `mahasiswa_nama`, `jenis_ujian_akhir`, `posisi_penguji`, `tahun_ajaran`, `waktu`, `no_sk`, `path_lampiran`, `path_foto_kegiatan`, `user_id`) VALUES
(3, '563', 'alda', 'Thesis', 'Penguji Pembantu', 'Ganjil 2023/2024', '2024-01-18 00:00:00', '23', '90XchpaD4NCFGZTCe4CXs3CMlMUc3py3dMQWjFke.pdf', '6YFzrFTgVFsPPsXJIw0hHmZpOtV1ndhbD6hM1NEx.pdf', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminars`
--

CREATE TABLE `seminars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_nim` varchar(255) NOT NULL,
  `mahasiswa_nama` varchar(255) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `waktu_seminar` datetime NOT NULL,
  `no_berita_acara` varchar(255) NOT NULL,
  `path_lampiran` varchar(255) NOT NULL,
  `path_foto_kegiatan` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `seminars`
--

INSERT INTO `seminars` (`id`, `mahasiswa_nim`, `mahasiswa_nama`, `tahun_ajaran`, `waktu_seminar`, `no_berita_acara`, `path_lampiran`, `path_foto_kegiatan`, `user_id`) VALUES
(8, '133', 'abdul', 'Ganjil 2023/2024', '2024-01-17 00:00:00', 'studi', 'rYj8j47XD8HLEKkH8zNXhT3cwux3jBzTf9KJTJRl.docx', 'sFIAUNAuIzYv4ylN6OZc2Yvx81jZ5QyXWNu6WdCA.pdf', 11),
(9, '174', 'dhika', 'Ganjil 2023/2024', '2024-01-18 00:00:00', 'studi', 'AF79XnZV8jMxL0NfhUGaqrxQmg1MGAhX1TIhdR8R.docx', 'D6MH0JU5vjQoN2dbFl33oQeqAEDXcf4LqyqVQLaI.docx', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_akhirs`
--

CREATE TABLE `tugas_akhirs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_nim` varchar(255) NOT NULL,
  `mahasiswa_nama` varchar(255) NOT NULL,
  `jenis_bimbingan` varchar(255) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `tanggal_dimulai` datetime NOT NULL,
  `tanggal_berakhir` datetime NOT NULL,
  `jenis_pembimbing` varchar(255) NOT NULL,
  `no_sk` varchar(255) NOT NULL,
  `path_lampiran` varchar(255) NOT NULL,
  `path_foto_kegiatan` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tugas_akhirs`
--

INSERT INTO `tugas_akhirs` (`id`, `mahasiswa_nim`, `mahasiswa_nama`, `jenis_bimbingan`, `tahun_ajaran`, `tanggal_dimulai`, `tanggal_berakhir`, `jenis_pembimbing`, `no_sk`, `path_lampiran`, `path_foto_kegiatan`, `user_id`) VALUES
(3, '657', 'shif', 'Skripsi', 'Ganjil 2023/2024', '2024-01-23 00:00:00', '2024-02-10 00:00:00', 'Pendamping Utama', '5465', 'FCBtCFdNDOvJSIyKQRBW8ZLEI0Aqy8puRtPAy8IH.pdf', 'OVXFYl36EawsU7yztJlHWMYZWEy0mGOKmdxVV8ur.pdf', 11);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'reza', 'reza@gmail.com', NULL, '$2a$12$kYZfYZ.xZM2b9STxk1mKlO7c1lpX8NDIeeBO1RmJtUt9VeLdew6q2', NULL, NULL, NULL),
(15, 'randy', 'randy@gmail.com', NULL, '$2a$12$Jod.8AIumN.dF8edJpLm.eboFgqVUKf5vqtmuv8gPdLkCMUDsUhX2', NULL, NULL, NULL),
(16, 'abdul\r\n', 'abdl@gmail.com', NULL, '$2a$12$XwjxrArZBdFc6skYqnN76OLxhX4VvCi86ayAmnWQYiY2EMTiGracy', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_data`
--

CREATE TABLE `user_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_tempat_lahir` varchar(255) NOT NULL,
  `user_tanggal_lahir` date NOT NULL,
  `user_nidn` varchar(255) NOT NULL,
  `user_golongan` varchar(255) NOT NULL,
  `user_pangkat` varchar(255) NOT NULL,
  `user_pendidikan_terkahir` varchar(255) NOT NULL,
  `user_pendidikans1` varchar(255) NOT NULL,
  `user_pendidikans2` varchar(255) NOT NULL,
  `user_pendidikans3` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_data`
--

INSERT INTO `user_data` (`id`, `user_name`, `user_tempat_lahir`, `user_tanggal_lahir`, `user_nidn`, `user_golongan`, `user_pangkat`, `user_pendidikan_terkahir`, `user_pendidikans1`, `user_pendidikans2`, `user_pendidikans3`, `user_id`) VALUES
(11, 'reza', 'surabaya', '0000-00-00', '213120', 'golongan 3', 'dosen', 'S1', 'Informatika', 'gada', 'gada', 11),
(15, 'randy', 'malang', '0000-00-00', '020103', 'golongan A', 'Dosen', 'S1', 'Informatika', 'gada', 'gada', 15),
(16, 'abdul', 'samarinda', '0000-00-00', '200403', 'golongan A', 'Dosen', 'S1', 'S.kom', '', '', 16);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas_aktivitas`
--
ALTER TABLE `kelas_aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orasi_ilmiahs`
--
ALTER TABLE `orasi_ilmiahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembimbings`
--
ALTER TABLE `pembimbings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendampings`
--
ALTER TABLE `pendampings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembangan_bahan_ajars`
--
ALTER TABLE `pengembangan_bahan_ajars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembangan_p_k_s`
--
ALTER TABLE `pengembangan_p_k_s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengujis`
--
ALTER TABLE `pengujis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `seminars`
--
ALTER TABLE `seminars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tugas_akhirs`
--
ALTER TABLE `tugas_akhirs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas_aktivitas`
--
ALTER TABLE `kelas_aktivitas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `orasi_ilmiahs`
--
ALTER TABLE `orasi_ilmiahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pembimbings`
--
ALTER TABLE `pembimbings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pendampings`
--
ALTER TABLE `pendampings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengembangan_bahan_ajars`
--
ALTER TABLE `pengembangan_bahan_ajars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengembangan_p_k_s`
--
ALTER TABLE `pengembangan_p_k_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengujis`
--
ALTER TABLE `pengujis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `seminars`
--
ALTER TABLE `seminars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tugas_akhirs`
--
ALTER TABLE `tugas_akhirs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
