-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 09:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iphonetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `created_at`) VALUES
(1, 'Comment 1', 1, '2021-12-10 14:14:26'),
(2, 'Comment 2', 1, '2021-12-10 14:14:33'),
(3, 'Comment 3', 1, '2021-12-10 14:14:38'),
(4, 'Comment 4', 1, '2021-12-10 14:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Lesson 1', '2021-12-10 07:10:20', '2021-12-10 07:10:20'),
(2, 'Lesson 2', '2021-12-10 07:10:20', '2021-12-10 07:10:20'),
(3, 'Lesson 3', '2021-12-10 07:10:20', '2021-12-10 07:10:20'),
(4, 'Lesson 4', '2021-12-10 07:10:20', '2021-12-10 07:10:20'),
(5, 'Lesson 5', '2021-12-10 07:10:20', '2021-12-10 07:10:20'),
(6, 'Lesson 6', '2021-12-10 07:10:20', '2021-12-10 07:10:20'),
(7, 'Lesson 7', '2021-12-10 07:10:20', '2021-12-10 07:10:20'),
(8, 'Lesson 8', '2021-12-10 07:05:02', '2021-12-10 07:05:02'),
(9, 'Lesson 9', '2021-12-10 07:07:07', '2021-12-10 07:07:07'),
(10, 'Lesson 10', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(11, 'Lesson 11', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(12, 'Lesson 12', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(13, 'Lesson 13', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(14, 'Lesson 14', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(15, 'Lesson 15', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(16, 'Lesson 16', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(17, 'Lesson 17', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(18, 'Lesson 18', '2021-12-10 07:07:08', '2021-12-10 07:07:08'),
(19, 'Lesson 19', '2021-12-10 07:07:09', '2021-12-10 07:07:09'),
(20, 'Lesson 20', '2021-12-10 07:07:09', '2021-12-10 07:07:09'),
(21, 'Lesson 21', '2021-12-10 07:07:09', '2021-12-10 07:07:09'),
(22, 'Lesson 22', '2021-12-10 07:07:09', '2021-12-10 07:07:09'),
(23, 'Lesson 23', '2021-12-10 07:07:09', '2021-12-10 07:07:09'),
(24, 'Lesson 24', '2021-12-10 07:07:09', '2021-12-10 07:07:09'),
(25, 'Lesson 25', '2021-12-10 07:07:09', '2021-12-10 07:07:09'),
(26, 'Lesson 26', '2021-12-10 07:08:39', '2021-12-10 07:08:39'),
(27, 'Lesson 27', '2021-12-10 07:08:39', '2021-12-10 07:08:39'),
(28, 'Lesson 28', '2021-12-10 07:08:39', '2021-12-10 07:08:39'),
(29, 'Lesson 29', '2021-12-10 07:08:39', '2021-12-10 07:08:39'),
(30, 'Lesson 30', '2021-12-10 07:08:40', '2021-12-10 07:08:40'),
(31, 'Lesson 31', '2021-12-10 07:08:40', '2021-12-10 07:08:40'),
(32, 'Lesson 32', '2021-12-10 07:08:40', '2021-12-10 07:08:40'),
(33, 'Lesson 33', '2021-12-10 07:08:40', '2021-12-10 07:08:40'),
(34, 'Lesson 34', '2021-12-10 07:08:41', '2021-12-10 07:08:41'),
(35, 'Lesson 35', '2021-12-10 07:08:41', '2021-12-10 07:08:41'),
(36, 'Lesson 36', '2021-12-10 07:08:41', '2021-12-10 07:08:41'),
(37, 'Lesson 37', '2021-12-10 07:08:41', '2021-12-10 07:08:41'),
(38, 'Lesson 38', '2021-12-10 07:08:41', '2021-12-10 07:08:41'),
(39, 'Lesson 39', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(40, 'Lesson 40', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(41, 'Lesson 41', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(42, 'Lesson 42', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(43, 'Lesson 43', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(44, 'Lesson 44', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(45, 'Lesson 45', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(46, 'Lesson 46', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(47, 'Lesson 47', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(48, 'Lesson 48', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(49, 'Lesson 49', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(50, 'Lesson 50', '2021-12-10 07:08:42', '2021-12-10 07:08:42'),
(51, 'Aspernatur a repellendus mollitia dolorem.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(52, 'Placeat animi ipsam consequatur aut rerum.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(53, 'Eaque non perferendis animi et.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(54, 'Aut sapiente vel veniam pariatur natus non.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(55, 'Deleniti aperiam doloribus reiciendis et.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(56, 'Qui quae dolor facilis doloribus dolor rerum quisquam officia.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(57, 'Eos excepturi eaque cupiditate.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(58, 'Omnis dignissimos asperiores blanditiis officia et quas delectus.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(59, 'Dignissimos delectus magni illo est.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(60, 'Enim et dolorem enim praesentium.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(61, 'Vel omnis ipsam voluptatibus quidem.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(62, 'Optio laborum voluptas et ut maiores rem non.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(63, 'Eum eaque nihil quibusdam nostrum autem debitis.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(64, 'Nam reprehenderit eum unde incidunt.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(65, 'Expedita explicabo ducimus facilis voluptas et cupiditate optio dolor.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(66, 'Tempore et est vel architecto debitis.', '2021-12-10 10:06:08', '2021-12-10 10:06:08'),
(67, 'Neque quis in veniam earum provident nihil.', '2021-12-10 10:06:09', '2021-12-10 10:06:09'),
(68, 'Dolorem culpa sit natus minus ut repellendus.', '2021-12-10 10:06:09', '2021-12-10 10:06:09'),
(69, 'Ut necessitatibus beatae error iste temporibus et id.', '2021-12-10 10:06:09', '2021-12-10 10:06:09'),
(70, 'Eum nobis repellendus ut placeat.', '2021-12-10 10:06:09', '2021-12-10 10:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_user`
--

CREATE TABLE `lesson_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `watched` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_user`
--

INSERT INTO `lesson_user` (`id`, `user_id`, `lesson_id`, `watched`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 1, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_badges`
--

CREATE TABLE `master_badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `achieve_count` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_badges`
--

INSERT INTO `master_badges` (`id`, `achieve_count`, `title`, `created_on`) VALUES
(1, 0, 'Beginner', '2021-12-10 15:46:29'),
(2, 4, 'Intermediate', '2021-12-10 15:46:29'),
(3, 8, 'Advanced', '2021-12-10 15:46:30'),
(4, 10, 'Master', '2021-12-10 15:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `master_comment_achievements`
--

CREATE TABLE `master_comment_achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `achieve_count` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_comment_achievements`
--

INSERT INTO `master_comment_achievements` (`id`, `achieve_count`, `order`, `title`, `created_on`) VALUES
(1, 1, 1, 'First Comment Written', '2021-12-10 19:10:38'),
(2, 3, 2, '3 Comments Written', '2021-12-10 19:10:38'),
(3, 5, 3, '5 Comments Written', '2021-12-10 19:10:38'),
(4, 10, 4, '10 Comments Written', '2021-12-10 19:10:38'),
(5, 20, 5, '20 Comments Written', '2021-12-10 19:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `master_lesson_achievements`
--

CREATE TABLE `master_lesson_achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `achieve_count` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_lesson_achievements`
--

INSERT INTO `master_lesson_achievements` (`id`, `achieve_count`, `order`, `title`, `created_on`) VALUES
(1, 1, 1, 'First Lesson Watched', '2021-12-10 19:10:43'),
(2, 5, 2, '5 Lessons Watched', '2021-12-10 19:10:44'),
(3, 10, 3, '10 Lessons Watched', '2021-12-10 19:10:44'),
(4, 25, 4, '25 Lessons Watched', '2021-12-10 19:10:44'),
(5, 50, 5, '50 Lessons Watched', '2021-12-10 19:10:44');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_21_114103_create_comments_table', 1),
(5, '2021_07_21_191556_create_lessons_table', 1),
(6, '2021_07_21_192747_create_lesson_user_table', 1),
(7, '2021_12_10_095531_create_badges_table', 2),
(8, '2021_12_10_095636_create_lesson_achievements_table', 2),
(9, '2021_12_10_095700_create_comment_achievements_table', 2),
(10, '2021_12_10_112624_create_user_achievements', 3),
(11, '2021_12_10_121418_create_user_achievements', 4),
(12, '2021_12_10_121559_alter_lesson_user', 5),
(13, '2021_12_10_121934_alter_lesson_user', 6),
(14, '2021_12_10_123541_alter_lesson_user', 7),
(15, '2021_12_10_133729_alter_comment_table', 8),
(16, '2021_12_10_143752_create_badges_unlocked', 9),
(17, '2021_12_10_145810_create_master_badges', 10),
(18, '2021_12_10_145909_create_master_les_achievements', 10),
(19, '2021_12_10_145931_create_master_com_achievements', 10),
(20, '2021_12_10_152630_create_master_badges', 11),
(21, '2021_12_10_152750_create_master_les_achieve', 11),
(22, '2021_12_10_152815_create_master_com_achieve', 11),
(23, '2021_12_10_190543_create_mstr_les_achievements', 12),
(24, '2021_12_10_190610_create_mstr_com_achievements', 12),
(25, '2021_12_10_192201_create_user_badges', 13);

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
-- Table structure for table `userachievements`
--

CREATE TABLE `userachievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` smallint(6) NOT NULL,
  `achievement_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userachievements`
--

INSERT INTO `userachievements` (`id`, `user_id`, `type`, `achievement_name`, `created_on`) VALUES
(1, 1, 1, 'First Lesson Watched', '2021-12-10 19:43:39'),
(2, 1, 1, '5 Lessons Watched', '2021-12-10 19:44:09'),
(3, 1, 2, 'First Comment Written', '2021-12-10 19:44:26'),
(4, 1, 2, '3 Comments Written', '2021-12-10 19:44:38'),
(5, 1, 1, '10 Lessons Watched', '2021-12-10 19:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `userbadges`
--

CREATE TABLE `userbadges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `badge_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userbadges`
--

INSERT INTO `userbadges` (`id`, `user_id`, `badge_id`, `created_on`) VALUES
(1, 1, 1, '2021-12-10 19:43:39'),
(2, 1, 2, '2021-12-10 19:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'john@yopmail.com', NULL, '', NULL, '2021-12-10 07:18:46', '2021-12-10 07:18:46'),
(2, 'Scott', 'scott@yopmail.com', NULL, '', NULL, '2021-12-10 07:18:46', '2021-12-10 07:18:46'),
(3, 'Damon', 'damon@yopmail.com', NULL, '', NULL, '2021-12-10 07:18:46', '2021-12-10 07:18:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_user`
--
ALTER TABLE `lesson_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_user_user_id_foreign` (`user_id`),
  ADD KEY `lesson_user_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `master_badges`
--
ALTER TABLE `master_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_comment_achievements`
--
ALTER TABLE `master_comment_achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_lesson_achievements`
--
ALTER TABLE `master_lesson_achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `userachievements`
--
ALTER TABLE `userachievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userachievements_user_id_foreign` (`user_id`);

--
-- Indexes for table `userbadges`
--
ALTER TABLE `userbadges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userbadges_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `lesson_user`
--
ALTER TABLE `lesson_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `master_badges`
--
ALTER TABLE `master_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_comment_achievements`
--
ALTER TABLE `master_comment_achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_lesson_achievements`
--
ALTER TABLE `master_lesson_achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userachievements`
--
ALTER TABLE `userachievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userbadges`
--
ALTER TABLE `userbadges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lesson_user`
--
ALTER TABLE `lesson_user`
  ADD CONSTRAINT `lesson_user_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  ADD CONSTRAINT `lesson_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userachievements`
--
ALTER TABLE `userachievements`
  ADD CONSTRAINT `userachievements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userbadges`
--
ALTER TABLE `userbadges`
  ADD CONSTRAINT `userbadges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
