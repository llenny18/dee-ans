-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 02:41 PM
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
-- Structure for view `faculty_admin_logs`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_admin_logs`  AS SELECT row_number() over ( order by `a`.`timestamp`) AS `id`, `f`.`id` AS `faculty_id`, `f`.`gsuite` AS `gsuite`, `f`.`first_name` AS `first_name`, `f`.`middle_name` AS `middle_name`, `f`.`last_name` AS `last_name`, `a`.`log_id` AS `log_id`, `a`.`admin_id` AS `admin_id`, `a`.`action` AS `action`, `a`.`timestamp` AS `timestamp`, `a`.`ip_address` AS `ip_address`, `a`.`user_agent` AS `user_agent` FROM (`faculty_info` `f` join `admin_logs` `a` on(`f`.`id` = `a`.`admin_id`)) ;

--
-- VIEW `faculty_admin_logs`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
