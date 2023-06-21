-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 05:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpemesanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(50, '2023-06-17', 30000),
(51, '2023-06-18', 80000),
(52, '2023-06-19', 30000),
(53, '2023-06-19', 75000),
(54, '2023-06-19', 75000),
(55, '2023-06-19', 50000),
(56, '2023-06-19', 75000),
(57, '2023-06-19', 30000),
(58, '2023-06-20', 75000),
(59, '2023-06-20', 75000),
(60, '2023-06-20', 105000);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(7, 32, '9', 1),
(8, 32, '11', 1),
(9, 33, '16', 1),
(10, 33, '6', 1),
(11, 34, '13', 1),
(12, 34, '8', 1),
(13, 34, '9', 1),
(14, 34, '17', 1),
(15, 35, '9', 2),
(16, 35, '14', 1),
(17, 36, '8', 1),
(18, 37, '13', 1),
(19, 37, '16', 1),
(20, 38, '8', 1),
(21, 39, '9', 1),
(22, 39, '16', 1),
(23, 40, '10', 1),
(24, 40, '14', 1),
(25, 41, '17', 1),
(26, 41, '10', 1),
(27, 41, '9', 2),
(28, 42, '9', 1),
(29, 42, '14', 1),
(30, 42, '7', 1),
(31, 42, '17', 1),
(32, 43, '6', 1),
(33, 44, '23', 1),
(34, 44, '21', 1),
(35, 45, '21', 1),
(36, 45, '23', 1),
(37, 45, '29', 1),
(38, 46, '26', 1),
(39, 47, '26', 1),
(40, 48, '21', 1),
(41, 49, '26', 1),
(42, 50, '34', 1),
(43, 51, '21', 1),
(44, 51, '33', 1),
(45, 51, '39', 1),
(46, 52, '21', 1),
(47, 53, '23', 1),
(48, 54, '27', 1),
(49, 55, '26', 1),
(50, 56, '23', 1),
(51, 57, '21', 1),
(52, 58, '23', 1),
(53, 59, '23', 1),
(54, 60, '23', 1),
(55, 60, '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `stok`, `harga`, `gambar`) VALUES
(21, 'Burger', '', 30, 30000, 'burger.jpg'),
(23, 'Pizza', 'Makanan', 30, 75000, 'p.jpg'),
(26, 'Steak', 'Makanan', 50, 100000, '63aa85776cf9e.jpg'),
(27, 'Gurame Asam Manis', '', 35, 75000, 'download.jfif'),
(29, 'Strawberry Milkshake', '', 30, 20000, 'IMG_6974-scaled.jpg'),
(30, 'Jus Jeruk', '', 35, 15000, '8bdef097-5995-412a-8767-169d55fa2902.jpg'),
(31, 'Air Mineral', '', 70, 5000, 'sanford.jpg'),
(32, 'Jus Mangga', 'Minuman', 50, 17000, 'jusmangga.jpg'),
(33, 'Dim Sum', '', 30, 30000, '83f167921e5a8d3677aead0797407909.jpeg'),
(34, 'Sushi', '', 35, 30000, 'Maki-zushi.jpg'),
(35, 'Chicken Steak', '', 30, 40000, '602264bda959b (1).jpg'),
(36, 'Nasi ', '', 100, 5000, 'Nasi_dibentuk_bulat (1).jpg'),
(37, 'Lcyhee Tea', '', 35, 15000, 'resep-teh-leci-by-ryanartiana.jpg'),
(38, 'Matcha Milk Tea', '', 30, 20000, '1.jpg'),
(39, 'Blue Mojito', '', 70, 20000, 'blue-mojito-curacao-cocktail-featured-500x500 (1).jpg'),
(40, 'Classic Milk Tea', '', 35, 20000, '1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(7, 'bintang', 'bintang123', 'Bintang Ardhian Pratama', 'Laki-Laki', '2007-02-28', 'kepo', 'wwdwdw', 'user'),
(8, 'ard', '123', 'Bintang Ardhian Pratama', 'Laki-Laki', '2023-06-17', 'kepo', 'wwdwdw', 'user'),
(9, 'admin', '123', 'Bintang Ardhian Pratama', 'Laki-Laki', '2023-06-17', 'kepo', 'wwdwdw', 'admin'),
(10, 'bintang', '123', 'Bintang Ardhian Pratama', 'Laki-Laki', '2007-04-30', 'kepo', 'wwdwdw', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
