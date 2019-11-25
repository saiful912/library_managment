-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2019 at 09:08 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authId` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noOfBooksAvail` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bookId` int(10) UNSIGNED NOT NULL,
  `bookTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` int(10) UNSIGNED NOT NULL,
  `authId` int(10) UNSIGNED NOT NULL,
  `catId` int(10) UNSIGNED NOT NULL,
  `totalAvail` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `totalIss` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books_categories`
--

CREATE TABLE `books_categories` (
  `catId` int(10) UNSIGNED NOT NULL,
  `catName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_categories`
--

INSERT INTO `books_categories` (`catId`, `catName`) VALUES
(1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `memName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `cnic` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `dept` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `memType` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regNo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `picLink` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `created_at`, `updated_at`, `memName`, `email`, `contact`, `cnic`, `address`, `dept`, `memType`, `password`, `regNo`, `picLink`) VALUES
(1, '2019-11-23 05:10:24', '2019-11-23 05:10:24', 'Mahbubur Rahman', 'mahbub.095@gmail.com', '01671816194', 'ABCD', 'Dhaka', 'CSE', 'Student', '12345678', 'null', 'null'),
(2, '2019-11-23 05:35:00', '2019-11-23 05:35:00', 'saiful', 'mahbub.0095@gmail.com', '01671816199', 'sdfg', 'mirpur', 'cse', 'Student', '12345678', 'null', 'null'),
(3, '2019-11-23 10:09:52', '2019-11-23 10:09:52', 'Saiful Islam', 'saiful@gmail.com', 'sdakjgh', 'asdf', 'asdf', 'asdf', 'Student', '123456', 'null', 'null');

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
(3, '2019_11_22_050450_create_books_categories_table', 1),
(4, '2019_11_22_100910_create_authors_table', 1),
(5, '2019_11_22_111049_create_books_table', 1),
(6, '2019_11_22_175006_create_members_table', 1);

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
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `bookname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookissueid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` datetime NOT NULL,
  `retDate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `member_id`, `bookname`, `bookissueid`, `issueDate`, `retDate`, `created_at`, `updated_at`) VALUES
(1, 2, 'safkhj', '24332', '2019-01-01 00:00:00', '2020-10-02 00:00:00', '2019-11-24 09:07:24', '2019-11-24 09:07:24'),
(2, 1, 'Locus', 'sd1234', '2019-12-31 00:00:00', '2020-12-31 00:00:00', '2019-11-24 09:15:09', '2019-11-24 09:15:09');

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
(1, 'Mahbubur Rahman', 'mahbub.095@gmail.com', NULL, '$2y$10$k51HQmcXfvJAZeNupKXWd.P2XLJQ0.aTW3qG2/YUuT38nq39aAdvm', NULL, '2019-11-23 05:09:48', '2019-11-23 05:09:48'),
(2, 'Saiful Islam', 'saiful@gmail.com', NULL, '$2y$10$Cd5KSvW9x43I4uxmh9I0S.N.51n2ZlCQ0Il0M.1Sk5KaF68U8UHp6', NULL, '2019-11-23 09:08:31', '2019-11-23 09:08:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`),
  ADD KEY `books_catid_foreign` (`catId`),
  ADD KEY `books_authid_foreign` (`authId`);

--
-- Indexes for table `books_categories`
--
ALTER TABLE `books_categories`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

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
-- Indexes for table `stories`
--
ALTER TABLE `stories`
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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books_categories`
--
ALTER TABLE `books_categories`
  MODIFY `catId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_authid_foreign` FOREIGN KEY (`authId`) REFERENCES `authors` (`authId`),
  ADD CONSTRAINT `books_catid_foreign` FOREIGN KEY (`catId`) REFERENCES `books_categories` (`catId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
