-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2024 pada 13.49
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
-- Database: `db_wedding_jewepe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_catalogues`
--

CREATE TABLE `tb_catalogues` (
  `catalogue_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `package_name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `status_publish` enum('Y','N') NOT NULL,
  `user_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_catalogues`
--

INSERT INTO `tb_catalogues` (`catalogue_id`, `image`, `package_name`, `description`, `price`, `status_publish`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '20240614_18322.jpeg', 'Paket Gedung Mawar', '<p><span style=\"font-weight: bolder;\"><font color=\"#000000\">Rias dan Busana Pengantin Pria dan Wanita 2 Dekorasi :</font></span></p><ul><li><font color=\"#000000\"><span style=\"font-weight: bolder;\">300 Tamu (Maks)</span></font></li></ul><p></p><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Meja akad</font></span></li></ul><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Kursi akad 6 Pcs</font></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Backdrop akad nikah</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Meja Tamu</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Buku Tamu 3 Dokumentasi</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Foto</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Album kolase Eksklusif Uk. 20 X 30, 10 Sheet (20 Hal)</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Flashdisk Isi Foto Master dan Editing</font></span></span></li></ul>', 150000000, 'Y', 1, '2024-06-14 05:52:31', '2024-06-14 13:11:00'),
(3, '20240614_10640.jpg', 'Paket Gedung Anggrek', '<p><span style=\"font-weight: bolder;\"><font color=\"#000000\">Rias dan Busana Pengantin Pria dan Wanita 2 Dekorasi :</font></span></p><ul><li><font color=\"#000000\"><b>300 Tamu (Maks)</b></font></li></ul><p></p><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Meja akad</font></span></li></ul><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Kursi akad 6 Pcs</font></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Backdrop akad nikah</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Meja Tamu</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Buku Tamu 3 Dokumentasi</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Foto</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Album kolase Eksklusif Uk. 20 X 30, 10 Sheet (20 Hal)</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Flashdisk Isi Foto Master dan Editing</font></span></span></li></ul>', 75000000, 'Y', 1, '2024-06-14 06:13:38', '2024-06-14 13:10:59'),
(4, '20240614_7937.png', 'Paket Rumah', '<p><span style=\"font-weight: bolder;\"><font color=\"#000000\">Rias dan Busana Pengantin Pria dan Wanita 2 Dekorasi :</font></span></p><ul><li><font color=\"#000000\"><span style=\"font-weight: bolder;\">300 Tamu (Maks)</span></font></li></ul><p></p><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Meja akad</font></span></li></ul><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Kursi akad 6 Pcs</font></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Backdrop akad nikah</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Meja Tamu</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Buku Tamu 3 Dokumentasi</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Foto</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Album kolase Eksklusif Uk. 20 X 30, 10 Sheet (20 Hal)</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Flashdisk Isi Foto Master dan Editing</font></span></span></li></ul>', 12500000, 'Y', 1, '2024-06-14 06:49:07', '2024-06-14 13:11:09'),
(5, 'paket_melati.png', 'Paket Gedung Melati', '<p><span style=\"font-weight: bolder;\"><font color=\"#000000\">Rias dan Busana Pengantin Pria dan Wanita 2 Dekorasi :</font></span></p><ul><li><font color=\"#000000\"><span style=\"font-weight: bolder;\">300 Tamu (Maks)</span></font></li></ul><p></p><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Meja akad</font></span></li></ul><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Kursi akad 6 Pcs</font></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Backdrop akad nikah</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Meja Tamu</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Buku Tamu 3 Dokumentasi</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Foto</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Album kolase Eksklusif Uk. 20 X 30, 10 Sheet (20 Hal)</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Flashdisk Isi Foto Master dan Editing</font></span></span></li></ul><p></p>', 50000000, 'Y', 1, '2024-06-14 06:54:53', '2024-07-04 17:09:40'),
(7, '20240614_19119.jpg', 'Paket Outdoor ', '<p><span style=\"font-weight: bolder;\"><font color=\"#000000\">Rias dan Busana Pengantin Pria dan Wanita 2 Dekorasi :</font></span></p><ul><li><font color=\"#000000\"><span style=\"font-weight: bolder;\">300 Tamu (Maks)</span></font></li></ul><p></p><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Meja akad</font></span></li></ul><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Kursi akad 6 Pcs</font></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Backdrop akad nikah</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Meja Tamu</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Buku Tamu 3 Dokumentasi</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Foto</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Album kolase Eksklusif Uk. 20 X 30, 10 Sheet (20 Hal)</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Flashdisk Isi Foto Master dan Editing</font></span></span></li></ul>', 35000000, 'Y', 1, '2024-06-14 12:43:18', '2024-06-14 13:11:06'),
(8, '20240614_20566.jpeg', 'Paket Gedung Rose', '<p><span style=\"font-weight: bolder;\"><font color=\"#000000\">Rias dan Busana Pengantin Pria dan Wanita 2 Dekorasi :</font></span></p><ul><li><font color=\"#000000\"><span style=\"font-weight: bolder;\">300 Tamu (Maks)</span></font></li></ul><p></p><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Meja akad</font></span></li></ul><ul><li><span style=\"font-weight: bolder;\"><font color=\"#000000\">Kursi akad 6 Pcs</font></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Backdrop akad nikah</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Meja Tamu</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Buku Tamu 3 Dokumentasi</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">Foto</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Album kolase Eksklusif Uk. 20 X 30, 10 Sheet (20 Hal)</font></span></span></li></ul><ul><li><span style=\"font-size: 0.875rem;\"><span style=\"font-weight: bolder;\"><font color=\"#000000\">1 Flashdisk Isi Foto Master dan Editing</font></span></span></li></ul>', 20000000, 'Y', 1, '2024-06-14 12:54:54', '2024-06-14 13:11:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` int(11) NOT NULL,
  `catalogue_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `wedding_date` date NOT NULL,
  `status` enum('requested','approved','reject') NOT NULL,
  `user_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `catalogue_id`, `name`, `email`, `phone_number`, `wedding_date`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 5, 'Rofyan', 'Rofyan@gmail.com', '081777666555', '2024-08-31', 'approved', 1, '2024-06-14 10:53:33', '2024-08-02 09:48:50'),
(7, 8, 'Rofyan', 'Rofyan@gmail.com', '0823324324933', '2024-06-30', 'approved', 1, '2024-06-14 21:33:23', '2024-07-06 10:19:04'),
(10, 7, 'Rofyan LM', 'rofyanmafaza11@gmail.com', '0851710733344', '2024-07-13', 'approved', 1, '2024-07-31 12:38:17', '2024-08-02 13:28:35'),
(11, 7, 'Rofyan Luthfi Mafaza', 'rofyanmafaza11@gmail.com', '085171074444', '2024-07-27', 'approved', 1, '2024-07-31 12:56:22', '2024-08-02 09:37:27'),
(12, 7, 'fasfasfas', 'rofyanmafaza20@gmail.com', '085171044444', '2024-07-20', 'approved', 1, '2024-07-31 13:27:23', '2024-08-02 09:46:30'),
(13, 5, 'Rofyan Luthfi Mafaza', 'rofyanmafaza11@gmail.com', '085171078599', '2024-07-13', 'approved', 1, '2024-07-31 13:52:53', '2024-08-02 09:47:07'),
(14, 5, 'asdadsadas', 'rofyanmafaza11@gmail.com', '085171074444', '2024-07-06', 'approved', 1, '2024-07-31 13:53:04', '2024-08-02 09:44:48'),
(15, 7, 'zzzz', 'rofyanmafaza33@gmail.com', '0812312312321', '2024-08-21', 'approved', 1, '2024-08-02 09:42:31', '2024-08-02 09:42:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_settings`
--

CREATE TABLE `tb_settings` (
  `id` int(2) NOT NULL,
  `website_name` varchar(256) NOT NULL,
  `phone_number1` varchar(15) NOT NULL,
  `phone_number2` varchar(15) NOT NULL,
  `email1` varchar(80) NOT NULL,
  `email2` varchar(80) NOT NULL,
  `address` text NOT NULL,
  `maps` text NOT NULL,
  `logo` varchar(80) NOT NULL,
  `facebook_url` varchar(256) NOT NULL,
  `instagram_url` varchar(256) NOT NULL,
  `youtube_url` varchar(256) NOT NULL,
  `header_business_hour` varchar(160) NOT NULL,
  `time_business_hour` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_settings`
--

INSERT INTO `tb_settings` (`id`, `website_name`, `phone_number1`, `phone_number2`, `email1`, `email2`, `address`, `maps`, `logo`, `facebook_url`, `instagram_url`, `youtube_url`, `header_business_hour`, `time_business_hour`, `created_at`, `updated_at`) VALUES
(1, 'JeWePe Wedding Organizer2', '081123456789', '089777666555', 'jewepe_wedding2@gmail.com', 'wo_jewepe2@gmail.com', 'Depok', '<iframe class=\"w-100 rounded\"\r\n                        src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3334.2846055413384!2d106.86278748965414!3d-6.373984789229366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ed45cc22896d%3A0x6b2410d3413e7e19!2sKampus%20Gunadarma%20F4!5e0!3m2!1sen!2sid!4v1718384753424!5m2!1sen!2sid\"\r\n                        frameborder=\"0\" style=\"height: 100%; min-height: 300px; border:0;\" allowfullscreen=\"\" aria-hidden=\"false\"\r\n                        tabindex=\"0\"></iframe>', '20240614_26976.png', 'test2', 'test2', 'test2', '', '', '2024-06-14 03:25:12', '2024-06-29 12:26:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(5) NOT NULL,
  `name` varchar(80) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$QtiIL6AxQL0xyCUJgFswNOzfsa.NohEJ74UUCg/PtBFl0NZW7/LVq', '2024-06-14 02:42:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_catalogues`
--
ALTER TABLE `tb_catalogues`
  ADD PRIMARY KEY (`catalogue_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`);

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `catalogue_id` (`catalogue_id`);

--
-- Indeks untuk tabel `tb_settings`
--
ALTER TABLE `tb_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_catalogues`
--
ALTER TABLE `tb_catalogues`
  MODIFY `catalogue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_settings`
--
ALTER TABLE `tb_settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_catalogues`
--
ALTER TABLE `tb_catalogues`
  ADD CONSTRAINT `user_id_catalogue_idx` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`user_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `catalogue_id_order_idx` FOREIGN KEY (`catalogue_id`) REFERENCES `tb_catalogues` (`catalogue_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
