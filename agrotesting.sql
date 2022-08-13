-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2022 at 02:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrotesting`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_uses`
--

CREATE TABLE `about_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_uses`
--

INSERT INTO `about_uses` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `description`, `image`) VALUES
(1, '2020-07-21 18:28:14', '2020-07-21 18:28:14', NULL, 'Madeinukrainee', 'Got me into plat 5 from gold 3, the boosters are awesome & know how to carry!', 'client1_1595330894.png'),
(2, '2020-07-21 18:29:04', '2020-07-21 18:29:04', NULL, 'Peterkwokjai', 'Very fast service. Done is a week. Has plenty of people working with him to make sure your account is done is a timely manner. Will do business again anytime.', 'client3_1595330944.png'),
(3, '2020-07-21 18:29:47', '2020-07-21 18:29:47', NULL, 'Callen', 'Great service . Plat 1 > Diamond 5 less than one day , Professional booster , work very hard , won 14/4 A++++++ recommended', 'client1_1595330987.png'),
(4, '2020-07-21 18:30:30', '2020-07-21 21:22:10', NULL, 'Killerwave', 'Great service! Very reliable, purchased a p1 to d5 boost and promos were free! Would use again', 'client2_1595341330.png');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:19:39', '2020-07-17 16:19:39'),
(2, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:33:07', '2020-07-17 16:33:07'),
(3, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 16:34:15', '2020-07-17 16:34:15'),
(4, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 16:37:23', '2020-07-17 16:37:23'),
(5, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:37:38', '2020-07-17 16:37:38'),
(6, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 16:58:27', '2020-07-17 16:58:27'),
(7, 'User', 'LoggedIn', 2, 'App\\User', 2, 'App\\User', '[]', '2020-07-17 16:59:03', '2020-07-17 16:59:03'),
(8, 'User', 'LoggedOut', 2, 'App\\User', 2, 'App\\User', '[]', '2020-07-17 16:59:26', '2020-07-17 16:59:26'),
(9, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 16:59:50', '2020-07-17 16:59:50'),
(10, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:00:31', '2020-07-17 17:00:31'),
(11, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:00:42', '2020-07-17 17:00:42'),
(12, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:02:40', '2020-07-17 17:02:40'),
(13, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:02:52', '2020-07-17 17:02:52'),
(14, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:05:17', '2020-07-17 17:05:17'),
(15, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:05:27', '2020-07-17 17:05:27'),
(16, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:05:34', '2020-07-17 17:05:34'),
(17, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:05:46', '2020-07-17 17:05:46'),
(18, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:06:56', '2020-07-17 17:06:56'),
(19, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:07:07', '2020-07-17 17:07:07'),
(20, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:08:12', '2020-07-17 17:08:12'),
(21, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:08:24', '2020-07-17 17:08:24'),
(22, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-17 17:08:33', '2020-07-17 17:08:33'),
(23, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 17:08:44', '2020-07-17 17:08:44'),
(24, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 19:00:36', '2020-07-17 19:00:36'),
(25, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:23:28', '2020-07-17 20:23:28'),
(26, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:26:38', '2020-07-17 20:26:38'),
(27, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:33:26', '2020-07-17 20:33:26'),
(28, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 20:34:13', '2020-07-17 20:34:13'),
(29, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:13:42', '2020-07-17 21:13:42'),
(30, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:21:23', '2020-07-17 21:21:23'),
(31, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:38:46', '2020-07-17 21:38:46'),
(32, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 21:39:07', '2020-07-17 21:39:07'),
(33, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-17 22:24:51', '2020-07-17 22:24:51'),
(34, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-20 14:23:55', '2020-07-20 14:23:55'),
(35, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2020-07-20 15:25:01', '2020-07-20 15:25:01'),
(36, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-20 15:25:15', '2020-07-20 15:25:15'),
(37, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-20 19:01:56', '2020-07-20 19:01:56'),
(38, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-20 21:54:01', '2020-07-20 21:54:01'),
(39, 'myuser', 'LoggedIn', 4, 'App\\User', 4, 'App\\User', '[]', '2020-07-20 22:06:38', '2020-07-20 22:06:38'),
(40, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 15:33:53', '2020-07-21 15:33:53'),
(41, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 16:56:52', '2020-07-21 16:56:52'),
(42, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-21 17:35:54', '2020-07-21 17:35:54'),
(43, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 18:22:17', '2020-07-23 18:22:17'),
(44, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 18:46:47', '2020-07-23 18:46:47'),
(45, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 18:58:29', '2020-07-23 18:58:29'),
(46, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 19:02:25', '2020-07-23 19:02:25'),
(47, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 19:07:13', '2020-07-23 19:07:13'),
(48, 'New User', 'LoggedIn', 5, 'App\\User', 5, 'App\\User', '[]', '2020-07-23 19:30:11', '2020-07-23 19:30:11'),
(49, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 20:37:56', '2020-07-23 20:37:56'),
(50, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-23 20:58:48', '2020-07-23 20:58:48'),
(51, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 18:34:16', '2020-07-24 18:34:16'),
(52, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 20:23:33', '2020-07-24 20:23:33'),
(53, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-24 20:45:13', '2020-07-24 20:45:13'),
(54, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-27 16:10:14', '2020-07-27 16:10:14'),
(55, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-28 15:57:09', '2020-07-28 15:57:09'),
(56, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-30 14:26:58', '2020-07-30 14:26:58'),
(57, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-07-30 17:03:27', '2020-07-30 17:03:27'),
(58, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-03 14:28:35', '2020-08-03 14:28:35'),
(59, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-04 23:06:42', '2020-08-04 23:06:42'),
(60, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-05 12:15:03', '2020-08-05 12:15:03'),
(61, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-05 20:18:05', '2020-08-05 20:18:05'),
(62, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-06 12:33:16', '2020-08-06 12:33:16'),
(63, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-07 13:35:39', '2020-08-07 13:35:39'),
(64, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-10 13:17:14', '2020-08-10 13:17:14'),
(65, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-19 13:51:16', '2020-08-19 13:51:16'),
(66, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:10:40', '2020-08-19 15:10:40'),
(67, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:21:00', '2020-08-19 15:21:00'),
(68, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:21:19', '2020-08-19 15:21:19'),
(69, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:21:23', '2020-08-19 15:21:23'),
(70, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:24:31', '2020-08-19 15:24:31'),
(71, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-19 15:24:52', '2020-08-19 15:24:52'),
(72, 'Moiz', 'LoggedIn', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-20 12:17:50', '2020-08-20 12:17:50'),
(73, 'Moiz', 'LoggedOut', 6, 'App\\User', 6, 'App\\User', '[]', '2020-08-20 12:18:34', '2020-08-20 12:18:34'),
(74, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-20 12:19:47', '2020-08-20 12:19:47'),
(75, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2020-08-20 20:59:53', '2020-08-20 20:59:53'),
(76, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2021-01-02 08:35:13', '2021-01-02 08:35:13'),
(77, 'Admin', 'LoggedOut', 1, 'App\\User', 1, 'App\\User', '[]', '2021-01-02 08:44:05', '2021-01-02 08:44:05'),
(78, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-01-02 08:44:25', '2021-01-02 08:44:25'),
(79, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-01-02 08:46:42', '2021-01-02 08:46:42'),
(80, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:27:00', '2021-03-23 02:27:00'),
(81, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:36:30', '2021-03-23 02:36:30'),
(82, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 02:36:39', '2021-03-23 02:36:39'),
(83, 'ATIF UR REHMAN', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 02:36:48', '2021-03-23 02:36:48'),
(84, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:37:08', '2021-03-23 02:37:08'),
(85, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:39:23', '2021-03-23 02:39:23'),
(86, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 02:39:27', '2021-03-23 02:39:27'),
(87, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:44:29', '2021-03-23 02:44:29'),
(88, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:48:13', '2021-03-23 02:48:13'),
(89, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 02:48:17', '2021-03-23 02:48:17'),
(90, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 02:51:28', '2021-03-23 02:51:28'),
(91, 'ATIF UR REHMAN', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 02:51:37', '2021-03-23 02:51:37'),
(92, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:51:44', '2021-03-23 02:51:44'),
(93, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 02:55:46', '2021-03-23 02:55:46'),
(94, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 02:55:50', '2021-03-23 02:55:50'),
(95, 'ATIF UR REHMAN', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 03:24:14', '2021-03-23 03:24:14'),
(96, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 03:24:28', '2021-03-23 03:24:28'),
(97, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 03:44:42', '2021-03-23 03:44:42'),
(98, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 03:44:45', '2021-03-23 03:44:45'),
(99, 'ATIF UR REHMAN', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 03:44:50', '2021-03-23 03:44:50'),
(100, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 03:44:59', '2021-03-23 03:44:59'),
(101, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 03:45:28', '2021-03-23 03:45:28'),
(102, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 03:45:37', '2021-03-23 03:45:37'),
(103, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 03:46:20', '2021-03-23 03:46:20'),
(104, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 03:46:24', '2021-03-23 03:46:24'),
(105, 'ATIF UR REHMAN', 'LoggedOut', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-23 08:51:07', '2021-03-23 08:51:07'),
(106, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-03-23 08:51:21', '2021-03-23 08:51:21'),
(107, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-03-27 23:02:58', '2021-03-27 23:02:58'),
(108, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-04-06 09:31:03', '2021-04-06 09:31:03'),
(109, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-04-17 05:01:39', '2021-04-17 05:01:39'),
(110, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-04-17 10:29:19', '2021-04-17 10:29:19'),
(111, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-04-17 11:00:51', '2021-04-17 11:00:51'),
(112, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-04-17 16:42:16', '2021-04-17 16:42:16'),
(113, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-06-25 09:05:00', '2021-06-25 09:05:00'),
(114, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-06-25 09:05:43', '2021-06-25 09:05:43'),
(115, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-06-25 09:08:27', '2021-06-25 09:08:27'),
(116, 'ATIF UR REHMAN', 'LoggedIn', 7, 'App\\User', 7, 'App\\User', '[]', '2021-06-25 09:08:38', '2021-06-25 09:08:38'),
(117, 'Admin', 'LoggedIn', 1, 'App\\User', 1, 'App\\User', '[]', '2021-08-06 22:35:11', '2021-08-06 22:35:11'),
(118, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-06 22:59:56', '2021-08-06 22:59:56'),
(119, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-07 08:48:26', '2021-08-07 08:48:26'),
(120, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-07 15:16:14', '2021-08-07 15:16:14'),
(121, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-07 15:21:00', '2021-08-07 15:21:00'),
(122, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-13 06:58:24', '2021-08-13 06:58:24'),
(123, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-28 13:14:24', '2021-08-28 13:14:24'),
(124, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-28 13:15:12', '2021-08-28 13:15:12'),
(125, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-28 13:15:48', '2021-08-28 13:15:48'),
(126, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-28 13:27:58', '2021-08-28 13:27:58'),
(127, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-28 14:02:12', '2021-08-28 14:02:12'),
(128, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-08-28 14:02:44', '2021-08-28 14:02:44'),
(129, 'IsmailRehman', 'LoggedOut', 8, 'App\\User', 8, 'App\\User', '[]', '2021-08-28 14:04:29', '2021-08-28 14:04:29'),
(130, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-28 14:04:42', '2021-08-28 14:04:42'),
(131, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-28 14:07:19', '2021-08-28 14:07:19'),
(132, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-30 02:15:41', '2021-08-30 02:15:41'),
(133, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-30 02:16:22', '2021-08-30 02:16:22'),
(134, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-30 02:30:22', '2021-08-30 02:30:22'),
(135, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-30 02:44:40', '2021-08-30 02:44:40'),
(136, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-30 03:32:56', '2021-08-30 03:32:56'),
(137, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-30 06:22:16', '2021-08-30 06:22:16'),
(138, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-31 01:23:28', '2021-08-31 01:23:28'),
(139, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-08-31 02:15:04', '2021-08-31 02:15:04'),
(140, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-01 01:20:52', '2021-09-01 01:20:52'),
(141, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-01 04:43:12', '2021-09-01 04:43:12'),
(142, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-01 05:51:35', '2021-09-01 05:51:35'),
(143, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-06 01:55:06', '2021-09-06 01:55:06'),
(144, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-07 06:14:12', '2021-09-07 06:14:12'),
(145, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-07 07:00:59', '2021-09-07 07:00:59'),
(146, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-07 08:25:18', '2021-09-07 08:25:18'),
(147, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-20 17:45:44', '2021-09-20 17:45:44'),
(148, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-24 23:44:40', '2021-09-24 23:44:40'),
(149, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-27 15:16:32', '2021-09-27 15:16:32'),
(150, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-28 17:43:33', '2021-09-28 17:43:33'),
(151, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-28 17:44:04', '2021-09-28 17:44:04'),
(152, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-09-28 22:57:12', '2021-09-28 22:57:12'),
(153, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-10-15 20:54:26', '2021-10-15 20:54:26'),
(154, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-10-22 16:17:06', '2021-10-22 16:17:06'),
(155, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-10-25 21:50:11', '2021-10-25 21:50:11'),
(156, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:00:53', '2021-11-02 17:00:53'),
(157, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:02:13', '2021-11-02 17:02:13'),
(158, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:02:26', '2021-11-02 17:02:26'),
(159, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:03:24', '2021-11-02 17:03:24'),
(160, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:08:54', '2021-11-02 17:08:54'),
(161, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:12:43', '2021-11-02 17:12:43'),
(162, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:12:59', '2021-11-02 17:12:59'),
(163, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 17:17:51', '2021-11-02 17:17:51'),
(164, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 18:55:25', '2021-11-02 18:55:25'),
(165, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 19:00:31', '2021-11-02 19:00:31'),
(166, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 21:26:47', '2021-11-02 21:26:47'),
(167, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 21:26:58', '2021-11-02 21:26:58'),
(168, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 21:40:21', '2021-11-02 21:40:21'),
(169, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 21:40:37', '2021-11-02 21:40:37'),
(170, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-02 22:15:57', '2021-11-02 22:15:57'),
(171, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-02 22:17:26', '2021-11-02 22:17:26'),
(172, 'IsmailRehman', 'LoggedOut', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-02 22:49:46', '2021-11-02 22:49:46'),
(173, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-02 22:49:59', '2021-11-02 22:49:59'),
(174, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-03 00:18:02', '2021-11-03 00:18:02'),
(175, 'IsmailRehman', 'LoggedOut', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-03 00:20:18', '2021-11-03 00:20:18'),
(176, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-03 13:07:08', '2021-11-03 13:07:08'),
(177, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-03 13:13:01', '2021-11-03 13:13:01'),
(178, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-03 15:03:27', '2021-11-03 15:03:27'),
(179, 'IsmailRehman', 'LoggedIn', 8, 'App\\User', 8, 'App\\User', '[]', '2021-11-03 15:47:11', '2021-11-03 15:47:11'),
(180, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-11-29 14:52:59', '2021-11-29 14:52:59'),
(181, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2021-12-21 19:37:02', '2021-12-21 19:37:02'),
(182, 'Developer', 'LoggedOut', 3, 'App\\User', 3, 'App\\User', '[]', '2021-12-21 19:37:12', '2021-12-21 19:37:12'),
(183, 'Developer', 'LoggedIn', 3, 'App\\User', 3, 'App\\User', '[]', '2022-03-11 21:17:03', '2022-03-11 21:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `ad_posts`
--

CREATE TABLE `ad_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_posts`
--

INSERT INTO `ad_posts` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`) VALUES
(1, '2021-09-01 07:08:16', '2021-09-01 07:18:12', NULL, 'upload/TestimonialImage/PqhMYUBUTIECT0HBCYufoOqqQTgLHtta1IPTAL8F.jpeg'),
(2, '2021-09-01 07:18:19', '2021-09-01 07:33:01', NULL, 'upload/TestimonialImage/qBJXdbhi3LnkVWXDBff3VVXLNsY4ABlBmdvPezYX.jpeg'),
(3, '2021-09-01 07:29:49', '2021-09-01 07:32:54', NULL, 'upload/TestimonialImage/KNmBYT490BaSHzLpirVIKuuI2OJ7kxN1a1pGrUqC.jpeg'),
(4, '2021-09-01 07:34:09', '2021-09-01 07:34:51', NULL, 'upload/TestimonialImage/G1gQtdmsYGxTyN5N1xmSjz0bTMUT03XajmKgVqTz.jpeg'),
(5, '2021-09-01 07:35:30', '2021-09-28 23:11:29', NULL, 'upload/TestimonialImage/uxfrgc6NUNc8lvE9Lh7F5Wv6ykctsmizUvmchUwC.jpeg'),
(6, '2021-09-28 23:02:28', '2021-09-28 23:16:15', '2021-09-28 23:16:15', 'upload/TestimonialImage/WfyUHMOGHMgfbJPl16afZ0Sla8OgXmyfJ2H7lp15.jpeg'),
(7, '2021-09-28 23:11:41', '2021-09-28 23:16:20', '2021-09-28 23:16:20', 'upload/TestimonialImage/sBK8W53o7AXKomV6MVg57LsGHxHJXnresYkbSWgD.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `bests`
--

CREATE TABLE `bests` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bests`
--

INSERT INTO `bests` (`id`, `created_at`, `updated_at`, `title`, `description`) VALUES
(1, '2020-07-24 20:25:48', '2020-07-24 20:25:48', 'Anonymous Boosting', 'We have real reviews spanning multiple sites such as EpicNPC so you know you are dealing with a trusted service.'),
(2, '2020-07-24 20:26:27', '2020-07-24 20:26:27', 'Profession ELO Booster', 'We have real reviews spanning multiple sites such as Epic NPC so you know you are dealing with a trusted service.'),
(3, '2020-07-24 20:26:59', '2020-07-24 20:26:59', 'Verified Reviews', 'We have real reviews spanning multiple sites such as EpicNPC so you know you are dealing with a trusted service.');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `user_id`, `title`, `slug`, `content`, `image`, `views`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'My first blog', 'my-first-blog', '<p>Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor, erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.  <br> <br> Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor, erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.\n</p>\n', NULL, 0, '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(2, 2, 1, 'My Second blog', 'my-second-blog', '<p>Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut atlis. Aliquam erat volutpat.  <br> <br> Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipisci semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.<br><br>mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas. tincidunt sed enim. Sed et felis metus.\n</p>\n', NULL, 0, '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Love', 'love', '2020-07-17 15:23:08', '2020-07-17 15:23:08', NULL),
(2, 'Hate', 'hate', '2020-07-17 15:23:08', '2020-07-17 15:23:08', NULL),
(3, 'Inspiration', 'inspiration', '2020-07-17 15:23:08', '2020-07-17 15:23:09', NULL),
(4, 'Friends', 'friends', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(5, 'Motivational', 'motivational', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, '2021-03-23 03:51:45', '2021-03-23 03:51:45', NULL, 'massey-ferguson-tractors'),
(2, '2021-03-23 03:52:05', '2021-03-23 03:52:05', NULL, 'new-holland-tractors'),
(3, '2021-03-23 03:52:41', '2021-03-23 03:52:41', NULL, 'ford-tractors'),
(4, '2021-03-23 03:52:56', '2021-03-23 03:52:56', NULL, 'IMT Bull Power Tractors'),
(8, '2021-08-07 09:05:46', '2021-08-07 09:05:46', NULL, 'farm-implements');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_datas`
--

CREATE TABLE `contact_form_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tractor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `implement1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `implement2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_form_datas`
--

INSERT INTO `contact_form_datas` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `email`, `number`, `country`, `tractor`, `implement1`, `implement2`, `message`) VALUES
(1, '2021-08-31 06:14:15', '2021-08-31 06:14:15', NULL, 'test', 'testing@gmail.com', '00000000000', 'pakistan', 'MF 240 (50HP - 2WD)', 'Select Option', 'Select Option', NULL),
(2, '2021-09-01 06:51:52', '2021-09-01 06:51:52', NULL, NULL, NULL, NULL, 'Sindh,Pakistan', 'Select Tractor', 'Select Option', 'Select Option', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_lists`
--

CREATE TABLE `country_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_lists`
--

INSERT INTO `country_lists` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `link`, `description`) VALUES
(1, '2021-03-23 04:06:08', '2021-09-01 06:34:18', NULL, 'Bostwana', 'bw', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" /> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"Massey Ferguson Tractors for Sale in Botswana. We Export Brand New and premium quality Massey Ferguson Tractors, New Holland, Ford, and IMT Tractors to Botswana. MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding MF tractors in Botswana\"/> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\" /> <m'),
(2, '2021-03-23 04:06:20', '2021-03-23 04:06:20', NULL, 'Ghana', 'gh', NULL),
(3, '2021-03-23 04:06:33', '2021-09-01 06:37:27', NULL, 'Kenya', 'ke', '<meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />  <script type=\"application/ld+json\"> 	{ 	\"@context\":\"http://www.schema.org\", 	\"@type\":\"LocalBusiness\", 	\"priceRange\":\"$8000 - $15000\", 	\"telephone\":\" +92-317-000-1715 	\", 	\"name\":\"Agro Asia Tractors Kenya\", 	\"url\":\" https://www.agroasiatractors.com/ke/\", 	\"logo\":\"https://www.agroasiatractors.com/assets/images/logo.jpg\", 	\"image\":\" https://www.agroasiatractors.com/images/Kenya-Banner-01.jpg \", 	\"description\":\"Massey Ferguson Kenya: Brand New Massey Ferguson Tractors for sale in Kenya, mainly in Mombasa, Nakuru, Eldoret, and Nairobi. Our Brand New Massey Ferguson Tractors prices in Kenya are affordable. We are the topmost Tractor Dealers & company in Kenya; also offer New Holland Tractors for Sale in Kenya.\", 	\"address\": 	{ 	\"@type\":\"PostalAddress\", 	\"streetAddress\":\" NO.2 Mogotio Rd\", 	\"addressLocality\":\" Nairobi\", 	\"addressRegion\":\"Kenya\", 	\"postalCode\":\"00100\", 	\"addressCountry\":\"ke\"}, 	 	\"geo\": 	{ 	\"@type\":\"GeoCoordinates\", 	\"latitude\":\"-1.28333\", 	\"longitude\":\"36.81667.\" 	 	} 	} 	 	</script>   <script type=\"application/ld+json\"> 	 	{ 	 	\"@context\": \"http://schema.org/\", 	 	\"@type\": \"product\", 	 	\"name\": \"agroasiatractors.com\", 	 	\"image\": \"https://www.agroasiatractors.com/images/logo.jpg\", 	 	\"aggregateRating\": { 	 	\"@type\": \"AggregateRating\", 	 	\"ratingValue\": \"4.9\", 	 	\"ratingCount\": \"339\" 	 	} 	 	} 	 	</script>'),
(4, '2021-03-23 04:06:54', '2021-09-01 06:38:14', NULL, 'Uganda', 'ug', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Tractors for sale in Uganda - Massey Ferguson Tractors for sale in Uganda\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/ug/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"Massey Ferguson Tractors for sale in Uganda. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements are available in our Stock for Sale in Uganda at Discounted Price. \" /> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for sale in Uganda. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements are available in our Stock for Sale in Uganda at Discounted Price. \" />  <meta name=\"twitter:domain\" content=\"agroasiatractors.com\" /> <meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" /> <meta name=\"twitter:description\" content=\"Massey Ferguson Tractors for sale in Uganda. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements are available in our Stock for Sale in Uganda at Discounted Price.\" /> <meta name=\"twitter:image\" content=\"Agroasia Tractors\" /> <meta itemprop=\"image\" content=\"/images/logo.jpg\" />  <!--Bing webmaster tools--> <meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" /> <!--Bing webmaster tools-->  <!--Schema Data-->'),
(5, '2021-03-23 04:07:05', '2021-09-01 06:39:56', NULL, 'Nigeria', 'ng', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" /> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\"/> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Brand New Massey Ferguson Tractors for Sale in Nigeria - New Holland, Ford, and IMT Tractors Nigeria\" /> <meta name=\"twitter:domain\" content=\"agroasiatractors.com\" /> <meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" /> <meta name=\"twitter:description\" content=\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\"/> <meta name=\"twitter:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" /> <meta itemprop=\"image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />  <!--Bing webmaster tools--> <meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" /> <!--Bing webmaster tools-->  <!--Google WebMaster-->  <meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />  <script type=\"application/ld+json\">  {  \"@context\": \"http://schema.org/\",  \"@type\": \"product\",  \"name\": \"agroasiatractors.com\",  \"image\": \"https://www.agroasiatractors.com/images/logo.jpg\",  \"aggregateRating\": {  \"@type\": \"AggregateRating\",  \"ratingValue\": \"4.9\",  \"ratingCount\": \"210\"  }  }  </script>   <script type=\"application/ld+json\"> {     \"@context\":\"http://www.schema.org\",     \"@type\":\"LocalBusiness\",     \"priceRange\":\"$8000 - $15000\",     \"telephone\":\" +92-317-000-1715 \",     \"name\":\"Agro Asia Tractors Nigeria\",     \"url\":\" https://www.agroasiatractors.com/ng/\",     \"logo\":\"https://www.agroasiatractors.com/assets/images/logo.jpg\",     \"image\":\"https://www.agroasiatractors.com/images/Nigeria-Banner-01.jpg\",     \"description\":\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\",     \"address\":     {         \"@type\":\"PostalAddress\",     \"streetAddress\":\"10 Borno St\",     \"addressLocality\":\"Garki\",     \"addressRegion\":\"abuja\",     \"postalCode\":\"900001\",     \"addressCountry\":\"ng\"},          \"geo\":     {         \"@type\":\"GeoCoordinates\",         \"latitude\":\"9.072264\",         \"longitude\":\"7.491302.\"              } }        </script>'),
(6, '2021-03-23 04:08:10', '2021-09-01 06:40:36', NULL, 'Tanzania', 'tz', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Brand New Massey Ferguson Tractors for Sale in Tanzania - Find Best MF Tractors\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/tn/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"AgroAsia Tractor is a perfect place for Farmers & Tractor Dealers in Tanzania to Get Massey Ferguson, New Holland, Ford, IMT, Belarus, and Ursus Tractors, For more WhatsApp: +92 3170001715 OR +92 3170001572.\" /> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Brand New Massey Ferguson Tractors for Sale in Tanzania - Find Best MF Tractors\" /> <meta name=\"twitter:domain\" content=\"agroasiatractors.com\" /> <meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" /> <meta name=\"twitter:description\" content=\"AgroAsia Tractor is a perfect place for Farmers & Tractor Dealers in Tanzania to Get Massey Ferguson, New Holland, Ford, IMT, Belarus, and Ursus Tractors, For more WhatsApp: +92 3170001715 OR +92 3170001572.\" /> <meta name=\"twitter:image\" content=\"Agroasia Tractors\" /> <meta itemprop=\"image\" content=\"/images/logo.jpg\" />  <!--Bing webmaster tools--> <meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" /> <!--Bing webmaster tools-->'),
(7, '2021-03-23 04:08:26', '2021-09-01 06:41:44', NULL, 'Zambia', 'zm', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Tractors for sale in Zambia | Massey Ferguson Tractors for sale in Zambia\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/zm/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"Massey Ferguson Tractors for sale in Zambia. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements  are available in our Stock  for Sale in Zambia at affordable price\" /> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Tractors for sale in Zambia | Massey Ferguson Tractors for sale in Zambia\" /> <meta name=\"twitter:domain\" content=\"agroasiatractors.com\" /> <meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" /> <meta name=\"twitter:description\" content=\"Massey Ferguson Tractors for sale in Zambia. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements  are available in our Stock  for Sale in Zambia at affordable price\" /> <meta name=\"twitter:image\" content=\"Agroasia Tractors\" /> <meta itemprop=\"image\" content=\"/images/logo.jpg\" />  <!--Bing webmaster tools--> <meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" /> <!--Bing webmaster tools-->'),
(8, '2021-03-23 04:08:40', '2021-09-01 06:42:23', NULL, 'Zimbabwe', 'zw', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Brand New Massey Ferguson Tractors for Sale in Zimbabwe - Discounts & Special Offers 2019\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/zw/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"You Want to buy Agricultural Tractor? AgroAsia Tractors a most dominant Tractor Company offers Brand New & Used Massey Ferguson Tractors for Sale in Zimbabwe.For Special Offers & Discounts WhatsApp: +92 3170001715 OR +92 3170001572\" /> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Brand New Massey Ferguson Tractors for Sale in Zimbabwe - Discounts & Special Offers 2019\" /> <meta name=\"twitter:domain\" content=\"agroasiatractors.com\" /> <meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" /> <meta name=\"twitter:description\" content=\"You Want to buy Agricultural Tractor? AgroAsia Tractors a most dominant Tractor Company offers Brand New & Used Massey Ferguson Tractors for Sale in Zimbabwe.For Special Offers & Discounts WhatsApp: +92 3170001715 OR +92 3170001572\" /> <meta name=\"twitter:image\" content=\"Agroasia Tractors\" /> <meta itemprop=\"image\" content=\"/images/logo.jpg\" />  <!--Bing webmaster tools--> <meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" /> <!--Bing webmaster tools-->'),
(9, '2021-03-23 04:09:10', '2021-09-01 06:43:30', NULL, 'Lesotho', 'ls', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Lesotho - 24/7 Customer Support\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/ls/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"AgroAsia Tractors:Brand New & Used Massey Ferguson Tractors for Sale in Maseru, Teyateyaneng, Mafeteng, Hlotse, Mohale\'s Hoek, Maputsoe, Qacha\'s Nek, Quthing, Butha-Buthe, Mokhotlong and Thaba-Tseka. For Special &  Discounts Offers WhatsApp: +92 3170001715 OR +92 3170001572.\" /> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Lesotho - 24/7 Customer Support\" /> <meta name=\"twitter:domain\" content=\"agroasiatractors.com\" /> <meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" /> <meta name=\"twitter:description\" content=\"AgroAsia Tractors:Brand New & Used Massey Ferguson Tractors for Sale in Maseru, Teyateyaneng, Mafeteng, Hlotse, Mohale\'s Hoek, Maputsoe, Qacha\'s Nek, Quthing, Butha-Buthe, Mokhotlong and Thaba-Tseka. For Special &  Discounts Offers WhatsApp: +92 3170001715 OR +92 3170001572.\" /> <meta name=\"twitter:image\" content=\"Agroasia Tractors\" /> <meta itemprop=\"image\" content=\"/images/logo.jpg\" />  <!--Bing webmaster tools--> <meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" /> <!--Bing webmaster tools-->'),
(12, '2021-03-23 04:09:42', '2021-09-01 06:43:02', NULL, 'South Africa', 'sa', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Botswana -  Used & New MF Tractors 2019\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/bw/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"AgroAsia Tractors: A successful Agricultural Tractor Company and Dealers in Botswana which provides New & Used Massey Ferguson Tractors for Sale, also have a huge stock of New Holland & Ford Tractors\" /> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Botswana -  Used & New MF Tractors 2019\" /> <meta name=\"twitter:domain\" content=\"agroasiatractors.com\" /> <meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" /> <meta name=\"twitter:description\" content=\"AgroAsia Tractors: A successful Agricultural Tractor Company and Dealers in Botswana which provides New & Used Massey Ferguson Tractors for Sale, also have huge stock of New Holland & Ford Tractors\" /> <meta name=\"twitter:image\" content=\"Agroasia Tractors\" /> <meta itemprop=\"image\" content=\"https://www.agroasiatractors.com/za/images/logo.jpg\" />  <!--Bing webmaster tools--> <meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" /> <!--Bing webmaster tools-->'),
(17, '2021-09-01 06:31:15', '2021-09-01 06:31:41', '2021-09-01 06:31:41', 'test', 't', '<!--Open Graph Tags-->  <meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\"/> <meta property=\"og:type\" content=\"website\" /> <meta property=\"og:url\" content=\"https://www.agroasiatractors.com/\"/> <meta property=\"og:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" /> <meta property=\"og:image:width\" content=\"147\" /> <meta property=\"og:image:height\" content=\"160\" /> <meta property=\"og:site_name\" content=\"Agroasia Tractors\" />  <meta property=\"og:description\" content=\"Massey Ferguson Tractors for Sale in Botswana. We Export Brand New and premium quality Massey Ferguson Tractors, New Holland, Ford, and IMT Tractors to Botswana. MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding MF tractors in Botswana\"/> <meta name=\"twitter:card\" content=\"summary_large_image\" /> <meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\" /> <m');

-- --------------------------------------------------------

--
-- Table structure for table `cows`
--

CREATE TABLE `cows` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `cow_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `per_liter_expect` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiryforms`
--

CREATE TABLE `enquiryforms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiryforms`
--

INSERT INTO `enquiryforms` (`id`, `created_at`, `updated_at`, `deleted_at`, `model`, `QTY`, `name`, `number`, `email`, `country`, `message`) VALUES
(1, '2021-08-31 05:54:11', '2021-08-31 05:54:11', NULL, 'MF 240 (50HP - 2WD)', 1, 'test', '00000000000', 'testing@gmail.com', 'pakistan', NULL),
(2, '2021-08-31 05:54:59', '2021-08-31 05:54:59', NULL, 'MF 240 (50HP - 2WD)', 1, 'test', '00000000000', 'testing@gmail.com', 'pakistan', NULL),
(3, '2022-08-12 18:33:07', '2022-08-12 18:33:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tractor_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `created_at`, `updated_at`, `deleted_at`, `admin_id`, `tractor_slug`, `question`, `answer`, `status`) VALUES
(1, '2021-08-07 12:00:06', '2021-08-07 12:23:55', '2021-08-07 12:23:55', '3', 'mf-240', 'sdf', 'dsaf', '1'),
(3, '2021-08-31 01:50:20', '2021-08-31 01:55:47', NULL, '3', 'mf-240', 'Which Steering type MF 240 Tractor has?', 'Manual Mechanical Steering', '1'),
(4, '2021-08-31 01:50:37', '2021-08-31 01:50:37', NULL, '3', 'mf-240', 'Which FRONT AXLE type MF 240 Tractor has?', 'Box Section, Adjustable', '1'),
(5, '2021-08-31 01:50:52', '2021-08-31 01:50:52', NULL, '3', 'mf-240', 'What type of brake system does MF-240 has?', 'Outboard Drum Brakes', '1'),
(6, '2021-08-31 01:51:22', '2021-08-31 01:51:22', NULL, '3', 'mf-240', 'What is the transmission of MF-240?', 'Transmission is a sliding spur with 8 forward and 2 reverse gears.', '1'),
(7, '2021-08-31 01:51:39', '2021-08-31 01:51:39', NULL, '3', 'mf-240', 'What size is the tires of MF-240?', 'Front tire, 6.00-16, and Rear tire, 12.4/11-28', '1'),
(8, '2021-08-31 01:51:54', '2021-08-31 01:51:54', NULL, '3', 'mf-240', 'What type of clutch does MF-240 has?', 'Dual Clutch.', '1'),
(9, '2021-08-31 01:52:10', '2021-08-31 01:52:10', NULL, '3', 'mf-240', 'What type of engine MF-240 has?', 'Perkins, AD-3,1524.', '1'),
(10, '2021-08-31 01:52:25', '2021-08-31 01:52:25', NULL, '3', 'mf-240', 'What type of filters are there in MF-240?', 'Air Pre-Cleaner,Air Cleaner and Fuel filter', '1'),
(11, '2021-08-31 01:52:40', '2021-08-31 01:52:40', NULL, '3', 'mf-240', 'How much is the fuel tank capacity in MF-240?', '47.5Liter', '1'),
(12, '2021-08-31 01:52:57', '2021-08-31 01:52:57', NULL, '3', 'mf-240', 'How much is the lifting capacity in MF-240?', '1415 kg with lower links horizontal.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1','','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `created_at`, `updated_at`, `admin_id`, `path`, `status`) VALUES
(8, '2021-09-06 01:55:49', '2021-09-06 01:55:49', '3', 'upload/Gallery/bX18dW3NxCN3WCJYfyAExlOMRxyjpOUYTaG4JPkr.mp4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `get_touch_datas`
--

CREATE TABLE `get_touch_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `get_touch_datas`
--

INSERT INTO `get_touch_datas` (`id`, `created_at`, `updated_at`, `deleted_at`, `f_name`, `l_name`, `email`, `number`, `message`) VALUES
(1, '2021-09-07 07:12:06', '2021-09-07 07:12:06', NULL, 'd', 'a', 'testing@gmail.com', '00000000000', 'test 123'),
(2, '2021-09-07 08:24:53', '2021-09-07 08:24:53', NULL, 'd', 'a', 'testing@gmail.com', '00000000000', 'test 123');

-- --------------------------------------------------------

--
-- Table structure for table `header_scripts`
--

CREATE TABLE `header_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `country_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0','','') COLLATE utf8mb4_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_scripts`
--

INSERT INTO `header_scripts` (`id`, `created_at`, `updated_at`, `deleted_at`, `admin_id`, `country_slug`, `tags`, `status`) VALUES
(1, '2021-08-07 11:01:51', '2021-08-07 11:29:45', '2021-08-07 11:29:45', 3, 'Bostwana', 'Testing Testing TestingTesting Testing TestingTesting Testing TestingTesting Testing Testing', '1'),
(2, '2021-08-07 11:31:01', '2021-09-07 06:16:05', '2021-09-07 06:16:05', 3, 'Kenya', 'Testing', '1'),
(3, '2021-08-07 12:00:48', '2021-09-07 06:16:09', '2021-09-07 06:16:09', 3, 'Ghana', 'dfgsf', '1'),
(4, '2021-09-07 06:17:32', '2021-09-07 06:21:19', '2021-09-07 06:21:19', 3, 'Bostwana', '<meta name=\"title\" content=\"Tractors for Sale in Botswana - Massey Ferguson Tractors in Botswana\">\r\n<meta name=\"description\" content=\"Massey Ferguson Tractors for sale in Botswana. We offers Brand New Massey Ferguson Tractors such as Massey Ferguson MF 240. Massey Ferguson MF 260, Massey Ferguson MF 290, Massey Ferguson MF 375, Massey Ferguson MF 385, Massey Ferguson MF 350, and Massey Ferguson MF 360.\"/>\r\n\r\n<link rel=\"canonical\" href=\"https://www.agroasiatractors.com/bw/\" />\r\n<link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"Massey Ferguson Tractors for Sale in Botswana. We Export Brand New and premium quality Massey Ferguson Tractors, New Holland, Ford, and IMT Tractors to Botswana. MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding MF tractors in Botswana\"/>\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"Massey Ferguson Tractors for Sale in Botswana.We Export Brand New and premium quality Massey Ferguson Tractors, New Holland, Ford, and IMT Tractors to Botswana. MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding MF tractors in Botswana\"/>\r\n<meta name=\"twitter:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n<meta itemprop=\"image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n\r\n\r\n<script type=\"application/ld+json\">\r\n{\r\n    \"@context\":\"http://www.schema.org\",\r\n    \"@type\":\"LocalBusiness\",\r\n    \"priceRange\":\"$8000 - $15000\",\r\n    \"telephone\":\" +92-317-000-1715\r\n\",\r\n    \"name\":\"AgroAsia Tractors Botswana\",\r\n    \"url\":\" https://www.agroasiatractors.com/bw/\",\r\n    \"logo\":\"https://www.agroasiatractors.com/assets/images/logo.jpg\",\r\n    \"image\":\" https://www.agroasiatractors.com/images/Botswana-banner-01.jpg\",\r\n    \"description\":\" Massey Ferguson Tractors for sale in Botswana. We Export Brand New Massey Ferguson Tractors, New Holland Tractors, Ford Tractors, and IMT Tractors to Botswana. Massey Ferguson MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding Agricultural Tractors in Botswana.\",\r\n    \"address\":\r\n    {\r\n        \"@type\":\"PostalAddress\",\r\n    \"streetAddress\":\"Block 8, Plot 37513\",\r\n    \"addressLocality\":\"Khiding Cres\",\r\n    \"addressRegion\":\"Gaborone\",\r\n    \"postalCode\":\"00000\",\r\n    \"addressCountry\":\"bw\"},\r\n    \r\n    \"geo\":\r\n    {\r\n        \"@type\":\"GeoCoordinates\",\r\n        \"latitude\":\" -24.6142544\",\r\n        \"longitude\":\" 25.9125482\"\r\n        \r\n    },\"hasMap\":\"https://www.google.com/maps/place/AgroAsia+Tractors+(Massey+Ferguson+Tractors)/@-24.6142544,25.9125482,17z/data=!4m5!3m4!1s0x1ebb5b284a5f403f:0x22e6e97f6a859c7b!8m2!3d-24.6142593!4d25.9147369\",\"openingHours\":\"Mo, Tu, We, Th, Fr, Sa, Su 08:00-20:00\",\"contactPoint\":{\"@type\":\"ContactPoint\",\"contactType\":\"customer support\",\"telephone\":\" +92-317-000-1715\r\n\" }\r\n}\r\n}\r\n    \r\n  </script>\r\n  \r\n  \r\n\r\n\r\n\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->\r\n\r\n<!--Google WebMaster-->\r\n\r\n<meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />\r\n\r\n<!--Google WebMaster-->', '1'),
(5, '2021-09-07 06:21:38', '2021-09-07 06:21:38', NULL, 3, 'bw', '<meta name=\"title\" content=\"Tractors for Sale in Botswana - Massey Ferguson Tractors in Botswana\">\r\n<meta name=\"description\" content=\"Massey Ferguson Tractors for sale in Botswana. We offers Brand New Massey Ferguson Tractors such as Massey Ferguson MF 240. Massey Ferguson MF 260, Massey Ferguson MF 290, Massey Ferguson MF 375, Massey Ferguson MF 385, Massey Ferguson MF 350, and Massey Ferguson MF 360.\"/>\r\n\r\n<link rel=\"canonical\" href=\"https://www.agroasiatractors.com/bw/\" />\r\n<link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"Massey Ferguson Tractors for Sale in Botswana. We Export Brand New and premium quality Massey Ferguson Tractors, New Holland, Ford, and IMT Tractors to Botswana. MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding MF tractors in Botswana\"/>\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Botswana - New Holland, Ford, and IMT Tractors Botswana\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"Massey Ferguson Tractors for Sale in Botswana.We Export Brand New and premium quality Massey Ferguson Tractors, New Holland, Ford, and IMT Tractors to Botswana. MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding MF tractors in Botswana\"/>\r\n<meta name=\"twitter:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n<meta itemprop=\"image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n\r\n\r\n<script type=\"application/ld+json\">\r\n{\r\n    \"@context\":\"http://www.schema.org\",\r\n    \"@type\":\"LocalBusiness\",\r\n    \"priceRange\":\"$8000 - $15000\",\r\n    \"telephone\":\" +92-317-000-1715\r\n\",\r\n    \"name\":\"AgroAsia Tractors Botswana\",\r\n    \"url\":\" https://www.agroasiatractors.com/bw/\",\r\n    \"logo\":\"https://www.agroasiatractors.com/assets/images/logo.jpg\",\r\n    \"image\":\" https://www.agroasiatractors.com/images/Botswana-banner-01.jpg\",\r\n    \"description\":\" Massey Ferguson Tractors for sale in Botswana. We Export Brand New Massey Ferguson Tractors, New Holland Tractors, Ford Tractors, and IMT Tractors to Botswana. Massey Ferguson MF 240, MF 260, MF 290, MF 350, MF 375 and MF 385 are the most demanding Agricultural Tractors in Botswana.\",\r\n    \"address\":\r\n    {\r\n        \"@type\":\"PostalAddress\",\r\n    \"streetAddress\":\"Block 8, Plot 37513\",\r\n    \"addressLocality\":\"Khiding Cres\",\r\n    \"addressRegion\":\"Gaborone\",\r\n    \"postalCode\":\"00000\",\r\n    \"addressCountry\":\"bw\"},\r\n    \r\n    \"geo\":\r\n    {\r\n        \"@type\":\"GeoCoordinates\",\r\n        \"latitude\":\" -24.6142544\",\r\n        \"longitude\":\" 25.9125482\"\r\n        \r\n    },\"hasMap\":\"https://www.google.com/maps/place/AgroAsia+Tractors+(Massey+Ferguson+Tractors)/@-24.6142544,25.9125482,17z/data=!4m5!3m4!1s0x1ebb5b284a5f403f:0x22e6e97f6a859c7b!8m2!3d-24.6142593!4d25.9147369\",\"openingHours\":\"Mo, Tu, We, Th, Fr, Sa, Su 08:00-20:00\",\"contactPoint\":{\"@type\":\"ContactPoint\",\"contactType\":\"customer support\",\"telephone\":\" +92-317-000-1715\r\n\" }\r\n}\r\n}\r\n    \r\n  </script>\r\n  \r\n  \r\n\r\n\r\n\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->\r\n\r\n<!--Google WebMaster-->\r\n\r\n<meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />\r\n\r\n<!--Google WebMaster-->', '1'),
(6, '2021-09-07 06:28:18', '2021-09-07 06:28:18', NULL, 3, 'ke', '<meta name=\"description\" content=\"Massey Ferguson Kenya: Brand New Massey Ferguson Tractors for sale in Kenya, mainly in Mombasa, Nakuru, Eldoret, and Nairobi. Our Brand New Massey Ferguson Tractors prices in Kenya are affordable. We are the topmost Tractor Dealers & company in Kenya; also offer New Holland Tractors for Sale in Kenya.\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n\r\n<meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />\r\n\r\n<script type=\"application/ld+json\">\r\n	{\r\n	\"@context\":\"http://www.schema.org\",\r\n	\"@type\":\"LocalBusiness\",\r\n	\"priceRange\":\"$8000 - $15000\",\r\n	\"telephone\":\" +92-317-000-1715\r\n	\",\r\n	\"name\":\"Agro Asia Tractors Kenya\",\r\n	\"url\":\" https://www.agroasiatractors.com/ke/\",\r\n	\"logo\":\"https://www.agroasiatractors.com/assets/images/logo.jpg\",\r\n	\"image\":\" https://www.agroasiatractors.com/images/Kenya-Banner-01.jpg \",\r\n	\"description\":\"Massey Ferguson Kenya: Brand New Massey Ferguson Tractors for sale in Kenya, mainly in Mombasa, Nakuru, Eldoret, and Nairobi. Our Brand New Massey Ferguson Tractors prices in Kenya are affordable. We are the topmost Tractor Dealers & company in Kenya; also offer New Holland Tractors for Sale in Kenya.\",\r\n	\"address\":\r\n	{\r\n	\"@type\":\"PostalAddress\",\r\n	\"streetAddress\":\" NO.2 Mogotio Rd\",\r\n	\"addressLocality\":\" Nairobi\",\r\n	\"addressRegion\":\"Kenya\",\r\n	\"postalCode\":\"00100\",\r\n	\"addressCountry\":\"ke\"},\r\n	\r\n	\"geo\":\r\n	{\r\n	\"@type\":\"GeoCoordinates\",\r\n	\"latitude\":\"-1.28333\",\r\n	\"longitude\":\"36.81667.\"\r\n	\r\n	}\r\n	}\r\n	\r\n	</script>\r\n\r\n\r\n<script type=\"application/ld+json\">\r\n	\r\n	{\r\n	\r\n	\"@context\": \"http://schema.org/\",\r\n	\r\n	\"@type\": \"product\",\r\n	\r\n	\"name\": \"agroasiatractors.com\",\r\n	\r\n	\"image\": \"https://www.agroasiatractors.com/images/logo.jpg\",\r\n	\r\n	\"aggregateRating\": {\r\n	\r\n	\"@type\": \"AggregateRating\",\r\n	\r\n	\"ratingValue\": \"4.9\",\r\n	\r\n	\"ratingCount\": \"339\"\r\n	\r\n	}\r\n	\r\n	}\r\n	\r\n	</script>\r\n   <link rel=\"canonical\" href=\"https://www.agroasiatractors.com/ke/\"/>\r\n   <link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Kenya | New Holland Tractors in Kenya\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/ke/\"/>\r\n<meta property=\"og:image\" content=\"/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"Massey Ferguson Tractors for sale in Kenya: We export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240, and MF 360. As a leading Agricultural Tractor dealers & company in Kenya, we also offer New Holland Tractors for Sale in Kenya at an affordable price.\" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Kenya | New Holland Tractors in Kenya\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"Massey Ferguson Tractors for sale in Kenya: We export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240, and MF 360. As a leading Agricultural Tractor dealers & company in Kenya, we also offer New Holland Tractors for Sale in Kenya at an affordable price.\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->', '1'),
(7, '2021-09-07 06:29:19', '2021-09-07 06:29:19', NULL, 3, 'gh', '<meta name=\"description\" content=\"Brand New Massey Ferguson Tractors for Sale in Ghana: We are Best Massey Ferguson Tractors Dealers & company in Ghana. Our Massey Ferguson tractor prices in Ghana are discounted. Massey Ferguson MF 240. Massey Ferguson MF 260, Massey Ferguson MF 290, Massey Ferguson MF 375, Massey Ferguson MF 385, Massey Ferguson MF 350, and Massey Ferguson MF 360\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n\r\n<script type=\"application/ld+json\"> \r\n	{ \r\n	\"@context\": \"https://schema.org/\", \r\n	\"@type\": \"Product\", \r\n	\"name\": \"Massey Ferguson Tractors for Sale in Ghana\", \r\n	\"image\": \"https://www.agroasiatractors.com/images/Ghana-Banner-01.jpg\", \r\n	\"description\": \"Brand New Massey Ferguson Tractors for Sale in Ghana: We are the top- Notch New Holland Tractors & Massey Ferguson Tractors dealers & company in Ghana. We have ready stock of MF 240. MF 260, MF 290, MF 375, MF 385, MF 350, and MF 360 to Export to Ghana.\", \r\n	\"brand\": \"agroasiatractors.com\", \r\n	\"aggregateRating\": { \r\n	\"@type\": \"AggregateRating\", \r\n	\"ratingValue\": \"4.8\", \r\n	\"reviewCount\": \"155\" \r\n	} \r\n	} \r\n	</script>\r\n\r\n\r\n  <link rel=\"canonical\" href=\"https://www.agroasiatractors.com/gh/\" />\r\n\r\n  <link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Tractors for Sale in Ghana – Massey Ferguson Tractors in Ghana\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/gh/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"Brand New Massey Ferguson Tractors for Sale in Ghana: We are Best Massey Ferguson Tractors Dealers & company in Ghana. Our Massey Ferguson tractor prices in Ghana are discounted. .\" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Tractors for Sale in Ghana – Massey Ferguson Tractors in Ghana\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"Brand New Massey Ferguson Tractors for Sale in Ghana: We are Best Massey Ferguson Tractors Dealers & company in Ghana. Our Massey Ferguson tractor prices in Ghana are discounted.\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"/images/logo.jpg\" />\r\n\r\n\r\n\r\n<!--Schema Data-->', '1'),
(8, '2021-09-07 06:29:58', '2021-09-07 06:29:58', NULL, 3, 'ug', '<meta name=\"description\" content=\"Massey Ferguson Tractors for sale in Uganda. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements are available in our Stock for Sale in Uganda at Discounted Price.\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n  <meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />\r\n\r\n	  <link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Tractors for sale in Uganda - Massey Ferguson Tractors for sale in Uganda\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/ug/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"Massey Ferguson Tractors for sale in Uganda. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements are available in our Stock for Sale in Uganda at Discounted Price. \" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for sale in Uganda. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements are available in our Stock for Sale in Uganda at Discounted Price. \" />\r\n\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"Massey Ferguson Tractors for sale in Uganda. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements are available in our Stock for Sale in Uganda at Discounted Price.\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->', '1'),
(9, '2021-09-07 06:30:45', '2021-09-07 06:30:45', NULL, 3, 'ng', '<meta name=\"title\" content=\"Tractors for Sale in Nigeria - Massey Ferguson Tractors for Sale in Nigeria\">\r\n<meta name=\"description\" content=\"Tractors for sale in Nigeria:  Brand New Massey Ferguson Tractors for Sale in Nigeria. Our Tractor prices in Nigeria are discounted for Massey Ferguson MF 375, Massey Ferguson MF 385, Massey Ferguson MF 260, Massey Ferguson MF 290, Massey Ferguson MF 350, Massey Ferguson MF 240, and Massey Ferguson MF360. As a top Agricultural Tractor company and dealers in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\"/>\r\n\r\n\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\"/>\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Brand New Massey Ferguson Tractors for Sale in Nigeria - New Holland, Ford, and IMT Tractors Nigeria\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\"/>\r\n<meta name=\"twitter:image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n<meta itemprop=\"image\" content=\"https://www.agroasiatractors.com/assets/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->\r\n\r\n<!--Google WebMaster-->\r\n\r\n<meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />\r\n\r\n<script type=\"application/ld+json\">\r\n\r\n{\r\n\r\n\"@context\": \"http://schema.org/\",\r\n\r\n\"@type\": \"product\",\r\n\r\n\"name\": \"agroasiatractors.com\",\r\n\r\n\"image\": \"https://www.agroasiatractors.com/images/logo.jpg\",\r\n\r\n\"aggregateRating\": {\r\n\r\n\"@type\": \"AggregateRating\",\r\n\r\n\"ratingValue\": \"4.9\",\r\n\r\n\"ratingCount\": \"210\"\r\n\r\n}\r\n\r\n}\r\n\r\n</script>\r\n\r\n\r\n<script type=\"application/ld+json\">\r\n{\r\n    \"@context\":\"http://www.schema.org\",\r\n    \"@type\":\"LocalBusiness\",\r\n    \"priceRange\":\"$8000 - $15000\",\r\n    \"telephone\":\" +92-317-000-1715\r\n\",\r\n    \"name\":\"Agro Asia Tractors Nigeria\",\r\n    \"url\":\" https://www.agroasiatractors.com/ng/\",\r\n    \"logo\":\"https://www.agroasiatractors.com/assets/images/logo.jpg\",\r\n    \"image\":\"https://www.agroasiatractors.com/images/Nigeria-Banner-01.jpg\",\r\n    \"description\":\"Brand New Massey Ferguson Tractors for sale in Nigeria. We Export Brand New Massey Ferguson Tractors Models such as MF 375, MF 385, MF 260, MF 290, MF 350, MF 240 and MF360. As a top Agricultural Tractor company in Nigeria, we also offer New Holland Tractors for Sale in Nigeria at an affordable price.\",\r\n    \"address\":\r\n    {\r\n        \"@type\":\"PostalAddress\",\r\n    \"streetAddress\":\"10 Borno St\",\r\n    \"addressLocality\":\"Garki\",\r\n    \"addressRegion\":\"abuja\",\r\n    \"postalCode\":\"900001\",\r\n    \"addressCountry\":\"ng\"},\r\n    \r\n    \"geo\":\r\n    {\r\n        \"@type\":\"GeoCoordinates\",\r\n        \"latitude\":\"9.072264\",\r\n        \"longitude\":\"7.491302.\"\r\n        \r\n    }\r\n}\r\n    \r\n  </script>\r\n\r\n\r\n\r\n\r\n\r\n\r\n<!--Google WebMaster-->\r\n\r\n<link rel=\"canonical\" href=\"https://www.agroasiatractors.com/ng/\" />\r\n<link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />', '1');
INSERT INTO `header_scripts` (`id`, `created_at`, `updated_at`, `deleted_at`, `admin_id`, `country_slug`, `tags`, `status`) VALUES
(10, '2021-09-07 06:32:08', '2021-09-07 06:32:08', NULL, 3, 'tz', '<meta name=\"description\" content=\"AgroAsia Tractor is a perfect place for Farmers & Tractor Dealers in Tanzania to Get Massey Ferguson, New Holland, Ford, IMT, Belarus, and Ursus Tractors, For more WhatsApp: +92 3170001715 OR +92 3170001572.\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n\r\n<link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Brand New Massey Ferguson Tractors for Sale in Tanzania - Find Best MF Tractors\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/tn/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"AgroAsia Tractor is a perfect place for Farmers & Tractor Dealers in Tanzania to Get Massey Ferguson, New Holland, Ford, IMT, Belarus, and Ursus Tractors, For more WhatsApp: +92 3170001715 OR +92 3170001572.\" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Brand New Massey Ferguson Tractors for Sale in Tanzania - Find Best MF Tractors\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"AgroAsia Tractor is a perfect place for Farmers & Tractor Dealers in Tanzania to Get Massey Ferguson, New Holland, Ford, IMT, Belarus, and Ursus Tractors, For more WhatsApp: +92 3170001715 OR +92 3170001572.\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->', '1'),
(11, '2021-09-07 06:32:52', '2021-09-07 06:32:52', NULL, 3, 'zm', '<meta name=\"description\" content=\"Massey Ferguson Tractors for sale in Zambia. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements  are available in our Stock  for Sale in Zambia at affordable price\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n<meta name=\"google-site-verification\" content=\"wc-0vS4iBhUjediQLG6dmYsIbbOq3XywGumiIxJKMgU\" />\r\n	  \r\n	  \r\n	  <link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Tractors for sale in Zambia | Massey Ferguson Tractors for sale in Zambia\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/zm/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"Massey Ferguson Tractors for sale in Zambia. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements  are available in our Stock  for Sale in Zambia at affordable price\" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Tractors for sale in Zambia | Massey Ferguson Tractors for sale in Zambia\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"Massey Ferguson Tractors for sale in Zambia. Brand New Massey Ferguson tractors and New Holland Tractors with Farm Implements  are available in our Stock  for Sale in Zambia at affordable price\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->', '1'),
(12, '2021-09-07 06:33:33', '2021-09-07 06:33:33', NULL, 3, 'zw', '<meta name=\"description\" content=\"You Want to buy Agricultural Tractor? AgroAsia Tractors a most dominant Tractor Company offers Brand New & Used Massey Ferguson Tractors for Sale in Zimbabwe.For Special Offers & Discounts WhatsApp: +92 3170001715 OR +92 3170001572..\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n<meta name=\"robots\" content=\"noindex\" />\r\n\r\n\r\n   <link rel=\"canonical\" href=\"https://www.agroasiatractors.com/zw/\" />\r\n   \r\n   <link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n      <META NAME=\"ROBOTS\" CONTENT=\"NOINDEX, NOFOLLOW\">\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Brand New Massey Ferguson Tractors for Sale in Zimbabwe - Discounts & Special Offers 2019\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/zw/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"You Want to buy Agricultural Tractor? AgroAsia Tractors a most dominant Tractor Company offers Brand New & Used Massey Ferguson Tractors for Sale in Zimbabwe.For Special Offers & Discounts WhatsApp: +92 3170001715 OR +92 3170001572\" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Brand New Massey Ferguson Tractors for Sale in Zimbabwe - Discounts & Special Offers 2019\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"You Want to buy Agricultural Tractor? AgroAsia Tractors a most dominant Tractor Company offers Brand New & Used Massey Ferguson Tractors for Sale in Zimbabwe.For Special Offers & Discounts WhatsApp: +92 3170001715 OR +92 3170001572\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->', '1'),
(13, '2021-09-07 06:34:16', '2021-09-07 06:34:16', NULL, 3, 'sa', '<meta name=\"description\" content=\"AgroAsia Tractors: A successful Agricultural Tractor Company and Dealers in Botswana which provides New & Used Massey Ferguson Tractors for Sale, also have huge stock of New Holland & Ford Tractors.\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n<link rel=\"canonical\" href=\"https://www.agroasiatractors.com/za/\" />\r\n   \r\n   <link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Botswana -  Used & New MF Tractors 2019\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/bw/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"AgroAsia Tractors: A successful Agricultural Tractor Company and Dealers in Botswana which provides New & Used Massey Ferguson Tractors for Sale, also have a huge stock of New Holland & Ford Tractors\" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Botswana -  Used & New MF Tractors 2019\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"AgroAsia Tractors: A successful Agricultural Tractor Company and Dealers in Botswana which provides New & Used Massey Ferguson Tractors for Sale, also have huge stock of New Holland & Ford Tractors\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"https://www.agroasiatractors.com/za/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->', '1'),
(14, '2021-09-07 06:35:05', '2021-09-07 06:35:05', NULL, 3, 'ls', '<meta name=\"description\" content=\"AgroAsia Tractors:Brand New & Used Massey Ferguson Tractors for Sale in Maseru, Teyateyaneng, Mafeteng, Hlotse, Mohale\'s Hoek, Maputsoe, Qacha\'s Nek, Quthing, Butha-Buthe, Mokhotlong and Thaba-Tseka. For Special &  Discounts Offers WhatsApp: +92 3170001715 OR +92 3170001572.\r\n\"/>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n<meta name=\"robots\" content=\"noindex\" />\r\n   <link rel=\"canonical\" href=\"https://www.agroasiatractors.com/ls/\" />\r\n      <META NAME=\"ROBOTS\" CONTENT=\"NOINDEX, NOFOLLOW\">\r\n	  \r\n	  <link rel=\"alternate\" hreflang=\"x-default\" href=\"https://www.agroasiatractors.com/\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bw/\" hreflang=\"en-bw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ke/\" hreflang=\"en-ke\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ug/\" hreflang=\"en-ug\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gh/\" hreflang=\"en-gh\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ng/\" hreflang=\"en-ng\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/fg/\" hreflang=\"en-fg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bf/\" hreflang=\"en-bf\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tn/\" hreflang=\"en-tn\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bo/\" hreflang=\"en-bo\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/sl/\" hreflang=\"en-sl\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ci/\" hreflang=\"en-ci\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lr/\" hreflang=\"en-lr\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ma/\" hreflang=\"en-ma\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dz/\" hreflang=\"en-dz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/ye/\" hreflang=\"en-ye\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tg/\" hreflang=\"en-tg\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bi/\" hreflang=\"en-bi\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cd/\" hreflang=\"en-cd\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/gm/\" hreflang=\"en-gm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/qa/\" hreflang=\"en-qa\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zw/\" hreflang=\"en-zw\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/to/\" hreflang=\"en-to\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/nz/\" hreflang=\"en-nz\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/cm/\" hreflang=\"en-cm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/au/\" hreflang=\"en-au\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/jm/\" hreflang=\"en-jm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/bs/\" hreflang=\"en-bs\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/dm/\" hreflang=\"en-dm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/lc/\" hreflang=\"en-lc\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/tt/\" hreflang=\"en-tt\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/zm/\" hreflang=\"en-zm\" />\r\n<link rel=\"alternate\" href=\"https://www.agroasiatractors.com/za/\" hreflang=\"en-za\" />\r\n\r\n\r\n\r\n<!--Open Graph Tags-->\r\n\r\n<meta property=\"og:title\" content=\"Massey Ferguson Tractors for Sale in Lesotho - 24/7 Customer Support\"/>\r\n<meta property=\"og:type\" content=\"website\" />\r\n<meta property=\"og:url\" content=\"https://www.agroasiatractors.com/ls/\"/>\r\n<meta property=\"og:image\" content=\"https://www.agroasiatractors.com/images/logo.jpg\"/>\r\n<meta property=\"og:image:width\" content=\"147\" />\r\n<meta property=\"og:image:height\" content=\"160\" />\r\n<meta property=\"og:site_name\" content=\"Agroasia Tractors\" />\r\n\r\n<meta property=\"og:description\" content=\"AgroAsia Tractors:Brand New & Used Massey Ferguson Tractors for Sale in Maseru, Teyateyaneng, Mafeteng, Hlotse, Mohale\'s Hoek, Maputsoe, Qacha\'s Nek, Quthing, Butha-Buthe, Mokhotlong and Thaba-Tseka. For Special &  Discounts Offers WhatsApp: +92 3170001715 OR +92 3170001572.\" />\r\n<meta name=\"twitter:card\" content=\"summary_large_image\" />\r\n<meta name=\"twitter:site\" content=\"Massey Ferguson Tractors for Sale in Lesotho - 24/7 Customer Support\" />\r\n<meta name=\"twitter:domain\" content=\"agroasiatractors.com\" />\r\n<meta name=\"twitter:title\" content=\"@AgroAsiaTractor\" />\r\n<meta name=\"twitter:description\" content=\"AgroAsia Tractors:Brand New & Used Massey Ferguson Tractors for Sale in Maseru, Teyateyaneng, Mafeteng, Hlotse, Mohale\'s Hoek, Maputsoe, Qacha\'s Nek, Quthing, Butha-Buthe, Mokhotlong and Thaba-Tseka. For Special &  Discounts Offers WhatsApp: +92 3170001715 OR +92 3170001572.\" />\r\n<meta name=\"twitter:image\" content=\"Agroasia Tractors\" />\r\n<meta itemprop=\"image\" content=\"/images/logo.jpg\" />\r\n\r\n<!--Bing webmaster tools-->\r\n<meta name=\"msvalidate.01\" content=\"7EA2AEB37226221DAAE0C8A12C212553\" />\r\n<!--Bing webmaster tools-->\r\n\r\n<!--Schema Data-->\r\n\r\n\r\n<!--Schema Data-->', '1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_193651_create_roles_permissions_tables', 1),
(4, '2018_06_15_045804_create_profiles_table', 1),
(5, '2018_06_15_092930_create_social_accounts_table', 1),
(6, '2018_06_16_054705_create_activity_log_table', 1),
(7, '2018_06_27_072626_create_blog_module', 1),
(8, '2020_03_20_050141_create_failed_jobs_table', 1),
(9, '2020_07_17_094804_create_testings_table', 2),
(10, '2020_07_20_072752_create_news_table', 3),
(11, '2020_07_20_073506_create_news_table', 4),
(12, '2020_07_20_073841_create_news_table', 5),
(13, '2020_07_20_082749_create_news_table', 6),
(14, '2020_07_20_145845_create_categories_table', 7),
(15, '2020_07_21_083742_create_categories_table', 8),
(16, '2020_07_21_085604_create_e_l_o__boosters_table', 9),
(17, '2020_07_21_091528_create_games_table', 10),
(18, '2020_07_21_091920_create_game_details_table', 11),
(19, '2020_07_21_092259_create_game_options_table', 12),
(20, '2020_07_21_092554_create_testimonials_table', 13),
(21, '2020_07_21_093120_create_orders_table', 14),
(22, '2020_07_21_093642_create_order_account_details_table', 15),
(23, '2020_07_21_095223_create_payment_details_table', 16),
(24, '2020_07_21_104147_create_about_uses_table', 16),
(25, '2020_07_21_105148_create_payment_details_table', 17),
(26, '2020_07_21_130530_create_expertise_levels_table', 18),
(27, '2020_07_23_122132_create_services_table', 19),
(28, '2020_07_23_131731_create_services_table', 20),
(29, '2020_07_23_133028_create_services_table', 21),
(30, '2020_07_24_132418_create_bests_table', 22),
(31, '2020_07_27_122059_create_game_levels_table', 23),
(32, '2020_07_30_103506_create_game_regions_table', 24),
(33, '2020_08_03_105019_create_game_roles_table', 25),
(34, '2021_03_23_023552_create_tractors_table', 26),
(35, '2021_03_23_025530_create_tractors_table', 27),
(36, '2021_03_23_034246_create_brands_table', 28),
(37, '2021_03_23_034439_create_country_lists_table', 29),
(38, '2021_08_07_112155_create_seo_tags_table', 30),
(39, '2021_08_07_113309_create_header_scripts_table', 31),
(40, '2021_08_07_123802_create_faqs_table', 32),
(41, '2021_08_07_134217_create_testimonails_table', 33),
(42, '2021_08_07_135611_create_testimonials_table', 34),
(43, '2021_08_07_145847_create_galleries_table', 35),
(44, '2021_08_07_163224_create_milk_rates_table', 36),
(45, '2021_08_07_165215_create_cows_table', 37),
(46, '2021_08_31_104403_create_enquiryforms_table', 38),
(47, '2021_08_31_110742_create_contact_form_datas_table', 39),
(48, '2021_09_01_115738_create_ad_posts_table', 40),
(49, '2021_09_07_120344_create_get_touch_datas_table', 41),
(50, '2021_11_02_111940_create_water_marks_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `milk_rates`
--

CREATE TABLE `milk_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `milk_rates`
--

INSERT INTO `milk_rates` (`id`, `created_at`, `updated_at`, `deleted_at`, `date`, `price`) VALUES
(1, '2021-08-07 15:36:40', '2021-08-07 15:43:00', '2021-08-07 15:43:00', '2021-08-07', '12'),
(2, '2021-08-07 15:43:08', '2021-08-07 15:47:21', NULL, '2021-08-07', '123');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `description`, `image`) VALUES
(1, '2020-07-20 16:09:45', '2020-07-21 22:52:01', '2020-07-21 22:52:01', 'Gaming Machine', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ipsa recusandae explicabo atque facilis dolorem labore deserunt modi ex. Aliquam amet incidunt ex quis illum. Accusamus a nesciunt enim reiciendis.', 'testimonialleft_1595334642.png'),
(2, '2020-07-20 16:11:12', '2020-07-21 22:49:20', NULL, 'ELO Boost News: Jayce in the LCS', 'Recently, lightning has rained down upon the Rift all over the world of Summoner. But while', 'new2_1595346560.png'),
(3, '2020-07-20 16:11:42', '2020-07-21 22:50:17', NULL, 'Top 9 Ways to Display True LOL Sportsmanship', 'Top 9 Ways to Display True LOL Sportsmanship Most people enjoy a bit of harmless banter', 'new3_1595346617.png'),
(4, '2020-07-20 17:21:09', '2020-07-21 22:48:28', NULL, 'ELO Boost News: Jayce in the LCS', 'Recently, lightning has rained down upon the Rift all over the world of Summoner. But while', 'new2_1595346508.png'),
(5, '2020-07-20 18:40:43', '2020-07-21 22:51:29', NULL, 'ELO Boost News: Jayce in the LCS', 'Recently, lightning has rained down upon the Rift all over the world of Summoner. But while', 'h2_1595346689.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'All Permission', NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(2, 'add-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(3, 'view-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(4, 'edit-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(5, 'delete-blog', NULL, '2020-07-17 15:23:07', '2020-07-17 15:23:07'),
(6, 'add-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(7, 'view-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(8, 'edit-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(9, 'delete-blog-category', NULL, '2020-07-17 15:23:08', '2020-07-17 15:23:08'),
(10, 'add-testing', NULL, '2020-07-17 16:48:05', '2020-07-17 16:48:05'),
(11, 'edit-testing', NULL, '2020-07-17 16:48:05', '2020-07-17 16:48:05'),
(12, 'view-testing', NULL, '2020-07-17 16:48:05', '2020-07-17 16:48:05'),
(13, 'delete-testing', NULL, '2020-07-17 16:48:06', '2020-07-17 16:48:06'),
(14, 'add-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(15, 'edit-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(16, 'view-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(17, 'delete-news', NULL, '2020-07-20 14:27:53', '2020-07-20 14:27:53'),
(18, 'add-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(19, 'edit-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(20, 'view-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(21, 'delete-category', NULL, '2020-07-20 21:58:46', '2020-07-20 21:58:46'),
(22, 'add-elo-booster', NULL, '2020-07-21 15:56:04', '2020-07-21 15:56:04'),
(23, 'edit-elo-booster', NULL, '2020-07-21 15:56:04', '2020-07-21 15:56:04'),
(24, 'view-elo-booster', NULL, '2020-07-21 15:56:05', '2020-07-21 15:56:05'),
(25, 'delete-elo-booster', NULL, '2020-07-21 15:56:05', '2020-07-21 15:56:05'),
(26, 'add-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(27, 'edit-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(28, 'view-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(29, 'delete-game', NULL, '2020-07-21 16:15:29', '2020-07-21 16:15:29'),
(30, 'add-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(31, 'edit-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(32, 'view-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(33, 'delete-gamedetail', NULL, '2020-07-21 16:19:21', '2020-07-21 16:19:21'),
(34, 'add-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(35, 'edit-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(36, 'view-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(37, 'delete-gameoptions', NULL, '2020-07-21 16:23:00', '2020-07-21 16:23:00'),
(38, 'add-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(39, 'edit-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(40, 'view-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(41, 'delete-testimonials', NULL, '2020-07-21 16:25:55', '2020-07-21 16:25:55'),
(42, 'add-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(43, 'edit-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(44, 'view-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(45, 'delete-orders', NULL, '2020-07-21 16:31:21', '2020-07-21 16:31:21'),
(46, 'add-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(47, 'edit-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(48, 'view-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(49, 'delete-orderaccountdetail', NULL, '2020-07-21 16:36:43', '2020-07-21 16:36:43'),
(50, 'add-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(51, 'edit-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(52, 'view-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(53, 'delete-aboutus', NULL, '2020-07-21 17:41:48', '2020-07-21 17:41:48'),
(54, 'add-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(55, 'edit-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(56, 'view-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(57, 'delete-paymentdetail', NULL, '2020-07-21 17:51:48', '2020-07-21 17:51:48'),
(58, 'add-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(59, 'edit-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(60, 'view-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(61, 'delete-expertiselevel', NULL, '2020-07-21 20:05:31', '2020-07-21 20:05:31'),
(62, 'add-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(63, 'edit-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(64, 'view-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(65, 'delete-service', NULL, '2020-07-23 19:21:33', '2020-07-23 19:21:33'),
(66, 'add-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(67, 'edit-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(68, 'view-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(69, 'delete-best', NULL, '2020-07-24 20:24:20', '2020-07-24 20:24:20'),
(70, 'add-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(71, 'edit-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(72, 'view-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(73, 'delete-gamelevel', NULL, '2020-07-27 19:21:00', '2020-07-27 19:21:00'),
(74, 'add-gameregion', NULL, '2020-07-30 17:35:07', '2020-07-30 17:35:07'),
(75, 'edit-gameregion', NULL, '2020-07-30 17:35:07', '2020-07-30 17:35:07'),
(76, 'view-gameregion', NULL, '2020-07-30 17:35:08', '2020-07-30 17:35:08'),
(77, 'delete-gameregion', NULL, '2020-07-30 17:35:08', '2020-07-30 17:35:08'),
(78, 'add-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(79, 'edit-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(80, 'view-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(81, 'delete-gameroles', NULL, '2020-08-03 17:50:21', '2020-08-03 17:50:21'),
(82, 'add-tractor', NULL, '2021-03-23 02:35:53', '2021-03-23 02:35:53'),
(83, 'edit-tractor', NULL, '2021-03-23 02:35:53', '2021-03-23 02:35:53'),
(84, 'view-tractor', NULL, '2021-03-23 02:35:53', '2021-03-23 02:35:53'),
(85, 'delete-tractor', NULL, '2021-03-23 02:35:53', '2021-03-23 02:35:53'),
(86, 'add-brand', NULL, '2021-03-23 03:42:46', '2021-03-23 03:42:46'),
(87, 'edit-brand', NULL, '2021-03-23 03:42:46', '2021-03-23 03:42:46'),
(88, 'view-brand', NULL, '2021-03-23 03:42:46', '2021-03-23 03:42:46'),
(89, 'delete-brand', NULL, '2021-03-23 03:42:46', '2021-03-23 03:42:46'),
(90, 'add-countrylist', NULL, '2021-03-23 03:44:39', '2021-03-23 03:44:39'),
(91, 'edit-countrylist', NULL, '2021-03-23 03:44:39', '2021-03-23 03:44:39'),
(92, 'view-countrylist', NULL, '2021-03-23 03:44:39', '2021-03-23 03:44:39'),
(93, 'delete-countrylist', NULL, '2021-03-23 03:44:39', '2021-03-23 03:44:39'),
(102, 'add-headerscript', NULL, '2021-08-07 10:33:10', '2021-08-07 10:33:10'),
(103, 'edit-headerscript', NULL, '2021-08-07 10:33:10', '2021-08-07 10:33:10'),
(104, 'view-headerscript', NULL, '2021-08-07 10:33:10', '2021-08-07 10:33:10'),
(105, 'delete-headerscript', NULL, '2021-08-07 10:33:10', '2021-08-07 10:33:10'),
(106, 'add-faq', NULL, '2021-08-07 11:38:02', '2021-08-07 11:38:02'),
(107, 'edit-faq', NULL, '2021-08-07 11:38:02', '2021-08-07 11:38:02'),
(108, 'view-faq', NULL, '2021-08-07 11:38:02', '2021-08-07 11:38:02'),
(109, 'delete-faq', NULL, '2021-08-07 11:38:02', '2021-08-07 11:38:02'),
(110, 'add-testimonails', NULL, '2021-08-07 12:42:17', '2021-08-07 12:42:17'),
(111, 'edit-testimonails', NULL, '2021-08-07 12:42:17', '2021-08-07 12:42:17'),
(112, 'view-testimonails', NULL, '2021-08-07 12:42:17', '2021-08-07 12:42:17'),
(113, 'delete-testimonails', NULL, '2021-08-07 12:42:17', '2021-08-07 12:42:17'),
(114, 'add-testimonial', NULL, '2021-08-07 12:56:12', '2021-08-07 12:56:12'),
(115, 'edit-testimonial', NULL, '2021-08-07 12:56:12', '2021-08-07 12:56:12'),
(116, 'view-testimonial', NULL, '2021-08-07 12:56:12', '2021-08-07 12:56:12'),
(117, 'delete-testimonial', NULL, '2021-08-07 12:56:12', '2021-08-07 12:56:12'),
(118, 'add-gallery', NULL, '2021-08-07 13:58:48', '2021-08-07 13:58:48'),
(119, 'edit-gallery', NULL, '2021-08-07 13:58:48', '2021-08-07 13:58:48'),
(120, 'view-gallery', NULL, '2021-08-07 13:58:48', '2021-08-07 13:58:48'),
(121, 'delete-gallery', NULL, '2021-08-07 13:58:48', '2021-08-07 13:58:48'),
(122, 'add-milkrate', NULL, '2021-08-07 15:32:24', '2021-08-07 15:32:24'),
(123, 'edit-milkrate', NULL, '2021-08-07 15:32:24', '2021-08-07 15:32:24'),
(124, 'view-milkrate', NULL, '2021-08-07 15:32:24', '2021-08-07 15:32:24'),
(125, 'delete-milkrate', NULL, '2021-08-07 15:32:24', '2021-08-07 15:32:24'),
(126, 'add-cow', NULL, '2021-08-07 15:52:15', '2021-08-07 15:52:15'),
(127, 'edit-cow', NULL, '2021-08-07 15:52:15', '2021-08-07 15:52:15'),
(128, 'view-cow', NULL, '2021-08-07 15:52:15', '2021-08-07 15:52:15'),
(129, 'delete-cow', NULL, '2021-08-07 15:52:15', '2021-08-07 15:52:15'),
(130, 'add-enquiryform', NULL, '2021-08-31 05:44:04', '2021-08-31 05:44:04'),
(131, 'edit-enquiryform', NULL, '2021-08-31 05:44:04', '2021-08-31 05:44:04'),
(132, 'view-enquiryform', NULL, '2021-08-31 05:44:05', '2021-08-31 05:44:05'),
(133, 'delete-enquiryform', NULL, '2021-08-31 05:44:05', '2021-08-31 05:44:05'),
(134, 'add-contactformdata', NULL, '2021-08-31 06:07:42', '2021-08-31 06:07:42'),
(135, 'edit-contactformdata', NULL, '2021-08-31 06:07:42', '2021-08-31 06:07:42'),
(136, 'view-contactformdata', NULL, '2021-08-31 06:07:42', '2021-08-31 06:07:42'),
(137, 'delete-contactformdata', NULL, '2021-08-31 06:07:42', '2021-08-31 06:07:42'),
(138, 'add-adpost', NULL, '2021-09-01 06:57:39', '2021-09-01 06:57:39'),
(139, 'edit-adpost', NULL, '2021-09-01 06:57:39', '2021-09-01 06:57:39'),
(140, 'view-adpost', NULL, '2021-09-01 06:57:39', '2021-09-01 06:57:39'),
(141, 'delete-adpost', NULL, '2021-09-01 06:57:39', '2021-09-01 06:57:39'),
(142, 'add-gettouchdata', NULL, '2021-09-07 07:03:45', '2021-09-07 07:03:45'),
(143, 'edit-gettouchdata', NULL, '2021-09-07 07:03:45', '2021-09-07 07:03:45'),
(144, 'view-gettouchdata', NULL, '2021-09-07 07:03:45', '2021-09-07 07:03:45'),
(145, 'delete-gettouchdata', NULL, '2021-09-07 07:03:45', '2021-09-07 07:03:45'),
(146, 'add-watermark', NULL, '2021-11-02 17:19:40', '2021-11-02 17:19:40'),
(147, 'edit-watermark', NULL, '2021-11-02 17:19:40', '2021-11-02 17:19:40'),
(148, 'view-watermark', NULL, '2021-11-02 17:19:40', '2021-11-02 17:19:40'),
(149, 'delete-watermark', NULL, '2021-11-02 17:19:40', '2021-11-02 17:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(82, 1),
(82, 4),
(83, 1),
(83, 4),
(84, 1),
(84, 4),
(85, 1),
(85, 4),
(86, 1),
(86, 4),
(87, 1),
(87, 4),
(88, 1),
(88, 4),
(89, 1),
(89, 4),
(90, 1),
(90, 4),
(91, 1),
(91, 4),
(92, 1),
(92, 4),
(93, 1),
(93, 4),
(102, 4),
(103, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(114, 4),
(115, 4),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(132, 4),
(136, 4),
(138, 4),
(139, 4),
(140, 4),
(141, 4),
(146, 2),
(146, 4),
(147, 2),
(148, 2),
(148, 4),
(149, 2);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`, `gender`, `dob`, `pic`, `country`, `state`, `city`, `address`, `postal`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(3, 3, 'Developer', 'male', '1995-07-31', 'ryrMbia8WI.png', 'Pakistan', 'Sindh', 'Karachi', 'Hyderabad', '70010', '2020-07-17 16:39:45', '2021-10-25 21:50:52'),
(4, 4, 'Testing', 'male', NULL, 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-20 22:06:17', '2020-07-20 22:06:17'),
(5, 5, 'testing', 'male', '1995-07-31', 'no_avatar.jpg', NULL, NULL, NULL, NULL, NULL, '2020-07-23 19:28:44', '2020-07-23 19:28:44'),
(6, 7, 'CEO', 'male', '1996-06-22', 'sHMrX8O2Z0.jpeg', 'Pakistan', 'Karachi', 'Karachi', NULL, NULL, '2021-03-23 02:29:39', '2021-03-23 05:10:38'),
(7, 8, 'Its a simple User', 'male', NULL, 'FeOzFHSKTq.jpeg', 'Pakistan', 'Sindh', 'karachi', 'House no d563', '75200', '2021-08-28 14:01:57', '2021-08-28 14:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(2, 'user', NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06'),
(4, 'developer', NULL, '2021-01-02 08:42:39', '2021-01-02 08:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(1, 7),
(2, 2),
(2, 4),
(2, 5),
(2, 6),
(2, 8),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'App\\Blog', NULL, NULL, NULL),
(2, 1, 'App\\Blog', NULL, NULL, NULL),
(3, 1, 'App\\Blog', NULL, NULL, NULL),
(4, 2, 'App\\Blog', NULL, NULL, NULL),
(5, 2, 'App\\Blog', NULL, NULL, NULL),
(6, 2, 'App\\Blog', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'first blog', 'first-blog', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(2, 'new blog', 'new-blog', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(3, 'love', 'love', '2020-07-17 15:23:09', '2020-07-17 15:23:09', NULL),
(4, 'second blog', 'second-blog', '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL),
(5, 'new one', 'new-one', '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL),
(6, ' another blog', 'another-blog', '2020-07-17 15:23:10', '2020-07-17 15:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `created_at`, `updated_at`, `deleted_at`, `admin_id`, `image_path`, `name`, `address`, `comment`) VALUES
(3, '2021-08-07 13:46:11', '2021-08-31 03:57:39', '2021-08-31 03:57:39', NULL, 'TestimonialImage/lAyrY9LQ9xt0tCcohgiLk6zvt2P3qDa2BY4rJJqm.png', 'Ismail Rehman', 'House no d563', 'testing 123'),
(4, '2021-08-31 03:58:56', '2021-08-31 04:06:41', NULL, '3', 'upload/TestimonialImage/DMY8Ma90PrhuwzwEwVbXnDCDrUBrkm8XAqncj4ge.jpeg', 'LODIVICKY RAYMOND LUKUMAY', 'Tanzania', 'Thank you AgroAsia, I have received my Shipment in Excelent condition, Your service was great. I am really happy that i chose you guys for my tractor and implements. ..'),
(5, '2021-08-31 04:08:34', '2021-08-31 04:08:34', NULL, '3', 'upload/TestimonialImage/VeluiP7ta7dnDz4QrTQJ1SaS7Tm5BPEYqkwqjKkl.jpeg', 'Phelemo Ubbie', 'Business Personal at Gaborone, Botswana', 'I would simply say that you guys are best. I am really happy that i chose you guys for my tractor and implements. Their after sales support is brilliant and the way they are conducting business really impressed me..'),
(6, '2021-08-31 04:09:49', '2021-08-31 04:09:49', NULL, '3', 'upload/TestimonialImage/LdFIW43dzP04FRMPZcn1JAXrKEU8rjPINgln6dLF.jpeg', 'RONALD KIPCHIRCHIR KIBETT', 'Business Personal at Nairobi Kenya', 'I ordered my New Holland 7056 in May and it was delivered to me in June. The process was very smooth and the Tractor is in very good condition, i was kept up to date from payment till delivery. Very well Done AgroAsia - I am happy that you delivered your promise');

-- --------------------------------------------------------

--
-- Table structure for table `tractors`
--

CREATE TABLE `tractors` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technical_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mannual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) NOT NULL,
  `tractor_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2','','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tractors`
--

INSERT INTO `tractors` (`id`, `admin_id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `feature_description`, `technical_description`, `mannual`, `brand_id`, `tractor_slug`, `status`) VALUES
(60, 3, '2021-08-30 03:47:40', '2021-09-01 04:32:58', NULL, 'MF 240 (50HP - 2WD)', 'Massey Ferguson MF-240 tractors have high fuel efficiency, powerful engine, and versatility. MF 240 tractor prices are the most economical for its 50HP and qualities. If you want a compact size tractor to fulfill all your farming needs, search for Massey Ferguson MF-240 for sale. MF-240 tractors are used and recommended by many farmers.', 'Most economical in 50 HP range.!!\r\nRugged and sturdy.!!\r\nCompact size.!!\r\nIdeal, versatile, all round tractor. !!    \r\nSpring suspension deluxe Seat.!!', 'MF 240 Tractors Technical Specifications are known to be best for farming purposes. It’s a 50HP tractor with a powerful engine of Perkins, AD-3,1524, it’s engine speed at 540 PTO rpm is 1789 rpm. MF-240 Transmission is of great strength with 8 forward and 2 reverse gears. It has a dual-clutch to ensure smoother transmission with outboard drum brakes and manual mechanical steering for heavy-duty and better driving control.!!\r\n!!\r\n\r\n\r\nMF-240 Hydraulic System roles are Draft Control, Position Control, Response Control, Continuous Pumping with maximum oil flow of 16 liters/min, and lifting capacity of 1415 kg.', 'upload/TractorMannuals/pfy533hETDvkI4lqACmw7A5g3kg5g9Fb3eZgSXXe.pdf', 1, 'mf-240', '1'),
(61, 3, '2021-08-30 03:52:28', '2021-09-01 04:35:29', NULL, 'MF 350 Plus (50HP - 2WD)', 'Brand New MF 350 is 50 HP 2WD Tractors manufactured by Massey Ferguson Paksitan which is 50 HP and offered with hydrostatic power steering enabling the driver to have smooth operation during its working. It carries the same specifications as Brand New MF 350 plus and is widely acclaimed by the farmers in Africa', NULL, 'It has a 25l 3 cylinders’ direct injection engine.!!\r\nCarries 8 forward and 2 Reverse gears transmission system.!!\r\nGross weight of 1,940 KGs with 2,022 mm wheel base.!!\r\nDual Clutch type with diameter of 305x254MM.!!\r\nCAT I & II Lower Links with Interchangeable Balls.!!\r\nOut board Drum Breaks with hand lever operated parking breaks.!!\r\nFUEL TANK OF 45 Liters with 36 Liters of Hydraulic oil.!!\r\n35 mm diameter PTO Shaft with 1789 RPM.!!\r\n12Volts Battery with 2.2 KW starter motor.!!\r\nComes with Top Link, standard toolbox. !!', 'upload/TractorMannuals/ivMWqpc7EXceoqZLeUTmyQ3DQN7xtNCQjiiW0Ybb.pdf', 1, 'mf-350-plus', '1'),
(62, 3, '2021-08-30 03:56:42', '2021-09-01 04:36:50', NULL, 'MF 260 Turbo (60HP - 2WD)', 'Massey Ferguson MF 260 Tractor is a widely preferred model as it is a fuel-efficient,eco-friendlyand high performing tractor.MF-260 tractor emits less smoke due to itsless fuel consumptionwith excellent quality features, that’s why people always look for MF-260 tractor for sale,for all kinds of farming needs.MF 260 Tractor Priceis very reasonable and MF 260 Tractor reviews are always great from its satisfied customers.', 'Massey Ferguson 260 Tractor features are as follows:!!\r\n\r\nTurbocharged engine.!!\r\nHigh performance, Fuel Efficient, Diesel Turbocharged Engine.!!\r\nLess Smoke Emission due to Better Fuel Burning.!!\r\nOil Cooler Added for Effective Cooling.!!\r\nHigh PTO Power for Efficient Operation of tube Wells, Rotavators, Threshers, etc.!!\r\nEfficient Oil Immersed Multi-Disc Brakes.!!\r\nSpring Suspension Deluxe Seat.!!', 'MF 260 Tractors Technical Specifications are, It’s a 60HP tractor with a turbocharged engine of Perkins, T 3.1524, it’s engine speed at 540 PTO rpm is 1789 rpm. MF-260 Transmission is of great strength with 8 forward and 2 reverse gears. It has a dual-clutch with Robust Straddle Rear Axle to ensure smoother transmission with Oil immersed Multi-Disc Mechanical Brakes and Manual Steeringfor enhanced driving control\r\n\r\n\r\nMF-260 Hydraulic System roles are Draft Control, Position Control, Response Co', 'upload/TractorMannuals/h2pZVgpq5QzYplErhP0OJ6hBKhtEVu7Yq2PT8l1L.pdf', 1, 'mf-260', '1'),
(63, 3, '2021-08-30 04:05:18', '2021-09-01 04:39:04', NULL, 'MF 360 Turbo (60HP - 2WD)', 'Brand New MF 360 is an upgraded version of MF 260 as it comes with hydrostatic Power steering and other added features for the farmers who prefer the easy maneuvering in the field. It is 60 HP turbocharged engine which is widely preferred by the farmers all around the globe. The technical specification of Brand New MF 360 are listed as below', NULL, 'it carries Turbo charged Diesel Engine!!\r\nHydrostatic power steering added comfort for driver!!\r\nwater and oil cooled mechanism to maintain optimum temperature!!\r\nlonger wheel base for greater power pulling!!\r\nMaximum Road speed of 28Km/hr!!\r\n10 gear transmission :8 forward and 2 reverse!!\r\nGross weight of 2100 Kgs!!\r\nRobust rear axle with reduction unit!!\r\nMulti Disc Brake Type with oil immersed mechanical actuation!!\r\nHydraulic functions with Draft control, Position control and Response control', 'upload/TractorMannuals/neM2kjWNawOlOx3IItBX9IkwlTRSFkNMtHz7b5g2.pdf', 1, 'mf-360', '1'),
(64, 3, '2021-08-30 04:10:00', '2021-09-01 04:40:22', NULL, 'MF 375 (75HP - 2WD)', 'Brand New Massey Ferguson 375 with 75HP is considered to be the top model in the market. MF-375 tractor is the most preferred agricultural tractor by farmers around globe.Massey Ferguson 375 tractor for sale has become the first choice for the farmers due to its fuel efficiency, eco-friendly qualities, less noise, durability. People search for Massey Ferguson MF-375 for sale because it is the most powerful tractor in the market with a distinctive style and features. Massey Ferguson 375 price is', 'New Highly Effective Head Lights and Elegant Indicators.!!\r\nMid Mounted Bigger Balancer for reduced Engine vibrations and Smooth Running.!!\r\nImproved Harness Set with Heat Shrinkage Sleeves & Water Proof Couplers.!!\r\nDurable & Highly Efficient Low Noise Engine.!!\r\nNew Aerodynamic look with Stylish Wrapper & Gill.!!\r\nOil Cooler Added for Effective Cooling.!!\r\nHeavy Duty Front Axle & Support.!!\r\nNew Spring Suspension Deluxe Seat.!!\r\nSmart Steering Wheel for Reduced Steering Effort.!!', 'Massey Ferguson MF-375 Tractor Technical Specifications includes Its 75HP power with an engine of Perkins, diesel-4.248 and its engine speed at 540 live PTO rpm is 1789 rpm. MF-375 Transmission is a sliding spur with 8 forward and 2 reverse gears. It has a Cerametallic Dual Clutch with Robust Straddle Rear Axle with Epicyclical Reduction Unit, Oil immersed Multi-Disc Brakes and Hydrostatic Power Steering to make sure the easy handling and smooth operations of the tractor.\r\n\r\n\r\n\r\nMF-375 Hydraulic', 'upload/TractorMannuals/1JNumqNeGOp5M9IaAuRrjFtZlaZrnxiheO2ZRANc.pdf', 1, 'mf-375', '1'),
(65, 3, '2021-08-30 04:12:06', '2021-09-01 04:42:41', NULL, 'MF 290 (78HP - 2WD)', 'Brand New Massey Ferguson 375 with 75HP is considered to be the top model in the market. MF-375 tractor is the most preferred agricultural tractor by farmers around globe.Massey Ferguson 375 tractor for sale has become the first choice for the farmers due to its fuel efficiency, eco-friendly qualities, less noise, durability. People search for Massey Ferguson MF-375 for sale because it is the most powerful tractor in the market with a distinctive style and features. Massey Ferguson 375 price is', 'New Highly Effective Head Lights and Elegant Indicators.!!\r\nMid Mounted Bigger Balancer for reduced Engine vibrations and Smooth Running.!!\r\nImproved Harness Set with Heat Shrinkage Sleeves & Water Proof Couplers.!!\r\nDurable & Highly Efficient Low Noise Engine.!!\r\nNew Aerodynamic look with Stylish Wrapper & Gill.!!\r\nOil Cooler Added for Effective Cooling.!!\r\nHeavy Duty Front Axle & Support.!!\r\nNew Spring Suspension Deluxe Seat.!!\r\nSmart Steering Wheel for Reduced Steering Effort.!!', 'Massey Ferguson MF-375 Tractor Technical Specifications includes Its 75HP power with an engine of Perkins, diesel-4.248 and its engine speed at 540 live PTO rpm is 1789 rpm. MF-375 Transmission is a sliding spur with 8 forward and 2 reverse gears. It has a Cerametallic Dual Clutch with Robust Straddle Rear Axle with Epicyclical Reduction Unit, Oil immersed Multi-Disc Brakes and Hydrostatic Power Steering to make sure the easy handling and smooth operations of the tractor.\r\n\r\n\r\n\r\nWORLD WIDE ACCLA', 'upload/TractorMannuals/WsDExrSIXAgzs2G11mi5nOHdi85392dLlLykaXOt.pdf', 1, 'mf-290', '1'),
(66, 3, '2021-08-30 04:15:10', '2021-09-01 04:47:48', NULL, 'MF 385 (85HP - 2WD)', 'Massey Ferguson MF-385 2WD Tractor is one of the most efficient, environmentally friendly and, durable tractor. It comes with most economical MF-385 tractor price with valuable features such as a low-noise engineandless gas emission. People are always looking for Massey Ferguson MF-385 2WD for sale because of its ultimate longevity and great results. Massey Ferguson 385 2WD Tractor Reviews have always been eminent.', 'High Performance Diesel Low Noise Engine.!!\r\nReduced Gaseous Emissions under ECE R49.!!\r\nReduced Smoke Level.!!\r\nOil Cooler Added for Effective Cooling.!!\r\nHydrostatic Power Steering.!!\r\nEfficient Oil Immersed Multi-Disc Brake System.!!\r\nSpring Suspension Deluxe Seat!!', 'MF-385 2WD Tractor Technical Specifications are 85HP tractor with an environmental friendly and powerful engine of Perkins, diesel-4.41 with engine speed at 540 live PTO rpm is 1789 rpm and maximum engine speed is 2250rpm. MF-385 2WD Transmission is a sliding spur with 8 forward and 2 reverse gears. It has a Cerametallic Dual Clutch with Robust Straddle Rear Axle with Epicyclical Reduction Unit, Oil immersed Multi-Disc Brakes and Hydrostatic Power Steering to make sure the easy handling and smoo', 'upload/TractorMannuals/S3kY42ZuVVdqJISTUnY2AfGuh6HefYuQar6Ypqyc.pdf', 1, 'mf-385-2WD', '1'),
(67, 3, '2021-08-30 04:17:04', '2021-09-01 04:46:40', NULL, 'MF 385 (85HP - 4WD)', 'MF 385 4WD tractor is more powerful than a 2WD tractor because it provides greater stability and more traction power. MF-385 4WD tractor for sale is an eco-friendly and fuel-efficient tractor with the capability of pulling up to 20 tons of weight. MF-385 4WD tractor price ismost reasonable with its excellent features. MF 385 4WD tractor reviews are always positive and the users always suggestto look for Massey Ferguson 385 4WD Tractor for sale and enjoy the maximum results.', 'Massey Ferguson 385 4WD Tractor features are as follows:!!\r\n\r\nHigh Performance Diesel Low Noise Engine.!!\r\nReduced Gaseous Emissions under ECE R49.!!\r\nMore traction power!!\r\nHigh fuel Efficiency!!\r\nOil Cooler Added for Effective Cooling.!!\r\nHydrostatic Power Steering.!!\r\nEfficient Oil Immersed Multi-Disc Brake System.!!\r\nSpring Suspension Seat.!!', 'MF-385 4WD Tractor Technical Specifications are 85HP tractor with an environmental friendly and powerful engine of Perkins, diesel-4.41 with engine speed at 540 live PTO rpm is 1789 rpm and a maximum engine speed of 2200 rpm. its Transmission is a sliding spur with 8 forward and 2 reverse gears. It has a Cerametallic Dual Clutch with Robust Straddle Rear Axle, Oil immersed Multi-Disc Brakes and Hydrostatic Power Steeringto make sure theeasy handling and smooth operations of the tractor.\r\n\r\n\r\nMF-', 'upload/TractorMannuals/KH3thp38Fu2HBacI5tIJqPh1AdcPOaPo8DfvOqb0.pdf', 1, 'mf-385-4WD', '1'),
(68, 3, '2021-08-30 04:21:26', '2021-08-30 04:21:26', NULL, 'NH TD 95 (98HP - 2WD)', 'It has a 4 Cylinder Turbocharged engine produced at 1500RPM, with 370 nm of Torque. Ground clearance makes it an adequate tractor to operate in any type of soil. It is a useful tractor in both farming and haulage purposes.', NULL, NULL, NULL, 2, 'nh-td-95', '1'),
(69, 3, '2021-08-30 04:25:16', '2021-09-01 04:52:29', NULL, 'NH 480S Disc Brake (55HP - 2WD)', 'New Holland NH 480S tractor is small in size, versatile and durable. NH 480s is a 55 HP small range tractor for farmers who wants to commercialize their farm in most economical way. New Holland NH 480 is an all-round tractor filled with powerful functions and features. New Holland NH 480s are produced by Al-Ghazi Tractors in Pakistan under the license from New Holland. Best choice for rugged and hard soil.', NULL, NULL, 'upload/TractorMannuals/1kbwPQopyBPKLkAEg8MnJA3RrszAfPAGTFjDOktm.pdf', 2, 'nh-480s', '1'),
(70, 3, '2021-08-30 04:28:48', '2021-09-01 05:01:51', NULL, 'NH GHAZI (65HP - 2WD)', 'NH AL Ghazi a 65 HP Tractor suitable for small to medium scale farming with its 3 Cylinder 2.9L engine it is the apple of the eye of farmers based specially in the eastern side of the Africa. New Holland is an acclaimed manufacturer worldwide and considered a highly reliable brand in the farmers\r\nGet in touch with by filling up the inquiry from – You NH Al ghazi 65 HP Tractor is waiting for its collection!', NULL, NULL, 'upload/TractorMannuals/jOwZPrCqLXhO5arut1SzmykZJO1BKA3wc0WlJA4c.pdf', 2, 'nh-ghazi', '1'),
(71, 3, '2021-08-30 04:30:12', '2021-09-01 05:07:58', NULL, 'NEW HOLLAND NH DABUNG', 'New Holland Dabang is an 85 HP 2WD model which is one of the most economical tractor in 85 HP Range. Its Robust Design with Its dedicated horse power makes a great combination for a farmer who wants maximum power with being economical as well.\r\nOur Courteous sales team is waiting to offer you this Brand New NH Dabang 85 HP , All you need to do is simply fill up the form and wait for us to get back to you', NULL, NULL, 'upload/TractorMannuals/55hwbMDezRuYvEhjDfHxs8665kWmGKxQkLaXgcm0.pdf', 2, 'dabang', '1'),
(72, 3, '2021-08-30 04:36:59', '2021-08-30 04:36:59', NULL, 'Disc Plough', 'Agro Asia Disc plough is commonly used in virgin soil for soil breaking, turning and uprooting the crop remains. It is primary tilling equipment which is used before any farming activity. It is available from 2-6 discs which can be used according to the tractor pulling capacity. Agro Asia Disc Plough Farming Implement is ISO 9001 Certified and manufactured under strict quality control.', 'Available from 2-5 discs!!\r\nWEIGHT 550!!\r\nWORKING WIDHTH 990MM!!\r\nWORKING DEPTH 250MM!!\r\nHEIGHT 1235MMh!!\r\nLENGTH 2130MM!!\r\nCATEGORY II!!\r\nPOWER REQUIRE 85HP ONWARDS', NULL, NULL, 8, 'disc-plough', '1'),
(73, 3, '2021-08-30 04:39:03', '2021-08-30 04:39:03', NULL, 'Offset Disc Harrow', 'Agro Asia Disc Harrow is a farm implement which ploughs and turn the soil where the crops need to be planted. It has a set of discs available from 10 to 28 discs and blades which chop up the unwanted weed and the crop remainders. The plates are additionally counterbalanced so they are parallel with the general heading of the Implement. This game plan guarantees that the circles will more than once cut any ground to which they are connected, so as to streamline the outcome. The concavity of the plates just as their counterbalance point makes them relax and lift the dirt that they cut.', NULL, 'NUMBER OF DISCS 10-28!!\r\nDISC SIZE 61 CM (24 INCHES)!!\r\nWeight of approx.: 450 Kgs to 800 Kgs!!\r\nWorking width: 55 – 75 inches depending on the size of harrow!!\r\nTractor compatibility is min 50 HP!!', NULL, 8, 'offset-disc-harrow', '1'),
(74, 3, '2021-08-30 04:40:34', '2021-08-30 04:40:34', NULL, 'Boom Spraye', 'Agro Asia Boom Sprayer is a Tractor attached PTO operated implement which is used for spraying pesticides, repellents, and Nano-nutrients on various crops. It is available from 500L to 1000L in Fiber and plastic Tanks. It has a total wingspan of 50 Ft with tee jet conical nozzles.', NULL, 'Operation Tractor - hydraulic and PTO driven!!\r\nCAPACITY: 500l – 1000L!!\r\nLENGTH: UPTO 10M!!\r\nWINGSPAN: 25FT/SIDE.!!\r\nNozzle type: Teejet/conical!!', NULL, 8, 'boom-sprayer', '1'),
(75, 3, '2021-08-30 04:42:08', '2021-08-30 04:42:08', NULL, 'Chisel Plough', 'Agro Asia Mould board plough also called Turn Plough is a useful implement which not only turns the soil but also cuts and break through its edges so that the required nutrients can be brought to surface. It significantly reduces the time required for cultivating allowing the farmer to cover a large area of his field in lesser time. It also reduces or minimizes the growth of Weed and trash.\r\nMb Plough is available from 2 Furrows to 5 Furrows depending on the Horse Power of your Tractor which determines its pulling capacity', NULL, 'No Of Tines 2-5!!\r\nTotal Width 1570 mm!!\r\nLinkage Capacity: I &II!!\r\nMax Working Depth: 22-25cm!!\r\nWeight: 225-360Kg.!!\r\nTractor Compatibility: 50HP Onwards!!', NULL, 8, 'chisel-plough', '1'),
(76, 3, '2021-08-30 06:25:27', '2021-08-30 06:25:27', NULL, 'Ford 3850 (55HP - 2WD)', NULL, NULL, NULL, NULL, 3, 'ford-3850', '1'),
(77, 3, '2021-08-30 06:27:53', '2021-08-30 06:27:53', NULL, 'Ford 4560 (60HP - 2WD)', NULL, NULL, NULL, '', 3, 'ford-4560', '1'),
(78, 3, '2021-08-30 06:29:14', '2021-08-30 06:29:14', NULL, 'Ford 5880 (80HP - 2WD)', NULL, NULL, NULL, NULL, 3, 'ford-5880', '1'),
(79, 3, '2021-08-30 06:35:26', '2021-09-01 04:47:34', NULL, 'MF 390 (88HP - 4WD)', 'MF 390 4WD tractor is more powerful than a 2WD tractor because it provides greater stability and more traction power. MF-390 4WD tractor for sale is an eco-friendly and fuel-efficient tractor with the capability of pulling up to 20 tons of weight. MF-390 4WD tractor price ismost reasonable with its excellent features. MF 385 4WD tractor reviews are always positive and the users always suggestto look for Massey Ferguson 385 4WD Tractor for sale and enjoy the maximum results.', 'Massey Ferguson 390 4WD Tractor features are as follows:!!\r\n\r\nTRACTION(30% MORE THAN 390 2WD).!!\r\nDRAWBAR POWER (16% MORE THAN 390 2WD)!!\r\nDRAWBAR PULL (34% MORE THAN 390 2WD)!!\r\nTYRE WEAR (15% MORE THAN 390 2WD).!!\r\nFUEL EFFICIENCY (15% MORE THAN 390 2WD).!!\r\nFIELD WORK SPEED (13-20% MORE THAN 390 2WD)!!\r\nEfficient Oil Immersed Multi-Disc Brake System.!!\r\nSpring Suspension Seat.!!', 'MF-390 4WD Tractor Technical Specifications are 85HP tractor with an environmental friendly and powerful engine of Perkins, diesel-4.41 with engine speed at 540 live PTO rpm is 1789 rpm and a maximum engine speed of 2200 rpm. its Transmission is a sliding spur with 8 forward and 2 reverse gears. It has a Cerametallic Dual Clutch with Robust Straddle Rear Axle, Oil immersed Multi-Disc Brakes and Hydrostatic Power Steeringto make sure theeasy handling and smooth operations of the tractor.\r\n\r\n\r\nMF-', 'upload/TractorMannuals/m3zTd4i6pMAjCJjEQ9dGObdwuz9UeWEwOjvELR1b.pdf', 1, 'mf-390-4WD', '1'),
(80, 3, '2021-08-30 06:37:12', '2021-09-01 04:47:42', NULL, 'MF 390 (88HP - 2WD)', 'MF 390 2WD tractor greater stability and more traction power. MF-390 2WD tractor for sale is an eco-friendly and fuel-efficient tractor with the capability of pulling up to 20 tons of weight. MF-385 4WD tractor price ismost reasonable with its excellent features. MF 385 4WD tractor reviews are always positive and the users always suggestto look for Massey Ferguson 385 4WD Tractor for sale and enjoy the maximum results.', 'Massey Ferguson 390 2WD Tractor features are as follows:!!\r\n\r\nPRESSURE: 3000 PSI [206.8 BAR]!!\r\nCAB: TWO-POST ROPS. CANOPY OPTIONAL!!\r\nEFFICIENT OIL IMMERSED DISC BRAKE SYSTEM!!\r\nWHEELBASE: 84.1 INCHES [213 CM]!!', 'MF-390 2WD Tractor Technical Specifications are 88HP tractor with an environmental friendly and powerful engine of Perkins, diesel-4.41 with engine speed at 540 live PTO rpm is 1789 rpm and a maximum engine speed of 2200 rpm. its Transmission is a sliding spur with 8 forward and 2 reverse gears. It has a Cerametallic Dual Clutch with Robust Straddle Rear Axle, Oil immersed Multi-Disc Brakes and Hydrostatic Power Steeringto make sure theeasy handling and smooth operations of the tractor.\r\n\r\n\r\nMF-', 'upload/TractorMannuals/S9KodEkJoTvuarp8E6bfbLVNMYwHHRrA6aTRlpbK.pdf', 1, 'mf-390', '1'),
(81, 3, '2021-08-30 06:39:19', '2021-09-01 04:44:21', NULL, 'MF 290 (78HP - 4WD)', 'Brand New MF 290 is 78HP 4WD tractor preferred by small-scale farmers due to its affordability and low fuel consumption and maintenance. It is 78HP and available in 4WD', NULL, 'OIL BATH WITH PRE-CLEANER (OVERBONNET)!!\r\nSINGLE SPEED 540I PTO!!\r\nMAX LIFT CAPACITY AT LINK ENDS (KG 2050)!!\r\nLOW NOISE AND LOW EMISSION.!!\r\nTYRE WEAR (15% MORE THAN 290 2WD).!!\r\nFUEL EFFICIENCY (15% MORE THAN 290 2WD)!!\r\nFIELD WORK SPEED (13-20% MORE THAN 290 2WD).', 'upload/TractorMannuals/mkZO7uvllVB78ZSZRUjBtC75ukfc27rqRUgwATr4.pdf', 1, 'mf-290-4WD', '1'),
(82, 3, '2021-08-30 06:41:41', '2021-09-01 04:41:24', NULL, 'MF 375 (75HP - 4WD)', 'Brand New Massey Ferguson 375 with 75HP is considered to be the top model in the market. MF-375 tractor is the most preferred agricultural tractor by farmers around globe.Massey Ferguson 375 tractor for sale has become the first choice for the farmers due to its fuel efficiency, eco-friendly qualities, less noise, durability. People search for Massey Ferguson MF-375 for sale because it is the most powerful tractor in the market with a distinctive style and features. Massey Ferguson 375 price is', 'New Highly Effective Head Lights and Elegant Indicators.!!\r\nMid Mounted Bigger Balancer for reduced Engine vibrations and Smooth Running.!!\r\nImproved Harness Set with Heat Shrinkage Sleeves & Water Proof Couplers.!!\r\nDurable & Highly Efficient Low Noise Engine.!!\r\nNew Aerodynamic look with Stylish Wrapper & Gill.!!\r\nOil Cooler Added for Effective Cooling.!!\r\nHeavy Duty Front Axle & Support.!!\r\nNew Spring Suspension Deluxe Seat.!!\r\nSmart Steering Wheel for Reduced Steering Effort.!!', 'Massey Ferguson MF-375 Tractor Technical Specifications includes Its 75HP power with an engine of Perkins, diesel-4.248 and its engine speed at 540 live PTO rpm is 1789 rpm. MF-375 Transmission is a sliding spur with 8 forward and 2 reverse gears. It has a Cerametallic Dual Clutch with Robust Straddle Rear Axle with Epicyclical Reduction Unit, Oil immersed Multi-Disc Brakes and Hydrostatic Power Steering to make sure the easy handling and smooth operations of the tractor.\r\n\r\n\r\n\r\nWORLD WIDE ACCLA', 'upload/TractorMannuals/IG1FZtovGlVCxZEw8u9bSWtXVfnDcuWoHvOyWUu5.pdf', 1, 'mf-375-4WD', '1'),
(83, 3, '2021-08-30 06:44:13', '2021-09-01 05:03:00', NULL, 'NH 640S (85HP - 2WD)', 'New Hollands’s NH 640S tractor is a further extension to its NH 640 model. It has strong engine with 85Hp. NH 640S is easy to work with, it’s convenient and considered suitable for agricultural purposes. New Holland NH 640s 2wd tractor has a well-designed hydrostatic power steering for comfortable driving. New Holland NH 640s 2wd tractor is environmentally friendly, reliable, economical and provides a consumer with a very simple operating interface.', NULL, NULL, 'upload/TractorMannuals/UU1DITIrwPxcGbO9nKn4Fpn379EIByiv40wWSgwK.pdf', 2, 'nh-640s', '1'),
(84, 3, '2021-08-30 06:47:36', '2021-09-01 05:02:33', NULL, 'NH 640 (75HP - 2WD)', 'New Holland NH 640 2wd tractor has a 75hp power, is powerful and cost-effective with environmentally-friendly features. It\'s built with a new Holland 8045.063 engine that helps to provide the best performance. NH 640 2WD is primarily used for farming purposes and, with its low fuel consumption, is perfect for any farmer.', NULL, NULL, 'upload/TractorMannuals/kbYxGrw72jopkwlGQZbzJDUrnT5RT7KD8ciGXIIZ.pdf', 2, 'nh-640', '1'),
(85, 3, '2021-08-30 06:49:22', '2021-09-01 05:08:52', NULL, 'NH 70-56 (85HP - 4WD)', 'NH 70-56 tractor 4wd is a unique and rugged New Holland vehicle with an 85HP. It has the same horse power as NH 640 Special but it is a 4-wheel drive which makes it more powerful and up to date. NH 70-56 has more traction that is why this model is very efficient. If you\'re working on a muddy or poor surface, this model is built for you. NH 70-56 is considered to be the best option, particularly for African farmers, because it comes with 4WD option, which not only makes it easy to run, but also gives 30% fuel savings compared to other 4WD tractors. Our stock ready to ship comes in blue and red color and is available at the most affordable price.', NULL, NULL, 'upload/TractorMannuals/Xyd4Ky81ihqAjTaDy6OxhTO0cRlgdhHSlkMeIJli.pdf', 2, 'nh-70-56', '1'),
(86, 3, '2021-09-01 01:44:52', '2021-09-01 01:49:59', NULL, 'Ridger', 'Agro Asia Ridger is used to make ridges for row crops such as Sugarcane, Potato, chilies, tobacco etc. Also used to split fields into furrows to have water flow. It has an overall width of 1778mm with depth of 1050mm and maximum row spacing of 711mm. Power required for this implement is 50hp and above.', NULL, 'Overall width: 1778mm!!\r\nMax Row Spacing: 711m!!\r\nClearance: 550mm!!\r\nWeight: 150kgs!!\r\nTractor compatibility: 50HP +!!\r\nDepth: 1050mm!!', NULL, 8, 'ridger', '1'),
(87, 3, '2021-09-01 01:55:11', '2021-09-01 01:55:39', NULL, 'Mould Board Plough', 'Agro Asia Mould board plough also called Turn Plough is a useful implement which not only turns the soil but also cuts and break through its edges so that the required nutrients can be brought to surface. It significantly reduces the time required for cultivating allowing the farmer to cover a large area of his field in lesser time. It also reduces or minimizes the growth of Weed and trash.\r\nMb Plough is available from 2 Furrows to 5 Furrows depending on the Horse Power of your Tractor which determines its pulling capacity', NULL, 'NO OF FURROWS 2,3,4!!\r\nMAX WORKING DEPTH: 22-25CM!!\r\nWEIGHT: 225-360KGS!!\r\nTRACTOR COMPATIBILITY: 50HP ONWARDS!!\r\nLINKAGE CAPCITY: I &II!!', NULL, 8, 'mould-board-plough', '1'),
(88, 3, '2021-09-01 01:57:18', '2021-09-01 01:57:26', NULL, 'Hydraulic Disc Harrow', 'Agro Asia Hydraulic Disc Harrow is a 3-point hydraulic lift disk blade tool used for deep soil tillage purposes. It finely cuts unwanted weeds by entering and mixing the soil to improve its organic nutritional value.', NULL, NULL, NULL, 8, 'hydraulic-disc-harrow', '1'),
(89, 3, '2021-09-01 02:03:17', '2021-09-01 02:03:17', NULL, 'Agricultural Loader', 'Agro Asia Agricultural Loader or Tractor Loader also known as Front Loader is an implement capable of moving material, removing bushes, tree lumps as well as moving the Snow Dirt and spread manure. It is multipurpose machine designed in a way that it can be fitted in any Tractor be it 2WD or 4WD. We have special quality of Front Loader which can lift the weight of even up to 1Tons if required.', NULL, 'Bucket Size 60″~66″!!\r\nLifting Height Max 132″!!\r\nCylinder 4 (60mmx40mm)!!\r\nControl Valve 45ltr 2 Spool Valve!!\r\nHose Pipe 6000PSl, Double Breaded!!\r\nSleeve Steel Tube honed!!\r\nRod Hard Chromed Carbon Steel!!\r\nSeal V Type!!\r\nPump Tractor Pump!!', NULL, 8, 'agricultural-loader', '1'),
(90, 3, '2021-09-01 02:07:36', '2021-09-01 02:07:36', NULL, 'Bed Shape Planter', 'Agro Asia Bed Shape Planter works on making beds, removing wrinkles, applying seeds and spreading Fertilizer. It can shape two beds and three Furrows in one go. It is better at weed control, water the executives and compost use productivity. It is furnished with placer wheel for the Placement of seed of appropriate depth.', NULL, 'FRAME: 50X50X6M BOX!!\r\nHITCH: 75X36X6MM!!\r\nTINE: 50X20MM!!\r\nLENGTH: 1520MM!!\r\nHEIGHT: 2240MM!!\r\nWIDTH: 2240MM!!\r\nAPPROX WEIGHT: 470KGS!!', NULL, 8, 'bed-shape-planter', '1'),
(91, 3, '2021-09-01 02:09:41', '2021-09-01 02:12:57', NULL, 'Multi Crop Seed Drill', 'Agro Asia Multi crop seed drill does seeding and fertilization at the same time in a single go. It increases the crop yield up to 10%. It has a seeding capacity of almost 80 to 100 Kg with a drilling depth of 50-100mm.', NULL, 'ZERO TILLAGE SEED DRILL!!\r\nRow Spacing 10”!!\r\nNo of Rows 9 -13!!\r\nLinkage 3 Pt!!\r\nWeight Approx. 400KGS!!\r\nSeeds able to plant Rice, cotton, maize, millet, sorghum!!', NULL, 8, 'multi-crop-seed-drill', '1'),
(92, 3, '2021-09-01 02:14:59', '2021-09-01 02:14:59', NULL, 'Raised Bed Pneumatic Planter', 'Agro Asia Raised Bed Pneumatic Planter helps form the permanent raised beds with crumbled roller to remove the hurdles and levels the top of bed. It is useful for maize, wheat and, cotton. It increases the yields by 20-25% and it distributes the water evenly throughout the farm. It helps in water, fertilizer and seed saving. They have changeable furrow according to the bed size with Power requirement of 50hp and above.', NULL, NULL, NULL, 8, 'raised-bed-pneumatic-planter', '1'),
(93, 3, '2021-09-01 02:23:30', '2021-09-01 02:23:30', NULL, 'Maize Planter', NULL, NULL, NULL, NULL, 8, 'maize-planter', '1'),
(94, 3, '2021-09-01 02:27:06', '2021-09-01 02:27:06', NULL, 'Wheat Planter', 'AgroAsia Wheat Planter also known as Zero Tillage Seed Planter is designed to produce maximum efficiency. It is designed to reduce the labor cost as well as yielding maximum harvest from the crop, Farmers have reported atleast 10-15% growth in their crop by using this planter which also can fertilize while planting.', NULL, 'ZERO TILLAGE SEED DRILL!!\r\nRow Spacing 10”!!\r\nNo of Rows 9 -13!!\r\nLinkage 3 Pt!!\r\nWeight Approx. 400KGS!!\r\nSeeds able to plant Rice, cotton, maize, millet, sorghum!!', NULL, 8, 'wheat-planter', '1'),
(95, 3, '2021-09-01 02:30:24', '2021-09-01 02:30:24', NULL, 'Farm Trailer', 'Agro Asia Farm Trailer is a tractor towed unpowered vehicle. It is widely used in Farming and construction industry to carry Harvested Crops, Tractor Implements, Dirt, Gravel, stones and other things from one place to another. Agro Asia Tractors offers heavy Duty Farm Trailer starting with a capacity of 2 Tons to 20 Tons', NULL, 'Tractor Compatibility: Above 50hp!!\r\nSize: 13’X6’X2’!!\r\nAxle Size: 4-1/2”X3/8”!!\r\nNO OF TIRES 2 to 4!!\r\nWEIGHT 1000 – 1400 KGS!!', NULL, 8, 'farm-trailer', '1'),
(96, 3, '2021-09-01 02:35:39', '2021-09-01 02:35:39', NULL, 'Farm Trolley', 'Agro Asia Farm Trolley is a form of trailer with deeper panels and higher side walls in order to accommodate more goods. It has a front moveable axle for easy turnings in tight corners. Body Size is 12x2x6 (12 feet length, 2 feet height, 6 feet width) and tire size is 16. It starts from the capacity of 5 Tons to 20 Tons.', NULL, 'Tractor Compatibility: Above 50hp!!\r\nSize: 13’X6’X2’!!\r\nAxle Size: 4-1/2”X3/8”!!\r\nNO OF TIRES 2 to 4!!\r\nWEIGHT 1000 – 1400 KGS!!', NULL, 8, 'farm-trolley', '1'),
(97, 3, '2021-09-01 02:39:02', '2021-09-01 02:39:02', NULL, 'Hydraulic Tipping Trailer', 'Agro Asia Hydraulic Tipping Trailer serves variety of purposes and reduces the man power required for unloading the goods. This specially designed vehicle not only reduces the time required but also makes unloading trouble free. Simply lift the Hydraulic Lever and your load is dislodged\r\nAgro Asia Hydraulic Tipping Trailer is a tractor operated vehicle which is attached through Hydraulic Kits. Agro Asia Tractors manufacture special quality Hydraulic Tipping Trailer for Our Clients in Africa and Caribbean region and are designed for a capacity of 3 – 20 Tons from Single to Double axels.', NULL, 'Capacity 3 – 20 Tons!!\r\nLower Channel 7x3 – 10 x 3!!\r\nLength 52” – 56”!!\r\nOuter Die 5” – 7”!!\r\nWall Thickness 3”/8”!!\r\nQuantity 2 – 4 Tires!!', NULL, 8, 'hydraulic-tipping-trailer', '1'),
(98, 3, '2021-09-01 02:41:20', '2021-09-01 02:41:20', NULL, 'Fodder Cutter', 'Agro Asia Fodder cutters are PTO (power take off) operated with a machine attached at the back for reaping green Fodder crops.', NULL, NULL, NULL, 8, 'fodder-cutter', '1'),
(99, 3, '2021-09-01 02:44:49', '2021-09-01 02:44:49', NULL, 'Tine Tiller', 'Agro Asia Tine Tillers are used to complete the tillage operations; they work near the surface to disturb the soil in a way that astonishing patterns are created. It helps in airing the soil before the start of the planting and give control after planning. It ensures that crop has enough water and it bury the crop residue, warm the soil and prepare seedbed', NULL, 'Frame Type Pipe Set and Z Type!!\r\nNumber of Tines 9,11 & 13!!\r\nLinkage Category I & II!!\r\nWorking Depth 229 mm!!\r\nTine Spacing 229 mm to 254 mm!!\r\nHP Compatibility 50 to 85 HP!!', NULL, 8, 'tine-tiller', '1'),
(100, 3, '2021-09-01 02:46:19', '2021-09-01 02:46:19', NULL, 'Maize Sheller', 'Agro Asia Maize Sheller is used for separating the soft kernel from the maize. It is PTO (Power Take off) operated and attached at the back of the tractor. It has a shelling capacity of up to 1ton/hr.', NULL, 'Operation: PTO Driven!!\r\nCapacity: Upto 1ton/hr!!\r\nWeight: Approx 200Kgs!!', NULL, 8, 'maize-sheller', '1'),
(101, 3, '2021-09-01 02:48:24', '2021-09-01 02:48:24', NULL, 'Post Hole Digger', 'Agro Asia Post Hole Digger digs holes in rows on equal distances. They are best for tree plantation, electrical poles and farm hedges. These can dig holes of about 90cm deep in just 30 seconds with an even diameter. Removing auger can turn it in to a small crane. They come with single speed heavy duty gearbox. They are suitable for all type of tractors and can be easily attached or detached.', NULL, '540 RPM PTO.!!\r\nAuger sizes: 9” & 18”!!\r\nDepth: 90cm (36”)!!', NULL, 8, 'post-hole-digger', '1'),
(102, 3, '2021-09-01 02:50:17', '2021-09-01 02:50:17', NULL, 'Wheat Reaper', 'Agro Asia Reaper is the farm implement used to harvest Wheat, Barley, Oats, Rice and similar crops. It has a continuous belt conveyor, an overhead reel, interchanging cutting bars and a crop separator. The reaped crops are smoothly lounged on the ground', NULL, 'Cutting width 7.5Ft!!\r\nNo of blades 29!!\r\nMachine Length 7.8Ft!!\r\nMachine Height 2.4Ft!!\r\nWeight Upto 300 Kgs!!', NULL, 8, 'wheat-reaper', '1'),
(103, 3, '2021-09-01 02:52:20', '2021-09-01 02:52:20', NULL, 'Rice Reaper', 'Agro Asia Reaper is the farm implement used to harvest Wheat, Barley, Oats, Rice and similar crops. It has a continuous belt conveyor, an overhead reel, interchanging cutting bars and a crop separator. The reaped crops are smoothly lounged on the ground', NULL, 'Cutting width 7.5Ft!!\r\nNo of blades 29!!\r\nMachine Length 7.8Ft!!\r\nMachine Height 2.4Ft!!\r\nWeight Upto 300 Kgs!!', NULL, 8, 'rice-reaper', '1'),
(104, 3, '2021-09-01 02:54:23', '2021-09-01 02:54:23', NULL, 'Cotton Ridger', 'Agro Asia Cotton Ridger are Multiuse inter row ridger and are without fertilizer attachment. They are most suitable for the crops such as cotton. Agro Asia cotton Ridger have 9 tines with provisions for change in depth and for spacing of row.', NULL, 'Power Source 60-70 HP Tractors.!!\r\nNo. of Tines 9 Nos.!!\r\nType Hydraulic!!\r\nOverall Length 90 inch!!\r\nOverall Height 43 inch!!\r\nOverall Width 36 inch!!\r\nOverall Length (max) 80 inch!!', NULL, 8, 'cotton-ridger', '1'),
(105, 3, '2021-09-01 02:56:51', '2021-09-01 02:57:41', NULL, 'Lawn Mower', 'Agro Asia Lawn Mower is used through PTO of the Tractor. They have 3 blades with a working width of 150cm and overall width of 175cm. It is used for cutting grass in gardens, public parks, Lawns and sports grounds.', NULL, 'Working width: 150 cm (59\")!!\r\nOverall width: 175 cm (69\")!!\r\nCenter mounted!!\r\nNo. Of Blades: 3!!\r\nWeight: 190 kg!!\r\nTractor Compatibility: Above 50hp!!', NULL, 8, 'lawn-mower', '1'),
(106, 3, '2021-09-01 02:59:27', '2021-09-01 02:59:27', NULL, 'Rotary Cultivator - Rotatvator', 'Agro Asia Rotary Cultivator are also known as Rotary Tiller. They are PTO operated Implements which are built to turn or break the soil as well as weeding of the crop residue left after harvesting. It also helps in nutrients balancing with its blades which starts from 32 to 54 blades with working depth of 220mm and working width of 2400mm.', NULL, 'No of Blades: 32-54!!\r\nLength: 1000mm!!\r\nWorking width: 2400mm!!\r\nWorking depth: 220mm!!\r\nHeight: 1200mm!!\r\nWeight: 700Kgs!!', NULL, 8, 'rotary-cultivator', '1'),
(107, 3, '2021-09-01 03:01:25', '2021-09-01 03:01:25', NULL, 'Rotary Slasher', 'Agro Asia Rotary slashers are PTO operated with rough cutter for unwanted weed and forestry maintenance. They are attached at the back with the adjustable Slip Shoes. Cutting width for these Agro Asia Rotary Slashers are 120cm with a minimum cutting diameter of 2.5cm.', NULL, 'No of Blades 3!!\r\nWorking Width 150 cm!!\r\nOverall Width 175cm!!\r\nTractor Compatibility 50 HP!!', NULL, 8, 'rotary-slasher', '1'),
(108, 3, '2021-09-01 03:03:17', '2021-09-01 03:03:17', NULL, 'Fertilizer Spreader', 'Agro Asia Fertilizer Spreaders are with single discs or double discs with easily mountable to tractors universal 3- point linkage system and the hydraulic top link. It enhances the soil by spreading the fertilizer in an even manner for the crops such as wheat, oats, cotton, corn, beans etc. It has a spreading capacity of 250kg to 1000kg with working width of 14m to 18m.', NULL, 'Attachment 3 Point Linkage system!!\r\nCapacity 250Kgs – 1000kGs!!\r\nWorking Width 14m – 18m!!', NULL, 8, 'fertilizer-spreader', '1'),
(109, 3, '2021-09-01 03:04:51', '2021-09-01 03:04:51', NULL, 'Jib Crane', 'Agro Asia Jib Crane known by its name is a form of crane, can be attached with a tractor and operated through Tractor Hydraulics. It is used to Load and unload small implements or Fertilizer or Crop Bags and it is easy to operate by the Tractor driver. It can lift up to 800 KGS.', NULL, NULL, NULL, 8, 'jib-crane', '1'),
(110, 3, '2021-09-01 03:07:01', '2021-09-01 03:07:01', NULL, 'Rear Blade', 'Agro Asia Rear Blade are the implements used for cleaning of the yards, farm classifying with adjustable angle and pitch from 0 to 40 degrees which makes the hands on task easy. It has also reverse blade for backfilling.', NULL, 'Width: 5’ – 12’!!\r\nLength: 5ft with wheel!!\r\n1/2” Reversible/replaceable cutting edge.!!', NULL, 8, 'rear-blade', '1'),
(111, 3, '2021-09-01 03:08:52', '2021-09-01 03:08:52', NULL, 'Backhoe Loader', 'Agro Asia Backhoe loader is a heavy equipment attached to a tractor with a loader-style shovel/bucket on the front and a backhoe on the back. These two components serve very different functions. The loader can be used as big dustpan or to scrap things from the surface while the backhoe use to dig up hard, dense material, usually earth, or to lift heavy loads. It uses hydraulic pressure of 2250 PSI.', NULL, 'MAXIMUM DPETH 146”!!\r\nREACH FROM SWING PIVOT 196”!!\r\nTransport Height 132”!!\r\nSwing Arc 145 Degrees!!\r\nHydraulic Pressure 2250 PSI!!\r\nAll Boom and bucket Rod 50mm!!\r\nBucket Rotation Up to 170 Degrees!!', NULL, 8, 'backhoe-loader', '1'),
(112, 3, '2021-09-01 03:10:43', '2021-09-01 03:10:43', NULL, 'Bed Maker', 'Agro Asia Bed makers are designed to form irrigation bed perfectly. They have replaceable cutting edges. The mould board angle can help bunds form of a certain shape and size according to the crop and soil need.', NULL, 'HP required: from 50-100!!\r\nMouldboard angle: 5 adjusting positions!!\r\nWeight: 305 kg!!\r\nFrame Dimensions in mm: 100x100x5!!', NULL, 8, 'bund-maker', '1'),
(113, 3, '2021-09-01 03:12:38', '2021-09-01 03:12:38', NULL, 'Border Disc', 'Agro Asia Border disc as denoted by its name is an implement who defines the boundary for the irrigation ridges. It is also used for keep the erosion. It is an adjustable implement size and shape can be adjusted manually according to the requirement. It has a 3-point linkage with power requirement of 50hp & above.', NULL, 'Disc Size 26” diameter!!\r\nDisc tilt Adjustable!!\r\nWidth Adjustable!!\r\nAttachment 3 point linkage!!\r\nTractor compatibility 50 HP and above!!', NULL, 8, 'border-disc', '1'),
(114, 3, '2021-09-01 03:14:35', '2021-09-01 03:14:35', NULL, 'Multi Crop Thresher', 'Agro Asia Multi-crop thresher removes the grain from the husk. It uses axial flow threshing system and centrifugal blower cleaning system for giving an air blow cleaning. The process is easy insert the crop from one and thresher threshes out the grain from the opposite side', NULL, 'No. of Cutters 104-128!!\r\nHeight with Wheel 6′!!\r\nLength of Drum 4.5 – 5.5′!!\r\nWidth of Drum 48!!\r\nNo of PULLY 8!!\r\nNo of Belts 18!!\r\nBig Wheel two 32”!!\r\nSmall Wheel One 25”!!\r\nOverall Length 12′!!\r\nOverall Width 5′!!\r\nOverall Height 6′!!\r\nCleaning Efficiency: 99%!!\r\nGrain Breakage: ~ 0!!\r\nPower Requirement: >45HP!!\r\nLabour Requirement: 4!!\r\nPTO Speed: 540 RPM.!!\r\nFuel Consumption: 7 – 7.5 L/hr!!', NULL, 8, 'multi-crop-thresher', '1'),
(115, 3, '2021-09-01 03:16:45', '2021-09-01 03:16:45', NULL, 'Potato Planter', 'Agro Asia Potato Planters are used for creating ridges and sowing potato seeds with the help of a farm hands with a capacity of planting potatoes at a speed of 0.3ha/hr.', NULL, 'Specification For 2 Rows!!\r\n!!\r\nPower Requirement 50 hp & above!!\r\nSeed Capacity 240 kg!!\r\nFertilizer Box 150 kg!!\r\nDistribution Through Silver Aluminum 4 Nos.!!\r\nDouble Conveyer System Seed Holder 96 Nos. Cups!!\r\nSpecification For 4 Rows!!\r\n!!\r\nPower Requirement 85 hp & above!!\r\nSeed Capacity 600 kg!!\r\nFertilizer Box 300 kg!!\r\nDistribution Through Silver Aluminum 8 Nos.!!\r\nDouble Conveyer System Seed Holder 192 Nos. Cups!!', NULL, 8, 'potato-planter', '1'),
(116, 3, '2021-09-01 03:19:47', '2021-09-01 03:19:47', NULL, 'Potato Digger', 'Agro Asia Potato diggers are most suitable for the small farms. It has 3 links to connect with the tractor and is PTO operated. It digs the Potato through rotating wings and the potatoes are spread on the field.', NULL, NULL, NULL, 8, 'potato-digger', '1'),
(117, 3, '2021-09-01 03:21:22', '2021-09-01 03:21:22', NULL, 'Potato Digger & Spinner', 'Agro Asia Potato digger and spinners are attached at the back of tractor and are PTO operated. It is highly efficient as it digs the potatoes and separates them from soil and, the potatoes are later collected manually. It requires the horse power of 50 or above.', NULL, 'Total Length 9ft!!\r\nTotal Width 5.5ft!!\r\nTotal Height 3ft!!\r\nDigging Width 53 inches!!\r\nOutput 0.1ha/hr.!!', NULL, 8, 'potato-digger-and-spinner', '1'),
(118, 3, '2021-09-01 03:49:06', '2021-09-01 03:49:06', NULL, 'Sugarcane Planter With Ridger', NULL, NULL, NULL, NULL, 8, 'sugarcane-planter-with-ridger', '1'),
(119, 3, '2021-09-01 03:50:54', '2021-09-01 03:50:54', NULL, 'Sugarcane Ridger', NULL, NULL, NULL, NULL, 8, 'sugarcane-ridger', '1'),
(120, 3, '2021-09-01 03:52:11', '2021-09-01 03:52:11', NULL, 'Tractor Cabin', 'Agro Asia tractor cabin can be fitted in to any tractor. Cabin can be fitted with heater or Air conditioner', NULL, NULL, NULL, 8, 'tractor-cabin', '1'),
(121, 3, '2021-09-01 03:53:41', '2021-09-01 03:53:41', NULL, 'Tractor Forklift', NULL, NULL, NULL, NULL, 8, 'tractor-forklift', '1'),
(122, 3, '2021-09-01 03:55:15', '2021-09-01 03:55:15', NULL, 'Tractor Forkift Loader', 'Agro Asia Forklift are the tractor attachments used to lift heavy loads with flexible options of tilt and side shift. They are very useful in moving heavy items and in positioning them.', NULL, 'Capacity: up to 2000kg!!', NULL, 8, 'tractor-forkift-loader', '1'),
(123, 3, '2021-09-01 03:56:37', '2021-09-01 03:56:37', NULL, 'Water Bowser', 'Agro Asia Water Bowser can be attached to the tractors or can be tractor towable with capacity of up to 6000 Liters of water. They are available in round shape with steel tank and internal baffle. They have ladder access to the top with rear mounted water sprinkler taps. Used for the general purpose storage and distribution of fuel and water.', NULL, NULL, NULL, 8, 'water-bowser', '1'),
(124, 3, '2021-09-01 03:57:46', '2021-09-01 03:57:46', NULL, 'Wheat Straw Chopper', 'Agro Asia Wheat Straw Chopper are PTO operated. It harvests the wheat straws and cut them in to small pieces by combine harvester. The chopped wheat straws blow in to the attached trailer at the back. It has an output capacity of 0.8ha/hr.', NULL, NULL, NULL, 8, 'wheat-straw-chopper', '1'),
(125, 3, '2021-09-01 04:00:54', '2021-09-01 04:00:54', NULL, 'Road Sweeper', 'Agro Asia Road Sweeper is a PTO operated equipment. It helps in cleaning of hard surfaces. A road sweeper has 99 brushes with width of approximately 180 cm.', NULL, NULL, NULL, 8, 'road-sweeper', '1'),
(126, 3, '2021-09-01 04:02:39', '2021-09-01 04:02:39', NULL, 'Laser Land Leveler', 'Agro Asia laser land leveler are fitted on tractor for moistened or angled lands and are highly accurate. They are used with mixture of scrapper sensors to carry land to near flatness or a slight slope (as required).\r\nIt Includes Laser Transmitter, wires, control box, receiver and hydraulic operated scrapper.', NULL, 'Weight 550 kg!!\r\nHeight 2.5ft!!\r\nWidth 6 ft!!\r\ndepth 2 ft!!\r\nPower Requirement 50 hp & above!!', NULL, 8, 'laser-land-leveler', '1'),
(127, 3, '2021-09-01 04:03:54', '2021-09-01 04:03:54', NULL, 'Wheat Thresher', NULL, NULL, NULL, NULL, 8, 'wheat-thresher', '1'),
(128, 3, '2021-09-01 04:04:54', '2021-09-01 04:04:54', NULL, 'Rice Thresher', NULL, NULL, NULL, NULL, 8, 'rice-thresher', '1'),
(129, 3, '2021-09-01 04:06:47', '2021-09-01 04:06:47', NULL, 'Hay Baler', 'Balers is a machine which compress the cut or raked hay into compact squeezed bales in order to transport or store them easily.', NULL, 'Bale size Diameter X Width 85 X 90cm!!\r\nDimensions!!\r\nLength 245cm!!\r\nWidth 185cm!!\r\nHeight 160cm!!\r\nWeightApprox 450!!\r\nWork speed/hour 5-8km!!\r\nTire size 16X6.50-8-4PR!!\r\nHorsepower Requirement 22-30(40-65)kw/hp!!', NULL, 8, 'hay-baler', '1'),
(130, 3, '2021-09-01 04:08:06', '2021-09-01 04:08:06', NULL, 'Tractor Sun Canopy', 'Agro Asia Tractor Sun canopies are one of the tractor accessories which are flexible and light weight with ease in attaching or detaching from tractors. It is suitable for all tractors available for sale.', NULL, NULL, NULL, 8, 'tractor-sun-canopy', '1'),
(131, 3, '2021-09-01 04:09:20', '2021-09-01 04:09:20', NULL, 'Front End Weights', 'Agro Asia Front end weights are tractor accessories.!!\r\nThey are 20 kg each.', NULL, NULL, NULL, 8, 'front-end-weights', '1'),
(132, 3, '2021-09-01 04:10:31', '2021-09-01 04:10:31', NULL, 'Pintle Hook Adjustable', 'Agro Asia pintle hook is a tractor accessory which is adjustable and ideal for towing farm implements. Its attached at the back of the tractor and is suitable for all the tractors.', NULL, 'Weight: 39 kg , 50kg!!\r\nPower required: 50hp above.!!\r\nAsperiores, voluptatem perspiciatis.!!', NULL, 8, 'pintle-hook', '1'),
(133, 3, '2021-09-01 04:12:25', '2021-09-01 04:12:25', NULL, 'Drawbar - 09 Hole', NULL, NULL, NULL, NULL, 8, 'drawbar', '1'),
(134, 3, '2021-09-01 04:13:48', '2021-09-01 04:13:48', NULL, 'Swinging Drawbar', 'Agro Asia swinging drawbar is a safe and ideal gadget to use for carrying large loads. One end is attached to the tractor, and have 2 pinholes of 1 inch. The other end is connected to the towable machine and is with 3 pinholes, and these pin holes measure 3/4 inch. Can be fitted to all type of tractors having power of 50hp & above.', NULL, 'Length: 30 in.!!\r\nThickness: 1 in.!!\r\nWidth: 1-7/8 in.!!\r\nPin holes on tractor end: 1 in.!!\r\nPin holes on attachment end: 3/4 in.!!', NULL, 8, 'swinging-drawbar', '1'),
(135, 3, '2021-09-01 04:15:53', '2021-09-01 04:15:53', NULL, 'Power Tiller WM 1000', 'Agro Asia Power Tiller is a walking tractor widely used in agriculture for cultivation, tillage, sowing and weeding which contains a set of blades attached with a wheeled covering and powered by gasoline engine or electric motor', NULL, NULL, NULL, 8, 'power-tiller-wm-1000', '1'),
(136, 3, '2021-09-01 04:17:06', '2021-09-01 04:17:06', NULL, 'Power Tiller WM 1000n 6', NULL, NULL, NULL, NULL, 8, 'power-tiller-wm1000n-6', '1'),
(137, 3, '2021-09-01 04:18:20', '2021-09-01 04:18:20', NULL, 'Tractor filters', NULL, NULL, NULL, NULL, 8, 'tractor-filters', '1'),
(138, 3, '2021-09-01 04:19:20', '2021-09-01 04:19:20', NULL, 'Zerotillage Planter', NULL, NULL, NULL, NULL, 8, 'zerotillage-planter', '1'),
(139, 3, '2021-09-01 04:21:14', '2021-09-01 04:21:14', NULL, 'Ditcher', NULL, NULL, NULL, NULL, 8, 'ditcher', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tractor_images`
--

CREATE TABLE `tractor_images` (
  `id` int(11) NOT NULL,
  `tractor_id` int(11) NOT NULL,
  `images` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tractor_images`
--

INSERT INTO `tractor_images` (`id`, `tractor_id`, `images`, `created_at`, `updated_at`) VALUES
(62, 60, '/uploads/Tractors/TractorsImages/2021/August/rje25KwVs9TebwYh20210830084740000000.jpg', '2021-08-30 10:27:13', '2021-08-30 10:27:13'),
(64, 60, '/uploads/Tractors/TractorsImages/2021/August/m68y50lD2eD8qHZc20210830084740000000.jpg', '2021-08-30 08:47:40', '2021-08-30 08:47:40'),
(65, 60, '/uploads/Tractors/TractorsImages/2021/August/xtZS9Qut6i0HVjuK20210830084740000000.jpg', '2021-08-30 10:28:31', '2021-08-30 10:28:31'),
(66, 61, '/uploads/Tractors/TractorsImages/2021/August/TmxPwY49PZqVrbCF20210830085228000000.jpg', '2021-08-30 10:29:21', '2021-08-30 10:29:21'),
(67, 61, '/uploads/Tractors/TractorsImages/2021/August/fEVg7G7ZoqykUJep20210830085228000000.jpg', '2021-08-30 10:29:45', '2021-08-30 10:29:45'),
(68, 61, '/uploads/Tractors/TractorsImages/2021/August/IB6OVRWbmIkEjkCP20210830085228000000.jpg', '2021-08-30 08:52:28', '2021-08-30 08:52:28'),
(69, 61, '/uploads/Tractors/TractorsImages/2021/August/NzSaHupM3PBIv6u820210830085228000000.jpg', '2021-08-30 10:29:43', '2021-08-30 10:29:43'),
(70, 62, '/uploads/Tractors/TractorsImages/2021/August/TtUf3DafJqkrkWQw20210830085642000000.jpg', '2021-08-30 10:30:49', '2021-08-30 10:30:49'),
(71, 62, '/uploads/Tractors/TractorsImages/2021/August/3ZhyQiTBSjO2q73i20210830085642000000.jpg', '2021-08-30 10:30:21', '2021-08-30 10:30:21'),
(72, 62, '/uploads/Tractors/TractorsImages/2021/August/u5fvJ5eS8mz7hlC020210830085642000000.jpg', '2021-08-30 10:31:08', '2021-08-30 10:31:08'),
(73, 62, '/uploads/Tractors/TractorsImages/2021/August/Lv5SAHfS5gCNcduf20210830085642000000.jpg', '2021-08-30 10:31:06', '2021-08-30 10:31:06'),
(74, 63, '/uploads/Tractors/TractorsImages/2021/August/c9trhbJ3dCY4w4Jx20210830090518000000.jpg', '2021-08-30 10:31:49', '2021-08-30 10:31:49'),
(75, 63, '/uploads/Tractors/TractorsImages/2021/August/V536uCKJqIW9hqbO20210830090518000000.jpg', '2021-08-30 09:05:18', '2021-08-30 09:05:18'),
(76, 63, '/uploads/Tractors/TractorsImages/2021/August/E07YlRiGxkDFsa1G20210830090518000000.jpg', '2021-08-30 09:05:18', '2021-08-30 09:05:18'),
(77, 63, '/uploads/Tractors/TractorsImages/2021/August/Q2EfM9XAd2YGoKh120210830090518000000.jpg/uploads/Tractors/TractorsImages/2021/August/c9trhbJ3dCY4w4Jx20210830090518000000.jpg', '2021-08-30 10:31:47', '2021-08-30 10:31:47'),
(78, 64, '/uploads/Tractors/TractorsImages/2021/August/tc0QWEPU7TpV6VA020210830091000000000.jpg', '2021-08-30 10:32:17', '2021-08-30 10:32:17'),
(79, 64, '/uploads/Tractors/TractorsImages/2021/August/wPIIgk9ITGYUquqz20210830091000000000.jpg', '2021-08-30 09:10:00', '2021-08-30 09:10:00'),
(80, 64, '/uploads/Tractors/TractorsImages/2021/August/CrNytgGPPmHeJ23120210830091001000000.jpg', '2021-08-30 09:10:01', '2021-08-30 09:10:01'),
(81, 64, '/uploads/Tractors/TractorsImages/2021/August/UWX9zrEncl4lktJa20210830091001000000.jpg/uploads/Tractors/TractorsImages/2021/August/tc0QWEPU7TpV6VA020210830091000000000.jpg', '2021-08-30 10:32:15', '2021-08-30 10:32:15'),
(82, 65, '/uploads/Tractors/TractorsImages/2021/August/nVg3AY6Y7DKtz6jp20210830091206000000.jpg', '2021-08-30 10:33:05', '2021-08-30 10:33:05'),
(83, 65, '/uploads/Tractors/TractorsImages/2021/August/GOsdJTyB0TrvheB520210830091206000000.jpg', '2021-08-30 10:33:43', '2021-08-30 10:33:43'),
(84, 65, '/uploads/Tractors/TractorsImages/2021/August/gB79sJ37NfH459xD20210830091206000000.jpg', '2021-08-30 09:12:06', '2021-08-30 09:12:06'),
(85, 65, '/uploads/Tractors/TractorsImages/2021/August/6LWH19bbS7tgeQXp20210830091206000000.jpg', '2021-08-30 10:33:41', '2021-08-30 10:33:41'),
(86, 66, '/uploads/Tractors/TractorsImages/2021/August/F45xiGpSgob5Twer20210830091510000000.jpg', '2021-08-30 10:34:12', '2021-08-30 10:34:12'),
(87, 66, '/uploads/Tractors/TractorsImages/2021/August/b6lMNgaYs7KNSYgw20210830091510000000.jpg', '2021-08-30 10:34:49', '2021-08-30 10:34:49'),
(88, 66, '/uploads/Tractors/TractorsImages/2021/August/1NBovvV3x4ii66Z620210830091510000000.jpg', '2021-08-30 09:15:10', '2021-08-30 09:15:10'),
(89, 66, '/uploads/Tractors/TractorsImages/2021/August/aXycDUBUcnXtVcbm20210830091510000000.jpg', '2021-08-30 10:34:47', '2021-08-30 10:34:47'),
(90, 67, '/uploads/Tractors/TractorsImages/2021/August/00eSilHwrMo5Yokd20210830091704000000.jpg', '2021-08-30 10:35:11', '2021-08-30 10:35:11'),
(91, 67, '/uploads/Tractors/TractorsImages/2021/August/0u3iYZi5MIXel7ff20210830091704000000.jpg', '2021-08-30 10:35:30', '2021-08-30 10:35:30'),
(92, 67, '/uploads/Tractors/TractorsImages/2021/August/IaOaYfs4GOaQQpgW20210830091704000000.jpg', '2021-08-30 09:17:04', '2021-08-30 09:17:04'),
(93, 67, '/uploads/Tractors/TractorsImages/2021/August/n0HdXTGhlLKOqrnE20210830091704000000.jpg', '2021-08-30 10:35:28', '2021-08-30 10:35:28'),
(94, 68, '/uploads/Tractors/TractorsImages/2021/August/vSoeZXAo46AFxhNH20210830092126000000.jpg', '2021-08-30 10:45:13', '2021-08-30 10:45:13'),
(95, 68, '/uploads/Tractors/TractorsImages/2021/August/PAErQ37DAWYcij0P20210830092126000000.jpg', '2021-08-30 09:21:26', '2021-08-30 09:21:26'),
(96, 68, '/uploads/Tractors/TractorsImages/2021/August/W4OyxSEJfLQQK1vT20210830092126000000.jpg', '2021-08-30 10:45:41', '2021-08-30 10:45:41'),
(97, 68, '/uploads/Tractors/TractorsImages/2021/August/jxclG52VTEvM745M20210830092126000000.jpg', '2021-08-30 10:45:37', '2021-08-30 10:45:37'),
(98, 69, '/uploads/Tractors/TractorsImages/2021/August/EvCK8xTzqZ9wThcG20210830092516000000.jpg', '2021-08-30 10:46:20', '2021-08-30 10:46:20'),
(99, 69, '/uploads/Tractors/TractorsImages/2021/August/HolVTTPaCxrAb7kr20210830092516000000.jpg', '2021-08-30 10:46:42', '2021-08-30 10:46:42'),
(100, 69, '/uploads/Tractors/TractorsImages/2021/August/H11WxArcNerUJi0u20210830092516000000.jpg', '2021-08-30 09:25:16', '2021-08-30 09:25:16'),
(101, 69, '/uploads/Tractors/TractorsImages/2021/August/jGNPNM9vMHcUlC2A20210830092516000000.jpg', '2021-08-30 10:46:39', '2021-08-30 10:46:39'),
(102, 70, '/uploads/Tractors/TractorsImages/2021/August/kI6AR2y29pVTItl020210830092848000000.jpg', '2021-08-30 10:48:09', '2021-08-30 10:48:09'),
(103, 70, '/uploads/Tractors/TractorsImages/2021/August/QnFhFdon4JLsjRjL20210830092848000000.jpg', '2021-08-30 10:49:44', '2021-08-30 10:49:44'),
(105, 70, '/uploads/Tractors/TractorsImages/2021/August/jGNPNM9vMHcUlC2A20210830092516000000.jpg', '2021-08-30 10:53:34', '2021-08-30 10:53:34'),
(107, 71, '/uploads/Tractors/TractorsImages/2021/August/sLuKUWiMWOv7qCOd20210830093013000000.jpg', '2021-08-30 09:30:13', '2021-08-30 09:30:13'),
(108, 71, '/uploads/Tractors/TractorsImages/2021/August/ONPY1qKS3ZOqstUj20210830093013000000.jpg', '2021-08-30 09:30:13', '2021-08-30 09:30:13'),
(109, 71, '/uploads/Tractors/TractorsImages/2021/August/jGNPNM9vMHcUlC2A20210830092516000000.jpg', '2021-08-30 10:52:33', '2021-08-30 10:52:33'),
(110, 72, '/uploads/Tractors/TractorsImages/2021/August/eVr1yoaAILVptcWb20210830093659000000.jpg', '2021-08-30 09:36:59', '2021-08-30 09:36:59'),
(111, 72, '/uploads/Tractors/TractorsImages/2021/August/pU3VtNUFbnmgLr0a20210830093659000000.jpg', '2021-08-30 09:36:59', '2021-08-30 09:36:59'),
(112, 72, '/uploads/Tractors/TractorsImages/2021/August/fDPBxIHltl0etWFk20210830093659000000.jpg', '2021-08-30 09:36:59', '2021-08-30 09:36:59'),
(114, 73, '/uploads/Tractors/TractorsImages/2021/August/8emTxvi7r93RDdGg20210830093903000000.jpg', '2021-08-30 09:39:03', '2021-08-30 09:39:03'),
(115, 73, '/uploads/Tractors/TractorsImages/2021/August/Yx2LEPGYJWbu8tgS20210830093904000000.jpg', '2021-08-30 09:39:04', '2021-08-30 09:39:04'),
(116, 73, '/uploads/Tractors/TractorsImages/2021/August/Z9HiagjsGLtoEllJ20210830093904000000.jpg', '2021-08-30 09:39:04', '2021-08-30 09:39:04'),
(119, 74, '/uploads/Tractors/TractorsImages/2021/August/JFXiidm0xLa5S85Q20210830094034000000.jpg', '2021-08-30 09:40:34', '2021-08-30 09:40:34'),
(120, 74, '/uploads/Tractors/TractorsImages/2021/August/tCpWiYSFNExQFJRl20210830094034000000.jpg', '2021-08-30 09:40:34', '2021-08-30 09:40:34'),
(121, 74, '/uploads/Tractors/TractorsImages/2021/August/UDWFGXUIvBMey30I20210830094034000000.jpg', '2021-08-30 09:40:34', '2021-08-30 09:40:34'),
(123, 75, '/uploads/Tractors/TractorsImages/2021/August/3vlZTC0EiqEdvZ1020210830094208000000.jpg', '2021-08-30 09:42:08', '2021-08-30 09:42:08'),
(124, 75, '/uploads/Tractors/TractorsImages/2021/August/DhmZ74ncFtIyQ3ET20210830094208000000.jpg', '2021-08-30 09:42:08', '2021-08-30 09:42:08'),
(125, 75, '/uploads/Tractors/TractorsImages/2021/August/5OCRSNPkj52FCFNO20210830094208000000.jpg', '2021-08-30 09:42:08', '2021-08-30 09:42:08'),
(127, 76, '/uploads/Tractors/TractorsImages/2021/August/Hw62FLFbebP3Og2x20210830112527000000.jpg', '2021-08-30 11:25:27', '2021-08-30 11:25:27'),
(128, 76, '/uploads/Tractors/TractorsImages/2021/August/yaZErBWLF3BWgUpM20210830112527000000.jpg', '2021-08-30 11:25:27', '2021-08-30 11:25:27'),
(129, 76, '/uploads/Tractors/TractorsImages/2021/August/eT5Bp5DFvLvfyoUU20210830112527000000.jpg', '2021-08-30 11:25:27', '2021-08-30 11:25:27'),
(130, 77, '/uploads/Tractors/TractorsImages/2021/August/mSE6Dd23QoexEJSq20210830112753000000.jpg', '2021-08-30 11:27:53', '2021-08-30 11:27:53'),
(131, 77, '/uploads/Tractors/TractorsImages/2021/August/71RA1aIAubl0RzOf20210830112753000000.jpg', '2021-08-30 11:27:53', '2021-08-30 11:27:53'),
(132, 77, '/uploads/Tractors/TractorsImages/2021/August/KkTQweigiorEjz1v20210830112753000000.jpg', '2021-08-30 11:27:53', '2021-08-30 11:27:53'),
(133, 77, '/uploads/Tractors/TractorsImages/2021/August/mIcOIbOHtbSHw7VB20210830112753000000.jpg', '2021-08-30 11:27:53', '2021-08-30 11:27:53'),
(134, 78, '/uploads/Tractors/TractorsImages/2021/August/m2cB0yfd5thMrHRu20210830112914000000.jpg', '2021-08-30 11:29:14', '2021-08-30 11:29:14'),
(135, 78, '/uploads/Tractors/TractorsImages/2021/August/SMpK0b67qQ81XMhj20210830112915000000.jpg', '2021-08-30 11:29:15', '2021-08-30 11:29:15'),
(136, 78, '/uploads/Tractors/TractorsImages/2021/August/KOrofrudzT8WX0QS20210830112915000000.jpg', '2021-08-30 11:29:15', '2021-08-30 11:29:15'),
(137, 78, '/uploads/Tractors/TractorsImages/2021/August/0P972lkDh3zxpSxc20210830112915000000.jpg', '2021-08-30 11:29:15', '2021-08-30 11:29:15'),
(138, 79, '/uploads/Tractors/TractorsImages/2021/August/5foONWnbtOJqS2Ue20210830113526000000.jpg', '2021-08-30 11:35:26', '2021-08-30 11:35:26'),
(139, 79, '/uploads/Tractors/TractorsImages/2021/August/CL2dqTVCrA3yOecs20210830113526000000.jpg', '2021-08-30 11:35:26', '2021-08-30 11:35:26'),
(140, 79, '/uploads/Tractors/TractorsImages/2021/August/nczajSei03ccjpUC20210830113526000000.jpeg', '2021-08-30 11:35:26', '2021-08-30 11:35:26'),
(141, 79, '/uploads/Tractors/TractorsImages/2021/August/5L4QRjEtLK9o8kHO20210830113526000000.jpg', '2021-08-30 11:35:26', '2021-08-30 11:35:26'),
(142, 80, '/uploads/Tractors/TractorsImages/2021/August/nX1jV69agyiyg6oT20210830113712000000.jpg', '2021-08-30 11:37:12', '2021-08-30 11:37:12'),
(143, 80, '/uploads/Tractors/TractorsImages/2021/August/yJXmIPtM4fxH40gq20210830113712000000.jpg', '2021-08-30 11:37:12', '2021-08-30 11:37:12'),
(144, 80, '/uploads/Tractors/TractorsImages/2021/August/CwpcUzFIrRcgAtYt20210830113712000000.jpeg', '2021-08-30 11:37:12', '2021-08-30 11:37:12'),
(145, 80, '/uploads/Tractors/TractorsImages/2021/August/i6RMHUCbWNgW0UXQ20210830113712000000.jpg', '2021-08-30 11:37:12', '2021-08-30 11:37:12'),
(146, 81, '/uploads/Tractors/TractorsImages/2021/August/e171cpSIFPj5cbNe20210830113919000000.jpg', '2021-08-30 11:39:19', '2021-08-30 11:39:19'),
(147, 81, '/uploads/Tractors/TractorsImages/2021/August/EN3TUdwJ3KPighMd20210830113919000000.jpg', '2021-08-30 11:39:19', '2021-08-30 11:39:19'),
(148, 81, '/uploads/Tractors/TractorsImages/2021/August/sEI8B0wuX9fO5VS620210830113919000000.jpeg', '2021-08-30 11:39:19', '2021-08-30 11:39:19'),
(149, 81, '/uploads/Tractors/TractorsImages/2021/August/q7OapPatZ9Iljg3S20210830113919000000.jpg', '2021-08-30 11:39:19', '2021-08-30 11:39:19'),
(150, 82, '/uploads/Tractors/TractorsImages/2021/August/nWMRmiiZ0mWWODtq20210830114141000000.jpg', '2021-08-30 11:41:41', '2021-08-30 11:41:41'),
(151, 82, '/uploads/Tractors/TractorsImages/2021/August/6XvoHMtjbcGQ5Uru20210830114141000000.jpg', '2021-08-30 11:41:41', '2021-08-30 11:41:41'),
(152, 82, '/uploads/Tractors/TractorsImages/2021/August/ZRJSb0Oj0Hk4xzob20210830114141000000.jpg', '2021-08-30 11:41:41', '2021-08-30 11:41:41'),
(153, 82, '/uploads/Tractors/TractorsImages/2021/August/UNjWH6JyHw4EYc4120210830114141000000.jpg', '2021-08-30 11:41:41', '2021-08-30 11:41:41'),
(154, 83, '/uploads/Tractors/TractorsImages/2021/August/xSxYhJf0WO5EBB0d20210830114413000000.jpg', '2021-08-30 11:44:13', '2021-08-30 11:44:13'),
(155, 83, '/uploads/Tractors/TractorsImages/2021/August/gndjvW55ReSYKguT20210830114413000000.jpg', '2021-08-30 11:44:13', '2021-08-30 11:44:13'),
(156, 83, '/uploads/Tractors/TractorsImages/2021/August/bcUjTjjTgpJtkoD920210830114413000000.jpg', '2021-08-30 11:44:13', '2021-08-30 11:44:13'),
(160, 84, '/uploads/Tractors/TractorsImages/2021/August/TiRZ5eb90D94jPKI20210830114736000000.jpg', '2021-08-30 11:47:36', '2021-08-30 11:47:36'),
(161, 84, '/uploads/Tractors/TractorsImages/2021/August/H92cy9LlcQdHrYOd20210830114736000000.jpg', '2021-08-30 11:47:36', '2021-08-30 11:47:36'),
(163, 85, '/uploads/Tractors/TractorsImages/2021/August/mT1ipYj8LSrWzWOu20210830114922000000.jpg', '2021-08-30 11:49:22', '2021-08-30 11:49:22'),
(164, 85, '/uploads/Tractors/TractorsImages/2021/August/arU151UlHAZ3xiih20210830114922000000.jpg', '2021-08-30 11:49:22', '2021-08-30 11:49:22'),
(165, 85, '/uploads/Tractors/TractorsImages/2021/August/1XezZR4jkbcTYX0d20210830114922000000.jpg', '2021-08-30 11:49:22', '2021-08-30 11:49:22'),
(166, 84, '/uploads/Tractors/TractorsImages/2021/August/4IHNdDGNP9QqWk1N20210830122802000000.jpg', '2021-08-30 12:28:02', '2021-08-30 12:28:02'),
(167, 84, '/uploads/Tractors/TractorsImages/2021/August/weW9vJnI5GmZuWyh20210830122841000000.jpg', '2021-08-30 12:28:41', '2021-08-30 12:28:41'),
(169, 71, '/uploads/Tractors/TractorsImages/2021/August/tyf04gNoPnJatX5120210830123109000000.jpg', '2021-08-30 12:31:09', '2021-08-30 12:31:09'),
(170, 76, '/uploads/Tractors/TractorsImages/2021/August/mAB5KC6W4lPsahSN20210830123232000000.jpg', '2021-08-30 12:32:32', '2021-08-30 12:32:32'),
(171, 72, '/uploads/Tractors/TractorsImages/2021/August/vKPKwfn3zY8kUb4e20210830123318000000.jpg', '2021-08-30 12:33:18', '2021-08-30 12:33:18'),
(172, 74, '/uploads/Tractors/TractorsImages/2021/August/mL0vJtUljAldLhCT20210830123343000000.jpg', '2021-08-30 12:33:43', '2021-08-30 12:33:43'),
(173, 75, '/uploads/Tractors/TractorsImages/2021/August/xrqOlOs4D7jVB4fb20210830123410000000.jpg', '2021-08-30 12:34:10', '2021-08-30 12:34:10'),
(174, 60, '/uploads/Tractors/TractorsImages/2021/September/7vwp5wvaazSBeNfX20210901064155000000.jpg', '2021-09-01 06:41:55', '2021-09-01 06:41:55'),
(175, 86, '/uploads/Tractors/TractorsImages/2021/September/wbE7cGBTCxtllAbT20210901064452000000.jpg', '2021-09-01 06:44:52', '2021-09-01 06:44:52'),
(176, 86, '/uploads/Tractors/TractorsImages/2021/September/DLJTKNwubk9Ytbh620210901064452000000.jpg', '2021-09-01 06:44:52', '2021-09-01 06:44:52'),
(177, 86, '/uploads/Tractors/TractorsImages/2021/September/7gWQUeW2XMS97yhc20210901064452000000.jpg', '2021-09-01 06:44:52', '2021-09-01 06:44:52'),
(178, 86, '/uploads/Tractors/TractorsImages/2021/September/ThHUFBrN5xEwCAsn20210901064727000000.jpg', '2021-09-01 06:47:27', '2021-09-01 06:47:27'),
(179, 87, '/uploads/Tractors/TractorsImages/2021/September/jHYvLUXjRxHpJzDC20210901065511000000.jpg', '2021-09-01 06:55:11', '2021-09-01 06:55:11'),
(180, 87, '/uploads/Tractors/TractorsImages/2021/September/VAMTI2F0ZqotRXHC20210901065511000000.jpg', '2021-09-01 06:55:11', '2021-09-01 06:55:11'),
(181, 87, '/uploads/Tractors/TractorsImages/2021/September/uGkrGj9jVkrFoYZY20210901065511000000.jpg', '2021-09-01 06:55:11', '2021-09-01 06:55:11'),
(183, 88, '/uploads/Tractors/TractorsImages/2021/September/XGZWLgkC0f0d9gkV20210901065718000000.jpg', '2021-09-01 06:57:18', '2021-09-01 06:57:18'),
(184, 88, '/uploads/Tractors/TractorsImages/2021/September/GsN2yLIkdyZKFvpn20210901065718000000.jpg', '2021-09-01 06:57:18', '2021-09-01 06:57:18'),
(185, 88, '/uploads/Tractors/TractorsImages/2021/September/DNr34ESoQNYzjRGd20210901065718000000.jpg', '2021-09-01 06:57:18', '2021-09-01 06:57:18'),
(187, 88, '/uploads/Tractors/TractorsImages/2021/September/IZ4Wd9YPXkQW5siz20210901065838000000.jpg', '2021-09-01 06:58:38', '2021-09-01 06:58:38'),
(188, 87, '/uploads/Tractors/TractorsImages/2021/September/ah0iudLBnxCS7aeY20210901065911000000.jpg', '2021-09-01 06:59:11', '2021-09-01 06:59:11'),
(189, 73, '/uploads/Tractors/TractorsImages/2021/September/nExAStQdjBIDeijF20210901070008000000.jpg', '2021-09-01 07:00:08', '2021-09-01 07:00:08'),
(190, 89, '/uploads/Tractors/TractorsImages/2021/September/SvIIXJN4kACPBon720210901070317000000.jpg', '2021-09-01 07:03:17', '2021-09-01 07:03:17'),
(191, 89, '/uploads/Tractors/TractorsImages/2021/September/Ah11FeUytZsk1Ek120210901070317000000.jpg', '2021-09-01 07:03:17', '2021-09-01 07:03:17'),
(192, 89, '/uploads/Tractors/TractorsImages/2021/September/oTs419Wmo5bbUTZk20210901070317000000.jpg', '2021-09-01 07:03:17', '2021-09-01 07:03:17'),
(193, 89, '/uploads/Tractors/TractorsImages/2021/September/qjrPP3a6t1dLjR5b20210901070355000000.jpg', '2021-09-01 07:03:55', '2021-09-01 07:03:55'),
(194, 90, '/uploads/Tractors/TractorsImages/2021/September/VOkGRevMmHshH0TH20210901070736000000.jpg', '2021-09-01 07:07:36', '2021-09-01 07:07:36'),
(195, 90, '/uploads/Tractors/TractorsImages/2021/September/L1gvUHJVIXjAQCNt20210901070736000000.jpg', '2021-09-01 07:07:36', '2021-09-01 07:07:36'),
(196, 90, '/uploads/Tractors/TractorsImages/2021/September/OeUxeGfEZhvtWofD20210901070736000000.jpg', '2021-09-01 07:07:36', '2021-09-01 07:07:36'),
(197, 90, '/uploads/Tractors/TractorsImages/2021/September/vnp5nZO96WjueUvd20210901070747000000.jpg', '2021-09-01 07:07:47', '2021-09-01 07:07:47'),
(198, 91, '/uploads/Tractors/TractorsImages/2021/September/ONQhj3Q2t1W8XWUN20210901070941000000.jpg', '2021-09-01 07:09:41', '2021-09-01 07:09:41'),
(199, 91, '/uploads/Tractors/TractorsImages/2021/September/Vy00lAwINCgQK78M20210901070941000000.jpg', '2021-09-01 07:09:41', '2021-09-01 07:09:41'),
(200, 91, '/uploads/Tractors/TractorsImages/2021/September/j5wuVk56WCXOEE1i20210901070941000000.jpg', '2021-09-01 07:09:41', '2021-09-01 07:09:41'),
(201, 91, '/uploads/Tractors/TractorsImages/2021/September/qxvMHHLTzfNAiUaJ20210901070955000000.jpg', '2021-09-01 07:09:55', '2021-09-01 07:09:55'),
(202, 92, '/uploads/Tractors/TractorsImages/2021/September/puYPfUKNnsCdrTng20210901071459000000.jpg', '2021-09-01 07:14:59', '2021-09-01 07:14:59'),
(203, 92, '/uploads/Tractors/TractorsImages/2021/September/BKo0drFRkEY9SYWz20210901071459000000.jpg', '2021-09-01 07:14:59', '2021-09-01 07:14:59'),
(204, 92, '/uploads/Tractors/TractorsImages/2021/September/UuIljBynJiNp67v020210901071459000000.jpg', '2021-09-01 07:14:59', '2021-09-01 07:14:59'),
(205, 92, '/uploads/Tractors/TractorsImages/2021/September/gD1vYyFQhlqbadRW20210901071510000000.jpg', '2021-09-01 07:15:10', '2021-09-01 07:15:10'),
(206, 93, '/uploads/Tractors/TractorsImages/2021/September/p7UeuUapVmAgwPB520210901072330000000.jpg', '2021-09-01 07:23:30', '2021-09-01 07:23:30'),
(207, 93, '/uploads/Tractors/TractorsImages/2021/September/sdpzS4pNuq5s72oD20210901072330000000.jpg', '2021-09-01 07:23:30', '2021-09-01 07:23:30'),
(208, 93, '/uploads/Tractors/TractorsImages/2021/September/s5QjSmC1brCtPIHR20210901072330000000.jpg', '2021-09-01 07:23:30', '2021-09-01 07:23:30'),
(209, 93, '/uploads/Tractors/TractorsImages/2021/September/Sgjxf1Z6I5LNhdzk20210901072343000000.jpg', '2021-09-01 07:23:43', '2021-09-01 07:23:43'),
(210, 94, '/uploads/Tractors/TractorsImages/2021/September/iCF1Is7b7c9Gbh7G20210901072706000000.jpg', '2021-09-01 07:27:06', '2021-09-01 07:27:06'),
(211, 94, '/uploads/Tractors/TractorsImages/2021/September/mllLaKT8VkbYHBPK20210901072706000000.jpg', '2021-09-01 07:27:06', '2021-09-01 07:27:06'),
(212, 94, '/uploads/Tractors/TractorsImages/2021/September/BX7daOZWswho1hQR20210901072706000000.jpg', '2021-09-01 07:27:06', '2021-09-01 07:27:06'),
(213, 94, '/uploads/Tractors/TractorsImages/2021/September/K6jeYQsKHQjBEV6d20210901072718000000.jpg', '2021-09-01 07:27:18', '2021-09-01 07:27:18'),
(214, 95, '/uploads/Tractors/TractorsImages/2021/September/qUh7Zq3NDluPI1yJ20210901073024000000.jpg', '2021-09-01 07:30:24', '2021-09-01 07:30:24'),
(215, 95, '/uploads/Tractors/TractorsImages/2021/September/obQgJyHXt6zfSFdP20210901073024000000.jpg', '2021-09-01 07:30:24', '2021-09-01 07:30:24'),
(216, 95, '/uploads/Tractors/TractorsImages/2021/September/fLsdxehHEDgiPL8N20210901073024000000.jpg', '2021-09-01 07:30:24', '2021-09-01 07:30:24'),
(217, 95, '/uploads/Tractors/TractorsImages/2021/September/VHJCxsv9ZvuVis5l20210901073038000000.jpg', '2021-09-01 07:30:38', '2021-09-01 07:30:38'),
(218, 96, '/uploads/Tractors/TractorsImages/2021/September/ygmGfzeZA175yEnC20210901073539000000.jpg', '2021-09-01 07:35:39', '2021-09-01 07:35:39'),
(219, 96, '/uploads/Tractors/TractorsImages/2021/September/intl7IiOJ3b4v6yK20210901073539000000.jpg', '2021-09-01 07:35:39', '2021-09-01 07:35:39'),
(220, 96, '/uploads/Tractors/TractorsImages/2021/September/vYaLs6V8TGfpmfzO20210901073539000000.jpg', '2021-09-01 07:35:39', '2021-09-01 07:35:39'),
(221, 96, '/uploads/Tractors/TractorsImages/2021/September/XPgYYqVN9GgQ0EUm20210901073551000000.jpg', '2021-09-01 07:35:51', '2021-09-01 07:35:51'),
(222, 97, '/uploads/Tractors/TractorsImages/2021/September/w8cFD8gcjjTxjB2X20210901073902000000.jpg', '2021-09-01 07:39:02', '2021-09-01 07:39:02'),
(223, 97, '/uploads/Tractors/TractorsImages/2021/September/UE8Dr19xrdVsKK0w20210901073902000000.jpg', '2021-09-01 07:39:02', '2021-09-01 07:39:02'),
(224, 97, '/uploads/Tractors/TractorsImages/2021/September/UUqCVUyLGx6sveBu20210901073902000000.jpg', '2021-09-01 07:39:02', '2021-09-01 07:39:02'),
(225, 97, '/uploads/Tractors/TractorsImages/2021/September/sG9nsZJqDVBhMv1R20210901073926000000.jpg', '2021-09-01 07:39:26', '2021-09-01 07:39:26'),
(226, 98, '/uploads/Tractors/TractorsImages/2021/September/6IED8PZxLO1NQ96C20210901074120000000.jpg', '2021-09-01 07:41:20', '2021-09-01 07:41:20'),
(227, 98, '/uploads/Tractors/TractorsImages/2021/September/nhucxI1fenlz3UmA20210901074120000000.jpg', '2021-09-01 07:41:20', '2021-09-01 07:41:20'),
(228, 98, '/uploads/Tractors/TractorsImages/2021/September/8uccIstET2Me82f920210901074120000000.jpg', '2021-09-01 07:41:20', '2021-09-01 07:41:20'),
(229, 98, '/uploads/Tractors/TractorsImages/2021/September/mnXmIegiV5jUrT0O20210901074139000000.jpg', '2021-09-01 07:41:39', '2021-09-01 07:41:39'),
(230, 99, '/uploads/Tractors/TractorsImages/2021/September/v25VLtOMEi9GB2Sg20210901074450000000.jpg', '2021-09-01 07:44:50', '2021-09-01 07:44:50'),
(231, 99, '/uploads/Tractors/TractorsImages/2021/September/ub2pwc3fbGZcDJxm20210901074450000000.jpg', '2021-09-01 07:44:50', '2021-09-01 07:44:50'),
(232, 99, '/uploads/Tractors/TractorsImages/2021/September/9i2ZlKAf6lYYDbC520210901074450000000.jpg', '2021-09-01 07:44:50', '2021-09-01 07:44:50'),
(233, 99, '/uploads/Tractors/TractorsImages/2021/September/TA2JfvIT8dqX962r20210901074502000000.jpg', '2021-09-01 07:45:02', '2021-09-01 07:45:02'),
(234, 100, '/uploads/Tractors/TractorsImages/2021/September/GjlG7E7bWWMR8Lh120210901074619000000.jpg', '2021-09-01 07:46:19', '2021-09-01 07:46:19'),
(235, 100, '/uploads/Tractors/TractorsImages/2021/September/ne6juVKO1XQLkdkX20210901074619000000.jpg', '2021-09-01 07:46:19', '2021-09-01 07:46:19'),
(236, 100, '/uploads/Tractors/TractorsImages/2021/September/lzix4fxsYcLjf1y620210901074619000000.jpg', '2021-09-01 07:46:19', '2021-09-01 07:46:19'),
(237, 100, '/uploads/Tractors/TractorsImages/2021/September/tOooGF28o6JZHxOv20210901074630000000.jpg', '2021-09-01 07:46:30', '2021-09-01 07:46:30'),
(238, 101, '/uploads/Tractors/TractorsImages/2021/September/5rcKt1nvSLBtGsT620210901074824000000.jpg', '2021-09-01 07:48:24', '2021-09-01 07:48:24'),
(239, 101, '/uploads/Tractors/TractorsImages/2021/September/01aL2l7KBu3FJfpC20210901074824000000.jpg', '2021-09-01 07:48:24', '2021-09-01 07:48:24'),
(240, 101, '/uploads/Tractors/TractorsImages/2021/September/udlaJ3Uv5IkZgpc520210901074824000000.jpg', '2021-09-01 07:48:24', '2021-09-01 07:48:24'),
(241, 101, '/uploads/Tractors/TractorsImages/2021/September/LAWIFaZeRT3qkvcv20210901074836000000.jpg', '2021-09-01 07:48:36', '2021-09-01 07:48:36'),
(242, 102, '/uploads/Tractors/TractorsImages/2021/September/LaG4qHoEz8MRXJOd20210901075017000000.jpg', '2021-09-01 07:50:17', '2021-09-01 07:50:17'),
(243, 102, '/uploads/Tractors/TractorsImages/2021/September/JYMNdApXeZYFxDG020210901075017000000.jpg', '2021-09-01 07:50:17', '2021-09-01 07:50:17'),
(244, 102, '/uploads/Tractors/TractorsImages/2021/September/JezaR1FJTYwoA7Nn20210901075017000000.jpg', '2021-09-01 07:50:17', '2021-09-01 07:50:17'),
(245, 102, '/uploads/Tractors/TractorsImages/2021/September/SeIKCP9ZYkjAl4Pj20210901075039000000.jpg', '2021-09-01 07:50:39', '2021-09-01 07:50:39'),
(246, 103, '/uploads/Tractors/TractorsImages/2021/September/o37FKJ2pvCAtUsAD20210901075220000000.jpg', '2021-09-01 07:52:20', '2021-09-01 07:52:20'),
(247, 103, '/uploads/Tractors/TractorsImages/2021/September/0vHikZEQBob3MnOQ20210901075220000000.jpg', '2021-09-01 07:52:20', '2021-09-01 07:52:20'),
(248, 103, '/uploads/Tractors/TractorsImages/2021/September/26FficvxBYDhvkjv20210901075220000000.jpg', '2021-09-01 07:52:20', '2021-09-01 07:52:20'),
(249, 103, '/uploads/Tractors/TractorsImages/2021/September/dW0Ip3UTuzMC9MWW20210901075246000000.jpg', '2021-09-01 07:52:46', '2021-09-01 07:52:46'),
(250, 104, '/uploads/Tractors/TractorsImages/2021/September/nr2VfPeriAQdk2ZF20210901075423000000.jpg', '2021-09-01 07:54:23', '2021-09-01 07:54:23'),
(251, 104, '/uploads/Tractors/TractorsImages/2021/September/xQpukt1qMOItMzeP20210901075423000000.jpg', '2021-09-01 07:54:23', '2021-09-01 07:54:23'),
(252, 104, '/uploads/Tractors/TractorsImages/2021/September/ZxYTyVgVpJtFk0h520210901075423000000.jpg', '2021-09-01 07:54:23', '2021-09-01 07:54:23'),
(253, 104, '/uploads/Tractors/TractorsImages/2021/September/Ir4vwPsCvoNVcCHq20210901075443000000.jpg', '2021-09-01 07:54:43', '2021-09-01 07:54:43'),
(254, 105, '/uploads/Tractors/TractorsImages/2021/September/7F5ulsu5lOXhQevg20210901075651000000.jpg', '2021-09-01 07:56:51', '2021-09-01 07:56:51'),
(255, 105, '/uploads/Tractors/TractorsImages/2021/September/MMfaqg3l4f1RNOuK20210901075651000000.jpg', '2021-09-01 07:56:51', '2021-09-01 07:56:51'),
(256, 105, '/uploads/Tractors/TractorsImages/2021/September/XlDk5kcmilCYdsp520210901075651000000.jpg', '2021-09-01 07:56:51', '2021-09-01 07:56:51'),
(257, 105, '/uploads/Tractors/TractorsImages/2021/September/E8yROWXqljXTrt9O20210901075717000000.jpg', '2021-09-01 07:57:17', '2021-09-01 07:57:17'),
(258, 106, '/uploads/Tractors/TractorsImages/2021/September/ByUtQJuiYYnD42h520210901075927000000.jpg', '2021-09-01 07:59:27', '2021-09-01 07:59:27'),
(259, 106, '/uploads/Tractors/TractorsImages/2021/September/GLU3tGm57FL7deaf20210901075927000000.jpg', '2021-09-01 07:59:27', '2021-09-01 07:59:27'),
(260, 106, '/uploads/Tractors/TractorsImages/2021/September/MtckHhZKZPrsdRsx20210901075927000000.jpg', '2021-09-01 07:59:27', '2021-09-01 07:59:27'),
(261, 106, '/uploads/Tractors/TractorsImages/2021/September/604DcoM1D6DGoUND20210901075948000000.jpg', '2021-09-01 07:59:48', '2021-09-01 07:59:48'),
(262, 107, '/uploads/Tractors/TractorsImages/2021/September/02ZSzd8q1Ec6cfGM20210901080126000000.jpg', '2021-09-01 08:01:26', '2021-09-01 08:01:26'),
(263, 107, '/uploads/Tractors/TractorsImages/2021/September/an6sr0PgOunWBsTB20210901080126000000.jpg', '2021-09-01 08:01:26', '2021-09-01 08:01:26'),
(264, 107, '/uploads/Tractors/TractorsImages/2021/September/eaYzpoDlBbJbOUdk20210901080126000000.jpg', '2021-09-01 08:01:26', '2021-09-01 08:01:26'),
(265, 107, '/uploads/Tractors/TractorsImages/2021/September/N38ykbHmf7rv5JVT20210901080141000000.jpg', '2021-09-01 08:01:41', '2021-09-01 08:01:41'),
(266, 108, '/uploads/Tractors/TractorsImages/2021/September/2e8w1Qo4QavCFqzc20210901080317000000.jpg', '2021-09-01 08:03:17', '2021-09-01 08:03:17'),
(267, 108, '/uploads/Tractors/TractorsImages/2021/September/FZHoSR7r38LqLqCY20210901080317000000.jpg', '2021-09-01 08:03:17', '2021-09-01 08:03:17'),
(268, 108, '/uploads/Tractors/TractorsImages/2021/September/r4IGjirNGCW6Puhf20210901080317000000.jpg', '2021-09-01 08:03:17', '2021-09-01 08:03:17'),
(269, 108, '/uploads/Tractors/TractorsImages/2021/September/PwO1I1pHIhK7lk0220210901080334000000.jpg', '2021-09-01 08:03:34', '2021-09-01 08:03:34'),
(270, 109, '/uploads/Tractors/TractorsImages/2021/September/CGynePOVarKuicP620210901080451000000.jpg', '2021-09-01 08:04:51', '2021-09-01 08:04:51'),
(271, 109, '/uploads/Tractors/TractorsImages/2021/September/hACL5mHfKn6Ao3ht20210901080451000000.jpg', '2021-09-01 08:04:51', '2021-09-01 08:04:51'),
(272, 109, '/uploads/Tractors/TractorsImages/2021/September/SEEcavkdAwribWXL20210901080451000000.jpg', '2021-09-01 08:04:51', '2021-09-01 08:04:51'),
(273, 109, '/uploads/Tractors/TractorsImages/2021/September/T7uBPbGLJw2TzpAg20210901080509000000.jpg', '2021-09-01 08:05:09', '2021-09-01 08:05:09'),
(274, 110, '/uploads/Tractors/TractorsImages/2021/September/2kF9xpB6ULcKsJ5I20210901080701000000.jpg', '2021-09-01 08:07:01', '2021-09-01 08:07:01'),
(275, 110, '/uploads/Tractors/TractorsImages/2021/September/IggrGFjUF3b71wz020210901080701000000.jpg', '2021-09-01 08:07:01', '2021-09-01 08:07:01'),
(276, 110, '/uploads/Tractors/TractorsImages/2021/September/72np7f9f5AFmQEAT20210901080701000000.jpg', '2021-09-01 08:07:01', '2021-09-01 08:07:01'),
(277, 110, '/uploads/Tractors/TractorsImages/2021/September/tNelq7xWDAqo0DNJ20210901080722000000.jpg', '2021-09-01 08:07:22', '2021-09-01 08:07:22'),
(278, 111, '/uploads/Tractors/TractorsImages/2021/September/sq5bCsEr2TZCa15620210901080852000000.jpg', '2021-09-01 08:08:52', '2021-09-01 08:08:52'),
(279, 111, '/uploads/Tractors/TractorsImages/2021/September/hWWuXdP5czmZmk2j20210901080852000000.jpg', '2021-09-01 08:08:52', '2021-09-01 08:08:52'),
(280, 111, '/uploads/Tractors/TractorsImages/2021/September/v060Fk6R43yYjZgZ20210901080852000000.jpg', '2021-09-01 08:08:52', '2021-09-01 08:08:52'),
(281, 111, '/uploads/Tractors/TractorsImages/2021/September/xPQOf2ULGBSDrILR20210901080916000000.jpg', '2021-09-01 08:09:16', '2021-09-01 08:09:16'),
(282, 112, '/uploads/Tractors/TractorsImages/2021/September/iSrXnwch8oVjtGgW20210901081043000000.jpg', '2021-09-01 08:10:43', '2021-09-01 08:10:43'),
(283, 112, '/uploads/Tractors/TractorsImages/2021/September/1QhXkD9ycUu4McQe20210901081043000000.jpg', '2021-09-01 08:10:43', '2021-09-01 08:10:43'),
(284, 112, '/uploads/Tractors/TractorsImages/2021/September/sG1Oxs9MvZC59c0720210901081043000000.jpg', '2021-09-01 08:10:43', '2021-09-01 08:10:43'),
(285, 112, '/uploads/Tractors/TractorsImages/2021/September/quOGpFlMmJPMNyTs20210901081053000000.jpg', '2021-09-01 08:10:53', '2021-09-01 08:10:53'),
(286, 113, '/uploads/Tractors/TractorsImages/2021/September/Z9F8wUyeXZ6VQXz520210901081238000000.jpg', '2021-09-01 08:12:38', '2021-09-01 08:12:38'),
(287, 114, '/uploads/Tractors/TractorsImages/2021/September/N99VLl6uvQrxNABG20210901081436000000.png', '2021-09-01 08:14:36', '2021-09-01 08:14:36'),
(288, 114, '/uploads/Tractors/TractorsImages/2021/September/tHQUTTjWl4laZZo120210901081436000000.png', '2021-09-01 08:14:36', '2021-09-01 08:14:36'),
(289, 114, '/uploads/Tractors/TractorsImages/2021/September/h10FZqartHJq14L620210901081436000000.png', '2021-09-01 08:14:36', '2021-09-01 08:14:36'),
(290, 114, '/uploads/Tractors/TractorsImages/2021/September/hLlLD0G59dTqjFLC20210901081446000000.jpg', '2021-09-01 08:14:46', '2021-09-01 08:14:46'),
(292, 115, '/uploads/Tractors/TractorsImages/2021/September/HqDr1lD46WiRGlAW20210901081718000000.jpg', '2021-09-01 08:17:18', '2021-09-01 08:17:18'),
(293, 115, '/uploads/Tractors/TractorsImages/2021/September/HurO890UeBjleYQr20210901081718000000.jpg', '2021-09-01 08:17:18', '2021-09-01 08:17:18'),
(294, 115, '/uploads/Tractors/TractorsImages/2021/September/QnQG6FhKm10i1T4220210901081718000000.jpg', '2021-09-01 08:17:18', '2021-09-01 08:17:18'),
(295, 115, '/uploads/Tractors/TractorsImages/2021/September/PnyGoyv4hNcT6JGr20210901081732000000.jpg', '2021-09-01 08:17:32', '2021-09-01 08:17:32'),
(296, 116, '/uploads/Tractors/TractorsImages/2021/September/1LjkZMJm7TuA2ujZ20210901081947000000.jpg', '2021-09-01 08:19:47', '2021-09-01 08:19:47'),
(297, 116, '/uploads/Tractors/TractorsImages/2021/September/bQtggTVvi6OsAlFa20210901081947000000.jpg', '2021-09-01 08:19:47', '2021-09-01 08:19:47'),
(298, 116, '/uploads/Tractors/TractorsImages/2021/September/wA2Olu9BOBpxaCPM20210901081947000000.jpg', '2021-09-01 08:19:47', '2021-09-01 08:19:47'),
(299, 116, '/uploads/Tractors/TractorsImages/2021/September/CdnHe0D08c5bN2Oe20210901081957000000.jpg', '2021-09-01 08:19:57', '2021-09-01 08:19:57'),
(300, 117, '/uploads/Tractors/TractorsImages/2021/September/CNcgKJHVA7sQN2Vm20210901082122000000.jpg', '2021-09-01 08:21:22', '2021-09-01 08:21:22'),
(301, 117, '/uploads/Tractors/TractorsImages/2021/September/quG8OVQ8EkxMFyXC20210901082122000000.jpg', '2021-09-01 08:21:22', '2021-09-01 08:21:22'),
(302, 117, '/uploads/Tractors/TractorsImages/2021/September/5qJ6SnzcIhPLZpRn20210901082122000000.jpg', '2021-09-01 08:21:22', '2021-09-01 08:21:22'),
(303, 117, '/uploads/Tractors/TractorsImages/2021/September/JUyeMD0F5pf85jyi20210901082134000000.jpg', '2021-09-01 08:21:34', '2021-09-01 08:21:34'),
(304, 118, '/uploads/Tractors/TractorsImages/2021/September/KGgNUdddVrmzlZm720210901084906000000.jpg', '2021-09-01 08:49:06', '2021-09-01 08:49:06'),
(305, 119, '/uploads/Tractors/TractorsImages/2021/September/d6GRUKMoeHUgCRN320210901085054000000.jpg', '2021-09-01 08:50:54', '2021-09-01 08:50:54'),
(306, 119, '/uploads/Tractors/TractorsImages/2021/September/3WC21cGxnnb5blgH20210901085054000000.jpg', '2021-09-01 08:50:54', '2021-09-01 08:50:54'),
(307, 119, '/uploads/Tractors/TractorsImages/2021/September/lJ71XjOtKhULicjH20210901085054000000.jpg', '2021-09-01 08:50:54', '2021-09-01 08:50:54'),
(308, 119, '/uploads/Tractors/TractorsImages/2021/September/j6oDyJfJaJOu2l7Z20210901085105000000.jpg', '2021-09-01 08:51:05', '2021-09-01 08:51:05'),
(309, 120, '/uploads/Tractors/TractorsImages/2021/September/ZBt9HlAVninRmSvw20210901085211000000.jpg', '2021-09-01 08:52:11', '2021-09-01 08:52:11'),
(310, 120, '/uploads/Tractors/TractorsImages/2021/September/vtB1CD0l8CSnPLJC20210901085211000000.jpg', '2021-09-01 08:52:11', '2021-09-01 08:52:11'),
(311, 120, '/uploads/Tractors/TractorsImages/2021/September/LywHnAuRbCvqjJZ820210901085211000000.jpg', '2021-09-01 08:52:11', '2021-09-01 08:52:11'),
(312, 120, '/uploads/Tractors/TractorsImages/2021/September/GWFJVntdzUjCqLe820210901085223000000.jpg', '2021-09-01 08:52:23', '2021-09-01 08:52:23'),
(313, 121, '/uploads/Tractors/TractorsImages/2021/September/nqzIKu9S1kKCrqVX20210901085341000000.jpg', '2021-09-01 08:53:41', '2021-09-01 08:53:41'),
(314, 121, '/uploads/Tractors/TractorsImages/2021/September/L9W5JbzJAUgRdU3K20210901085341000000.jpg', '2021-09-01 08:53:41', '2021-09-01 08:53:41'),
(315, 121, '/uploads/Tractors/TractorsImages/2021/September/RcIbPVfD0j9PxaQX20210901085341000000.jpg', '2021-09-01 08:53:41', '2021-09-01 08:53:41'),
(316, 121, '/uploads/Tractors/TractorsImages/2021/September/FDErXQfzJ9bVKWcG20210901085352000000.jpg', '2021-09-01 08:53:52', '2021-09-01 08:53:52'),
(317, 122, '/uploads/Tractors/TractorsImages/2021/September/zH0Sr1wEzXemKAR820210901085515000000.jpg', '2021-09-01 08:55:15', '2021-09-01 08:55:15'),
(318, 122, '/uploads/Tractors/TractorsImages/2021/September/mMBCfUD3Ixopcoxb20210901085515000000.jpg', '2021-09-01 08:55:15', '2021-09-01 08:55:15'),
(319, 122, '/uploads/Tractors/TractorsImages/2021/September/DmrCASCL4DaeSGOj20210901085515000000.jpg', '2021-09-01 08:55:15', '2021-09-01 08:55:15'),
(320, 122, '/uploads/Tractors/TractorsImages/2021/September/VEENaIihsduF8Ryj20210901085526000000.jpg', '2021-09-01 08:55:26', '2021-09-01 08:55:26'),
(321, 123, '/uploads/Tractors/TractorsImages/2021/September/S7FIQtqUuKEKoNHO20210901085637000000.jpg', '2021-09-01 08:56:37', '2021-09-01 08:56:37'),
(322, 123, '/uploads/Tractors/TractorsImages/2021/September/up4TZ0nuJUIvpJIi20210901085637000000.jpg', '2021-09-01 08:56:37', '2021-09-01 08:56:37'),
(323, 123, '/uploads/Tractors/TractorsImages/2021/September/MFLyU72H4vSz4TSR20210901085637000000.jpg', '2021-09-01 08:56:37', '2021-09-01 08:56:37'),
(324, 123, '/uploads/Tractors/TractorsImages/2021/September/N1poo0Jzj2nxnt1j20210901085647000000.jpg', '2021-09-01 08:56:47', '2021-09-01 08:56:47'),
(325, 124, '/uploads/Tractors/TractorsImages/2021/September/tZnq5kzQVYlk6M6K20210901085747000000.jpg', '2021-09-01 08:57:47', '2021-09-01 08:57:47'),
(326, 124, '/uploads/Tractors/TractorsImages/2021/September/pU98oTG9ficMqOFg20210901085747000000.jpg', '2021-09-01 08:57:47', '2021-09-01 08:57:47'),
(327, 124, '/uploads/Tractors/TractorsImages/2021/September/wC39DbMeEDx1OoU220210901085747000000.jpg', '2021-09-01 08:57:47', '2021-09-01 08:57:47'),
(328, 124, '/uploads/Tractors/TractorsImages/2021/September/wWgFystGxiW6bHsu20210901085756000000.jpg', '2021-09-01 08:57:56', '2021-09-01 08:57:56'),
(329, 125, '/uploads/Tractors/TractorsImages/2021/September/75CpmDbhZmCpIMMC20210901090054000000.jpg', '2021-09-01 09:00:54', '2021-09-01 09:00:54'),
(330, 125, '/uploads/Tractors/TractorsImages/2021/September/FXmUKgDdJMSfUxT220210901090054000000.jpg', '2021-09-01 09:00:54', '2021-09-01 09:00:54'),
(331, 125, '/uploads/Tractors/TractorsImages/2021/September/89jb8tU99be0Whiq20210901090054000000.jpg', '2021-09-01 09:00:54', '2021-09-01 09:00:54'),
(333, 126, '/uploads/Tractors/TractorsImages/2021/September/h06A22oqCSLWHLi520210901090239000000.jpg', '2021-09-01 09:02:39', '2021-09-01 09:02:39'),
(334, 126, '/uploads/Tractors/TractorsImages/2021/September/wvKaJA9oOz3HOsRL20210901090239000000.jpg', '2021-09-01 09:02:39', '2021-09-01 09:02:39'),
(335, 126, '/uploads/Tractors/TractorsImages/2021/September/xAPbqyH8umlJIyhL20210901090239000000.jpg', '2021-09-01 09:02:39', '2021-09-01 09:02:39'),
(336, 126, '/uploads/Tractors/TractorsImages/2021/September/W2s0TfdH9kPTrCTm20210901090250000000.jpg', '2021-09-01 09:02:50', '2021-09-01 09:02:50'),
(337, 127, '/uploads/Tractors/TractorsImages/2021/September/XeppzIsqhFvwziYM20210901090354000000.jpg', '2021-09-01 09:03:54', '2021-09-01 09:03:54'),
(338, 127, '/uploads/Tractors/TractorsImages/2021/September/EmhvS9vb8ASUVWdo20210901090354000000.jpg', '2021-09-01 09:03:54', '2021-09-01 09:03:54'),
(339, 127, '/uploads/Tractors/TractorsImages/2021/September/kLtJuuo5VIe61xVp20210901090354000000.jpg', '2021-09-01 09:03:54', '2021-09-01 09:03:54'),
(340, 127, '/uploads/Tractors/TractorsImages/2021/September/YCspbpF5gBEL8t4020210901090404000000.jpg', '2021-09-01 09:04:04', '2021-09-01 09:04:04'),
(341, 128, '/uploads/Tractors/TractorsImages/2021/September/A1L8gtD4YTSfKQoL20210901090454000000.jpg', '2021-09-01 09:04:54', '2021-09-01 09:04:54'),
(342, 128, '/uploads/Tractors/TractorsImages/2021/September/uPyENXML5ep0tulS20210901090454000000.jpg', '2021-09-01 09:04:54', '2021-09-01 09:04:54'),
(343, 128, '/uploads/Tractors/TractorsImages/2021/September/x2GQ1DXXJtkWFcTQ20210901090454000000.jpg', '2021-09-01 09:04:54', '2021-09-01 09:04:54'),
(344, 128, '/uploads/Tractors/TractorsImages/2021/September/myjDNkEQqptVvc2t20210901090504000000.jpg', '2021-09-01 09:05:04', '2021-09-01 09:05:04'),
(345, 129, '/uploads/Tractors/TractorsImages/2021/September/lSOfwhmwnHfBO2y920210901090647000000.jpg', '2021-09-01 09:06:47', '2021-09-01 09:06:47'),
(346, 129, '/uploads/Tractors/TractorsImages/2021/September/AbP4UXlp7qmKqHfh20210901090647000000.jpg', '2021-09-01 09:06:47', '2021-09-01 09:06:47'),
(347, 129, '/uploads/Tractors/TractorsImages/2021/September/ZsgHV5PsJAs6iZre20210901090647000000.jpg', '2021-09-01 09:06:47', '2021-09-01 09:06:47'),
(348, 129, '/uploads/Tractors/TractorsImages/2021/September/AXAAjVffmgj5Hqh620210901090658000000.jpg', '2021-09-01 09:06:58', '2021-09-01 09:06:58'),
(349, 130, '/uploads/Tractors/TractorsImages/2021/September/YiuJLXvGl5lbwEIa20210901090806000000.jpg', '2021-09-01 09:08:06', '2021-09-01 09:08:06'),
(350, 130, '/uploads/Tractors/TractorsImages/2021/September/SL3bw5Td9ybZyMWl20210901090807000000.jpg', '2021-09-01 09:08:07', '2021-09-01 09:08:07'),
(351, 130, '/uploads/Tractors/TractorsImages/2021/September/hjoRZ5d5cowHZhH320210901090807000000.jpg', '2021-09-01 09:08:07', '2021-09-01 09:08:07'),
(352, 130, '/uploads/Tractors/TractorsImages/2021/September/LERdfb1I5eGdyrWN20210901090817000000.jpg', '2021-09-01 09:08:17', '2021-09-01 09:08:17'),
(353, 131, '/uploads/Tractors/TractorsImages/2021/September/rN7fz8sSrdHlekQz20210901090920000000.jpg', '2021-09-01 09:09:20', '2021-09-01 09:09:20'),
(354, 131, '/uploads/Tractors/TractorsImages/2021/September/GnFzn7MmAMcpKhLs20210901090920000000.jpg', '2021-09-01 09:09:20', '2021-09-01 09:09:20'),
(355, 131, '/uploads/Tractors/TractorsImages/2021/September/RXoQn2jlwKByamA720210901090920000000.jpg', '2021-09-01 09:09:20', '2021-09-01 09:09:20'),
(356, 131, '/uploads/Tractors/TractorsImages/2021/September/Tanxyd3F1aBSc2LC20210901090930000000.jpg', '2021-09-01 09:09:30', '2021-09-01 09:09:30'),
(357, 132, '/uploads/Tractors/TractorsImages/2021/September/NLjrxhlGvzzwvyaY20210901091032000000.jpg', '2021-09-01 09:10:32', '2021-09-01 09:10:32'),
(358, 133, '/uploads/Tractors/TractorsImages/2021/September/dqWc3Vhn69T7dUkn20210901091225000000.jpg', '2021-09-01 09:12:25', '2021-09-01 09:12:25'),
(359, 134, '/uploads/Tractors/TractorsImages/2021/September/rViu6kO4pj78zO0s20210901091348000000.jpg', '2021-09-01 09:13:48', '2021-09-01 09:13:48'),
(360, 134, '/uploads/Tractors/TractorsImages/2021/September/XJ74ngi9lwIK53J920210901091348000000.jpg', '2021-09-01 09:13:48', '2021-09-01 09:13:48'),
(361, 134, '/uploads/Tractors/TractorsImages/2021/September/3N7mANIeNiUfBqS920210901091348000000.jpg', '2021-09-01 09:13:48', '2021-09-01 09:13:48'),
(362, 134, '/uploads/Tractors/TractorsImages/2021/September/IDnZAMcnx94LwJ3320210901091359000000.jpg', '2021-09-01 09:13:59', '2021-09-01 09:13:59'),
(363, 135, '/uploads/Tractors/TractorsImages/2021/September/44wyuOHadixcMloL20210901091553000000.jpg', '2021-09-01 09:15:53', '2021-09-01 09:15:53'),
(364, 135, '/uploads/Tractors/TractorsImages/2021/September/NNgeve11Z3HkSxSs20210901091554000000.jpg', '2021-09-01 09:15:54', '2021-09-01 09:15:54'),
(365, 135, '/uploads/Tractors/TractorsImages/2021/September/lgSVtddZCVfsBqqb20210901091554000000.jpg', '2021-09-01 09:15:54', '2021-09-01 09:15:54'),
(366, 135, '/uploads/Tractors/TractorsImages/2021/September/Ww8ukvTmgC1H9XwG20210901091603000000.jpg', '2021-09-01 09:16:03', '2021-09-01 09:16:03'),
(367, 136, '/uploads/Tractors/TractorsImages/2021/September/s7GkwG6dhV3cDhqN20210901091706000000.jpg', '2021-09-01 09:17:06', '2021-09-01 09:17:06'),
(368, 136, '/uploads/Tractors/TractorsImages/2021/September/yaILfnEtLo3aPfde20210901091706000000.jpg', '2021-09-01 09:17:06', '2021-09-01 09:17:06'),
(369, 136, '/uploads/Tractors/TractorsImages/2021/September/QHIqluYQ9kZZkCFD20210901091706000000.jpg', '2021-09-01 09:17:06', '2021-09-01 09:17:06'),
(370, 136, '/uploads/Tractors/TractorsImages/2021/September/O5KPheatUpY8igXn20210901091717000000.jpg', '2021-09-01 09:17:17', '2021-09-01 09:17:17'),
(371, 137, '/uploads/Tractors/TractorsImages/2021/September/2mh1fR93VSS5opn020210901091820000000.jpg', '2021-09-01 09:18:20', '2021-09-01 09:18:20'),
(372, 138, '/uploads/Tractors/TractorsImages/2021/September/Y28JZDVmuMkktjBo20210901091921000000.jpg', '2021-09-01 09:19:21', '2021-09-01 09:19:21'),
(373, 138, '/uploads/Tractors/TractorsImages/2021/September/tzK7BmdEmEndpE6Y20210901091921000000.jpg', '2021-09-01 09:19:21', '2021-09-01 09:19:21'),
(374, 138, '/uploads/Tractors/TractorsImages/2021/September/XOl185ZXrX6hf1qt20210901091921000000.jpg', '2021-09-01 09:19:21', '2021-09-01 09:19:21'),
(375, 138, '/uploads/Tractors/TractorsImages/2021/September/f9ColmqUo2cMKHCC20210901091931000000.jpg', '2021-09-01 09:19:31', '2021-09-01 09:19:31'),
(376, 139, '/uploads/Tractors/TractorsImages/2021/September/7heYENQcoJJ3Z1dj20210901092114000000.jpg', '2021-09-01 09:21:14', '2021-09-01 09:21:14'),
(377, 139, '/uploads/Tractors/TractorsImages/2021/September/k7UbsCTM4pTDkAEb20210901092114000000.jpg', '2021-09-01 09:21:14', '2021-09-01 09:21:14'),
(378, 139, '/uploads/Tractors/TractorsImages/2021/September/RzoXsovRrgWKOzt520210901092114000000.jpg', '2021-09-01 09:21:14', '2021-09-01 09:21:14'),
(379, 125, '/uploads/Tractors/TractorsImages/2021/September/jrc2M8JgkEcd3VxO20210901092253000000.jpg', '2021-09-01 09:22:53', '2021-09-01 09:22:53'),
(380, 70, '/uploads/Tractors/TractorsImages/2021/September/nKroMt2qktj7hpHl20210901092455000000.jpg', '2021-09-01 09:24:55', '2021-09-01 09:24:55'),
(381, 83, '/uploads/Tractors/TractorsImages/2021/September/3HBB3YK0Qg576IXY20210901092553000000.jpg', '2021-09-01 09:25:53', '2021-09-01 09:25:53'),
(382, 85, '/uploads/Tractors/TractorsImages/2021/September/yijtS809PqY7Usxz20210901092801000000.jpg', '2021-09-01 09:28:01', '2021-09-01 09:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1-active,2-banned',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `provider_id`, `provider`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$Ia.EScoXQktfBitpnSxl9e1d0CKppnv/hpug6K42zxNcmpbpunMeq', NULL, NULL, 1, NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06', NULL),
(2, 'User', 'user@user.com', '$2y$10$Ia.EScoXQktfBitpnSxl9e1d0CKppnv/hpug6K42zxNcmpbpunMeq', NULL, NULL, 1, NULL, '2020-07-17 15:23:06', '2020-07-17 15:23:06', NULL),
(3, 'Developer', 'dev@admin.com', '$2y$10$bSH4/JJc.ILp5dfOXU948.OAihRWV/VD.Tn3UayvHqB0IJiaxnc0q', NULL, NULL, 1, NULL, '2020-07-17 16:39:44', '2020-07-17 16:39:45', NULL),
(4, 'myuser', 'myuser@admin.com', '$2y$10$0ESM0g3SFtpyadRGGziYR.AoQbu/wmIJg21oa3xO2joIiRLoPDGMW', NULL, NULL, 1, NULL, '2020-07-20 22:06:17', '2021-08-28 13:34:21', '2021-08-28 13:34:21'),
(5, 'New User', 'username@admin.com', '$2y$10$nAdl2mwTUZ080.tYxvQfCOPJGstlMIP7nKtTlYlf9BoigLNBXY3ve', NULL, NULL, 1, NULL, '2020-07-23 19:28:44', '2021-08-28 13:34:16', '2021-08-28 13:34:16'),
(6, 'Moiz', 'moiz@gmail.com', '$2y$10$PU9XQmLZAKCtHinp2dYwj.oVanfXTpQgcgXIfP9iodEtroWRUg0NK', NULL, NULL, 1, NULL, '2020-08-19 15:10:21', '2021-08-07 00:48:03', '2021-08-07 00:48:03'),
(7, 'ATIF UR REHMAN', 'atif@admin.com', '$2y$10$blHg4.610siewZOJYwoHgOPZLA6uWC4x5Y4tjngQKIcG5v0UPpxWi', NULL, NULL, 1, NULL, '2021-03-23 02:29:39', '2021-08-06 23:55:57', '2021-08-06 23:55:57'),
(8, 'IsmailRehman', 'IsmailRehman@gmail.com', '$2y$10$bSH4/JJc.ILp5dfOXU948.OAihRWV/VD.Tn3UayvHqB0IJiaxnc0q', NULL, NULL, 1, NULL, '2021-08-28 14:01:56', '2021-08-28 14:01:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `water_marks`
--

CREATE TABLE `water_marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_uses`
--
ALTER TABLE `about_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`(191));

--
-- Indexes for table `ad_posts`
--
ALTER TABLE `ad_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bests`
--
ALTER TABLE `bests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form_datas`
--
ALTER TABLE `contact_form_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_lists`
--
ALTER TABLE `country_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cows`
--
ALTER TABLE `cows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiryforms`
--
ALTER TABLE `enquiryforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `get_touch_datas`
--
ALTER TABLE `get_touch_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_scripts`
--
ALTER TABLE `header_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milk_rates`
--
ALTER TABLE `milk_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tractors`
--
ALTER TABLE `tractors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `tractor_images`
--
ALTER TABLE `tractor_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tractor_id` (`tractor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `water_marks`
--
ALTER TABLE `water_marks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_uses`
--
ALTER TABLE `about_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `ad_posts`
--
ALTER TABLE `ad_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bests`
--
ALTER TABLE `bests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_form_datas`
--
ALTER TABLE `contact_form_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country_lists`
--
ALTER TABLE `country_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cows`
--
ALTER TABLE `cows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiryforms`
--
ALTER TABLE `enquiryforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `get_touch_datas`
--
ALTER TABLE `get_touch_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `header_scripts`
--
ALTER TABLE `header_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `milk_rates`
--
ALTER TABLE `milk_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tractors`
--
ALTER TABLE `tractors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tractor_images`
--
ALTER TABLE `tractor_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `water_marks`
--
ALTER TABLE `water_marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tractors`
--
ALTER TABLE `tractors`
  ADD CONSTRAINT `tractors_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tractor_images`
--
ALTER TABLE `tractor_images`
  ADD CONSTRAINT `tractor_images_ibfk_1` FOREIGN KEY (`tractor_id`) REFERENCES `tractors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
