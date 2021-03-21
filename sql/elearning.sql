-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2021 at 07:06 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '', '$2y$10$ZXUXiRylsEOoB8qP7nZb5OZwoZYV0wvnXVqsXYb6B/TguKQUM0ZAi', 0, NULL, '2020-12-19 16:03:44', '2020-12-19 16:03:44');

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
(12, '2020_11_14_102255_create_resources_table', 1),
(13, '2020_11_15_081715_create_contents_table', 1),
(14, '2020_11_15_114128_create_teacher_profiles_table', 1),
(15, '2020_12_19_100809_create_student_profiles_table', 1),
(16, '2020_12_20_094143_create_content_developer_profiles_table', 1),
(17, '2021_01_24_025036_create_answers_table', 1),
(18, '2021_02_04_155650_create_answered_to_answers', 1),
(19, '2021_02_04_155803_create_score_to_answers', 1),
(20, '2021_02_04_155948_create_total_to_answers', 1),
(21, '2021_02_04_160211_create_checked_to_answers', 1),
(22, '2021_02_10_022004_create_subscriptions_table', 1),
(23, '2021_02_13_015526_add_avatar_to_student_profiles', 1),
(24, '2021_02_13_022012_add_avatar_to_teacher_profiles', 1),
(25, '2021_02_23_223134_add_is_aproved_to_subscriptions_table', 1),
(26, '2021_02_23_223358_add_auto_aprove_to_subjects_table', 1),
(27, '2021_03_16_135020_add_practice_limit_to_questions_table', 1),
(28, '2021_03_17_160251_create_files_table', 1),
(29, '2021_03_17_171753_add_type_to_files_table', 1),
(30, '2021_03_21_134427_create_profiles_table', 1);

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `key`, `controller`, `method`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(2, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(3, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(4, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ScriptController', 'Facade\\Ignition\\Http\\Controllers\\ScriptController', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(5, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\StyleController', 'Facade\\Ignition\\Http\\Controllers\\StyleController', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(6, NULL, NULL, 'Closure', 'Closure', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(7, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showLoginForm', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(8, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'login', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(9, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'logout', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(10, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showRegistrationForm', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(11, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'register', '2020-12-18 08:43:33', '2020-12-18 08:43:33'),
(12, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'showLinkRequestForm', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(13, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'sendResetLinkEmail', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(14, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'showResetForm', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(15, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'reset', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(16, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'showConfirmForm', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(17, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'confirm', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(18, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showAdminLoginForm', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(19, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showAdminRegisterForm', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(20, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'adminLogin', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(21, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'createAdmin', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(22, NULL, NULL, 'App\\Http\\Controllers\\HomeController', 'index', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(23, 'Show all role', NULL, 'App\\Http\\Controllers\\RoleController', 'index', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(24, 'Show role create form', NULL, 'App\\Http\\Controllers\\RoleController', 'create', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(25, 'Store new role', NULL, 'App\\Http\\Controllers\\RoleController', 'store', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(26, 'Show single role', NULL, 'App\\Http\\Controllers\\RoleController', 'show', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(27, 'Show role update form', NULL, 'App\\Http\\Controllers\\RoleController', 'edit', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(28, 'Update role', NULL, 'App\\Http\\Controllers\\RoleController', 'update', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(29, 'Delete role', NULL, 'App\\Http\\Controllers\\RoleController', 'destroy', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(30, 'Show all resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'index', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(31, 'Show resource create form', NULL, 'App\\Http\\Controllers\\ResourceController', 'create', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(32, 'Store new resource materials', NULL, 'App\\Http\\Controllers\\ResourceController', 'store', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(33, 'Show single resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'show', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(34, 'Show resource update form', NULL, 'App\\Http\\Controllers\\ResourceController', 'edit', '2020-12-18 08:43:34', '2020-12-18 08:43:34'),
(35, 'Update resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'update', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(36, 'Delete resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'destroy', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(37, NULL, NULL, '\\Illuminate\\Routing\\ViewController', '\\Illuminate\\Routing\\ViewController', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(38, 'Show all subjects', NULL, 'App\\Http\\Controllers\\SubjectController', 'index', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(39, 'Show subject create form', NULL, 'App\\Http\\Controllers\\SubjectController', 'create', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(40, 'Store new subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'store', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(41, 'Show single subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'show', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(42, 'Show subject edit form', NULL, 'App\\Http\\Controllers\\SubjectController', 'edit', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(43, 'Update subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'update', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(44, 'Delete subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'destroy', '2020-12-18 08:43:35', '2020-12-18 08:43:35'),
(52, 'Show subject wise topics', NULL, 'App\\Http\\Controllers\\SubjectController', 'topics', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(53, 'Show topic wise learning materials', NULL, 'App\\Http\\Controllers\\TopicController', 'learn', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(54, 'Show all learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'index', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(55, 'Show learning material create form', NULL, 'App\\Http\\Controllers\\LearnController', 'create', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(56, 'Store new learning material', NULL, 'App\\Http\\Controllers\\LearnController', 'store', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(57, 'Show single learning material', NULL, 'App\\Http\\Controllers\\LearnController', 'show', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(58, 'Show learning materials update form', NULL, 'App\\Http\\Controllers\\LearnController', 'edit', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(59, 'Update learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'update', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(60, 'Delete learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'destroy', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(61, 'Show all contents', NULL, 'App\\Http\\Controllers\\ContentController', 'index', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(62, 'Show content create form', NULL, 'App\\Http\\Controllers\\ContentController', 'create', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(63, 'Store new content', NULL, 'App\\Http\\Controllers\\ContentController', 'store', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(64, 'Show single content', NULL, 'App\\Http\\Controllers\\ContentController', 'show', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(65, 'Show content update form', NULL, 'App\\Http\\Controllers\\ContentController', 'edit', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(66, 'Update content', NULL, 'App\\Http\\Controllers\\ContentController', 'update', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(67, 'Delete content', NULL, 'App\\Http\\Controllers\\ContentController', 'destroy', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(68, 'Show all resources for teacher', NULL, 'App\\Http\\Controllers\\ResourceController', 'teacherResourceAll', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(69, 'Show single resource for teacher', NULL, 'App\\Http\\Controllers\\ResourceController', 'teacherResourceSingle', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(70, 'Show own teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'index', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(71, 'Create new teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'create', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(72, 'Store teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'store', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(73, 'Show others teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'show', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(74, 'Show teacher profile edit form', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'edit', '2020-12-18 08:43:36', '2020-12-18 08:43:36'),
(75, 'Update teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'update', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(76, NULL, NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'destroy', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(77, 'Show own student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'index', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(78, 'Show student profile create form', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'create', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(79, 'Store new student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'store', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(80, 'Show others student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'show', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(81, 'Show student profile edit form', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'edit', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(82, 'Update student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'update', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(83, NULL, NULL, 'App\\Http\\Controllers\\StudentProfileController', 'destroy', '2020-12-18 08:43:37', '2020-12-18 08:43:37'),
(84, 'Show own content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'index', '2020-12-18 09:48:16', '2020-12-18 09:48:16'),
(85, 'Show content developer profile create form', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'create', '2020-12-18 09:48:16', '2020-12-18 09:48:16'),
(86, 'Store new content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'store', '2020-12-18 09:48:16', '2020-12-18 09:48:16'),
(87, 'Show other content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'show', '2020-12-18 09:48:16', '2020-12-18 09:48:16'),
(88, 'Show content developer profile edit form', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'edit', '2020-12-18 09:48:16', '2020-12-18 09:48:16'),
(89, 'Update content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'update', '2020-12-18 09:48:16', '2020-12-18 09:48:16'),
(90, NULL, NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'destroy', '2020-12-18 09:48:16', '2020-12-18 09:48:16'),
(91, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'store', '2020-12-22 20:47:48', '2020-12-22 20:47:48'),
(92, 'Delete Topic', NULL, 'App\\Http\\Controllers\\TopicController', 'destroy', '2020-12-22 20:47:49', '2020-12-22 20:47:49'),
(93, 'Create Question', NULL, 'App\\Http\\Controllers\\QuestionController', 'create', '2020-12-22 20:47:49', '2020-12-22 20:47:49'),
(94, 'Edit Question', NULL, 'App\\Http\\Controllers\\QuestionController', 'edit', '2020-12-22 21:16:21', '2020-12-22 21:16:21'),
(95, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'update', '2020-12-22 23:56:46', '2020-12-22 23:56:46'),
(96, 'Delete Question', NULL, 'App\\Http\\Controllers\\QuestionController', 'destroy', '2020-12-24 04:54:31', '2020-12-24 04:54:31'),
(97, 'View Learn wise questions', NULL, 'App\\Http\\Controllers\\QuestionController', 'show', '2020-12-25 02:21:33', '2020-12-25 02:21:33'),
(98, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'retrive', '2021-01-30 01:20:01', '2021-01-30 01:20:01'),
(99, NULL, NULL, 'App\\Http\\Controllers\\AnswerController', 'store', '2021-01-30 01:20:01', '2021-01-30 01:20:01'),
(101, 'See al answer scripts', NULL, 'App\\Http\\Controllers\\AnswerController', 'review_answers', '2021-01-30 01:52:45', '2021-01-30 01:52:45'),
(102, 'See specific answer script', NULL, 'App\\Http\\Controllers\\AnswerController', 'answer_scripts', '2021-01-30 01:52:45', '2021-01-30 01:52:45'),
(103, NULL, NULL, 'App\\Http\\Controllers\\AnswerController', 'update', '2021-02-07 21:48:24', '2021-02-07 21:48:24'),
(104, '(Student)subscribe subjects', NULL, 'App\\Http\\Controllers\\SubjectController', 'subscribe', '2021-02-09 08:31:25', '2021-02-09 08:31:25'),
(105, '(student) show subscribed subjects', NULL, 'App\\Http\\Controllers\\SubjectController', 'subscribed', '2021-02-10 09:03:45', '2021-02-10 09:03:45'),
(106, NULL, NULL, 'App\\Http\\Controllers\\SubjectController', 'toggleAprove', '2021-02-24 01:40:18', '2021-02-24 01:40:18'),
(107, '(Student) Unsubscribe subjects', NULL, 'App\\Http\\Controllers\\SubjectController', 'unsubscribe', '2021-02-24 01:40:19', '2021-02-24 01:40:19'),
(108, '(Teacher) All subscription', NULL, 'App\\Http\\Controllers\\SubjectController', 'subscriptions', '2021-02-24 11:35:01', '2021-02-24 11:35:01'),
(109, '(Teacher) Delete Subscription', NULL, 'App\\Http\\Controllers\\SubjectController', 'deleteSubscription', '2021-02-24 12:31:56', '2021-02-24 12:31:56'),
(110, '(Teacher) Approve Subscription ', NULL, 'App\\Http\\Controllers\\SubjectController', 'aproveSubscription', '2021-02-24 12:52:35', '2021-02-24 12:52:35');

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
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
(60, 97, 2, NULL, NULL),
(62, 101, 2, NULL, NULL),
(63, 102, 2, NULL, NULL),
(64, 104, 1, NULL, NULL),
(65, 105, 1, NULL, NULL),
(66, 107, 1, NULL, NULL),
(67, 108, 2, NULL, NULL),
(68, 109, 2, NULL, NULL),
(69, 110, 2, NULL, NULL);

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `phone`, `profession`, `address`, `birthdate`, `age`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '01521461645', 'Student', 'Banasree C Block, Road 1', '2021-03-01', '21', '2021-03-21 18:53:54', '2021-03-21 19:02:53', 3),
(2, '01521461643', 'Teacher', 'Banasree C Block, Road 1', '2021-03-01', '21', '2021-03-21 19:03:58', '2021-03-21 19:06:10', 4);

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Student', 'This role is for student', NULL, NULL),
(2, 'Teacher', 'This role is for teacher', NULL, NULL),
(3, 'Content Developer', 'This role is for content developer', NULL, NULL);

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `user_id`, `class`, `institute`, `study_focus`, `group`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 3, 12, 'EWU', 'Science', 'Science', '2021-03-21 18:53:54', '2021-03-21 18:53:54', 'upload/avatars/16163528341616323181closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg');

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `user_id`, `year_of_experience`, `specilization`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 4, 3, '<p>Do not Know?</p>\n', '2021-03-21 19:03:58', '2021-03-21 19:03:58', 'upload/avatars/16163534381616323181closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg');

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_completion`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 's1', 's1@student.com', NULL, 0, '$2y$10$TkMtb2rNU0apiRbK4fylpO8AoMqZYHQGNw3eCaOk73YGjdsaomYt2', NULL, 1, '2021-02-09 08:35:11', '2021-02-09 08:35:11'),
(4, 't1', 't1@teacher.com', NULL, 0, '$2y$10$oxE6NGWf..f0DK6F3YBj7usuSm4RxDERYN3gBgpYe2/0F6/Sk/FAK', NULL, 2, '2021-02-09 08:35:49', '2021-02-09 08:35:49'),
(5, 's2', 's2@student.com', NULL, 0, '$2y$10$DKYjeyVgdDaR8d7wTXQ.OuxnprBOnILakHIjgjEzhGxWM4RaOWuru', NULL, 1, '2021-02-12 09:24:35', '2021-02-12 09:24:35'),
(6, 's3', 's3@student.com', NULL, 0, '$2y$10$p5zM5LqUJKbPx4EDIP3Bnu5WBocoHOcHueClnBbwtin1N61YyDsQW', NULL, 1, '2021-02-12 09:28:07', '2021-02-12 09:28:07');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
