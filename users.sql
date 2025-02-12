-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 09, 2025 at 10:25 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u739510386_jruconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `stud_id` varchar(11) DEFAULT '',
  `username` varchar(50) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(455) NOT NULL,
  `last_name` varchar(455) NOT NULL,
  `role` enum('student','admin') NOT NULL DEFAULT 'student',
  `course` varchar(455) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `profile_url` varchar(255) NOT NULL,
  `enrollment_url` varchar(455) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `stud_id`, `username`, `password_hash`, `email`, `first_name`, `middle_name`, `last_name`, `role`, `course`, `verified`, `profile_url`, `enrollment_url`, `last_login`, `date_created`) VALUES
(1, '0', 'djangonameaa', 'trynewpass', 'trygmail@my.jru.edu', 'JRU Admin 2', '', '', 'admin', 'BSME', 1, '/profile_images/1_rapper-post-malone-5hnpkcp60re560eu.jpg', 'enrollment_forms\\pdf-sample_0.pdf', '2024-08-27 10:00:00', '2024-08-27 09:00:00'),
(2, '0', 'janedoe', 'passwordhash2', 'janedoe@my.jru.edu', 'Jane Doe', '', '', 'student', 'BSBA', 1, '', 'enrollment_forms\\pdf-sample_0.pdf', NULL, '2024-08-27 09:05:00'),
(3, '0', 'admin1', 'passwordhash3', 'admin1@example.com', 'JRU Admin', '', '', 'admin', 'BSEE', 1, '', 'enrollment_forms\\pdf-sample_0.pdf', '2024-08-27 11:00:00', '2024-08-27 09:10:00'),
(4, '0', 'student1', 'passwordhash4', 'student1@example.com', 'Student One', '', '', 'student', 'BSA', 1, '', 'enrollment_forms\\pdf-sample_0.pdf', NULL, '2024-08-27 09:15:00'),
(5, '0', 'student2', 'passwordhash5', 'student2@example.com', 'Student Two', '', '', 'student', 'BSBA', 1, '', 'enrollment_forms\\pdf-sample_0.pdf', '2024-08-27 12:00:00', '2024-08-27 09:20:00'),
(13, '12', 'admin1', 'fdgdfg', 'trygmail@my.jru.edu', 'rwerwerew', '', '', 'student', 'BSEE', 0, 'profile_images\\halloween-scarecrow-clipart.png', 'enrollment_forms\\pdf-sample_0.pdf', NULL, '2024-10-16 15:15:20'),
(18, '19-405055', 'jaldwinn', 'JRUCONNECT1', 'johnaldwin.cruz@my.jru.edu', 'john aldwin', '', '', 'student', 'BSA', 1, '/profile_images/18_rapper-post-malone-5hnpkcp60re560eu.jpg', 'enrollment_forms/JRUConnect-Data-Flow-Diagram.pdf', NULL, '2024-10-18 08:50:03'),
(20, '18-402585', 'ronjay156', 'hongkong04', 'ronjayzeus.santos@my.jru.edu', 'Ronjay Zeus L. Santos', '', '', 'student', 'BSME', 1, '/profile_images/20_Profile Picture.jpg', 'enrollment_forms/Enrollment Form Santos.pdf', NULL, '2024-10-18 10:39:16'),
(21, '22-259237', 'Mikay', 'bvhqij8t', 'micajoy.durante@my.jru.edu', 'Mica Joy Durante', '', '', 'student', 'BSCPE', 1, '/profile_images/21_joy.jpg', 'enrollment_forms/Durante.pdf', NULL, '2024-10-25 17:51:30'),
(22, '14-362856', 'paolo123', '12345678', 'juanpaolo.mina@my.jru.edu', 'Juan Paolo Mina', '', '', 'student', 'BSCS', 1, 'profile_images/306fdbfd-2287-41ba-906d-17d1dd2aa88e.jpg', 'enrollment_forms/Enrollment Form Santos.pdf', NULL, '2024-10-26 10:31:05'),
(25, '18-428595', 'test student', '12345', 'test@my.jru.edu', 'test student', '', '', 'student', 'BSIT', 1, 'profile_images/Profile Picture.jpg', 'enrollment_forms/Enrollment Form Santos.pdf', NULL, '2024-10-31 00:07:26'),
(26, '19-405053', 'jaldwinn1', 'JRUCONNECT1', 'asdas11d@my.jru.edu', 'john aldwin ', '', '', 'student', 'BSIT', 1, 'profile_images/Q14.JPG', 'enrollment_forms/JRUConnect-Data-Flow-Diagram.pdf', NULL, '2024-11-04 10:15:30'),
(28, '19-454545', 'jacky', '12345', 'jacky.santos@my.jru.edu', 'Jacky Testing', '', '', 'student', 'BSIT', 1, 'profile_images/Me.jpg', 'enrollment_forms/Enrollment Form Santos.pdf', NULL, '2024-11-09 04:16:15'),
(29, '19-405054', 'jaldwinn55', 'JRUCONNECT1', 'johnaldwin.m4nalo@my.jru.edu', 'john aldwin m4nalo', '', '', 'student', 'BSIT', 1, 'profile_images/6ae1b9fc5bc1650442d5bb8fc293e604.jpg', 'enrollment_forms/JRUConnect-Data-Flow-Diagram.pdf', NULL, '2024-11-15 11:49:48'),
(30, '24-263088', 'kaaangel', 'smi1zp6h', 'kaiteangel.linde@my.jru.edu', 'Kaite Angel Linde', '', '', 'student', 'BSN', 1, 'profile_images/IMG_4383.jpeg', 'enrollment_forms/JOSE%CC%81%20RIZAL%20UNIVERSITY.pdf', NULL, '2024-11-16 12:50:58'),
(31, '24-262956', 'jjoxcee', 'gaa9ol4d', 'roseliejoyce.aguinaldo@my.jru.edu', 'Roselie Joyce Aguinaldo', '', '', 'student', 'BSN', 1, 'profile_images/52c51670282cb04891228a74c2bfd1b5.jpg', 'enrollment_forms/Screenshot_20241116_214204_Samsung Internet.jpg', NULL, '2024-11-16 13:43:46'),
(32, '18-405055', 'roberthey', 'JRUCONNECT1', 'robert.cruz@my.jru.edu', 'robert cruz', '', '', 'student', 'BSCE', 0, 'profile_images/284824655_1538645479884291_1538217878267340921_n.jpg', 'enrollment_forms/Kaite Angel Linde.pdf', NULL, '2024-11-16 14:09:45'),
(33, '24-263955', 'christel lara', 'hahaha123', 'christeljoann.lara@my.jru.edu', 'Christel Joann B. Lara', '', '', 'student', 'BSN', 1, 'profile_images/25C7E6A2-8234-4271-B3DD-B70D93543845.jpeg', 'enrollment_forms/Notes.pdf', NULL, '2024-11-16 14:15:54'),
(34, '24-263955', 'christel lara', 'hahaha123', 'christeljoann.lara@my.jru.edu', 'Christel Joann B. Lara', '', '', 'student', 'BSN', 0, 'profile_images/25C7E6A2-8234-4271-B3DD-B70D93543845.jpeg', 'enrollment_forms/Notes.pdf', NULL, '2024-11-16 14:15:56'),
(35, '24-262851', 'karlmiko', 'karlmikoyarte', 'karlmiko.yarte@my.jru.edu', 'Karl Miko P. Yarte', '', '', 'student', 'BSN', 1, 'profile_images/Yarte, Karl Miko P.png', 'enrollment_forms/Notes.pdf', NULL, '2024-11-16 14:18:31'),
(36, '22-408167', 'Liaguno', '123456789_', 'angelarose.liaguno@my.jru.edu', 'Angela Rose ', '', '', 'student', 'BSN', 1, 'profile_images/IMG_9416.jpeg', 'enrollment_forms/ELA SWIT.pdf', NULL, '2024-11-16 14:42:54'),
(37, NULL, 'student2', 'Abc123!@', 'exwewew2@example.com', 'Student Twossss', '', '', 'admin', NULL, 0, 'profile_images\\obama2.png', NULL, NULL, '2024-11-19 15:05:09'),
(38, '25-343287', 'admin1adasdas', 'Trynewpaas1#', 'davillabreanne@my.jru.edu', 'Student Twossssqweqwe', '', '', 'student', 'BSA', 0, 'profile_images\\wallpapersden.com_alien-planet-with-galaxy-background_wxl.jpg', 'enrollment_forms\\MySoftwareFree.com.url', NULL, '2024-11-19 15:14:42'),
(39, '14-363121', 'Bry', 'Dendipudge11!', 'bryanmatthew.guirao@my.jru.edu', 'Bryan Guirao', '', '', 'student', 'BSIT', 1, 'profile_images/cheeseball.jpg', 'enrollment_forms/I016224752.pdf', NULL, '2024-11-24 15:55:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
