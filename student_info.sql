-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 01:52 PM
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
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `sr_code` varchar(10) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`sr_code`, `first_name`, `middle_name`, `last_name`) VALUES
('21-00396', 'Althea Faye', 'P.', 'Estolas'),
('21-00623', 'Ariane Maureen', 'A.', 'Delos Reyes'),
('21-00641', 'Kim Cinderella', 'D.', 'Pestijo'),
('21-00838', 'Faith Angela', 'N.', 'Levardo'),
('21-01642', 'Carol', 'S.', 'Calderon'),
('21-01836', 'Isaac Miguel', 'R.', 'Villareal'),
('21-02046', 'John Alfred', 'P.', 'Diaz'),
('21-02087', 'John Joshua Javier', 'B.', 'Solar'),
('21-02863', 'Ryan Joshua', 'F.', 'Eslera'),
('21-02867', 'Joyce Myca', '', 'Espiritu'),
('21-03396', 'Carlin', 'Josh', 'Mendoza'),
('21-03685', 'Russel John', 'C.', 'Tenorio'),
('21-05156', 'Patricia Anne', 'D.', 'Eleda'),
('21-05200', 'Donnalyn Arrianne', 'A.', 'Galvo'),
('21-05798', 'Mark Niño', 'D.', 'Dimalibot'),
('21-06108', 'Joshua Glenn', 'A.', 'Ebron'),
('21-07187', 'Janice', 'E.', 'Bendulo'),
('21-08103', 'Ruth Joy', 'R.', 'Lucido'),
('21-08420', 'Erica Mischelle', '', 'Aranda'),
('21-08567', 'Jade Francine', 'B.', 'Chavez');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`sr_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
