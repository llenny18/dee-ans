-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 05:25 AM
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
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `u_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `student_id` varchar(10) DEFAULT NULL,
  `email_verified` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`u_id`, `username`, `hashed_password`, `faculty_id`, `student_id`, `email_verified`) VALUES
(1, 'ralphs', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', 1, NULL, 'no'),
(2, 'jovend', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', 2, NULL, 'no'),
(3, 'johnc', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', 3, NULL, 'no'),
(4, 'erica21', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08420', 'no'),
(5, 'janice21', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07187', 'no'),
(6, 'carol21', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01642', 'no'),
(7, 'ewrwerwer', 'x7EMmYIVbth0dkkuSMIPG40izh8ds6Xs56mEenm/QhjNJAFu1J//1LfiOvS5zAPF', NULL, 'rwerwr', 'no'),
(111111, 'admin', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, NULL, 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111113;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_info` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_account_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`sr_code`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
