-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2024 pada 12.30
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk2024`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id` int(10) NOT NULL,
  `nama_album` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tdl_dibuat` datetime NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id`, `nama_album`, `deskripsi`, `tdl_dibuat`, `user_id`) VALUES
(3, 'Kenangan PKL', 'kenangan di retgo di akan pernah lupa', '2024-04-23 08:58:25', 2),
(5, 'Kenangan PKL part 2', 'yahahaha', '2024-04-23 11:05:02', 2),
(6, 'kartun', 'untuk anak ank', '2024-04-23 13:34:15', 3),
(7, 'Olah raga', 'Ingin menjadi pemain sepak bola ', '2024-04-23 14:21:21', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `judul_foto` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tgl_unggahan` datetime NOT NULL,
  `lokasi_foto` varchar(255) NOT NULL,
  `album_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id`, `judul_foto`, `deskripsi`, `tgl_unggahan`, `lokasi_foto`, `album_id`, `user_id`) VALUES
(3, 'Daily Scrum ', 'Momen dimana zaky dimarahin temen temen karena suka tidur pada saat waktu kerja', '2024-04-23 11:07:11', 'IMG_20231201_080731.jpg', 5, 2),
(4, 'gundam', 'robot', '2024-04-23 13:35:13', 'robo.jpg', 6, 3),
(5, 'ssb arema', 'kenangan cidera', '2024-04-23 14:22:32', 'Studi Kasus (1).png', 7, 4),
(6, 'Daily Scrum ', 'Momen dimana zaky dimarahin temen temen karena suka tidur pada saat waktu kerja', '2024-04-23 15:15:39', 'Studi Kasus (2).png', 3, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `id` int(11) NOT NULL,
  `foto_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `isi_komentar` varchar(255) NOT NULL,
  `tgl_komentar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`id`, `foto_id`, `user_id`, `isi_komentar`, `tgl_komentar`) VALUES
(3, 3, 2, 'wkwkwk\r\n', '2024-04-23 12:08:38'),
(4, 4, 3, 'bagus', '2024-04-23 13:36:33'),
(5, 5, 4, 'semangat', '2024-04-23 14:23:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `id` int(11) NOT NULL,
  `foto_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `tgl_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`id`, `foto_id`, `user_id`, `tgl_like`) VALUES
(4, 3, 2, '2024-04-23 11:34:55'),
(5, 4, 3, '2024-04-23 13:36:45'),
(6, 4, 3, '2024-04-23 14:10:43'),
(7, 5, 4, '2024-04-23 14:24:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `nama_lengkap`, `alamat`) VALUES
(1, 'admin', '$2y$10$2buxDjrorjH8Nit2DXjTUuvUl3Wqg2qFrtMub2Rip7xVdYGoTQGQy', 'miko35292@gmail.com', 'Ryfaathir Rahman', 'Bakalan Krajan'),
(2, 'renataagus271005@gmail.com', '$2y$10$8.fQ31HFjGKhefA3v0Xh6engv9iN3THO7iFbTkIiWNyCwgrFZ2Ic2', 'memei@gmail.com', 'meiren', 'plosok'),
(3, 'kusmadi', '$2y$10$mpXzWZJdten9ITexkw9k4eN7WAgiYgHO329JaVHQtSv/Tb8SFVLMe', 'kusmadi@admin.com', 'kusmadi', 'malang'),
(4, 'farhan', '$2y$10$Q62Q48BYXJk7Qni0IbTZc.SvUyfVkGXbMd6de8QjoayXHd7HIDSji', 'farhan@gmail.com', 'Farhannnnn', 'malang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKalbum633422` (`user_id`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judul_foto` (`judul_foto`),
  ADD KEY `FKfoto129237` (`album_id`),
  ADD KEY `FKfoto381331` (`user_id`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkomentarfo819838` (`user_id`),
  ADD KEY `FKkomentarfo294487` (`foto_id`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlikefoto775695` (`user_id`),
  ADD KEY `FKlikefoto918430` (`foto_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `nama_lengkap` (`nama_lengkap`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FKalbum633422` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `FKfoto129237` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FKfoto381331` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `FKkomentarfo294487` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FKkomentarfo819838` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `FKlikefoto775695` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FKlikefoto918430` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
