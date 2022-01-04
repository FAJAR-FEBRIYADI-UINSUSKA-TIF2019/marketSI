-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2022 pada 08.28
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_marketsibteamfive`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(2, 'BR002', 5, 'Sabun', 'Lifeboy', '2000', '4000', 'PCS', '40', '6 October 2020, 0:41', '2 January 2022, 17:12'),
(3, 'BR003', 1, 'Pulpen', 'Pilot', '1500', '3000', 'PCS', '40', '6 October 2020, 1:34', '2 January 2022, 17:12'),
(6, 'BR004', 7, 'Aqua Water', 'Aqua', '1500', '3000', 'PCS', '40', '2 January 2022, 17:12', NULL),
(7, 'BR005', 9, 'Pocky Coklat', 'Pocky', '2500', '5000', 'PCS', '45', '2 January 2022, 17:13', NULL),
(8, 'BR006', 10, 'Kemeja Cressida RMVS Size XL Cotton ', 'Cressida', '160000', '320000', 'PCS', '47', '2 January 2022, 17:15', NULL),
(9, 'BR007', 11, 'Paracetamol 500 mg', 'Kimia Farma', '2000', '4000', 'PCS', '48', '2 January 2022, 17:22', '2 January 2022, 17:40'),
(10, 'BR008', 12, 'Lampu LED Philips 7W oval', 'Philips', '70000', '140000', 'PCS', '48', '2 January 2022, 17:25', NULL),
(11, 'BR009', 13, 'Lemari 3 Pintu Kleppstad (140,51,181 cm)', 'Ikea', '1100000', '2200000', 'PCS', '49', '2 January 2022, 17:27', '2 January 2022, 17:40'),
(12, 'BR010', 15, 'Garnier Light Complete Foam 100ml', 'Garnier ', '12000', '24000', 'PCS', '48', '2 January 2022, 17:34', NULL),
(13, 'BR011', 16, 'Palu Tukang 8 oz Gagang Fiber', 'Camel', '19000', '38000', 'PCS', '49', '2 January 2022, 17:36', '2 January 2022, 17:44'),
(14, 'BR012', 17, 'Sepatu Flexknit Sneakers AQYEMO 3269', 'Emory', '180000', '360000', 'PCS', '49', '2 January 2022, 17:38', '2 January 2022, 18:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Writter', '7 May 2017, 10:23'),
(5, 'Cleaner', '7 May 2017, 10:28'),
(7, 'Drink', '6 October 2020, 0:20'),
(9, 'Food', '2 January 2022, 16:56'),
(10, 'Clothes', '2 January 2022, 16:56'),
(11, 'Medicine', '2 January 2022, 16:58'),
(12, 'Electronic', '2 January 2022, 16:58'),
(13, 'Household Appliances', '2 January 2022, 17:08'),
(15, 'Cosmetic', '2 January 2022, 17:09'),
(16, 'Carpentry', '2 January 2022, 17:10'),
(17, 'Fashion', '2 January 2022, 17:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`, `level`) VALUES
(1, 'owner', 'owner', 1, 'admin'),
(4, 'kasir', 'kasir', 3, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Fajar Febriyadi', 'Uji Saja', '081378661599', 'fajarversidua@gmail.com', 'administrator.png', '12314121'),
(3, 'Fajar 2', 'Jl Seterah', '081378661598', 'fajarversi3@gmail.com', 'waiter (1).png', '111222333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `diskon` float NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `diskon`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR001', 1, '4', 0, '12000', '6 October 2020, 0:45', '10-2020'),
(2, 'BR001', 1, '4', 0, '12000', '6 October 2020, 0:45', '10-2020'),
(3, 'BR001', 1, '4', 0, '12000', '6 October 2020, 0:45', '10-2020'),
(4, 'BR001', 1, '4', 0, '12000', '6 October 2020, 0:45', '10-2020'),
(5, 'BR001', 1, '2', 0, '6000', '6 October 2020, 0:49', '10-2020'),
(6, 'BR001', 1, '2', 0, '6000', '6 October 2020, 0:49', '10-2020'),
(7, 'BR001', 1, '2', 0, '6000', '6 October 2020, 1:15', '10-2020'),
(8, 'BR002', 1, '2', 0, '6000', '6 October 2020, 1:17', '10-2020'),
(9, 'BR001', 1, '2', 0, '6000', '6 October 2020, 1:20', '10-2020'),
(10, 'BR003', 1, '1', 0, '2000', '14 November 2021, 11:18', '11-2021'),
(11, 'BR002', 1, '2', 0, '6000', '23 November 2021, 15:54', '11-2021'),
(12, 'BR002', 1, '2', 0, '6000', '23 November 2021, 15:54', '11-2021'),
(13, 'BR001', 1, '3', 0, '9000', '23 November 2021, 15:55', '11-2021'),
(14, 'BR002', 1, '1', 0, '4000', '14 December 2021, 21:00', '12-2021'),
(15, 'BR002', 1, '1', 0, '4000', '15 December 2021, 1:18', '12-2021'),
(16, 'BR002', 1, '1', 0, '4000', '15 December 2021, 1:18', '12-2021'),
(17, 'BR002', 1, '1', 0, '4000', '15 December 2021, 1:18', '12-2021'),
(18, 'BR002', 1, '1', 0, '4000', '15 December 2021, 1:18', '12-2021'),
(19, 'BR003', 1, '3', 0, '9000', '15 December 2021, 9:10', '12-2021'),
(20, 'BR002', 3, '2', 0, '8000', '16 December 2021, 14:49', '12-2021'),
(21, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(22, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(23, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(24, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(25, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(26, 'BR002', 3, '1', 5, '4000', '30 December 2021, 20:23', '12-2021'),
(27, 'BR002', 3, '1', 5, '4000', '30 December 2021, 20:23', '12-2021'),
(28, 'BR002', 3, '1', 5, '4000', '30 December 2021, 20:23', '12-2021'),
(29, 'BR002', 3, '1', 2, '4000', '30 December 2021, 20:23', '12-2021'),
(30, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(31, 'BR002', 3, '1', 5, '4000', '30 December 2021, 20:23', '12-2021'),
(32, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(33, 'BR002', 3, '1', 5, '4000', '30 December 2021, 20:23', '12-2021'),
(34, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(35, 'BR002', 3, '1', 2, '4000', '30 December 2021, 20:23', '12-2021'),
(36, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(37, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(38, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(39, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(40, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(41, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(42, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(43, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(44, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(45, 'BR002', 3, '1', 0, '4000', '30 December 2021, 20:23', '12-2021'),
(46, 'BR003', 3, '1', 0, '3000', '30 December 2021, 21:26', '12-2021'),
(47, 'BR003', 1, '1', 0, '3000', '30 December 2021, 21:35', '12-2021'),
(48, 'BR003', 1, '1', 0, '3000', '30 December 2021, 21:35', '12-2021'),
(49, 'BR003', 1, '1', 0, '3000', '30 December 2021, 21:35', '12-2021'),
(50, 'BR003', 1, '1', 0, '3000', '30 December 2021, 21:36', '12-2021'),
(51, 'BR003', 1, '1', 0, '3000', '30 December 2021, 21:36', '12-2021'),
(52, 'BR003', 1, '1', 0, '3000', '30 December 2021, 21:36', '12-2021'),
(53, 'BR002', 3, '2', 3, '8000', '30 December 2021, 21:43', '12-2021'),
(54, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(55, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(56, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(57, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(58, 'BR002', 3, '2', 3, '8000', '30 December 2021, 21:43', '12-2021'),
(59, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(62, 'BR002', 3, '2', 1, '8000', '30 December 2021, 21:43', '12-2021'),
(63, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(64, 'BR002', 3, '2', 1, '8000', '30 December 2021, 21:43', '12-2021'),
(65, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(66, 'BR002', 3, '2', 1, '8000', '30 December 2021, 21:43', '12-2021'),
(67, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(68, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(69, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(70, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(71, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(72, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(73, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(74, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(75, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(76, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(77, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(78, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(79, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(80, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(81, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(82, 'BR002', 3, '2', 0, '8000', '30 December 2021, 21:43', '12-2021'),
(83, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(84, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(85, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(86, 'BR002', 3, '2', 2, '8000', '30 December 2021, 21:43', '12-2021'),
(87, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(88, 'BR002', 3, '2', 8, '8000', '30 December 2021, 21:43', '12-2021'),
(89, 'BR002', 3, '1', 0, '4000', '30 December 2021, 21:46', '12-2021'),
(90, 'BR002', 3, '5', 2, '20000', '30 December 2021, 21:43', '12-2021'),
(91, 'BR002', 1, '3', 0, '12000', '2 January 2022, 11:04', '01-2022'),
(92, 'BR002', 1, '2', 20, '6400', '2 January 2022, 11:33', '01-2022'),
(93, 'BR003', 1, '1', 50, '1500', '2 January 2022, 11:48', '01-2022'),
(94, 'BR002', 1, '1', 0, '4000', '2 January 2022, 13:25', '01-2022'),
(95, 'BR002', 1, '1', 50, '2000', '2 January 2022, 13:25', '01-2022'),
(96, 'BR002', 1, '1', 50, '2000', '2 January 2022, 13:25', '01-2022'),
(97, 'BR002', 1, '1', 50, '2000', '2 January 2022, 13:25', '01-2022'),
(98, 'BR002', 1, '1', 50, '2000', '2 January 2022, 13:25', '01-2022'),
(99, 'BR002', 1, '1', 50, '2000', '2 January 2022, 13:25', '01-2022'),
(100, 'BR002', 1, '1', 50, '2000', '2 January 2022, 13:25', '01-2022'),
(101, 'BR002', 1, '1', 50.5, '1980', '2 January 2022, 13:25', '01-2022'),
(102, 'BR002', 3, '1', 20, '3200', '2 January 2022, 14:34', '01-2022'),
(103, 'BR002', 3, '10', 30, '28000', '2 January 2022, 16:03', '01-2022'),
(104, 'BR003', 3, '10', 20, '24000', '2 January 2022, 16:04', '01-2022'),
(105, 'BR002', 3, '10', 10, '36000', '2 January 2022, 17:46', '01-2022'),
(106, 'BR003', 3, '10', 10, '27000', '2 January 2022, 17:46', '01-2022'),
(107, 'BR004', 3, '10', 10, '27000', '2 January 2022, 17:47', '01-2022'),
(108, 'BR005', 3, '5', 0, '25000', '2 January 2022, 17:48', '01-2022'),
(109, 'BR006', 3, '3', 20, '768000', '2 January 2022, 17:49', '01-2022'),
(110, 'BR007', 3, '2', 0, '8000', '2 January 2022, 17:49', '01-2022'),
(111, 'BR008', 3, '2', 10, '252000', '2 January 2022, 17:52', '01-2022'),
(112, 'BR009', 3, '1', 0, '2200000', '2 January 2022, 17:53', '01-2022'),
(113, 'BR010', 3, '2', 0, '48000', '2 January 2022, 17:53', '01-2022'),
(114, 'BR011', 3, '1', 0, '38000', '2 January 2022, 17:54', '01-2022'),
(115, 'BR012', 3, '1', 0, '360000', '2 January 2022, 18:13', '01-2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `diskon` float NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `diskon`, `total`, `tanggal_input`) VALUES
(59, 'BR002', 1, '0', 0, '0', '3 January 2022, 15:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Supermarket Maju Terus', 'Jl. Kemenangan', '081378661599', 'Fajar Febriyadi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
