-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2025 pada 10.58
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
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `judul`, `gambar`, `tanggal`, `username`, `isi`) VALUES
(3, 'gambar2', '20250110223227.jpeg', '2025-01-10 22:32:27', 'admin', ''),
(6, 'gambar3', '20250110223315.jpg', '2025-01-10 22:33:15', 'admin', ''),
(7, 'gambar4', '20250110223342.jpg', '2025-01-10 22:33:42', 'admin', ''),
(10, 'gambar5', '20250110223457.jpg', '2025-01-10 22:34:57', 'admin', ''),
(11, 'gambar6', '20250110224713.jpg', '2025-01-10 22:47:13', 'admin', 'hhh');

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
(3, 'danny', '21232f297a57a5a743894a0e4a801fc3', 'zidan1'),
(6, 'agus', 'fdf169558242ee051cca1479770ebac3', 'zidan1'),
(7, 'sigit', '223a0fa8f15933d622b3c7a13f186027', 'zidan1'),
(10, 'rudi', '1755e8df56655122206c7c1d16b1c7e3', 'zidan1'),
(11, 'budi', '00dfc53ee86af02e742515cdcf075ed3', 'zidan1'),
(14, 'andi', 'ce0e5bf55e4f71749eade7a8b95c4e46', 'zidan1'),
(17, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '20250112151053.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
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
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
