-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 03:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_manager_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Raymart', 'Magallanes', 'marjunmmagallanes@gmail.com', '09506653665', 'Sitio Licuan, Poblacion, Sagbayan, Bohol', '2024-10-08 04:34:41', '2024-10-08 04:34:41'),
(3, 'James', 'Doydoy', 'doydoyjames@gmail.com', '09456971573', 'Danao, Bohol', '2024-10-08 06:17:31', '2024-10-12 04:33:17'),
(7, 'Marjun', 'Magallanes', 'marjunmagallanes27@gmail.com', '09305408298', 'Sitio Licuan, Poblacion, Sagbayan, Bohol', '2024-10-12 04:21:11', '2024-10-12 04:21:11'),
(8, 'Fanny', 'White', 'litzy.dare@example.com', '+1 (706) 277-9428', '90882 Amparo Run\nKihnborough, LA 68296', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(9, 'Maribel', 'Sipes', 'lempi26@example.com', '1-475-884-1486', '40117 Francisca Plains Apt. 845\nPort Deannafurt, ND 18570', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(10, 'Clarabelle', 'Treutel', 'jarrod12@example.net', '+1-725-377-9394', '43623 Senger Locks\nBahringerview, IA 96899', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(11, 'Brice', 'Kris', 'dereck.bechtelar@example.com', '219.582.1174', '551 Osinski Summit Suite 755\nPort Rosa, NJ 52943-2898', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(12, 'Josianne', 'Halvorson', 'lgoldner@example.com', '607.255.0969', '6297 Jennie Shore Suite 578\nNicolasland, MA 76446', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(13, 'Gabe', 'Walker', 'dewitt22@example.org', '(214) 695-5333', '5093 Stamm Curve Apt. 861\nGloverland, CO 41708-8187', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(14, 'Beryl', 'Lueilwitz', 'shanahan.isaiah@example.net', '608-272-1842', '58145 Hagenes Trace Suite 044\nPort Leonehaven, WY 49391', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(15, 'Krista', 'Champlin', 'lionel.armstrong@example.org', '(747) 694-3573', '524 Vandervort Walk\nOberbrunnerberg, IL 42520-0978', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(16, 'Stanton', 'Willms', 'madie16@example.org', '+13208146440', '12368 Amos Divide Apt. 337\nEmelymouth, AZ 94756-9737', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(17, 'Emely', 'Bergstrom', 'dickinson.johnny@example.net', '928-386-8914', '708 Emard Camp\nTheronbury, AL 20475', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(18, 'Burdette', 'Ankunding', 'morton70@example.org', '(458) 945-7333', '7645 Mante Plains\nSouth Brainview, AR 00260-8418', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(19, 'Adriel', 'Boyle', 'suzanne.stamm@example.net', '+14122957609', '890 Koelpin Park Suite 024\nLueilwitzmouth, WA 10167', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(20, 'Roberta', 'Kuvalis', 'neal.senger@example.com', '(704) 447-0668', '95970 Hillary Pike Apt. 723\nIvytown, SD 51774-5612', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(21, 'Adrianna', 'Block', 'hills.roderick@example.org', '1-847-326-8660', '496 Leffler Turnpike Suite 409\nBrekketown, TX 02203', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(22, 'Ofelia', 'Schultz', 'xleuschke@example.net', '1-539-328-6785', '62293 Ron Mountain\nLake Ralph, NH 69612-3129', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(23, 'Jamir', 'Turner', 'geoffrey.gibson@example.net', '+1-573-677-7900', '406 Quentin Garden\nNorth Shana, PA 02952', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(24, 'Daphnee', 'Aufderhar', 'cory04@example.net', '+1.667.304.8317', '791 Kirlin Village\nWest Corbinburgh, NY 47336-5365', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(25, 'Dan', 'Durgan', 'jude.brakus@example.net', '765.619.7834', '8578 Turner Trail\nEzraport, CA 47608', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(26, 'Orlando', 'Lockman', 'srunolfsdottir@example.net', '+1-430-336-1686', '962 Effertz Freeway Apt. 686\nNew Vitaton, VT 58166-2709', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(27, 'Santino', 'Stamm', 'nkeeling@example.net', '+1 (754) 799-4892', '645 Amelia Mill\nCreminport, MA 96426', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(28, 'Turner', 'Abernathy', 'miller.littel@example.net', '1-831-637-4786', '87092 Oma Gateway\nLesliefurt, NM 96473', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(29, 'Ilene', 'Abshire', 'rzulauf@example.net', '458.734.0379', '71829 Adams Courts Apt. 857\nKatrineside, PA 18391', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(30, 'Jay', 'Moen', 'dario49@example.org', '512.721.1246', '235 Kerluke Plaza Apt. 097\nNorth Rodrigo, IA 79059-4620', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(31, 'Cynthia', 'Koch', 'brionna34@example.net', '272.719.9839', '201 Rutherford Ranch Suite 208\nNew Madge, ME 24066', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(32, 'Evangeline', 'Nitzsche', 'dell.mraz@example.net', '+1.386.854.4374', '82716 Gussie Coves Apt. 968\nNew Saulstad, MT 43184', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(33, 'Kiana', 'Konopelski', 'ktorphy@example.com', '+17088083654', '36026 Kathlyn Light Suite 114\nVandervortside, CT 28163-1584', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(34, 'Elmo', 'Rippin', 'stiedemann.glen@example.net', '986.540.1082', '21304 McCullough Bridge Suite 799\nBernierport, IL 52714-0940', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(35, 'Dorian', 'Gerlach', 'chauncey54@example.net', '1-412-628-4443', '4738 Sonny Loop Apt. 149\nNew Luciousfurt, KY 26245-3122', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(36, 'Sage', 'Jakubowski', 'gerlach.allan@example.net', '(915) 848-5014', '28206 Isaias Green\nSouth Cody, LA 83161-7145', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(37, 'Aiyana', 'Swift', 'aurelie59@example.org', '+1 (779) 760-8516', '775 Bergstrom Plains\nHoldenton, IA 49001', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(38, 'Molly', 'O\'Connell', 'sgreen@example.org', '1-770-524-9385', '106 Israel Canyon\nPaucekbury, ME 37877-9098', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(39, 'Jarvis', 'Carroll', 'qtreutel@example.com', '702.734.4182', '28169 Dessie Prairie Apt. 383\nEast Caleb, UT 17605-9483', '2024-10-14 02:31:16', '2024-10-14 02:31:16'),
(40, 'Antonette', 'Lebsack', 'mckenzie.juanita@example.net', '689.873.2108', '228 Durgan Villages\nUbaldomouth, NE 29965', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(41, 'Ilene', 'Keeling', 'mac23@example.org', '1-240-292-1571', '10669 Nader Mills Apt. 379\nMacejkovicbury, NY 84409-7371', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(42, 'Xander', 'Hane', 'madilyn.wiza@example.net', '1-726-475-7649', '63197 Lura Rapids\nEast Tad, CT 51269-4040', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(43, 'Pamela', 'Lebsack', 'beau56@example.org', '336-828-4891', '7103 Morissette Course\nAbbottburgh, HI 77344', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(44, 'Pascale', 'Mayert', 'jermaine44@example.net', '551.373.4050', '7577 Runolfsdottir Tunnel\nEast Giuseppe, MO 28540-4781', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(45, 'Hermina', 'Gutkowski', 'ciara.morissette@example.org', '856-681-4260', '989 Balistreri Overpass Apt. 872\nTessieburgh, DE 91561', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(46, 'Ellen', 'Dibbert', 'shawn.mckenzie@example.net', '458-364-5895', '3478 Harber Courts Suite 672\nStehrville, OK 98148', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(47, 'Lloyd', 'Moen', 'rozella.ebert@example.org', '+1.283.567.8344', '685 Gloria Stream Apt. 065\nRodolfomouth, GA 70028', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(48, 'Kaitlyn', 'Bauch', 'xgleichner@example.net', '(347) 812-8583', '76088 Feil Trail\nHirthehaven, NC 86221', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(49, 'Wilfred', 'Schinner', 'wisoky.cale@example.com', '+15516015738', '11438 Miller Garden\nRunolfsdottirstad, OK 98442-5981', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(50, 'Melba', 'Brakus', 'mayer.trey@example.net', '1-773-586-7252', '277 Stanton Mall Suite 257\r\nEmilioborough, SC 91432', '2024-10-14 02:31:17', '2024-11-18 18:59:25'),
(51, 'Cleta', 'Mayer', 'corwin.sienna@example.net', '740.574.8653', '25197 Kiarra Forge Suite 617\nWest Nadiaburgh, DC 08079-3724', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(53, 'Raphael', 'Von', 'jconsidine@example.net', '(830) 552-9295', '85597 Lillie Expressway Suite 147\nEast Cornellstad, NJ 17647-6598', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(54, 'Victoria', 'Morissette', 'vwalter@example.net', '262-840-3011', '37831 Christophe Ville\nLoniechester, OK 47830', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(55, 'Eva', 'Franecki', 'nhaley@example.com', '341.472.0626', '516 Lemke Trace Suite 525\nNorth Hilda, NH 87190', '2024-10-14 02:31:17', '2024-10-14 02:31:17'),
(57, 'Vinnie', 'Stoltenberg', 'ykuhlman@example.org', '586.213.3874', '37814 Axel River\nChanellefurt, MS 24549', '2024-10-14 02:31:17', '2024-10-14 02:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2024_10_08_095018_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6Ibds95HRvLViGd8D9PPqx6Iufy9K3yYVNwxnnwv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFlhMUVTc2QyQ1NuN0dOeDNwZ05wZ1o4WTBQQW93UDhza2pOZTZwZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1733038805),
('8oajhm1YoOjhTBIwV9VcVfWBD7P9TInGQbUpa8M3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVdwOEZKS2ZLSkFWanF5QVhPMlI0R0NoWlJZRDNNTGlrWllwNzl6TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731985165),
('KA7owGl46BkroGi0UwoXLQQazmMu7AlbLEcQJxBS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2hvWFkzZlgyZU1ocm5ZSE50TVZ0NWRmYUJoSGMxQmIyckdjbHJKNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732590665);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-10-14 02:31:16', '$2y$12$9WYAVOB2aGsj7FK07SclK./7uB4Dn6tXAqnUSmtY9cXlFuHOVf822', 'RtNrPuIDKG', '2024-10-14 02:31:16', '2024-10-14 02:31:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
