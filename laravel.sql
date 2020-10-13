-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 09:30 AM
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
-- Database: `laravel`
--

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_08_12_085024_create_tasks_table', 1);

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `uid`, `uname`, `title`, `detail`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 'seema@123', 'todolist', 'form insert', '2020-08-12', '2020-08-12 09:24:31', '2020-08-12 09:24:31'),
(2, 2, 'prasad@123', 'Extc', 'Manager', '2020-08-14', '2020-08-12 09:26:39', '2020-08-12 09:26:39'),
(3, 2, 'prasad@123', 'mech', 'Production', '2020-08-15', '2020-08-12 09:27:19', '2020-08-12 09:27:19'),
(8, 5, 'mina@123', 'project', 'auth-todolist', '2020-08-18', '2020-08-18 02:39:59', '2020-08-18 17:00:36'),
(9, 5, 'mina@123', 'project', 'seema', '2020-08-13', '2020-08-18 02:40:33', '2020-08-19 02:23:31'),
(11, 4, 'chetan@123', 'project', 'userlaravel', '2020-08-11', '2020-08-18 03:01:06', '2020-08-18 03:01:06'),
(14, 3, 'bharambe.seema2@gmail.com', 'project', 'todolist', '2020-08-10', '2020-08-18 03:11:48', '2020-08-18 03:11:48'),
(15, 3, 'bharambe.seema2@gmail.com', 'projecdt', 'laravel-auth', '2020-08-18', '2020-08-18 03:13:35', '2020-08-18 03:13:35'),
(20, 3, 'bharambe.seema2@gmail.com', 'mp', 'project', '2020-08-17', '2020-08-18 03:45:07', '2020-08-18 03:45:07'),
(21, 3, 'bharambe.seema2@gmail.com', 'project', 'json laravel', '2020-08-04', '2020-08-18 03:50:53', '2020-08-18 03:50:53'),
(23, 5, 'mina@123', 'project', 'json laravel', '2020-08-21', '2020-08-19 02:23:44', '2020-08-21 23:12:52'),
(24, 6, 'seema@gmail.com', 'video lecture', 'json laravel', '2020-10-12', '2020-10-12 09:34:20', '2020-10-12 09:34:20'),
(25, 6, 'seema@gmail.com', 'project', 'todolist', '2020-10-13', '2020-10-12 09:34:38', '2020-10-12 09:34:38');

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
(1, 'seema', 'seema@123', NULL, '$2y$10$OJccGDbrICnO9/gWc4xqmeGdbBDgs9JV6uLObW2e0YEuFBqmF1GpW', NULL, '2020-08-12 07:17:36', '2020-08-12 07:17:36'),
(2, 'prasad', 'prasad@123', NULL, '$2y$10$mvDcseOW.kyxJeb1J.yjGOMk7vSP0EVvzX9VWxdFPRyAOlCJkzs3i', NULL, '2020-08-12 09:26:16', '2020-08-12 09:26:16'),
(3, 'sharvi', 'bharambe.seema2@gmail.com', NULL, '$2y$10$myiDqCbHzKeJXf/vkV3eHeVbPm2Fs8aMOE4XSXQL8kiMql7duVNM6', 'zZTl5LR5NEHQAdJ2eQZELFHlTTjbD86O658XNuI7ye30c2LzZ9fs7oRbpGN3', '2020-08-17 00:32:57', '2020-08-17 00:32:57'),
(4, 'chetan', 'chetan@123', NULL, '$2y$10$rU5oDKER4bCjuoRpE1qhPO3Tpjumil3HWVmrfzvZYq6HBjCajATk.', NULL, '2020-08-18 02:15:15', '2020-08-18 02:15:15'),
(5, 'mina', 'mina@123', NULL, '$2y$10$jJbB.q/EfHncvu7LdPbwTOZXMOJVkDNFw5gN1ySV8plof8SIpL1LO', NULL, '2020-08-18 02:22:26', '2020-08-18 02:22:26'),
(6, 'seema', 'seema@gmail.com', NULL, '$2y$10$Vw997iPbOMKerhggGEhXoOQoUHhHV5J.io3uqAvqT6BAhrrgluORS', NULL, '2020-10-12 09:33:59', '2020-10-12 09:33:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
