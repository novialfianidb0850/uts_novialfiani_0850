-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Apr 2020 pada 22.35
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobukunovidb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` varchar(15) NOT NULL,
  `id_kategori` varchar(15) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `noisbn` varchar(30) NOT NULL,
  `penulis` varchar(25) NOT NULL,
  `penerbit` varchar(25) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `stok` int(15) NOT NULL,
  `harga_pokok` int(15) NOT NULL,
  `harga_jual` int(15) NOT NULL,
  `ppn` int(15) NOT NULL,
  `diskon` int(15) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `id_kategori`, `judul`, `noisbn`, `penulis`, `penerbit`, `tahun_terbit`, `stok`, `harga_pokok`, `harga_jual`, `ppn`, `diskon`, `foto`) VALUES
('B101', 'K101', 'Sebuah seni untuk bersikap bodo amat', '978-602-4526-98-6', 'Mark Manson', 'Grasindo', 2018, 25, 35000, 42000, 4000, 4, 'senibodoamat1.jpeg'),
('B102', 'K101', 'Blink  Kemampuan Berpikir Tanpa Berpikir', '978-602-4553-92-0', 'Malcolm Gladwell', 'Gramedia', 2014, 12, 30000, 34000, 7000, 5, 'blink1.jpeg'),
('B103', 'K101', 'Bicara itu ada seninya', '987-979-2923-36-0', 'Oh Su Hyang', 'BIP', 2018, 15, 25000, 30000, 4000, 5, 'bicaraituadaseninya2.jpeg'),
('B104', 'K103', 'Statitiska Dasar', '987-979-7867-36-0', 'Sukestiyano', 'Andi', 2015, 15, 35000, 38000, 5000, 10, 'statitiskadasar.jpeg'),
('B105', 'K102', 'Basis Data', '987-979-7867-66-3', 'Fathansyah', 'Informatika', 2017, 22, 55000, 60000, 8000, 9, 'basisdata.jpg'),
('B106', 'K102', 'Unity', '978-602-2326-98-6', 'Rickman Roedavan', 'Informatika', 2018, 25, 76000, 78000, 2000, 7, 'uniti.jpg'),
('B107', 'K102', 'Framework Codeigniter', '987-979-7862-54-0', 'Betha Sidik', 'Informatika', 2014, 17, 69000, 77500, 8000, 8, 'frameworkci.jpg'),
('B108', 'K104', 'Conan', '978-602-4526-82-2', 'Aoyama Gosho', 'Komputindo', 2014, 25, 55000, 55000, 4000, 9, 'conan.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_distributor`
--

CREATE TABLE `tbl_distributor` (
  `id_distributor` varchar(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_distributor`
--

INSERT INTO `tbl_distributor` (`id_distributor`, `nama`, `alamat`, `telepon`, `foto`) VALUES
('D101', 'Gramedia', 'Jakarta', '021276458898', 'gramedia.png'),
('D102', 'Informatika', 'Yogyakarta', '021987463762', 'informatika.jpeg'),
('D103', 'Andi', 'Semarang', '021987584755', 'andi.jpeg'),
('D104', 'Grasindo', 'Bandung', '021346678564', 'grasindo.jpeg'),
('D105', 'Elangga', 'Jakarta', '021189758746', 'erlangga.jpeg'),
('D106', 'Tiga Serangkai', 'Bandung', '021878956476', 'tigaserangkai.jpeg'),
('D107', 'Komputindo', 'Semarang', '021346758765', 'komputindo.png'),
('D108', 'BIP', 'Yogyakarta', '021989756467', 'bip.jpeg'),
('D109', 'Mitra Karya', 'Bandung', '021887958674', 'Logo_Penerbit_Mitra_Karya.png'),
('D110', 'Bukutama', 'Jakarta', '021746583765', 'bukutama.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kasir`
--

CREATE TABLE `tbl_kasir` (
  `id_kasir` varchar(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kasir`
--

INSERT INTO `tbl_kasir` (`id_kasir`, `nama`, `alamat`, `telepon`, `username`, `password`) VALUES
('A101', 'Novi Alfiani', 'Tahunan', '081358717272', 'novi', 'alfiani'),
('A102', 'Fenti Sagita', 'Mlonggo', '082347567387', 'fenti', 'sagita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` varchar(15) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
('K101', 'Novel'),
('K102', 'Teknologi'),
('K103', 'Matematika'),
('K104', 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pasok`
--

CREATE TABLE `tbl_pasok` (
  `id_pasok` varchar(15) NOT NULL,
  `id_distributor` varchar(15) NOT NULL,
  `id_buku` varchar(15) NOT NULL,
  `jumlah` int(15) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pasok`
--

INSERT INTO `tbl_pasok` (`id_pasok`, `id_distributor`, `id_buku`, `jumlah`, `tanggal`) VALUES
('P101', 'D101', 'B104', 20, '2020-04-15'),
('P102', 'D110', 'B104', 25, '2020-04-17'),
('P103', 'D103', 'B104', 30, '2020-04-07'),
('P104', 'D109', 'B107', 50, '2020-04-23'),
('P105', 'D105', 'B107', 30, '2020-04-24'),
('P106', 'D109', 'B107', 20, '2020-04-25'),
('P107', 'D101', 'B105', 30, '2020-04-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` varchar(15) NOT NULL,
  `id_buku` varchar(15) NOT NULL,
  `id_kasir` varchar(15) NOT NULL,
  `jumlah` int(15) NOT NULL,
  `total` int(15) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id_penjualan`, `id_buku`, `id_kasir`, `jumlah`, `total`, `tanggal`) VALUES
('J101', 'B104', 'A101', 10, 55000, '2020-04-23'),
('J102', 'B107', 'A101', 30, 550000, '2020-04-24'),
('J103', 'B101', 'A101', 15, 435000, '2020-04-25'),
('J104', 'B101', 'A101', 30, 775000, '2020-04-26'),
('J105', 'B105', 'A101', 1, 55000, '2020-04-27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `tbl_distributor`
--
ALTER TABLE `tbl_distributor`
  ADD PRIMARY KEY (`id_distributor`);

--
-- Indeks untuk tabel `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_pasok`
--
ALTER TABLE `tbl_pasok`
  ADD PRIMARY KEY (`id_pasok`),
  ADD KEY `id_distributor` (`id_distributor`),
  ADD KEY `tbl_pasok_ibfk_2` (`id_buku`);

--
-- Indeks untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_kasir` (`id_kasir`),
  ADD KEY `tbl_penjualan_ibfk_1` (`id_buku`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD CONSTRAINT `tbl_buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_pasok`
--
ALTER TABLE `tbl_pasok`
  ADD CONSTRAINT `tbl_pasok_ibfk_1` FOREIGN KEY (`id_distributor`) REFERENCES `tbl_distributor` (`id_distributor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pasok_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `tbl_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD CONSTRAINT `tbl_penjualan_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `tbl_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_penjualan_ibfk_2` FOREIGN KEY (`id_kasir`) REFERENCES `tbl_kasir` (`id_kasir`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
