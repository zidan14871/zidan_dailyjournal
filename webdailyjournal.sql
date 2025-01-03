-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2024 pada 18.28
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
-- Database: `webdailyjournal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Perpustakaann', 'Kejuaraan Dunia MotoGP atau kerap disebut sebagai MotoGP saja atau nama resminya FIM MotoGP World Championship adalah kelas utama dari seri balapan Grand Prix Sepeda Motor. Dulunya kelas ini dikenal dengan nama kelas 500cc atau biasa disebut GP500 yang pertama kali digelar sejak musim 1949.', 'zidan1.jpg', '2024-12-19 00:07:17', 'Zidan Alamsyah'),
(2, 'Ruang Kelas', 'Kejuaraan Dunia MotoGP atau kerap disebut sebagai MotoGP saja atau nama resminya FIM MotoGP World Championship adalah kelas utama dari seri balapan Grand Prix Sepeda Motor. Dulunya kelas ini dikenal dengan nama kelas 500cc atau biasa disebut GP500 yang pertama kali digelar sejak musim 1949.', 'zidan5.jpg', '2024-01-02 02:00:00', 'admin'),
(3, 'Kelompok Belajar', 'Kejuaraan Dunia MotoGP atau kerap disebut sebagai MotoGP saja atau nama resminya FIM MotoGP World Championship adalah kelas utama dari seri balapan Grand Prix Sepeda Motor. Dulunya kelas ini dikenal dengan nama kelas 500cc atau biasa disebut GP500 yang pertama kali digelar sejak musim 1949.', 'zidan3.jpeg', '2024-01-03 03:00:00', 'admin'),
(4, 'Auditorium', 'Kejuaraan Dunia MotoGP atau kerap disebut sebagai MotoGP saja atau nama resminya FIM MotoGP World Championship adalah kelas utama dari seri balapan Grand Prix Sepeda Motor. Dulunya kelas ini dikenal dengan nama kelas 500cc atau biasa disebut GP500 yang pertama kali digelar sejak musim 1949.', 'zidan4.jpg', '2024-01-04 04:00:00', 'admin'),
(5, 'Taman', 'Kejuaraan Dunia MotoGP atau kerap disebut sebagai MotoGP saja atau nama resminya FIM MotoGP World Championship adalah kelas utama dari seri balapan Grand Prix Sepeda Motor. Dulunya kelas ini dikenal dengan nama kelas 500cc atau biasa disebut GP500 yang pertama kali digelar sejak musim 1949.', 'zidan1.jpg', '2024-01-05 05:00:00', 'admin'),
(6, 'Ruang Lab', 'Kejuaraan Dunia MotoGP atau kerap disebut sebagai MotoGP saja atau nama resminya FIM MotoGP World Championship adalah kelas utama dari seri balapan Grand Prix Sepeda Motor. Dulunya kelas ini dikenal dengan nama kelas 500cc atau biasa disebut GP500 yang pertama kali digelar sejak musim 1949.', 'zidan5.jpg', '2024-01-06 06:00:00', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(2, 'Zidan Alamsyah', '063294132e07fa9886b7327d095d4226', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
