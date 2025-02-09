-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 05:59 AM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deenas`
--

-- --------------------------------------------------------

--
-- Table structure for table `folder_tns`
--

CREATE TABLE `folder_tns` (
  `id` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `description` varchar(455) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `apicode` varchar(255) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folder_tns`
--

INSERT INTO `folder_tns` (`id`, `folder_name`, `description`, `unique_code`, `apicode`, `faculty_id`, `created_at`) VALUES
(1, 'TRYMUNA', 'SADASD', 'DFG3545', 'dfgdfgdfgdf', 2, '2025-02-05 15:16:18'),
(2, 'dfgdfgdfg', 'rdfgdf', 'dfgdfgd', 'tuyhjkhjk', 1, '2025-02-05 15:16:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `folder_tns`
--
ALTER TABLE `folder_tns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code` (`unique_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `folder_tns`
--
ALTER TABLE `folder_tns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
