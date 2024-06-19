-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 19, 2024 at 04:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(3, 'Jhenny', 'Lee', 'lee@gmail.com', '09207601999', 'longos', '69a9dc1da83c4c3e58a5ecb7c9de78fa', 'admin', '139474');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `pid`, `quantity`) VALUES
(11, 2, 12, 0),
(12, 0, 46, 0),
(15, 43, 47, 0),
(19, 42, 54, 0),
(20, 42, 53, 0),
(21, 0, 47, 0),
(22, 0, 99, 0),
(23, 46, 81, 0),
(24, 0, 82, 1),
(25, 0, 88, 1),
(27, 47, 218, 1),
(28, 47, 213, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL,
  `delivery` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`, `delivery`) VALUES
(90, 47, 220, 1, 'Varthur,Bangalore', '07305428063', 'no', '2024-05-19', '0000-00-00', 'Standard Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `piece` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `piece`, `description`, `available`, `category`, `type`, `item`, `pCode`, `picture`) VALUES
(200, 'Sony 42 TV', 4500, 100, 'Sony 42 TV', 100, '', '', 'TV', 'aa', 'tv1.jpg'),
(201, 'redmi note 9', 9000, 100, 'redmi note 9', 100, '', '', 'MOBILE', 'ee', 'phones1.jpg'),
(202, 'dell laptop', 24000, 100, 'dell laptop', 100, '', '', 'LAPTOP', 'ee', 'laptop1.jpg'),
(203, 'bolt headphone', 6000, 100, 'bolt headphone', 100, '', '', 'HEADPHONE', 'ee', 'headphone1.jpg'),
(204, 'alexa450', 9000, 100, 'alexa450', 100, '', '', 'ALEXA', 'aa', 'alexa1.jpg'),
(205, 'Sony 52 TV', 29000, 100, 'Sony 52 ', 100, '', '', 'TV', 'ee', 'tv2.jpg'),
(206, 'vivo y 16', 19000, 100, 'vivo y 16 ', 100, '', '', 'MOBILE', 'ee', 'phone2.jpg'),
(207, 'hp laptop', 29000, 100, 'hp laptop', 100, '', '', 'LAPTOP', 'ee', 'laptop2.jpg'),
(208, 'bolt headphone', 17000, 100, 'bolt headphone', 100, '', '', 'HEADPHONE', 'ee', 'headphone2.jpg'),
(209, 'alexa', 10000, 100, 'alexa', 100, '', '', 'ALEXA', 'ee', 'alexa2.jpg'),
(210, 'lg 44 TV', 280000, 100, 'lg 44 TV', 100, '', '', 'TV', 'ee', 'tv3.jpg'),
(212, 'hp laptop28', 1900000, 100, 'hp laptop28', 100, '', '', 'LAPTOP', 'ee', 'laptop3.jpg'),
(213, 'bolt headphone29', 1900000, 100, 'bolt headphone29', 100, '', '', 'HEADPHONE', 'ee', 'headphone3.jpg'),
(214, 'alexa460', 800000, 100, 'alexa460', 100, '', '', 'ALEXA', 'ee', 'alexa3.jpg'),
(215, 'tcl 55 TV', 2800000, 100, 'tcl 55 TV', 100, '', '', 'TV', 'ee', 'tv5.jpg'),
(216, 'samsung f 14', 160000, 100, 'samsung f 14', 100, '', '', 'MOBILE', 'ee', 'phone4.jpg'),
(217, 'dell laptop16', 260000, 100, 'dell laptop16', 100, '', '', 'LAPTOP', 'ee', 'laptop4.jpg'),
(218, 'bolt earbuts', 70000, 100, 'bolt earbuts', 100, '', '', 'HEADPHONE', 'ee', 'headphone4.jpg'),
(219, 'alexaf14', 90000, 100, 'alexaf14', 100, '', '', 'ALEXA', 'ee', 'alexa4.jpg'),
(220, 'Iphone 16', 19000, 100, 'Iphone 16', 100, '', '', 'MOBILE', 'ee', 'phone3.jpg'),
(221, 'Blue Star AC', 50000, 100, 'Blue Star AC', 100, '', '', 'AC', 'ee', 'ac1.jpg'),
(222, 'LG AC', 50000, 100, 'LG AC', 100, '', '', 'AC', 'ee', 'ac2.jpg'),
(223, 'Hitachi AC', 50000, 100, 'Hitachi AC', 100, '', '', 'AC', 'ee', 'ac3.jpg'),
(224, 'Carrier AC', 50000, 100, 'Carrier AC', 100, '', '', 'AC', 'ee', 'ac4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  `activation` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `confirmCode`, `activation`) VALUES
(47, 'Siva', 'Balan', 'higsivabalan@gmail.com', '07305428063', 'Varthur,Bangalore', 'Siva123', '0', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
