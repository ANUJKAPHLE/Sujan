-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 11:49 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `_ebus`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_invoice`
--

CREATE TABLE `all_invoice` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_number` varchar(20) NOT NULL,
  `reserving_time` datetime NOT NULL,
  `date_journey` date NOT NULL,
  `ticket_id` varchar(50) NOT NULL,
  `invoice_numb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_invoice`
--

INSERT INTO `all_invoice` (`id`, `bus_id`, `user_id`, `seat_number`, `reserving_time`, `date_journey`, `ticket_id`, `invoice_numb`) VALUES
(1, 1, 21, 'B3', '2021-04-14 17:57:14', '2021-04-03', '607710dd81d12', 1),
(2, 1, 21, 'B4', '2021-04-14 17:57:14', '2021-04-03', '607710dd81d12', 1),
(3, 7, 21, 'H2', '2021-04-14 18:08:40', '2021-04-01', '6077138c52712', 2),
(4, 7, 21, 'G4', '2021-04-14 18:08:40', '2021-04-01', '6077138c52712', 2),
(5, 11, 21, 'A1', '2021-04-14 18:12:26', '2021-04-13', '6077146fd4eb1', 3),
(6, 11, 21, 'H5', '2021-04-14 18:12:26', '2021-04-13', '6077146fd4eb1', 3),
(7, 4, 22, 'A3', '2021-04-14 18:16:24', '2021-04-08', '6077155ba1db9', 4),
(8, 4, 22, 'A4', '2021-04-14 18:16:24', '2021-04-08', '6077155ba1db9', 4),
(9, 8, 23, 'B1', '2021-04-19 16:56:32', '2021-04-14', '607d9a25423ef', 5),
(10, 8, 23, 'B4', '2021-04-19 16:56:32', '2021-04-14', '607d9a25423ef', 5),
(11, 1, 24, 'A3', '2021-04-20 05:37:47', '2021-04-08', '607e4c8f9a572', 6),
(12, 1, 24, 'A4', '2021-04-20 05:37:47', '2021-04-08', '607e4c8f9a572', 6),
(13, 1, 26, 'A1', '2021-04-20 05:58:12', '2021-04-02', '607e51595936e', 7),
(14, 1, 26, 'B1', '2021-04-20 05:58:12', '2021-04-02', '607e51595936e', 7),
(15, 1, 26, 'A1', '2021-04-20 05:59:13', '2021-04-02', '607e51a10f968', 8),
(16, 1, 26, 'A2', '2021-04-20 05:59:13', '2021-04-02', '607e51a10f968', 8),
(17, 1, 26, 'B1', '2021-04-20 05:59:13', '2021-04-02', '607e51a10f968', 8),
(18, 1, 26, 'B2', '2021-04-20 05:59:13', '2021-04-02', '607e51a10f968', 8),
(19, 1, 21, 'A3', '2021-04-22 10:57:52', '2021-04-09', '60813a9b7f1dc', 9),
(20, 1, 21, 'A4', '2021-04-22 10:57:52', '2021-04-09', '60813a9b7f1dc', 9),
(21, 1, 21, 'A3', '2021-04-22 10:58:07', '2021-04-09', '60813aa9b420c', 10),
(22, 1, 21, 'A4', '2021-04-22 10:58:07', '2021-04-09', '60813aa9b420c', 10),
(23, 1, 21, 'B3', '2021-04-22 10:58:35', '2021-04-09', '60813ac4c4a2b', 11),
(24, 1, 21, 'C4', '2021-04-22 10:58:35', '2021-04-09', '60813ac4c4a2b', 11),
(25, 1, 21, 'B4', '2021-04-22 10:58:35', '2021-04-09', '60813ac4c4a2b', 11),
(26, 1, 21, 'C3', '2021-04-22 10:58:35', '2021-04-09', '60813ac4c4a2b', 11),
(27, 7, 21, 'C3', '2021-04-22 11:01:22', '2021-04-01', '60813b659889e', 12),
(28, 7, 21, 'C4', '2021-04-22 11:01:22', '2021-04-01', '60813b659889e', 12);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_temp`
--

CREATE TABLE `invoice_temp` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_number` varchar(20) NOT NULL,
  `reserving_time` datetime NOT NULL,
  `date_journey` date NOT NULL,
  `ticket_id` varchar(50) NOT NULL,
  `invoice_numb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_n` int(11) NOT NULL,
  `b_date` date NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `password`, `phone_n`, `b_date`, `admin`) VALUES
(21, 'Anuj', 'kaphle', 'kaphleanuj@gmail.com', 'aeeb57ad0d0345790dddd409e58173b3', 2147483647, '2010-03-30', 1),
(22, 'aviral', 'kandel', 'kandelaviral@gmail.com', '8b08b720508ac23163cb109a558d2464', 2147483647, '2021-04-14', 0),
(23, 'raju', 'aryal', 'raju22@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2147483647, '2021-04-07', 0),
(24, 'ram', 'aryal ', 'ram@gmail.com', 'b0c7ae2316c7e8214fd659e4bc8a0dea', 2147483647, '2021-04-20', 0),
(25, 'hari', 'bahadur', 'haribahadur@gmail.com', '4990974d150d0de5e6e15a1454fe6b0f', 98654178, '2021-04-16', 0),
(26, 'arjun', 'nepal', 'arjun@gmail.com', '75ac2c91d93efba8651671f18ec013d0', 2147483647, '2021-04-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `_all_bus`
--

CREATE TABLE `_all_bus` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `d_time` time NOT NULL,
  `d_place` varchar(20) NOT NULL,
  `a_time` time NOT NULL,
  `a_place` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `Sat` tinyint(1) NOT NULL,
  `Sun` tinyint(1) NOT NULL,
  `Mon` tinyint(1) NOT NULL,
  `Tue` tinyint(1) NOT NULL,
  `Wed` tinyint(1) NOT NULL,
  `Thu` tinyint(1) NOT NULL,
  `Fri` tinyint(1) NOT NULL,
  `number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `_all_bus`
--

INSERT INTO `_all_bus` (`id`, `name`, `type`, `d_time`, `d_place`, `a_time`, `a_place`, `price`, `Sat`, `Sun`, `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `number`) VALUES
(1, 'sajha yatayat', 'NON-AC', '10:00:00', 'Butwal', '00:00:12', 'Chitwan', 500, 1, 1, 1, 1, 1, 1, 1, 8855),
(2, 'Saleena ', 'AC', '00:00:11', 'Butwal', '00:00:12', 'Dang', 700, 1, 1, 1, 1, 1, 1, 1, 8899),
(3, 'Rita ac', 'AC', '00:00:11', 'Butwal', '00:00:12', 'Dang', 700, 1, 1, 1, 1, 1, 1, 1, 8754),
(4, 'Gita ac ', 'AC', '10:00:00', 'From', '00:00:03', 'From', 800, 1, 1, 1, 1, 1, 1, 1, 8787),
(5, 'Badger Bus', 'NON-AC', '10:00:00', 'Butwal', '00:00:12', 'Palpa', 300, 1, 1, 1, 1, 1, 1, 1, 8832),
(6, 'EasyBus', 'AC', '10:00:00', 'Butwal', '00:00:12', 'Kathmandu', 800, 1, 1, 1, 1, 1, 1, 1, 8847),
(7, 'Golden Tours', 'AC', '00:00:09', 'Chitwan', '00:00:02', 'Butwal', 500, 1, 1, 1, 1, 1, 1, 1, 8855),
(8, 'Megabus', 'AC', '10:00:00', 'Chitwan', '00:00:04', 'Dang', 700, 1, 1, 1, 1, 1, 1, 1, 8821),
(9, 'sajha yatayat', 'AC', '10:00:00', 'Chitwan', '15:00:00', 'Surkhet', 700, 1, 1, 1, 1, 1, 1, 1, 8812),
(10, 'Rita ac', 'AC', '10:00:00', 'Dang', '00:00:02', 'Pokhara', 800, 1, 1, 1, 1, 1, 1, 1, 8852),
(11, 'Saleena ', 'NON-AC', '00:00:09', 'Dang', '18:28:00', 'Kathmandu', 800, 1, 1, 1, 1, 1, 1, 1, 8866),
(12, 'Gita ac ', 'AC', '10:00:00', 'Pokhara', '00:00:04', 'Palpa', 800, 1, 1, 1, 1, 1, 1, 1, 8754),
(13, 'deluxe123', 'NON-AC', '00:00:09', 'Pokhara', '00:00:03', 'Kathmandu', 800, 1, 1, 1, 1, 1, 1, 1, 8832),
(14, 'Saleena ', 'AC', '10:00:00', 'Palpa', '00:00:03', 'Surkhet', 800, 1, 1, 1, 1, 1, 1, 1, 8863),
(15, 'Red Coach', 'AC', '00:00:09', 'Ilam', '00:00:03', 'Udayapur', 500, 1, 1, 1, 1, 1, 1, 1, 8856),
(16, 'Gita ac ', 'AC', '10:00:00', 'Siraha', '00:00:04', 'Kapilvastu', 1000, 1, 1, 1, 1, 1, 1, 1, 8899),
(17, 'sajha yatayat', 'AC', '00:00:11', 'Udayapur', '00:00:07', 'Kathmandu', 1200, 1, 1, 1, 1, 1, 1, 1, 8852),
(18, 'deluxe123', 'AC', '00:00:09', 'Surkhet', '00:00:04', 'Kapilvastu', 1000, 1, 1, 1, 1, 1, 1, 1, 8835),
(19, 'Rita ac', 'AC', '00:00:11', 'Kapilvastu', '18:28:00', 'Kathmandu', 1000, 1, 1, 1, 1, 1, 1, 1, 8877);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_invoice`
--
ALTER TABLE `all_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_temp`
--
ALTER TABLE `invoice_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_all_bus`
--
ALTER TABLE `_all_bus`
  ADD PRIMARY KEY (`id`,`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_invoice`
--
ALTER TABLE `all_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `invoice_temp`
--
ALTER TABLE `invoice_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `_all_bus`
--
ALTER TABLE `_all_bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
