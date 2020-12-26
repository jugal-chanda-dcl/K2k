-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 10:01 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

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

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '01521461643', 'Admin', 'Dhaka', '1986-01-01', '12773', '$2y$10$NaE5fw9E5ZyHX5u6l9AuGek12fqwb1u1M1KdDm9k/8YcgIFHvz2Gy', 0, NULL, '2020-12-20 22:03:44', '2020-12-20 22:03:44');

--
-- Dumping data for table `learns`
--

INSERT INTO `learns` (`id`, `topic_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(3, 3, 2, '<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lectus augue, pellentesque ac egestas in, tempor id eros. Morbi at nunc eu enim malesuada ultricies. Nunc neque massa, maximus id hendrerit finibus, pretium vel tortor. Curabitur sit amet nunc sit amet nulla lacinia sagittis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed quam aliquet, cursus nulla quis, convallis dui. Fusce porta eu metus a lobortis. Vivamus ultrices eleifend nibh in porta. Praesent facilisis diam eget tortor dapibus porta. Duis id rhoncus turpis. Vestibulum efficitur neque ac lacus posuere ultrices. Aenean mattis blandit urna vehicula fermentum. Curabitur blandit consequat posuere. Quisque facilisis lacus nisl. Mauris quis mattis nibh, id consectetur sapien.<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse potenti. Donec quam enim, tempor a convallis vel, pulvinar eget nisi. In eu interdum odio, eu viverra odio. Maecenas mollis euismod mauris, eget lacinia nisi hendrerit at. Fusce rutrum lorem lectus, et tincidunt lectus feugiat quis. Proin bibendum nisl neque, ac semper sapien gravida in. Cras dignissim faucibus urna quis feugiat. In feugiat tellus non nisi accumsan mollis. Ut condimentum mauris pretium risus maximus, sed euismod orci volutpat.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Aliquam ultrices semper tortor id convallis. Quisque tristique tristique mauris. Cras ex justo, sollicitudin ac tempus ut, hendrerit in mi. Donec metus ante, auctor eu libero sed, dictum ultricies nisl. Aenean dignissim elit et lacus efficitur, et finibus eros interdum. Nam eleifend vestibulum metus eu feugiat. Nunc porta pulvinar nulla id tincidunt. Donec rutrum nec enim vel sodales. Vestibulum pharetra luctus nisl non viverra. Quisque convallis dignissim ante a placerat. Mauris elit dui, pharetra non feugiat at, bibendum quis leo. Donec ante arcu, ultricies ut diam tincidunt, pulvinar dignissim ante. Nam id dictum dolor, quis placerat lectus.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Praesent feugiat lorem at lacus mattis accumsan. Mauris volutpat bibendum dignissim. Curabitur tortor risus, euismod nec finibus at, tempus non purus. Suspendisse consequat sem laoreet aliquam euismod. Curabitur lectus ligula, auctor at urna nec, tincidunt tempus turpis. Ut rutrum lorem enim, ac eleifend eros auctor non. Morbi eu nisl id risus rutrum interdum. Suspendisse posuere in nulla in imperdiet. Aliquam odio urna, tristique eu aliquet in, tempus non diam. Vivamus luctus leo eu felis egestas condimentum. Nulla feugiat justo at odio pretium, at scelerisque quam lobortis. Maecenas id ullamcorper ipsum.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nullam vel pretium metus, sed venenatis leo. Fusce laoreet id risus at tristique. Praesent nisl dolor, mattis at vehicula vitae, faucibus vitae orci. Nullam quis purus id neque aliquet maximus. Integer quis diam nisl. Quisque tincidunt sodales suscipit. Nullam a pellentesque dolor. Curabitur rutrum ligula iaculis nulla porttitor, vitae bibendum enim lacinia. Proin quis ipsum a massa sagittis maximus. Nullam nec felis risus. Suspendisse velit augue, malesuada non neque eu, euismod accumsan nunc. Suspendisse dictum lorem et massa sodales auctor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam dapibus, nunc vel accumsan feugiat, arcu lectus fermentum lorem, vel varius magna ante vitae erat.</p></p>\n', '2020-12-26 08:13:51', '2020-12-26 08:13:51'),
(4, 4, 2, '<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lectus augue, pellentesque ac egestas in, tempor id eros. Morbi at nunc eu enim malesuada ultricies. Nunc neque massa, maximus id hendrerit finibus, pretium vel tortor. Curabitur sit amet nunc sit amet nulla lacinia sagittis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed quam aliquet, cursus nulla quis, convallis dui. Fusce porta eu metus a lobortis. Vivamus ultrices eleifend nibh in porta. Praesent facilisis diam eget tortor dapibus porta. Duis id rhoncus turpis. Vestibulum efficitur neque ac lacus posuere ultrices. Aenean mattis blandit urna vehicula fermentum. Curabitur blandit consequat posuere. Quisque facilisis lacus nisl. Mauris quis mattis nibh, id consectetur sapien.<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse potenti. Donec quam enim, tempor a convallis vel, pulvinar eget nisi. In eu interdum odio, eu viverra odio. Maecenas mollis euismod mauris, eget lacinia nisi hendrerit at. Fusce rutrum lorem lectus, et tincidunt lectus feugiat quis. Proin bibendum nisl neque, ac semper sapien gravida in. Cras dignissim faucibus urna quis feugiat. In feugiat tellus non nisi accumsan mollis. Ut condimentum mauris pretium risus maximus, sed euismod orci volutpat.</p></p>\n', '2020-12-26 08:29:02', '2020-12-26 08:29:02');

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_09_12_082156_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_11_12_075108_create_admins_table', 1),
(6, '2020_11_12_112816_create_permissions_table', 1),
(7, '2020_11_12_112944_create_permission_role_table', 1),
(8, '2020_11_12_132039_create_subjects_table', 1),
(9, '2020_11_13_074826_create_topics_table', 1),
(10, '2020_11_13_102306_create_learns_table', 1),
(11, '2020_11_14_083456_create_questions_table', 1),
(12, '2020_11_14_094039_create_options_table', 1),
(13, '2020_11_14_102255_create_resources_table', 1),
(14, '2020_11_15_081715_create_contents_table', 1),
(15, '2020_11_15_114128_create_teacher_profiles_table', 1),
(16, '2020_12_19_100809_create_student_profiles_table', 1),
(17, '2020_12_20_094143_create_content_developer_profiles_table', 1),
(18, '2013_09_12_082156_create_roles_table', 1),
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2020_11_12_075108_create_admins_table', 1),
(23, '2020_11_12_112816_create_permissions_table', 1),
(24, '2020_11_12_112944_create_permission_role_table', 1),
(25, '2020_11_12_132039_create_subjects_table', 1),
(26, '2020_11_13_074826_create_topics_table', 1),
(27, '2020_11_13_102306_create_learns_table', 1),
(28, '2020_11_14_083456_create_questions_table', 1),
(29, '2020_11_14_094039_create_options_table', 1),
(30, '2020_11_14_102255_create_resources_table', 1),
(31, '2020_11_15_081715_create_contents_table', 1),
(32, '2020_11_15_114128_create_teacher_profiles_table', 1),
(33, '2020_12_19_100809_create_student_profiles_table', 1),
(34, '2020_12_20_094143_create_content_developer_profiles_table', 1);

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 8, '1st mco', '2020-12-26 08:16:03', '2020-12-26 08:16:03'),
(2, 8, '2nd mco', '2020-12-26 08:16:03', '2020-12-26 08:16:03'),
(3, 8, '3rd mco', '2020-12-26 08:16:03', '2020-12-26 08:16:03'),
(4, 9, '1st check', '2020-12-26 08:16:04', '2020-12-26 08:16:04'),
(5, 9, '2nd check', '2020-12-26 08:16:04', '2020-12-26 08:16:04'),
(6, 9, '3rd check', '2020-12-26 08:16:04', '2020-12-26 08:16:04');

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `key`, `controller`, `method`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(2, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(3, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(4, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ScriptController', 'Facade\\Ignition\\Http\\Controllers\\ScriptController', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(5, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\StyleController', 'Facade\\Ignition\\Http\\Controllers\\StyleController', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(6, NULL, NULL, 'Closure', 'Closure', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(7, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showLoginForm', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(8, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'login', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(9, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'logout', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(10, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showRegistrationForm', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(11, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'register', '2020-12-19 14:43:33', '2020-12-19 14:43:33'),
(12, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'showLinkRequestForm', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(13, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'sendResetLinkEmail', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(14, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'showResetForm', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(15, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'reset', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(16, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'showConfirmForm', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(17, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'confirm', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(18, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showAdminLoginForm', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(19, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showAdminRegisterForm', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(20, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'adminLogin', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(21, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'createAdmin', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(22, NULL, NULL, 'App\\Http\\Controllers\\HomeController', 'index', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(23, 'Show all role', NULL, 'App\\Http\\Controllers\\RoleController', 'index', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(24, 'Show role create form', NULL, 'App\\Http\\Controllers\\RoleController', 'create', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(25, 'Store new role', NULL, 'App\\Http\\Controllers\\RoleController', 'store', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(26, 'Show single role', NULL, 'App\\Http\\Controllers\\RoleController', 'show', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(27, 'Show role update form', NULL, 'App\\Http\\Controllers\\RoleController', 'edit', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(28, 'Update role', NULL, 'App\\Http\\Controllers\\RoleController', 'update', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(29, 'Delete role', NULL, 'App\\Http\\Controllers\\RoleController', 'destroy', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(30, 'Show all resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'index', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(31, 'Show resource create form', NULL, 'App\\Http\\Controllers\\ResourceController', 'create', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(32, 'Store new resource materials', NULL, 'App\\Http\\Controllers\\ResourceController', 'store', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(33, 'Show single resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'show', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(34, 'Show resource update form', NULL, 'App\\Http\\Controllers\\ResourceController', 'edit', '2020-12-19 14:43:34', '2020-12-19 14:43:34'),
(35, 'Update resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'update', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(36, 'Delete resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'destroy', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(37, NULL, NULL, '\\Illuminate\\Routing\\ViewController', '\\Illuminate\\Routing\\ViewController', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(38, 'Show all subjects', NULL, 'App\\Http\\Controllers\\SubjectController', 'index', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(39, 'Show subject create form', NULL, 'App\\Http\\Controllers\\SubjectController', 'create', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(40, 'Store new subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'store', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(41, 'Show single subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'show', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(42, 'Show subject edit form', NULL, 'App\\Http\\Controllers\\SubjectController', 'edit', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(43, 'Update subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'update', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(44, 'Delete subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'destroy', '2020-12-19 14:43:35', '2020-12-19 14:43:35'),
(52, 'Show subject wise topics', NULL, 'App\\Http\\Controllers\\SubjectController', 'topics', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(53, 'Show topic wise learning materials', NULL, 'App\\Http\\Controllers\\TopicController', 'learn', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(54, 'Show all learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'index', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(55, 'Show learning material create form', NULL, 'App\\Http\\Controllers\\LearnController', 'create', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(56, 'Store new learning material', NULL, 'App\\Http\\Controllers\\LearnController', 'store', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(57, 'Show single learning material', NULL, 'App\\Http\\Controllers\\LearnController', 'show', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(58, 'Show learning materials update form', NULL, 'App\\Http\\Controllers\\LearnController', 'edit', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(59, 'Update learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'update', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(60, 'Delete learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'destroy', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(61, 'Show all contents', NULL, 'App\\Http\\Controllers\\ContentController', 'index', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(62, 'Show content create form', NULL, 'App\\Http\\Controllers\\ContentController', 'create', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(63, 'Store new content', NULL, 'App\\Http\\Controllers\\ContentController', 'store', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(64, 'Show single content', NULL, 'App\\Http\\Controllers\\ContentController', 'show', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(65, 'Show content update form', NULL, 'App\\Http\\Controllers\\ContentController', 'edit', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(66, 'Update content', NULL, 'App\\Http\\Controllers\\ContentController', 'update', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(67, 'Delete content', NULL, 'App\\Http\\Controllers\\ContentController', 'destroy', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(68, 'Show all resources for teacher', NULL, 'App\\Http\\Controllers\\ResourceController', 'teacherResourceAll', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(69, 'Show single resource for teacher', NULL, 'App\\Http\\Controllers\\ResourceController', 'teacherResourceSingle', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(70, 'Show own teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'index', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(71, 'Create new teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'create', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(72, 'Store teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'store', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(73, 'Show others teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'show', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(74, 'Show teacher profile edit form', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'edit', '2020-12-19 14:43:36', '2020-12-19 14:43:36'),
(75, 'Update teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'update', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(76, NULL, NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'destroy', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(77, 'Show own student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'index', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(78, 'Show student profile create form', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'create', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(79, 'Store new student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'store', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(80, 'Show others student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'show', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(81, 'Show student profile edit form', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'edit', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(82, 'Update student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'update', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(83, NULL, NULL, 'App\\Http\\Controllers\\StudentProfileController', 'destroy', '2020-12-19 14:43:37', '2020-12-19 14:43:37'),
(84, 'Show own content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'index', '2020-12-19 15:48:16', '2020-12-19 15:48:16'),
(85, 'Show content developer profile create form', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'create', '2020-12-19 15:48:16', '2020-12-19 15:48:16'),
(86, 'Store new content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'store', '2020-12-19 15:48:16', '2020-12-19 15:48:16'),
(87, 'Show other content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'show', '2020-12-19 15:48:16', '2020-12-19 15:48:16'),
(88, 'Show content developer profile edit form', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'edit', '2020-12-19 15:48:16', '2020-12-19 15:48:16'),
(89, 'Update content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'update', '2020-12-19 15:48:16', '2020-12-19 15:48:16'),
(90, NULL, NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'destroy', '2020-12-19 15:48:16', '2020-12-19 15:48:16'),
(91, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'store', '2020-12-24 02:47:48', '2020-12-24 02:47:48'),
(92, 'Delete Topic', NULL, 'App\\Http\\Controllers\\TopicController', 'destroy', '2020-12-24 02:47:49', '2020-12-24 02:47:49'),
(93, 'Create Question', NULL, 'App\\Http\\Controllers\\QuestionController', 'create', '2020-12-24 02:47:49', '2020-12-24 02:47:49'),
(94, 'Edit Question', NULL, 'App\\Http\\Controllers\\QuestionController', 'edit', '2020-12-24 03:16:21', '2020-12-24 03:16:21'),
(95, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'update', '2020-12-24 05:56:46', '2020-12-24 05:56:46'),
(96, 'Delete Question', NULL, 'App\\Http\\Controllers\\QuestionController', 'destroy', '2020-12-25 10:54:31', '2020-12-25 10:54:31'),
(97, 'View Learn wise questions', NULL, 'App\\Http\\Controllers\\QuestionController', 'show', '2020-12-26 08:21:33', '2020-12-26 08:21:33');

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 38, 1, NULL, NULL),
(2, 52, 1, NULL, NULL),
(3, 53, 1, NULL, NULL),
(4, 77, 1, NULL, NULL),
(5, 78, 1, NULL, NULL),
(6, 79, 1, NULL, NULL),
(7, 81, 1, NULL, NULL),
(8, 82, 1, NULL, NULL),
(9, 38, 2, NULL, NULL),
(10, 39, 2, NULL, NULL),
(11, 40, 2, NULL, NULL),
(12, 41, 2, NULL, NULL),
(13, 42, 2, NULL, NULL),
(14, 43, 2, NULL, NULL),
(15, 44, 2, NULL, NULL),
(23, 52, 2, NULL, NULL),
(24, 53, 2, NULL, NULL),
(25, 54, 2, NULL, NULL),
(26, 55, 2, NULL, NULL),
(27, 56, 2, NULL, NULL),
(28, 57, 2, NULL, NULL),
(29, 58, 2, NULL, NULL),
(30, 59, 2, NULL, NULL),
(31, 60, 2, NULL, NULL),
(32, 61, 2, NULL, NULL),
(33, 62, 2, NULL, NULL),
(34, 63, 2, NULL, NULL),
(35, 64, 2, NULL, NULL),
(36, 65, 2, NULL, NULL),
(37, 66, 2, NULL, NULL),
(38, 67, 2, NULL, NULL),
(39, 68, 2, NULL, NULL),
(40, 69, 2, NULL, NULL),
(41, 70, 2, NULL, NULL),
(42, 71, 2, NULL, NULL),
(43, 72, 2, NULL, NULL),
(44, 73, 2, NULL, NULL),
(45, 74, 2, NULL, NULL),
(46, 75, 2, NULL, NULL),
(48, 61, 3, NULL, NULL),
(49, 64, 3, NULL, NULL),
(50, 84, 3, NULL, NULL),
(51, 85, 3, NULL, NULL),
(52, 86, 3, NULL, NULL),
(53, 88, 3, NULL, NULL),
(54, 89, 3, NULL, NULL),
(55, 92, 2, NULL, NULL),
(56, 93, 2, NULL, NULL),
(57, 94, 2, NULL, NULL),
(58, 96, 2, NULL, NULL),
(59, 97, 1, NULL, NULL),
(60, 97, 2, NULL, NULL);

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `learn_id`, `question`, `type`, `created_at`, `updated_at`) VALUES
(7, 3, 'Question 1 Short Answer', 'short_answer', '2020-12-26 08:16:03', '2020-12-26 08:16:03'),
(8, 3, 'Question 2 Multiple Choice', 'multiple_choice', '2020-12-26 08:16:03', '2020-12-26 08:16:03'),
(9, 3, 'Question 3 Checkbox', 'check_box', '2020-12-26 08:16:04', '2020-12-26 08:16:04'),
(10, 3, 'Question 4 Paragraph', 'paragraph', '2020-12-26 08:16:04', '2020-12-26 08:16:04');

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `content`, `topic`, `created_at`, `updated_at`) VALUES
(1, '<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lectus augue, pellentesque ac egestas in, tempor id eros. Morbi at nunc eu enim malesuada ultricies. Nunc neque massa, maximus id hendrerit finibus, pretium vel tortor. Curabitur sit amet nunc sit amet nulla lacinia sagittis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed quam aliquet, cursus nulla quis, convallis dui. Fusce porta eu metus a lobortis. Vivamus ultrices eleifend nibh in porta. Praesent facilisis diam eget tortor dapibus porta. Duis id rhoncus turpis. Vestibulum efficitur neque ac lacus posuere ultrices. Aenean mattis blandit urna vehicula fermentum. Curabitur blandit consequat posuere. Quisque facilisis lacus nisl. Mauris quis mattis nibh, id consectetur sapien.<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse potenti. Donec quam enim, tempor a convallis vel, pulvinar eget nisi. In eu interdum odio, eu viverra odio. Maecenas mollis euismod mauris, eget lacinia nisi hendrerit at. Fusce rutrum lorem lectus, et tincidunt lectus feugiat quis. Proin bibendum nisl neque, ac semper sapien gravida in. Cras dignissim faucibus urna quis feugiat. In feugiat tellus non nisi accumsan mollis. Ut condimentum mauris pretium risus maximus, sed euismod orci volutpat.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Aliquam ultrices semper tortor id convallis. Quisque tristique tristique mauris. Cras ex justo, sollicitudin ac tempus ut, hendrerit in mi. Donec metus ante, auctor eu libero sed, dictum ultricies nisl. Aenean dignissim elit et lacus efficitur, et finibus eros interdum. Nam eleifend vestibulum metus eu feugiat. Nunc porta pulvinar nulla id tincidunt. Donec rutrum nec enim vel sodales. Vestibulum pharetra luctus nisl non viverra. Quisque convallis dignissim ante a placerat. Mauris elit dui, pharetra non feugiat at, bibendum quis leo. Donec ante arcu, ultricies ut diam tincidunt, pulvinar dignissim ante. Nam id dictum dolor, quis placerat lectus.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Praesent feugiat lorem at lacus mattis accumsan. Mauris volutpat bibendum dignissim. Curabitur tortor risus, euismod nec finibus at, tempus non purus. Suspendisse consequat sem laoreet aliquam euismod. Curabitur lectus ligula, auctor at urna nec, tincidunt tempus turpis. Ut rutrum lorem enim, ac eleifend eros auctor non. Morbi eu nisl id risus rutrum interdum. Suspendisse posuere in nulla in imperdiet. Aliquam odio urna, tristique eu aliquet in, tempus non diam. Vivamus luctus leo eu felis egestas condimentum. Nulla feugiat justo at odio pretium, at scelerisque quam lobortis. Maecenas id ullamcorper ipsum.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nullam vel pretium metus, sed venenatis leo. Fusce laoreet id risus at tristique. Praesent nisl dolor, mattis at vehicula vitae, faucibus vitae orci. Nullam quis purus id neque aliquet maximus. Integer quis diam nisl. Quisque tincidunt sodales suscipit. Nullam a pellentesque dolor. Curabitur rutrum ligula iaculis nulla porttitor, vitae bibendum enim lacinia. Proin quis ipsum a massa sagittis maximus. Nullam nec felis risus. Suspendisse velit augue, malesuada non neque eu, euismod accumsan nunc. Suspendisse dictum lorem et massa sodales auctor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam dapibus, nunc vel accumsan feugiat, arcu lectus fermentum lorem, vel varius magna ante vitae erat.</p></p>\n', 'Lorem Ipsum', '2020-12-26 08:06:01', '2020-12-26 08:06:01');

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Student', 'This role is for student', NULL, NULL),
(2, 'Teacher', 'This role is for teacher', NULL, NULL),
(3, 'Content Developer', 'This role is for content developer', NULL, NULL);

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class`, `created_at`, `updated_at`) VALUES
(2, 'Bangla', 4, '2020-12-26 08:11:49', '2020-12-26 08:11:49');

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `user_id`, `year_of_experience`, `specilization`, `created_at`, `updated_at`) VALUES
(1, 2, 4, '<p><span style=\'color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lectus augue, pellentesque ac egestas in, tempor id eros. Morbi at nunc eu enim malesuada ultricies. Nunc neque massa, maximus id hendrerit finibus, pretium vel tortor. Curabitur sit amet nunc sit amet nulla lacinia sagittis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed quam aliquet, cursus nulla quis, convallis dui. Fusce porta eu metus a lobortis. Vivamus ultrices eleifend nibh in porta. Praesent facilisis diam eget tortor dapibus porta. Duis id rhoncus turpis. Vestibulum efficitur neque ac lacus posuere ultrices. Aenean mattis blandit urna vehicula fermentum. Curabitur blandit consequat posuere. Quisque facilisis lacus nisl. Mauris quis mattis nibh, id consectetur sapien.</span><br></p>\n', '2020-12-26 08:01:04', '2020-12-26 08:01:04');

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `subject_id`, `created_at`, `updated_at`) VALUES
(3, 'Chapter 1', 2, '2020-12-26 08:13:51', '2020-12-26 08:13:51'),
(4, 'Chapter 2', 2, '2020-12-26 08:29:02', '2020-12-26 08:29:02');

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Student 1', 'student1@student.com', '01521461643', 'Student', 'Dhaka', '2002-03-17', '6854', NULL, '$2y$10$VXD1eixwwoPvCk5jRtBFd.nqSezIQU0iCewiR1XJX1FYamvHpNcIa', NULL, 1, '2020-12-20 16:31:36', '2020-12-20 16:31:36'),
(2, 'Teacher 1', 'teacher1@teacher.com', '01521461640', 'Teacher', 'Dhaka', '1997-01-21', '8737', NULL, '$2y$10$0fEhxHoN/vLrAHLYqE1f2Ob9.yKfAWzwu5/rMTnUrqUwHk6Ng2NZ6', NULL, 2, '2020-12-22 22:40:07', '2020-12-22 22:40:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
