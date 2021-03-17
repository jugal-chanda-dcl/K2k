
INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '01521461643', 'Admin', 'Dhaka', '1986-01-01', '12773', '$2y$10$ZXUXiRylsEOoB8qP7nZb5OZwoZYV0wvnXVqsXYb6B/TguKQUM0ZAi', 0, NULL, '2020-12-19 16:03:44', '2020-12-19 16:03:44');

--
-- Dumping data for table `learns`
--

INSERT INTO `learns` (`id`, `topic_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla suscipit dui in tempor consequat. Mauris felis tortor, eleifend vitae arcu id, efficitur interdum ipsum. Suspendisse potenti. Donec semper nulla id nibh elementum, vitae lacinia mi iaculis. Donec venenatis feugiat scelerisque. Aenean ac scelerisque augue, vitae tempus turpis. In sit amet ipsum ex. Sed nunc purus, varius eget cursus et, fermentum eu odio. Integer consectetur sit amet elit id iaculis. Mauris turpis enim, consectetur a lacinia sed, mattis sit amet leo. Quisque pellentesque, velit a blandit facilisis, ipsum odio convallis massa, interdum gravida turpis massa ut est.<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Aliquam semper quis dui feugiat tempus. Nam sit amet sapien at nisl pellentesque dapibus ac et odio. Suspendisse potenti. Mauris finibus magna ac enim pharetra, ac eleifend quam egestas. In fringilla vestibulum turpis, at feugiat est convallis ac. Praesent luctus, nisl et semper malesuada, nibh velit gravida dolor, pulvinar imperdiet velit diam placerat tellus. Maecenas ultrices, nunc sed posuere mattis, augue neque mollis lectus, vel interdum lectus odio id libero. Maecenas dictum congue lectus. In egestas, est in egestas sagittis, felis turpis mollis metus, sed ultrices massa urna at urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Donec lacinia urna justo, ac cursus massa faucibus ut. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer id tempor ante.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Praesent et consequat quam. Vestibulum placerat sed sem sit amet pretium. Suspendisse sit amet mauris lectus. Maecenas molestie hendrerit nisi, at fermentum urna commodo fringilla. Nulla facilisi. Curabitur tellus massa, facilisis vitae pulvinar at, venenatis vel justo. Sed porta commodo eros nec mattis. Mauris imperdiet sed urna at venenatis. Donec ultricies quam lorem, vel consectetur tortor tincidunt in. Vivamus ac enim fringilla, auctor ante sed, consequat ligula.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nam mattis justo et odio blandit commodo. Curabitur erat sapien, tristique vel sodales et, accumsan lobortis augue. Pellentesque consequat sollicitudin risus eu dictum. Nulla at placerat ipsum. Donec augue purus, bibendum eu dui in, vestibulum pretium massa. Sed vitae vehicula nisl. Maecenas tempus velit arcu, et sodales leo sollicitudin eget. Pellentesque aliquet risus sit amet rhoncus cursus. Donec vitae quam nisl. Maecenas et nisi id purus imperdiet tempor. Suspendisse semper ex ut tempor auctor. Curabitur vitae sagittis felis. In a interdum sem.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nulla dapibus sem eu sagittis dictum. Nunc rutrum magna id justo fringilla pretium. Donec felis nibh, feugiat ut lectus pretium, porttitor placerat tellus. Morbi volutpat tristique varius. Aliquam sed faucibus velit, eget sollicitudin magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ex interdum dui blandit mollis a at nibh. Nulla nec orci arcu. Morbi mattis sit amet ante ut lobortis. Phasellus elit orci, faucibus eu massa condimentum, tincidunt vulputate massa. Integer eget tempor enim. Fusce vestibulum lacus magna, vitae tincidunt lorem faucibus at. Vivamus commodo nibh ex, nec euismod lectus pellentesque sed. Quisque hendrerit tempor ipsum eu ultrices. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p></p>\n', '2021-02-25 02:45:08', '2021-02-25 02:45:08');



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
(110, '(Teacher) Approve Subscription ', NULL, 'App\\Http\\Controllers\\SubjectController', 'aproveSubscription', '2021-02-24 12:52:35', '2021-02-24 12:52:35'),
(111, '(Teacher) Update Practice Limit', NULL, 'App\\Http\\Controllers\\QuestionController', 'updatePracticeLimit', '2021-03-17 06:20:41', '2021-03-17 06:20:41'),
(112, '(Student) answer submit view', NULL, 'App\\Http\\Controllers\\AnswerController', 'submitView', '2021-03-17 06:20:41', '2021-03-17 06:20:41'),
(113, '(Student) Show subjects for practices', NULL, 'App\\Http\\Controllers\\PracticeController', 'subjects', '2021-03-17 06:20:41', '2021-03-17 06:20:41'),
(114, '(students) Show topics for practices', NULL, 'App\\Http\\Controllers\\PracticeController', 'topics', '2021-03-17 06:20:41', '2021-03-17 06:20:41');

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
(69, 110, 2, NULL, NULL),
(70, 111, 2, NULL, NULL),
(71, 112, 1, NULL, NULL),
(72, 113, 1, NULL, NULL),
(73, 114, 1, NULL, NULL);

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `learn_id`, `content`, `created_at`, `updated_at`, `practice_limit`) VALUES
(3, 1, '{\"q_1\":{\"question\":\"Question 1\",\"question_type\":\"short_answer\",\"options\":[],\"options_answer\":[]},\"q_2\":{\"question\":\"Question 2\",\"question_type\":\"multiple_choice\",\"options\":{\"q_2>O_1\":\"1\",\"q_2>O_2\":\"2\",\"q_2>O_3\":\"3\"},\"options_answer\":[\"q_2>O_1\"]},\"q_3\":{\"question\":\"Question 3\",\"question_type\":\"checkbox\",\"options\":{\"q_3>O_1\":\"1\",\"q_3>O_2\":\"2\",\"q_3>O_3\":\"3\"},\"options_answer\":[\"q_3>O_2\",\"q_3>O_3\"]},\"q_4\":{\"question\":\"Question 4\",\"question_type\":\"paragraph\",\"options\":[],\"options_answer\":[]}}', '2021-03-17 06:47:20', '2021-03-17 06:47:20', 1);

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

INSERT INTO `subjects` (`id`, `name`, `class`, `user_id`, `created_at`, `updated_at`, `auto_aprove`) VALUES
(1, 'bangla', 10, 4, '2021-02-23 11:20:00', '2021-02-26 02:20:58', 0),
(2, 'english', 10, 4, '2021-02-23 11:20:18', '2021-02-23 13:26:58', 0),
(3, 'english', 10, 4, '2021-02-23 11:20:29', '2021-02-23 13:25:56', 1);

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `subject_id`, `created_at`, `updated_at`, `is_aproved`) VALUES
(10, 3, 3, NULL, NULL, 0),
(11, 3, 2, NULL, NULL, 1),
(13, 5, 3, NULL, NULL, 1),
(16, 5, 2, NULL, NULL, 1),
(17, 5, 1, NULL, NULL, 1),
(19, 3, 1, NULL, NULL, 1);



INSERT INTO `topics` (`id`, `name`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 'Chapter 1', 1, '2021-02-25 02:45:08', '2021-02-25 02:45:08');



INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 's1', 's1@student.com', '01234567891', 'Student', 'Dhaka', '2021-02-01', '9', NULL, '$2y$10$TkMtb2rNU0apiRbK4fylpO8AoMqZYHQGNw3eCaOk73YGjdsaomYt2', NULL, 1, '2021-02-09 08:35:11', '2021-02-09 08:35:11'),
(4, 't1', 't1@teacher.com', '01234567890', 'Teacher', 'Dhaka', '2021-02-01', '9', NULL, '$2y$10$oxE6NGWf..f0DK6F3YBj7usuSm4RxDERYN3gBgpYe2/0F6/Sk/FAK', NULL, 2, '2021-02-09 08:35:49', '2021-02-09 08:35:49'),
(5, 's2', 's2@student.com', '01234567895', 'Student', 'Dhaka', '2021-02-01', '12', NULL, '$2y$10$DKYjeyVgdDaR8d7wTXQ.OuxnprBOnILakHIjgjEzhGxWM4RaOWuru', NULL, 1, '2021-02-12 09:24:35', '2021-02-12 09:24:35'),
(6, 's3', 's3@student.com', '01234567897', 'Student', 'Dhaka', '2021-02-01', '12', NULL, '$2y$10$p5zM5LqUJKbPx4EDIP3Bnu5WBocoHOcHueClnBbwtin1N61YyDsQW', NULL, 1, '2021-02-12 09:28:07', '2021-02-12 09:28:07');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
