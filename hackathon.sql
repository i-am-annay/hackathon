-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 05:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `nid` char(9) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` char(11) NOT NULL,
  `vehicle_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `nid`, `name`, `phone`, `vehicle_id`) VALUES
(1, '333111444', 'Aftab Alam', '01534221442', '54321'),
(2, '333111412', 'Rifat Islam', '01534221312', '55422'),
(3, '442331556', 'Anwar Alam', '01934512322', '16432'),
(5, '551233213', 'Iftekhar Shahriar', '01934512321', '16431');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` char(4) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `timestamp` date DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `driver_id`, `timestamp`, `status`) VALUES
('0001', 1, '2021-06-22', 'COMPLETED'),
('0002', 1, '2021-06-22', 'COMPLETED'),
('0003', 1, '2021-06-22', 'CANCELLED'),
('0004', 1, '2021-06-22', 'COMPLETED'),
('0005', 1, '2021-06-22', 'COMPLETED'),
('0006', 1, '2021-06-22', 'CANCELLED'),
('0007', 1, '2021-06-23', 'CANCELLED'),
('0008', 1, '2021-06-23', 'COMPLETED'),
('0009', 1, '2021-06-23', 'COMPLETED'),
('0010', 1, '2021-06-23', 'CANCELLED'),
('0011', 1, '2021-06-23', 'CANCELLED'),
('0012', 1, '2021-06-24', 'CANCELLED'),
('0013', 1, '2021-06-24', 'COMPLETED'),
('0014', 1, '2021-06-24', 'CANCELLED'),
('0015', 1, '2021-06-25', 'COMPLETED'),
('0016', 1, '2021-06-25', 'COMPLETED'),
('0017', 1, '2021-06-25', 'COMPLETED'),
('0018', 1, '2021-06-25', 'COMPLETED'),
('0019', 1, '2021-06-25', 'COMPLETED'),
('0020', 1, '2021-06-25', 'CANCELLED'),
('0021', 2, '2021-06-22', 'COMPLETED'),
('0022', 2, '2021-06-22', 'COMPLETED'),
('0023', 2, '2021-06-24', 'COMPLETED'),
('0024', 2, '2021-06-24', 'COMPLETED'),
('0025', 2, '2021-06-24', 'COMPLETED'),
('0026', 2, '2021-06-24', 'CANCELLED'),
('0027', 2, '2021-06-24', 'COMPLETED'),
('0028', 2, '2021-06-24', 'COMPLETED'),
('0029', 2, '2021-06-24', 'CANCELLED'),
('0030', 2, '2021-06-24', 'COMPLETED'),
('0031', 2, '2021-06-24', 'CANCELLED'),
('0032', 2, '2021-06-25', 'COMPLETED'),
('0033', 2, '2021-06-25', 'COMPLETED'),
('0034', 2, '2021-06-25', 'COMPLETED'),
('0035', 2, '2021-06-25', 'CANCELLED'),
('0036', 3, '2021-06-22', 'COMPLETED'),
('0037', 3, '2021-06-22', 'COMPLETED'),
('0038', 3, '2021-06-24', 'COMPLETED'),
('0039', 3, '2021-06-25', 'COMPLETED'),
('0040', 3, '2021-06-26', 'CANCELLED'),
('0041', 3, '2021-06-26', 'CANCELLED'),
('0042', 3, '2021-06-26', 'COMPLETED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
