INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '01521461643', 'Admin', 'Dhaka', '1986-01-01', '12773', '$2y$10$NaE5fw9E5ZyHX5u6l9AuGek12fqwb1u1M1KdDm9k/8YcgIFHvz2Gy', 0, NULL, '2020-12-21 04:03:44', '2020-12-21 04:03:44');


--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `key`, `controller`, `method`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', 'Facade\\Ignition\\Http\\Controllers\\HealthCheckController', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(2, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', 'Facade\\Ignition\\Http\\Controllers\\ExecuteSolutionController', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(3, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', 'Facade\\Ignition\\Http\\Controllers\\ShareReportController', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(4, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\ScriptController', 'Facade\\Ignition\\Http\\Controllers\\ScriptController', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(5, NULL, NULL, 'Facade\\Ignition\\Http\\Controllers\\StyleController', 'Facade\\Ignition\\Http\\Controllers\\StyleController', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(6, NULL, NULL, 'Closure', 'Closure', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(7, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showLoginForm', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(8, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'login', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(9, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'logout', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(10, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showRegistrationForm', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(11, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'register', '2020-12-19 20:43:33', '2020-12-19 20:43:33'),
(12, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'showLinkRequestForm', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(13, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ForgotPasswordController', 'sendResetLinkEmail', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(14, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'showResetForm', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(15, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ResetPasswordController', 'reset', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(16, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'showConfirmForm', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(17, NULL, NULL, 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController', 'confirm', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(18, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'showAdminLoginForm', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(19, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'showAdminRegisterForm', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(20, NULL, NULL, 'App\\Http\\Controllers\\Auth\\LoginController', 'adminLogin', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(21, NULL, NULL, 'App\\Http\\Controllers\\Auth\\RegisterController', 'createAdmin', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(22, NULL, NULL, 'App\\Http\\Controllers\\HomeController', 'index', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(23, 'Show all role', NULL, 'App\\Http\\Controllers\\RoleController', 'index', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(24, 'Show role create form', NULL, 'App\\Http\\Controllers\\RoleController', 'create', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(25, 'Store new role', NULL, 'App\\Http\\Controllers\\RoleController', 'store', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(26, 'Show single role', NULL, 'App\\Http\\Controllers\\RoleController', 'show', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(27, 'Show role update form', NULL, 'App\\Http\\Controllers\\RoleController', 'edit', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(28, 'Update role', NULL, 'App\\Http\\Controllers\\RoleController', 'update', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(29, 'Delete role', NULL, 'App\\Http\\Controllers\\RoleController', 'destroy', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(30, 'Show all resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'index', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(31, 'Show resource create form', NULL, 'App\\Http\\Controllers\\ResourceController', 'create', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(32, 'Store new resource materials', NULL, 'App\\Http\\Controllers\\ResourceController', 'store', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(33, 'Show single resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'show', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(34, 'Show resource update form', NULL, 'App\\Http\\Controllers\\ResourceController', 'edit', '2020-12-19 20:43:34', '2020-12-19 20:43:34'),
(35, 'Update resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'update', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(36, 'Delete resource', NULL, 'App\\Http\\Controllers\\ResourceController', 'destroy', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(37, NULL, NULL, '\\Illuminate\\Routing\\ViewController', '\\Illuminate\\Routing\\ViewController', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(38, 'Show all subjects', NULL, 'App\\Http\\Controllers\\SubjectController', 'index', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(39, 'Show subject create form', NULL, 'App\\Http\\Controllers\\SubjectController', 'create', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(40, 'Store new subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'store', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(41, 'Show single subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'show', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(42, 'Show subject edit form', NULL, 'App\\Http\\Controllers\\SubjectController', 'edit', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(43, 'Update subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'update', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(44, 'Delete subject', NULL, 'App\\Http\\Controllers\\SubjectController', 'destroy', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(45, 'Show all topics', NULL, 'App\\Http\\Controllers\\TopicController', 'index', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(46, 'Show topic create form', NULL, 'App\\Http\\Controllers\\TopicController', 'create', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(47, 'Store new topic', NULL, 'App\\Http\\Controllers\\TopicController', 'store', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(48, 'Show single topic', NULL, 'App\\Http\\Controllers\\TopicController', 'show', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(49, 'Show topic update form', NULL, 'App\\Http\\Controllers\\TopicController', 'edit', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(50, 'Update topic', NULL, 'App\\Http\\Controllers\\TopicController', 'update', '2020-12-19 20:43:35', '2020-12-19 20:43:35'),
(51, 'Delete topic', NULL, 'App\\Http\\Controllers\\TopicController', 'destroy', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(52, 'Show subject wise topics', NULL, 'App\\Http\\Controllers\\SubjectController', 'topics', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(53, 'Show topic wise learning materials', NULL, 'App\\Http\\Controllers\\TopicController', 'learn', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(54, 'Show all learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'index', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(55, 'Show learning material create form', NULL, 'App\\Http\\Controllers\\LearnController', 'create', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(56, 'Store new learning material', NULL, 'App\\Http\\Controllers\\LearnController', 'store', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(57, 'Show single learning material', NULL, 'App\\Http\\Controllers\\LearnController', 'show', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(58, 'Show learning materials update form', NULL, 'App\\Http\\Controllers\\LearnController', 'edit', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(59, 'Update learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'update', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(60, 'Delete learning materials', NULL, 'App\\Http\\Controllers\\LearnController', 'destroy', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(61, 'Show all contents', NULL, 'App\\Http\\Controllers\\ContentController', 'index', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(62, 'Show content create form', NULL, 'App\\Http\\Controllers\\ContentController', 'create', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(63, 'Store new content', NULL, 'App\\Http\\Controllers\\ContentController', 'store', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(64, 'Show single content', NULL, 'App\\Http\\Controllers\\ContentController', 'show', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(65, 'Show content update form', NULL, 'App\\Http\\Controllers\\ContentController', 'edit', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(66, 'Update content', NULL, 'App\\Http\\Controllers\\ContentController', 'update', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(67, 'Delete content', NULL, 'App\\Http\\Controllers\\ContentController', 'destroy', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(68, 'Show all resources for teacher', NULL, 'App\\Http\\Controllers\\ResourceController', 'teacherResourceAll', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(69, 'Show single resource for teacher', NULL, 'App\\Http\\Controllers\\ResourceController', 'teacherResourceSingle', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(70, 'Show own teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'index', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(71, 'Create new teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'create', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(72, 'Store teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'store', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(73, 'Show others teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'show', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(74, 'Show teacher profile edit form', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'edit', '2020-12-19 20:43:36', '2020-12-19 20:43:36'),
(75, 'Update teacher profile', NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'update', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(76, NULL, NULL, 'App\\Http\\Controllers\\TeacherProfileController', 'destroy', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(77, 'Show own student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'index', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(78, 'Show student profile create form', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'create', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(79, 'Store new student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'store', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(80, 'Show others student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'show', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(81, 'Show student profile edit form', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'edit', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(82, 'Update student profile', NULL, 'App\\Http\\Controllers\\StudentProfileController', 'update', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(83, NULL, NULL, 'App\\Http\\Controllers\\StudentProfileController', 'destroy', '2020-12-19 20:43:37', '2020-12-19 20:43:37'),
(84, 'Show own content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'index', '2020-12-19 21:48:16', '2020-12-19 21:48:16'),
(85, 'Show content developer profile create form', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'create', '2020-12-19 21:48:16', '2020-12-19 21:48:16'),
(86, 'Store new content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'store', '2020-12-19 21:48:16', '2020-12-19 21:48:16'),
(87, 'Show other content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'show', '2020-12-19 21:48:16', '2020-12-19 21:48:16'),
(88, 'Show content developer profile edit form', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'edit', '2020-12-19 21:48:16', '2020-12-19 21:48:16'),
(89, 'Update content developer profile', NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'update', '2020-12-19 21:48:16', '2020-12-19 21:48:16'),
(90, NULL, NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'destroy', '2020-12-19 21:48:16', '2020-12-19 21:48:16');

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
(16, 45, 2, NULL, NULL),
(17, 46, 2, NULL, NULL),
(18, 47, 2, NULL, NULL),
(19, 48, 2, NULL, NULL),
(20, 49, 2, NULL, NULL),
(21, 50, 2, NULL, NULL),
(22, 51, 2, NULL, NULL),
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
(47, 77, 2, NULL, NULL),
(48, 61, 3, NULL, NULL),
(49, 64, 3, NULL, NULL),
(50, 84, 3, NULL, NULL),
(51, 85, 3, NULL, NULL),
(52, 86, 3, NULL, NULL),
(53, 88, 3, NULL, NULL),
(54, 89, 3, NULL, NULL);

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `content`, `topic`, `created_at`, `updated_at`) VALUES
(1, '<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis luctus diam mauris, sit amet gravida leo feugiat in. Nulla rhoncus imperdiet neque, ac congue metus condimentum tempor. Nam dictum lorem tortor, iaculis tincidunt tellus rutrum quis. Cras porta ultricies sodales. Morbi non tellus placerat, posuere turpis et, vehicula sem. Maecenas lacinia sem urna, non consequat ligula accumsan nec. Nam pellentesque orci nisi. Ut posuere eros eget lacus luctus tempor. Pellentesque id risus nec orci aliquam convallis sit amet sed est.<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Sed id sagittis ante. Maecenas sit amet purus tempor enim pellentesque condimentum vitae non nisi. Ut nec quam sed justo finibus cursus sed vel purus. Etiam mollis rhoncus orci, quis ornare dolor facilisis ut. Mauris nec rhoncus elit, nec efficitur felis. Aliquam convallis arcu quis porta tincidunt. Phasellus in consectetur justo, vel fermentum enim. Aliquam id gravida lacus, vel tincidunt nisl. Sed imperdiet rhoncus tempor. Ut tempor sit amet est non congue. Quisque ornare leo ut eros varius, eu blandit ipsum aliquet. Aenean id porta dolor. Donec venenatis magna non dolor tincidunt, vitae ultricies orci imperdiet. Mauris iaculis eget risus eu semper. Praesent fermentum, massa pulvinar hendrerit vestibulum, odio est sollicitudin purus, ut iaculis sem mauris et massa.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nulla viverra convallis nisi, quis convallis odio volutpat in. Morbi rhoncus arcu id pharetra fermentum. Pellentesque auctor blandit tortor vitae condimentum. Integer sagittis commodo nibh at tristique. Curabitur id dui convallis, lacinia lectus sit amet, bibendum velit. Aliquam vel varius orci, in sodales enim. Nullam sit amet congue mi.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Cras ultrices erat mauris, a fringilla ex scelerisque at. Vestibulum maximus massa tempus ante porttitor, at mattis dui iaculis. Ut sagittis, quam non ultrices vulputate, nisi dolor pharetra urna, quis facilisis leo elit sit amet ex. Donec mollis cursus tincidunt. Vivamus efficitur enim a molestie eleifend. Aenean pharetra nibh arcu, eu placerat sapien lobortis a. Nam bibendum ultrices dolor eu rutrum. Vivamus id suscipit ante, eget sagittis ipsum. Curabitur eget interdum mi, et laoreet tellus. Cras dui tellus, tincidunt id ligula vel, scelerisque volutpat massa. Curabitur diam mi, rutrum ac mi eu, dictum porttitor nunc. In sodales risus vitae malesuada elementum. Phasellus nec lobortis lacus. Pellentesque ac justo efficitur, elementum lorem sit amet, rhoncus nibh.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Sed eget mi a lacus lacinia gravida. Nam sit amet tempor leo. Vivamus venenatis magna mauris, vel eleifend ex dignissim porttitor. In quis tristique turpis, eu mattis dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non augue felis. Suspendisse eget imperdiet velit, sit amet vulputate ante. Nulla facilisi. Donec ut nisl lacus. Proin bibendum libero eu nunc consequat, vitae elementum tortor malesuada. Nullam ac pulvinar purus, quis accumsan lectus. Pellentesque hendrerit erat id maximus porttitor. Curabitur vel odio felis. Vestibulum at magna non purus tincidunt imperdiet sed a mi. Curabitur quis neque vitae metus vulputate vulputate ac vel ex.</p></p>\n', 'Class 4 Chapter 1', '2020-12-21 04:07:17', '2020-12-21 04:07:17'),
(2, '<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis luctus diam mauris, sit amet gravida leo feugiat in. Nulla rhoncus imperdiet neque, ac congue metus condimentum tempor. Nam dictum lorem tortor, iaculis tincidunt tellus rutrum quis. Cras porta ultricies sodales. Morbi non tellus placerat, posuere turpis et, vehicula sem. Maecenas lacinia sem urna, non consequat ligula accumsan nec. Nam pellentesque orci nisi. Ut posuere eros eget lacus luctus tempor. Pellentesque id risus nec orci aliquam convallis sit amet sed est.<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Sed id sagittis ante. Maecenas sit amet purus tempor enim pellentesque condimentum vitae non nisi. Ut nec quam sed justo finibus cursus sed vel purus. Etiam mollis rhoncus orci, quis ornare dolor facilisis ut. Mauris nec rhoncus elit, nec efficitur felis. Aliquam convallis arcu quis porta tincidunt. Phasellus in consectetur justo, vel fermentum enim. Aliquam id gravida lacus, vel tincidunt nisl. Sed imperdiet rhoncus tempor. Ut tempor sit amet est non congue. Quisque ornare leo ut eros varius, eu blandit ipsum aliquet. Aenean id porta dolor. Donec venenatis magna non dolor tincidunt, vitae ultricies orci imperdiet. Mauris iaculis eget risus eu semper. Praesent fermentum, massa pulvinar hendrerit vestibulum, odio est sollicitudin purus, ut iaculis sem mauris et massa.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nulla viverra convallis nisi, quis convallis odio volutpat in. Morbi rhoncus arcu id pharetra fermentum. Pellentesque auctor blandit tortor vitae condimentum. Integer sagittis commodo nibh at tristique. Curabitur id dui convallis, lacinia lectus sit amet, bibendum velit. Aliquam vel varius orci, in sodales enim. Nullam sit amet congue mi.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Cras ultrices erat mauris, a fringilla ex scelerisque at. Vestibulum maximus massa tempus ante porttitor, at mattis dui iaculis. Ut sagittis, quam non ultrices vulputate, nisi dolor pharetra urna, quis facilisis leo elit sit amet ex. Donec mollis cursus tincidunt. Vivamus efficitur enim a molestie eleifend. Aenean pharetra nibh arcu, eu placerat sapien lobortis a. Nam bibendum ultrices dolor eu rutrum. Vivamus id suscipit ante, eget sagittis ipsum. Curabitur eget interdum mi, et laoreet tellus. Cras dui tellus, tincidunt id ligula vel, scelerisque volutpat massa. Curabitur diam mi, rutrum ac mi eu, dictum porttitor nunc. In sodales risus vitae malesuada elementum. Phasellus nec lobortis lacus. Pellentesque ac justo efficitur, elementum lorem sit amet, rhoncus nibh.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Sed eget mi a lacus lacinia gravida. Nam sit amet tempor leo. Vivamus venenatis magna mauris, vel eleifend ex dignissim porttitor. In quis tristique turpis, eu mattis dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non augue felis. Suspendisse eget imperdiet velit, sit amet vulputate ante. Nulla facilisi. Donec ut nisl lacus. Proin bibendum libero eu nunc consequat, vitae elementum tortor malesuada. Nullam ac pulvinar purus, quis accumsan lectus. Pellentesque hendrerit erat id maximus porttitor. Curabitur vel odio felis. Vestibulum at magna non purus tincidunt imperdiet sed a mi. Curabitur quis neque vitae metus vulputate vulputate ac vel ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis luctus diam mauris, sit amet gravida leo feugiat in. Nulla rhoncus imperdiet neque, ac congue metus condimentum tempor. Nam dictum lorem tortor, iaculis tincidunt tellus rutrum quis. Cras porta ultricies sodales. Morbi non tellus placerat, posuere turpis et, vehicula sem. Maecenas lacinia sem urna, non consequat ligula accumsan nec. Nam pellentesque orci nisi. Ut posuere eros eget lacus luctus tempor. Pellentesque id risus nec orci aliquam convallis sit amet sed est.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Sed id sagittis ante. Maecenas sit amet purus tempor enim pellentesque condimentum vitae non nisi. Ut nec quam sed justo finibus cursus sed vel purus. Etiam mollis rhoncus orci, quis ornare dolor facilisis ut. Mauris nec rhoncus elit, nec efficitur felis. Aliquam convallis arcu quis porta tincidunt. Phasellus in consectetur justo, vel fermentum enim. Aliquam id gravida lacus, vel tincidunt nisl. Sed imperdiet rhoncus tempor. Ut tempor sit amet est non congue. Quisque ornare leo ut eros varius, eu blandit ipsum aliquet. Aenean id porta dolor. Donec venenatis magna non dolor tincidunt, vitae ultricies orci imperdiet. Mauris iaculis eget risus eu semper. Praesent fermentum, massa pulvinar hendrerit vestibulum, odio est sollicitudin purus, ut iaculis sem mauris et massa.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nulla viverra convallis nisi, quis convallis odio volutpat in. Morbi rhoncus arcu id pharetra fermentum. Pellentesque auctor blandit tortor vitae condimentum. Integer sagittis commodo nibh at tristique. Curabitur id dui convallis, lacinia lectus sit amet, bibendum velit. Aliquam vel varius orci, in sodales enim. Nullam sit amet congue mi.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Cras ultrices erat mauris, a fringilla ex scelerisque at. Vestibulum maximus massa tempus ante porttitor, at mattis dui iaculis. Ut sagittis, quam non ultrices vulputate, nisi dolor pharetra urna, quis facilisis leo elit sit amet ex. Donec mollis cursus tincidunt. Vivamus efficitur enim a molestie eleifend. Aenean pharetra nibh arcu, eu placerat sapien lobortis a. Nam bibendum ultrices dolor eu rutrum. Vivamus id suscipit ante, eget sagittis ipsum. Curabitur eget interdum mi, et laoreet tellus. Cras dui tellus, tincidunt id ligula vel, scelerisque volutpat massa. Curabitur diam mi, rutrum ac mi eu, dictum porttitor nunc. In sodales risus vitae malesuada elementum. Phasellus nec lobortis lacus. Pellentesque ac justo efficitur, elementum lorem sit amet, rhoncus nibh.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Sed eget mi a lacus lacinia gravida. Nam sit amet tempor leo. Vivamus venenatis magna mauris, vel eleifend ex dignissim porttitor. In quis tristique turpis, eu mattis dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non augue felis. Suspendisse eget imperdiet velit, sit amet vulputate ante. Nulla facilisi. Donec ut nisl lacus. Proin bibendum libero eu nunc consequat, vitae elementum tortor malesuada. Nullam ac pulvinar purus, quis accumsan lectus. Pellentesque hendrerit erat id maximus porttitor. Curabitur vel odio felis. Vestibulum at magna non purus tincidunt imperdiet sed a mi. Curabitur quis neque vitae metus vulputate vulputate ac vel ex.</p></p>\n', 'Class 4 Chapter 2', '2020-12-21 04:07:30', '2020-12-21 04:07:30');

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Student', 'This role is for student', NULL, NULL),
(2, 'Teacher', 'This role is for teacher', NULL, NULL),
(3, 'Content Developer', 'This role is for content developer', NULL, NULL);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Student 1', 'student1@student.com', '01521461643', 'Student', 'Dhaka', '2002-03-17', '6854', NULL, '$2y$10$VXD1eixwwoPvCk5jRtBFd.nqSezIQU0iCewiR1XJX1FYamvHpNcIa', NULL, 1, '2020-12-20 22:31:36', '2020-12-20 22:31:36'),
(2, 'Teacher 1', 'teacher1@teacher.com', '01521461640', 'Teacher', 'Dhaka', '1997-01-21', '8737', NULL, '$2y$10$0fEhxHoN/vLrAHLYqE1f2Ob9.yKfAWzwu5/rMTnUrqUwHk6Ng2NZ6', NULL, 2, '2020-12-23 04:40:07', '2020-12-23 04:40:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
