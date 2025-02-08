-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 01:55 PM
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
  `g_email` varchar(455) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`sr_code`, `g_email`, `first_name`, `middle_name`, `last_name`) VALUES
('21-00396', '21-00396@g.batstate-u.edu.ph', 'Althea Faye', 'P.', 'Estolas'),
('21-00623', '21-00623@g.batstate-u.edu.ph', 'Ariane Maureen', 'A.', 'Delos Reyes'),
('21-00641', '21-00641@g.batstate-u.edu.ph', 'Kim Cinderella', 'D.', 'Pestijo'),
('21-00838', '21-00838@g.batstate-u.edu.ph', 'Faith Angela', 'N.', 'Levardo'),
('21-01642', '21-01642@g.batstate-u.edu.ph', 'Carol', 'S.', 'Calderon'),
('21-01836', '21-01836@g.batstate-u.edu.ph', 'Isaac Miguel', 'R.', 'Villareal'),
('21-02046', '21-02046@g.batstate-u.edu.ph', 'John Alfred', 'P.', 'Diaz'),
('21-02087', '21-02087@g.batstate-u.edu.ph', 'John Joshua Javier', 'B.', 'Solar'),
('21-02863', '21-02863@g.batstate-u.edu.ph', 'Ryan Joshua', 'F.', 'Eslera'),
('21-02867', '21-02867@g.batstate-u.edu.ph', 'Joyce Myca', '', 'Espiritu'),
('21-03396', '21-03396@g.batstate-u.edu.ph', 'Carlin', 'Josh', 'Mendoza'),
('21-03685', '21-03685@g.batstate-u.edu.ph', 'Russel John', 'C.', 'Tenorio'),
('21-05156', '21-05156@g.batstate-u.edu.ph', 'Patricia Anne', 'D.', 'Eleda'),
('21-05200', '21-05200@g.batstate-u.edu.ph', 'Donnalyn Arrianne', 'A.', 'Galvo'),
('21-05798', '21-05798@g.batstate-u.edu.ph', 'Mark Niño', 'D.', 'Dimalibot'),
('21-06108', '21-06108@g.batstate-u.edu.ph', 'Joshua Glenn', 'A.', 'Ebron'),
('21-07187', '21-07187@g.batstate-u.edu.ph', 'Janice', 'E.', 'Bendulo'),
('21-08103', '21-08103@g.batstate-u.edu.ph', 'Ruth Joy', 'R.', 'Lucido'),
('21-08420', '21-08420@g.batstate-u.edu.ph', 'Erica Mischelle', '', 'Aranda'),
('21-08567', '21-08567@g.batstate-u.edu.ph', 'Jade Francine', 'B.', 'Chavez');

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
