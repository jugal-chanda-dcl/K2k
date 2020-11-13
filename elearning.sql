-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 01:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `key`, `controller`, `method`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(2, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(3, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(4, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ScriptController', 'Facade\\Ignition\\Http\\Controllers\\ScriptController', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(5, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\StyleController', 'Facade\\Ignition\\Http\\Controllers\\StyleController', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(6, NULL, NULL, 'Closure', 'Closure', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(7, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showLoginForm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(8, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'login', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(9, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'logout', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(10, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showRegistrationForm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(11, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'register', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(12, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'showLinkRequestForm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(13, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'sendResetLinkEmail', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(14, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'showResetForm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(15, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'reset', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(16, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'showConfirmForm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(17, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'confirm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(18, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showAdminLoginForm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(19, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showAdminRegisterForm', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(20, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'adminLogin', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(21, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'createAdmin', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(22, 'View', NULL, 'App\\Http\\Controllers\\HomeController', 'index', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(23, 'Show all Role', NULL, 'App\\Http\\Controllers\\RoleController', 'index', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(24, 'Create new role', NULL, 'App\\Http\\Controllers\\RoleController', 'create', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(25, 'Store new role', NULL, 'App\\Http\\Controllers\\RoleController', 'store', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(26, 'Show single role', NULL, 'App\\Http\\Controllers\\RoleController', 'show', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(27, 'edit role', NULL, 'App\\Http\\Controllers\\RoleController', 'edit', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(28, 'update role', NULL, 'App\\Http\\Controllers\\RoleController', 'update', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(29, 'destroy role', NULL, 'App\\Http\\Controllers\\RoleController', 'destroy', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(30, NULL, NULL, '\\Illuminate\\Routing\\ViewController', '\\Illuminate\\Routing\\ViewController', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(31, 'Show all subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'index', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(32, 'Create new subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'create', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(33, 'Store New subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'store', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(34, 'Show single subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'show', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(35, 'Edit subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'edit', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(36, 'Update subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'update', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(37, 'Delete subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'destroy', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(38, 'Show all topic', NULL, 'App\\Http\\Controllers\\TopicController', 'index', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(39, 'Create new topic', NULL, 'App\\Http\\Controllers\\TopicController', 'create', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(40, 'store new topic', NULL, 'App\\Http\\Controllers\\TopicController', 'store', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(41, 'show single topic', NULL, 'App\\Http\\Controllers\\TopicController', 'show', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(42, 'Edit topic', NULL, 'App\\Http\\Controllers\\TopicController', 'edit', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(43, 'Update topic', NULL, 'App\\Http\\Controllers\\TopicController', 'update', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(44, 'Destroy topic', NULL, 'App\\Http\\Controllers\\TopicController', 'destroy', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(45, 'Show subject wise topics', NULL, 'App\\Http\\Controllers\\SubjectController', 'topics', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(46, 'Show all learn materials', NULL, 'App\\Http\\Controllers\\LearnController', 'index', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(47, 'Create learn materials', NULL, 'App\\Http\\Controllers\\LearnController', 'create', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(48, 'Store learn materials', NULL, 'App\\Http\\Controllers\\LearnController', 'store', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(49, 'Show single learn materials', NULL, 'App\\Http\\Controllers\\LearnController', 'show', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(50, 'Edit learn materials', NULL, 'App\\Http\\Controllers\\LearnController', 'edit', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(51, 'Update learn materials', NULL, 'App\\Http\\Controllers\\LearnController', 'update', '2020-11-13 06:10:57', '2020-11-13 06:10:57'),
(52, 'Destroy learn materials', NULL, 'App\\Http\\Controllers\\LearnController', 'destroy', '2020-11-13 06:10:57', '2020-11-13 06:10:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
