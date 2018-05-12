-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2018 at 09:56 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `hargaproduk` int(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `namaproduk`, `hargaproduk`, `warna`, `ukuran`, `jumlah`) VALUES
(1, 'produk 1', 10000, '64', '47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `subcategoryid` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `gambar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `subcategoryid`, `product`, `harga`, `deskripsi`, `gambar`) VALUES
(45, '36', 'hijab syafira', 60000, 'bahan katun 100%', 'https://image.ibb.co/iEQaon/shophijab1.jpg'),
(46, '36', 'hijab azzahra', 75000, 'bahan silk 100%', 'https://image.ibb.co/jHvaon/shophijab2.jpg'),
(48, '37', 'gamis syafira', 250000, 'bahan katun 100%', 'https://image.ibb.co/h7CAM7/shopgamis1.jpg'),
(49, '37', 'gamis azzahra', 150000, 'bahan spandex 100%', 'https://image.ibb.co/hiHzES/shopgamis2.jpg'),
(50, '38', 'hijab turki', 90000, 'bahan silk 100%', 'https://image.ibb.co/gePeES/shophijab3.jpg'),
(51, '38', 'pasmina paris ', 50000, 'bahan katun 100%', 'https://image.ibb.co/fH14g7/shophijab4.jpg'),
(52, '39', 'kaftan syafira', 300000, 'bahan spandex 100%', 'https://image.ibb.co/dg5aon/shopgamis3.jpg'),
(53, '39', 'kaftan syamila', 340000, 'bahan katun 80% spandex 20%', 'https://image.ibb.co/bupPg7/shopgamis4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(100) NOT NULL,
  `productid` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `productid`, `color`) VALUES
(47, '45', 'pink'),
(48, '45', 'peach'),
(49, '46', 'white'),
(50, '46', 'blue'),
(51, '48', 'pink'),
(52, '48', 'green'),
(53, '49', 'blue'),
(54, '49', 'green'),
(55, '50', 'silver'),
(56, '50', 'peach'),
(57, '51', 'red'),
(58, '51', 'pink'),
(59, '53', 'pink'),
(60, '53', 'peach'),
(61, '52', 'red'),
(62, '52', 'black'),
(64, '55', 'BLACK EDITED'),
(65, '55', 'WHITE');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(100) NOT NULL,
  `colorid` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `colorid`, `size`, `stock`) VALUES
(15, '47', 'S', 12),
(16, '47', 'M', 5),
(17, '48', 'S', 10),
(18, '48', 'M', 7),
(19, '49', 'S', 3),
(20, '49', 'M', 8),
(21, '50', 'S', 9),
(22, '50', 'M', 7),
(23, '51', 'M', 9),
(24, '51', 'L', 15),
(25, '52', 'M', 8),
(26, '52', 'L', 11),
(27, '53', 'M', 9),
(28, '53', 'L', 13),
(29, '54', 'M', 5),
(30, '54', 'L', 9),
(31, '55', 'S', 6),
(32, '55', 'M', 8),
(33, '56', 'S', 12),
(34, '56', 'M', 5),
(35, '57', 'S', 6),
(36, '57', 'M', 9),
(37, '58', 'S', 13),
(38, '58', 'M', 15),
(39, '59', 'M', 15),
(40, '59', 'L', 13),
(41, '60', 'M', 20),
(42, '60', 'L', 15),
(43, '61', 'M', 9),
(44, '61', 'L', 20),
(45, '62', 'M', 16),
(46, '62', 'L', 19),
(47, '64', 'S', 5),
(49, '64', 'M', 0);

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `id` int(100) NOT NULL,
  `season` varchar(100) NOT NULL,
  `pict` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`id`, `season`, `pict`) VALUES
(8, 'spring', 'https://image.ibb.co/f6UeES/shop1.jpg'),
(9, 'summer', 'https://preview.ibb.co/dm3jg7/shop2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(100) NOT NULL,
  `seasonid` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `seasonid`, `subcategory`) VALUES
(37, '8', 'bottoms'),
(38, '9', 'tops'),
(39, '9', 'bottoms'),
(40, '12', 'top'),
(41, '12', 'bottom'),
(42, '13', 'fdd');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `email`) VALUES
(1, 'mesa', 'mesa@gmail.com'),
(2, 'mei', 'mei@gmail.com'),
(3, 'm', 'm@gmail.com'),
(4, 'vincent', 'asd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `username`, `password`) VALUES
(2, 'mesa', '2257380772989d081fafd26fced1849880fc8bbc0dd0268ad3a2fc79a2963172'),
(4, 'm', 'm'),
(5, 'vincentkeren', '7f60856b45eb15564fcf230aae41642d6fb0141659c455f96478dc38658b09d3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
