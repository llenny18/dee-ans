-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 01:06 PM
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
-- Structure for view `student_folder_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_folder_view`  AS SELECT `si`.`sr_code` AS `sr_code`, `si`.`first_name` AS `student_first_name`, `si`.`middle_name` AS `student_middle_name`, `si`.`last_name` AS `student_last_name`, `fi`.`gsuite` AS `faculty_gsuite`, `fi`.`first_name` AS `faculty_first_name`, `fi`.`middle_name` AS `faculty_middle_name`, `fi`.`last_name` AS `faculty_last_name`, `ft`.`folder_name` AS `folder_name`, `ft`.`description` AS `description`, `ft`.`unique_code` AS `unique_code`, `ft`.`apicode` AS `apicode`, `ft`.`faculty_id` AS `faculty_id`, `sf`.`created_at` AS `student_folder_created_at` FROM (((`student_folder` `sf` join `student_info` `si` on(`sf`.`student_id` = `si`.`sr_code`)) join `folder_tns` `ft` on(`sf`.`folder_id` = `ft`.`id`)) join `faculty_info` `fi` on(`ft`.`faculty_id` = `fi`.`id`)) ;

--
-- VIEW `student_folder_view`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
