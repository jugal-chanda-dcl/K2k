

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '01521461643', 'Admin', 'Dhaka', '1986-01-01', '12773', '$2y$10$NaE5fw9E5ZyHX5u6l9AuGek12fqwb1u1M1KdDm9k/8YcgIFHvz2Gy', 0, NULL, '2020-12-21 04:03:44', '2020-12-21 04:03:44');



INSERT INTO `learns` (`id`, `topic_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dictum dolor sed luctus aliquam. Fusce nec metus eleifend, condimentum tellus vel, sagittis turpis. Nunc iaculis a neque quis rhoncus. Mauris nec venenatis ligula. Nullam in consequat lectus, sed congue arcu. Nulla tortor orci, euismod ut lectus in, mattis consectetur ligula. Pellentesque sed bibendum orci, nec ornare leo. Pellentesque euismod, nunc ut bibendum rutrum, dolor arcu consequat justo, at consectetur libero risus in est. Proin mollis pulvinar quam, nec interdum nibh fringilla vel. Nullam vel placerat nisl. Duis ac ipsum sed neque dignissim pharetra non tincidunt est. Duis facilisis efficitur ex, vitae auctor erat placerat sed. Donec faucibus ullamcorper ipsum, at dignissim est pretium vel. Nullam maximus eros ac erat aliquam congue. Etiam vitae rhoncus magna. Sed pulvinar massa sed orci commodo viverra.<p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nam sit amet odio in purus sollicitudin semper. Donec pretium velit non urna consequat pellentesque. Nulla sed diam cursus, vestibulum mi eu, viverra nulla. Cras aliquet risus vel fringilla ornare. Etiam volutpat, quam eu aliquam dapibus, leo odio eleifend diam, vel porttitor eros massa eu metus. Curabitur ultrices semper iaculis. Sed sed massa nisl. Quisque efficitur rutrum ipsum, a suscipit odio vestibulum et. Suspendisse ut dictum mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat felis nec rhoncus sodales. Maecenas aliquet mi eu enim blandit, non ultrices est tincidunt.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Vivamus vitae magna vestibulum, pharetra odio non, egestas nunc. Donec ut sagittis nisi, ut pretium felis. Nam sollicitudin mollis urna sit amet accumsan. Fusce in eros ultricies magna varius ultrices pellentesque vel nibh. Aliquam congue augue at maximus porttitor. Nulla sit amet justo eget purus euismod venenatis at a orci. Aliquam ornare mi sapien, in egestas felis porta sit amet. Vivamus placerat enim posuere ante ultrices, posuere sodales tellus dignissim. Pellentesque at ante id nibh interdum imperdiet. Phasellus eget augue auctor, pellentesque ex sit amet, volutpat leo.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Nam sed leo finibus, vulputate libero ut, pharetra diam. Vivamus orci metus, aliquet sed commodo volutpat, molestie eget elit. Maecenas nec nibh at lacus tincidunt accumsan. Duis elit massa, tristique vitae purus ut, iaculis mattis felis. Praesent neque augue, posuere at libero vitae, ultricies finibus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed varius nisi dolor, in fermentum lorem sodales sit amet. Ut viverra vitae dui ac laoreet. Maecenas sem ligula, posuere ac tortor eu, euismod rhoncus nulla. Ut sit amet est vitae velit mollis hendrerit. Donec a quam eu nunc mattis laoreet. Duis porta elementum erat nec consequat. Suspendisse tellus arcu, molestie vel orci vel, eleifend pulvinar mi.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Mauris nibh lorem, pharetra a pharetra et, viverra id urna. Morbi auctor porta sem. In blandit dolor at finibus feugiat. Nulla tristique turpis vitae odio mattis posuere. Maecenas ornare ex a tortor luctus, vehicula elementum libero rhoncus. Morbi varius massa nec est tristique, ut tincidunt justo dignissim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vehicula venenatis dolor, at bibendum magna porttitor quis. Duis dui ligula, tristique vel sapien nec, facilisis tempor justo. Curabitur porta turpis ornare tortor posuere rhoncus. Vivamus auctor erat arcu. Maecenas quis lectus ex. In bibendum ac orci at feugiat. Quisque non dui aliquet, ultricies diam ultricies, dapibus tellus.</p></p>\n', '2020-12-24 08:43:44', '2020-12-24 08:43:44');



INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
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
(90, NULL, NULL, 'App\\Http\\Controllers\\ContentDeveloperProfileController', 'destroy', '2020-12-19 21:48:16', '2020-12-19 21:48:16'),
(91, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'store', '2020-12-24 08:47:48', '2020-12-24 08:47:48'),
(92, 'Delete Topic', NULL, 'App\\Http\\Controllers\\TopicController', 'destroy', '2020-12-24 08:47:49', '2020-12-24 08:47:49'),
(93, 'Create Question', NULL, 'App\\Http\\Controllers\\QuestionController', 'create', '2020-12-24 08:47:49', '2020-12-24 08:47:49'),
(94, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'edit', '2020-12-24 09:16:21', '2020-12-24 09:16:21'),
(95, NULL, NULL, 'App\\Http\\Controllers\\QuestionController', 'update', '2020-12-24 11:56:46', '2020-12-24 11:56:46');


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
(56, 93, 2, NULL, NULL);



INSERT INTO `questions` (`id`, `learn_id`, `question`, `type`, `created_at`, `updated_at`) VALUES
(6, 1, 'Question 1', 'short_answer', '2020-12-24 12:52:45', '2020-12-24 12:52:45');



INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Student', 'This role is for student', NULL, NULL),
(2, 'Teacher', 'This role is for teacher', NULL, NULL),
(3, 'Content Developer', 'This role is for content developer', NULL, NULL);



INSERT INTO `subjects` (`id`, `name`, `class`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 4, '2020-12-24 08:42:26', '2020-12-24 08:42:26');


INSERT INTO `topics` (`id`, `name`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 'Chapter 1', 1, '2020-12-24 08:43:44', '2020-12-24 08:43:44');



INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profession`, `address`, `birthdate`, `age`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Student 1', 'student1@student.com', '01521461643', 'Student', 'Dhaka', '2002-03-17', '6854', NULL, '$2y$10$VXD1eixwwoPvCk5jRtBFd.nqSezIQU0iCewiR1XJX1FYamvHpNcIa', NULL, 1, '2020-12-20 22:31:36', '2020-12-20 22:31:36'),
(2, 'Teacher 1', 'teacher1@teacher.com', '01521461640', 'Teacher', 'Dhaka', '1997-01-21', '8737', NULL, '$2y$10$0fEhxHoN/vLrAHLYqE1f2Ob9.yKfAWzwu5/rMTnUrqUwHk6Ng2NZ6', NULL, 2, '2020-12-23 04:40:07', '2020-12-23 04:40:07');
COMMIT;
