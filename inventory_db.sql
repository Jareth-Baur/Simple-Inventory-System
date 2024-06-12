-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 09:25 PM
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
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `quantity`, `price`) VALUES
(1, 'Item A', 10, 1.99),
(2, 'Item B', 20, 3.98),
(3, 'Item C', 30, 5.97),
(4, 'Item D', 40, 7.96),
(5, 'Item E', 50, 9.95),
(6, 'Item F', 60, 11.94),
(7, 'Item G', 70, 13.93),
(8, 'Item H', 80, 15.92),
(9, 'Item I', 90, 17.91),
(10, 'Item J', 100, 19.90),
(11, 'Item K', 110, 21.89),
(12, 'Item L', 120, 23.88),
(13, 'Item M', 130, 25.87),
(14, 'Item N', 140, 27.86),
(15, 'Item O', 150, 29.85),
(16, 'Item P', 160, 31.84),
(17, 'Item Q', 170, 33.83),
(18, 'Item R', 180, 35.82),
(19, 'Item S', 190, 37.81),
(20, 'Item T', 200, 39.80),
(21, 'Item U', 210, 41.79),
(22, 'Item V', 220, 43.78),
(23, 'Item W', 230, 45.77),
(24, 'Item X', 240, 47.76),
(25, 'Item Y', 250, 49.75),
(26, 'Item Z', 260, 51.74),
(27, 'Item AA', 270, 53.73),
(28, 'Item AB', 280, 55.72),
(29, 'Item AC', 290, 57.71),
(30, 'Item AD', 300, 59.70),
(31, 'Item AE', 310, 61.69),
(32, 'Item AF', 320, 63.68),
(33, 'Item AG', 330, 65.67),
(34, 'Item AH', 340, 67.66),
(35, 'Item AI', 350, 69.65),
(36, 'Item AJ', 360, 71.64),
(37, 'Item AK', 370, 73.63),
(38, 'Item AL', 380, 75.62),
(39, 'Item AM', 390, 77.61),
(40, 'Item AN', 400, 79.60),
(41, 'Item AO', 410, 81.59),
(42, 'Item AP', 420, 83.58),
(43, 'Item AQ', 430, 85.57),
(44, 'Item AR', 440, 87.56),
(45, 'Item AS', 450, 89.55),
(46, 'Item AT', 460, 91.54),
(47, 'Item AU', 470, 93.53),
(48, 'Item AV', 480, 95.52),
(49, 'Item AW', 490, 97.51),
(50, 'Item AX', 500, 99.50),
(51, 'shet', 2, 1.30),
(52, 'Name new', 33, 2.78);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
