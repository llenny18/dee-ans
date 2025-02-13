-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 02:55 AM
-- Server version: 11.6.2-MariaDB
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
(10, 1, 'Logged out', '2025-02-13 01:24:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0');

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

--
-- Dumping data for table `captcha_captchastore`
--

INSERT INTO `captcha_captchastore` (`id`, `challenge`, `response`, `hashkey`, `expiration`) VALUES
(95, 'PONA', 'pona', '9d89a37221ec4b7ea18aa6c55f50e32230d5156c', '2025-02-13 01:26:27.121445'),
(97, 'YBLA', 'ybla', '6b84ac42e2b666dab19203eb11050289d91d2dad', '2025-02-13 01:29:06.188870'),
(99, 'UDVE', 'udve', '508be5aaa134759314c35e62c465f6f3ea5d77b5', '2025-02-13 01:41:57.151520'),
(100, 'HCEG', 'hceg', 'ed45552703aa5745898a613570115a336352937d', '2025-02-13 01:47:43.008031'),
(101, 'ZUXI', 'zuxi', '17467d89abd0a52041dcc3db7e858d1bb4845ad1', '2025-02-13 01:57:42.304047'),
(102, 'SFIS', 'sfis', '86e0a398abb2effe6592b073c723d7d346d830a5', '2025-02-13 01:57:44.293257'),
(103, 'DOPJ', 'dopj', '71dcb5e64431b8f1ed1e6a418f8a981a981119cb', '2025-02-13 01:57:45.582749'),
(104, 'PUJN', 'pujn', '9e51f2c31e5235ccac0f40afabcc4d69af5bbdbf', '2025-02-13 01:57:47.475817'),
(105, 'RXLJ', 'rxlj', '8b1af85f33e8bb548e4d99ee537cd9e0f2808db4', '2025-02-13 01:58:36.262432');

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
('0e4a7py6xooqyrdjnm5ebk05xjmd4cei', 'eyJzdHVkZW50X2lkIjoiMjEtMDg0MjAiLCJzX2Z1bGxuYW1lIjoiRXJpY2EgTWlzY2hlbGxlIEFyYW5kYSAifQ:1tiNxu:-L2sYH0iie7OSMvbfScNtH89_oJdxjJlidEVZMgHWSM', '2025-02-27 01:24:30.614533');

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
  `file_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folder_files`
--

INSERT INTO `folder_files` (`file_id`, `folder_code`, `file_name`, `file_description`, `file_link`) VALUES
(1, '9DYvkdd0Mx', 'dsfsd', 'fdsfs', 'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf'),
(2, '9DYvkdd0Mx', 'rty', 'rtyrt', 'ytyrt.pdf'),
(3, 'dfgdfgd', 'dfgdf', 'gdfgdf', 'hgfghfgh.png'),
(4, 'dfgdfgd', 'yrtyrt', 'yrtyrtyrt', 'yrt.jpg');

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
(2, 'dfgdfgdfg', 'rdfgdf', 'dfgdfgd', 'tuyhjkhjk', 1, '2025-02-05 15:16:18'),
(3, 'dfgdf', 'gdfgdfg', '9rX0RjpOVi', 'dfgdfgdfgdfg', 1, '2025-02-08 21:03:07'),
(4, 'hjgh', 'jghjgh', '9DYvkdd0Mx', 'jghjghjgh', 1, '2025-02-08 21:22:30');

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

--
-- Dumping data for table `student_folder`
--

INSERT INTO `student_folder` (`id`, `student_id`, `folder_id`, `created_at`) VALUES
(1, '21-00396', 1, '2025-02-05 15:16:57'),
(2, '21-07187', 1, '2025-02-05 15:17:20'),
(3, '21-00623', 2, '2025-02-05 15:17:20'),
(4, '21-08420', 4, '2025-02-08 21:38:46');

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
('21-08567', '21-08567@g.batstate-u.edu.ph', 'Jade Francine', 'B.', 'Chavez'),
('21-34330', '21-34330@g.batstate-u.edu.ph', 'ewrew', 'ewrw', 'rew'),
('rwerwr', 'rwerwr@student.edu', 'werwe', 'rewr', 'werwe');

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
(10, '21-08420', 'Viewed the files of the folder with code 9DYvkdd0Mx', '2025-02-13 01:24:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0');

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
(111111, 'admin', 'MsiQs2M8oleD4BALHYk97U9PO7HO1oGsKk/6E2caWqbOiTiECGTxQ+TwuDEIJtJR', NULL, NULL, 'yes'),
(111113, 'admin2', '++cG8chEdYC/OO6yzIv1+9o3tcZqCkDO2WRRK3Dc8fijeJNulwzvve7gkZveOWqw', NULL, '21-34330', 'yes');

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
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_logs`
--
ALTER TABLE `student_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111114;

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
