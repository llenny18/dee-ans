-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2025 at 02:53 AM
-- Server version: 11.7.2-MariaDB
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
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `log_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_logs`
--

INSERT INTO `admin_logs` (`log_id`, `admin_id`, `action`, `timestamp`, `ip_address`, `user_agent`) VALUES
(1, 1, 'Created a new user', '2025-02-03 15:02:39', '192.168.1.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'),
(2, 1, 'Updated system settings', '2025-02-03 15:02:39', '192.168.1.15', 'Chrome/91.0.4472.124'),
(3, 2, 'Deleted an inactive account', '2025-02-03 15:02:39', '192.168.1.20', 'Safari/14.0.3'),
(4, 3, 'Reset a user password', '2025-02-03 15:02:39', '192.168.1.30', 'Edge/90.0.818.51'),
(5, 1, 'Logged In', '2025-02-13 01:22:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(6, 1, 'Viewed folders he/she created', '2025-02-13 01:22:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(7, 1, 'Viewed folders he/she created', '2025-02-13 01:22:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(8, 1, 'Viewed folders he/she created', '2025-02-13 01:22:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(9, 1, 'Viewed the files of the folder with code dfgdfgd', '2025-02-13 01:23:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(10, 1, 'Logged out', '2025-02-13 01:24:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(11, 1, 'Logged In', '2025-02-28 06:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(12, 1, 'Viewed folders he/she created', '2025-02-28 06:11:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(13, 1, 'Viewed folders he/she created', '2025-02-28 06:12:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(14, 1, 'Viewed folders he/she created', '2025-02-28 06:13:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(15, 1, 'Viewed folders he/she created', '2025-02-28 06:13:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(16, 1, 'Logged In', '2025-03-06 00:49:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(17, 1, 'Viewed folders he/she created', '2025-03-06 00:49:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(18, 1, 'Logged out', '2025-03-06 00:52:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(19, 111111, 'Logged In', '2025-03-07 01:51:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add captcha store', 7, 'add_captchastore'),
(26, 'Can change captcha store', 7, 'change_captchastore'),
(27, 'Can delete captcha store', 7, 'delete_captchastore'),
(28, 'Can view captcha store', 7, 'view_captchastore');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `captcha_captchastore`
--

CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'captcha', 'captchastore'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-03 06:50:59.771017'),
(2, 'auth', '0001_initial', '2025-02-03 06:51:07.343947'),
(3, 'admin', '0001_initial', '2025-02-03 06:51:09.222408'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-03 06:51:09.249597'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-03 06:51:09.289441'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-03 06:51:10.216395'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-03 06:51:10.823210'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-03 06:51:11.386068'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-03 06:51:11.435065'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-03 06:51:12.213168'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-03 06:51:12.239574'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-03 06:51:12.262059'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-03 06:51:12.651596'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-03 06:51:13.083358'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-03 06:51:13.576363'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-03 06:51:13.598355'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-03 06:51:14.067633'),
(18, 'sessions', '0001_initial', '2025-02-03 06:51:14.786731'),
(19, 'captcha', '0001_initial', '2025-02-06 14:13:21.032467'),
(20, 'captcha', '0002_alter_captchastore_id', '2025-02-06 14:13:21.094958');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0b4pujfdhibyid6ciezvezg34kgzetqd', '.eJxNjrEOgjAURX-FdNU2rxRRmEBjNE4OLk6k0ieSUCC0TTTGf5cqA297596bnDcx1ilsbVErkhKeUIA1T8iSmOLumqaVGkd-ys_H_SUI8sM2vwY75vNph1rWzVgJORWREJBV7CatsdIidQyVY_1jVjdD2Smc9cess70HccQh_r8FPvt6eHkK4YqCoLC-AE85T8WGiSiOk9UCIAU_l0rX7c-f_25JnMFhMldYImulYeZlLOqs8rqs7DT5fAGLvEog:1tqMsM:f2ooJIIEZcavhJ0-Wciv90k972drgvkZM0NDHk2u_nk', '2025-03-21 01:51:46.365268'),
('0e4a7py6xooqyrdjnm5ebk05xjmd4cei', 'eyJzdHVkZW50X2lkIjoiMjEtMDg0MjAiLCJzX2Z1bGxuYW1lIjoiRXJpY2EgTWlzY2hlbGxlIEFyYW5kYSAifQ:1tiNxu:-L2sYH0iie7OSMvbfScNtH89_oJdxjJlidEVZMgHWSM', '2025-02-27 01:24:30.614533'),
('ca4f9zivpgl6fdftqnsy0g8oxzmrguc0', 'eyJmYWN1bHR5X2lkIjoxLCJhX2Z1bGxuYW1lIjoiUmFscGggR2VyYXJkIFNhbmdhbGFuZyAifQ:1tntb2:XKGVfpXsDRIZY-YGpgEAlEzNO0-JSf4xeTmSWmbWGkw', '2025-03-14 06:11:40.064335');

-- --------------------------------------------------------

--
-- Stand-in structure for view `faculty_accounts`
-- (See below for the actual view)
--
CREATE TABLE `faculty_accounts` (
`u_id` int(11)
,`username` varchar(50)
,`hashed_password` varchar(255)
,`faculty_id` int(11)
,`gsuite` varchar(100)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `faculty_admin_logs`
-- (See below for the actual view)
--
CREATE TABLE `faculty_admin_logs` (
`id` bigint(21)
,`faculty_id` int(11)
,`gsuite` varchar(100)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
,`log_id` int(11)
,`admin_id` int(11)
,`action` varchar(255)
,`timestamp` datetime
,`ip_address` varchar(45)
,`user_agent` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `faculty_folders`
-- (See below for the actual view)
--
CREATE TABLE `faculty_folders` (
`id` bigint(21)
,`u_id` int(11)
,`username` varchar(50)
,`faculty_id` int(11)
,`faculty_first_name` varchar(50)
,`faculty_last_name` varchar(50)
,`faculty_email` varchar(100)
,`student_id` varchar(10)
,`email_verified` enum('no','yes')
,`folder_id` int(11)
,`folder_name` varchar(255)
,`description` varchar(455)
,`unique_code` varchar(255)
,`apicode` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_info`
--

CREATE TABLE `faculty_info` (
  `id` int(11) NOT NULL,
  `gsuite` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_info`
--

INSERT INTO `faculty_info` (`id`, `gsuite`, `first_name`, `middle_name`, `last_name`) VALUES
(1, 'ralphgerard.sangalang@g.batstate-u.edu.ph', 'Ralph Gerard', '', 'Sangalang'),
(2, 'joven.dimaculangan@g.batstate-u.edu.ph', 'Joven', '', 'Dimaculangan'),
(3, 'johncarlo.aggari@g.batstate-u.edu.ph', 'John Carlo', '', 'Aggari');

-- --------------------------------------------------------

--
-- Table structure for table `folder_files`
--

CREATE TABLE `folder_files` (
  `file_id` int(11) NOT NULL,
  `folder_code` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_description` text DEFAULT NULL,
  `file_link` varchar(255) NOT NULL,
  `uploader_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_accounts`
-- (See below for the actual view)
--
CREATE TABLE `student_accounts` (
`u_id` int(11)
,`username` varchar(50)
,`hashed_password` varchar(255)
,`student_id` varchar(10)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_activity_logs`
-- (See below for the actual view)
--
CREATE TABLE `student_activity_logs` (
`id` bigint(21)
,`sr_code` varchar(10)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
,`log_id` int(11)
,`student_id` varchar(11)
,`action` varchar(255)
,`timestamp` datetime
,`ip_address` varchar(45)
,`user_agent` text
);

-- --------------------------------------------------------

--
-- Table structure for table `student_folder`
--

CREATE TABLE `student_folder` (
  `id` int(11) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_folder_view`
-- (See below for the actual view)
--
CREATE TABLE `student_folder_view` (
`id` bigint(21)
,`sr_code` varchar(10)
,`student_first_name` varchar(50)
,`student_middle_name` varchar(50)
,`student_last_name` varchar(50)
,`faculty_gsuite` varchar(100)
,`faculty_first_name` varchar(50)
,`faculty_middle_name` varchar(50)
,`faculty_last_name` varchar(50)
,`folder_name` varchar(255)
,`description` varchar(455)
,`unique_code` varchar(255)
,`apicode` varchar(255)
,`faculty_id` int(11)
,`student_folder_created_at` timestamp
);

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
('19-00033', '19-00033@g.batstate-u.edu.ph', 'PRES LEE ANN ', 'D.', 'MENDOZA'),
('19-00100', '19-00100@g.batstate-u.edu.ph', 'PAMELA ', 'D.', 'CABRAL'),
('19-00719', '19-00719@g.batstate-u.edu.ph', 'JAPHET ', 'C.', 'AGBAY'),
('19-00760', '19-00760@g.batstate-u.edu.ph', 'CHIESA MEI ', 'D.', 'MACALALAD'),
('19-00997', '19-00997@g.batstate-u.edu.ph', 'JANN NELL ', 'C.', 'PANOPIO'),
('19-01013', '19-01013@g.batstate-u.edu.ph', 'JAKKINEN DANIEL ', 'B.', 'PARJAN'),
('19-02078', '19-02078@g.batstate-u.edu.ph', 'ELJANE ', 'A.', 'BALHAG'),
('19-03201', '19-03201@g.batstate-u.edu.ph', 'HANNA JANE ', 'A.', 'MENDOZA'),
('19-04457', '19-04457@g.batstate-u.edu.ph', 'AUNDREY NICOLE ', 'P.', 'ELISAN'),
('19-04590', '19-04590@g.batstate-u.edu.ph', 'CHRISTIAN ', 'D.', 'REMO'),
('19-06162', '19-06162@g.batstate-u.edu.ph', 'ALLEN IVERSON ', 'O.', 'ALANO'),
('19-07723', '19-07723@g.batstate-u.edu.ph', 'JENNY ', 'I.', 'HERNANDEZ'),
('19-08054', '19-08054@g.batstate-u.edu.ph', 'SHERILYN ', 'D.', 'PAJARES'),
('19-09028', '19-09028@g.batstate-u.edu.ph', 'ELVIE ', 'A.', 'CRUZAT'),
('19-09164', '19-09164@g.batstate-u.edu.ph', 'ELYSSA JOY ', 'G.', 'MANALO'),
('20-00366', '20-00366@g.batstate-u.edu.ph', 'KYLE ANDREI ', 'A.', 'MANGUIAT'),
('20-00648', '20-00648@g.batstate-u.edu.ph', 'EVAN GERARD ', 'S.', 'MACARAIG'),
('20-00733', '20-00733@g.batstate-u.edu.ph', 'FRANCHESKA MARI ', 'J.', 'CRUZ'),
('20-01236', '20-01236@g.batstate-u.edu.ph', 'JHUNE MENDELL ', 'R.', 'ATIENZA'),
('20-01514', '20-01514@g.batstate-u.edu.ph', 'KRISTINE SEAN ', 'D.', 'MARQUEZ'),
('20-01592', '20-01592@g.batstate-u.edu.ph', 'JELBERT ', 'D.', 'SARMIENTO'),
('20-01686', '20-01686@g.batstate-u.edu.ph', 'JANNA MARIE ', 'M.', 'MENDOZA'),
('20-01775', '20-01775@g.batstate-u.edu.ph', 'JAIRA MAE ', 'C.', 'DELLOSA'),
('20-02304', '20-02304@g.batstate-u.edu.ph', 'JOHN AERON ', 'M.', 'MANIPOL'),
('20-02414', '20-02414@g.batstate-u.edu.ph', 'AUBREY GRACE ', 'D.', 'MANOSCA'),
('20-02726', '20-02726@g.batstate-u.edu.ph', 'CHRISTIAN JAMES ', 'P.', 'CACAO'),
('20-02935', '20-02935@g.batstate-u.edu.ph', 'NATHANIEL ', 'P.', 'LAJARA'),
('20-03252', '20-03252@g.batstate-u.edu.ph', 'DESERIE ALIANA ', 'M.', 'PANALIGAN'),
('20-03326', '20-03326@g.batstate-u.edu.ph', 'CARL LESTER ', 'C.', 'IDANAN'),
('20-03346', '20-03346@g.batstate-u.edu.ph', 'LEONARD ', 'D.', 'BEREDO JR.'),
('20-03350', '20-03350@g.batstate-u.edu.ph', 'ANDREA JOREEN ', 'A.', 'MARALIT'),
('20-03804', '20-03804@g.batstate-u.edu.ph', 'JANNAH JAINRECH ', 'B.', 'DIMAILIG'),
('20-04274', '20-04274@g.batstate-u.edu.ph', 'CHRISTINE ', 'P.', 'NANEZ'),
('20-04463', '20-04463@g.batstate-u.edu.ph', 'JEROME CARLO ', 'M.', 'HIRANG'),
('20-04719', '20-04719@g.batstate-u.edu.ph', 'JOHN ROMAR ', 'A.', 'BUENAFLOR'),
('20-05095', '20-05095@g.batstate-u.edu.ph', 'VINCE RAVEN ', 'C.', 'ENCARNACION'),
('20-05204', '20-05204@g.batstate-u.edu.ph', 'PAUL ', 'P.', 'PERALTA'),
('20-05332', '20-05332@g.batstate-u.edu.ph', 'ELLA MAE ', 'A.', 'KATIGBAK'),
('20-05392', '20-05392@g.batstate-u.edu.ph', 'MANUELITO ', 'F.', 'FAJUTNAO JR.'),
('20-06005', '20-06005@g.batstate-u.edu.ph', 'PRECIOUS FAITH ', 'B.', 'MENDARO'),
('20-06150', '20-06150@g.batstate-u.edu.ph', 'LYELL CLAIRE ', 'L.', 'MENDOZA'),
('20-06254', '20-06254@g.batstate-u.edu.ph', 'JHON CARLO ', 'M.', 'VILLAMARIN'),
('20-06339', '20-06339@g.batstate-u.edu.ph', 'JERSIE ', 'M.', 'MANALO'),
('20-06632', '20-06632@g.batstate-u.edu.ph', 'SAMUEL ADRIAN ', 'D.', 'SARMIENTO'),
('20-06695', '20-06695@g.batstate-u.edu.ph', 'ERICA ANNE ', 'F.', 'DE CASTRO'),
('20-06803', '20-06803@g.batstate-u.edu.ph', 'NICOLE NASH ANDR', 'EA', 'VERGARA'),
('20-06881', '20-06881@g.batstate-u.edu.ph', 'CHRISTINE JOY ', 'V.', 'TOLENTINO'),
('20-07086', '20-07086@g.batstate-u.edu.ph', 'SELWHYN ', 'S.', 'SANCHA'),
('20-07106', '20-07106@g.batstate-u.edu.ph', 'MICHELLE ', 'D.', 'LASIN'),
('20-07164', '20-07164@g.batstate-u.edu.ph', 'ERICKA MAE ', 'P.', 'LAJO'),
('20-07427', '20-07427@g.batstate-u.edu.ph', 'SHEILA MAE ', 'L.', 'BALMES'),
('20-07567', '20-07567@g.batstate-u.edu.ph', 'MARY KRISTINE JOY ', 'P.', 'AQUINO'),
('20-07892', '20-07892@g.batstate-u.edu.ph', 'KRISTINE ', 'C.', 'BENEDICTO'),
('20-08269', '20-08269@g.batstate-u.edu.ph', 'ANGEL MARIE ', 'A.', 'CORTINAS'),
('20-08372', '20-08372@g.batstate-u.edu.ph', 'MARIA ALECZANDRA ', 'M.', 'MANAY'),
('20-09028', '20-09028@g.batstate-u.edu.ph', 'JERUSHA ANNE ', 'S.', 'RETARDO'),
('20-09702', '20-09702@g.batstate-u.edu.ph', 'ARJAY ', 'D.', 'CENA'),
('20-09805', '20-09805@g.batstate-u.edu.ph', 'CEDRICK ', 'M.', 'GUINO'),
('20-09876', '20-09876@g.batstate-u.edu.ph', 'JOHN CARLO ', 'T.', 'CAPOYAN'),
('21-00043', '21-00043@g.batstate-u.edu.ph', 'CRAIG OWENN ', 'O.', 'DOCTOR'),
('21-00120', '21-00120@g.batstate-u.edu.ph', 'JIANN RHEN ', 'M.', 'RIVERA'),
('21-00135', '21-00135@g.batstate-u.edu.ph', 'AERON KIM ', 'D.', 'ABEL'),
('21-00161', '21-00161@g.batstate-u.edu.ph', 'JOMARIE ', 'D.', 'CRUZ'),
('21-00162', '21-00162@g.batstate-u.edu.ph', 'MA. LORDELYN ', 'M.', 'REYES'),
('21-00168', '21-00168@g.batstate-u.edu.ph', 'JOSHUA GLENN ', 'A.', 'EBRON'),
('21-00201', '21-00201@g.batstate-u.edu.ph', 'JOHN JOSHUA JAVIER ', 'B.', 'SOLAR'),
('21-00219', '21-00219@g.batstate-u.edu.ph', 'IRRISH SHANE ', 'E.', 'CONVENTO'),
('21-00228', '21-00228@g.batstate-u.edu.ph', 'JOHN EDWARD ', 'S.', 'MACARAEG'),
('21-00298', '21-00298@g.batstate-u.edu.ph', 'ARLENE ', 'M.', 'GENERAL'),
('21-00353', '21-00353@g.batstate-u.edu.ph', 'JERARD ', 'V.', 'TORRECAMPO'),
('21-00475', '21-00475@g.batstate-u.edu.ph', 'LEVIN EDWARD ', 'G.', 'ESTACIO'),
('21-00611', '21-00611@g.batstate-u.edu.ph', 'KRISTINE GRACE ', 'A.', 'PANOPIO'),
('21-00623', '21-00623@g.batstate-u.edu.ph', 'ARIANE MAUREEN ', 'A.', 'DELOS REYES'),
('21-00629', '21-00629@g.batstate-u.edu.ph', 'BEA JEANETTE ', 'L.', 'SIMAN'),
('21-00838', '21-00838@g.batstate-u.edu.ph', 'FAITH ANGELA ', 'N.', 'LEVARDO'),
('21-00860', '21-00860@g.batstate-u.edu.ph', 'DARLENE MAE ', 'C.', 'DIMAUNAHAN'),
('21-00866', '21-00866@g.batstate-u.edu.ph', 'CHRISTOPHER MIKHAIL ', 'P.', 'ACYATAN'),
('21-00924', '21-00924@g.batstate-u.edu.ph', 'DEVINE GRACE ', 'A.', 'AMBAYEC'),
('21-01057', '21-01057@g.batstate-u.edu.ph', 'CARMELA LAINE ', 'P.', 'BONIFACIO'),
('21-01209', '21-01209@g.batstate-u.edu.ph', 'NEDDIE ANNE ', 'S.', 'BARILLO'),
('21-01244', '21-01244@g.batstate-u.edu.ph', 'JEAN ASHLEY ', 'A.', 'HERNANDEZ'),
('21-01283', '21-01283@g.batstate-u.edu.ph', 'EPHRAIM ', 'L.', 'GUBOT'),
('21-01439', '21-01439@g.batstate-u.edu.ph', 'DIANA MARIE ', 'M.', 'GASANGUE'),
('21-01457', '21-01457@g.batstate-u.edu.ph', 'NIB OWEN ', 'S.', 'LAT'),
('21-01600', '21-01600@g.batstate-u.edu.ph', 'CARL JOMAR ', 'E.', 'MANTOS'),
('21-01617', '21-01617@g.batstate-u.edu.ph', 'APRIL ROSE ', 'E.', 'GARCIA'),
('21-01642', '21-01642@g.batstate-u.edu.ph', 'CAROL ', 'S.', 'CALDERON'),
('21-01806', '21-01806@g.batstate-u.edu.ph', 'AEZEL ', 'F.', 'SAMBILE'),
('21-01836', '21-01836@g.batstate-u.edu.ph', 'ISAAC MIGUEL ', 'R.', 'VILLAREAL'),
('21-02046', '21-02046@g.batstate-u.edu.ph', 'JOHN ALFRED ', 'P.', 'DIAZ'),
('21-02055', '21-02055@g.batstate-u.edu.ph', 'CRISTEEN MARI ', 'M.', 'PAMPLONA'),
('21-02084', '21-02084@g.batstate-u.edu.ph', 'ELVINCE ', 'E.', 'ILAO'),
('21-02093', '21-02093@g.batstate-u.edu.ph', 'PAUL LAWRENCE ', 'C.', 'DE CASTRO'),
('21-02107', '21-02107@g.batstate-u.edu.ph', 'SANDRA MERYLL ', 'R.', 'VERDAD'),
('21-02272', '21-02272@g.batstate-u.edu.ph', 'IVY ', 'C.', 'OLIVER'),
('21-02359', '21-02359@g.batstate-u.edu.ph', 'JULIANA KYL ', 'L.', 'ENDAYA'),
('21-02493', '21-02493@g.batstate-u.edu.ph', 'NATHAN ELIJAH ', 'U.', 'CASTILLEJO'),
('21-02508', '21-02508@g.batstate-u.edu.ph', 'LANCE CEDRIC ', 'F.', 'TULAY'),
('21-02539', '21-02539@g.batstate-u.edu.ph', 'NIAN VINCENT ', 'D.', 'ABALAHON'),
('21-02630', '21-02630@g.batstate-u.edu.ph', 'MYLENE ', 'T.', 'BARLAO'),
('21-02637', '21-02637@g.batstate-u.edu.ph', 'CARYLL ALYANA ', 'B.', 'REYES'),
('21-02806', '21-02806@g.batstate-u.edu.ph', 'MARIE ANTONETTE ', 'E.', 'FLORES'),
('21-02811', '21-02811@g.batstate-u.edu.ph', 'JEFFERSON ', 'E.', 'GO'),
('21-02863', '21-02863@g.batstate-u.edu.ph', 'RYAN JOSHUA ', 'F.', 'ESLERA'),
('21-02864', '21-02864@g.batstate-u.edu.ph', 'JOHN KENNETH ', 'V.', 'CAIBIGAN'),
('21-03001', '21-03001@g.batstate-u.edu.ph', 'REMUEL JOHN ', 'P.', 'ARELLANO'),
('21-03012', '21-03012@g.batstate-u.edu.ph', 'FRANCHESCA DENISE ', 'A.', 'JAVIER'),
('21-03036', '21-03036@g.batstate-u.edu.ph', 'CAMILLE MARGARET ', 'M.', 'OBVIAR'),
('21-03129', '21-03129@g.batstate-u.edu.ph', 'GABRIEL ', 'R.', 'MINDANAO'),
('21-03142', '21-03142@g.batstate-u.edu.ph', 'GODWIN EMMANUEL ', 'C.', 'TAYAS'),
('21-03214', '21-03214@g.batstate-u.edu.ph', 'ABBEY ', 'P.', 'BRINGQUEZ'),
('21-03287', '21-03287@g.batstate-u.edu.ph', 'GABRIELE ELY ', 'D.', 'CASTILLO'),
('21-03338', '21-03338@g.batstate-u.edu.ph', 'JANNAH MAE ', 'M.', 'BATHAN'),
('21-03396', '21-03396@g.batstate-u.edu.ph', 'CARLIN JO', 'SH', 'MENDOZA'),
('21-03583', '21-03583@g.batstate-u.edu.ph', 'LIZETTE ', 'S.', 'SUMAGUE'),
('21-03659', '21-03659@g.batstate-u.edu.ph', 'CATHERINE JANE ', 'F.', 'PUMEDA'),
('21-03685', '21-03685@g.batstate-u.edu.ph', 'RUSSEL JOHN ', 'C.', 'TENORIO'),
('21-03740', '21-03740@g.batstate-u.edu.ph', 'JASPER ', 'M.', 'LIBATO'),
('21-03822', '21-03822@g.batstate-u.edu.ph', 'JAMES KENNETH ', 'G.', 'GACUSAN'),
('21-03878', '21-03878@g.batstate-u.edu.ph', 'FRANCIS LYNDON ', 'L.', 'ARCILLAS'),
('21-03898', '21-03898@g.batstate-u.edu.ph', 'IRA MARIE ', 'T.', 'LUBIS'),
('21-03939', '21-03939@g.batstate-u.edu.ph', 'IAN EMMANUEL ', 'P.', 'FAJILAN'),
('21-04034', '21-04034@g.batstate-u.edu.ph', 'JOHN JERICK ', 'F.', 'CAGUICLA'),
('21-04098', '21-04098@g.batstate-u.edu.ph', 'GJ VHON ', 'M.', 'LELINA'),
('21-04111', '21-04111@g.batstate-u.edu.ph', 'RENZ RENIEL ', 'A.', 'KALAW'),
('21-04139', '21-04139@g.batstate-u.edu.ph', 'MA. FETRICE ', 'B.', 'ESGUERRA'),
('21-04164', '21-04164@g.batstate-u.edu.ph', 'ADRIAN ', 'A.', 'CANLUBO'),
('21-04208', '21-04208@g.batstate-u.edu.ph', 'EARL JOHN ARISTEO ', 'O.', 'TUPAS'),
('21-04310', '21-04310@g.batstate-u.edu.ph', 'MARK JERALD ', 'L.', 'DE TORRES'),
('21-04761', '21-04761@g.batstate-u.edu.ph', 'HAZEL ANN ', 'M.', 'DATINGGALING'),
('21-04822', '21-04822@g.batstate-u.edu.ph', 'ALLEINE GRACE ', 'A.', 'AUTOS'),
('21-05066', '21-05066@g.batstate-u.edu.ph', 'SOPHIA BIANCA ', 'G.', 'CASTILLO'),
('21-05084', '21-05084@g.batstate-u.edu.ph', 'JOSS MARRON ', 'I.', 'DOLOR'),
('21-05346', '21-05346@g.batstate-u.edu.ph', 'CHRISTIAN LLOYD ', 'C.', 'CARCABUSO'),
('21-05371', '21-05371@g.batstate-u.edu.ph', 'CARLA ', 'A.', 'LEYCANO'),
('21-05373', '21-05373@g.batstate-u.edu.ph', 'JOHN KERVIN ', 'I.', 'DE CHAVEZ'),
('21-05730', '21-05730@g.batstate-u.edu.ph', 'CRIZALYN ', 'V.', 'HERNANDEZ'),
('21-05740', '21-05740@g.batstate-u.edu.ph', 'PRINCESS ALIAH ', 'M.', 'ELORIAGA'),
('21-05798', '21-05798@g.batstate-u.edu.ph', 'MARK NINO ', 'D.', 'DIMALIBOT'),
('21-05896', '21-05896@g.batstate-u.edu.ph', 'DIA VALORA ', 'C.', 'ANTONIO'),
('21-05929', '21-05929@g.batstate-u.edu.ph', 'IVAN GABRIELLE ', 'N.', 'PEREZ'),
('21-06067', '21-06067@g.batstate-u.edu.ph', 'DAVE HARLEY KIEH ', 'G.', 'BISA'),
('21-06234', '21-06234@g.batstate-u.edu.ph', 'JOHN CHRISTIAN ', 'M.', 'PEREZ'),
('21-06284', '21-06284@g.batstate-u.edu.ph', 'JAN REYMOND ', 'M.', 'FRESNIDO'),
('21-06329', '21-06329@g.batstate-u.edu.ph', 'MARIELLE IVY ', 'D.', 'TACLOB'),
('21-06356', '21-06356@g.batstate-u.edu.ph', 'MA. XENIA ', 'Q.', 'AMPARO'),
('21-06451', '21-06451@g.batstate-u.edu.ph', 'JOHN EDELBERT ', 'B.', 'DEL MUNDO'),
('21-06482', '21-06482@g.batstate-u.edu.ph', 'JHIMUEL ', 'C.', 'CADANO'),
('21-06489', '21-06489@g.batstate-u.edu.ph', 'SHARLENE ', 'E.', 'HERNANDEZ'),
('21-06569', '21-06569@g.batstate-u.edu.ph', 'JOHN DARELL ', 'S.', 'FABILLAR'),
('21-06595', '21-06595@g.batstate-u.edu.ph', 'JEANE ANDRIE ', 'M.', 'GAVINO'),
('21-06877', '21-06877@g.batstate-u.edu.ph', 'ALISSANDRA ANNE ', 'L.', 'CLAVERIA'),
('21-06962', '21-06962@g.batstate-u.edu.ph', 'JENCEL DAVID ANDREW ', 'C.', 'MARCO'),
('21-07187', '21-07187@g.batstate-u.edu.ph', 'JANICE ', 'E.', 'BENDULO'),
('21-07192', '21-07192@g.batstate-u.edu.ph', 'MARK LESTER ', 'A.', 'LIBATON'),
('21-07260', '21-07260@g.batstate-u.edu.ph', 'KRISHA MARI FAYE ', 'C.', 'MALIGAYA'),
('21-07493', '21-07493@g.batstate-u.edu.ph', 'ANGEL KRISTEL FAITH ', 'S.', 'ESPIRITU'),
('21-07583', '21-07583@g.batstate-u.edu.ph', 'JAN QUEENCY ', 'O.', 'CANTUBA'),
('21-07629', '21-07629@g.batstate-u.edu.ph', 'MIGEL JUSTINE ', 'R.', 'MANALO'),
('21-07863', '21-07863@g.batstate-u.edu.ph', 'FRANZ LEMUEL ', 'J.', 'OLIVAR'),
('21-07874', '21-07874@g.batstate-u.edu.ph', 'GLYDEL MARIE ', 'A.', 'LUCERO'),
('21-08070', '21-08070@g.batstate-u.edu.ph', 'LADY PAMIELA ANDREA ', 'F.', 'AUSTRIA'),
('21-08103', '21-08103@g.batstate-u.edu.ph', 'RUTH JOY ', 'R.', 'LUCIDO'),
('21-08115', '21-08115@g.batstate-u.edu.ph', 'BENEDICT ', 'B.', 'DE VILLA'),
('21-08136', '21-08136@g.batstate-u.edu.ph', 'MARY CHRISTINE FAYEBELLE ', 'H.', 'ENDOZO'),
('21-08307', '21-08307@g.batstate-u.edu.ph', 'KHYLE ', 'R.', 'MONTEROLA'),
('21-08523', '21-08523@g.batstate-u.edu.ph', 'PHOER PAULO ', 'M.', 'ESPINEDA'),
('21-08567', '21-08567@g.batstate-u.edu.ph', 'JADE FRANCINE ', 'B.', 'CHAVEZ'),
('21-08620', '21-08620@g.batstate-u.edu.ph', 'DIANE ', 'P.', 'AFRICA'),
('21-08688', '21-08688@g.batstate-u.edu.ph', 'GEMAREE ANGELICA ', 'C.', 'MULINGBAYAN'),
('21-08694', '21-08694@g.batstate-u.edu.ph', 'MA. ANGELICA ', 'M.', 'MENDOZA'),
('21-08775', '21-08775@g.batstate-u.edu.ph', 'CRISTINE JOY ', 'G.', 'ILUSTRE'),
('21-08812', '21-08812@g.batstate-u.edu.ph', 'CRISTEL NICOLE ', 'V.', 'BRUEL'),
('21-08841', '21-08841@g.batstate-u.edu.ph', 'JAEZEL ANNE ', 'M.', 'MARASIGAN'),
('21-09292', '21-09292@g.batstate-u.edu.ph', 'RAE CHRISTIAN ', 'Y.', 'CAY'),
('21-09299', '21-09299@g.batstate-u.edu.ph', 'LYKA ', 'V.', 'SOLIS'),
('21-09313', '21-09313@g.batstate-u.edu.ph', 'JAY IVAN ', 'T.', 'LLAGAS'),
('21-09336', '21-09336@g.batstate-u.edu.ph', 'ALLYSA ', 'M.', 'LAGUARDIA'),
('21-09624', '21-09624@g.batstate-u.edu.ph', 'AERON ', 'N.', 'LEYMA'),
('21-09742', '21-09742@g.batstate-u.edu.ph', 'JOHN STEVEN ', 'H.', 'LINDOG'),
('21-09828', '21-09828@g.batstate-u.edu.ph', 'KYLA CRYSHELLE ', 'E.', 'PANALIGAN'),
('21-09888', '21-09888@g.batstate-u.edu.ph', 'YVES SPENCER ', 'P.', 'CATUDAY'),
('21-09944', '21-09944@g.batstate-u.edu.ph', 'MC SANNDEL ANGELA ', 'M.', 'ACUZAR'),
('21-34330', '21-34330@g.batstate-u.edu.ph', 'sdfsd', 'ewrwe', 'rwerwer'),
('22-00016', '22-00016@g.batstate-u.edu.ph', 'CYRAH ', 'M.', 'ALAMAG'),
('22-00066', '22-00066@g.batstate-u.edu.ph', 'KENNETH VIRGIL ', 'L.', 'BORBON'),
('22-00148', '22-00148@g.batstate-u.edu.ph', 'PIERRE ALLEN ', 'D.', 'VILLARETE'),
('22-00283', '22-00283@g.batstate-u.edu.ph', 'KEY BEARD ', 'D.', 'MACALINTAL'),
('22-00393', '22-00393@g.batstate-u.edu.ph', 'MATTHEW ', 'D.', 'MANALO'),
('22-00766', '22-00766@g.batstate-u.edu.ph', 'GODWIN REUBEN ', 'Z.', 'ESTREMERA'),
('22-00865', '22-00865@g.batstate-u.edu.ph', 'ALYSSA MAE ', 'D.', 'SANDOVAL'),
('22-01079', '22-01079@g.batstate-u.edu.ph', 'LOUVEN JAIRO ', 'B.', 'MACUHA'),
('22-01180', '22-01180@g.batstate-u.edu.ph', 'KARYLLE MIKAELA ', 'L.', 'ILAO'),
('22-01207', '22-01207@g.batstate-u.edu.ph', 'CHRISTIAN ', 'C.', 'MANDIGMA'),
('22-01281', '22-01281@g.batstate-u.edu.ph', 'JANE PAULA ', 'S.', 'ANDAL'),
('22-01308', '22-01308@g.batstate-u.edu.ph', 'ZAI FRITZ ', 'C.', 'DIMAANO'),
('22-01514', '22-01514@g.batstate-u.edu.ph', 'LYKA ', 'D.', 'DELGADO'),
('22-01560', '22-01560@g.batstate-u.edu.ph', 'MAXINE ANDREA ', 'O.', 'GAHOL'),
('22-01822', '22-01822@g.batstate-u.edu.ph', 'KIMBERLY ', 'C.', 'CADANO'),
('22-01885', '22-01885@g.batstate-u.edu.ph', 'JOHN KHYLE ', 'C.', 'REYES'),
('22-01899', '22-01899@g.batstate-u.edu.ph', 'KRIZZIA CASAND', 'RA', 'CARCABUSO'),
('22-01920', '22-01920@g.batstate-u.edu.ph', 'JIREH JOSEPH ', 'B.', 'BROTONEL'),
('22-02167', '22-02167@g.batstate-u.edu.ph', 'JED CEDRIC ', 'A.', 'ALVAREZ'),
('22-02400', '22-02400@g.batstate-u.edu.ph', 'EAHRIELLE ANDHREW ', 'B.', 'PLATA'),
('22-02430', '22-02430@g.batstate-u.edu.ph', 'GAUDENCIO ', 'G.', 'CALLO JR.'),
('22-02515', '22-02515@g.batstate-u.edu.ph', 'CHRISTIAN JOHN ', 'D.', 'VERGARA'),
('22-02699', '22-02699@g.batstate-u.edu.ph', 'GIRAH CAMILLE ', 'S.', 'DIJAN'),
('22-02793', '22-02793@g.batstate-u.edu.ph', 'JULIA KRISTIANNA ', 'M.', 'GARCIA'),
('22-02802', '22-02802@g.batstate-u.edu.ph', 'JAINAH ', 'D.', 'DEL MUNDO'),
('22-02930', '22-02930@g.batstate-u.edu.ph', 'PATRICK ANGELO ', 'P.', 'MONTENEGRO'),
('22-02963', '22-02963@g.batstate-u.edu.ph', 'MARK TOM ', 'A.', 'ATIENZA'),
('22-03001', '22-03001@g.batstate-u.edu.ph', 'SHERYN ', 'B.', 'CARANDANG'),
('22-03121', '22-03121@g.batstate-u.edu.ph', 'ERIN JOY ', 'D.', 'BELLO'),
('22-03316', '22-03316@g.batstate-u.edu.ph', 'AMANDA CHRISTABEL ', 'L.', 'FORTALEZA'),
('22-03874', '22-03874@g.batstate-u.edu.ph', 'MARXUZ AURELEUZ ', 'U.', 'CARINUGAN'),
('22-04273', '22-04273@g.batstate-u.edu.ph', 'ALVIN ', 'L.', 'DAPADAP'),
('22-04291', '22-04291@g.batstate-u.edu.ph', 'RASHID ', 'M.', 'NORA'),
('22-04312', '22-04312@g.batstate-u.edu.ph', 'FRANCINE ', 'R.', 'LANDICHO'),
('22-04366', '22-04366@g.batstate-u.edu.ph', 'JANINE ', 'M.', 'RIEL'),
('22-04436', '22-04436@g.batstate-u.edu.ph', 'JANELLE JOYCE ', 'R.', 'LLARENA'),
('22-04613', '22-04613@g.batstate-u.edu.ph', 'JEGO ', 'A.', 'BALAYAN'),
('22-04919', '22-04919@g.batstate-u.edu.ph', 'MARCUS LOMER ', 'C.', 'PARBA'),
('22-05316', '22-05316@g.batstate-u.edu.ph', 'FIONA ', 'P.', 'DELA PENA'),
('22-05606', '22-05606@g.batstate-u.edu.ph', 'BEA CHANDELLE ', 'F.', 'ARGETE'),
('22-05888', '22-05888@g.batstate-u.edu.ph', 'JASON ', 'B.', 'MOJADO'),
('22-05940', '22-05940@g.batstate-u.edu.ph', 'JUSTINE JENNIFER ', 'P.', 'JAMPAS'),
('22-06316', '22-06316@g.batstate-u.edu.ph', 'HAZEAL ', 'B.', 'MENDOZA'),
('22-06550', '22-06550@g.batstate-u.edu.ph', 'JAN ROVIC ', 'G.', 'BUENAVENTURA'),
('22-06553', '22-06553@g.batstate-u.edu.ph', 'MARIENOR QUIANNA RAYNE ', 'M.', 'DIMAYUGA'),
('22-06686', '22-06686@g.batstate-u.edu.ph', 'LANCE ', 'B.', 'VILLAREAL'),
('22-06716', '22-06716@g.batstate-u.edu.ph', 'AXEL NIKKO ', 'C.', 'EVANGELISTA'),
('22-06726', '22-06726@g.batstate-u.edu.ph', 'KYTE VALERIE ', 'C.', 'SAMONTE'),
('22-07325', '22-07325@g.batstate-u.edu.ph', 'LOURENCE CHRISTOPHER ', 'B.', 'MERCADO'),
('22-07365', '22-07365@g.batstate-u.edu.ph', 'MANUELA ', 'B.', 'NADERA'),
('22-07551', '22-07551@g.batstate-u.edu.ph', 'KIM HAROLD ', 'D.', 'MARASIGAN'),
('22-07604', '22-07604@g.batstate-u.edu.ph', 'CHRISTIAN JAMES ', 'S.', 'PRECILLA'),
('22-07716', '22-07716@g.batstate-u.edu.ph', 'MARY CLAIRE ', 'A.', 'RUSTIA'),
('22-07801', '22-07801@g.batstate-u.edu.ph', 'MARY JOY ', 'F.', 'BITUIN'),
('22-08028', '22-08028@g.batstate-u.edu.ph', 'KIEN SHOUHEI ', 'P.', 'MAGHIRANG'),
('22-08097', '22-08097@g.batstate-u.edu.ph', 'LINUS RONNE ', 'L.', 'ANTONIO'),
('22-08131', '22-08131@g.batstate-u.edu.ph', 'JOSHUA ', 'C.', 'BANUELOS'),
('22-08165', '22-08165@g.batstate-u.edu.ph', 'ARZ', 'IE', 'BAUTISTA'),
('22-08323', '22-08323@g.batstate-u.edu.ph', 'HANAH VERONICA ', 'M.', 'DIPASUPIL'),
('22-08366', '22-08366@g.batstate-u.edu.ph', 'JIERO ', 'A.', 'CAMBE'),
('22-08451', '22-08451@g.batstate-u.edu.ph', 'SHAINA MARIE ', 'B.', 'CENTOS'),
('22-08569', '22-08569@g.batstate-u.edu.ph', 'SHIELA MAE ', 'T.', 'MALIJAN'),
('22-08587', '22-08587@g.batstate-u.edu.ph', 'CAZANDRA ', 'L.', 'BALIAT'),
('22-08793', '22-08793@g.batstate-u.edu.ph', 'PAULINE KHATE ', 'M.', 'INASORIA'),
('22-08870', '22-08870@g.batstate-u.edu.ph', 'CZAR IVAN JOSEPH ', 'A.', 'CASAS'),
('22-08978', '22-08978@g.batstate-u.edu.ph', 'JOHN MICHAEL ', 'B.', 'MAKIG-ANGAY'),
('22-09012', '22-09012@g.batstate-u.edu.ph', 'LESTHER ', 'A.', 'NUQUI'),
('22-09493', '22-09493@g.batstate-u.edu.ph', 'KEITH ALLEN ', 'C.', 'PLATA'),
('22-09547', '22-09547@g.batstate-u.edu.ph', 'DESIREE FAITH ', 'C.', 'ACUZAR'),
('22-09662', '22-09662@g.batstate-u.edu.ph', 'ALLYANNA ', 'M.', 'CALUMPIANO'),
('23-09118', '23-09118@g.batstate-u.edu.ph', 'AUSTIN CHLOE ', 'M.', 'ARGUELLES');

-- --------------------------------------------------------

--
-- Table structure for table `student_logs`
--

CREATE TABLE `student_logs` (
  `log_id` int(11) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_logs`
--

INSERT INTO `student_logs` (`log_id`, `student_id`, `action`, `timestamp`, `ip_address`, `user_agent`) VALUES
(1, '21-00623', 'Logged in to the portal', '2025-02-03 15:02:53', '192.168.1.40', 'Firefox/89.0'),
(2, '21-01836', 'Submitted an assignment', '2025-02-03 15:02:53', '192.168.1.50', 'Opera/75.0'),
(3, '21-00641', 'Updated profile information', '2025-02-03 15:02:53', '192.168.1.60', 'Brave/1.26.74'),
(4, '21-01642', 'Viewed course materials', '2025-02-03 15:02:53', '192.168.1.70', 'Microsoft Edge/92.0.902.62'),
(5, '21-08420', 'Logged in', '2025-02-13 01:20:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(6, '21-08420', 'Viewed folders he/she is joined in', '2025-02-13 01:21:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(7, '21-08420', 'Logged out', '2025-02-13 01:21:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(8, '21-08420', 'Logged in', '2025-02-13 01:24:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(9, '21-08420', 'Viewed folders he/she is joined in', '2025-02-13 01:24:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(10, '21-08420', 'Viewed the files of the folder with code 9DYvkdd0Mx', '2025-02-13 01:24:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(11, '21-08420', 'Logged in', '2025-03-06 00:53:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(12, '21-08420', 'Viewed folders he/she is joined in', '2025-03-06 00:53:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(13, '21-08420', 'Viewed folders he/she is joined in', '2025-03-06 00:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(14, '21-08420', 'Logged out', '2025-03-06 01:00:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(15, '19-00719', 'Logged in', '2025-03-06 05:56:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(16, '19-00719', 'Viewed folders he/she is joined in', '2025-03-06 06:00:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(17, '19-00719', 'Viewed folders he/she is joined in', '2025-03-06 06:14:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(18, '19-00719', 'Viewed folders he/she is joined in', '2025-03-06 06:14:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(19, '21-34311', 'Registered to the system', '2025-03-07 00:56:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(20, '21-34330', 'Registered to the system', '2025-03-07 01:06:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36');

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
(111111, 'dece.nas.system@gmail.com', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, NULL, 'yes'),
(111114, '19-00033@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-00033', 'yes'),
(111115, '19-00100@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-00100', 'yes'),
(111116, '19-00719@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-00719', 'yes'),
(111117, '19-00760@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-00760', 'yes'),
(111118, '19-00997@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-00997', 'yes'),
(111119, '19-01013@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-01013', 'yes'),
(111120, '19-02078@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-02078', 'yes'),
(111121, '19-03201@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-03201', 'yes'),
(111122, '19-04457@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-04457', 'yes'),
(111123, '19-04590@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-04590', 'yes'),
(111124, '19-06162@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-06162', 'yes'),
(111125, '19-07723@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-07723', 'yes'),
(111126, '19-08054@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-08054', 'yes'),
(111127, '19-09028@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-09028', 'yes'),
(111128, '19-09164@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '19-09164', 'yes'),
(111129, '20-00366@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-00366', 'yes'),
(111130, '20-00648@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-00648', 'yes'),
(111131, '20-00733@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-00733', 'yes'),
(111132, '20-01236@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-01236', 'yes'),
(111133, '20-01514@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-01514', 'yes'),
(111134, '20-01592@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-01592', 'yes'),
(111135, '20-01686@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-01686', 'yes'),
(111136, '20-01775@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-01775', 'yes'),
(111137, '20-02304@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-02304', 'yes'),
(111138, '20-02414@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-02414', 'yes'),
(111139, '20-02726@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-02726', 'yes'),
(111140, '20-02935@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-02935', 'yes'),
(111141, '20-03252@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-03252', 'yes'),
(111142, '20-03326@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-03326', 'yes'),
(111143, '20-03346@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-03346', 'yes'),
(111144, '20-03350@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-03350', 'yes'),
(111145, '20-03804@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-03804', 'yes'),
(111146, '20-04274@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-04274', 'yes'),
(111147, '20-04463@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-04463', 'yes'),
(111148, '20-04719@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-04719', 'yes'),
(111149, '20-05095@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-05095', 'yes'),
(111150, '20-05204@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-05204', 'yes'),
(111151, '20-05332@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-05332', 'yes'),
(111152, '20-05392@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-05392', 'yes'),
(111153, '20-06005@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06005', 'yes'),
(111154, '20-06150@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06150', 'yes'),
(111155, '20-06254@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06254', 'yes'),
(111156, '20-06339@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06339', 'yes'),
(111157, '20-06632@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06632', 'yes'),
(111158, '20-06695@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06695', 'yes'),
(111159, '20-06803@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06803', 'yes'),
(111160, '20-06881@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-06881', 'yes'),
(111161, '20-07086@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-07086', 'yes'),
(111162, '20-07106@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-07106', 'yes'),
(111163, '20-07164@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-07164', 'yes'),
(111164, '20-07427@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-07427', 'yes'),
(111165, '20-07567@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-07567', 'yes'),
(111166, '20-07892@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-07892', 'yes'),
(111167, '20-08269@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-08269', 'yes'),
(111168, '20-08372@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-08372', 'yes'),
(111169, '20-09028@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-09028', 'yes'),
(111170, '20-09702@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-09702', 'yes'),
(111171, '20-09805@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-09805', 'yes'),
(111172, '20-09876@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '20-09876', 'yes'),
(111173, '21-00043@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00043', 'yes'),
(111174, '21-00120@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00120', 'yes'),
(111175, '21-00135@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00135', 'yes'),
(111176, '21-00161@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00161', 'yes'),
(111177, '21-00162@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00162', 'yes'),
(111178, '21-00168@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00168', 'yes'),
(111179, '21-00201@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00201', 'yes'),
(111180, '21-00219@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00219', 'yes'),
(111181, '21-00228@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00228', 'yes'),
(111182, '21-00298@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00298', 'yes'),
(111183, '21-00353@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00353', 'yes'),
(111184, '21-00475@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00475', 'yes'),
(111185, '21-00611@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00611', 'yes'),
(111186, '21-00623@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00623', 'yes'),
(111187, '21-00629@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00629', 'yes'),
(111188, '21-00838@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00838', 'yes'),
(111189, '21-00860@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00860', 'yes'),
(111190, '21-00866@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00866', 'yes'),
(111191, '21-00924@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-00924', 'yes'),
(111192, '21-01057@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01057', 'yes'),
(111193, '21-01209@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01209', 'yes'),
(111194, '21-01244@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01244', 'yes'),
(111195, '21-01283@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01283', 'yes'),
(111196, '21-01439@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01439', 'yes'),
(111197, '21-01457@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01457', 'yes'),
(111198, '21-01600@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01600', 'yes'),
(111199, '21-01617@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01617', 'yes'),
(111200, '21-01642@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01642', 'yes'),
(111201, '21-01806@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01806', 'yes'),
(111202, '21-01836@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-01836', 'yes'),
(111203, '21-02046@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02046', 'yes'),
(111204, '21-02055@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02055', 'yes'),
(111205, '21-02084@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02084', 'yes'),
(111206, '21-02093@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02093', 'yes'),
(111207, '21-02107@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02107', 'yes'),
(111208, '21-02272@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02272', 'yes'),
(111209, '21-02359@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02359', 'yes'),
(111210, '21-02493@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02493', 'yes'),
(111211, '21-02508@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02508', 'yes'),
(111212, '21-02539@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02539', 'yes'),
(111213, '21-02630@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02630', 'yes'),
(111214, '21-02637@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02637', 'yes'),
(111215, '21-02806@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02806', 'yes'),
(111216, '21-02811@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02811', 'yes'),
(111217, '21-02863@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02863', 'yes'),
(111218, '21-02864@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-02864', 'yes'),
(111219, '21-03001@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03001', 'yes'),
(111220, '21-03012@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03012', 'yes'),
(111221, '21-03036@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03036', 'yes'),
(111222, '21-03129@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03129', 'yes'),
(111223, '21-03142@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03142', 'yes'),
(111224, '21-03214@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03214', 'yes'),
(111225, '21-03287@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03287', 'yes'),
(111226, '21-03338@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03338', 'yes'),
(111227, '21-03396@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03396', 'yes'),
(111228, '21-03583@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03583', 'yes'),
(111229, '21-03659@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03659', 'yes'),
(111230, '21-03685@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03685', 'yes'),
(111231, '21-03740@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03740', 'yes'),
(111232, '21-03822@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03822', 'yes'),
(111233, '21-03878@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03878', 'yes'),
(111234, '21-03898@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03898', 'yes'),
(111235, '21-03939@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-03939', 'yes'),
(111236, '21-04034@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04034', 'yes'),
(111237, '21-04098@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04098', 'yes'),
(111238, '21-04111@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04111', 'yes'),
(111239, '21-04139@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04139', 'yes'),
(111240, '21-04164@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04164', 'yes'),
(111241, '21-04208@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04208', 'yes'),
(111242, '21-04310@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04310', 'yes'),
(111243, '21-04761@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04761', 'yes'),
(111244, '21-04822@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-04822', 'yes'),
(111245, '21-05066@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05066', 'yes'),
(111246, '21-05084@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05084', 'yes'),
(111247, '21-05346@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05346', 'yes'),
(111248, '21-05371@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05371', 'yes'),
(111249, '21-05373@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05373', 'yes'),
(111250, '21-05730@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05730', 'yes'),
(111251, '21-05740@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05740', 'yes'),
(111252, '21-05798@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05798', 'yes'),
(111253, '21-05896@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05896', 'yes'),
(111254, '21-05929@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-05929', 'yes'),
(111255, '21-06067@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06067', 'yes'),
(111256, '21-06234@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06234', 'yes'),
(111257, '21-06284@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06284', 'yes'),
(111258, '21-06329@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06329', 'yes'),
(111259, '21-06356@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06356', 'yes'),
(111260, '21-06451@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06451', 'yes'),
(111261, '21-06482@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06482', 'yes'),
(111262, '21-06489@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06489', 'yes'),
(111263, '21-06569@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06569', 'yes'),
(111264, '21-06595@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06595', 'yes'),
(111265, '21-06877@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06877', 'yes'),
(111266, '21-06962@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-06962', 'yes'),
(111267, '21-07187@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07187', 'yes'),
(111268, '21-07192@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07192', 'yes'),
(111269, '21-07260@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07260', 'yes'),
(111270, '21-07493@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07493', 'yes'),
(111271, '21-07583@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07583', 'yes'),
(111272, '21-07629@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07629', 'yes'),
(111273, '21-07863@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07863', 'yes'),
(111274, '21-07874@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-07874', 'yes'),
(111275, '21-08070@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08070', 'yes'),
(111276, '21-08103@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08103', 'yes'),
(111277, '21-08115@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08115', 'yes'),
(111278, '21-08136@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08136', 'yes'),
(111279, '21-08307@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08307', 'yes'),
(111280, '21-08523@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08523', 'yes'),
(111281, '21-08567@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08567', 'yes'),
(111282, '21-08620@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08620', 'yes'),
(111283, '21-08688@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08688', 'yes'),
(111284, '21-08694@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08694', 'yes'),
(111285, '21-08775@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08775', 'yes'),
(111286, '21-08812@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08812', 'yes'),
(111287, '21-08841@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-08841', 'yes'),
(111288, '21-09292@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09292', 'yes'),
(111289, '21-09299@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09299', 'yes'),
(111290, '21-09313@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09313', 'yes'),
(111291, '21-09336@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09336', 'yes'),
(111292, '21-09624@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09624', 'yes'),
(111293, '21-09742@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09742', 'yes'),
(111294, '21-09828@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09828', 'yes'),
(111295, '21-09888@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09888', 'yes'),
(111296, '21-09944@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '21-09944', 'yes'),
(111297, '22-00016@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-00016', 'yes'),
(111298, '22-00066@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-00066', 'yes'),
(111299, '22-00148@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-00148', 'yes'),
(111300, '22-00283@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-00283', 'yes'),
(111301, '22-00393@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-00393', 'yes'),
(111302, '22-00766@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-00766', 'yes'),
(111303, '22-00865@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-00865', 'yes'),
(111304, '22-01079@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01079', 'yes'),
(111305, '22-01180@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01180', 'yes'),
(111306, '22-01207@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01207', 'yes'),
(111307, '22-01281@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01281', 'yes'),
(111308, '22-01308@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01308', 'yes'),
(111309, '22-01514@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01514', 'yes'),
(111310, '22-01560@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01560', 'yes'),
(111311, '22-01822@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01822', 'yes'),
(111312, '22-01885@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01885', 'yes'),
(111313, '22-01899@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01899', 'yes'),
(111314, '22-01920@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-01920', 'yes'),
(111315, '22-02167@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02167', 'yes'),
(111316, '22-02400@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02400', 'yes'),
(111317, '22-02430@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02430', 'yes'),
(111318, '22-02515@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02515', 'yes'),
(111319, '22-02699@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02699', 'yes'),
(111320, '22-02793@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02793', 'yes'),
(111321, '22-02802@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02802', 'yes'),
(111322, '22-02930@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02930', 'yes'),
(111323, '22-02963@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-02963', 'yes'),
(111324, '22-03001@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-03001', 'yes'),
(111325, '22-03121@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-03121', 'yes'),
(111326, '22-03316@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-03316', 'yes'),
(111327, '22-03874@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-03874', 'yes'),
(111328, '22-04273@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-04273', 'yes'),
(111329, '22-04291@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-04291', 'yes'),
(111330, '22-04312@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-04312', 'yes'),
(111331, '22-04366@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-04366', 'yes'),
(111332, '22-04436@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-04436', 'yes'),
(111333, '22-04613@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-04613', 'yes'),
(111334, '22-04919@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-04919', 'yes'),
(111335, '22-05316@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-05316', 'yes'),
(111336, '22-05606@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-05606', 'yes'),
(111337, '22-05888@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-05888', 'yes'),
(111338, '22-05940@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-05940', 'yes'),
(111339, '22-06316@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-06316', 'yes'),
(111340, '22-06550@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-06550', 'yes'),
(111341, '22-06553@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-06553', 'yes'),
(111342, '22-06686@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-06686', 'yes'),
(111343, '22-06716@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-06716', 'yes'),
(111344, '22-06726@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-06726', 'yes'),
(111345, '22-07325@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-07325', 'yes'),
(111346, '22-07365@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-07365', 'yes'),
(111347, '22-07551@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-07551', 'yes'),
(111348, '22-07604@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-07604', 'yes'),
(111349, '22-07716@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-07716', 'yes'),
(111350, '22-07801@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-07801', 'yes'),
(111351, '22-08028@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08028', 'yes'),
(111352, '22-08097@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08097', 'yes'),
(111353, '22-08131@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08131', 'yes'),
(111354, '22-08165@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08165', 'yes'),
(111355, '22-08323@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08323', 'yes'),
(111356, '22-08366@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08366', 'yes'),
(111357, '22-08451@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08451', 'yes'),
(111358, '22-08569@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08569', 'yes'),
(111359, '22-08587@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08587', 'yes'),
(111360, '22-08793@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08793', 'yes'),
(111361, '22-08870@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08870', 'yes'),
(111362, '22-08978@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-08978', 'yes'),
(111363, '22-09012@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-09012', 'yes'),
(111364, '22-09493@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-09493', 'yes'),
(111365, '22-09547@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-09547', 'yes'),
(111366, '22-09662@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '22-09662', 'yes'),
(111367, '23-09118@g.batstate-u.edu.ph', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, '23-09118', 'yes'),
(111369, '21-34330@g.batstate-u.edu.ph', 'X6wWP0JZzauXD+ZH5xTdjDk1D6hPRs68RIZqbYlAu+aUXBETZ2jDmMXsVxOMOt/Z', NULL, '21-34330', 'yes');

-- --------------------------------------------------------

--
-- Structure for view `faculty_accounts`
--
DROP TABLE IF EXISTS `faculty_accounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_accounts`  AS SELECT `ua`.`u_id` AS `u_id`, `ua`.`username` AS `username`, `ua`.`hashed_password` AS `hashed_password`, `fi`.`id` AS `faculty_id`, `fi`.`gsuite` AS `gsuite`, `fi`.`first_name` AS `first_name`, `fi`.`middle_name` AS `middle_name`, `fi`.`last_name` AS `last_name` FROM (`user_account` `ua` join `faculty_info` `fi` on(`ua`.`faculty_id` = `fi`.`id`)) WHERE `ua`.`faculty_id` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `faculty_admin_logs`
--
DROP TABLE IF EXISTS `faculty_admin_logs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_admin_logs`  AS SELECT row_number() over ( order by `a`.`timestamp`) AS `id`, `f`.`id` AS `faculty_id`, `f`.`gsuite` AS `gsuite`, `f`.`first_name` AS `first_name`, `f`.`middle_name` AS `middle_name`, `f`.`last_name` AS `last_name`, `a`.`log_id` AS `log_id`, `a`.`admin_id` AS `admin_id`, `a`.`action` AS `action`, `a`.`timestamp` AS `timestamp`, `a`.`ip_address` AS `ip_address`, `a`.`user_agent` AS `user_agent` FROM (`faculty_info` `f` join `admin_logs` `a` on(`f`.`id` = `a`.`admin_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `faculty_folders`
--
DROP TABLE IF EXISTS `faculty_folders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_folders`  AS SELECT row_number() over () AS `id`, `ua`.`u_id` AS `u_id`, `ua`.`username` AS `username`, `ua`.`faculty_id` AS `faculty_id`, `f`.`first_name` AS `faculty_first_name`, `f`.`last_name` AS `faculty_last_name`, `f`.`gsuite` AS `faculty_email`, `ua`.`student_id` AS `student_id`, `ua`.`email_verified` AS `email_verified`, `ft`.`id` AS `folder_id`, `ft`.`folder_name` AS `folder_name`, `ft`.`description` AS `description`, `ft`.`unique_code` AS `unique_code`, `ft`.`apicode` AS `apicode`, `ft`.`created_at` AS `created_at` FROM ((`user_account` `ua` join `folder_tns` `ft` on(`ua`.`faculty_id` = `ft`.`faculty_id`)) left join `faculty_info` `f` on(`ua`.`faculty_id` = `f`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_accounts`
--
DROP TABLE IF EXISTS `student_accounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_accounts`  AS SELECT `ua`.`u_id` AS `u_id`, `ua`.`username` AS `username`, `ua`.`hashed_password` AS `hashed_password`, `si`.`sr_code` AS `student_id`, `si`.`first_name` AS `first_name`, `si`.`middle_name` AS `middle_name`, `si`.`last_name` AS `last_name` FROM (`user_account` `ua` join `student_info` `si` on(`ua`.`student_id` = `si`.`sr_code`)) WHERE `ua`.`student_id` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `student_activity_logs`
--
DROP TABLE IF EXISTS `student_activity_logs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_activity_logs`  AS SELECT row_number() over ( order by `l`.`timestamp`) AS `id`, `s`.`sr_code` AS `sr_code`, `s`.`first_name` AS `first_name`, `s`.`middle_name` AS `middle_name`, `s`.`last_name` AS `last_name`, `l`.`log_id` AS `log_id`, `l`.`student_id` AS `student_id`, `l`.`action` AS `action`, `l`.`timestamp` AS `timestamp`, `l`.`ip_address` AS `ip_address`, `l`.`user_agent` AS `user_agent` FROM (`student_info` `s` join `student_logs` `l` on(`s`.`sr_code` = `l`.`student_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_folder_view`
--
DROP TABLE IF EXISTS `student_folder_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_folder_view`  AS SELECT row_number() over ( order by `si`.`sr_code`) AS `id`, `si`.`sr_code` AS `sr_code`, `si`.`first_name` AS `student_first_name`, `si`.`middle_name` AS `student_middle_name`, `si`.`last_name` AS `student_last_name`, `fi`.`gsuite` AS `faculty_gsuite`, `fi`.`first_name` AS `faculty_first_name`, `fi`.`middle_name` AS `faculty_middle_name`, `fi`.`last_name` AS `faculty_last_name`, `ft`.`folder_name` AS `folder_name`, `ft`.`description` AS `description`, `ft`.`unique_code` AS `unique_code`, `ft`.`apicode` AS `apicode`, `ft`.`faculty_id` AS `faculty_id`, `sf`.`created_at` AS `student_folder_created_at` FROM (((`student_folder` `sf` join `student_info` `si` on(`sf`.`student_id` = `si`.`sr_code`)) join `folder_tns` `ft` on(`sf`.`folder_id` = `ft`.`id`)) join `faculty_info` `fi` on(`ft`.`faculty_id` = `fi`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashkey` (`hashkey`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `faculty_info`
--
ALTER TABLE `faculty_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gsuite` (`gsuite`);

--
-- Indexes for table `folder_files`
--
ALTER TABLE `folder_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `folder_tns`
--
ALTER TABLE `folder_tns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code` (`unique_code`);

--
-- Indexes for table `student_folder`
--
ALTER TABLE `student_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_id` (`folder_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`sr_code`);

--
-- Indexes for table `student_logs`
--
ALTER TABLE `student_logs`
  ADD PRIMARY KEY (`log_id`);

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
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `faculty_info`
--
ALTER TABLE `faculty_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `folder_files`
--
ALTER TABLE `folder_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `folder_tns`
--
ALTER TABLE `folder_tns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_folder`
--
ALTER TABLE `student_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_logs`
--
ALTER TABLE `student_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111370;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `student_folder`
--
ALTER TABLE `student_folder`
  ADD CONSTRAINT `student_folder_ibfk_1` FOREIGN KEY (`folder_id`) REFERENCES `folder_tns` (`id`) ON DELETE CASCADE;

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
