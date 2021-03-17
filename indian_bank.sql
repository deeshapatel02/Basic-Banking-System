-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2021 at 01:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indian_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Richa', 'Juhi', 10000, '2021-03-16 17:59:02'),
(2, 'Shital', 'Shubh', 20000, '2021-03-16 17:59:29'),
(3, 'Ashish', 'Richa', 10000, '2021-03-16 18:19:53'),
(4, 'Deesha', 'Juhi', 5000, '2021-03-16 18:21:19'),
(5, 'Nirmal', 'Juhi', 1000, '2021-03-17 16:00:49'),
(6, 'Riya', 'Adi', 10000, '2021-03-17 16:08:35'),
(7, 'Deesha', 'Nirmal', 1000, '2021-03-17 16:11:15'),
(8, 'Deesha', 'Juhi', 10000, '2021-03-17 16:15:04'),
(9, 'Taapsee', 'Dhrumil Pandey', 10000, '2021-03-17 16:17:10'),
(10, 'Dhrumil Pandey', 'Mahesh', 10000, '2021-03-17 16:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Richa', 'patel@gmail.com', 40000),
(2, 'Nirmal', 'parekh@gmail.com', 50000),
(3, 'Sarita', 'garg@gmail.com', 40000),
(4, 'Ashish', 'adroja@gmail.com', 60000),
(5, 'Shubh', 'pandya@gmail.com', 50000),
(6, 'Jay', 'patel@gmail.com', 50000),
(7, 'Shital', 'patel@gmail.com', 50000),
(8, 'Juhi', 'ambani@gmail.com', 46000),
(9, 'Tilak', 'mehta@gmail.com', 40000),
(10, 'Taapsee', 'basu@gmail.com', 40000),
(11, 'Deesha', 'deesha02@gmail.com', 40000),
(12, 'Dhrumil Pandey', 'dhrumil@gmail.com', 40000),
(13, 'Mahesh', 'mahesh@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
