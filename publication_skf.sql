-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 19, 2023 at 04:14 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publication_skf`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'short_about',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `type`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'short_about', 'Publication is a leading book shop in Bangladesh. We offer thousands of islamic, general and academic books at a discounted price. We provide good packaging with low shipping cost all over the Bangladesh.', NULL, '16555889783339', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 'long_about', '\n                <p>\n                    Best publications is a dynamic and innovative publication that aims to inspire, educate, and entertain readers of all ages and interests. With a diverse range of topics and a commitment to excellence, Best publications offers a wide array of content including books, magazines, articles, and digital media.\n                    <br>\n\n                    At Best publications, we are passionate about literature, knowledge, and the power of storytelling. Our team of experienced writers, editors, and researchers diligently curates and creates engaging content that captivates readers from different walks of life.\n                    <br>\n\n                    Whether you are a bookworm seeking literary treasures, a student in search of academic resources, a tech enthusiast craving the latest gadgets, or someone looking for insightful articles on various subjects, Best publications has something for everyone.\n                    <br>\n\n                    We take pride in fostering a vibrant community where readers can connect, share ideas, and engage in meaningful discussions. Through our online platform and social media channels, we encourage interaction, feedback, and collaboration among our readers and authors.\n                    <br>\n\n                    Best publications also collaborates with renowned authors, experts, and thought leaders to bring exclusive interviews, thought-provoking essays, and expert opinions to our readers. We strive to be a trusted source of information and inspiration, empowering our readers to explore new horizons and broaden their perspectives.\n                    <br>\n\n                    Whether you prefer the tactile experience of flipping through the pages of a book or the convenience of digital reading, Best publications offers a seamless and user-friendly reading experience across multiple platforms.\n                    <br>\n\n                    Join us on a literary adventure, as Best publications opens the doors to a world of knowledge, imagination, and inspiration. Together, let\'s embark on a journey of discovery and lifelong learning.\n                    <br>\n                </p>\n            ', NULL, '2655588978435e', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `accountant_vendors`
--

CREATE TABLE `accountant_vendors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accountant_vendors`
--

INSERT INTO `accountant_vendors` (`id`, `name`, `email`, `image`, `address`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Al kawser', 'Abdul Jabber@example.com', 'avatar.png', NULL, NULL, '655588926e956', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 'Al Nasba', 'Al kawser@yahoo.com', 'avatar.png', NULL, NULL, '655588926f7b6', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 'BM Voucher Jama', 'Upaher Galary@yahoo.com', 'avatar.png', NULL, NULL, '6555889270030', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 'Gardian', 'Al Nasba@hotmail.com', 'avatar.png', NULL, NULL, '6555889270678', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 'Mustafig treders', 'BM Voucher Jama@gmail.com', 'avatar.png', NULL, NULL, '6555889270c55', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 'Abdul Jabber', 'Universel treders@example.com', 'avatar.png', NULL, NULL, '655588927154e', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 'Universel treders', 'Suganda@example.com', 'avatar.png', NULL, NULL, '6555889271b86', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(8, 'Suganda', 'Al Nasba@hotmail.com', 'avatar.png', NULL, NULL, '65558892724c5', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(9, 'Sashas', 'Upaher Galary@gmail.com', 'avatar.png', NULL, NULL, '6555889272a63', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(10, 'Upaher Galary', 'Upaher Galary@example.com', 'avatar.png', NULL, NULL, '65558892732f8', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `type`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cash', NULL, NULL, 'cash', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(2, 'bank_account', NULL, NULL, 'bank-account', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(3, 'bkash', NULL, NULL, 'bkash', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(4, 'nagad', NULL, NULL, 'nagad', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(5, 'rocket', NULL, NULL, 'rocket', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `account_categories`
--

CREATE TABLE `account_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'expenses',
  `type_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'assets, capital, expense, liability, Equity',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'description about category',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_categories`
--

INSERT INTO `account_categories` (`id`, `title`, `type_id`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'পণ্য বিক্রি আয়', '1', NULL, NULL, 'pnz-bikri-ay', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 'সাধারণ প্রকাশনার বই বিক্রি', '1', NULL, NULL, 'sadharn-prkasnar-bi-bikri', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(3, 'বকেয়া আদায়', '1', NULL, NULL, 'bkeya-aday', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, 'বুকসেট', '1', NULL, NULL, 'bukset', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, 'স্কুল সেটের বই বিক্রি', '1', NULL, NULL, 'skul-seter-bi-bikri', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(6, 'সাইন্স সিরিজ', '1', NULL, NULL, 'sains-sirij', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(7, 'সৈজন্য', '1', NULL, NULL, 'soijnz', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(8, 'বিএম থেকে আয়', '1', NULL, NULL, 'biem-theke-ay', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(9, 'নববর্ষ বাবদ', '1', NULL, NULL, 'nbbrsh-babd', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(10, 'ফ্লাট আয়', '1', NULL, NULL, 'flat-ay', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(11, 'মওকুফ', '1', NULL, NULL, 'mookuf', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(12, 'বিশেষ আয়', '1', NULL, NULL, 'bisesh-ay', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(13, 'বমজান ক্যালেন্ডার', '1', NULL, NULL, 'bmjan-kzalendar', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(14, 'ঘাটতি', '1', NULL, NULL, 'ghatti', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(15, 'ভুর্তুকি', '1', NULL, NULL, 'vurtuki', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(16, 'ঈদ কার্ড', '1', NULL, NULL, 'eed-kard', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(17, 'ব্যাঙ্ক জমার মাধ্যমে আয়', '1', NULL, NULL, 'bzank-jmar-madhzme-ay', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(18, 'অগ্রিম আয়', '1', NULL, NULL, 'ogrim-ay', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(19, 'এককালীন', '1', NULL, NULL, 'ekkaleen', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(20, 'টি-শার্ট', '1', NULL, NULL, 'ti-sart', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(21, 'কুরআন', '1', NULL, NULL, 'kuran', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(22, 'ওপেন-বুক', '1', NULL, NULL, 'oopen-buk', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(23, 'কাগজ ক্রয়', '2', NULL, NULL, 'kagj-kry', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(24, 'বাইন্ডিং', '2', NULL, NULL, 'bainding', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(25, 'প্রিন্টিং ও ছাপা বিল', '2', NULL, NULL, 'printing-oo-chapa-bil', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(26, 'উৎপাদন ব্যয়', '2', NULL, NULL, 'uttpadn-bzy', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(27, 'বুকসেট ক্রয়', '2', NULL, NULL, 'bukset-kry', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(28, 'সিলেবাসের বই ক্রয় বাবদ', '2', NULL, NULL, 'silebaser-bi-kry-babd', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(29, 'স্কুল সেট বাবদ', '2', NULL, NULL, 'skul-set-babd', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(30, 'সাইন্স সিরিজ / কুরআন বিতরণ', '2', NULL, NULL, 'sains-sirij-kuran-bitrn', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(31, 'যাতায়াত', '2', NULL, NULL, 'zatayat', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(32, 'আপ্যায়ন', '2', NULL, NULL, 'apzayn', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(33, 'মোবাইল রিচার্জ', '2', NULL, NULL, 'mobail-ricarj', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(34, 'পরিবহন খরচ', '2', NULL, NULL, 'pribhn-khrc', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(35, 'অফিস স্টেশনারী', '2', NULL, NULL, 'ofis-stesnaree', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(36, 'মাসিক বেতন', '2', NULL, NULL, 'masik-betn', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(37, 'সৈজন্য প্রদান', '2', NULL, NULL, 'soijnz-prdan', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(38, 'অফিস ভাড়া', '2', NULL, NULL, 'ofis-vara', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(39, 'গোডাউন ভাড়া', '2', NULL, NULL, 'godaun-vara', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(40, 'ইন্টারনেট বিল (সংযোগসহ)', '2', NULL, NULL, 'intarnet-bil-sngzogsh', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(41, 'অফিস/গোডাউন জামানত বাবদ', '2', NULL, NULL, 'ofisgodaun-jamant-babd', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(42, 'ট্রেড লাইসেন্স', '2', NULL, NULL, 'tred-laisens', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(43, 'সৈজন্য', '2', NULL, NULL, 'soijnz', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(44, 'মওকুফ', '2', NULL, NULL, 'mookuf', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(45, 'বস্তা ক্রয় / কাটুন বিল', '2', NULL, NULL, 'bsta-kry-katun-bil', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(46, 'পত্রিকা বিল', '2', NULL, NULL, 'ptrika-bil', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(47, 'সম্পদ ক্রয়', '2', NULL, NULL, 'smpd-kry', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(48, 'মোবাইল ক্রয়', '2', NULL, NULL, 'mobail-kry', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(49, 'পানি বিল', '2', NULL, NULL, 'pani-bil', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(50, 'বিবিদ', '2', NULL, NULL, 'bibid', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(51, 'এককালিন', '2', NULL, NULL, 'ekkalin', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(52, 'ঈদ সামগ্রি', '2', NULL, NULL, 'eed-samgri', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(53, 'মাল ফেরত', '2', NULL, NULL, 'mal-fert', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(54, 'ব্যাংক কর্তন', '2', NULL, NULL, 'bzangk-krtn', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(55, 'বিএমকে বিভিন্ন সময় প্রদান', '2', NULL, NULL, 'biemke-bivinn-smy-prdan', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(56, 'বিএমকে মুনাফা প্রদান', '2', NULL, NULL, 'biemke-munafa-prdan', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(57, 'বিশেষ ব্যয়', '2', NULL, NULL, 'bisesh-bzy', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(58, 'চিকিৎসা বাবদ', '2', NULL, NULL, 'cikittsa-babd', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(59, 'ফ্ল্যাট বাবদ খরচ', '2', NULL, NULL, 'flzat-babd-khrc', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(60, 'রমজান ক্যালেন্ডার', '2', NULL, NULL, 'rmjan-kzalendar', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(61, 'রমজান প্যাকেজ', '2', NULL, NULL, 'rmjan-pzakej', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(62, 'নসিহত', '2', NULL, NULL, 'nsiht', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(63, 'আহবান', '2', NULL, NULL, 'ahban', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(64, 'নববর্ষ উদ্ভোদন', '2', NULL, NULL, 'nbbrsh-udvodn', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(65, 'নববর্ষ অনুষ্ঠান', '2', NULL, NULL, 'nbbrsh-onushthan', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(66, '৩ পাতা ক্যালেন্ডার', '2', NULL, NULL, '3-pata-kzalendar', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(67, '১ পাতা বড় ক্যালেন্ডার', '2', NULL, NULL, '1-pata-br-kzalendar', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(68, '১ পাতা ছোট ক্যালেন্ডার', '2', NULL, NULL, '1-pata-chot-kzalendar', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(69, 'মাঝারী ডায়েরী', '2', NULL, NULL, 'majharee-dayeree', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(70, 'ইংরেজী ডায়েরী', '2', NULL, NULL, 'ingrejee-dayeree', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(71, 'বাংলা ডায়েরী', '2', NULL, NULL, 'bangla-dayeree', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(72, 'পকেট ডায়েরী', '2', NULL, NULL, 'pket-dayeree', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(73, 'ডেক্স ক্যালেন্ডার', '2', NULL, NULL, 'deks-kzalendar', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(74, 'ছোট ডায়েরী (পকেট)', '2', NULL, NULL, 'chot-dayeree-pket', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(75, 'ব্যংক নগদ জমার মাধ্যমে', '2', NULL, NULL, 'bzngk-ngd-jmar-madhzme', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(76, 'ভি আই পি ডায়েরী', '2', NULL, NULL, 'vi-ai-pi-dayeree', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(77, 'ঘাটতি', '2', NULL, NULL, 'ghatti', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(78, 'মেরামত', '2', NULL, NULL, 'meramt', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(79, 'নববর্ষ', '2', NULL, NULL, 'nbbrsh', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(80, 'সম্পদ ক্রয়', '2', NULL, NULL, 'smpd-kry', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(81, 'ডেকরেশন', '2', NULL, NULL, 'dekresn', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(82, 'ঋণ পরিশোধ', '2', NULL, NULL, 'rrin-prisodh', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(83, 'ভি আই পি ব্যাগ', '2', NULL, NULL, 'vi-ai-pi-bzag', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `account_category_types`
--

CREATE TABLE `account_category_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'asset, capital, expense, liability, withdrawal',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_category_types`
--

INSERT INTO `account_category_types` (`id`, `name`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'আয়', NULL, 'ay', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 'ব্যয়', NULL, 'bzy', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `account_customers`
--

CREATE TABLE `account_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_customers`
--

INSERT INTO `account_customers` (`id`, `name`, `email`, `phone_number`, `address`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Parvej', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 'Ahmed Rokom', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(3, 'Sompadok', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, 'Sahin', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, 'Selim', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `account_logs`
--

CREATE TABLE `account_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `account_id` bigint NOT NULL DEFAULT '1',
  `account_number_id` bigint DEFAULT NULL,
  `trx_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_expense` tinyint NOT NULL DEFAULT '0',
  `is_income` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_logs`
--

INSERT INTO `account_logs` (`id`, `date`, `name`, `customer_id`, `amount`, `category_id`, `account_id`, `account_number_id`, `trx_id`, `receipt_no`, `is_expense`, `is_income`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-11-12 18:00:00', 'mr accountant', NULL, 21185.00, 1, 3, 1, NULL, '7270431', 0, 1, 'order payment received by admin', NULL, 'mr-accountant', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, '2023-11-13 18:00:00', 'mr accountant', NULL, 25611.00, 1, 2, 11, NULL, '1647623', 0, 1, 'order payment received by admin', NULL, 'mr-accountant', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(3, '2023-11-10 18:00:00', 'mr accountant', NULL, 26041.00, 1, 3, 3, NULL, '8694948', 0, 1, 'order payment received by admin', NULL, 'mr-accountant', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, '2023-11-14 18:00:00', 'mr accountant', NULL, 17746.00, 1, 5, 8, NULL, '1910887', 0, 1, 'order payment received by admin', NULL, 'mr-accountant', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, '2023-11-11 18:00:00', 'mr accountant', NULL, 24368.00, 1, 4, 6, NULL, '2766526', 0, 1, 'order payment received by admin', NULL, 'mr-accountant', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(6, '2023-11-12 18:00:00', 'mr accountant', NULL, 27462.00, 1, 3, 1, NULL, '8832100', 0, 1, 'order payment received by admin', NULL, 'mr-accountant', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(7, '2023-11-10 18:00:00', 'mr accountant', NULL, 14252.00, 1, 3, 2, NULL, '2054501', 0, 1, 'order payment received by admin', NULL, 'mr-accountant', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(8, '2023-11-13 18:00:00', 'mr branch1', NULL, 33358.00, 1, 2, 10, NULL, '6994016', 0, 1, 'order payment received by admin', NULL, 'mr-branch1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(9, '2023-11-14 18:00:00', 'mr branch1', NULL, 27321.00, 1, 3, 3, NULL, '2003409', 0, 1, 'order payment received by admin', NULL, 'mr-branch1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(10, '2023-11-14 18:00:00', 'mr branch1', NULL, 17793.00, 1, 5, 9, NULL, '2112191', 0, 1, 'order payment received by admin', NULL, 'mr-branch1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(11, '2023-11-13 18:00:00', 'mr branch2', NULL, 30614.00, 1, 3, 2, NULL, '1764112', 0, 1, 'order payment received by admin', NULL, 'mr-branch2', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(12, '2023-11-12 18:00:00', 'mr branch2', NULL, 29715.00, 1, 2, 12, NULL, '3253841', 0, 1, 'order payment received by admin', NULL, 'mr-branch2', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(13, '2023-11-13 18:00:00', 'mr branch2', NULL, 20424.00, 1, 2, 11, NULL, '7451135', 0, 1, 'order payment received by admin', NULL, 'mr-branch2', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(14, '2023-11-13 18:00:00', 'mr branch2', NULL, 21566.00, 1, 5, 7, NULL, '5284989', 0, 1, 'order payment received by admin', NULL, 'mr-branch2', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(15, '2023-11-10 18:00:00', 'mr branch2', NULL, 27377.00, 1, 3, 2, NULL, '3494101', 0, 1, 'order payment received by admin', NULL, 'mr-branch2', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(16, '2023-05-14 18:00:00', 'Al kawser', NULL, 201.00, 2, 4, 5, NULL, '6321590', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(17, '2023-03-08 18:00:00', 'Al Nasba', NULL, 397.00, 2, 5, 8, NULL, '7879811', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(18, '2023-09-16 18:00:00', 'BM Voucher Jama', NULL, 925.00, 2, 2, 12, NULL, '2527038', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(19, '2023-12-08 18:00:00', 'Gardian', NULL, 435.00, 2, 5, 7, NULL, '3066244', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(20, '2023-11-17 18:00:00', 'Mustafig treders', NULL, 721.00, 2, 4, 5, NULL, '4542217', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(21, '2023-05-03 18:00:00', 'Al kawser', NULL, 731.00, 3, 2, 10, NULL, '7842771', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(22, '2023-06-08 18:00:00', 'Al Nasba', NULL, 954.00, 3, 4, 4, NULL, '2608971', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(23, '2023-01-12 18:00:00', 'BM Voucher Jama', NULL, 615.00, 3, 3, 3, NULL, '2355793', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(24, '2023-12-21 18:00:00', 'Gardian', NULL, 286.00, 3, 2, 11, NULL, '7551410', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(25, '2023-01-31 18:00:00', 'Mustafig treders', NULL, 381.00, 3, 2, 10, NULL, '8804046', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(26, '2023-06-05 18:00:00', 'Al kawser', NULL, 572.00, 4, 2, 12, NULL, '6119146', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(27, '2023-02-01 18:00:00', 'Al Nasba', NULL, 119.00, 4, 3, 3, NULL, '6685650', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(28, '2023-12-19 18:00:00', 'BM Voucher Jama', NULL, 338.00, 4, 2, 11, NULL, '2490331', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(29, '2023-03-17 18:00:00', 'Gardian', NULL, 260.00, 4, 2, 12, NULL, '1980003', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(30, '2023-08-08 18:00:00', 'Mustafig treders', NULL, 587.00, 4, 2, 10, NULL, '8402769', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(31, '2023-01-04 18:00:00', 'Al kawser', NULL, 670.00, 5, 4, 4, NULL, '2910444', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(32, '2023-03-17 18:00:00', 'Al Nasba', NULL, 116.00, 5, 4, 6, NULL, '6445144', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(33, '2023-03-06 18:00:00', 'BM Voucher Jama', NULL, 270.00, 5, 3, 1, NULL, '8865758', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(34, '2023-05-02 18:00:00', 'Gardian', NULL, 885.00, 5, 4, 5, NULL, '8251535', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(35, '2023-04-05 18:00:00', 'Mustafig treders', NULL, 997.00, 5, 3, 3, NULL, '2185335', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(36, '2023-04-20 18:00:00', 'Al kawser', NULL, 205.00, 6, 2, 12, NULL, '6041504', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(37, '2023-04-23 18:00:00', 'Al Nasba', NULL, 598.00, 6, 3, 2, NULL, '3969420', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(38, '2023-01-15 18:00:00', 'BM Voucher Jama', NULL, 834.00, 6, 3, 3, NULL, '1688368', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(39, '2023-05-02 18:00:00', 'Gardian', NULL, 624.00, 6, 2, 11, NULL, '3390353', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(40, '2023-02-28 18:00:00', 'Mustafig treders', NULL, 683.00, 6, 2, 11, NULL, '3923672', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(41, '2023-02-19 18:00:00', 'Al kawser', NULL, 445.00, 7, 5, 8, NULL, '7095088', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(42, '2023-05-01 18:00:00', 'Al Nasba', NULL, 770.00, 7, 3, 2, NULL, '4060584', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(43, '2023-06-16 18:00:00', 'BM Voucher Jama', NULL, 460.00, 7, 2, 10, NULL, '1441135', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(44, '2023-01-05 18:00:00', 'Gardian', NULL, 861.00, 7, 5, 9, NULL, '5839404', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(45, '2023-12-07 18:00:00', 'Mustafig treders', NULL, 729.00, 7, 4, 4, NULL, '6011733', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(46, '2023-07-22 18:00:00', 'Al kawser', NULL, 878.00, 8, 3, 3, NULL, '6876712', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(47, '2023-06-10 18:00:00', 'Al Nasba', NULL, 984.00, 8, 4, 5, NULL, '9871593', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(48, '2023-03-01 18:00:00', 'BM Voucher Jama', NULL, 692.00, 8, 5, 9, NULL, '7024560', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(49, '2023-10-24 18:00:00', 'Gardian', NULL, 303.00, 8, 3, 3, NULL, '4583681', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(50, '2023-03-06 18:00:00', 'Mustafig treders', NULL, 364.00, 8, 4, 4, NULL, '3827621', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(51, '2023-12-03 18:00:00', 'Al kawser', NULL, 205.00, 9, 5, 8, NULL, '3496239', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(52, '2023-01-05 18:00:00', 'Al Nasba', NULL, 748.00, 9, 4, 6, NULL, '2546397', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(53, '2023-05-22 18:00:00', 'BM Voucher Jama', NULL, 385.00, 9, 3, 2, NULL, '3861900', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(54, '2023-12-01 18:00:00', 'Gardian', NULL, 298.00, 9, 2, 10, NULL, '6546947', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(55, '2023-08-17 18:00:00', 'Mustafig treders', NULL, 220.00, 9, 4, 5, NULL, '8251218', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(56, '2023-06-05 18:00:00', 'Al kawser', NULL, 552.00, 10, 4, 6, NULL, '3973953', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(57, '2023-10-09 18:00:00', 'Al Nasba', NULL, 687.00, 10, 2, 11, NULL, '6126304', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(58, '2023-03-20 18:00:00', 'BM Voucher Jama', NULL, 390.00, 10, 2, 11, NULL, '5133102', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(59, '2023-01-08 18:00:00', 'Gardian', NULL, 903.00, 10, 2, 11, NULL, '6143160', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(60, '2023-04-19 18:00:00', 'Mustafig treders', NULL, 196.00, 10, 2, 10, NULL, '7162518', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(61, '2023-01-12 18:00:00', 'Al kawser', NULL, 555.00, 11, 4, 5, NULL, '4762052', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(62, '2023-02-19 18:00:00', 'Al Nasba', NULL, 920.00, 11, 3, 1, NULL, '8927952', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(63, '2023-06-06 18:00:00', 'BM Voucher Jama', NULL, 864.00, 11, 2, 10, NULL, '2039737', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(64, '2023-06-12 18:00:00', 'Gardian', NULL, 661.00, 11, 4, 6, NULL, '7298661', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(65, '2023-03-23 18:00:00', 'Mustafig treders', NULL, 294.00, 11, 4, 5, NULL, '1005252', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(66, '2023-02-20 18:00:00', 'Al kawser', NULL, 796.00, 12, 5, 7, NULL, '6575563', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(67, '2023-02-17 18:00:00', 'Al Nasba', NULL, 506.00, 12, 4, 6, NULL, '9674809', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(68, '2023-03-04 18:00:00', 'BM Voucher Jama', NULL, 584.00, 12, 4, 6, NULL, '1710467', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(69, '2023-09-19 18:00:00', 'Gardian', NULL, 245.00, 12, 4, 4, NULL, '4872274', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(70, '2023-07-10 18:00:00', 'Mustafig treders', NULL, 315.00, 12, 2, 12, NULL, '3305551', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(71, '2023-03-02 18:00:00', 'Al kawser', NULL, 565.00, 13, 5, 9, NULL, '2911004', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(72, '2023-10-18 18:00:00', 'Al Nasba', NULL, 878.00, 13, 5, 8, NULL, '1459674', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(73, '2023-02-08 18:00:00', 'BM Voucher Jama', NULL, 869.00, 13, 2, 10, NULL, '9451093', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(74, '2023-05-18 18:00:00', 'Gardian', NULL, 129.00, 13, 3, 1, NULL, '6676295', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(75, '2023-12-09 18:00:00', 'Mustafig treders', NULL, 584.00, 13, 4, 6, NULL, '2856776', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(76, '2023-09-01 18:00:00', 'Al kawser', NULL, 191.00, 14, 2, 11, NULL, '8457381', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(77, '2023-01-16 18:00:00', 'Al Nasba', NULL, 407.00, 14, 4, 6, NULL, '5446239', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(78, '2023-01-20 18:00:00', 'BM Voucher Jama', NULL, 596.00, 14, 5, 9, NULL, '1278369', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(79, '2023-01-08 18:00:00', 'Gardian', NULL, 773.00, 14, 4, 5, NULL, '5025274', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(80, '2023-07-20 18:00:00', 'Mustafig treders', NULL, 656.00, 14, 5, 8, NULL, '2696699', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(81, '2023-04-14 18:00:00', 'Al kawser', NULL, 711.00, 15, 4, 6, NULL, '9895863', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(82, '2023-12-12 18:00:00', 'Al Nasba', NULL, 800.00, 15, 4, 6, NULL, '1832625', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(83, '2023-01-02 18:00:00', 'BM Voucher Jama', NULL, 958.00, 15, 4, 6, NULL, '6663326', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(84, '2023-05-23 18:00:00', 'Gardian', NULL, 285.00, 15, 2, 11, NULL, '5957411', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(85, '2023-03-13 18:00:00', 'Mustafig treders', NULL, 769.00, 15, 2, 11, NULL, '4593172', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(86, '2023-09-21 18:00:00', 'Al kawser', NULL, 937.00, 16, 2, 11, NULL, '7591956', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(87, '2023-09-30 18:00:00', 'Al Nasba', NULL, 766.00, 16, 3, 1, NULL, '2065903', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(88, '2023-08-17 18:00:00', 'BM Voucher Jama', NULL, 426.00, 16, 5, 7, NULL, '4972058', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(89, '2023-11-11 18:00:00', 'Gardian', NULL, 246.00, 16, 2, 11, NULL, '6400258', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(90, '2023-10-05 18:00:00', 'Mustafig treders', NULL, 101.00, 16, 2, 12, NULL, '2098674', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(91, '2023-07-21 18:00:00', 'Al kawser', NULL, 316.00, 17, 5, 7, NULL, '2196566', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(92, '2023-04-09 18:00:00', 'Al Nasba', NULL, 710.00, 17, 2, 11, NULL, '1772112', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(93, '2023-05-17 18:00:00', 'BM Voucher Jama', NULL, 156.00, 17, 2, 10, NULL, '5321017', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(94, '2023-07-01 18:00:00', 'Gardian', NULL, 635.00, 17, 4, 5, NULL, '6072321', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(95, '2023-07-17 18:00:00', 'Mustafig treders', NULL, 315.00, 17, 3, 2, NULL, '1831182', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(96, '2023-08-08 18:00:00', 'Al kawser', NULL, 905.00, 18, 2, 12, NULL, '7958950', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(97, '2023-04-13 18:00:00', 'Al Nasba', NULL, 261.00, 18, 5, 7, NULL, '1366786', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(98, '2023-09-21 18:00:00', 'BM Voucher Jama', NULL, 740.00, 18, 2, 11, NULL, '8247156', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(99, '2023-07-16 18:00:00', 'Gardian', NULL, 333.00, 18, 5, 7, NULL, '3452642', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(100, '2023-10-19 18:00:00', 'Mustafig treders', NULL, 960.00, 18, 4, 4, NULL, '5458812', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(101, '2023-08-17 18:00:00', 'Al kawser', NULL, 569.00, 19, 2, 12, NULL, '7757252', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(102, '2023-08-01 18:00:00', 'Al Nasba', NULL, 219.00, 19, 4, 4, NULL, '8541907', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(103, '2023-04-11 18:00:00', 'BM Voucher Jama', NULL, 949.00, 19, 3, 1, NULL, '4424496', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(104, '2023-09-09 18:00:00', 'Gardian', NULL, 440.00, 19, 2, 11, NULL, '1117767', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(105, '2023-05-24 18:00:00', 'Mustafig treders', NULL, 404.00, 19, 4, 4, NULL, '8099853', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(106, '2023-05-23 18:00:00', 'Al kawser', NULL, 141.00, 20, 3, 1, NULL, '8794151', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(107, '2023-05-11 18:00:00', 'Al Nasba', NULL, 670.00, 20, 5, 8, NULL, '3060433', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(108, '2023-03-10 18:00:00', 'BM Voucher Jama', NULL, 468.00, 20, 5, 9, NULL, '4615737', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(109, '2023-09-15 18:00:00', 'Gardian', NULL, 199.00, 20, 3, 2, NULL, '1942337', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(110, '2023-03-23 18:00:00', 'Mustafig treders', NULL, 934.00, 20, 4, 5, NULL, '6200386', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(111, '2023-06-13 18:00:00', 'Al kawser', NULL, 608.00, 21, 2, 10, NULL, '6117303', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(112, '2023-07-04 18:00:00', 'Al Nasba', NULL, 594.00, 21, 3, 3, NULL, '4439578', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(113, '2023-06-04 18:00:00', 'BM Voucher Jama', NULL, 686.00, 21, 4, 5, NULL, '2699761', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(114, '2023-10-18 18:00:00', 'Gardian', NULL, 872.00, 21, 3, 3, NULL, '3738539', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(115, '2023-02-24 18:00:00', 'Mustafig treders', NULL, 450.00, 21, 2, 10, NULL, '6400703', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(116, '2023-04-05 18:00:00', 'Al kawser', NULL, 570.00, 22, 4, 5, NULL, '9624582', 0, 1, 'accountant entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(117, '2023-08-14 18:00:00', 'Al Nasba', NULL, 299.00, 22, 5, 9, NULL, '7800019', 0, 1, 'accountant entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(118, '2023-02-19 18:00:00', 'BM Voucher Jama', NULL, 561.00, 22, 2, 12, NULL, '4155841', 0, 1, 'accountant entry', NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(119, '2023-01-21 18:00:00', 'Gardian', NULL, 997.00, 22, 2, 10, NULL, '8609532', 0, 1, 'accountant entry', NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(120, '2023-05-20 18:00:00', 'Mustafig treders', NULL, 915.00, 22, 5, 8, NULL, '5473892', 0, 1, 'accountant entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(136, '2023-06-08 18:00:00', 'Al kawser', NULL, 332.00, 26, 3, 2, NULL, '1513027', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(137, '2023-03-22 18:00:00', 'Al Nasba', NULL, 286.00, 26, 2, 11, NULL, '4679480', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(138, '2023-03-14 18:00:00', 'BM Voucher Jama', NULL, 813.00, 26, 3, 2, NULL, '6038547', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(139, '2023-05-02 18:00:00', 'Gardian', NULL, 779.00, 26, 4, 5, NULL, '2133413', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(140, '2023-07-01 18:00:00', 'Mustafig treders', NULL, 893.00, 26, 5, 8, NULL, '5751745', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(141, '2023-11-06 18:00:00', 'Al kawser', NULL, 874.00, 27, 4, 6, NULL, '2752292', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(142, '2023-02-17 18:00:00', 'Al Nasba', NULL, 898.00, 27, 5, 8, NULL, '3411474', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(143, '2023-07-24 18:00:00', 'BM Voucher Jama', NULL, 328.00, 27, 3, 2, NULL, '7492990', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(144, '2023-10-14 18:00:00', 'Gardian', NULL, 499.00, 27, 4, 6, NULL, '5535259', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(145, '2023-06-21 18:00:00', 'Mustafig treders', NULL, 918.00, 27, 2, 10, NULL, '1642088', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(146, '2023-02-17 18:00:00', 'Al kawser', NULL, 623.00, 28, 2, 11, NULL, '8817089', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(147, '2023-09-30 18:00:00', 'Al Nasba', NULL, 988.00, 28, 3, 3, NULL, '1499261', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(148, '2023-02-19 18:00:00', 'BM Voucher Jama', NULL, 290.00, 28, 4, 5, NULL, '9654241', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(149, '2023-11-07 18:00:00', 'Gardian', NULL, 112.00, 28, 2, 12, NULL, '3022994', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(150, '2023-12-02 18:00:00', 'Mustafig treders', NULL, 959.00, 28, 4, 4, NULL, '9124446', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(151, '2023-11-11 18:00:00', 'Al kawser', NULL, 846.00, 29, 3, 1, NULL, '5410166', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(152, '2023-02-11 18:00:00', 'Al Nasba', NULL, 321.00, 29, 5, 7, NULL, '3568571', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(153, '2023-11-20 18:00:00', 'BM Voucher Jama', NULL, 479.00, 29, 2, 11, NULL, '1697572', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(154, '2023-06-18 18:00:00', 'Gardian', NULL, 232.00, 29, 4, 4, NULL, '8883140', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(155, '2023-10-22 18:00:00', 'Mustafig treders', NULL, 915.00, 29, 5, 7, NULL, '9363574', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(156, '2023-11-02 18:00:00', 'Al kawser', NULL, 580.00, 30, 2, 12, NULL, '1170613', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(157, '2023-05-22 18:00:00', 'Al Nasba', NULL, 618.00, 30, 3, 2, NULL, '8307205', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(158, '2023-01-23 18:00:00', 'BM Voucher Jama', NULL, 594.00, 30, 4, 4, NULL, '4723029', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(159, '2023-11-13 18:00:00', 'Gardian', NULL, 397.00, 30, 3, 2, NULL, '4037608', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(160, '2023-02-21 18:00:00', 'Mustafig treders', NULL, 502.00, 30, 4, 5, NULL, '5588401', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(161, '2023-11-07 18:00:00', 'Al kawser', NULL, 199.00, 31, 4, 4, NULL, '6108790', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(162, '2023-01-03 18:00:00', 'Al Nasba', NULL, 139.00, 31, 5, 7, NULL, '3548953', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(163, '2023-11-04 18:00:00', 'BM Voucher Jama', NULL, 764.00, 31, 4, 4, NULL, '9466250', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(164, '2023-05-09 18:00:00', 'Gardian', NULL, 307.00, 31, 4, 4, NULL, '8311951', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(165, '2023-09-24 18:00:00', 'Mustafig treders', NULL, 636.00, 31, 2, 10, NULL, '4948106', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(166, '2023-01-10 18:00:00', 'Al kawser', NULL, 777.00, 32, 4, 5, NULL, '2337841', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(167, '2023-08-17 18:00:00', 'Al Nasba', NULL, 564.00, 32, 3, 3, NULL, '8935317', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(168, '2023-06-17 18:00:00', 'BM Voucher Jama', NULL, 669.00, 32, 2, 10, NULL, '1460397', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(169, '2023-01-17 18:00:00', 'Gardian', NULL, 633.00, 32, 5, 9, NULL, '9614618', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(170, '2023-04-01 18:00:00', 'Mustafig treders', NULL, 895.00, 32, 3, 3, NULL, '9927817', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(171, '2023-08-10 18:00:00', 'Al kawser', NULL, 540.00, 33, 3, 1, NULL, '8943957', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(172, '2023-07-14 18:00:00', 'Al Nasba', NULL, 283.00, 33, 5, 7, NULL, '4156472', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(173, '2023-01-19 18:00:00', 'BM Voucher Jama', NULL, 311.00, 33, 3, 3, NULL, '5198736', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(174, '2023-12-10 18:00:00', 'Gardian', NULL, 857.00, 33, 4, 5, NULL, '7833714', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(175, '2023-06-21 18:00:00', 'Mustafig treders', NULL, 812.00, 33, 4, 6, NULL, '4259462', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(176, '2023-02-12 18:00:00', 'Al kawser', NULL, 808.00, 34, 2, 12, NULL, '3902519', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(177, '2023-12-13 18:00:00', 'Al Nasba', NULL, 217.00, 34, 4, 5, NULL, '3170774', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(178, '2023-09-07 18:00:00', 'BM Voucher Jama', NULL, 495.00, 34, 3, 1, NULL, '2429244', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(179, '2023-04-10 18:00:00', 'Gardian', NULL, 789.00, 34, 3, 1, NULL, '3244088', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(180, '2023-07-19 18:00:00', 'Mustafig treders', NULL, 904.00, 34, 5, 9, NULL, '6374997', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(181, '2023-12-10 18:00:00', 'Al kawser', NULL, 186.00, 35, 5, 7, NULL, '3980296', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(182, '2023-02-06 18:00:00', 'Al Nasba', NULL, 631.00, 35, 2, 12, NULL, '5290830', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(183, '2023-08-11 18:00:00', 'BM Voucher Jama', NULL, 222.00, 35, 5, 8, NULL, '7727113', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(184, '2023-04-12 18:00:00', 'Gardian', NULL, 317.00, 35, 3, 2, NULL, '3613814', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(185, '2023-09-21 18:00:00', 'Mustafig treders', NULL, 637.00, 35, 5, 8, NULL, '3429739', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(186, '2023-11-12 18:00:00', 'Al kawser', NULL, 715.00, 36, 4, 5, NULL, '6990935', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(187, '2023-10-17 18:00:00', 'Al Nasba', NULL, 153.00, 36, 3, 1, NULL, '9866578', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(188, '2023-01-31 18:00:00', 'BM Voucher Jama', NULL, 900.00, 36, 3, 1, NULL, '4193780', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(189, '2023-09-23 18:00:00', 'Gardian', NULL, 812.00, 36, 4, 6, NULL, '1020859', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(190, '2023-02-04 18:00:00', 'Mustafig treders', NULL, 741.00, 36, 4, 6, NULL, '7361733', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(191, '2023-06-30 18:00:00', 'Al kawser', NULL, 212.00, 37, 2, 11, NULL, '1946856', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(192, '2023-03-21 18:00:00', 'Al Nasba', NULL, 516.00, 37, 5, 8, NULL, '3515518', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(193, '2023-04-21 18:00:00', 'BM Voucher Jama', NULL, 993.00, 37, 3, 1, NULL, '5480046', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(194, '2023-08-05 18:00:00', 'Gardian', NULL, 582.00, 37, 4, 5, NULL, '3927258', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(195, '2023-12-05 18:00:00', 'Mustafig treders', NULL, 250.00, 37, 3, 3, NULL, '4805212', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(196, '2023-12-05 18:00:00', 'Al kawser', NULL, 173.00, 38, 4, 6, NULL, '7430193', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(197, '2023-11-17 18:00:00', 'Al Nasba', NULL, 960.00, 38, 5, 8, NULL, '8436202', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(198, '2023-04-13 18:00:00', 'BM Voucher Jama', NULL, 214.00, 38, 5, 9, NULL, '6716170', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(199, '2023-04-13 18:00:00', 'Gardian', NULL, 315.00, 38, 3, 2, NULL, '2628718', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(200, '2023-12-08 18:00:00', 'Mustafig treders', NULL, 752.00, 38, 3, 3, NULL, '6888690', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(201, '2023-12-08 18:00:00', 'Al kawser', NULL, 710.00, 39, 2, 11, NULL, '2629079', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(202, '2023-08-31 18:00:00', 'Al Nasba', NULL, 606.00, 39, 5, 9, NULL, '2842405', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(203, '2023-02-17 18:00:00', 'BM Voucher Jama', NULL, 751.00, 39, 2, 11, NULL, '6446744', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(204, '2023-12-22 18:00:00', 'Gardian', NULL, 931.00, 39, 3, 1, NULL, '7180057', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(205, '2023-02-04 18:00:00', 'Mustafig treders', NULL, 734.00, 39, 2, 12, NULL, '1919147', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(206, '2023-07-22 18:00:00', 'Al kawser', NULL, 593.00, 40, 4, 5, NULL, '6381051', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(207, '2023-08-12 18:00:00', 'Al Nasba', NULL, 503.00, 40, 5, 9, NULL, '3128514', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(208, '2023-11-18 18:00:00', 'BM Voucher Jama', NULL, 881.00, 40, 3, 3, NULL, '4781428', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(209, '2023-10-10 18:00:00', 'Gardian', NULL, 890.00, 40, 3, 2, NULL, '5825483', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(210, '2023-09-30 18:00:00', 'Mustafig treders', NULL, 262.00, 40, 5, 8, NULL, '9018490', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(211, '2023-06-11 18:00:00', 'Al kawser', NULL, 783.00, 41, 5, 8, NULL, '7822233', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(212, '2023-06-22 18:00:00', 'Al Nasba', NULL, 662.00, 41, 5, 7, NULL, '1190333', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(213, '2023-09-30 18:00:00', 'BM Voucher Jama', NULL, 361.00, 41, 4, 5, NULL, '1364434', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(214, '2023-01-17 18:00:00', 'Gardian', NULL, 528.00, 41, 4, 5, NULL, '2744831', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(215, '2023-08-18 18:00:00', 'Mustafig treders', NULL, 167.00, 41, 5, 9, NULL, '2990393', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(216, '2023-09-02 18:00:00', 'Al kawser', NULL, 651.00, 42, 5, 9, NULL, '2160840', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(217, '2023-07-04 18:00:00', 'Al Nasba', NULL, 981.00, 42, 5, 7, NULL, '6077902', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(218, '2023-07-06 18:00:00', 'BM Voucher Jama', NULL, 135.00, 42, 2, 12, NULL, '9067829', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(219, '2023-02-01 18:00:00', 'Gardian', NULL, 255.00, 42, 4, 5, NULL, '2399645', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(220, '2023-08-10 18:00:00', 'Mustafig treders', NULL, 651.00, 42, 4, 4, NULL, '5582236', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(221, '2023-11-23 18:00:00', 'Al kawser', NULL, 441.00, 43, 4, 4, NULL, '3989665', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(222, '2023-09-17 18:00:00', 'Al Nasba', NULL, 102.00, 43, 4, 4, NULL, '6743210', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(223, '2023-03-02 18:00:00', 'BM Voucher Jama', NULL, 899.00, 43, 3, 2, NULL, '5054373', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(224, '2023-01-12 18:00:00', 'Gardian', NULL, 396.00, 43, 4, 6, NULL, '1887403', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(225, '2023-12-05 18:00:00', 'Mustafig treders', NULL, 387.00, 43, 2, 12, NULL, '5831633', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(226, '2023-10-31 18:00:00', 'Al kawser', NULL, 710.00, 44, 5, 7, NULL, '1210611', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(227, '2023-04-20 18:00:00', 'Al Nasba', NULL, 991.00, 44, 4, 6, NULL, '5896063', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(228, '2023-04-05 18:00:00', 'BM Voucher Jama', NULL, 305.00, 44, 5, 8, NULL, '8655709', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(229, '2023-11-12 18:00:00', 'Gardian', NULL, 632.00, 44, 5, 9, NULL, '6562832', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(230, '2023-07-14 18:00:00', 'Mustafig treders', NULL, 514.00, 44, 3, 1, NULL, '8005581', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(231, '2023-01-14 18:00:00', 'Al kawser', NULL, 798.00, 45, 3, 3, NULL, '6714686', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(232, '2023-12-07 18:00:00', 'Al Nasba', NULL, 612.00, 45, 4, 4, NULL, '4284372', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(233, '2023-12-10 18:00:00', 'BM Voucher Jama', NULL, 284.00, 45, 3, 1, NULL, '8508411', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(234, '2023-04-06 18:00:00', 'Gardian', NULL, 937.00, 45, 5, 8, NULL, '3260772', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(235, '2023-05-06 18:00:00', 'Mustafig treders', NULL, 929.00, 45, 5, 9, NULL, '2399674', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(236, '2023-07-08 18:00:00', 'Al kawser', NULL, 729.00, 46, 5, 8, NULL, '3802143', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(237, '2023-05-01 18:00:00', 'Al Nasba', NULL, 302.00, 46, 4, 5, NULL, '6058442', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(238, '2023-11-30 18:00:00', 'BM Voucher Jama', NULL, 198.00, 46, 5, 8, NULL, '5087844', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(239, '2023-03-19 18:00:00', 'Gardian', NULL, 137.00, 46, 4, 5, NULL, '4578556', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(240, '2023-01-21 18:00:00', 'Mustafig treders', NULL, 367.00, 46, 2, 10, NULL, '2071684', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(241, '2023-02-01 18:00:00', 'Al kawser', NULL, 628.00, 47, 5, 9, NULL, '3993786', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(242, '2023-08-06 18:00:00', 'Al Nasba', NULL, 397.00, 47, 2, 11, NULL, '1218556', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(243, '2023-04-02 18:00:00', 'BM Voucher Jama', NULL, 247.00, 47, 4, 5, NULL, '9109450', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(244, '2023-10-19 18:00:00', 'Gardian', NULL, 922.00, 47, 5, 8, NULL, '9082205', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(245, '2023-05-05 18:00:00', 'Mustafig treders', NULL, 585.00, 47, 5, 9, NULL, '5526250', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(246, '2023-03-14 18:00:00', 'Al kawser', NULL, 267.00, 48, 5, 7, NULL, '3674240', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(247, '2023-06-23 18:00:00', 'Al Nasba', NULL, 585.00, 48, 5, 7, NULL, '6510175', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(248, '2023-04-23 18:00:00', 'BM Voucher Jama', NULL, 681.00, 48, 2, 11, NULL, '4995138', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(249, '2023-09-09 18:00:00', 'Gardian', NULL, 789.00, 48, 4, 5, NULL, '5281131', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(250, '2023-04-08 18:00:00', 'Mustafig treders', NULL, 787.00, 48, 4, 6, NULL, '6044890', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(251, '2023-06-07 18:00:00', 'Al kawser', NULL, 592.00, 49, 5, 7, NULL, '3933311', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(252, '2023-05-20 18:00:00', 'Al Nasba', NULL, 1000.00, 49, 2, 11, NULL, '4754573', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(253, '2023-03-11 18:00:00', 'BM Voucher Jama', NULL, 541.00, 49, 2, 11, NULL, '5953522', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(254, '2023-03-09 18:00:00', 'Gardian', NULL, 745.00, 49, 5, 7, NULL, '6696642', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(255, '2023-05-01 18:00:00', 'Mustafig treders', NULL, 530.00, 49, 5, 9, NULL, '5502678', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(256, '2023-12-10 18:00:00', 'Al kawser', NULL, 307.00, 50, 4, 4, NULL, '1077137', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(257, '2023-01-09 18:00:00', 'Al Nasba', NULL, 405.00, 50, 2, 10, NULL, '2086516', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(258, '2023-03-14 18:00:00', 'BM Voucher Jama', NULL, 725.00, 50, 4, 5, NULL, '5998021', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(259, '2023-04-10 18:00:00', 'Gardian', NULL, 708.00, 50, 4, 6, NULL, '5738509', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(260, '2023-01-09 18:00:00', 'Mustafig treders', NULL, 643.00, 50, 2, 11, NULL, '2658421', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(261, '2023-05-03 18:00:00', 'Al kawser', NULL, 230.00, 51, 2, 12, NULL, '4275084', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(262, '2023-01-02 18:00:00', 'Al Nasba', NULL, 570.00, 51, 5, 8, NULL, '2526750', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(263, '2023-08-11 18:00:00', 'BM Voucher Jama', NULL, 792.00, 51, 3, 2, NULL, '2183842', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(264, '2023-03-15 18:00:00', 'Gardian', NULL, 654.00, 51, 3, 1, NULL, '7881043', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(265, '2023-04-16 18:00:00', 'Mustafig treders', NULL, 141.00, 51, 5, 7, NULL, '1845019', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(266, '2023-02-11 18:00:00', 'Al kawser', NULL, 878.00, 52, 3, 3, NULL, '1846171', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(267, '2023-01-16 18:00:00', 'Al Nasba', NULL, 680.00, 52, 3, 1, NULL, '1277784', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(268, '2023-07-17 18:00:00', 'BM Voucher Jama', NULL, 951.00, 52, 5, 7, NULL, '6219300', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(269, '2023-11-20 18:00:00', 'Gardian', NULL, 527.00, 52, 5, 9, NULL, '2996303', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(270, '2023-04-05 18:00:00', 'Mustafig treders', NULL, 424.00, 52, 5, 7, NULL, '4134445', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(271, '2023-09-17 18:00:00', 'Al kawser', NULL, 213.00, 53, 3, 3, NULL, '5209440', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(272, '2023-03-09 18:00:00', 'Al Nasba', NULL, 335.00, 53, 4, 6, NULL, '4942555', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(273, '2023-09-10 18:00:00', 'BM Voucher Jama', NULL, 312.00, 53, 2, 12, NULL, '4378159', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(274, '2023-04-09 18:00:00', 'Gardian', NULL, 597.00, 53, 5, 8, NULL, '8422680', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(275, '2023-05-19 18:00:00', 'Mustafig treders', NULL, 832.00, 53, 5, 7, NULL, '4585322', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(276, '2023-03-09 18:00:00', 'Al kawser', NULL, 673.00, 54, 5, 8, NULL, '5695419', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(277, '2023-12-10 18:00:00', 'Al Nasba', NULL, 269.00, 54, 5, 8, NULL, '8162045', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(278, '2023-07-17 18:00:00', 'BM Voucher Jama', NULL, 611.00, 54, 5, 7, NULL, '8497639', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(279, '2023-05-14 18:00:00', 'Gardian', NULL, 745.00, 54, 2, 11, NULL, '7053399', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(280, '2023-01-04 18:00:00', 'Mustafig treders', NULL, 358.00, 54, 5, 7, NULL, '2916611', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(281, '2023-01-16 18:00:00', 'Al kawser', NULL, 262.00, 55, 2, 11, NULL, '8828281', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(282, '2023-01-17 18:00:00', 'Al Nasba', NULL, 605.00, 55, 3, 3, NULL, '5006161', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(283, '2023-06-12 18:00:00', 'BM Voucher Jama', NULL, 196.00, 55, 5, 7, NULL, '8246025', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(284, '2023-09-23 18:00:00', 'Gardian', NULL, 851.00, 55, 3, 1, NULL, '9248557', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(285, '2023-09-23 18:00:00', 'Mustafig treders', NULL, 417.00, 55, 4, 4, NULL, '3431338', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(286, '2023-05-22 18:00:00', 'Al kawser', NULL, 801.00, 56, 4, 5, NULL, '5072100', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(287, '2023-03-22 18:00:00', 'Al Nasba', NULL, 704.00, 56, 3, 3, NULL, '6168155', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(288, '2023-01-13 18:00:00', 'BM Voucher Jama', NULL, 719.00, 56, 5, 8, NULL, '2014928', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(289, '2023-08-13 18:00:00', 'Gardian', NULL, 541.00, 56, 2, 11, NULL, '5024410', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(290, '2023-12-08 18:00:00', 'Mustafig treders', NULL, 772.00, 56, 3, 2, NULL, '1501942', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(291, '2023-02-18 18:00:00', 'Al kawser', NULL, 464.00, 57, 4, 6, NULL, '2745716', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(292, '2023-06-13 18:00:00', 'Al Nasba', NULL, 761.00, 57, 5, 7, NULL, '1627969', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(293, '2023-09-07 18:00:00', 'BM Voucher Jama', NULL, 203.00, 57, 5, 8, NULL, '8990519', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(294, '2023-07-02 18:00:00', 'Gardian', NULL, 201.00, 57, 3, 1, NULL, '9045907', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(295, '2023-01-08 18:00:00', 'Mustafig treders', NULL, 841.00, 57, 3, 2, NULL, '4463573', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(296, '2023-08-09 18:00:00', 'Al kawser', NULL, 630.00, 58, 2, 11, NULL, '7516597', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(297, '2023-07-03 18:00:00', 'Al Nasba', NULL, 356.00, 58, 5, 8, NULL, '9460588', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(298, '2023-01-03 18:00:00', 'BM Voucher Jama', NULL, 686.00, 58, 5, 9, NULL, '6441565', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(299, '2023-11-14 18:00:00', 'Gardian', NULL, 763.00, 58, 2, 12, NULL, '4102116', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(300, '2023-01-19 18:00:00', 'Mustafig treders', NULL, 426.00, 58, 4, 6, NULL, '5744878', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(301, '2022-12-31 18:00:00', 'Al kawser', NULL, 388.00, 59, 5, 9, NULL, '2847798', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(302, '2023-10-19 18:00:00', 'Al Nasba', NULL, 133.00, 59, 4, 5, NULL, '9932599', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(303, '2023-07-07 18:00:00', 'BM Voucher Jama', NULL, 518.00, 59, 3, 3, NULL, '7153405', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24');
INSERT INTO `account_logs` (`id`, `date`, `name`, `customer_id`, `amount`, `category_id`, `account_id`, `account_number_id`, `trx_id`, `receipt_no`, `is_expense`, `is_income`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(304, '2023-01-20 18:00:00', 'Gardian', NULL, 187.00, 59, 2, 11, NULL, '7465383', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(305, '2023-08-16 18:00:00', 'Mustafig treders', NULL, 439.00, 59, 5, 8, NULL, '2091243', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(306, '2023-05-15 18:00:00', 'Al kawser', NULL, 312.00, 60, 3, 2, NULL, '2702517', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(307, '2023-08-16 18:00:00', 'Al Nasba', NULL, 122.00, 60, 2, 11, NULL, '1162071', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(308, '2023-07-04 18:00:00', 'BM Voucher Jama', NULL, 821.00, 60, 5, 8, NULL, '5775565', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(309, '2023-09-02 18:00:00', 'Gardian', NULL, 987.00, 60, 3, 2, NULL, '4461162', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(310, '2023-05-15 18:00:00', 'Mustafig treders', NULL, 872.00, 60, 3, 1, NULL, '1364067', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(311, '2023-06-22 18:00:00', 'Al kawser', NULL, 968.00, 61, 2, 10, NULL, '1987835', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(312, '2023-03-23 18:00:00', 'Al Nasba', NULL, 145.00, 61, 2, 10, NULL, '8645260', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(313, '2023-05-11 18:00:00', 'BM Voucher Jama', NULL, 822.00, 61, 3, 3, NULL, '3072183', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(314, '2023-06-12 18:00:00', 'Gardian', NULL, 651.00, 61, 5, 9, NULL, '3144845', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(315, '2023-04-17 18:00:00', 'Mustafig treders', NULL, 622.00, 61, 2, 10, NULL, '2887612', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(316, '2023-07-07 18:00:00', 'Al kawser', NULL, 728.00, 62, 3, 1, NULL, '3049180', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(317, '2023-10-23 18:00:00', 'Al Nasba', NULL, 498.00, 62, 4, 6, NULL, '4639013', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(318, '2023-03-06 18:00:00', 'BM Voucher Jama', NULL, 832.00, 62, 5, 7, NULL, '1595870', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(319, '2023-02-17 18:00:00', 'Gardian', NULL, 926.00, 62, 5, 8, NULL, '1757726', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(320, '2023-12-14 18:00:00', 'Mustafig treders', NULL, 435.00, 62, 3, 1, NULL, '9150805', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(321, '2023-11-13 18:00:00', 'Al kawser', NULL, 545.00, 63, 4, 4, NULL, '9258913', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(322, '2023-10-07 18:00:00', 'Al Nasba', NULL, 118.00, 63, 5, 9, NULL, '3986781', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(323, '2023-04-14 18:00:00', 'BM Voucher Jama', NULL, 255.00, 63, 5, 7, NULL, '6947492', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(324, '2023-10-11 18:00:00', 'Gardian', NULL, 394.00, 63, 2, 10, NULL, '1148850', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(325, '2023-03-02 18:00:00', 'Mustafig treders', NULL, 288.00, 63, 4, 6, NULL, '4052224', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(326, '2023-10-10 18:00:00', 'Al kawser', NULL, 756.00, 64, 2, 11, NULL, '8218782', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(327, '2023-03-09 18:00:00', 'Al Nasba', NULL, 212.00, 64, 3, 2, NULL, '5294781', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(328, '2023-05-15 18:00:00', 'BM Voucher Jama', NULL, 141.00, 64, 5, 8, NULL, '7462730', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(329, '2023-05-10 18:00:00', 'Gardian', NULL, 131.00, 64, 4, 5, NULL, '5368091', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(330, '2023-05-14 18:00:00', 'Mustafig treders', NULL, 385.00, 64, 2, 11, NULL, '4194591', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(331, '2023-06-24 18:00:00', 'Al kawser', NULL, 578.00, 65, 4, 6, NULL, '7341129', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(332, '2023-10-12 18:00:00', 'Al Nasba', NULL, 934.00, 65, 2, 10, NULL, '4511304', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(333, '2023-03-16 18:00:00', 'BM Voucher Jama', NULL, 402.00, 65, 4, 4, NULL, '3900106', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(334, '2023-05-22 18:00:00', 'Gardian', NULL, 337.00, 65, 5, 7, NULL, '3473876', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(335, '2023-06-30 18:00:00', 'Mustafig treders', NULL, 245.00, 65, 3, 1, NULL, '8677002', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(336, '2023-05-22 18:00:00', 'Al kawser', NULL, 584.00, 66, 5, 8, NULL, '1688335', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(337, '2023-06-13 18:00:00', 'Al Nasba', NULL, 543.00, 66, 2, 11, NULL, '8517290', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(338, '2023-02-17 18:00:00', 'BM Voucher Jama', NULL, 710.00, 66, 3, 2, NULL, '3351515', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(339, '2023-02-23 18:00:00', 'Gardian', NULL, 860.00, 66, 4, 4, NULL, '3225902', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(340, '2023-12-04 18:00:00', 'Mustafig treders', NULL, 212.00, 66, 5, 9, NULL, '5433220', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(341, '2023-12-15 18:00:00', 'Al kawser', NULL, 804.00, 67, 3, 2, NULL, '3362433', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(342, '2023-07-31 18:00:00', 'Al Nasba', NULL, 149.00, 67, 2, 12, NULL, '9516691', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(343, '2023-09-14 18:00:00', 'BM Voucher Jama', NULL, 953.00, 67, 3, 1, NULL, '3913139', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(344, '2023-12-04 18:00:00', 'Gardian', NULL, 925.00, 67, 5, 7, NULL, '5347253', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(345, '2023-06-01 18:00:00', 'Mustafig treders', NULL, 162.00, 67, 4, 6, NULL, '3660238', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(346, '2023-07-07 18:00:00', 'Al kawser', NULL, 538.00, 68, 4, 6, NULL, '1271652', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(347, '2023-11-07 18:00:00', 'Al Nasba', NULL, 493.00, 68, 3, 2, NULL, '1453180', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(348, '2023-01-13 18:00:00', 'BM Voucher Jama', NULL, 726.00, 68, 2, 12, NULL, '4720315', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(349, '2023-05-19 18:00:00', 'Gardian', NULL, 415.00, 68, 4, 5, NULL, '4646728', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(350, '2023-02-18 18:00:00', 'Mustafig treders', NULL, 236.00, 68, 4, 4, NULL, '5035543', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(351, '2023-01-16 18:00:00', 'Al kawser', NULL, 540.00, 69, 5, 8, NULL, '9126734', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(352, '2023-12-06 18:00:00', 'Al Nasba', NULL, 798.00, 69, 4, 4, NULL, '4027539', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(353, '2023-10-21 18:00:00', 'BM Voucher Jama', NULL, 323.00, 69, 3, 3, NULL, '9618346', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(354, '2023-03-31 18:00:00', 'Gardian', NULL, 463.00, 69, 3, 1, NULL, '3813131', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(355, '2023-06-12 18:00:00', 'Mustafig treders', NULL, 831.00, 69, 5, 8, NULL, '6785823', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(356, '2023-03-07 18:00:00', 'Al kawser', NULL, 621.00, 70, 3, 3, NULL, '2475980', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(357, '2023-04-03 18:00:00', 'Al Nasba', NULL, 478.00, 70, 2, 10, NULL, '2751784', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(358, '2023-02-04 18:00:00', 'BM Voucher Jama', NULL, 888.00, 70, 4, 6, NULL, '9382040', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(359, '2023-08-02 18:00:00', 'Gardian', NULL, 481.00, 70, 3, 1, NULL, '6767074', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(360, '2023-01-03 18:00:00', 'Mustafig treders', NULL, 968.00, 70, 5, 7, NULL, '1788144', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(361, '2023-06-16 18:00:00', 'Al kawser', NULL, 843.00, 71, 5, 7, NULL, '4807207', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(362, '2023-09-07 18:00:00', 'Al Nasba', NULL, 126.00, 71, 2, 11, NULL, '5450433', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(363, '2023-02-06 18:00:00', 'BM Voucher Jama', NULL, 948.00, 71, 2, 11, NULL, '5824651', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(364, '2023-03-31 18:00:00', 'Gardian', NULL, 765.00, 71, 3, 1, NULL, '9873121', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(365, '2023-08-15 18:00:00', 'Mustafig treders', NULL, 239.00, 71, 4, 6, NULL, '3622966', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(366, '2023-10-19 18:00:00', 'Al kawser', NULL, 540.00, 72, 2, 12, NULL, '2032146', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(367, '2023-11-22 18:00:00', 'Al Nasba', NULL, 494.00, 72, 5, 9, NULL, '9681338', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(368, '2023-11-23 18:00:00', 'BM Voucher Jama', NULL, 451.00, 72, 2, 10, NULL, '7735006', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(369, '2023-02-16 18:00:00', 'Gardian', NULL, 162.00, 72, 3, 1, NULL, '8260830', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(370, '2023-11-22 18:00:00', 'Mustafig treders', NULL, 661.00, 72, 4, 4, NULL, '5130999', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(371, '2023-09-18 18:00:00', 'Al kawser', NULL, 215.00, 73, 3, 1, NULL, '6787790', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(372, '2023-11-22 18:00:00', 'Al Nasba', NULL, 960.00, 73, 3, 3, NULL, '6392674', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(373, '2023-11-09 18:00:00', 'BM Voucher Jama', NULL, 386.00, 73, 2, 11, NULL, '1370122', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(374, '2023-01-20 18:00:00', 'Gardian', NULL, 425.00, 73, 2, 10, NULL, '3508466', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(375, '2023-11-24 18:00:00', 'Mustafig treders', NULL, 703.00, 73, 5, 8, NULL, '2931258', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(376, '2023-04-07 18:00:00', 'Al kawser', NULL, 745.00, 74, 5, 8, NULL, '8698424', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(377, '2023-04-12 18:00:00', 'Al Nasba', NULL, 406.00, 74, 3, 3, NULL, '2118383', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(378, '2023-04-13 18:00:00', 'BM Voucher Jama', NULL, 952.00, 74, 5, 7, NULL, '2517998', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(379, '2023-02-05 18:00:00', 'Gardian', NULL, 651.00, 74, 2, 12, NULL, '4545330', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(380, '2023-10-15 18:00:00', 'Mustafig treders', NULL, 391.00, 74, 4, 4, NULL, '4891053', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(381, '2023-12-08 18:00:00', 'Al kawser', NULL, 682.00, 75, 3, 2, NULL, '1575014', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:24', '2023-11-16 03:12:24'),
(382, '2023-07-05 18:00:00', 'Al Nasba', NULL, 349.00, 75, 3, 2, NULL, '7827039', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(383, '2023-06-24 18:00:00', 'BM Voucher Jama', NULL, 679.00, 75, 3, 2, NULL, '7412752', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(384, '2023-02-17 18:00:00', 'Gardian', NULL, 678.00, 75, 3, 2, NULL, '9684585', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(385, '2023-04-13 18:00:00', 'Mustafig treders', NULL, 436.00, 75, 4, 5, NULL, '9792021', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(386, '2023-05-18 18:00:00', 'Al kawser', NULL, 494.00, 76, 2, 10, NULL, '2914518', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(387, '2023-02-07 18:00:00', 'Al Nasba', NULL, 986.00, 76, 2, 12, NULL, '2695986', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(388, '2023-04-03 18:00:00', 'BM Voucher Jama', NULL, 246.00, 76, 2, 11, NULL, '7137866', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(389, '2023-10-04 18:00:00', 'Gardian', NULL, 108.00, 76, 2, 12, NULL, '8911572', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(390, '2023-10-23 18:00:00', 'Mustafig treders', NULL, 414.00, 76, 4, 4, NULL, '9088017', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(391, '2023-06-15 18:00:00', 'Al kawser', NULL, 767.00, 77, 2, 10, NULL, '1863239', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(392, '2023-12-21 18:00:00', 'Al Nasba', NULL, 414.00, 77, 4, 4, NULL, '1334031', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(393, '2023-11-12 18:00:00', 'BM Voucher Jama', NULL, 694.00, 77, 4, 6, NULL, '2462892', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(394, '2023-04-03 18:00:00', 'Gardian', NULL, 406.00, 77, 4, 6, NULL, '6293271', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(395, '2023-02-13 18:00:00', 'Mustafig treders', NULL, 871.00, 77, 5, 8, NULL, '8204455', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(396, '2023-10-11 18:00:00', 'Al kawser', NULL, 374.00, 78, 5, 9, NULL, '4668896', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(397, '2023-02-21 18:00:00', 'Al Nasba', NULL, 166.00, 78, 5, 9, NULL, '4326452', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(398, '2023-02-15 18:00:00', 'BM Voucher Jama', NULL, 540.00, 78, 3, 1, NULL, '5787502', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(399, '2023-04-22 18:00:00', 'Gardian', NULL, 336.00, 78, 5, 8, NULL, '8404598', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(400, '2023-02-15 18:00:00', 'Mustafig treders', NULL, 399.00, 78, 4, 6, NULL, '9969155', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(401, '2023-06-07 18:00:00', 'Al kawser', NULL, 260.00, 79, 5, 7, NULL, '3268601', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(402, '2023-01-08 18:00:00', 'Al Nasba', NULL, 360.00, 79, 3, 1, NULL, '3256648', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(403, '2023-07-03 18:00:00', 'BM Voucher Jama', NULL, 495.00, 79, 3, 2, NULL, '2355747', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(404, '2023-05-12 18:00:00', 'Gardian', NULL, 133.00, 79, 4, 5, NULL, '5765193', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(405, '2023-05-23 18:00:00', 'Mustafig treders', NULL, 871.00, 79, 4, 6, NULL, '1318484', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(406, '2023-06-16 18:00:00', 'Al kawser', NULL, 781.00, 80, 3, 2, NULL, '6619675', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(407, '2023-06-30 18:00:00', 'Al Nasba', NULL, 362.00, 80, 4, 4, NULL, '1249669', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(408, '2023-03-10 18:00:00', 'BM Voucher Jama', NULL, 912.00, 80, 5, 7, NULL, '4855328', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(409, '2023-10-24 18:00:00', 'Gardian', NULL, 614.00, 80, 2, 12, NULL, '4336545', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(410, '2023-11-18 18:00:00', 'Mustafig treders', NULL, 805.00, 80, 4, 5, NULL, '4105912', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(411, '2023-02-04 18:00:00', 'Al kawser', NULL, 850.00, 81, 3, 2, NULL, '9057947', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(412, '2023-10-15 18:00:00', 'Al Nasba', NULL, 568.00, 81, 5, 7, NULL, '3589374', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(413, '2023-02-16 18:00:00', 'BM Voucher Jama', NULL, 264.00, 81, 3, 2, NULL, '9424414', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(414, '2023-04-22 18:00:00', 'Gardian', NULL, 932.00, 81, 3, 1, NULL, '9730179', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(415, '2023-11-14 18:00:00', 'Mustafig treders', NULL, 478.00, 81, 2, 10, NULL, '8623026', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(416, '2023-07-24 18:00:00', 'Al kawser', NULL, 327.00, 82, 4, 6, NULL, '7163198', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(417, '2023-01-21 18:00:00', 'Al Nasba', NULL, 446.00, 82, 4, 6, NULL, '1867615', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(418, '2023-03-02 18:00:00', 'BM Voucher Jama', NULL, 832.00, 82, 5, 8, NULL, '4756849', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(419, '2023-10-15 18:00:00', 'Gardian', NULL, 705.00, 82, 2, 11, NULL, '3562099', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(420, '2023-02-11 18:00:00', 'Mustafig treders', NULL, 370.00, 82, 4, 4, NULL, '7288589', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(421, '2023-02-03 18:00:00', 'Al kawser', NULL, 400.00, 83, 2, 12, NULL, '6031244', 1, 0, NULL, NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(422, '2023-03-19 18:00:00', 'Al Nasba', NULL, 411.00, 83, 5, 8, NULL, '8696812', 1, 0, NULL, NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(423, '2023-01-11 18:00:00', 'BM Voucher Jama', NULL, 815.00, 83, 3, 2, NULL, '8698437', 1, 0, NULL, NULL, 'bm-voucher-jama', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(424, '2023-03-18 18:00:00', 'Gardian', NULL, 735.00, 83, 5, 8, NULL, '3720059', 1, 0, NULL, NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(425, '2023-05-31 18:00:00', 'Mustafig treders', NULL, 708.00, 83, 3, 3, NULL, '9349790', 1, 0, NULL, NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(426, '2023-07-03 18:00:00', 'Fatah Paper House', NULL, 282.00, 23, 2, 10, '6555889927c818.00117625', '3069853', 1, 0, 'accountant supplier entry', NULL, 'fatah-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(427, '2023-11-08 18:00:00', 'Fatah Paper House', NULL, 133.00, 23, 4, 4, '6555889928e3c4.14417557', '1087142', 1, 0, 'accountant supplier entry', NULL, 'fatah-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(428, '2023-08-14 18:00:00', 'Fatah Paper House', NULL, 698.00, 23, 2, 10, '655588992a02f8.04407184', '7372505', 1, 0, 'accountant supplier entry', NULL, 'fatah-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(429, '2023-11-13 18:00:00', 'Fatah Paper House', NULL, 706.00, 23, 4, 5, '655588992b3522.04127064', '8845196', 1, 0, 'accountant supplier entry', NULL, 'fatah-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(430, '2023-03-11 18:00:00', 'Fatah Paper House', NULL, 843.00, 23, 4, 4, '655588992c3fc1.79462424', '4047478', 1, 0, 'accountant supplier entry', NULL, 'fatah-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(431, '2023-08-13 18:00:00', 'S Alam', NULL, 955.00, 23, 4, 5, '655588993069b1.60023962', '4822024', 1, 0, 'accountant supplier entry', NULL, 's-alam', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(432, '2023-06-16 18:00:00', 'S Alam', NULL, 497.00, 23, 3, 3, '6555889931b263.11099060', '4930737', 1, 0, 'accountant supplier entry', NULL, 's-alam', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(433, '2023-08-31 18:00:00', 'S Alam', NULL, 248.00, 23, 3, 3, '6555889932cb65.76303020', '9896225', 1, 0, 'accountant supplier entry', NULL, 's-alam', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(434, '2023-04-18 18:00:00', 'S Alam', NULL, 194.00, 23, 3, 2, '6555889933cac7.17641868', '5279575', 1, 0, 'accountant supplier entry', NULL, 's-alam', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(435, '2023-11-01 18:00:00', 'S Alam', NULL, 305.00, 23, 5, 9, '6555889934cce5.73329843', '5251822', 1, 0, 'accountant supplier entry', NULL, 's-alam', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(436, '2023-10-15 18:00:00', 'Isan Paper House', NULL, 113.00, 23, 5, 9, '65558899388cf9.76476520', '2281565', 1, 0, 'accountant supplier entry', NULL, 'isan-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(437, '2023-06-18 18:00:00', 'Isan Paper House', NULL, 797.00, 23, 4, 6, '65558899398955.95640499', '6399716', 1, 0, 'accountant supplier entry', NULL, 'isan-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(438, '2023-12-17 18:00:00', 'Isan Paper House', NULL, 150.00, 23, 5, 8, '655588993abf43.79890995', '4804070', 1, 0, 'accountant supplier entry', NULL, 'isan-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(439, '2023-12-05 18:00:00', 'Isan Paper House', NULL, 346.00, 23, 2, 12, '655588993bda32.47917089', '9291239', 1, 0, 'accountant supplier entry', NULL, 'isan-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(440, '2023-08-03 18:00:00', 'Isan Paper House', NULL, 909.00, 23, 5, 7, '655588993cdaf2.58414929', '7995462', 1, 0, 'accountant supplier entry', NULL, 'isan-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(441, '2023-10-19 18:00:00', 'Mahmud', NULL, 939.00, 23, 5, 7, '6555889940a0a1.76542435', '1945598', 1, 0, 'accountant supplier entry', NULL, 'mahmud', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(442, '2023-06-03 18:00:00', 'Mahmud', NULL, 994.00, 23, 4, 4, '65558899419712.11133047', '7939273', 1, 0, 'accountant supplier entry', NULL, 'mahmud', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(443, '2023-02-14 18:00:00', 'Mahmud', NULL, 344.00, 23, 5, 9, '65558899429103.16764538', '6813657', 1, 0, 'accountant supplier entry', NULL, 'mahmud', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(444, '2023-05-19 18:00:00', 'Mahmud', NULL, 532.00, 23, 5, 9, '65558899439238.59679203', '7058017', 1, 0, 'accountant supplier entry', NULL, 'mahmud', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(445, '2023-01-15 18:00:00', 'Mahmud', NULL, 331.00, 23, 5, 8, '6555889944ce48.59228118', '2629745', 1, 0, 'accountant supplier entry', NULL, 'mahmud', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(446, '2023-07-04 18:00:00', 'Al Hamra Paper  House', NULL, 810.00, 23, 2, 10, '6555889948cac2.41808247', '7708054', 1, 0, 'accountant supplier entry', NULL, 'al-hamra-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(447, '2023-10-06 18:00:00', 'Al Hamra Paper  House', NULL, 480.00, 23, 5, 9, '655588994a0b90.13405212', '5494157', 1, 0, 'accountant supplier entry', NULL, 'al-hamra-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(448, '2023-09-12 18:00:00', 'Al Hamra Paper  House', NULL, 703.00, 23, 5, 7, '655588994b3652.52474254', '9310234', 1, 0, 'accountant supplier entry', NULL, 'al-hamra-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(449, '2023-01-19 18:00:00', 'Al Hamra Paper  House', NULL, 365.00, 23, 2, 11, '655588994c4084.04376471', '8227579', 1, 0, 'accountant supplier entry', NULL, 'al-hamra-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(450, '2023-07-17 18:00:00', 'Al Hamra Paper  House', NULL, 873.00, 23, 2, 12, '655588994d5639.05213114', '5548071', 1, 0, 'accountant supplier entry', NULL, 'al-hamra-paper-house', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(451, '2023-10-31 18:00:00', 'Nasim Fayel', NULL, 424.00, 23, 4, 6, '655588995196c4.95549648', '4550670', 1, 0, 'accountant supplier entry', NULL, 'nasim-fayel', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(452, '2023-03-16 18:00:00', 'Nasim Fayel', NULL, 465.00, 23, 5, 7, '6555889952a032.80163258', '6642265', 1, 0, 'accountant supplier entry', NULL, 'nasim-fayel', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(453, '2023-07-16 18:00:00', 'Nasim Fayel', NULL, 583.00, 23, 3, 2, '6555889953e7d9.78956123', '4574315', 1, 0, 'accountant supplier entry', NULL, 'nasim-fayel', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(454, '2023-12-20 18:00:00', 'Nasim Fayel', NULL, 149.00, 23, 5, 9, '65558899551c86.80083711', '1016598', 1, 0, 'accountant supplier entry', NULL, 'nasim-fayel', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(455, '2023-01-04 18:00:00', 'Nasim Fayel', NULL, 920.00, 23, 4, 6, '655588995631b5.16017470', '3712149', 1, 0, 'accountant supplier entry', NULL, 'nasim-fayel', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(456, '2023-08-16 18:00:00', 'Payel Vi', NULL, 738.00, 23, 2, 12, '655588995a73a5.36173101', '8561323', 1, 0, 'accountant supplier entry', NULL, 'payel-vi', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(457, '2023-03-12 18:00:00', 'Payel Vi', NULL, 898.00, 23, 5, 9, '655588995b95c4.44163433', '1484101', 1, 0, 'accountant supplier entry', NULL, 'payel-vi', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(458, '2023-08-12 18:00:00', 'Payel Vi', NULL, 246.00, 23, 4, 4, '655588995c9a98.96681855', '4007251', 1, 0, 'accountant supplier entry', NULL, 'payel-vi', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(459, '2023-02-12 18:00:00', 'Payel Vi', NULL, 117.00, 23, 5, 8, '655588995db742.24914040', '1798751', 1, 0, 'accountant supplier entry', NULL, 'payel-vi', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(460, '2023-02-02 18:00:00', 'Payel Vi', NULL, 316.00, 23, 2, 12, '655588995f3e43.76284798', '3377900', 1, 0, 'accountant supplier entry', NULL, 'payel-vi', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(461, '2023-10-12 18:00:00', 'Al kawser', NULL, 963.00, 23, 3, 1, '65558899630c77.73715645', '7921041', 1, 0, 'accountant supplier entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(462, '2023-06-06 18:00:00', 'Al kawser', NULL, 103.00, 23, 4, 4, '655588996419c5.73943907', '6753776', 1, 0, 'accountant supplier entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(463, '2023-04-21 18:00:00', 'Al kawser', NULL, 595.00, 23, 4, 5, '6555889965a136.82510382', '3055312', 1, 0, 'accountant supplier entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(464, '2023-07-20 18:00:00', 'Al kawser', NULL, 460.00, 23, 3, 1, '65558899669e85.47419863', '6182633', 1, 0, 'accountant supplier entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(465, '2023-01-05 18:00:00', 'Al kawser', NULL, 973.00, 23, 4, 5, '65558899679995.47237063', '5995841', 1, 0, 'accountant supplier entry', NULL, 'al-kawser', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(466, '2023-05-14 18:00:00', 'Al Nasba', NULL, 313.00, 23, 5, 9, '655588996b8211.60176127', '8671338', 1, 0, 'accountant supplier entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(467, '2023-03-05 18:00:00', 'Al Nasba', NULL, 515.00, 23, 2, 12, '655588996c7ee0.98200788', '9948490', 1, 0, 'accountant supplier entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(468, '2023-03-16 18:00:00', 'Al Nasba', NULL, 343.00, 23, 2, 11, '655588996d7f98.66776780', '6764601', 1, 0, 'accountant supplier entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(469, '2023-02-19 18:00:00', 'Al Nasba', NULL, 883.00, 23, 2, 12, '655588996e9bf9.67277345', '7496185', 1, 0, 'accountant supplier entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(470, '2023-10-14 18:00:00', 'Al Nasba', NULL, 276.00, 23, 5, 8, '655588996fdb54.33770313', '6261990', 1, 0, 'accountant supplier entry', NULL, 'al-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(471, '2023-01-24 18:00:00', 'Gardian', NULL, 941.00, 23, 2, 10, '6555889973eb43.47703040', '8771864', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(472, '2023-12-19 18:00:00', 'Gardian', NULL, 745.00, 23, 4, 6, '65558899750542.32563692', '8054647', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(473, '2023-11-04 18:00:00', 'Gardian', NULL, 220.00, 23, 5, 7, '65558899762828.40583679', '6969674', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(474, '2023-10-31 18:00:00', 'Gardian', NULL, 597.00, 23, 5, 9, '65558899773f15.20584972', '5528283', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(475, '2023-09-30 18:00:00', 'Gardian', NULL, 764.00, 23, 2, 11, '65558899785355.41680044', '3725986', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(476, '2023-10-19 18:00:00', 'Mustafig treders', NULL, 885.00, 23, 5, 7, '655588997c9cb2.54215737', '6671978', 1, 0, 'accountant supplier entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(477, '2023-03-31 18:00:00', 'Mustafig treders', NULL, 329.00, 23, 5, 8, '655588997de244.39181754', '3143737', 1, 0, 'accountant supplier entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(478, '2023-06-08 18:00:00', 'Mustafig treders', NULL, 447.00, 23, 2, 11, '655588997f0423.89774191', '7070453', 1, 0, 'accountant supplier entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(479, '2023-07-12 18:00:00', 'Mustafig treders', NULL, 850.00, 23, 4, 4, '65558899800f84.52226726', '6899098', 1, 0, 'accountant supplier entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(480, '2023-06-06 18:00:00', 'Mustafig treders', NULL, 287.00, 23, 2, 11, '655588998111c7.58851020', '9583238', 1, 0, 'accountant supplier entry', NULL, 'mustafig-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(481, '2023-10-03 18:00:00', 'Abdul Jabber', NULL, 367.00, 23, 3, 2, '65558899851821.85956092', '8510959', 1, 0, 'accountant supplier entry', NULL, 'abdul-jabber', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(482, '2023-02-19 18:00:00', 'Abdul Jabber', NULL, 143.00, 23, 4, 6, '6555889985f831.38804099', '5213181', 1, 0, 'accountant supplier entry', NULL, 'abdul-jabber', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(483, '2023-05-18 18:00:00', 'Abdul Jabber', NULL, 323.00, 23, 3, 3, '6555889986eb66.02772603', '1689299', 1, 0, 'accountant supplier entry', NULL, 'abdul-jabber', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(484, '2023-02-04 18:00:00', 'Abdul Jabber', NULL, 721.00, 23, 5, 7, '655588998809e0.65987576', '6778225', 1, 0, 'accountant supplier entry', NULL, 'abdul-jabber', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(485, '2023-09-12 18:00:00', 'Abdul Jabber', NULL, 271.00, 23, 4, 5, '6555889988f9d5.62142529', '7911436', 1, 0, 'accountant supplier entry', NULL, 'abdul-jabber', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(486, '2023-11-14 18:00:00', 'Universel treders', NULL, 341.00, 23, 5, 8, '655588998d0797.20779905', '3720477', 1, 0, 'accountant supplier entry', NULL, 'universel-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(487, '2023-06-30 18:00:00', 'Universel treders', NULL, 594.00, 23, 2, 11, '655588998e2563.10169718', '6093336', 1, 0, 'accountant supplier entry', NULL, 'universel-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(488, '2023-11-05 18:00:00', 'Universel treders', NULL, 674.00, 23, 4, 5, '655588998f91d8.20231406', '6169418', 1, 0, 'accountant supplier entry', NULL, 'universel-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(489, '2023-07-16 18:00:00', 'Universel treders', NULL, 337.00, 23, 2, 12, '65558899909c00.44071343', '3575982', 1, 0, 'accountant supplier entry', NULL, 'universel-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(490, '2023-09-07 18:00:00', 'Universel treders', NULL, 250.00, 23, 5, 7, '65558899919df3.21723752', '8233906', 1, 0, 'accountant supplier entry', NULL, 'universel-treders', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(491, '2023-12-14 18:00:00', 'Professor pablication', NULL, 489.00, 23, 3, 2, '65558899957f44.39640680', '5812898', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(492, '2023-04-04 18:00:00', 'Professor pablication', NULL, 810.00, 23, 5, 7, '6555889996a706.67512917', '4318158', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(493, '2023-03-08 18:00:00', 'Professor pablication', NULL, 171.00, 23, 5, 9, '65558899979489.75625845', '1591554', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(494, '2023-07-08 18:00:00', 'Professor pablication', NULL, 784.00, 23, 5, 9, '6555889998dbf5.08419900', '2198195', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(495, '2023-09-03 18:00:00', 'Professor pablication', NULL, 444.00, 23, 2, 11, '655588999a1e67.83927131', '9566748', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(496, '2023-10-20 18:00:00', 'Bismillah papers (banglabazer)', NULL, 537.00, 23, 5, 7, '655588999dbf73.56003845', '5192234', 1, 0, 'accountant supplier entry', NULL, 'bismillah-papers-banglabazer', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(497, '2023-10-17 18:00:00', 'Bismillah papers (banglabazer)', NULL, 806.00, 23, 5, 8, '655588999ecb51.75744410', '8304342', 1, 0, 'accountant supplier entry', NULL, 'bismillah-papers-banglabazer', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(498, '2023-09-07 18:00:00', 'Bismillah papers (banglabazer)', NULL, 392.00, 23, 4, 4, '65558899a00bc6.10161686', '8980190', 1, 0, 'accountant supplier entry', NULL, 'bismillah-papers-banglabazer', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(499, '2023-07-20 18:00:00', 'Bismillah papers (banglabazer)', NULL, 575.00, 23, 5, 7, '65558899a11f12.79712662', '1694354', 1, 0, 'accountant supplier entry', NULL, 'bismillah-papers-banglabazer', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(500, '2023-12-09 18:00:00', 'Bismillah papers (banglabazer)', NULL, 659.00, 23, 4, 4, '65558899a22634.53358191', '7248281', 1, 0, 'accountant supplier entry', NULL, 'bismillah-papers-banglabazer', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(501, '2023-06-03 18:00:00', 'Dewan bazer chittagong union', NULL, 985.00, 23, 5, 7, '65558899a66472.57778056', '3452518', 1, 0, 'accountant supplier entry', NULL, 'dewan-bazer-chittagong-union', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(502, '2023-02-24 18:00:00', 'Dewan bazer chittagong union', NULL, 624.00, 23, 3, 2, '65558899a773b2.98383088', '4274254', 1, 0, 'accountant supplier entry', NULL, 'dewan-bazer-chittagong-union', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(503, '2023-12-09 18:00:00', 'Dewan bazer chittagong union', NULL, 730.00, 23, 5, 7, '65558899a8bb38.42047295', '5850924', 1, 0, 'accountant supplier entry', NULL, 'dewan-bazer-chittagong-union', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(504, '2023-12-03 18:00:00', 'Dewan bazer chittagong union', NULL, 896.00, 23, 3, 1, '65558899a9ba21.17783308', '4678416', 1, 0, 'accountant supplier entry', NULL, 'dewan-bazer-chittagong-union', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(505, '2023-10-19 18:00:00', 'Dewan bazer chittagong union', NULL, 670.00, 23, 2, 10, '65558899aade60.74895547', '1728647', 1, 0, 'accountant supplier entry', NULL, 'dewan-bazer-chittagong-union', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(506, '2023-12-05 18:00:00', 'Suganda', NULL, 319.00, 23, 3, 1, '65558899af3d60.76045027', '7725251', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(507, '2023-07-09 18:00:00', 'Suganda', NULL, 936.00, 23, 3, 1, '65558899b13618.34258774', '9841429', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(508, '2023-09-24 18:00:00', 'Suganda', NULL, 661.00, 23, 2, 11, '65558899b489e2.21916534', '5605271', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(509, '2023-02-14 18:00:00', 'Suganda', NULL, 171.00, 23, 4, 4, '65558899b664f1.19118459', '2972295', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(510, '2023-07-18 18:00:00', 'Suganda', NULL, 635.00, 23, 5, 9, '65558899b785d6.33096330', '2872150', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(511, '2023-05-20 18:00:00', 'Sashas', NULL, 709.00, 23, 2, 11, '65558899bb9de6.15430207', '4443347', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(512, '2023-08-08 18:00:00', 'Sashas', NULL, 274.00, 23, 5, 9, '65558899bd1202.99899070', '1777024', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(513, '2023-09-17 18:00:00', 'Sashas', NULL, 909.00, 23, 5, 7, '65558899be75b9.07051968', '6316669', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(514, '2023-10-01 18:00:00', 'Sashas', NULL, 813.00, 23, 5, 7, '65558899bfa948.15566751', '5943244', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(515, '2023-10-10 18:00:00', 'Sashas', NULL, 461.00, 23, 5, 7, '65558899c0e413.21966584', '2324203', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(516, '2023-04-23 18:00:00', 'sarak nijame', NULL, 285.00, 23, 5, 8, '65558899c52747.44093948', '5712792', 1, 0, 'accountant supplier entry', NULL, 'sarak-nijame', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(517, '2022-12-31 18:00:00', 'sarak nijame', NULL, 645.00, 23, 4, 4, '65558899c65ec3.18511020', '5182861', 1, 0, 'accountant supplier entry', NULL, 'sarak-nijame', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(518, '2023-02-06 18:00:00', 'sarak nijame', NULL, 468.00, 23, 2, 12, '65558899c7a007.69871486', '4524532', 1, 0, 'accountant supplier entry', NULL, 'sarak-nijame', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(519, '2023-07-07 18:00:00', 'sarak nijame', NULL, 453.00, 23, 5, 7, '65558899c90898.04080601', '1163391', 1, 0, 'accountant supplier entry', NULL, 'sarak-nijame', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(520, '2023-03-15 18:00:00', 'sarak nijame', NULL, 431.00, 23, 2, 10, '65558899ca4723.58327896', '8422262', 1, 0, 'accountant supplier entry', NULL, 'sarak-nijame', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(521, '2023-04-10 18:00:00', 'Upaher Galary', NULL, 221.00, 23, 2, 12, '65558899cf9b25.38375884', '6903660', 1, 0, 'accountant supplier entry', NULL, 'upaher-galary', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(522, '2023-05-19 18:00:00', 'Upaher Galary', NULL, 158.00, 23, 5, 7, '65558899d0eee8.93350510', '2815135', 1, 0, 'accountant supplier entry', NULL, 'upaher-galary', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(523, '2023-01-14 18:00:00', 'Upaher Galary', NULL, 981.00, 23, 5, 9, '65558899d211f4.76925429', '2976729', 1, 0, 'accountant supplier entry', NULL, 'upaher-galary', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(524, '2023-11-20 18:00:00', 'Upaher Galary', NULL, 650.00, 23, 2, 11, '65558899d33a92.86211926', '4570812', 1, 0, 'accountant supplier entry', NULL, 'upaher-galary', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(525, '2023-06-09 18:00:00', 'Upaher Galary', NULL, 977.00, 23, 4, 6, '65558899d48ac8.58792166', '1216045', 1, 0, 'accountant supplier entry', NULL, 'upaher-galary', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(526, '2023-04-08 18:00:00', 'colour criation', NULL, 856.00, 23, 5, 7, '65558899daff14.63714021', '8819042', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(527, '2023-11-04 18:00:00', 'colour criation', NULL, 984.00, 23, 4, 6, '65558899dc2586.81284139', '2010321', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(528, '2023-02-04 18:00:00', 'colour criation', NULL, 338.00, 23, 5, 7, '65558899dd41a7.99438634', '1613814', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(529, '2023-02-21 18:00:00', 'colour criation', NULL, 138.00, 23, 2, 12, '65558899de8ba7.18270009', '3803486', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(530, '2023-08-06 18:00:00', 'colour criation', NULL, 583.00, 23, 3, 1, '65558899df8c25.90304543', '8501106', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(531, '2023-06-24 18:00:00', 'Maktabun Nasba', NULL, 133.00, 23, 2, 11, '65558899e358b2.68713065', '4413834', 1, 0, 'accountant supplier entry', NULL, 'maktabun-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(532, '2023-06-09 18:00:00', 'Maktabun Nasba', NULL, 222.00, 23, 3, 1, '65558899e450e3.74485058', '3205758', 1, 0, 'accountant supplier entry', NULL, 'maktabun-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(533, '2023-10-23 18:00:00', 'Maktabun Nasba', NULL, 184.00, 23, 5, 7, '65558899e543c6.23516204', '9035288', 1, 0, 'accountant supplier entry', NULL, 'maktabun-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(534, '2023-04-13 18:00:00', 'Maktabun Nasba', NULL, 447.00, 23, 4, 5, '65558899e66052.03180816', '3164861', 1, 0, 'accountant supplier entry', NULL, 'maktabun-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(535, '2023-03-15 18:00:00', 'Maktabun Nasba', NULL, 119.00, 23, 2, 11, '65558899e77114.00978272', '7364969', 1, 0, 'accountant supplier entry', NULL, 'maktabun-nasba', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(536, '2023-01-20 18:00:00', 'Gardian', NULL, 573.00, 23, 5, 7, '65558899eb32d0.91623187', '2514448', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(537, '2023-06-17 18:00:00', 'Gardian', NULL, 391.00, 23, 2, 10, '65558899ec6c97.37412079', '2598060', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(538, '2023-01-10 18:00:00', 'Gardian', NULL, 274.00, 23, 2, 10, '65558899ed7db2.78005981', '4339964', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(539, '2023-03-19 18:00:00', 'Gardian', NULL, 287.00, 23, 2, 11, '65558899ee7c82.42271335', '1502591', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(540, '2023-03-11 18:00:00', 'Gardian', NULL, 960.00, 23, 3, 2, '65558899ef7919.13847704', '7046765', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(541, '2023-11-08 18:00:00', 'Shohag Trade', NULL, 632.00, 23, 4, 4, '65558899f32011.76375932', '2465779', 1, 0, 'accountant supplier entry', NULL, 'shohag-trade', 1, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(542, '2023-06-02 18:00:00', 'Shohag Trade', NULL, 728.00, 23, 2, 12, '6555889a000140.39055374', '2083257', 1, 0, 'accountant supplier entry', NULL, 'shohag-trade', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(543, '2023-11-05 18:00:00', 'Shohag Trade', NULL, 200.00, 23, 3, 2, '6555889a014fb2.61071660', '4074098', 1, 0, 'accountant supplier entry', NULL, 'shohag-trade', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(544, '2023-04-19 18:00:00', 'Shohag Trade', NULL, 935.00, 23, 5, 8, '6555889a024db9.42685188', '1084553', 1, 0, 'accountant supplier entry', NULL, 'shohag-trade', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(545, '2023-07-31 18:00:00', 'Shohag Trade', NULL, 177.00, 23, 5, 9, '6555889a035486.50604080', '4064121', 1, 0, 'accountant supplier entry', NULL, 'shohag-trade', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(546, '2023-02-05 18:00:00', 'Prassad pracationa', NULL, 766.00, 23, 5, 9, '6555889a070c37.53214391', '3405705', 1, 0, 'accountant supplier entry', NULL, 'prassad-pracationa', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(547, '2023-10-08 18:00:00', 'Prassad pracationa', NULL, 158.00, 23, 3, 1, '6555889a080ab5.42517659', '3943123', 1, 0, 'accountant supplier entry', NULL, 'prassad-pracationa', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(548, '2023-02-16 18:00:00', 'Prassad pracationa', NULL, 754.00, 23, 2, 12, '6555889a0905a2.70600556', '5986540', 1, 0, 'accountant supplier entry', NULL, 'prassad-pracationa', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(549, '2023-01-03 18:00:00', 'Prassad pracationa', NULL, 842.00, 23, 3, 2, '6555889a0a3796.18250977', '7464827', 1, 0, 'accountant supplier entry', NULL, 'prassad-pracationa', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(550, '2023-01-21 18:00:00', 'Prassad pracationa', NULL, 239.00, 23, 4, 4, '6555889a0b7604.24202639', '7393273', 1, 0, 'accountant supplier entry', NULL, 'prassad-pracationa', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(551, '2023-01-13 18:00:00', 'Office Advance', NULL, 126.00, 23, 2, 12, '6555889a0f4f33.03374717', '3215726', 1, 0, 'accountant supplier entry', NULL, 'office-advance', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(552, '2023-01-09 18:00:00', 'Office Advance', NULL, 582.00, 23, 5, 9, '6555889a1077b8.78822475', '8167004', 1, 0, 'accountant supplier entry', NULL, 'office-advance', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(553, '2023-10-13 18:00:00', 'Office Advance', NULL, 168.00, 23, 3, 3, '6555889a11de66.15090312', '5527470', 1, 0, 'accountant supplier entry', NULL, 'office-advance', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(554, '2023-11-04 18:00:00', 'Office Advance', NULL, 438.00, 23, 2, 12, '6555889a12ddf3.97447241', '4634120', 1, 0, 'accountant supplier entry', NULL, 'office-advance', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(555, '2023-08-22 18:00:00', 'Office Advance', NULL, 933.00, 23, 5, 9, '6555889a13dde6.37633952', '9138271', 1, 0, 'accountant supplier entry', NULL, 'office-advance', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(556, '2023-02-04 18:00:00', 'IDEA COMMUNICATION', NULL, 859.00, 23, 2, 12, '6555889a17f289.78201629', '8734041', 1, 0, 'accountant supplier entry', NULL, 'idea-communication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(557, '2023-02-23 18:00:00', 'IDEA COMMUNICATION', NULL, 735.00, 23, 5, 7, '6555889a193204.49497282', '4065626', 1, 0, 'accountant supplier entry', NULL, 'idea-communication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(558, '2023-05-22 18:00:00', 'IDEA COMMUNICATION', NULL, 358.00, 23, 2, 11, '6555889a1a4540.65638152', '6759880', 1, 0, 'accountant supplier entry', NULL, 'idea-communication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(559, '2023-05-06 18:00:00', 'IDEA COMMUNICATION', NULL, 798.00, 23, 4, 4, '6555889a1b4dc2.51647328', '5251020', 1, 0, 'accountant supplier entry', NULL, 'idea-communication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(560, '2023-06-02 18:00:00', 'IDEA COMMUNICATION', NULL, 337.00, 23, 3, 3, '6555889a1c5898.28748263', '9721959', 1, 0, 'accountant supplier entry', NULL, 'idea-communication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(561, '2023-10-13 18:00:00', 'Maria Key House', NULL, 962.00, 23, 4, 5, '6555889a2043c4.00818612', '3496966', 1, 0, 'accountant supplier entry', NULL, 'maria-key-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26');
INSERT INTO `account_logs` (`id`, `date`, `name`, `customer_id`, `amount`, `category_id`, `account_id`, `account_number_id`, `trx_id`, `receipt_no`, `is_expense`, `is_income`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(562, '2023-01-22 18:00:00', 'Maria Key House', NULL, 617.00, 23, 3, 1, '6555889a2145d0.04329843', '6580379', 1, 0, 'accountant supplier entry', NULL, 'maria-key-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(563, '2023-12-05 18:00:00', 'Maria Key House', NULL, 868.00, 23, 5, 8, '6555889a224363.22982189', '6132712', 1, 0, 'accountant supplier entry', NULL, 'maria-key-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(564, '2023-06-03 18:00:00', 'Maria Key House', NULL, 512.00, 23, 2, 10, '6555889a236ed3.39384459', '3682161', 1, 0, 'accountant supplier entry', NULL, 'maria-key-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(565, '2023-12-03 18:00:00', 'Maria Key House', NULL, 676.00, 23, 3, 3, '6555889a245d00.72167024', '1501649', 1, 0, 'accountant supplier entry', NULL, 'maria-key-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(566, '2023-01-05 18:00:00', 'Mayer Doya Lamination', NULL, 693.00, 23, 2, 12, '6555889a289103.78458811', '4638587', 1, 0, 'accountant supplier entry', NULL, 'mayer-doya-lamination', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(567, '2023-10-23 18:00:00', 'Mayer Doya Lamination', NULL, 556.00, 23, 5, 9, '6555889a29c119.48689240', '1028583', 1, 0, 'accountant supplier entry', NULL, 'mayer-doya-lamination', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(568, '2023-08-05 18:00:00', 'Mayer Doya Lamination', NULL, 475.00, 23, 2, 10, '6555889a2ac605.65172699', '4124345', 1, 0, 'accountant supplier entry', NULL, 'mayer-doya-lamination', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(569, '2023-11-14 18:00:00', 'Mayer Doya Lamination', NULL, 973.00, 23, 4, 5, '6555889a2bc748.08035469', '4800142', 1, 0, 'accountant supplier entry', NULL, 'mayer-doya-lamination', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(570, '2023-10-06 18:00:00', 'Mayer Doya Lamination', NULL, 712.00, 23, 5, 8, '6555889a2ce481.11320887', '8051117', 1, 0, 'accountant supplier entry', NULL, 'mayer-doya-lamination', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(571, '2023-12-24 18:00:00', 'Gift Vely', NULL, 147.00, 23, 5, 7, '6555889a305537.43180480', '5961261', 1, 0, 'accountant supplier entry', NULL, 'gift-vely', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(572, '2023-05-20 18:00:00', 'Gift Vely', NULL, 976.00, 23, 3, 3, '6555889a315e63.18051043', '1103853', 1, 0, 'accountant supplier entry', NULL, 'gift-vely', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(573, '2023-04-23 18:00:00', 'Gift Vely', NULL, 804.00, 23, 2, 11, '6555889a325747.68622013', '8727571', 1, 0, 'accountant supplier entry', NULL, 'gift-vely', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(574, '2023-12-17 18:00:00', 'Gift Vely', NULL, 670.00, 23, 4, 4, '6555889a339813.00672617', '5372409', 1, 0, 'accountant supplier entry', NULL, 'gift-vely', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(575, '2023-07-01 18:00:00', 'Gift Vely', NULL, 940.00, 23, 2, 10, '6555889a34bd23.23620667', '2374918', 1, 0, 'accountant supplier entry', NULL, 'gift-vely', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(576, '2023-01-20 18:00:00', 'BM Trading Corporation', NULL, 469.00, 23, 5, 9, '6555889a383501.52471975', '4583066', 1, 0, 'accountant supplier entry', NULL, 'bm-trading-corporation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(577, '2023-02-05 18:00:00', 'BM Trading Corporation', NULL, 504.00, 23, 5, 9, '6555889a396d74.22776059', '5377239', 1, 0, 'accountant supplier entry', NULL, 'bm-trading-corporation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(578, '2023-02-06 18:00:00', 'BM Trading Corporation', NULL, 920.00, 23, 4, 5, '6555889a3a73e2.57151340', '7744268', 1, 0, 'accountant supplier entry', NULL, 'bm-trading-corporation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(579, '2023-07-20 18:00:00', 'BM Trading Corporation', NULL, 422.00, 23, 2, 12, '6555889a3b8ea9.96563093', '2099142', 1, 0, 'accountant supplier entry', NULL, 'bm-trading-corporation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(580, '2023-05-08 18:00:00', 'BM Trading Corporation', NULL, 343.00, 23, 2, 10, '6555889a3c98e1.03847553', '2633675', 1, 0, 'accountant supplier entry', NULL, 'bm-trading-corporation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(581, '2023-01-18 18:00:00', 'Pan Asiatic Pablication', NULL, 877.00, 23, 3, 3, '6555889a406727.43512492', '8684801', 1, 0, 'accountant supplier entry', NULL, 'pan-asiatic-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(582, '2023-02-07 18:00:00', 'Pan Asiatic Pablication', NULL, 174.00, 23, 5, 9, '6555889a416258.10136411', '8061598', 1, 0, 'accountant supplier entry', NULL, 'pan-asiatic-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(583, '2023-06-10 18:00:00', 'Pan Asiatic Pablication', NULL, 404.00, 23, 4, 6, '6555889a425b14.00280496', '1935701', 1, 0, 'accountant supplier entry', NULL, 'pan-asiatic-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(584, '2023-10-10 18:00:00', 'Pan Asiatic Pablication', NULL, 127.00, 23, 2, 10, '6555889a435d81.88248563', '3368378', 1, 0, 'accountant supplier entry', NULL, 'pan-asiatic-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(585, '2023-12-04 18:00:00', 'Pan Asiatic Pablication', NULL, 529.00, 23, 4, 6, '6555889a447d92.91294263', '1132980', 1, 0, 'accountant supplier entry', NULL, 'pan-asiatic-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(586, '2023-10-11 18:00:00', 'BIIT Pablication', NULL, 498.00, 23, 3, 1, '6555889a4851a5.14038603', '5170640', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(587, '2023-09-12 18:00:00', 'BIIT Pablication', NULL, 808.00, 23, 5, 9, '6555889a496791.89568484', '2572234', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(588, '2023-02-18 18:00:00', 'BIIT Pablication', NULL, 965.00, 23, 3, 3, '6555889a4a7581.17471314', '1569373', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(589, '2023-10-06 18:00:00', 'BIIT Pablication', NULL, 668.00, 23, 3, 2, '6555889a4b8545.09468345', '7394810', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(590, '2023-06-22 18:00:00', 'BIIT Pablication', NULL, 308.00, 23, 5, 8, '6555889a4c9312.26046683', '8459488', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(591, '2023-05-08 18:00:00', 'Md Habibur Rahman', NULL, 581.00, 23, 2, 12, '6555889a5039d8.71349142', '5703334', 1, 0, 'accountant supplier entry', NULL, 'md-habibur-rahman', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(592, '2023-01-07 18:00:00', 'Md Habibur Rahman', NULL, 875.00, 23, 5, 8, '6555889a517370.04436391', '4358742', 1, 0, 'accountant supplier entry', NULL, 'md-habibur-rahman', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(593, '2023-05-10 18:00:00', 'Md Habibur Rahman', NULL, 373.00, 23, 5, 9, '6555889a528e36.76347469', '9536108', 1, 0, 'accountant supplier entry', NULL, 'md-habibur-rahman', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(594, '2023-04-21 18:00:00', 'Md Habibur Rahman', NULL, 240.00, 23, 2, 11, '6555889a538917.40446084', '9264852', 1, 0, 'accountant supplier entry', NULL, 'md-habibur-rahman', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(595, '2023-12-18 18:00:00', 'Md Habibur Rahman', NULL, 582.00, 23, 5, 7, '6555889a548ce7.57957584', '3425342', 1, 0, 'accountant supplier entry', NULL, 'md-habibur-rahman', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(596, '2023-04-30 18:00:00', 'BIC', NULL, 670.00, 23, 2, 12, '6555889a586258.83522785', '7463474', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(597, '2023-02-22 18:00:00', 'BIC', NULL, 489.00, 23, 4, 4, '6555889a596ff9.15819535', '4944974', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(598, '2023-08-19 18:00:00', 'BIC', NULL, 211.00, 23, 5, 9, '6555889a5aa870.16420819', '3739491', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(599, '2023-08-10 18:00:00', 'BIC', NULL, 535.00, 23, 4, 5, '6555889a5be5f8.42517453', '2130943', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(600, '2023-12-17 18:00:00', 'BIC', NULL, 480.00, 23, 2, 10, '6555889a5cffd3.54918406', '5352338', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(601, '2023-10-23 18:00:00', 'colour criation', NULL, 320.00, 23, 2, 10, '6555889a6085f0.78577931', '4304164', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(602, '2023-12-03 18:00:00', 'colour criation', NULL, 108.00, 23, 3, 2, '6555889a61a1e2.65461737', '5836551', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(603, '2023-04-15 18:00:00', 'colour criation', NULL, 643.00, 23, 3, 2, '6555889a629ea1.77144461', '1254599', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(604, '2023-12-21 18:00:00', 'colour criation', NULL, 346.00, 23, 2, 10, '6555889a639b13.79570825', '6472211', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(605, '2023-02-07 18:00:00', 'colour criation', NULL, 906.00, 23, 5, 8, '6555889a649776.25316444', '4264507', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(606, '2023-08-05 18:00:00', 'Agig Paper House', NULL, 766.00, 23, 2, 12, '6555889a687523.69948867', '4268022', 1, 0, 'accountant supplier entry', NULL, 'agig-paper-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(607, '2023-08-21 18:00:00', 'Agig Paper House', NULL, 609.00, 23, 4, 5, '6555889a696f90.29762608', '2254143', 1, 0, 'accountant supplier entry', NULL, 'agig-paper-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(608, '2023-08-17 18:00:00', 'Agig Paper House', NULL, 837.00, 23, 5, 7, '6555889a6a8b33.89069621', '7156109', 1, 0, 'accountant supplier entry', NULL, 'agig-paper-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(609, '2023-10-02 18:00:00', 'Agig Paper House', NULL, 644.00, 23, 5, 8, '6555889a6b8c36.68262425', '9185788', 1, 0, 'accountant supplier entry', NULL, 'agig-paper-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(610, '2023-10-24 18:00:00', 'Agig Paper House', NULL, 935.00, 23, 4, 4, '6555889a6c8a95.52086410', '7562003', 1, 0, 'accountant supplier entry', NULL, 'agig-paper-house', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(611, '2023-06-07 18:00:00', 'Ontara Plastic', NULL, 920.00, 23, 3, 1, '6555889a70b231.41750501', '6133964', 1, 0, 'accountant supplier entry', NULL, 'ontara-plastic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(612, '2023-04-03 18:00:00', 'Ontara Plastic', NULL, 351.00, 23, 2, 10, '6555889a71db59.98053009', '6867054', 1, 0, 'accountant supplier entry', NULL, 'ontara-plastic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(613, '2023-05-05 18:00:00', 'Ontara Plastic', NULL, 132.00, 23, 2, 11, '6555889a733392.01060786', '7487392', 1, 0, 'accountant supplier entry', NULL, 'ontara-plastic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(614, '2023-02-21 18:00:00', 'Ontara Plastic', NULL, 803.00, 23, 2, 11, '6555889a7473e1.92322306', '4382930', 1, 0, 'accountant supplier entry', NULL, 'ontara-plastic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(615, '2023-10-02 18:00:00', 'Ontara Plastic', NULL, 499.00, 23, 3, 2, '6555889a7606b1.03853619', '4858384', 1, 0, 'accountant supplier entry', NULL, 'ontara-plastic', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(616, '2023-06-10 18:00:00', 'ZR Printers', NULL, 942.00, 23, 3, 3, '6555889a7a3a86.80261128', '8503164', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(617, '2023-05-31 18:00:00', 'ZR Printers', NULL, 430.00, 23, 3, 2, '6555889a7b9e24.52955717', '6727370', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(618, '2023-09-03 18:00:00', 'ZR Printers', NULL, 119.00, 23, 4, 5, '6555889a7ce7d2.55994928', '4391004', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(619, '2023-10-01 18:00:00', 'ZR Printers', NULL, 150.00, 23, 2, 10, '6555889a7e0960.54517336', '1521557', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(620, '2023-03-21 18:00:00', 'ZR Printers', NULL, 202.00, 23, 5, 8, '6555889a7f3d79.87524338', '8922244', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(621, '2023-11-15 18:00:00', 'MRI Association', NULL, 236.00, 23, 4, 4, '6555889a835201.78370987', '6342436', 1, 0, 'accountant supplier entry', NULL, 'mri-association', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(622, '2023-03-03 18:00:00', 'MRI Association', NULL, 623.00, 23, 2, 11, '6555889a845307.31044812', '3316402', 1, 0, 'accountant supplier entry', NULL, 'mri-association', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(623, '2023-05-19 18:00:00', 'MRI Association', NULL, 177.00, 23, 3, 2, '6555889a85cf89.25182964', '2584222', 1, 0, 'accountant supplier entry', NULL, 'mri-association', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(624, '2023-01-06 18:00:00', 'MRI Association', NULL, 858.00, 23, 5, 8, '6555889a874306.75402769', '9867751', 1, 0, 'accountant supplier entry', NULL, 'mri-association', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(625, '2023-11-23 18:00:00', 'MRI Association', NULL, 467.00, 23, 4, 4, '6555889a8843a3.03219487', '9072645', 1, 0, 'accountant supplier entry', NULL, 'mri-association', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(626, '2023-04-15 18:00:00', 'Nur Lader', NULL, 937.00, 23, 2, 12, '6555889a8cc0b3.68841102', '7658432', 1, 0, 'accountant supplier entry', NULL, 'nur-lader', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(627, '2023-08-17 18:00:00', 'Nur Lader', NULL, 754.00, 23, 2, 12, '6555889a8e0c36.45056590', '2758826', 1, 0, 'accountant supplier entry', NULL, 'nur-lader', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(628, '2023-01-24 18:00:00', 'Nur Lader', NULL, 177.00, 23, 4, 5, '6555889a8f14d7.54799646', '2880969', 1, 0, 'accountant supplier entry', NULL, 'nur-lader', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(629, '2023-08-24 18:00:00', 'Nur Lader', NULL, 383.00, 23, 5, 9, '6555889a907362.60165626', '2636742', 1, 0, 'accountant supplier entry', NULL, 'nur-lader', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(630, '2023-06-08 18:00:00', 'Nur Lader', NULL, 146.00, 23, 3, 1, '6555889a91c4e7.50261143', '7833314', 1, 0, 'accountant supplier entry', NULL, 'nur-lader', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(631, '2023-01-21 18:00:00', 'Gangi', NULL, 414.00, 23, 4, 4, '6555889a95a089.88763290', '7707211', 1, 0, 'accountant supplier entry', NULL, 'gangi', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(632, '2023-08-01 18:00:00', 'Gangi', NULL, 846.00, 23, 3, 1, '6555889a96bdc4.27011209', '3266859', 1, 0, 'accountant supplier entry', NULL, 'gangi', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(633, '2023-07-04 18:00:00', 'Gangi', NULL, 630.00, 23, 3, 2, '6555889a97daf7.03885902', '1991050', 1, 0, 'accountant supplier entry', NULL, 'gangi', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(634, '2023-11-23 18:00:00', 'Gangi', NULL, 599.00, 23, 4, 4, '6555889a98eab7.98900624', '5260323', 1, 0, 'accountant supplier entry', NULL, 'gangi', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(635, '2023-01-09 18:00:00', 'Gangi', NULL, 395.00, 23, 2, 11, '6555889a9a1ca3.23219903', '6680582', 1, 0, 'accountant supplier entry', NULL, 'gangi', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(636, '2023-09-23 18:00:00', 'Mitaly Solution', NULL, 519.00, 23, 2, 10, '6555889a9e0279.14278558', '6203432', 1, 0, 'accountant supplier entry', NULL, 'mitaly-solution', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(637, '2023-04-07 18:00:00', 'Mitaly Solution', NULL, 815.00, 23, 4, 4, '6555889a9ef849.63689886', '8282252', 1, 0, 'accountant supplier entry', NULL, 'mitaly-solution', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(638, '2023-07-18 18:00:00', 'Mitaly Solution', NULL, 121.00, 23, 5, 8, '6555889aa01330.81147599', '2880991', 1, 0, 'accountant supplier entry', NULL, 'mitaly-solution', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(639, '2023-02-20 18:00:00', 'Mitaly Solution', NULL, 585.00, 23, 3, 3, '6555889aa118b1.21651052', '1780556', 1, 0, 'accountant supplier entry', NULL, 'mitaly-solution', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(640, '2023-12-19 18:00:00', 'Mitaly Solution', NULL, 886.00, 23, 4, 6, '6555889aa219a1.22261442', '1743484', 1, 0, 'accountant supplier entry', NULL, 'mitaly-solution', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(641, '2023-06-22 18:00:00', 'CMC Sarak', NULL, 735.00, 23, 3, 2, '6555889aa5f250.38656789', '1402749', 1, 0, 'accountant supplier entry', NULL, 'cmc-sarak', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(642, '2023-11-19 18:00:00', 'CMC Sarak', NULL, 200.00, 23, 2, 11, '6555889aa736a9.22675012', '2951934', 1, 0, 'accountant supplier entry', NULL, 'cmc-sarak', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(643, '2023-10-21 18:00:00', 'CMC Sarak', NULL, 533.00, 23, 4, 5, '6555889aa828f9.82057669', '5011731', 1, 0, 'accountant supplier entry', NULL, 'cmc-sarak', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(644, '2023-03-01 18:00:00', 'CMC Sarak', NULL, 338.00, 23, 2, 11, '6555889aa92c64.17436603', '4825049', 1, 0, 'accountant supplier entry', NULL, 'cmc-sarak', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(645, '2023-12-05 18:00:00', 'CMC Sarak', NULL, 650.00, 23, 5, 7, '6555889aaa4814.18150506', '1541033', 1, 0, 'accountant supplier entry', NULL, 'cmc-sarak', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(646, '2023-06-23 18:00:00', 'Paper View', NULL, 163.00, 23, 5, 7, '6555889aae4ea5.73899030', '8344564', 1, 0, 'accountant supplier entry', NULL, 'paper-view', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(647, '2022-12-31 18:00:00', 'Paper View', NULL, 342.00, 23, 2, 11, '6555889aaf9ed2.78903407', '7268018', 1, 0, 'accountant supplier entry', NULL, 'paper-view', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(648, '2023-12-04 18:00:00', 'Paper View', NULL, 307.00, 23, 5, 7, '6555889ab26f30.45625934', '3725442', 1, 0, 'accountant supplier entry', NULL, 'paper-view', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(649, '2023-02-28 18:00:00', 'Paper View', NULL, 810.00, 23, 5, 9, '6555889ab5a210.40578562', '7588424', 1, 0, 'accountant supplier entry', NULL, 'paper-view', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(650, '2023-08-19 18:00:00', 'Paper View', NULL, 415.00, 23, 3, 1, '6555889ab6bce8.29405369', '8524096', 1, 0, 'accountant supplier entry', NULL, 'paper-view', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(651, '2023-04-10 18:00:00', 'Quelity Care', NULL, 155.00, 23, 4, 4, '6555889aba9887.32979535', '6806125', 1, 0, 'accountant supplier entry', NULL, 'quelity-care', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(652, '2023-11-07 18:00:00', 'Quelity Care', NULL, 623.00, 23, 3, 3, '6555889abb91b3.95176765', '3180830', 1, 0, 'accountant supplier entry', NULL, 'quelity-care', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(653, '2023-01-19 18:00:00', 'Quelity Care', NULL, 806.00, 23, 4, 5, '6555889abcaa53.32355146', '9788328', 1, 0, 'accountant supplier entry', NULL, 'quelity-care', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(654, '2023-03-02 18:00:00', 'Quelity Care', NULL, 984.00, 23, 2, 12, '6555889abdb488.77782434', '4424866', 1, 0, 'accountant supplier entry', NULL, 'quelity-care', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(655, '2023-01-13 18:00:00', 'Quelity Care', NULL, 223.00, 23, 2, 11, '6555889abf2184.30094475', '1399048', 1, 0, 'accountant supplier entry', NULL, 'quelity-care', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(656, '2023-09-23 18:00:00', 'Tech park Trust', NULL, 594.00, 23, 5, 7, '6555889ac366a0.18989720', '7004378', 1, 0, 'accountant supplier entry', NULL, 'tech-park-trust', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(657, '2023-06-03 18:00:00', 'Tech park Trust', NULL, 646.00, 23, 2, 11, '6555889ac48367.37151445', '1893949', 1, 0, 'accountant supplier entry', NULL, 'tech-park-trust', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(658, '2023-10-16 18:00:00', 'Tech park Trust', NULL, 987.00, 23, 2, 10, '6555889ac5a752.84348613', '5119970', 1, 0, 'accountant supplier entry', NULL, 'tech-park-trust', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(659, '2023-08-05 18:00:00', 'Tech park Trust', NULL, 535.00, 23, 2, 11, '6555889ac6cf42.34044119', '9309374', 1, 0, 'accountant supplier entry', NULL, 'tech-park-trust', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(660, '2023-12-06 18:00:00', 'Tech park Trust', NULL, 501.00, 23, 2, 11, '6555889ac83267.09853392', '3231642', 1, 0, 'accountant supplier entry', NULL, 'tech-park-trust', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(661, '2023-06-23 18:00:00', 'Mawlana Richarce', NULL, 729.00, 23, 5, 8, '6555889acd0c85.27726887', '1486737', 1, 0, 'accountant supplier entry', NULL, 'mawlana-richarce', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(662, '2023-11-03 18:00:00', 'Mawlana Richarce', NULL, 134.00, 23, 5, 8, '6555889ace1608.42580617', '7261002', 1, 0, 'accountant supplier entry', NULL, 'mawlana-richarce', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(663, '2023-02-10 18:00:00', 'Mawlana Richarce', NULL, 840.00, 23, 2, 12, '6555889acf1df8.52652500', '1661283', 1, 0, 'accountant supplier entry', NULL, 'mawlana-richarce', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(664, '2023-06-21 18:00:00', 'Mawlana Richarce', NULL, 609.00, 23, 5, 9, '6555889ad04279.58021617', '2260599', 1, 0, 'accountant supplier entry', NULL, 'mawlana-richarce', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(665, '2023-07-02 18:00:00', 'Mawlana Richarce', NULL, 373.00, 23, 5, 9, '6555889ad15ff1.97158962', '7699243', 1, 0, 'accountant supplier entry', NULL, 'mawlana-richarce', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(666, '2023-09-30 18:00:00', 'Joti Book Bingding', NULL, 769.00, 24, 3, 1, '6555889ad680b1.98317950', '9361203', 1, 0, 'accountant supplier entry', NULL, 'joti-book-bingding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(667, '2023-03-04 18:00:00', 'Joti Book Bingding', NULL, 412.00, 24, 4, 5, '6555889ad7c988.47160427', '6526036', 1, 0, 'accountant supplier entry', NULL, 'joti-book-bingding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(668, '2023-05-01 18:00:00', 'Joti Book Bingding', NULL, 487.00, 24, 4, 5, '6555889ad8d5c7.41839749', '8690141', 1, 0, 'accountant supplier entry', NULL, 'joti-book-bingding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(669, '2023-04-18 18:00:00', 'Joti Book Bingding', NULL, 624.00, 24, 5, 8, '6555889ad9df45.18499439', '6888226', 1, 0, 'accountant supplier entry', NULL, 'joti-book-bingding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(670, '2023-02-06 18:00:00', 'Joti Book Bingding', NULL, 428.00, 24, 2, 11, '6555889adaf0c8.14453033', '4699779', 1, 0, 'accountant supplier entry', NULL, 'joti-book-bingding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(671, '2023-08-06 18:00:00', 'Al-Hera Binding', NULL, 260.00, 24, 4, 4, '6555889aded0a2.01604869', '3408325', 1, 0, 'accountant supplier entry', NULL, 'al-hera-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(672, '2023-05-20 18:00:00', 'Al-Hera Binding', NULL, 592.00, 24, 3, 3, '6555889ae01c70.34819538', '5381479', 1, 0, 'accountant supplier entry', NULL, 'al-hera-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(673, '2023-06-05 18:00:00', 'Al-Hera Binding', NULL, 674.00, 24, 4, 4, '6555889ae17185.99257289', '2696208', 1, 0, 'accountant supplier entry', NULL, 'al-hera-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(674, '2023-05-11 18:00:00', 'Al-Hera Binding', NULL, 564.00, 24, 2, 10, '6555889ae27828.23783499', '2102904', 1, 0, 'accountant supplier entry', NULL, 'al-hera-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(675, '2023-09-09 18:00:00', 'Al-Hera Binding', NULL, 523.00, 24, 5, 8, '6555889ae38273.05608170', '5342877', 1, 0, 'accountant supplier entry', NULL, 'al-hera-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(676, '2023-02-10 18:00:00', 'parvej Binding', NULL, 828.00, 24, 2, 10, '6555889ae76c18.36234252', '4044017', 1, 0, 'accountant supplier entry', NULL, 'parvej-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(677, '2023-10-05 18:00:00', 'parvej Binding', NULL, 724.00, 24, 4, 6, '6555889ae87123.03684987', '1356883', 1, 0, 'accountant supplier entry', NULL, 'parvej-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(678, '2023-11-07 18:00:00', 'parvej Binding', NULL, 146.00, 24, 3, 1, '6555889ae9b0c7.26429079', '6349643', 1, 0, 'accountant supplier entry', NULL, 'parvej-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(679, '2023-06-19 18:00:00', 'parvej Binding', NULL, 665.00, 24, 5, 9, '6555889aeaa282.15486333', '3710818', 1, 0, 'accountant supplier entry', NULL, 'parvej-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(680, '2023-10-14 18:00:00', 'parvej Binding', NULL, 620.00, 24, 5, 8, '6555889aebbb86.82790383', '5594059', 1, 0, 'accountant supplier entry', NULL, 'parvej-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(681, '2023-11-20 18:00:00', 'Jahidul Calender Binding', NULL, 178.00, 24, 3, 1, '6555889aef7981.97781812', '3682186', 1, 0, 'accountant supplier entry', NULL, 'jahidul-calender-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(682, '2023-05-05 18:00:00', 'Jahidul Calender Binding', NULL, 601.00, 24, 2, 11, '6555889af0a0c2.84700380', '6549103', 1, 0, 'accountant supplier entry', NULL, 'jahidul-calender-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(683, '2023-01-24 18:00:00', 'Jahidul Calender Binding', NULL, 167.00, 24, 3, 3, '6555889af19a00.18785665', '1803879', 1, 0, 'accountant supplier entry', NULL, 'jahidul-calender-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(684, '2023-07-10 18:00:00', 'Jahidul Calender Binding', NULL, 594.00, 24, 2, 12, '6555889af298e0.69759147', '7259858', 1, 0, 'accountant supplier entry', NULL, 'jahidul-calender-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(685, '2023-01-06 18:00:00', 'Jahidul Calender Binding', NULL, 560.00, 24, 3, 2, '6555889af3dcb1.34837106', '1624907', 1, 0, 'accountant supplier entry', NULL, 'jahidul-calender-binding', 1, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(686, '2023-05-11 18:00:00', 'Jahid binding', NULL, 607.00, 24, 4, 6, '6555889b035243.86388247', '7572801', 1, 0, 'accountant supplier entry', NULL, 'jahid-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(687, '2023-03-05 18:00:00', 'Jahid binding', NULL, 270.00, 24, 2, 12, '6555889b046878.51524452', '4790725', 1, 0, 'accountant supplier entry', NULL, 'jahid-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(688, '2023-11-03 18:00:00', 'Jahid binding', NULL, 367.00, 24, 5, 7, '6555889b05b090.89536810', '4779531', 1, 0, 'accountant supplier entry', NULL, 'jahid-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(689, '2023-11-08 18:00:00', 'Jahid binding', NULL, 223.00, 24, 4, 4, '6555889b06b011.88487640', '3049239', 1, 0, 'accountant supplier entry', NULL, 'jahid-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(690, '2023-09-23 18:00:00', 'Jahid binding', NULL, 564.00, 24, 3, 2, '6555889b07b142.97393395', '2516969', 1, 0, 'accountant supplier entry', NULL, 'jahid-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(691, '2023-02-20 18:00:00', 'Masum binding', NULL, 486.00, 24, 4, 5, '6555889b0b92f7.98973069', '4884675', 1, 0, 'accountant supplier entry', NULL, 'masum-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(692, '2023-06-30 18:00:00', 'Masum binding', NULL, 189.00, 24, 2, 10, '6555889b0ca6e4.92194500', '6550176', 1, 0, 'accountant supplier entry', NULL, 'masum-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(693, '2023-10-24 18:00:00', 'Masum binding', NULL, 655.00, 24, 3, 3, '6555889b0db341.87869794', '8962093', 1, 0, 'accountant supplier entry', NULL, 'masum-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(694, '2023-11-09 18:00:00', 'Masum binding', NULL, 693.00, 24, 5, 8, '6555889b0ee887.01427003', '4302854', 1, 0, 'accountant supplier entry', NULL, 'masum-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(695, '2023-09-16 18:00:00', 'Masum binding', NULL, 789.00, 24, 5, 7, '6555889b0fecb9.87285983', '8460614', 1, 0, 'accountant supplier entry', NULL, 'masum-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(696, '2023-02-28 18:00:00', 'Professor pablication', NULL, 806.00, 24, 3, 1, '6555889b141744.87065899', '4537871', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(697, '2023-07-08 18:00:00', 'Professor pablication', NULL, 755.00, 24, 4, 4, '6555889b151b73.71901809', '5556465', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(698, '2023-07-09 18:00:00', 'Professor pablication', NULL, 980.00, 24, 5, 8, '6555889b165fe3.67170158', '6308191', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(699, '2023-04-17 18:00:00', 'Professor pablication', NULL, 100.00, 24, 3, 1, '6555889b176922.30671543', '6098096', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(700, '2023-04-18 18:00:00', 'Professor pablication', NULL, 425.00, 24, 5, 7, '6555889b187154.56725996', '8696952', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(701, '2023-08-09 18:00:00', 'Suganda', NULL, 668.00, 24, 3, 3, '6555889b1c7009.07848907', '3091609', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(702, '2023-10-14 18:00:00', 'Suganda', NULL, 348.00, 24, 3, 3, '6555889b1d8df1.91475740', '9280373', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(703, '2023-08-23 18:00:00', 'Suganda', NULL, 754.00, 24, 2, 10, '6555889b1f0f95.06258866', '8844471', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(704, '2023-07-06 18:00:00', 'Suganda', NULL, 949.00, 24, 3, 2, '6555889b201b91.32695819', '8657768', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(705, '2023-10-04 18:00:00', 'Suganda', NULL, 199.00, 24, 5, 9, '6555889b2129f4.68876129', '4011319', 1, 0, 'accountant supplier entry', NULL, 'suganda', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(706, '2023-04-12 18:00:00', 'Sashas', NULL, 380.00, 24, 4, 5, '6555889b2512c7.65323333', '7465452', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(707, '2023-09-22 18:00:00', 'Sashas', NULL, 733.00, 24, 5, 8, '6555889b261d97.39468042', '5766152', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(708, '2023-02-28 18:00:00', 'Sashas', NULL, 315.00, 24, 5, 8, '6555889b272761.29832525', '2642642', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(709, '2023-10-16 18:00:00', 'Sashas', NULL, 458.00, 24, 5, 8, '6555889b284fd0.52533727', '8946007', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(710, '2023-06-02 18:00:00', 'Sashas', NULL, 415.00, 24, 3, 1, '6555889b297874.64306131', '7540162', 1, 0, 'accountant supplier entry', NULL, 'sashas', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(711, '2023-06-19 18:00:00', 'colour criation', NULL, 535.00, 24, 5, 8, '6555889b2d2f50.12853565', '6914395', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(712, '2023-05-24 18:00:00', 'colour criation', NULL, 801.00, 24, 4, 6, '6555889b2e4132.95922754', '6628181', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(713, '2023-04-24 18:00:00', 'colour criation', NULL, 684.00, 24, 5, 8, '6555889b2f71a3.99398280', '3905783', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(714, '2023-03-03 18:00:00', 'colour criation', NULL, 757.00, 24, 3, 2, '6555889b30b9a8.61967394', '2106216', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(715, '2023-05-01 18:00:00', 'colour criation', NULL, 884.00, 24, 5, 9, '6555889b31e262.91065979', '4696145', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(716, '2023-10-11 18:00:00', 'Gardian', NULL, 489.00, 24, 2, 10, '6555889b3640d7.94596282', '6797758', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(717, '2023-09-16 18:00:00', 'Gardian', NULL, 861.00, 24, 3, 3, '6555889b379168.70066246', '3957674', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(718, '2023-06-07 18:00:00', 'Gardian', NULL, 779.00, 24, 3, 1, '6555889b38e6b8.66377413', '7521447', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(719, '2023-10-03 18:00:00', 'Gardian', NULL, 693.00, 24, 4, 5, '6555889b3a1e04.78953267', '9406594', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(720, '2023-05-04 18:00:00', 'Gardian', NULL, 935.00, 24, 2, 10, '6555889b3b2534.15873608', '1734450', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(721, '2023-11-02 18:00:00', 'Ali Bindings', NULL, 243.00, 24, 5, 7, '6555889b3faeb7.79818807', '7166428', 1, 0, 'accountant supplier entry', NULL, 'ali-bindings', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(722, '2023-03-23 18:00:00', 'Ali Bindings', NULL, 408.00, 24, 5, 8, '6555889b40f052.26378397', '5458240', 1, 0, 'accountant supplier entry', NULL, 'ali-bindings', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(723, '2023-02-19 18:00:00', 'Ali Bindings', NULL, 665.00, 24, 4, 6, '6555889b424871.47995513', '7003337', 1, 0, 'accountant supplier entry', NULL, 'ali-bindings', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(724, '2023-12-22 18:00:00', 'Ali Bindings', NULL, 922.00, 24, 4, 6, '6555889b43a5d4.31645122', '5046322', 1, 0, 'accountant supplier entry', NULL, 'ali-bindings', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(725, '2023-10-03 18:00:00', 'Ali Bindings', NULL, 412.00, 24, 3, 2, '6555889b44d198.95693680', '8837357', 1, 0, 'accountant supplier entry', NULL, 'ali-bindings', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(726, '2023-12-10 18:00:00', 'Rakib Binding', NULL, 746.00, 24, 4, 6, '6555889b4913f9.22364218', '4809342', 1, 0, 'accountant supplier entry', NULL, 'rakib-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(727, '2023-05-05 18:00:00', 'Rakib Binding', NULL, 339.00, 24, 4, 4, '6555889b4a60a9.16341395', '2008785', 1, 0, 'accountant supplier entry', NULL, 'rakib-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(728, '2023-08-06 18:00:00', 'Rakib Binding', NULL, 171.00, 24, 4, 6, '6555889b4bf520.11927881', '9452506', 1, 0, 'accountant supplier entry', NULL, 'rakib-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(729, '2023-12-21 18:00:00', 'Rakib Binding', NULL, 904.00, 24, 3, 2, '6555889b4d2645.51342092', '3561589', 1, 0, 'accountant supplier entry', NULL, 'rakib-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(730, '2023-11-13 18:00:00', 'Rakib Binding', NULL, 286.00, 24, 3, 3, '6555889b4e4462.64234416', '3958589', 1, 0, 'accountant supplier entry', NULL, 'rakib-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(731, '2023-01-11 18:00:00', 'Jinnat Calander Binding', NULL, 879.00, 24, 5, 7, '6555889b526b93.12608025', '5167446', 1, 0, 'accountant supplier entry', NULL, 'jinnat-calander-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(732, '2023-08-22 18:00:00', 'Jinnat Calander Binding', NULL, 876.00, 24, 3, 3, '6555889b537bf5.01545626', '5275975', 1, 0, 'accountant supplier entry', NULL, 'jinnat-calander-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(733, '2023-11-30 18:00:00', 'Jinnat Calander Binding', NULL, 546.00, 24, 3, 3, '6555889b54c914.62457304', '3825393', 1, 0, 'accountant supplier entry', NULL, 'jinnat-calander-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(734, '2023-09-01 18:00:00', 'Jinnat Calander Binding', NULL, 911.00, 24, 5, 8, '6555889b55d1f3.26751696', '8557139', 1, 0, 'accountant supplier entry', NULL, 'jinnat-calander-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(735, '2023-09-10 18:00:00', 'Jinnat Calander Binding', NULL, 125.00, 24, 5, 9, '6555889b570d23.01642746', '6157844', 1, 0, 'accountant supplier entry', NULL, 'jinnat-calander-binding', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(736, '2023-08-22 18:00:00', 'Arshad Production', NULL, 527.00, 25, 3, 3, '6555889b5bb213.33740775', '4994202', 1, 0, 'accountant supplier entry', NULL, 'arshad-production', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(737, '2023-09-02 18:00:00', 'Arshad Production', NULL, 953.00, 25, 5, 8, '6555889b5cb083.75293352', '3051917', 1, 0, 'accountant supplier entry', NULL, 'arshad-production', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(738, '2023-07-04 18:00:00', 'Arshad Production', NULL, 577.00, 25, 2, 12, '6555889b5dcba3.93626623', '7219240', 1, 0, 'accountant supplier entry', NULL, 'arshad-production', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(739, '2023-12-10 18:00:00', 'Arshad Production', NULL, 985.00, 25, 5, 7, '6555889b5f3a76.43586060', '2812757', 1, 0, 'accountant supplier entry', NULL, 'arshad-production', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(740, '2023-01-10 18:00:00', 'Arshad Production', NULL, 425.00, 25, 2, 10, '6555889b60bcb3.67200347', '7877407', 1, 0, 'accountant supplier entry', NULL, 'arshad-production', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(741, '2023-12-23 18:00:00', 'Hoque Printers', NULL, 118.00, 25, 5, 8, '6555889b64b556.66869269', '7459681', 1, 0, 'accountant supplier entry', NULL, 'hoque-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(742, '2023-03-31 18:00:00', 'Hoque Printers', NULL, 294.00, 25, 4, 6, '6555889b65c712.54991133', '1774977', 1, 0, 'accountant supplier entry', NULL, 'hoque-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(743, '2023-11-01 18:00:00', 'Hoque Printers', NULL, 953.00, 25, 4, 6, '6555889b66ea81.22426724', '1226878', 1, 0, 'accountant supplier entry', NULL, 'hoque-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(744, '2023-11-22 18:00:00', 'Hoque Printers', NULL, 848.00, 25, 3, 1, '6555889b6816b6.46408366', '6608307', 1, 0, 'accountant supplier entry', NULL, 'hoque-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(745, '2023-11-02 18:00:00', 'Hoque Printers', NULL, 948.00, 25, 4, 6, '6555889b68fb85.61533317', '5113695', 1, 0, 'accountant supplier entry', NULL, 'hoque-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(746, '2023-07-13 18:00:00', 'Diganta printers', NULL, 260.00, 25, 5, 9, '6555889b6ce132.63655362', '1929830', 1, 0, 'accountant supplier entry', NULL, 'diganta-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(747, '2023-05-04 18:00:00', 'Diganta printers', NULL, 451.00, 25, 5, 9, '6555889b6de0c4.46484548', '4703891', 1, 0, 'accountant supplier entry', NULL, 'diganta-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(748, '2023-03-21 18:00:00', 'Diganta printers', NULL, 542.00, 25, 3, 2, '6555889b6edb86.58203812', '1347068', 1, 0, 'accountant supplier entry', NULL, 'diganta-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(749, '2023-07-14 18:00:00', 'Diganta printers', NULL, 534.00, 25, 2, 10, '6555889b6feb37.05404332', '9116776', 1, 0, 'accountant supplier entry', NULL, 'diganta-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(750, '2023-05-22 18:00:00', 'Diganta printers', NULL, 498.00, 25, 3, 2, '6555889b7103f7.73216625', '6302361', 1, 0, 'accountant supplier entry', NULL, 'diganta-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(751, '2023-02-24 18:00:00', 'Professor pablication', NULL, 217.00, 25, 5, 9, '6555889b74bb54.36244867', '8509714', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(752, '2023-05-08 18:00:00', 'Professor pablication', NULL, 832.00, 25, 4, 4, '6555889b75f447.66099838', '7712879', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(753, '2023-09-10 18:00:00', 'Professor pablication', NULL, 562.00, 25, 4, 5, '6555889b771233.60363457', '2289419', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(754, '2023-06-24 18:00:00', 'Professor pablication', NULL, 458.00, 25, 4, 4, '6555889b787501.25249006', '6015356', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(755, '2023-01-17 18:00:00', 'Professor pablication', NULL, 799.00, 25, 3, 2, '6555889b799331.96052441', '9234447', 1, 0, 'accountant supplier entry', NULL, 'professor-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(756, '2023-04-17 18:00:00', 'Brahmaputra Printers', NULL, 880.00, 25, 2, 10, '6555889b7d7750.90759079', '9309660', 1, 0, 'accountant supplier entry', NULL, 'brahmaputra-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(757, '2023-12-22 18:00:00', 'Brahmaputra Printers', NULL, 295.00, 25, 2, 12, '6555889b7eceb4.15132619', '8949591', 1, 0, 'accountant supplier entry', NULL, 'brahmaputra-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(758, '2023-06-05 18:00:00', 'Brahmaputra Printers', NULL, 475.00, 25, 4, 6, '6555889b800e42.74159357', '1230631', 1, 0, 'accountant supplier entry', NULL, 'brahmaputra-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(759, '2023-11-30 18:00:00', 'Brahmaputra Printers', NULL, 127.00, 25, 5, 7, '6555889b813940.06617110', '5694669', 1, 0, 'accountant supplier entry', NULL, 'brahmaputra-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(760, '2023-11-06 18:00:00', 'Brahmaputra Printers', NULL, 148.00, 25, 2, 10, '6555889b824071.39102581', '1704995', 1, 0, 'accountant supplier entry', NULL, 'brahmaputra-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(761, '2023-02-02 18:00:00', 'colour criation', NULL, 264.00, 25, 5, 8, '6555889b862b08.79324168', '6106190', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(762, '2023-08-07 18:00:00', 'colour criation', NULL, 821.00, 25, 5, 8, '6555889b874707.19586196', '5554619', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(763, '2023-01-01 18:00:00', 'colour criation', NULL, 359.00, 25, 3, 3, '6555889b888b39.03934250', '9337111', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(764, '2023-02-04 18:00:00', 'colour criation', NULL, 117.00, 25, 2, 12, '6555889b89d254.68150414', '7850943', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(765, '2023-03-31 18:00:00', 'colour criation', NULL, 808.00, 25, 5, 7, '6555889b8b0555.20692455', '2501336', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(766, '2023-09-04 18:00:00', 'Gardian', NULL, 697.00, 25, 3, 3, '6555889b8eb2a2.41409647', '3490840', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(767, '2023-08-21 18:00:00', 'Gardian', NULL, 341.00, 25, 2, 12, '6555889b8fd229.92766987', '6754781', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(768, '2023-04-09 18:00:00', 'Gardian', NULL, 538.00, 25, 2, 11, '6555889b90ce47.38754794', '9598615', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(769, '2023-08-12 18:00:00', 'Gardian', NULL, 591.00, 25, 4, 5, '6555889b91e275.86436953', '5477827', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(770, '2023-12-01 18:00:00', 'Gardian', NULL, 925.00, 25, 2, 12, '6555889b92fc94.94519006', '4130543', 1, 0, 'accountant supplier entry', NULL, 'gardian', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(771, '2023-01-03 18:00:00', 'Sijan Printing', NULL, 255.00, 25, 3, 2, '6555889b972432.72917978', '5448880', 1, 0, 'accountant supplier entry', NULL, 'sijan-printing', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(772, '2023-08-20 18:00:00', 'Sijan Printing', NULL, 112.00, 25, 4, 4, '6555889b982f85.99717019', '3647210', 1, 0, 'accountant supplier entry', NULL, 'sijan-printing', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(773, '2023-03-15 18:00:00', 'Sijan Printing', NULL, 821.00, 25, 2, 11, '6555889b993254.76399490', '4478419', 1, 0, 'accountant supplier entry', NULL, 'sijan-printing', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(774, '2023-04-03 18:00:00', 'Sijan Printing', NULL, 771.00, 25, 2, 11, '6555889b9a57b9.92983722', '3987647', 1, 0, 'accountant supplier entry', NULL, 'sijan-printing', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(775, '2023-08-13 18:00:00', 'Sijan Printing', NULL, 161.00, 25, 3, 2, '6555889b9b6b04.18003811', '8234751', 1, 0, 'accountant supplier entry', NULL, 'sijan-printing', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(776, '2023-03-19 18:00:00', 'BIIT Pablication', NULL, 460.00, 25, 4, 4, '6555889b9f8cb0.63490480', '1408877', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(777, '2023-01-06 18:00:00', 'BIIT Pablication', NULL, 545.00, 25, 3, 2, '6555889ba09534.95281022', '6330851', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(778, '2023-04-06 18:00:00', 'BIIT Pablication', NULL, 207.00, 25, 3, 1, '6555889ba1ad83.87847164', '6091392', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(779, '2023-07-10 18:00:00', 'BIIT Pablication', NULL, 554.00, 25, 4, 4, '6555889ba2df93.77093413', '9103129', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(780, '2023-02-11 18:00:00', 'BIIT Pablication', NULL, 791.00, 25, 4, 5, '6555889ba41002.21961736', '8573204', 1, 0, 'accountant supplier entry', NULL, 'biit-pablication', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(781, '2023-11-20 18:00:00', 'BIC', NULL, 238.00, 25, 3, 1, '6555889ba7c0f4.27389728', '8396007', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(782, '2023-07-22 18:00:00', 'BIC', NULL, 384.00, 25, 2, 12, '6555889ba92764.72404724', '9906426', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(783, '2023-07-05 18:00:00', 'BIC', NULL, 619.00, 25, 4, 5, '6555889baa3e02.63566458', '1496405', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(784, '2023-08-23 18:00:00', 'BIC', NULL, 477.00, 25, 4, 6, '6555889bab53b3.51614037', '7196930', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(785, '2023-06-09 18:00:00', 'BIC', NULL, 364.00, 25, 5, 9, '6555889bac7ad0.22828039', '6460814', 1, 0, 'accountant supplier entry', NULL, 'bic', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(786, '2023-09-13 18:00:00', 'colour criation', NULL, 761.00, 25, 5, 7, '6555889bb1dd20.84824971', '6074519', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(787, '2023-03-19 18:00:00', 'colour criation', NULL, 836.00, 25, 2, 11, '6555889bb433f5.29892080', '6832349', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(788, '2023-02-02 18:00:00', 'colour criation', NULL, 370.00, 25, 2, 11, '6555889bb67354.68341660', '9016619', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(789, '2023-01-21 18:00:00', 'colour criation', NULL, 714.00, 25, 5, 8, '6555889bb7de50.69298847', '9758625', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(790, '2023-05-12 18:00:00', 'colour criation', NULL, 395.00, 25, 5, 8, '6555889bb907d1.92362004', '2524828', 1, 0, 'accountant supplier entry', NULL, 'colour-criation', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27');
INSERT INTO `account_logs` (`id`, `date`, `name`, `customer_id`, `amount`, `category_id`, `account_id`, `account_number_id`, `trx_id`, `receipt_no`, `is_expense`, `is_income`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(791, '2023-03-17 18:00:00', 'ZR Printers', NULL, 212.00, 25, 3, 3, '6555889bbdce65.61782631', '9199244', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(792, '2023-11-02 18:00:00', 'ZR Printers', NULL, 439.00, 25, 2, 11, '6555889bbf7b66.74791392', '4297439', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(793, '2023-03-19 18:00:00', 'ZR Printers', NULL, 749.00, 25, 2, 11, '6555889bc0d9c8.98808410', '8740402', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(794, '2023-02-05 18:00:00', 'ZR Printers', NULL, 860.00, 25, 4, 4, '6555889bc2abd3.93680583', '2059931', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(795, '2023-12-13 18:00:00', 'ZR Printers', NULL, 168.00, 25, 4, 5, '6555889bc416d6.92195733', '2011184', 1, 0, 'accountant supplier entry', NULL, 'zr-printers', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(796, '2023-02-28 18:00:00', 'The Imprint Press', NULL, 717.00, 25, 3, 1, '6555889bc95775.18933833', '9668509', 1, 0, 'accountant supplier entry', NULL, 'the-imprint-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(797, '2023-10-02 18:00:00', 'The Imprint Press', NULL, 374.00, 25, 5, 8, '6555889bcaf606.39267258', '1161521', 1, 0, 'accountant supplier entry', NULL, 'the-imprint-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(798, '2023-05-09 18:00:00', 'The Imprint Press', NULL, 135.00, 25, 5, 8, '6555889bcc26e1.27681659', '9378336', 1, 0, 'accountant supplier entry', NULL, 'the-imprint-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(799, '2023-02-24 18:00:00', 'The Imprint Press', NULL, 609.00, 25, 5, 9, '6555889bcd5906.70526083', '6157868', 1, 0, 'accountant supplier entry', NULL, 'the-imprint-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(800, '2023-11-16 18:00:00', 'The Imprint Press', NULL, 525.00, 25, 5, 8, '6555889bce6838.80789221', '6604304', 1, 0, 'accountant supplier entry', NULL, 'the-imprint-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(801, '2023-06-23 18:00:00', 'Al falah Printing Press', NULL, 484.00, 25, 5, 7, '6555889bd36865.64311183', '4447390', 1, 0, 'accountant supplier entry', NULL, 'al-falah-printing-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(802, '2023-08-17 18:00:00', 'Al falah Printing Press', NULL, 950.00, 25, 3, 1, '6555889bd4c4e9.65895559', '7330109', 1, 0, 'accountant supplier entry', NULL, 'al-falah-printing-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(803, '2023-02-07 18:00:00', 'Al falah Printing Press', NULL, 967.00, 25, 3, 1, '6555889bd5f958.12867379', '8720257', 1, 0, 'accountant supplier entry', NULL, 'al-falah-printing-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(804, '2023-09-08 18:00:00', 'Al falah Printing Press', NULL, 265.00, 25, 3, 3, '6555889bd71749.61382472', '7786456', 1, 0, 'accountant supplier entry', NULL, 'al-falah-printing-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(805, '2023-01-07 18:00:00', 'Al falah Printing Press', NULL, 462.00, 25, 3, 2, '6555889bd831f8.67742551', '7690135', 1, 0, 'accountant supplier entry', NULL, 'al-falah-printing-press', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(806, '2023-10-06 18:00:00', 'Rafiq onubad', NULL, 443.00, 25, 4, 5, '6555889bdc47c4.95908320', '2886446', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(807, '2023-09-03 18:00:00', 'Rafiq onubad', NULL, 957.00, 25, 5, 8, '6555889bde1708.18236304', '6090979', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(808, '2023-10-09 18:00:00', 'Rafiq onubad', NULL, 522.00, 25, 5, 8, '6555889bdf8eb4.76597023', '1612725', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(809, '2023-05-21 18:00:00', 'Rafiq onubad', NULL, 206.00, 25, 5, 9, '6555889be0c645.88950519', '9973781', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(810, '2023-08-13 18:00:00', 'Rafiq onubad', NULL, 175.00, 25, 3, 1, '6555889be2aa04.37982123', '7994468', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(811, '2023-12-01 18:00:00', 'Rafiq onubad', NULL, 546.00, 25, 5, 7, '6555889be79cd6.54245088', '5431867', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(812, '2023-10-11 18:00:00', 'Rafiq onubad', NULL, 683.00, 25, 3, 1, '6555889be938e4.90780101', '5109201', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(813, '2023-12-11 18:00:00', 'Rafiq onubad', NULL, 182.00, 25, 2, 12, '6555889bea7e13.06458889', '2667744', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(814, '2023-11-30 18:00:00', 'Rafiq onubad', NULL, 980.00, 25, 4, 6, '6555889bec5bb0.86555842', '1249794', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(815, '2023-12-15 18:00:00', 'Rafiq onubad', NULL, 971.00, 25, 5, 9, '6555889bedab92.79451684', '6865190', 1, 0, 'accountant supplier entry', NULL, 'rafiq-onubad', 1, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(816, '2023-11-17 21:05:43', 'mr branch1', NULL, 1858.00, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 21:05:43', '2023-11-17 21:05:43'),
(817, '2023-11-17 21:39:06', 'mr branch1', NULL, 1000.00, 1, 2, 1, '343423', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 21:39:06', '2023-11-17 21:39:06'),
(818, '2023-11-17 21:47:20', 'mr branch1', NULL, -1858.00, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin rejected client payment', 2, 'mr-branch1', 1, '2023-11-17 21:47:20', '2023-11-17 21:47:20'),
(819, '2023-11-17 21:47:27', 'mr branch1', NULL, 1858.00, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 21:47:27', '2023-11-17 21:47:27'),
(820, '2023-11-17 21:47:52', 'mr branch1', NULL, -1000.00, 1, 2, 1, '343423', NULL, 0, 1, 'admin rejected client payment', 2, 'mr-branch1', 1, '2023-11-17 21:47:52', '2023-11-17 21:47:52'),
(821, '2023-11-17 21:47:54', 'mr branch1', NULL, 1000.00, 1, 2, 1, '343423', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 21:47:54', '2023-11-17 21:47:54'),
(822, '2023-11-17 21:50:55', 'mr branch1', NULL, 878.00, 1, 2, 1, '3434', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 21:50:55', '2023-11-17 21:50:55'),
(823, '2023-11-17 21:50:57', 'mr branch1', NULL, 899.00, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 21:50:57', '2023-11-17 21:50:57'),
(824, '2023-11-17 21:50:58', 'mr branch1', NULL, 877.00, 1, 2, 1, '3434', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 21:50:58', '2023-11-17 21:50:58'),
(825, '2023-11-17 22:18:19', 'mr admin', NULL, 2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin received and inserted client payment', 2, 'mr-admin', 1, '2023-11-17 22:18:19', '2023-11-17 22:18:19'),
(826, '2023-11-17 22:24:57', 'mr admin', NULL, -2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin rejected client payment', 2, 'mr-admin', 1, '2023-11-17 22:24:57', '2023-11-17 22:24:57'),
(827, '2023-11-17 22:30:58', 'mr admin', NULL, 2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin received and inserted client payment', 2, 'mr-admin', 1, '2023-11-17 22:30:58', '2023-11-17 22:30:58'),
(828, '2023-11-17 22:31:25', 'mr admin', NULL, -2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin rejected client payment', 2, 'mr-admin', 1, '2023-11-17 22:31:25', '2023-11-17 22:31:25'),
(829, '2023-11-17 22:32:58', 'mr admin', NULL, 2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin received and inserted client payment', 2, 'mr-admin', 1, '2023-11-17 22:32:58', '2023-11-17 22:32:58'),
(830, '2023-11-17 22:34:23', 'mr admin', NULL, -2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin rejected client payment', 2, 'mr-admin', 1, '2023-11-17 22:34:23', '2023-11-17 22:34:23'),
(831, '2023-11-17 22:37:12', 'mr admin', NULL, 2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin received and inserted client payment', 2, 'mr-admin', 1, '2023-11-17 22:37:12', '2023-11-17 22:37:12'),
(832, '2023-11-17 22:37:16', 'mr admin', NULL, -2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin rejected client payment', 2, 'mr-admin', 1, '2023-11-17 22:37:16', '2023-11-17 22:37:16'),
(833, '2023-11-17 22:38:50', 'mr admin', NULL, 2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin received and inserted client payment', 2, 'mr-admin', 1, '2023-11-17 22:38:50', '2023-11-17 22:38:50'),
(834, '2023-11-17 22:39:03', 'mr admin', NULL, -2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin rejected client payment', 2, 'mr-admin', 1, '2023-11-17 22:39:03', '2023-11-17 22:39:03'),
(835, '2023-11-17 22:39:13', 'mr admin', NULL, 2261.20, 1, 2, 1, '3423110100003250', NULL, 0, 1, 'admin received and inserted client payment', 2, 'mr-admin', 1, '2023-11-17 22:39:13', '2023-11-17 22:39:13'),
(836, '2023-11-17 22:50:22', 'mr branch1', NULL, 660.00, 1, 2, 1, '3423110100020150', NULL, 0, 1, 'admin accepted payment', 2, 'mr-branch1', 1, '2023-11-17 22:50:22', '2023-11-17 22:50:22'),
(837, '2023-11-17 23:51:05', 'mr branch1', NULL, 899.00, 1, 2, 1, '3423110100003250', '10006', 0, 1, 'admin received and inserted client payment', 2, 'mr-branch1', 1, '2023-11-17 23:51:05', '2023-11-17 23:51:05'),
(838, '2023-11-17 23:51:05', 'mr branch1', NULL, 660.00, 1, 2, 1, '3423110100020150', '10007', 0, 1, 'admin received and inserted client payment', 2, 'mr-branch1', 1, '2023-11-17 23:51:05', '2023-11-17 23:51:05'),
(839, '2023-11-17 23:56:16', 'mr branch1', NULL, 1499.60, 1, 2, 1, '3423110100042098', '10008', 0, 1, 'admin received and inserted client payment', 2, 'mr-branch1', 1, '2023-11-17 23:56:16', '2023-11-17 23:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `account_log_attachments`
--

CREATE TABLE `account_log_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `account_log_id` bigint UNSIGNED DEFAULT NULL,
  `attachment` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_numbers`
--

CREATE TABLE `account_numbers` (
  `id` bigint UNSIGNED NOT NULL,
  `account_id` bigint DEFAULT NULL,
  `value` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_numbers`
--

INSERT INTO `account_numbers` (`id`, `account_id`, `value`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '20503110201262812', NULL, '16555e43396fe4', 1, '2023-11-16 09:43:15', '2023-11-16 09:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `account_supplier_logs`
--

CREATE TABLE `account_supplier_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `account_log_id` bigint UNSIGNED DEFAULT NULL,
  `supplier_id` bigint UNSIGNED DEFAULT NULL,
  `supplier_type` enum('paper','binding','print','designer') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` enum('opening','bill','payment') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `attachment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_supplier_logs`
--

INSERT INTO `account_supplier_logs` (`id`, `account_log_id`, `supplier_id`, `supplier_type`, `payment_type`, `amount`, `name`, `description`, `date`, `attachment`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'paper', 'opening', 5704.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(2, NULL, 1, 'paper', 'bill', 759.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(3, NULL, 1, 'paper', 'bill', 697.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(4, NULL, 1, 'paper', 'bill', 324.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(5, NULL, 1, 'paper', 'bill', 831.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(6, NULL, 1, 'paper', 'bill', 805.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(7, 426, 1, 'paper', 'payment', 282.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(8, 427, 1, 'paper', 'payment', 133.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(9, 428, 1, 'paper', 'payment', 698.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(10, 429, 1, 'paper', 'payment', 706.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(11, 430, 1, 'paper', 'payment', 843.00, 'Fatah Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(12, NULL, 2, 'paper', 'opening', 8578.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(13, NULL, 2, 'paper', 'bill', 974.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(14, NULL, 2, 'paper', 'bill', 353.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(15, NULL, 2, 'paper', 'bill', 247.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(16, NULL, 2, 'paper', 'bill', 366.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(17, NULL, 2, 'paper', 'bill', 143.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(18, 431, 2, 'paper', 'payment', 955.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(19, 432, 2, 'paper', 'payment', 497.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(20, 433, 2, 'paper', 'payment', 248.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(21, 434, 2, 'paper', 'payment', 194.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(22, 435, 2, 'paper', 'payment', 305.00, 'S Alam', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(23, NULL, 3, 'paper', 'opening', 6600.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(24, NULL, 3, 'paper', 'bill', 638.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(25, NULL, 3, 'paper', 'bill', 699.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(26, NULL, 3, 'paper', 'bill', 343.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(27, NULL, 3, 'paper', 'bill', 300.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(28, NULL, 3, 'paper', 'bill', 338.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(29, 436, 3, 'paper', 'payment', 113.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(30, 437, 3, 'paper', 'payment', 797.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(31, 438, 3, 'paper', 'payment', 150.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(32, 439, 3, 'paper', 'payment', 346.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(33, 440, 3, 'paper', 'payment', 909.00, 'Isan Paper House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(34, NULL, 4, 'paper', 'opening', 7097.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(35, NULL, 4, 'paper', 'bill', 944.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(36, NULL, 4, 'paper', 'bill', 656.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(37, NULL, 4, 'paper', 'bill', 941.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(38, NULL, 4, 'paper', 'bill', 362.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(39, NULL, 4, 'paper', 'bill', 635.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(40, 441, 4, 'paper', 'payment', 939.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(41, 442, 4, 'paper', 'payment', 994.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(42, 443, 4, 'paper', 'payment', 344.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(43, 444, 4, 'paper', 'payment', 532.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(44, 445, 4, 'paper', 'payment', 331.00, 'Mahmud', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(45, NULL, 5, 'paper', 'opening', 6923.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(46, NULL, 5, 'paper', 'bill', 393.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(47, NULL, 5, 'paper', 'bill', 423.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(48, NULL, 5, 'paper', 'bill', 464.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(49, NULL, 5, 'paper', 'bill', 739.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(50, NULL, 5, 'paper', 'bill', 676.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(51, 446, 5, 'paper', 'payment', 810.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(52, 447, 5, 'paper', 'payment', 480.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(53, 448, 5, 'paper', 'payment', 703.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(54, 449, 5, 'paper', 'payment', 365.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(55, 450, 5, 'paper', 'payment', 873.00, 'Al Hamra Paper  House', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(56, NULL, 6, 'paper', 'opening', 6407.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(57, NULL, 6, 'paper', 'bill', 467.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(58, NULL, 6, 'paper', 'bill', 243.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(59, NULL, 6, 'paper', 'bill', 121.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(60, NULL, 6, 'paper', 'bill', 714.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(61, NULL, 6, 'paper', 'bill', 286.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(62, 451, 6, 'paper', 'payment', 424.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(63, 452, 6, 'paper', 'payment', 465.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(64, 453, 6, 'paper', 'payment', 583.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(65, 454, 6, 'paper', 'payment', 149.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(66, 455, 6, 'paper', 'payment', 920.00, 'Nasim Fayel', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(67, NULL, 7, 'paper', 'opening', 7177.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(68, NULL, 7, 'paper', 'bill', 905.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(69, NULL, 7, 'paper', 'bill', 107.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(70, NULL, 7, 'paper', 'bill', 790.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(71, NULL, 7, 'paper', 'bill', 366.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(72, NULL, 7, 'paper', 'bill', 672.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(73, 456, 7, 'paper', 'payment', 738.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(74, 457, 7, 'paper', 'payment', 898.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(75, 458, 7, 'paper', 'payment', 246.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(76, 459, 7, 'paper', 'payment', 117.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(77, 460, 7, 'paper', 'payment', 316.00, 'Payel Vi', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(78, NULL, 8, 'paper', 'opening', 9118.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(79, NULL, 8, 'paper', 'bill', 287.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(80, NULL, 8, 'paper', 'bill', 478.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(81, NULL, 8, 'paper', 'bill', 952.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(82, NULL, 8, 'paper', 'bill', 784.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(83, NULL, 8, 'paper', 'bill', 390.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(84, 461, 8, 'paper', 'payment', 963.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(85, 462, 8, 'paper', 'payment', 103.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(86, 463, 8, 'paper', 'payment', 595.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(87, 464, 8, 'paper', 'payment', 460.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(88, 465, 8, 'paper', 'payment', 973.00, 'Al kawser', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(89, NULL, 9, 'paper', 'opening', 8837.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(90, NULL, 9, 'paper', 'bill', 644.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(91, NULL, 9, 'paper', 'bill', 619.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(92, NULL, 9, 'paper', 'bill', 465.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(93, NULL, 9, 'paper', 'bill', 643.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(94, NULL, 9, 'paper', 'bill', 105.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(95, 466, 9, 'paper', 'payment', 313.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(96, 467, 9, 'paper', 'payment', 515.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(97, 468, 9, 'paper', 'payment', 343.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(98, 469, 9, 'paper', 'payment', 883.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(99, 470, 9, 'paper', 'payment', 276.00, 'Al Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(100, NULL, 10, 'paper', 'opening', 7499.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(101, NULL, 10, 'paper', 'bill', 902.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(102, NULL, 10, 'paper', 'bill', 190.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(103, NULL, 10, 'paper', 'bill', 673.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(104, NULL, 10, 'paper', 'bill', 947.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(105, NULL, 10, 'paper', 'bill', 512.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(106, 471, 10, 'paper', 'payment', 941.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(107, 472, 10, 'paper', 'payment', 745.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(108, 473, 10, 'paper', 'payment', 220.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(109, 474, 10, 'paper', 'payment', 597.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(110, 475, 10, 'paper', 'payment', 764.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(111, NULL, 11, 'paper', 'opening', 7843.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(112, NULL, 11, 'paper', 'bill', 395.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(113, NULL, 11, 'paper', 'bill', 161.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(114, NULL, 11, 'paper', 'bill', 701.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(115, NULL, 11, 'paper', 'bill', 136.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(116, NULL, 11, 'paper', 'bill', 753.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(117, 476, 11, 'paper', 'payment', 885.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(118, 477, 11, 'paper', 'payment', 329.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(119, 478, 11, 'paper', 'payment', 447.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(120, 479, 11, 'paper', 'payment', 850.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(121, 480, 11, 'paper', 'payment', 287.00, 'Mustafig treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(122, NULL, 12, 'paper', 'opening', 9479.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(123, NULL, 12, 'paper', 'bill', 661.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(124, NULL, 12, 'paper', 'bill', 140.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(125, NULL, 12, 'paper', 'bill', 771.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(126, NULL, 12, 'paper', 'bill', 851.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(127, NULL, 12, 'paper', 'bill', 530.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(128, 481, 12, 'paper', 'payment', 367.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(129, 482, 12, 'paper', 'payment', 143.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(130, 483, 12, 'paper', 'payment', 323.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(131, 484, 12, 'paper', 'payment', 721.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(132, 485, 12, 'paper', 'payment', 271.00, 'Abdul Jabber', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(133, NULL, 13, 'paper', 'opening', 7384.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(134, NULL, 13, 'paper', 'bill', 269.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(135, NULL, 13, 'paper', 'bill', 496.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(136, NULL, 13, 'paper', 'bill', 862.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(137, NULL, 13, 'paper', 'bill', 169.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(138, NULL, 13, 'paper', 'bill', 792.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(139, 486, 13, 'paper', 'payment', 341.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(140, 487, 13, 'paper', 'payment', 594.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(141, 488, 13, 'paper', 'payment', 674.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(142, 489, 13, 'paper', 'payment', 337.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(143, 490, 13, 'paper', 'payment', 250.00, 'Universel treders', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(144, NULL, 14, 'paper', 'opening', 9752.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(145, NULL, 14, 'paper', 'bill', 748.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(146, NULL, 14, 'paper', 'bill', 985.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(147, NULL, 14, 'paper', 'bill', 582.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(148, NULL, 14, 'paper', 'bill', 390.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(149, NULL, 14, 'paper', 'bill', 863.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(150, 491, 14, 'paper', 'payment', 489.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(151, 492, 14, 'paper', 'payment', 810.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(152, 493, 14, 'paper', 'payment', 171.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(153, 494, 14, 'paper', 'payment', 784.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(154, 495, 14, 'paper', 'payment', 444.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(155, NULL, 15, 'paper', 'opening', 8574.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(156, NULL, 15, 'paper', 'bill', 461.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(157, NULL, 15, 'paper', 'bill', 822.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(158, NULL, 15, 'paper', 'bill', 235.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(159, NULL, 15, 'paper', 'bill', 585.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(160, NULL, 15, 'paper', 'bill', 951.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(161, 496, 15, 'paper', 'payment', 537.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(162, 497, 15, 'paper', 'payment', 806.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(163, 498, 15, 'paper', 'payment', 392.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(164, 499, 15, 'paper', 'payment', 575.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(165, 500, 15, 'paper', 'payment', 659.00, 'Bismillah papers (banglabazer)', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(166, NULL, 16, 'paper', 'opening', 5109.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(167, NULL, 16, 'paper', 'bill', 678.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(168, NULL, 16, 'paper', 'bill', 668.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(169, NULL, 16, 'paper', 'bill', 395.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(170, NULL, 16, 'paper', 'bill', 877.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(171, NULL, 16, 'paper', 'bill', 132.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(172, 501, 16, 'paper', 'payment', 985.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(173, 502, 16, 'paper', 'payment', 624.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(174, 503, 16, 'paper', 'payment', 730.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(175, 504, 16, 'paper', 'payment', 896.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(176, 505, 16, 'paper', 'payment', 670.00, 'Dewan bazer chittagong union', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(177, NULL, 17, 'paper', 'opening', 8149.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(178, NULL, 17, 'paper', 'bill', 518.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(179, NULL, 17, 'paper', 'bill', 762.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(180, NULL, 17, 'paper', 'bill', 643.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(181, NULL, 17, 'paper', 'bill', 843.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(182, NULL, 17, 'paper', 'bill', 830.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(183, 506, 17, 'paper', 'payment', 319.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(184, 507, 17, 'paper', 'payment', 936.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(185, 508, 17, 'paper', 'payment', 661.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(186, 509, 17, 'paper', 'payment', 171.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(187, 510, 17, 'paper', 'payment', 635.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(188, NULL, 18, 'paper', 'opening', 8724.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(189, NULL, 18, 'paper', 'bill', 531.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(190, NULL, 18, 'paper', 'bill', 509.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(191, NULL, 18, 'paper', 'bill', 873.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(192, NULL, 18, 'paper', 'bill', 127.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(193, NULL, 18, 'paper', 'bill', 934.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(194, 511, 18, 'paper', 'payment', 709.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(195, 512, 18, 'paper', 'payment', 274.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(196, 513, 18, 'paper', 'payment', 909.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(197, 514, 18, 'paper', 'payment', 813.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(198, 515, 18, 'paper', 'payment', 461.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(199, NULL, 19, 'paper', 'opening', 5934.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(200, NULL, 19, 'paper', 'bill', 900.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(201, NULL, 19, 'paper', 'bill', 157.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(202, NULL, 19, 'paper', 'bill', 618.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(203, NULL, 19, 'paper', 'bill', 943.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(204, NULL, 19, 'paper', 'bill', 889.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(205, 516, 19, 'paper', 'payment', 285.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(206, 517, 19, 'paper', 'payment', 645.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(207, 518, 19, 'paper', 'payment', 468.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(208, 519, 19, 'paper', 'payment', 453.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(209, 520, 19, 'paper', 'payment', 431.00, 'sarak nijame', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(210, NULL, 20, 'paper', 'opening', 8580.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(211, NULL, 20, 'paper', 'bill', 1000.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(212, NULL, 20, 'paper', 'bill', 416.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(213, NULL, 20, 'paper', 'bill', 723.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(214, NULL, 20, 'paper', 'bill', 153.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(215, NULL, 20, 'paper', 'bill', 449.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(216, 521, 20, 'paper', 'payment', 221.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(217, 522, 20, 'paper', 'payment', 158.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(218, 523, 20, 'paper', 'payment', 981.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(219, 524, 20, 'paper', 'payment', 650.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(220, 525, 20, 'paper', 'payment', 977.00, 'Upaher Galary', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(221, NULL, 21, 'paper', 'opening', 6602.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(222, NULL, 21, 'paper', 'bill', 660.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(223, NULL, 21, 'paper', 'bill', 902.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(224, NULL, 21, 'paper', 'bill', 549.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(225, NULL, 21, 'paper', 'bill', 916.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(226, NULL, 21, 'paper', 'bill', 795.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(227, 526, 21, 'paper', 'payment', 856.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(228, 527, 21, 'paper', 'payment', 984.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(229, 528, 21, 'paper', 'payment', 338.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(230, 529, 21, 'paper', 'payment', 138.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(231, 530, 21, 'paper', 'payment', 583.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(232, NULL, 22, 'paper', 'opening', 5471.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(233, NULL, 22, 'paper', 'bill', 835.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(234, NULL, 22, 'paper', 'bill', 358.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(235, NULL, 22, 'paper', 'bill', 447.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(236, NULL, 22, 'paper', 'bill', 193.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(237, NULL, 22, 'paper', 'bill', 939.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(238, 531, 22, 'paper', 'payment', 133.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(239, 532, 22, 'paper', 'payment', 222.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(240, 533, 22, 'paper', 'payment', 184.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(241, 534, 22, 'paper', 'payment', 447.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(242, 535, 22, 'paper', 'payment', 119.00, 'Maktabun Nasba', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(243, NULL, 23, 'paper', 'opening', 9339.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(244, NULL, 23, 'paper', 'bill', 949.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(245, NULL, 23, 'paper', 'bill', 541.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(246, NULL, 23, 'paper', 'bill', 935.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(247, NULL, 23, 'paper', 'bill', 168.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(248, NULL, 23, 'paper', 'bill', 387.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(249, 536, 23, 'paper', 'payment', 573.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(250, 537, 23, 'paper', 'payment', 391.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(251, 538, 23, 'paper', 'payment', 274.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(252, 539, 23, 'paper', 'payment', 287.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(253, 540, 23, 'paper', 'payment', 960.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(254, NULL, 24, 'paper', 'opening', 7907.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(255, NULL, 24, 'paper', 'bill', 343.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(256, NULL, 24, 'paper', 'bill', 840.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(257, NULL, 24, 'paper', 'bill', 148.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(258, NULL, 24, 'paper', 'bill', 876.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(259, NULL, 24, 'paper', 'bill', 214.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(260, 541, 24, 'paper', 'payment', 632.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:25', '2023-11-16 03:12:25'),
(261, 542, 24, 'paper', 'payment', 728.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(262, 543, 24, 'paper', 'payment', 200.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(263, 544, 24, 'paper', 'payment', 935.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(264, 545, 24, 'paper', 'payment', 177.00, 'Shohag Trade', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(265, NULL, 25, 'paper', 'opening', 8828.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(266, NULL, 25, 'paper', 'bill', 764.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(267, NULL, 25, 'paper', 'bill', 817.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(268, NULL, 25, 'paper', 'bill', 862.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(269, NULL, 25, 'paper', 'bill', 553.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(270, NULL, 25, 'paper', 'bill', 790.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(271, 546, 25, 'paper', 'payment', 766.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(272, 547, 25, 'paper', 'payment', 158.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(273, 548, 25, 'paper', 'payment', 754.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(274, 549, 25, 'paper', 'payment', 842.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(275, 550, 25, 'paper', 'payment', 239.00, 'Prassad pracationa', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(276, NULL, 26, 'paper', 'opening', 8075.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(277, NULL, 26, 'paper', 'bill', 343.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(278, NULL, 26, 'paper', 'bill', 940.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(279, NULL, 26, 'paper', 'bill', 609.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(280, NULL, 26, 'paper', 'bill', 519.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(281, NULL, 26, 'paper', 'bill', 800.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(282, 551, 26, 'paper', 'payment', 126.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(283, 552, 26, 'paper', 'payment', 582.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(284, 553, 26, 'paper', 'payment', 168.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(285, 554, 26, 'paper', 'payment', 438.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(286, 555, 26, 'paper', 'payment', 933.00, 'Office Advance', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(287, NULL, 27, 'paper', 'opening', 5107.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(288, NULL, 27, 'paper', 'bill', 266.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(289, NULL, 27, 'paper', 'bill', 961.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(290, NULL, 27, 'paper', 'bill', 335.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(291, NULL, 27, 'paper', 'bill', 874.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(292, NULL, 27, 'paper', 'bill', 232.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(293, 556, 27, 'paper', 'payment', 859.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(294, 557, 27, 'paper', 'payment', 735.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(295, 558, 27, 'paper', 'payment', 358.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(296, 559, 27, 'paper', 'payment', 798.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(297, 560, 27, 'paper', 'payment', 337.00, 'IDEA COMMUNICATION', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(298, NULL, 28, 'paper', 'opening', 8987.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(299, NULL, 28, 'paper', 'bill', 919.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(300, NULL, 28, 'paper', 'bill', 467.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(301, NULL, 28, 'paper', 'bill', 579.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(302, NULL, 28, 'paper', 'bill', 835.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(303, NULL, 28, 'paper', 'bill', 866.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(304, 561, 28, 'paper', 'payment', 962.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(305, 562, 28, 'paper', 'payment', 617.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(306, 563, 28, 'paper', 'payment', 868.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(307, 564, 28, 'paper', 'payment', 512.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(308, 565, 28, 'paper', 'payment', 676.00, 'Maria Key House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(309, NULL, 29, 'paper', 'opening', 9565.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(310, NULL, 29, 'paper', 'bill', 929.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(311, NULL, 29, 'paper', 'bill', 316.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(312, NULL, 29, 'paper', 'bill', 806.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(313, NULL, 29, 'paper', 'bill', 383.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(314, NULL, 29, 'paper', 'bill', 567.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(315, 566, 29, 'paper', 'payment', 693.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(316, 567, 29, 'paper', 'payment', 556.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(317, 568, 29, 'paper', 'payment', 475.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(318, 569, 29, 'paper', 'payment', 973.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(319, 570, 29, 'paper', 'payment', 712.00, 'Mayer Doya Lamination', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(320, NULL, 30, 'paper', 'opening', 6923.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(321, NULL, 30, 'paper', 'bill', 147.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(322, NULL, 30, 'paper', 'bill', 657.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(323, NULL, 30, 'paper', 'bill', 846.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(324, NULL, 30, 'paper', 'bill', 436.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(325, NULL, 30, 'paper', 'bill', 522.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(326, 571, 30, 'paper', 'payment', 147.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(327, 572, 30, 'paper', 'payment', 976.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(328, 573, 30, 'paper', 'payment', 804.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(329, 574, 30, 'paper', 'payment', 670.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(330, 575, 30, 'paper', 'payment', 940.00, 'Gift Vely', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(331, NULL, 31, 'paper', 'opening', 8662.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(332, NULL, 31, 'paper', 'bill', 507.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(333, NULL, 31, 'paper', 'bill', 741.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(334, NULL, 31, 'paper', 'bill', 774.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(335, NULL, 31, 'paper', 'bill', 905.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(336, NULL, 31, 'paper', 'bill', 485.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(337, 576, 31, 'paper', 'payment', 469.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(338, 577, 31, 'paper', 'payment', 504.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(339, 578, 31, 'paper', 'payment', 920.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(340, 579, 31, 'paper', 'payment', 422.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(341, 580, 31, 'paper', 'payment', 343.00, 'BM Trading Corporation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(342, NULL, 32, 'paper', 'opening', 7977.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(343, NULL, 32, 'paper', 'bill', 833.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(344, NULL, 32, 'paper', 'bill', 126.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(345, NULL, 32, 'paper', 'bill', 374.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(346, NULL, 32, 'paper', 'bill', 412.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(347, NULL, 32, 'paper', 'bill', 646.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(348, 581, 32, 'paper', 'payment', 877.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(349, 582, 32, 'paper', 'payment', 174.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(350, 583, 32, 'paper', 'payment', 404.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(351, 584, 32, 'paper', 'payment', 127.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(352, 585, 32, 'paper', 'payment', 529.00, 'Pan Asiatic Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(353, NULL, 33, 'paper', 'opening', 6229.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(354, NULL, 33, 'paper', 'bill', 103.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(355, NULL, 33, 'paper', 'bill', 159.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(356, NULL, 33, 'paper', 'bill', 152.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(357, NULL, 33, 'paper', 'bill', 410.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(358, NULL, 33, 'paper', 'bill', 838.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(359, 586, 33, 'paper', 'payment', 498.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(360, 587, 33, 'paper', 'payment', 808.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(361, 588, 33, 'paper', 'payment', 965.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(362, 589, 33, 'paper', 'payment', 668.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(363, 590, 33, 'paper', 'payment', 308.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(364, NULL, 34, 'paper', 'opening', 5554.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(365, NULL, 34, 'paper', 'bill', 168.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(366, NULL, 34, 'paper', 'bill', 358.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(367, NULL, 34, 'paper', 'bill', 850.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(368, NULL, 34, 'paper', 'bill', 276.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(369, NULL, 34, 'paper', 'bill', 275.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(370, 591, 34, 'paper', 'payment', 581.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(371, 592, 34, 'paper', 'payment', 875.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(372, 593, 34, 'paper', 'payment', 373.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(373, 594, 34, 'paper', 'payment', 240.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(374, 595, 34, 'paper', 'payment', 582.00, 'Md Habibur Rahman', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(375, NULL, 35, 'paper', 'opening', 9610.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(376, NULL, 35, 'paper', 'bill', 600.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(377, NULL, 35, 'paper', 'bill', 920.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(378, NULL, 35, 'paper', 'bill', 933.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(379, NULL, 35, 'paper', 'bill', 158.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(380, NULL, 35, 'paper', 'bill', 498.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(381, 596, 35, 'paper', 'payment', 670.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(382, 597, 35, 'paper', 'payment', 489.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(383, 598, 35, 'paper', 'payment', 211.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(384, 599, 35, 'paper', 'payment', 535.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(385, 600, 35, 'paper', 'payment', 480.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(386, NULL, 36, 'paper', 'opening', 7941.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(387, NULL, 36, 'paper', 'bill', 245.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(388, NULL, 36, 'paper', 'bill', 638.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(389, NULL, 36, 'paper', 'bill', 686.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(390, NULL, 36, 'paper', 'bill', 295.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(391, NULL, 36, 'paper', 'bill', 423.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(392, 601, 36, 'paper', 'payment', 320.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(393, 602, 36, 'paper', 'payment', 108.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(394, 603, 36, 'paper', 'payment', 643.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(395, 604, 36, 'paper', 'payment', 346.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(396, 605, 36, 'paper', 'payment', 906.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(397, NULL, 37, 'paper', 'opening', 7956.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(398, NULL, 37, 'paper', 'bill', 737.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(399, NULL, 37, 'paper', 'bill', 234.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(400, NULL, 37, 'paper', 'bill', 594.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(401, NULL, 37, 'paper', 'bill', 553.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(402, NULL, 37, 'paper', 'bill', 305.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(403, 606, 37, 'paper', 'payment', 766.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(404, 607, 37, 'paper', 'payment', 609.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26');
INSERT INTO `account_supplier_logs` (`id`, `account_log_id`, `supplier_id`, `supplier_type`, `payment_type`, `amount`, `name`, `description`, `date`, `attachment`, `created_at`, `updated_at`) VALUES
(405, 608, 37, 'paper', 'payment', 837.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(406, 609, 37, 'paper', 'payment', 644.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(407, 610, 37, 'paper', 'payment', 935.00, 'Agig Paper House', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(408, NULL, 38, 'paper', 'opening', 6897.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(409, NULL, 38, 'paper', 'bill', 853.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(410, NULL, 38, 'paper', 'bill', 539.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(411, NULL, 38, 'paper', 'bill', 771.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(412, NULL, 38, 'paper', 'bill', 658.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(413, NULL, 38, 'paper', 'bill', 189.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(414, 611, 38, 'paper', 'payment', 920.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(415, 612, 38, 'paper', 'payment', 351.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(416, 613, 38, 'paper', 'payment', 132.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(417, 614, 38, 'paper', 'payment', 803.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(418, 615, 38, 'paper', 'payment', 499.00, 'Ontara Plastic', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(419, NULL, 39, 'paper', 'opening', 6373.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(420, NULL, 39, 'paper', 'bill', 414.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(421, NULL, 39, 'paper', 'bill', 316.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(422, NULL, 39, 'paper', 'bill', 767.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(423, NULL, 39, 'paper', 'bill', 360.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(424, NULL, 39, 'paper', 'bill', 866.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(425, 616, 39, 'paper', 'payment', 942.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(426, 617, 39, 'paper', 'payment', 430.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(427, 618, 39, 'paper', 'payment', 119.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(428, 619, 39, 'paper', 'payment', 150.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(429, 620, 39, 'paper', 'payment', 202.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(430, NULL, 40, 'paper', 'opening', 5622.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(431, NULL, 40, 'paper', 'bill', 974.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(432, NULL, 40, 'paper', 'bill', 957.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(433, NULL, 40, 'paper', 'bill', 537.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(434, NULL, 40, 'paper', 'bill', 476.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(435, NULL, 40, 'paper', 'bill', 432.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(436, 621, 40, 'paper', 'payment', 236.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(437, 622, 40, 'paper', 'payment', 623.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(438, 623, 40, 'paper', 'payment', 177.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(439, 624, 40, 'paper', 'payment', 858.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(440, 625, 40, 'paper', 'payment', 467.00, 'MRI Association', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(441, NULL, 41, 'paper', 'opening', 7039.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(442, NULL, 41, 'paper', 'bill', 516.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(443, NULL, 41, 'paper', 'bill', 571.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(444, NULL, 41, 'paper', 'bill', 234.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(445, NULL, 41, 'paper', 'bill', 754.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(446, NULL, 41, 'paper', 'bill', 772.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(447, 626, 41, 'paper', 'payment', 937.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(448, 627, 41, 'paper', 'payment', 754.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(449, 628, 41, 'paper', 'payment', 177.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(450, 629, 41, 'paper', 'payment', 383.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(451, 630, 41, 'paper', 'payment', 146.00, 'Nur Lader', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(452, NULL, 42, 'paper', 'opening', 6573.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(453, NULL, 42, 'paper', 'bill', 109.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(454, NULL, 42, 'paper', 'bill', 761.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(455, NULL, 42, 'paper', 'bill', 800.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(456, NULL, 42, 'paper', 'bill', 218.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(457, NULL, 42, 'paper', 'bill', 856.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(458, 631, 42, 'paper', 'payment', 414.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(459, 632, 42, 'paper', 'payment', 846.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(460, 633, 42, 'paper', 'payment', 630.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(461, 634, 42, 'paper', 'payment', 599.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(462, 635, 42, 'paper', 'payment', 395.00, 'Gangi', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(463, NULL, 43, 'paper', 'opening', 6050.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(464, NULL, 43, 'paper', 'bill', 763.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(465, NULL, 43, 'paper', 'bill', 982.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(466, NULL, 43, 'paper', 'bill', 734.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(467, NULL, 43, 'paper', 'bill', 929.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(468, NULL, 43, 'paper', 'bill', 777.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(469, 636, 43, 'paper', 'payment', 519.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(470, 637, 43, 'paper', 'payment', 815.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(471, 638, 43, 'paper', 'payment', 121.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(472, 639, 43, 'paper', 'payment', 585.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(473, 640, 43, 'paper', 'payment', 886.00, 'Mitaly Solution', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(474, NULL, 44, 'paper', 'opening', 8147.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(475, NULL, 44, 'paper', 'bill', 342.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(476, NULL, 44, 'paper', 'bill', 617.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(477, NULL, 44, 'paper', 'bill', 197.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(478, NULL, 44, 'paper', 'bill', 841.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(479, NULL, 44, 'paper', 'bill', 531.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(480, 641, 44, 'paper', 'payment', 735.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(481, 642, 44, 'paper', 'payment', 200.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(482, 643, 44, 'paper', 'payment', 533.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(483, 644, 44, 'paper', 'payment', 338.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(484, 645, 44, 'paper', 'payment', 650.00, 'CMC Sarak', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(485, NULL, 45, 'paper', 'opening', 5204.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(486, NULL, 45, 'paper', 'bill', 346.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(487, NULL, 45, 'paper', 'bill', 309.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(488, NULL, 45, 'paper', 'bill', 823.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(489, NULL, 45, 'paper', 'bill', 615.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(490, NULL, 45, 'paper', 'bill', 962.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(491, 646, 45, 'paper', 'payment', 163.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(492, 647, 45, 'paper', 'payment', 342.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(493, 648, 45, 'paper', 'payment', 307.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(494, 649, 45, 'paper', 'payment', 810.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(495, 650, 45, 'paper', 'payment', 415.00, 'Paper View', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(496, NULL, 46, 'paper', 'opening', 6042.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(497, NULL, 46, 'paper', 'bill', 970.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(498, NULL, 46, 'paper', 'bill', 405.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(499, NULL, 46, 'paper', 'bill', 848.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(500, NULL, 46, 'paper', 'bill', 799.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(501, NULL, 46, 'paper', 'bill', 774.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(502, 651, 46, 'paper', 'payment', 155.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(503, 652, 46, 'paper', 'payment', 623.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(504, 653, 46, 'paper', 'payment', 806.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(505, 654, 46, 'paper', 'payment', 984.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(506, 655, 46, 'paper', 'payment', 223.00, 'Quelity Care', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(507, NULL, 47, 'paper', 'opening', 9718.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(508, NULL, 47, 'paper', 'bill', 913.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(509, NULL, 47, 'paper', 'bill', 794.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(510, NULL, 47, 'paper', 'bill', 171.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(511, NULL, 47, 'paper', 'bill', 969.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(512, NULL, 47, 'paper', 'bill', 992.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(513, 656, 47, 'paper', 'payment', 594.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(514, 657, 47, 'paper', 'payment', 646.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(515, 658, 47, 'paper', 'payment', 987.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(516, 659, 47, 'paper', 'payment', 535.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(517, 660, 47, 'paper', 'payment', 501.00, 'Tech park Trust', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(518, NULL, 48, 'paper', 'opening', 7839.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(519, NULL, 48, 'paper', 'bill', 293.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(520, NULL, 48, 'paper', 'bill', 737.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(521, NULL, 48, 'paper', 'bill', 897.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(522, NULL, 48, 'paper', 'bill', 397.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(523, NULL, 48, 'paper', 'bill', 663.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(524, 661, 48, 'paper', 'payment', 729.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(525, 662, 48, 'paper', 'payment', 134.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(526, 663, 48, 'paper', 'payment', 840.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(527, 664, 48, 'paper', 'payment', 609.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(528, 665, 48, 'paper', 'payment', 373.00, 'Mawlana Richarce', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(529, NULL, 1, 'binding', 'opening', 9273.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(530, NULL, 1, 'binding', 'bill', 812.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(531, NULL, 1, 'binding', 'bill', 346.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(532, NULL, 1, 'binding', 'bill', 633.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(533, NULL, 1, 'binding', 'bill', 194.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(534, NULL, 1, 'binding', 'bill', 518.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(535, 666, 1, 'binding', 'payment', 769.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(536, 667, 1, 'binding', 'payment', 412.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(537, 668, 1, 'binding', 'payment', 487.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(538, 669, 1, 'binding', 'payment', 624.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(539, 670, 1, 'binding', 'payment', 428.00, 'Joti Book Bingding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(540, NULL, 2, 'binding', 'opening', 6917.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(541, NULL, 2, 'binding', 'bill', 578.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(542, NULL, 2, 'binding', 'bill', 853.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(543, NULL, 2, 'binding', 'bill', 616.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(544, NULL, 2, 'binding', 'bill', 356.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(545, NULL, 2, 'binding', 'bill', 222.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(546, 671, 2, 'binding', 'payment', 260.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(547, 672, 2, 'binding', 'payment', 592.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(548, 673, 2, 'binding', 'payment', 674.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(549, 674, 2, 'binding', 'payment', 564.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(550, 675, 2, 'binding', 'payment', 523.00, 'Al-Hera Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(551, NULL, 3, 'binding', 'opening', 5817.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(552, NULL, 3, 'binding', 'bill', 658.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(553, NULL, 3, 'binding', 'bill', 301.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(554, NULL, 3, 'binding', 'bill', 771.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(555, NULL, 3, 'binding', 'bill', 214.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(556, NULL, 3, 'binding', 'bill', 198.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(557, 676, 3, 'binding', 'payment', 828.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(558, 677, 3, 'binding', 'payment', 724.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(559, 678, 3, 'binding', 'payment', 146.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(560, 679, 3, 'binding', 'payment', 665.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(561, 680, 3, 'binding', 'payment', 620.00, 'parvej Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(562, NULL, 4, 'binding', 'opening', 7274.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(563, NULL, 4, 'binding', 'bill', 482.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(564, NULL, 4, 'binding', 'bill', 254.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(565, NULL, 4, 'binding', 'bill', 179.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(566, NULL, 4, 'binding', 'bill', 379.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(567, NULL, 4, 'binding', 'bill', 804.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(568, 681, 4, 'binding', 'payment', 178.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(569, 682, 4, 'binding', 'payment', 601.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(570, 683, 4, 'binding', 'payment', 167.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(571, 684, 4, 'binding', 'payment', 594.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:26', '2023-11-16 03:12:26'),
(572, 685, 4, 'binding', 'payment', 560.00, 'Jahidul Calender Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(573, NULL, 5, 'binding', 'opening', 6615.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(574, NULL, 5, 'binding', 'bill', 764.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(575, NULL, 5, 'binding', 'bill', 606.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(576, NULL, 5, 'binding', 'bill', 809.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(577, NULL, 5, 'binding', 'bill', 925.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(578, NULL, 5, 'binding', 'bill', 271.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(579, 686, 5, 'binding', 'payment', 607.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(580, 687, 5, 'binding', 'payment', 270.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(581, 688, 5, 'binding', 'payment', 367.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(582, 689, 5, 'binding', 'payment', 223.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(583, 690, 5, 'binding', 'payment', 564.00, 'Jahid binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(584, NULL, 6, 'binding', 'opening', 9060.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(585, NULL, 6, 'binding', 'bill', 256.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(586, NULL, 6, 'binding', 'bill', 411.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(587, NULL, 6, 'binding', 'bill', 870.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(588, NULL, 6, 'binding', 'bill', 431.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(589, NULL, 6, 'binding', 'bill', 877.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(590, 691, 6, 'binding', 'payment', 486.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(591, 692, 6, 'binding', 'payment', 189.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(592, 693, 6, 'binding', 'payment', 655.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(593, 694, 6, 'binding', 'payment', 693.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(594, 695, 6, 'binding', 'payment', 789.00, 'Masum binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(595, NULL, 7, 'binding', 'opening', 7758.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(596, NULL, 7, 'binding', 'bill', 316.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(597, NULL, 7, 'binding', 'bill', 135.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(598, NULL, 7, 'binding', 'bill', 699.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(599, NULL, 7, 'binding', 'bill', 354.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(600, NULL, 7, 'binding', 'bill', 349.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(601, 696, 7, 'binding', 'payment', 806.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(602, 697, 7, 'binding', 'payment', 755.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(603, 698, 7, 'binding', 'payment', 980.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(604, 699, 7, 'binding', 'payment', 100.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(605, 700, 7, 'binding', 'payment', 425.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(606, NULL, 8, 'binding', 'opening', 7970.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(607, NULL, 8, 'binding', 'bill', 280.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(608, NULL, 8, 'binding', 'bill', 342.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(609, NULL, 8, 'binding', 'bill', 496.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(610, NULL, 8, 'binding', 'bill', 335.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(611, NULL, 8, 'binding', 'bill', 903.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(612, 701, 8, 'binding', 'payment', 668.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(613, 702, 8, 'binding', 'payment', 348.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(614, 703, 8, 'binding', 'payment', 754.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(615, 704, 8, 'binding', 'payment', 949.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(616, 705, 8, 'binding', 'payment', 199.00, 'Suganda', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(617, NULL, 9, 'binding', 'opening', 9254.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(618, NULL, 9, 'binding', 'bill', 972.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(619, NULL, 9, 'binding', 'bill', 728.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(620, NULL, 9, 'binding', 'bill', 888.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(621, NULL, 9, 'binding', 'bill', 750.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(622, NULL, 9, 'binding', 'bill', 495.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(623, 706, 9, 'binding', 'payment', 380.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(624, 707, 9, 'binding', 'payment', 733.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(625, 708, 9, 'binding', 'payment', 315.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(626, 709, 9, 'binding', 'payment', 458.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(627, 710, 9, 'binding', 'payment', 415.00, 'Sashas', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(628, NULL, 10, 'binding', 'opening', 6079.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(629, NULL, 10, 'binding', 'bill', 681.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(630, NULL, 10, 'binding', 'bill', 167.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(631, NULL, 10, 'binding', 'bill', 943.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(632, NULL, 10, 'binding', 'bill', 731.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(633, NULL, 10, 'binding', 'bill', 800.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(634, 711, 10, 'binding', 'payment', 535.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(635, 712, 10, 'binding', 'payment', 801.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(636, 713, 10, 'binding', 'payment', 684.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(637, 714, 10, 'binding', 'payment', 757.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(638, 715, 10, 'binding', 'payment', 884.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(639, NULL, 11, 'binding', 'opening', 5566.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(640, NULL, 11, 'binding', 'bill', 163.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(641, NULL, 11, 'binding', 'bill', 591.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(642, NULL, 11, 'binding', 'bill', 194.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(643, NULL, 11, 'binding', 'bill', 181.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(644, NULL, 11, 'binding', 'bill', 645.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(645, 716, 11, 'binding', 'payment', 489.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(646, 717, 11, 'binding', 'payment', 861.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(647, 718, 11, 'binding', 'payment', 779.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(648, 719, 11, 'binding', 'payment', 693.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(649, 720, 11, 'binding', 'payment', 935.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(650, NULL, 12, 'binding', 'opening', 8261.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(651, NULL, 12, 'binding', 'bill', 400.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(652, NULL, 12, 'binding', 'bill', 141.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(653, NULL, 12, 'binding', 'bill', 468.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(654, NULL, 12, 'binding', 'bill', 874.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(655, NULL, 12, 'binding', 'bill', 687.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(656, 721, 12, 'binding', 'payment', 243.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(657, 722, 12, 'binding', 'payment', 408.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(658, 723, 12, 'binding', 'payment', 665.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(659, 724, 12, 'binding', 'payment', 922.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(660, 725, 12, 'binding', 'payment', 412.00, 'Ali Bindings', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(661, NULL, 13, 'binding', 'opening', 5660.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(662, NULL, 13, 'binding', 'bill', 205.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(663, NULL, 13, 'binding', 'bill', 146.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(664, NULL, 13, 'binding', 'bill', 349.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(665, NULL, 13, 'binding', 'bill', 380.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(666, NULL, 13, 'binding', 'bill', 593.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(667, 726, 13, 'binding', 'payment', 746.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(668, 727, 13, 'binding', 'payment', 339.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(669, 728, 13, 'binding', 'payment', 171.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(670, 729, 13, 'binding', 'payment', 904.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(671, 730, 13, 'binding', 'payment', 286.00, 'Rakib Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(672, NULL, 14, 'binding', 'opening', 6904.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(673, NULL, 14, 'binding', 'bill', 712.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(674, NULL, 14, 'binding', 'bill', 236.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(675, NULL, 14, 'binding', 'bill', 774.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(676, NULL, 14, 'binding', 'bill', 163.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(677, NULL, 14, 'binding', 'bill', 664.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(678, 731, 14, 'binding', 'payment', 879.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(679, 732, 14, 'binding', 'payment', 876.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(680, 733, 14, 'binding', 'payment', 546.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(681, 734, 14, 'binding', 'payment', 911.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(682, 735, 14, 'binding', 'payment', 125.00, 'Jinnat Calander Binding', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(683, NULL, 1, 'print', 'opening', 6390.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(684, NULL, 1, 'print', 'bill', 942.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(685, NULL, 1, 'print', 'bill', 149.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(686, NULL, 1, 'print', 'bill', 513.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(687, NULL, 1, 'print', 'bill', 494.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(688, NULL, 1, 'print', 'bill', 543.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(689, 736, 1, 'print', 'payment', 527.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(690, 737, 1, 'print', 'payment', 953.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(691, 738, 1, 'print', 'payment', 577.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(692, 739, 1, 'print', 'payment', 985.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(693, 740, 1, 'print', 'payment', 425.00, 'Arshad Production', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(694, NULL, 2, 'print', 'opening', 6411.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(695, NULL, 2, 'print', 'bill', 660.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(696, NULL, 2, 'print', 'bill', 880.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(697, NULL, 2, 'print', 'bill', 759.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(698, NULL, 2, 'print', 'bill', 526.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(699, NULL, 2, 'print', 'bill', 774.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(700, 741, 2, 'print', 'payment', 118.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(701, 742, 2, 'print', 'payment', 294.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(702, 743, 2, 'print', 'payment', 953.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(703, 744, 2, 'print', 'payment', 848.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(704, 745, 2, 'print', 'payment', 948.00, 'Hoque Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(705, NULL, 3, 'print', 'opening', 6156.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(706, NULL, 3, 'print', 'bill', 858.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(707, NULL, 3, 'print', 'bill', 337.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(708, NULL, 3, 'print', 'bill', 971.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(709, NULL, 3, 'print', 'bill', 482.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(710, NULL, 3, 'print', 'bill', 914.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(711, 746, 3, 'print', 'payment', 260.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(712, 747, 3, 'print', 'payment', 451.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(713, 748, 3, 'print', 'payment', 542.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(714, 749, 3, 'print', 'payment', 534.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(715, 750, 3, 'print', 'payment', 498.00, 'Diganta printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(716, NULL, 4, 'print', 'opening', 9852.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(717, NULL, 4, 'print', 'bill', 658.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(718, NULL, 4, 'print', 'bill', 513.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(719, NULL, 4, 'print', 'bill', 151.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(720, NULL, 4, 'print', 'bill', 387.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(721, NULL, 4, 'print', 'bill', 653.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(722, 751, 4, 'print', 'payment', 217.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(723, 752, 4, 'print', 'payment', 832.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(724, 753, 4, 'print', 'payment', 562.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(725, 754, 4, 'print', 'payment', 458.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(726, 755, 4, 'print', 'payment', 799.00, 'Professor pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(727, NULL, 5, 'print', 'opening', 7211.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(728, NULL, 5, 'print', 'bill', 972.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(729, NULL, 5, 'print', 'bill', 495.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(730, NULL, 5, 'print', 'bill', 626.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(731, NULL, 5, 'print', 'bill', 804.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(732, NULL, 5, 'print', 'bill', 537.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(733, 756, 5, 'print', 'payment', 880.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(734, 757, 5, 'print', 'payment', 295.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(735, 758, 5, 'print', 'payment', 475.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(736, 759, 5, 'print', 'payment', 127.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(737, 760, 5, 'print', 'payment', 148.00, 'Brahmaputra Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(738, NULL, 6, 'print', 'opening', 5288.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(739, NULL, 6, 'print', 'bill', 731.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(740, NULL, 6, 'print', 'bill', 446.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(741, NULL, 6, 'print', 'bill', 487.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(742, NULL, 6, 'print', 'bill', 828.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(743, NULL, 6, 'print', 'bill', 200.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(744, 761, 6, 'print', 'payment', 264.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(745, 762, 6, 'print', 'payment', 821.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(746, 763, 6, 'print', 'payment', 359.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(747, 764, 6, 'print', 'payment', 117.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(748, 765, 6, 'print', 'payment', 808.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(749, NULL, 7, 'print', 'opening', 9912.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(750, NULL, 7, 'print', 'bill', 427.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(751, NULL, 7, 'print', 'bill', 540.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(752, NULL, 7, 'print', 'bill', 473.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(753, NULL, 7, 'print', 'bill', 980.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(754, NULL, 7, 'print', 'bill', 673.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(755, 766, 7, 'print', 'payment', 697.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(756, 767, 7, 'print', 'payment', 341.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(757, 768, 7, 'print', 'payment', 538.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(758, 769, 7, 'print', 'payment', 591.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(759, 770, 7, 'print', 'payment', 925.00, 'Gardian', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(760, NULL, 8, 'print', 'opening', 8099.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(761, NULL, 8, 'print', 'bill', 940.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(762, NULL, 8, 'print', 'bill', 662.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(763, NULL, 8, 'print', 'bill', 410.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(764, NULL, 8, 'print', 'bill', 510.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(765, NULL, 8, 'print', 'bill', 839.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(766, 771, 8, 'print', 'payment', 255.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(767, 772, 8, 'print', 'payment', 112.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(768, 773, 8, 'print', 'payment', 821.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(769, 774, 8, 'print', 'payment', 771.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(770, 775, 8, 'print', 'payment', 161.00, 'Sijan Printing', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(771, NULL, 9, 'print', 'opening', 8158.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(772, NULL, 9, 'print', 'bill', 928.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(773, NULL, 9, 'print', 'bill', 502.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(774, NULL, 9, 'print', 'bill', 996.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(775, NULL, 9, 'print', 'bill', 704.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(776, NULL, 9, 'print', 'bill', 459.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(777, 776, 9, 'print', 'payment', 460.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(778, 777, 9, 'print', 'payment', 545.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(779, 778, 9, 'print', 'payment', 207.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(780, 779, 9, 'print', 'payment', 554.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(781, 780, 9, 'print', 'payment', 791.00, 'BIIT Pablication', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(782, NULL, 10, 'print', 'opening', 9763.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(783, NULL, 10, 'print', 'bill', 576.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(784, NULL, 10, 'print', 'bill', 780.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(785, NULL, 10, 'print', 'bill', 511.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(786, NULL, 10, 'print', 'bill', 602.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(787, NULL, 10, 'print', 'bill', 800.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(788, 781, 10, 'print', 'payment', 238.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(789, 782, 10, 'print', 'payment', 384.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(790, 783, 10, 'print', 'payment', 619.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(791, 784, 10, 'print', 'payment', 477.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(792, 785, 10, 'print', 'payment', 364.00, 'BIC', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(793, NULL, 11, 'print', 'opening', 7532.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(794, NULL, 11, 'print', 'bill', 221.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(795, NULL, 11, 'print', 'bill', 809.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(796, NULL, 11, 'print', 'bill', 698.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(797, NULL, 11, 'print', 'bill', 632.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(798, NULL, 11, 'print', 'bill', 991.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(799, 786, 11, 'print', 'payment', 761.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(800, 787, 11, 'print', 'payment', 836.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(801, 788, 11, 'print', 'payment', 370.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(802, 789, 11, 'print', 'payment', 714.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(803, 790, 11, 'print', 'payment', 395.00, 'colour criation', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(804, NULL, 12, 'print', 'opening', 5259.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(805, NULL, 12, 'print', 'bill', 823.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(806, NULL, 12, 'print', 'bill', 847.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(807, NULL, 12, 'print', 'bill', 340.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(808, NULL, 12, 'print', 'bill', 446.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27');
INSERT INTO `account_supplier_logs` (`id`, `account_log_id`, `supplier_id`, `supplier_type`, `payment_type`, `amount`, `name`, `description`, `date`, `attachment`, `created_at`, `updated_at`) VALUES
(809, NULL, 12, 'print', 'bill', 356.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(810, 791, 12, 'print', 'payment', 212.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(811, 792, 12, 'print', 'payment', 439.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(812, 793, 12, 'print', 'payment', 749.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(813, 794, 12, 'print', 'payment', 860.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(814, 795, 12, 'print', 'payment', 168.00, 'ZR Printers', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(815, NULL, 13, 'print', 'opening', 5141.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(816, NULL, 13, 'print', 'bill', 352.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(817, NULL, 13, 'print', 'bill', 665.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(818, NULL, 13, 'print', 'bill', 681.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(819, NULL, 13, 'print', 'bill', 855.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(820, NULL, 13, 'print', 'bill', 176.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(821, 796, 13, 'print', 'payment', 717.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(822, 797, 13, 'print', 'payment', 374.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(823, 798, 13, 'print', 'payment', 135.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(824, 799, 13, 'print', 'payment', 609.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(825, 800, 13, 'print', 'payment', 525.00, 'The Imprint Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(826, NULL, 14, 'print', 'opening', 7437.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(827, NULL, 14, 'print', 'bill', 668.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(828, NULL, 14, 'print', 'bill', 688.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(829, NULL, 14, 'print', 'bill', 105.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(830, NULL, 14, 'print', 'bill', 247.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(831, NULL, 14, 'print', 'bill', 116.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(832, 801, 14, 'print', 'payment', 484.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(833, 802, 14, 'print', 'payment', 950.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(834, 803, 14, 'print', 'payment', 967.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(835, 804, 14, 'print', 'payment', 265.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(836, 805, 14, 'print', 'payment', 462.00, 'Al falah Printing Press', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(837, NULL, 15, 'print', 'opening', 7601.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(838, NULL, 15, 'print', 'bill', 512.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(839, NULL, 15, 'print', 'bill', 829.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(840, NULL, 15, 'print', 'bill', 116.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(841, NULL, 15, 'print', 'bill', 150.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(842, NULL, 15, 'print', 'bill', 889.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(843, 806, 15, 'print', 'payment', 443.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(844, 807, 15, 'print', 'payment', 957.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(845, 808, 15, 'print', 'payment', 522.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(846, 809, 15, 'print', 'payment', 206.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(847, 810, 15, 'print', 'payment', 175.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(848, NULL, 16, 'print', 'opening', 7486.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(849, NULL, 16, 'print', 'bill', 725.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(850, NULL, 16, 'print', 'bill', 647.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(851, NULL, 16, 'print', 'bill', 530.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(852, NULL, 16, 'print', 'bill', 462.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(853, NULL, 16, 'print', 'bill', 102.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(854, 811, 16, 'print', 'payment', 546.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(855, 812, 16, 'print', 'payment', 683.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(856, 813, 16, 'print', 'payment', 182.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(857, 814, 16, 'print', 'payment', 980.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27'),
(858, 815, 16, 'print', 'payment', 971.00, 'Rafiq onubad', NULL, NULL, NULL, '2023-11-16 03:12:27', '2023-11-16 03:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_id` bigint DEFAULT NULL,
  `address_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `table_name`, `table_id`, `address_type`, `first_name`, `last_name`, `mobile_number`, `email`, `address`, `city`, `state`, `zip_code`, `zone`, `country`, `lat`, `lng`, `comment`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'users', 1, 'shipping', 'Al kawser', 'Mustafig treders', '+44377690759', 'Al Nasba@hotmail.com', '10 First Avenue', 'Philadelphia', 'PA', '97678', 'Zone C', 'Germany', '48.058', '104.3827', NULL, NULL, '6555889789f5c', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 'users', 2, 'shipping', '', '', '016124', 'admin@gmail.com', '', '', '', '', '', '', '-59.0793', '-72.2639', '', NULL, '655588978ace8', 1, '2023-11-16 03:12:23', '2023-11-16 05:55:01'),
(3, 'users', 3, 'billing', 'Al Nasba', 'Al Nasba', '+1115672451', 'Al kawser@yahoo.com', '456 Oak Avenue', 'Philadelphia', 'IL', '22145', 'Zone D', 'Canada', '-49.5125', '-111.2026', NULL, NULL, '655588978b871', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, 'users', 4, 'shipping', 'BM Voucher Jama', 'Al Nasba', '+61695241925', 'Suganda@example.com', '456 Park Road', 'Chicago', 'TX', '61399', 'Zone B', 'Canada', '-22.5262', '55.4755', NULL, NULL, '655588978be6d', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, 'users', 5, 'shipping', '', '', '016125', 'branch1@gmail.com', '', '', '', '', '', '', '-81.2123', '-103.0887', '', NULL, '655588978c6c6', 1, '2023-11-16 03:12:23', '2023-11-17 17:31:52'),
(6, 'users', 6, 'billing', 'Mustafig treders', 'Suganda', '+44315411758', 'Suganda@hotmail.com', '123 Park Road', 'Chicago', 'TX', '32769', 'Zone E', 'Germany', '-31.3274', '-53.549', NULL, NULL, '655588978cd93', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(7, 'users', 7, 'billing', 'Mustafig treders', 'Al kawser', '+44495734787', 'Abdul Jabber@gmail.com', '10 Main Street', 'New York', 'IL', '81300', 'Zone A', 'United Kingdom', '27.4012', '-125.5979', NULL, NULL, '655588978d794', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(8, 'users', 8, 'shipping', 'Universel treders', 'Suganda', '+1939715272', 'Al kawser@yahoo.com', '456 Main Street', 'New York', 'TX', '82750', 'Zone E', 'United Kingdom', '-35.7867', '54.2515', NULL, NULL, '655588978e1db', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(9, 'users', 9, 'shipping', 'BM Voucher Jama', 'Abdul Jabber', '+44657573728', 'BM Voucher Jama@yahoo.com', '10 Park Road', 'Chicago', 'NY', '69009', 'Zone E', 'Australia', '84.1356', '89.6489', NULL, NULL, '655588978eae7', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(10, 'users', 10, 'shipping', 'Upaher Galary', 'Sashas', '+44537963518', 'Sashas@hotmail.com', '789 Park Road', 'Houston', 'PA', '83698', 'Zone C', 'Germany', '84.4711', '45.9719', NULL, NULL, '655588978f44b', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(11, 'accountant_vendors', 1, 'shipping', 'Al kawser', 'Mustafig treders', '+1913937792', 'Abdul Jabber@gmail.com', '10 Main Street', 'Houston', 'IL', '31832', 'Zone A', 'United Kingdom', '-80.8169', '-150.063', NULL, NULL, '655588978fb0e', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(12, 'accountant_vendors', 2, 'shipping', 'Sashas', 'Upaher Galary', '+44761654418', 'Universel treders@yahoo.com', '456 Oak Avenue', 'Chicago', 'TX', '20930', 'Zone E', 'Germany', '90.0064', '142.0656', NULL, NULL, '65558897903c8', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(13, 'accountant_vendors', 3, 'shipping', 'Sashas', 'Upaher Galary', '+1178169057', 'BM Voucher Jama@gmail.com', '10 Elm Street', 'Houston', 'TX', '74662', 'Zone D', 'United Kingdom', '-28.0005', '-38.1681', NULL, NULL, '6555889790aa6', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(14, 'accountant_vendors', 4, 'billing', 'Upaher Galary', 'Universel treders', '+49753816097', 'Abdul Jabber@gmail.com', '789 Oak Avenue', 'Chicago', 'TX', '11052', 'Zone E', 'United States', '-67.659', '-135.9999', NULL, NULL, '6555889791534', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(15, 'accountant_vendors', 5, 'billing', 'Upaher Galary', 'Sashas', '+49114870400', 'Al Nasba@yahoo.com', '10 Elm Street', 'Los Angeles', 'CA', '63261', 'Zone B', 'Australia', '-56.6612', '87.1098', NULL, NULL, '6555889791b74', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(16, 'accountant_vendors', 6, 'billing', 'Universel treders', 'Al Nasba', '+49638422347', 'Al kawser@gmail.com', '123 First Avenue', 'Chicago', 'TX', '87895', 'Zone A', 'Germany', '-73.3709', '-140.3897', NULL, NULL, '6555889792446', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(17, 'accountant_vendors', 7, 'billing', 'Universel treders', 'Abdul Jabber', '+61861565490', 'Mustafig treders@example.com', '11 First Avenue', 'Los Angeles', 'NY', '17009', 'Zone D', 'Canada', '18.4654', '81.0561', NULL, NULL, '6555889792a94', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(18, 'accountant_vendors', 8, 'shipping', 'Mustafig treders', 'BM Voucher Jama', '+1834434590', 'Mustafig treders@yahoo.com', '11 Oak Avenue', 'Los Angeles', 'NY', '15123', 'Zone E', 'United Kingdom', '38.1326', '-135.5126', NULL, NULL, '6555889793348', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(19, 'accountant_vendors', 9, 'billing', 'Al kawser', 'Sashas', '+49960349044', 'Suganda@yahoo.com', '123 First Avenue', 'Philadelphia', 'IL', '95323', 'Zone B', 'Australia', '-24.2575', '-24.0267', NULL, NULL, '6555889793a0a', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(20, 'accountant_vendors', 10, 'billing', 'Mustafig treders', 'Universel treders', '+61906539942', 'Abdul Jabber@yahoo.com', '10 First Avenue', 'Los Angeles', 'IL', '73269', 'Zone C', 'Australia', '-21.8574', '92.0981', NULL, NULL, '6555889794623', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting_titles`
--

CREATE TABLE `app_setting_titles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_setting_titles`
--

INSERT INTO `app_setting_titles` (`id`, `title`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'title', NULL, 'title', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 'logo', NULL, 'logo', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(3, 'fabicon', NULL, 'fabicon', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, 'phone_number', NULL, 'phone-number', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, 'address', NULL, 'address', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(6, 'company_name', NULL, 'company-name', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(7, 'city', NULL, 'city', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(8, 'state', NULL, 'state', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(9, 'post_code', NULL, 'post-code', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(10, 'country', NULL, 'country', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(11, 'email', NULL, 'email', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(12, 'map', NULL, 'map', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(13, 'home_delivery_cost', NULL, 'home-delivery-cost', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(14, 'out_dhaka_home_delivery_cost', NULL, 'out-dhaka-home-delivery-cost', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(15, 'company_start_time', NULL, 'company-start-time', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(16, 'company_end_time', NULL, 'company-end-time', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(17, 'time_zone', NULL, 'time-zone', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(18, 'header_title', NULL, 'header-title', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(19, 'copy_right', NULL, 'copy-right', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(20, 'seo_title', NULL, 'seo-title', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(21, 'seo_description', NULL, 'seo-description', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(22, 'seo_keywords', NULL, 'seo-keywords', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(23, 'seo_banner', NULL, 'seo-banner', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(24, 'social_facebook', NULL, 'social-facebook', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(25, 'social_twitter', NULL, 'social-twitter', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(26, 'social_instagram', NULL, 'social-instagram', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(27, 'social_linkedin', NULL, 'social-linkedin', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(28, 'social_youtube', NULL, 'social-youtube', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(29, 'invoice_prefix', NULL, 'invoice-prefix', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(30, 'invoice_company_name', NULL, 'invoice-company-name', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(31, 'invoice_address_line_1', NULL, 'invoice-address-line-1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(32, 'invoice_address_line_2', NULL, 'invoice-address-line-2', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(33, 'telegram_bot_api', NULL, 'telegram-bot-api', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(34, 'mail_mailer', NULL, 'mail-mailer', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(35, 'mail_host', NULL, 'mail-host', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(36, 'mail_port', NULL, 'mail-port', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(37, 'mail_user_name', NULL, 'mail-user-name', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(38, 'mail_password', NULL, 'mail-password', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(39, 'mail_from_address', NULL, 'mail-from-address', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(40, 'mail_from_name', NULL, 'mail-from-name', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(41, 'shut_down_website', NULL, 'shut-down-website', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting_values`
--

CREATE TABLE `app_setting_values` (
  `id` bigint UNSIGNED NOT NULL,
  `setting_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_setting_values`
--

INSERT INTO `app_setting_values` (`id`, `setting_id`, `title`, `setting_value`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'title', 'book publication', NULL, '655588975b996', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 2, 'logo', 'uploads/logo.png', NULL, '655588975c36a', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(3, 3, 'fabicon', 'uploads/logo.png', NULL, '655588975d0e7', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, 4, 'phone_number', '+880 125468745', NULL, '655588975db84', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, 4, 'phone_number', '+880 125369746', NULL, '655588975e58c', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(6, 4, 'phone_number', '+880 125478747', NULL, '655588975edef', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(7, 5, 'address', 'Head Office: House 310, Road 21 Mohakhali DOHS, Dhaka-1206', NULL, '655588975f827', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(8, 5, 'address', 'Sub Office: House 100, Road 01 Mirpur DOHS, Dhaka-1208', NULL, '655588975ff15', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(9, 6, 'company_name', 'best publication', NULL, '6555889760887', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(10, 7, 'city', 'dhaka', NULL, '6555889760f97', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(11, 8, 'state', 'bangladesh', NULL, '6555889761b3d', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(12, 9, 'post_code', '1204', NULL, '655588976226d', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(13, 10, 'country', 'bangladesh', NULL, '6555889762c15', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(14, 11, 'email', 'support@pub.com', NULL, '655588976353b', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(15, 12, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d5237.592579713879!2d90.41791440863823!3d23.802949706508837!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1spaltan!5e0!3m2!1sen!2sbd!4v1684041615790!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '6555889763c5e', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(16, 13, 'home_delivery_cost', '60', NULL, '6555889764683', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(17, 14, 'out_dhaka_home_delivery_cost', '120', NULL, '6555889764d68', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(18, 15, 'company_start_time', '09:00', NULL, '65558897657dc', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(19, 16, 'company_end_time', '05:00', NULL, '6555889765fc5', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(20, 17, 'time_zone', 'Asia/Dhaka', NULL, '6555889766e72', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(21, 18, 'header_title', 'welcome to best publication', NULL, '65558897677c1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(22, 19, 'copy_right', '2023 best publication', NULL, '6555889767ee2', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(23, 20, 'seo_title', 'best publication', NULL, '6555889768824', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(24, 21, 'seo_description', 'Bookstore is a leading book shop in Bangladesh. We offer thousands of islamic, general and academic books at a discounted price. We provide good packaging with low shipping cost all over the Bangladesh.', NULL, '6555889768ee1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(25, 22, 'seo_keywords', 'publications, book, prokashona', NULL, '6555889769e3e', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(26, 23, 'seo_banner', 'uploads/logo.png', NULL, '655588976a7b6', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(27, 24, 'social_facebook', 'https://www.facebook.com', NULL, '655588976af41', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(28, 25, 'social_twitter', 'https://www.twitter.com', NULL, '655588976b82a', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(29, 26, 'social_instagram', 'https://www.instagram.com', NULL, '655588976bf51', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(30, 27, 'social_linkedin', 'https://www.linkedin.com', NULL, '655588976cb35', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(31, 28, 'social_youtube', 'https://www.youtube.com', NULL, '655588976d4ad', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(32, 29, 'invoice_prefix', 'PUB', NULL, '655588976dcc0', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(33, 30, 'invoice_company_name', 'best publication', NULL, '655588976e9c9', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(34, 31, 'invoice_address_line_1', '1212, rampura', NULL, '655588976f405', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(35, 32, 'invoice_address_line_2', 'dhaka, bangladesh', NULL, '655588976fb9f', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(36, 33, 'telegram_bot_api', NULL, NULL, '65558897704fe', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(37, 34, 'mail_mailer', 'smtp', NULL, '6555889770be6', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(38, 35, 'mail_host', 'mail.pub.com', NULL, '6555889771583', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(39, 36, 'mail_port', '587', NULL, '6555889771eeb', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(40, 37, 'mail_user_name', 'support@pub.com', NULL, '6555889772cd3', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(41, 38, 'mail_password', 'UJ02pC,O)?L0', NULL, '65558897738d9', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(42, 39, 'mail_from_address', 'support@pub.com', NULL, '655588977400a', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(43, 40, 'mail_from_name', 'book publication', NULL, '65558897746db', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(44, 41, 'shut_down_website', 'false', NULL, '6555889775011', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` tinyint UNSIGNED DEFAULT NULL,
  `show` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `serial`, `show`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner 1', 'uploads/banners/1.jpg', 1, 1, NULL, '1655588977b8cd', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 'banner 2', 'uploads/banners/2.jpg', 2, 1, NULL, '2655588977cce6', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', NULL, NULL, 'apple', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 'Nike', NULL, NULL, 'nike', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 'Google', NULL, NULL, 'google', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 'Amazon', NULL, NULL, 'amazon', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 'Samsung', NULL, NULL, 'samsung', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 'Microsoft', NULL, NULL, 'microsoft', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 'Coca-Cola', NULL, NULL, 'coca-cola', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(8, 'Toyota', NULL, NULL, 'toyota', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(9, 'McDonald\'s', NULL, NULL, 'mcdonalds', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(10, 'Facebook', NULL, NULL, 'facebook', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(11, 'Disney', NULL, NULL, 'disney', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(12, 'Adidas', NULL, NULL, 'adidas', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(13, 'BMW', NULL, NULL, 'bmw', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(14, 'Pepsi', NULL, NULL, 'pepsi', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(15, 'Netflix', NULL, NULL, 'netflix', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(16, 'Honda', NULL, NULL, 'honda', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(17, 'Sony', NULL, NULL, 'sony', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(18, 'Uber', NULL, NULL, 'uber', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(19, 'Intel', NULL, NULL, 'intel', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(20, 'Spotify', NULL, NULL, 'spotify', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `brand_product`
--

CREATE TABLE `brand_product` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_product`
--

INSERT INTO `brand_product` (`id`, `brand_id`, `product_id`) VALUES
(1, 13, 1),
(2, 10, 2),
(3, 7, 3),
(4, 6, 4),
(5, 10, 5),
(6, 4, 6),
(7, 17, 7),
(8, 14, 8),
(9, 7, 9),
(10, 3, 10),
(11, 12, 11),
(12, 10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_english` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_top_category` tinyint NOT NULL DEFAULT '0',
  `category_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `page_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_english`, `parent_id`, `url`, `is_top_category`, `category_image`, `description`, `page_title`, `meta_keywords`, `meta_description`, `search_keywords`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ইসলামী সাহিত্য', 'islamic book', 0, NULL, 1, NULL, NULL, 'ইসলামী সাহিত্য', 'islamic book', 'islamic book, ইসলামী সাহিত্য', 'islamic book ইসলামী সাহিত্য', NULL, 'islamic-book', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 'দাওয়াতী বই', 'dawati book', 1, NULL, 0, NULL, NULL, 'দাওয়াতী বই', 'dawati book', 'dawati book, দাওয়াতী বই', 'dawati book দাওয়াতী বই', NULL, 'dawati-book', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 'অন্যান্য বই', 'others book', 1, NULL, 0, NULL, NULL, 'অন্যান্য বই', 'others book', 'others book, অন্যান্য বই', 'others book অন্যান্য বই', NULL, 'others-book', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 'সাইন্স সিরিজ', 'science series', 1, NULL, 0, NULL, NULL, 'সাইন্স সিরিজ', 'science series', 'science series, সাইন্স সিরিজ', 'science series সাইন্স সিরিজ', NULL, 'science-series', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 'সাংগঠনিক উপকরণ', 'sangothonik upokoron', 0, NULL, 0, NULL, NULL, 'সাংগঠনিক উপকরণ', 'sangothonik upokoron', 'sangothonik upokoron, সাংগঠনিক উপকরণ', 'sangothonik upokoron সাংগঠনিক উপকরণ', NULL, 'sangothonik-upokoron', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 'ফর্ম', 'form', 5, NULL, 0, NULL, NULL, 'ফর্ম', 'form', 'form, ফর্ম', 'form ফর্ম', NULL, 'form', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 'রেজিস্টার খাতা', 'register note book', 5, NULL, 1, NULL, NULL, 'রেজিস্টার খাতা', 'register note book', 'register note book, রেজিস্টার খাতা', 'register note book রেজিস্টার খাতা', NULL, 'register-note-book', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(8, 'অন্যান্য', 'others', 5, NULL, 0, NULL, NULL, 'অন্যান্য', 'others', 'others, অন্যান্য', 'others অন্যান্য', NULL, 'others', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(9, 'দাওয়াতী উপকরণ', 'aa', 0, NULL, 0, NULL, NULL, 'দাওয়াতী উপকরণ', 'aa', 'aa, দাওয়াতী উপকরণ', 'aa দাওয়াতী উপকরণ', NULL, 'aa', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(10, 'ফর্ম', 'form', 9, NULL, 1, NULL, NULL, 'ফর্ম', 'form', 'form, ফর্ম', 'form ফর্ম', NULL, 'form', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(11, 'পোস্টার', 'poster', 9, NULL, 1, NULL, NULL, 'পোস্টার', 'poster', 'poster, পোস্টার', 'poster পোস্টার', NULL, 'poster', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(12, 'স্টীকার', 'sticker', 9, NULL, 1, NULL, NULL, 'স্টীকার', 'sticker', 'sticker, স্টীকার', 'sticker স্টীকার', NULL, 'sticker', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(13, 'পতাকা', 'flag', 9, NULL, 0, NULL, NULL, 'পতাকা', 'flag', 'flag, পতাকা', 'flag পতাকা', NULL, 'flag', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(14, 'চাবির রিং', 'key ring', 9, NULL, 0, NULL, NULL, 'চাবির রিং', 'key ring', 'key ring, চাবির রিং', 'key ring চাবির রিং', NULL, 'key-ring', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(15, 'টি-শার্ট', 't-shirt', 9, NULL, 1, NULL, NULL, 'টি-শার্ট', 't-shirt', 't-shirt, টি-শার্ট', 't-shirt টি-শার্ট', NULL, 't-shirt', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(16, 'অন্যান্য', 'others', 9, NULL, 0, NULL, NULL, 'অন্যান্য', 'others', 'others, অন্যান্য', 'others অন্যান্য', NULL, 'others', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(17, 'নববর্ষ প্রকাশনা', 'new year prokashona', 0, NULL, 0, NULL, NULL, 'নববর্ষ প্রকাশনা', 'new year prokashona', 'new year prokashona, নববর্ষ প্রকাশনা', 'new year prokashona নববর্ষ প্রকাশনা', NULL, 'new-year-prokashona', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(18, 'পোস্টার', 'poster', 0, NULL, 1, NULL, NULL, 'পোস্টার', 'poster', 'poster, পোস্টার', 'poster পোস্টার', NULL, 'poster', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(19, 'প্রি-অর্ডার', 'pre order', 0, NULL, 1, NULL, NULL, 'প্রি-অর্ডার', 'pre order', 'pre order, প্রি-অর্ডার', 'pre order প্রি-অর্ডার', NULL, 'pre-order', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `full_name`, `email`, `subject`, `message`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kareem', 'justus.effertz@example.net', 'Harum earum.', 'Vel cupiditate nobis earum soluta autem harum.', NULL, '16555889280b0e', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 'Ruth', 'glarkin@example.net', 'Est eos.', 'Aut sapiente consequatur voluptatibus.', NULL, '26555889282264', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 'Margarette', 'xfarrell@example.org', 'Excepturi nam.', 'Distinctio asperiores sed ab repudiandae.', NULL, '36555889283232', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 'Lilyan', 'bernadine.deckow@example.net', 'Ullam minima.', 'Id iure ipsam qui excepturi.', NULL, '46555889283f9c', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 'Boyd', 'pollich.kristopher@example.net', 'Labore.', 'Ducimus fugit sit quo cum iusto est.', NULL, '565558892851a0', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 'Nicolette', 'dorris.price@example.com', 'Debitis.', 'Qui ut omnis repudiandae deserunt aut.', NULL, '66555889285f49', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 'Lilliana', 'laney.feest@example.com', 'Quidem et quis.', 'Sed vero assumenda dolores sunt.', NULL, '76555889286ec2', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(8, 'Deontae', 'jeffrey74@example.org', 'Error.', 'Dolore rerum eos aut libero.', NULL, '86555889287c21', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(9, 'Leora', 'hulda.herzog@example.org', 'Fuga ipsa.', 'Quo sunt aut neque ea.', NULL, '965558892889e4', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(10, 'Camila', 'sabryna.mclaughlin@example.org', 'Quae veritatis.', 'In molestias facere qui quis beatae.', NULL, '1065558892897d5', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(11, 'Maximus', 'antonette.zemlak@example.net', 'Porro qui ut.', 'Nesciunt excepturi facere id aut impedit.', NULL, '11655588928a6d1', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(12, 'Arnaldo', 'kautzer.gideon@example.org', 'Quis quod.', 'Atque hic deleniti aut porro omnis vitae maxime.', NULL, '12655588928b425', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(13, 'Dillon', 'fisher.doris@example.com', 'Ut accusantium.', 'Sunt quia sapiente tempora.', NULL, '13655588928c329', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(14, 'Anastasia', 'lesch.dulce@example.org', 'Delectus.', 'Illo recusandae porro beatae quas est animi.', NULL, '14655588928d05d', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(15, 'Donna', 'jennie47@example.org', 'Dolor.', 'Nobis rerum et alias soluta et.', NULL, '15655588928df85', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(16, 'Madelynn', 'bessie.feeney@example.com', 'Debitis ipsa.', 'Temporibus laudantium aliquam perspiciatis.', NULL, '16655588928ed3e', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(17, 'Fredy', 'nat98@example.com', 'Eius eos velit.', 'Rerum incidunt nulla ea et eum.', NULL, '17655588928fadb', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(18, 'Norwood', 'schaden.jeanie@example.com', 'Necessitatibus.', 'Placeat reprehenderit non repellat debitis.', NULL, '1865558892908cd', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(19, 'Corine', 'yberge@example.com', 'Nam numquam.', 'Nam reprehenderit iste maxime non.', NULL, '1965558892917ab', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(20, 'Lane', 'vhirthe@example.org', 'Sed est et cum.', 'Debitis corporis aliquam quo veniam laudantium.', NULL, '20655588929252b', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(21, 'Vallie', 'beer.charity@example.net', 'Sapiente.', 'Nam aut qui dolor. Dicta ad nulla et laborum qui.', NULL, '21655588929366f', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(22, 'Clemens', 'gshanahan@example.com', 'Necessitatibus.', 'At et ab sint quia.', NULL, '2265558892943ee', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(23, 'Marquise', 'leannon.moises@example.com', 'Error quia.', 'Exercitationem natus omnis quis fugit.', NULL, '236555889295391', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(24, 'Miguel', 'wsmitham@example.net', 'Architecto.', 'Illo rerum aut et nam modi odio suscipit.', NULL, '2465558892960ea', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(25, 'Alena', 'murazik.jamil@example.org', 'Et non.', 'Laudantium quam sint fuga perspiciatis sit.', NULL, '256555889296cb1', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(26, 'Kaitlyn', 'richard.buckridge@example.com', 'Saepe.', 'Esse et totam laborum quo id et et.', NULL, '266555889297a25', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(27, 'Krystina', 'ncollier@example.net', 'Iure nemo.', 'Quas ipsum quaerat ut ea.', NULL, '276555889298967', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(28, 'Emiliano', 'julianne28@example.org', 'Ut facilis.', 'Id voluptatum saepe aspernatur sunt sit.', NULL, '2865558892996d9', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(29, 'Cynthia', 'garth38@example.org', 'Rem nesciunt.', 'Aut mollitia quis quia facilis.', NULL, '29655588929aa74', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(30, 'Magnolia', 'spinka.maci@example.net', 'Neque debitis.', 'Facere quibusdam dicta est dolores.', NULL, '30655588929b848', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2022_11_23_044055_create_user_roles_table', 1),
(10, '2022_11_23_063518_create_user_permissions_table', 1),
(11, '2023_02_13_225810_create_contact_messages_table', 1),
(12, '2023_05_05_174919_create_account_categories_table', 1),
(13, '2023_05_05_174920_create_account_category_types_table', 1),
(14, '2023_05_05_175328_create_account_log_attachments_table', 1),
(15, '2023_05_05_175328_create_account_logs_table', 1),
(16, '2023_05_05_175328_create_accountant_vendors_table', 1),
(17, '2023_05_05_175533_create_accounts_table', 1),
(18, '2023_05_05_175730_create_addresses_table', 1),
(19, '2023_05_05_180029_create_app_setting_titles_table', 1),
(20, '2023_05_05_180118_create_app_setting_values_table', 1),
(21, '2023_05_05_202443_create_brands_table', 1),
(22, '2023_05_05_202750_create_categories_table', 1),
(23, '2023_05_05_203737_create_order_coupons_table', 1),
(24, '2023_05_05_204242_create_order_delivery_infos_table', 1),
(25, '2023_05_05_205057_create_order_details_table', 1),
(26, '2023_05_05_205223_create_order_payments_table', 1),
(27, '2023_05_05_205408_create_order_variants_table', 1),
(28, '2023_05_05_210559_create_orders_table', 1),
(29, '2023_05_05_211244_create_phone_numbers_table', 1),
(30, '2023_05_05_211501_create_product_carts_table', 1),
(31, '2023_05_05_211700_create_product_discounts_table', 1),
(32, '2023_05_05_212332_create_product_images_table', 1),
(33, '2023_05_05_212438_create_product_in_branches_table', 1),
(34, '2023_05_05_212439_create_product_offer_products_table', 1),
(35, '2023_05_05_212646_create_product_offers_table', 1),
(36, '2023_05_05_213900_create_product_returns_table', 1),
(37, '2023_05_05_214001_create_product_reviews_table', 1),
(38, '2023_05_05_214402_create_product_stock_logs_table', 1),
(39, '2023_05_05_214827_create_product_writers_table', 1),
(40, '2023_05_05_214828_create_product_translators_table', 1),
(41, '2023_05_05_215055_create_production_used_papers_table', 1),
(42, '2023_05_05_215249_create_production_statuses_table', 1),
(43, '2023_05_05_215250_create_production_designers_table', 1),
(44, '2023_05_05_215251_create_production_costs_table', 1),
(45, '2023_05_05_221338_create_productions_table', 1),
(46, '2023_05_05_221525_create_products_table', 1),
(47, '2023_05_05_222412_create_supplier_bindings_table', 1),
(48, '2023_05_05_222551_create_supplier_paper_stocks_table', 1),
(49, '2023_05_05_222551_create_supplier_papers_table', 1),
(50, '2023_05_05_222712_create_supplier_prints_table', 1),
(51, '2023_05_05_222904_create_table_update_logs_table', 1),
(52, '2023_05_05_223229_create_banners_table', 1),
(53, '2023_05_24_162255_create_abouts_table', 1),
(54, '2023_09_14_121213_create_account_numbers_table', 1),
(55, '2023_09_20_110948_create_account_customers_table', 1),
(56, '2023_09_20_111005_create_account_supplier_logs_table', 1),
(57, '2023_11_16_152847_create_order_payment_attachments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0056a851ef1abc80281957bbf4a937c4cede74c2c7d1bb6f78fdaea40f223a3e2940abbc3a154001', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-16 09:47:13', '2023-11-16 09:47:13', '2024-11-16 15:47:13'),
('0961c6771c419f9ffbfd5533ae90eac18cd37f7794ecba8067a9fb4f2394677e736ca8d9ae68f31f', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-18 00:17:36', '2023-11-18 00:17:36', '2024-11-18 06:17:36'),
('0b3394cb0523bb881964336ca860117ddcb79a6eee9fa71adb89d8f10e7d13a934abcb6641ab4f97', 4, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-16 03:13:52', '2023-11-16 03:13:52', '2024-11-16 09:13:52'),
('1e6ec2118f30854aa9a424360c191760a27a2d1b27e9ac0cc032c6b8f8054c4628425f64b563442c', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-16 11:01:38', '2023-11-16 11:01:38', '2024-11-16 17:01:38'),
('390dd23963d4d1c3c21b71cfd1d3a80a82ed5211df74f63c9fe438131e3c7b3f402c0e00d319c48d', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-17 21:57:41', '2023-11-17 21:57:41', '2024-11-18 03:57:41'),
('4938ca09586832fb64046f00e58cda8c39bd354c4a43b3cd93516216932c82ff6a6c4eb91eb04153', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-16 09:17:40', '2023-11-16 09:17:40', '2024-11-16 15:17:40'),
('4dc8bb510111a0c5fa0664eeaa5573235959f2fed8c85be4fc56589c6a4ec6ae97fabad072b5de9a', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-17 15:56:13', '2023-11-17 15:56:13', '2024-11-17 21:56:13'),
('54877e9120ee03b3a10d869d8173eb65bb68ed7ef0061607fcbaf42143229afee6a47d4628a33ccf', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-17 22:45:53', '2023-11-17 22:45:53', '2024-11-18 04:45:53'),
('55af809ab03a457aec452ca0e727b1eecbc5472c46644bd0c366c82a1f5b4d10752efaacb8808bc1', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-18 03:00:54', '2023-11-18 03:00:54', '2024-11-18 09:00:54'),
('5bdc7814086dfd226b2b31d7e9ad8ed0ecca5487a9689ba5aee6a28df7b489c614e56c77618baa35', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-17 23:51:30', '2023-11-17 23:51:30', '2024-11-18 05:51:30'),
('5f4cf5e1ab2f03aa86ada24aec45fe148950a8d98dbe922dd79739ac167fbdec5c27bda02ae0ddc1', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-17 19:13:22', '2023-11-17 19:13:22', '2024-11-18 01:13:22'),
('78337d267c340b99044413a815a59d4f4ab0dcd33d3fd4c0c36cd8628c51dc7c6eb5b0e8016cc2ab', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-16 08:11:09', '2023-11-16 08:11:09', '2024-11-16 14:11:09'),
('7ea986e370c4ad9eea396091539bbd43854a5a57e0d76f9dd67d264e6f11ad6749c6367df3328297', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-17 22:07:25', '2023-11-17 22:07:25', '2024-11-18 04:07:25'),
('935ee2d24fffea0a957621d146d3c3b813df72177d4072e935240ebbf86a8f0e29700d6848bad1e7', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-17 17:00:14', '2023-11-17 17:00:14', '2024-11-17 23:00:14'),
('97e06aeaf92bf1128a604d353e688ad5e316ddd51cee16bcacdaf1b92c10c1296f2859ed67d0442d', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-18 01:31:23', '2023-11-18 01:31:23', '2024-11-18 07:31:23'),
('99077bd451f8ec311c61cf5c9ef1c9f875dd6382c882a57afee7de253082a0f668b061acdb056dd6', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-18 03:00:40', '2023-11-18 03:00:40', '2024-11-18 09:00:40'),
('a47ab23ac789b9993ca80355c25a8d61b4fcbfc17c4d99cf7a0636fd802cbfacd97609e63bc7056b', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-18 00:43:49', '2023-11-18 00:43:49', '2024-11-18 06:43:49'),
('b59b7701b9f6adde346c168bfe5a791b4a183d3b4443ce8f3cdbc7ef906fa843a8ee06f5f3dd3d30', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-16 10:34:34', '2023-11-16 10:34:34', '2024-11-16 16:34:34'),
('b7b065cfb349516455c63977fb441e134fb8d5c3012529c46cb1796cdf4e940f7ef77d7bc0d6c078', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-16 05:36:51', '2023-11-16 05:36:51', '2024-11-16 11:36:51'),
('c3caec927428e4138f78750f4b89af2347bf052e38163af26b88519dc13a0083888407a216a41f9c', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-16 10:34:48', '2023-11-16 10:34:48', '2024-11-16 16:34:48'),
('d184b391664ded5f0f01ddc5bb419af2d600df236b66a54c333db0e38caee3e05efe8660f922b59d', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-16 03:19:00', '2023-11-16 03:19:00', '2024-11-16 09:19:00'),
('f04a11970d14abfc4af68b712b1e6772a3f0da48edbbe31ee7d9fb793c7cf2b058c11c1b55b8f76a', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-17 20:52:04', '2023-11-17 20:52:04', '2024-11-18 02:52:04'),
('f168d032d73d26999c178d9050b067ce95770d1e35035840204d03908562324fba655d1a9f671f4b', 2, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 1, '2023-11-16 09:46:18', '2023-11-16 09:46:18', '2024-11-16 15:46:18'),
('f9bac779b3ae7778d449e9eca03ba7d7421233de9de0be161a26a89006fac05d62a4546f2c78b65d', 5, '9a9fa396-ff55-4215-9877-b90cd9641147', 'accessToken', '[]', 0, '2023-11-16 11:46:40', '2023-11-16 11:46:40', '2024-11-16 17:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('9a9fa396-ff55-4215-9877-b90cd9641147', NULL, 'Laravel Personal Access Client', 'VaFgApyh1YSCfbzv1B0wgZg7U8Z9AMdqAfarxZ5k', NULL, 'http://localhost', 1, 0, 0, '2023-11-16 03:12:30', '2023-11-16 03:12:30'),
('9a9fa397-0619-48a0-983b-65721b4e02d9', NULL, 'Laravel Password Grant Client', '6YbadGxDd0he6FAJv4quEXeEcpuvbuZ00pys4gbq', 'users', 'http://localhost', 0, 1, 0, '2023-11-16 03:12:30', '2023-11-16 03:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9a9fa396-ff55-4215-9877-b90cd9641147', '2023-11-16 03:12:30', '2023-11-16 03:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `address_id` bigint UNSIGNED DEFAULT NULL,
  `invoice_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_id` bigint UNSIGNED DEFAULT NULL,
  `backup_sales_id` bigint UNSIGNED DEFAULT NULL,
  `invoice_date` timestamp NULL DEFAULT NULL,
  `order_type` enum('quotation','invoice','ecommerce') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'quotation, invoice, ecomerce order',
  `order_status` enum('pending','accepted','processing','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending, accepted, processing, delivered, canceled',
  `order_coupon_id` bigint UNSIGNED DEFAULT NULL,
  `sub_total` double UNSIGNED NOT NULL DEFAULT '0',
  `delivery_charge` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `variant_price` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `discount` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `coupon_discount` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `total_price` double UNSIGNED NOT NULL DEFAULT '0',
  `total_paid` double UNSIGNED NOT NULL DEFAULT '0',
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending, partially paid, paid',
  `delivery_method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pickup',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_id`, `address_id`, `invoice_id`, `sales_id`, `backup_sales_id`, `invoice_date`, `order_type`, `order_status`, `order_coupon_id`, `sub_total`, `delivery_charge`, `variant_price`, `discount`, `coupon_discount`, `total_price`, `total_paid`, `payment_status`, `delivery_method`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 6, 'INV-2120517001043411', NULL, NULL, '2023-11-13 03:12:21', 'ecommerce', 'pending', NULL, 35965, 120.00, 0.00, 313.00, 0.00, 35772, 21185, 'partially paid', 'courier_out_dhaka', NULL, '6555889575400', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(2, 4, NULL, 6, 'INV-7284317001043412', NULL, NULL, '2023-11-12 03:12:21', 'quotation', 'canceled', NULL, 24721, 60.00, 0.00, 307.00, 0.00, 24474, 14715, 'partially paid', 'courier_in_dhaka', NULL, '65558895813d7', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(3, 4, NULL, 6, 'INV-2579617001043413', NULL, NULL, '2023-11-14 03:12:21', 'quotation', 'accepted', NULL, 32502, 60.00, 0.00, 313.00, 0.00, 32249, 25611, 'partially paid', 'courier_in_dhaka', NULL, '655588958d0bd', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(4, 4, NULL, 6, 'INV-6824417001043414', NULL, NULL, '2023-11-11 03:12:21', 'quotation', 'delivered', NULL, 29210, 120.00, 0.00, 321.00, 0.00, 29009, 26041, 'partially paid', 'courier_out_dhaka', NULL, '655588959880d', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(5, 4, NULL, 6, 'INV-4696217001043415', NULL, NULL, '2023-11-15 03:12:21', 'ecommerce', 'pending', NULL, 27356, 60.00, 0.00, 290.00, 0.00, 27126, 17746, 'partially paid', 'courier_in_dhaka', NULL, '65558895a420d', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(6, 4, NULL, 6, 'INV-5102717001043416', NULL, NULL, '2023-11-12 03:12:21', 'invoice', 'delivered', NULL, 31205, 0.00, 0.00, 308.00, 0.00, 30897, 24368, 'partially paid', 'pickup', NULL, '65558895b5d4e', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(7, 4, NULL, 6, 'INV-3466917001043417', NULL, NULL, '2023-11-13 03:12:21', 'invoice', 'canceled', NULL, 36948, 0.00, 0.00, 261.00, 0.00, 36687, 27462, 'partially paid', 'pickup', NULL, '65558895c27e5', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(8, 4, NULL, 6, 'INV-4250017001043418', NULL, NULL, '2023-11-15 03:12:21', 'quotation', 'delivered', NULL, 28447, 0.00, 0.00, 266.00, 0.00, 28181, 15958, 'partially paid', 'pickup', NULL, '65558895ce596', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(9, 4, NULL, 6, 'INV-2507617001043419', NULL, NULL, '2023-11-14 03:12:21', 'invoice', 'accepted', NULL, 26070, 120.00, 0.00, 279.00, 0.00, 25911, 17991, 'partially paid', 'courier_out_dhaka', NULL, '65558895da18f', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(10, 4, NULL, 6, 'INV-97883170010434110', NULL, NULL, '2023-11-11 03:12:21', 'ecommerce', 'accepted', NULL, 26455, 120.00, 0.00, 341.00, 0.00, 26234, 14252, 'partially paid', 'courier_out_dhaka', NULL, '65558895e6477', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(11, 4, NULL, 6, 'INV-10404170010434111', NULL, NULL, '2023-11-11 03:12:21', 'ecommerce', 'processing', NULL, 29095, 60.00, 0.00, 312.00, 0.00, 28843, 25178, 'partially paid', 'courier_in_dhaka', NULL, '65558895f23b9', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:22'),
(12, 5, NULL, 6, 'INV-39570170010434212', NULL, NULL, '2023-11-14 03:12:22', 'invoice', 'processing', NULL, 34250, 60.00, 0.00, 268.00, 0.00, 34042, 32962, 'partially paid', 'courier_in_dhaka', NULL, '6555889609bef', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(13, 5, NULL, 6, 'INV-94835170010434213', NULL, NULL, '2023-11-14 03:12:22', 'invoice', 'pending', NULL, 36884, 60.00, 0.00, 293.00, 0.00, 36651, 31615, 'partially paid', 'courier_in_dhaka', NULL, '6555889615dd0', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(14, 5, NULL, 6, 'INV-64633170010434214', NULL, NULL, '2023-11-14 03:12:22', 'quotation', 'pending', NULL, 37017, 0.00, 0.00, 335.00, 0.00, 36682, 33358, 'partially paid', 'pickup', NULL, '655588962178c', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(15, 5, NULL, 6, 'INV-51087170010434215', NULL, NULL, '2023-11-13 03:12:22', 'ecommerce', 'delivered', NULL, 28697, 0.00, 0.00, 294.00, 0.00, 28403, 22245, 'partially paid', 'pickup', NULL, '655588962f3b8', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(16, 5, NULL, 6, 'INV-79568170010434216', NULL, NULL, '2023-11-12 03:12:22', 'invoice', 'accepted', NULL, 33883, 60.00, 0.00, 298.00, 0.00, 33645, 28151, 'partially paid', 'courier_in_dhaka', NULL, '655588963bf3c', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(17, 5, NULL, 6, 'INV-10780170010434217', NULL, NULL, '2023-11-15 03:12:22', 'ecommerce', 'pending', NULL, 35712, 60.00, 0.00, 293.00, 0.00, 35479, 32363, 'partially paid', 'courier_in_dhaka', NULL, '6555889647839', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(18, 5, NULL, 6, 'INV-13223170010434218', NULL, NULL, '2023-11-12 03:12:22', 'ecommerce', 'accepted', NULL, 30278, 120.00, 0.00, 345.00, 0.00, 30053, 16826, 'partially paid', 'courier_out_dhaka', NULL, '655588965313b', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(19, 5, NULL, 6, 'INV-15898170010434219', NULL, NULL, '2023-11-12 03:12:22', 'quotation', 'accepted', NULL, 32217, 120.00, 0.00, 285.00, 0.00, 32052, 19847, 'partially paid', 'courier_out_dhaka', NULL, '655588965ea2c', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(20, 5, NULL, 6, 'INV-23661170010434220', NULL, NULL, '2023-11-15 03:12:22', 'invoice', 'processing', NULL, 30374, 0.00, 0.00, 343.00, 0.00, 30031, 27321, 'partially paid', 'pickup', NULL, '655588966ab6d', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(21, 5, NULL, 6, 'INV-81009170010434221', NULL, NULL, '2023-11-12 03:12:22', 'quotation', 'accepted', NULL, 32525, 0.00, 0.00, 328.00, 0.00, 32197, 19042, 'partially paid', 'pickup', NULL, '6555889676678', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(22, 5, NULL, 5, 'INV-62444170010434222', 10005, NULL, '2023-11-15 03:12:22', 'invoice', 'pending', NULL, 27327, 120.00, 0.00, 332.00, 0.00, 27447, 21447, 'partially paid', 'courier_out_dhaka', NULL, '6555889681d1e', 1, '2023-11-16 03:12:22', '2023-11-17 21:50:58'),
(23, 6, NULL, 6, 'INV-92204170010434223', NULL, NULL, '2023-11-14 03:12:22', 'ecommerce', 'accepted', NULL, 31052, 60.00, 0.00, 309.00, 0.00, 30803, 30614, 'partially paid', 'courier_in_dhaka', NULL, '655588968d961', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(24, 6, NULL, 6, 'INV-53657170010434224', NULL, NULL, '2023-11-13 03:12:22', 'invoice', 'processing', NULL, 34461, 120.00, 0.00, 319.00, 0.00, 34262, 29715, 'partially paid', 'courier_out_dhaka', NULL, '655588969b537', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(25, 6, NULL, 6, 'INV-25333170010434225', NULL, NULL, '2023-11-14 03:12:22', 'invoice', 'canceled', NULL, 29718, 60.00, 0.00, 307.00, 0.00, 29471, 20424, 'partially paid', 'courier_in_dhaka', NULL, '65558896a9047', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(26, 6, NULL, 6, 'INV-72861170010434226', NULL, NULL, '2023-11-13 03:12:22', 'invoice', 'processing', NULL, 31969, 60.00, 0.00, 293.00, 0.00, 31736, 27708, 'partially paid', 'courier_in_dhaka', NULL, '65558896b89f6', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(27, 6, NULL, 6, 'INV-17629170010434227', NULL, NULL, '2023-11-14 03:12:22', 'ecommerce', 'canceled', NULL, 28070, 60.00, 0.00, 319.00, 0.00, 27811, 21566, 'partially paid', 'courier_in_dhaka', NULL, '65558896c421e', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(28, 6, NULL, 6, 'INV-35586170010434228', NULL, NULL, '2023-11-14 03:12:22', 'ecommerce', 'pending', NULL, 29512, 60.00, 0.00, 288.00, 0.00, 29284, 23318, 'partially paid', 'courier_in_dhaka', NULL, '65558896cf5ce', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(29, 6, NULL, 6, 'INV-37344170010434229', NULL, NULL, '2023-11-11 03:12:22', 'quotation', 'canceled', NULL, 29337, 0.00, 0.00, 266.00, 0.00, 29071, 27377, 'partially paid', 'pickup', NULL, '65558896dada3', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(30, 6, NULL, 6, 'INV-38416170010434230', NULL, NULL, '2023-11-11 03:12:22', 'ecommerce', 'canceled', NULL, 29585, 0.00, 0.00, 294.00, 0.00, 29291, 27081, 'partially paid', 'pickup', NULL, '65558896e6a2a', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(31, 6, NULL, 6, 'INV-79944170010434231', NULL, NULL, '2023-11-14 03:12:22', 'quotation', 'accepted', NULL, 29258, 60.00, 0.00, 312.00, 0.00, 29006, 23678, 'partially paid', 'courier_in_dhaka', NULL, '65558896f22c6', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(32, 6, NULL, 6, 'INV-90367170010434332', NULL, NULL, '2023-11-13 03:12:23', 'invoice', 'pending', NULL, 29631, 120.00, 0.00, 328.00, 0.00, 29423, 23758, 'partially paid', 'courier_out_dhaka', NULL, '655588970a0b6', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(33, 6, NULL, 6, 'INV-76668170010434333', NULL, NULL, '2023-11-11 03:12:23', 'quotation', 'accepted', NULL, 36885, 60.00, 0.00, 259.00, 0.00, 36686, 23773, 'partially paid', 'courier_in_dhaka', NULL, '6555889715fd0', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(34, 6, NULL, 2, 'PUB-2023111634', NULL, NULL, '2023-11-16 05:55:01', 'invoice', 'pending', NULL, 4021, 120.00, 0.00, 0.00, 0.00, 4141, 0, 'pending', 'courier_out_dhaka', 2, '6555aeb562414', 1, '2023-11-16 05:55:01', '2023-11-16 05:55:32'),
(35, 5, NULL, 5, 'PUB-2023111835', NULL, NULL, '2023-11-17 18:21:25', 'invoice', 'pending', NULL, 2676, 120.00, 0.00, 399.00, 0.00, 2796, 0, 'pending', 'courier_out_dhaka', 5, '6557af25a64bc', 1, '2023-11-17 18:21:25', '2023-11-17 18:21:25'),
(36, 5, NULL, 5, 'PUB-2023111836', NULL, NULL, '2023-11-17 19:54:01', 'invoice', 'pending', NULL, 2276, 120.00, 0.00, 305.00, 0.00, 2396, 0, 'pending', 'courier_out_dhaka', 5, '6557c4d987220', 1, '2023-11-17 19:54:01', '2023-11-17 19:54:01'),
(37, 5, NULL, 5, 'PUB-2023111837', NULL, NULL, '2023-11-17 19:56:19', 'invoice', 'pending', NULL, 3476, 120.00, 0.00, 229.00, 0.00, 3596, 0, 'pending', 'courier_out_dhaka', 5, '6557c56322bbf', 1, '2023-11-17 19:56:19', '2023-11-17 19:56:19'),
(38, 5, NULL, 5, 'PUB-2023111838', 10001, NULL, '2023-11-17 20:34:15', 'invoice', 'pending', NULL, 1738, 120.00, 0.00, 229.00, 0.00, 1858, 1858, 'paid', 'courier_out_dhaka', 5, '6557ce471c773', 1, '2023-11-17 20:34:15', '2023-11-17 21:47:27'),
(39, 5, NULL, 5, 'PUB-2023111839', 10008, NULL, '2023-11-17 22:10:09', 'invoice', 'pending', NULL, 1379.6, 120.00, 0.00, 0.00, 0.00, 1499.6, 1499.6, 'paid', 'courier_out_dhaka', 5, '6557e4c11f91c', 1, '2023-11-17 22:10:09', '2023-11-17 23:56:16'),
(40, 5, NULL, 5, 'PUB-2023111840', 10006, 10006, '2023-11-17 22:13:44', 'invoice', 'delivered', NULL, 2141.2, 120.00, 0.00, 0.00, 0.00, 2261.2, 2261.2, 'paid', 'courier_out_dhaka', 5, '6557e59871a48', 1, '2023-11-17 22:13:44', '2023-11-17 22:51:07'),
(41, 5, NULL, 2, 'PUB-2023111841', 10007, NULL, '2023-11-17 22:46:51', 'invoice', 'pending', NULL, 0, 120.00, 0.00, 420.00, 0.00, 120, 660, 'pending', 'courier_out_dhaka', 5, '6557ed5b09dec', 1, '2023-11-17 22:46:51', '2023-11-18 00:20:58'),
(42, 5, NULL, 2, 'PUB-2023111842', NULL, NULL, '2023-11-18 00:44:03', 'invoice', 'pending', NULL, 627, 166.00, 0.00, 73.00, 0.00, 720, 720, 'pending', 'courier_out_dhaka', 5, '655808d3bfb54', 1, '2023-11-18 00:44:03', '2023-11-18 01:56:56'),
(43, 5, NULL, 2, 'PUB-2023111843', NULL, NULL, '2023-11-18 02:24:11', 'invoice', 'pending', NULL, 30, 15.00, 0.00, 35.00, 0.00, 10, 0, 'pending', 'courier_out_dhaka', 2, '6558204bd054d', 1, '2023-11-18 02:24:11', '2023-11-18 02:24:11'),
(44, 5, NULL, 2, 'PUB-2023111844', NULL, NULL, '2023-11-18 02:46:56', 'invoice', 'pending', NULL, 60, 15.00, 0.00, 35.00, 0.00, 40, 0, 'pending', 'courier_out_dhaka', 2, '655825a07a1bd', 1, '2023-11-18 02:46:56', '2023-11-18 03:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_coupons`
--

CREATE TABLE `order_coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `flat_amount` double(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `expire_date` datetime DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_coupons`
--

INSERT INTO `order_coupons` (`id`, `title`, `coupon_code`, `discount_amount`, `flat_amount`, `expire_date`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '20% off on Electronics', '4UN3LLMF', 0.00, 78.00, '2023-11-18 00:00:00', NULL, '20-off-on-electronics', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(2, 'Free Shipping on Orders Over $50', 'KPMC1HL9', 24.00, 0.00, '2023-11-24 00:00:00', NULL, 'free-shipping-on-orders-over-50', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(3, 'Special Discount for New Customers', 'CT668NR9', 0.00, 93.00, '2023-12-13 00:00:00', NULL, 'special-discount-for-new-customers', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(4, '20% off on Electronics', '9U0QFNWU', 18.00, 0.00, '2023-11-23 00:00:00', NULL, '20-off-on-electronics', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(5, 'Buy One Get One Free', '94UZRU5Z', 0.00, 93.00, '2023-12-12 00:00:00', NULL, 'buy-one-get-one-free', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(6, '20% off on Electronics', 'H3T8UEHR', 23.00, 0.00, '2023-12-14 00:00:00', NULL, '20-off-on-electronics', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(7, '10% off on Fashion Items', 'S4WEI7B5', 0.00, 60.00, '2023-11-25 00:00:00', NULL, '10-off-on-fashion-items', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(8, '10% off on Fashion Items', 'V27EUT9O', 28.00, 0.00, '2023-12-07 00:00:00', NULL, '10-off-on-fashion-items', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(9, 'Free Shipping on Orders Over $50', '9LUUY555', 0.00, 99.00, '2023-12-12 00:00:00', NULL, 'free-shipping-on-orders-over-50', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(10, '20% off on Electronics', 'WWFV8FUT', 20.00, 0.00, '2023-11-26 00:00:00', NULL, '20-off-on-electronics', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_infos`
--

CREATE TABLE `order_delivery_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `delivery_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_cost` double(8,2) UNSIGNED DEFAULT NULL,
  `courier_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'courier name: sundarban, ali express',
  `address_id` bigint UNSIGNED DEFAULT NULL COMMENT 'address id type billing from address table',
  `location_id` bigint UNSIGNED DEFAULT NULL COMMENT 'address id type shipping from addresses',
  `creator` bigint DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_delivery_infos`
--

INSERT INTO `order_delivery_infos` (`id`, `order_id`, `user_id`, `customer_id`, `delivery_method`, `delivery_cost`, `courier_name`, `address_id`, `location_id`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '65558895760c0', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(2, 2, 4, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '6555889581f54', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(3, 3, 4, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '655588958d9fc', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(4, 4, 4, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '6555889598fe4', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(5, 5, 4, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558895a5570', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(6, 6, 4, NULL, 'pickup', 0.00, '', 6, 6, NULL, '65558895b68b9', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(7, 7, 4, NULL, 'pickup', 0.00, '', 6, 6, NULL, '65558895c31d6', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(8, 8, 4, NULL, 'pickup', 0.00, '', 6, 6, NULL, '65558895cef63', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(9, 9, 4, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '65558895daa84', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(10, 10, 4, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '65558895e6b47', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(11, 11, 4, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558895f29c9', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(12, 12, 5, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '655588960a2a7', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(13, 13, 5, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558896164d3', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(14, 14, 5, NULL, 'pickup', 0.00, '', 6, 6, NULL, '6555889622123', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(15, 15, 5, NULL, 'pickup', 0.00, '', 6, 6, NULL, '65558896300dd', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(16, 16, 5, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '655588963c832', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(17, 17, 5, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '6555889648087', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(18, 18, 5, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '65558896537ec', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(19, 19, 5, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '655588965f123', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(20, 20, 5, NULL, 'pickup', 0.00, '', 6, 6, NULL, '655588966b4fa', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(21, 21, 5, NULL, 'pickup', 0.00, '', 6, 6, NULL, '6555889677132', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(22, 22, 5, NULL, 'pickup', 0.00, '', 6, 6, NULL, '6555889682605', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(23, 23, 6, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '655588968e0c7', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(24, 24, 6, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '655588969c084', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(25, 25, 6, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558896a9954', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(26, 26, 6, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558896b9099', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(27, 27, 6, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558896c48f1', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(28, 28, 6, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558896cfee4', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(29, 29, 6, NULL, 'pickup', 0.00, '', 6, 6, NULL, '65558896db6e1', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(30, 30, 6, NULL, 'pickup', 0.00, '', 6, 6, NULL, '65558896e7335', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(31, 31, 6, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '65558896f2b4e', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(32, 32, 6, NULL, 'courier_out_dhaka', 120.00, 'sundarban', 6, 6, NULL, '655588970a9a0', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(33, 33, 6, NULL, 'courier_in_dhaka', 60.00, 'sundarban', 6, 6, NULL, '655588971691c', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(34, 22, 5, NULL, '', 120.00, '', 5, 5, 5, '6557a388ecf66', 1, '2023-11-17 17:31:52', '2023-11-17 17:31:52'),
(35, 22, 5, NULL, '', 120.00, '', 5, 5, 5, '6557a39156a00', 1, '2023-11-17 17:32:01', '2023-11-17 17:32:01'),
(36, 22, 5, NULL, '', 120.00, '', 5, 5, 5, '6557a39d5ed93', 1, '2023-11-17 17:32:13', '2023-11-17 17:32:13'),
(37, 22, 5, NULL, '', 120.00, '', 5, 5, 5, '6557a3be4a8fa', 1, '2023-11-17 17:32:46', '2023-11-17 17:32:46'),
(38, 35, 5, NULL, '', 120.00, '', 5, 5, 5, '6557af25c2e32', 1, '2023-11-17 18:21:25', '2023-11-17 18:21:25'),
(39, 36, 5, NULL, '', 120.00, '', 5, 5, 5, '6557c4d99c5b0', 1, '2023-11-17 19:54:01', '2023-11-17 19:54:01'),
(40, 37, 5, NULL, '', 120.00, '', 5, 5, 5, '6557c5633664d', 1, '2023-11-17 19:56:19', '2023-11-17 19:56:19'),
(41, 38, 5, NULL, '', 120.00, '', 5, 5, 5, '6557ce4733a31', 1, '2023-11-17 20:34:15', '2023-11-17 20:34:15'),
(42, 39, 5, NULL, '', 120.00, '', 5, 5, 5, '6557e4c134dc6', 1, '2023-11-17 22:10:09', '2023-11-17 22:10:09'),
(43, 40, 5, NULL, '', 120.00, '', 5, 5, 5, '6557e598a03ea', 1, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(44, 41, 5, NULL, '', 120.00, '', 5, 5, 5, '6557ed5b1ea80', 1, '2023-11-17 22:46:51', '2023-11-17 22:46:51'),
(45, 41, 5, NULL, '', 120.00, '', 5, 5, 5, '6557ed9b57389', 1, '2023-11-17 22:47:55', '2023-11-17 22:47:55'),
(46, 42, 5, NULL, '', 120.00, '', 5, 5, 5, '655808d3cdd72', 1, '2023-11-18 00:44:03', '2023-11-18 00:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `discount_percent` double(8,2) DEFAULT NULL,
  `discount_price` double DEFAULT NULL,
  `sales_price` double(8,2) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `customer_id`, `user_id`, `product_id`, `product_name`, `product_code`, `product_price`, `discount_percent`, `discount_price`, `sales_price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 4, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(2, 1, NULL, 4, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 17, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(3, 1, NULL, 4, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 18, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(4, 1, NULL, 4, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(5, 2, NULL, 4, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 10, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(6, 2, NULL, 4, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 10, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(7, 2, NULL, 4, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 13, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(8, 2, NULL, 4, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 19, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(9, 3, NULL, 4, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(10, 3, NULL, 4, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 14, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(11, 3, NULL, 4, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 20, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(12, 3, NULL, 4, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 13, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(13, 4, NULL, 4, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 13, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(14, 4, NULL, 4, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 18, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(15, 4, NULL, 4, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(16, 4, NULL, 4, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(17, 5, NULL, 4, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 17, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(18, 5, NULL, 4, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 12, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(19, 5, NULL, 4, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(20, 5, NULL, 4, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 10, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(21, 6, NULL, 4, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 19, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(22, 6, NULL, 4, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(23, 6, NULL, 4, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(24, 6, NULL, 4, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 10, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(25, 7, NULL, 4, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 18, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(26, 7, NULL, 4, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(27, 7, NULL, 4, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 18, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(28, 7, NULL, 4, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 20, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(29, 8, NULL, 4, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(30, 8, NULL, 4, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 13, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(31, 8, NULL, 4, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 13, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(32, 8, NULL, 4, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 11, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(33, 9, NULL, 4, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 14, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(34, 9, NULL, 4, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 12, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(35, 9, NULL, 4, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(36, 9, NULL, 4, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 11, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(37, 10, NULL, 4, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 13, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(38, 10, NULL, 4, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(39, 10, NULL, 4, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 14, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(40, 10, NULL, 4, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 12, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(41, 11, NULL, 4, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(42, 11, NULL, 4, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(43, 11, NULL, 4, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(44, 11, NULL, 4, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 11, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(45, 12, NULL, 5, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 17, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(46, 12, NULL, 5, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 16, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(47, 12, NULL, 5, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(48, 12, NULL, 5, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 19, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(49, 13, NULL, 5, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(50, 13, NULL, 5, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(51, 13, NULL, 5, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 13, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(52, 13, NULL, 5, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(53, 14, NULL, 5, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 19, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(54, 14, NULL, 5, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(55, 14, NULL, 5, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(56, 14, NULL, 5, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(57, 15, NULL, 5, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(58, 15, NULL, 5, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 17, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(59, 15, NULL, 5, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 17, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(60, 15, NULL, 5, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 13, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(61, 16, NULL, 5, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 19, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(62, 16, NULL, 5, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 10, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(63, 16, NULL, 5, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(64, 16, NULL, 5, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 12, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(65, 17, NULL, 5, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(66, 17, NULL, 5, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 19, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(67, 17, NULL, 5, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 16, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(68, 17, NULL, 5, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(69, 18, NULL, 5, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 12, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(70, 18, NULL, 5, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 16, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(71, 18, NULL, 5, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(72, 18, NULL, 5, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(73, 19, NULL, 5, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(74, 19, NULL, 5, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(75, 19, NULL, 5, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(76, 19, NULL, 5, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 12, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(77, 20, NULL, 5, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 13, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(78, 20, NULL, 5, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 16, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(79, 20, NULL, 5, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(80, 20, NULL, 5, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 10, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(81, 21, NULL, 5, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(82, 21, NULL, 5, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 13, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(83, 21, NULL, 5, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 16, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(84, 21, NULL, 5, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(89, 23, NULL, 6, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 12, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(90, 23, NULL, 6, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(91, 23, NULL, 6, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(92, 23, NULL, 6, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 13, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(93, 24, NULL, 6, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(94, 24, NULL, 6, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 19, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(95, 24, NULL, 6, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(96, 24, NULL, 6, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(97, 25, NULL, 6, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(98, 25, NULL, 6, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(99, 25, NULL, 6, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 13, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(100, 25, NULL, 6, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(101, 26, NULL, 6, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(102, 26, NULL, 6, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(103, 26, NULL, 6, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(104, 26, NULL, 6, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(105, 27, NULL, 6, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(106, 27, NULL, 6, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(107, 27, NULL, 6, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 10, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(108, 27, NULL, 6, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 20, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(109, 28, NULL, 6, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(110, 28, NULL, 6, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(111, 28, NULL, 6, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 17, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(112, 28, NULL, 6, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(113, 29, NULL, 6, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 11, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(114, 29, NULL, 6, 4, 'কুরআনের সান্নিধ্যে', 'sk-1492', 614, NULL, 76, 538.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(115, 29, NULL, 6, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 17, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(116, 29, NULL, 6, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 12, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(117, 30, NULL, 6, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 15, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(118, 30, NULL, 6, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 19, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(119, 30, NULL, 6, 9, 'রাসূলুল্লাহর সাথে রোমাঞ্চকর একদিন', 'sk-1381', 680, NULL, 56, 624.00, 10, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(120, 30, NULL, 6, 10, 'দ্বীন কায়েমের নববী রূপরেখা', 'sk-1719', 512, NULL, 86, 426.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(121, 31, NULL, 6, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(122, 31, NULL, 6, 8, 'জীবন বিধান ইসলাম', 'sk-1049', 542, NULL, 84, 458.00, 18, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(123, 31, NULL, 6, 11, 'মানুষ গড়ার নববি শিল্প', 'sk-1232', 523, NULL, 79, 444.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(124, 31, NULL, 6, 12, 'পাবলিক ম্যাটারস', 'sk-1167', 522, NULL, 82, 440.00, 14, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(125, 32, NULL, 6, 2, 'আল কুদস', 'sk-1640', 683, NULL, 96, 587.00, 16, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(126, 32, NULL, 6, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 13, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(127, 32, NULL, 6, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 10, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(128, 32, NULL, 6, 7, 'ইমাম হাসান আল বান্নার ওযিফা', 'sk-1227', 570, NULL, 97, 473.00, 16, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(129, 33, NULL, 6, 1, 'ইখওয়ানুল মুসলিমিনের ইতিহাস', 'sk-1263', 600, NULL, 66, 534.00, 20, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(130, 33, NULL, 6, 3, 'ইসলামী আন্দোলনের কর্মীদের প্রতি ইমাম বান্নার নসিহত', 'sk-1614', 684, NULL, 67, 617.00, 18, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(131, 33, NULL, 6, 5, 'দুঃখ-কষ্টের হিকমত', 'sk-1985', 580, NULL, 58, 522.00, 12, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(132, 33, NULL, 6, 6, 'ইমাম বান্নার পাঠশালা', 'sk-1227', 533, NULL, 68, 465.00, 19, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(137, 34, NULL, 6, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, 11.00, 534, 534.00, 1, '2023-11-16 05:55:32', '2023-11-16 05:55:32'),
(138, 34, NULL, 6, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, 0.00, 587, 587.00, 4, '2023-11-16 05:55:32', '2023-11-16 05:55:32'),
(139, 34, NULL, 6, 3, 'এসো আলোর পথে', NULL, 9.8, 10.00, 617, 617.00, 1, '2023-11-16 05:55:32', '2023-11-16 05:55:32'),
(140, 34, NULL, 6, 5, 'মুক্তির পয়গাম', NULL, 14, 10.00, 522, 522.00, 1, '2023-11-16 05:55:32', '2023-11-16 05:55:32'),
(153, 22, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 66, 534.00, 11, '2023-11-17 17:32:46', '2023-11-17 17:32:46'),
(154, 22, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 96, 587.00, 11, '2023-11-17 17:32:46', '2023-11-17 17:32:46'),
(155, 22, NULL, 5, 8, 'ইসলামের প্রাথমিক পরিচয়', NULL, 35, NULL, 84, 458.00, 16, '2023-11-17 17:32:46', '2023-11-17 17:32:46'),
(156, 22, NULL, 5, 10, 'জীবন বদলে যাবে (বোর্ড বাইন্ডিং)', NULL, 140, NULL, 86, 426.00, 18, '2023-11-17 17:32:46', '2023-11-17 17:32:46'),
(157, 35, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 66, 534.00, 1, '2023-11-17 18:21:25', '2023-11-17 18:21:25'),
(158, 35, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 96, 587.00, 1, '2023-11-17 18:21:25', '2023-11-17 18:21:25'),
(159, 35, NULL, 5, 9, 'মোদের চলার পথ ইসলাম', NULL, 35, NULL, 56, 624.00, 1, '2023-11-17 18:21:25', '2023-11-17 18:21:25'),
(160, 35, NULL, 5, 8, 'ইসলামের প্রাথমিক পরিচয়', NULL, 35, NULL, 84, 458.00, 1, '2023-11-17 18:21:25', '2023-11-17 18:21:25'),
(161, 35, NULL, 5, 7, 'মোরা বড়ো হতে চাই', NULL, 35, NULL, 97, 473.00, 1, '2023-11-17 18:21:25', '2023-11-17 18:21:25'),
(162, 36, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 66, 534.00, 1, '2023-11-17 19:54:01', '2023-11-17 19:54:01'),
(163, 36, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 96, 587.00, 1, '2023-11-17 19:54:01', '2023-11-17 19:54:01'),
(164, 36, NULL, 5, 3, 'এসো আলোর পথে', NULL, 9.8, NULL, 67, 617.00, 1, '2023-11-17 19:54:01', '2023-11-17 19:54:01'),
(165, 36, NULL, 5, 4, 'বর্ণমালা', NULL, 120, NULL, 76, 538.00, 1, '2023-11-17 19:54:01', '2023-11-17 19:54:01'),
(166, 37, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 66, 534.00, 2, '2023-11-17 19:56:19', '2023-11-17 19:56:19'),
(167, 37, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 96, 587.00, 2, '2023-11-17 19:56:19', '2023-11-17 19:56:19'),
(168, 37, NULL, 5, 3, 'এসো আলোর পথে', NULL, 9.8, NULL, 67, 617.00, 2, '2023-11-17 19:56:19', '2023-11-17 19:56:19'),
(169, 38, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 66, 534.00, 1, '2023-11-17 20:34:15', '2023-11-17 20:34:15'),
(170, 38, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 96, 587.00, 1, '2023-11-17 20:34:15', '2023-11-17 20:34:15'),
(171, 38, NULL, 5, 3, 'এসো আলোর পথে', NULL, 9.8, NULL, 67, 617.00, 1, '2023-11-17 20:34:15', '2023-11-17 20:34:15'),
(172, 39, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 0, 0.00, 4, '2023-11-17 22:10:09', '2023-11-17 22:10:09'),
(173, 39, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 0, 0.00, 2, '2023-11-17 22:10:09', '2023-11-17 22:10:09'),
(174, 39, NULL, 5, 3, 'এসো আলোর পথে', NULL, 9.8, NULL, 0, 0.00, 2, '2023-11-17 22:10:09', '2023-11-17 22:10:09'),
(175, 39, NULL, 5, 4, 'বর্ণমালা', NULL, 120, NULL, 0, 0.00, 2, '2023-11-17 22:10:09', '2023-11-17 22:10:09'),
(176, 40, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 0, 260.00, 4, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(177, 40, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 0, 40.00, 2, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(178, 40, NULL, 5, 3, 'এসো আলোর পথে', NULL, 9.8, NULL, 0, 9.80, 2, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(179, 40, NULL, 5, 4, 'বর্ণমালা', NULL, 120, NULL, 0, 120.00, 2, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(180, 40, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, NULL, 0, 260.00, 1, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(181, 40, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, NULL, 0, 40.00, 2, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(182, 40, NULL, 5, 3, 'এসো আলোর পথে', NULL, 9.8, NULL, 0, 9.80, 2, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(183, 40, NULL, 5, 4, 'বর্ণমালা', NULL, 120, NULL, 0, 120.00, 3, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(184, 40, NULL, 5, 5, 'মুক্তির পয়গাম', NULL, 14, NULL, 0, 14.00, 3, '2023-11-17 22:13:44', '2023-11-17 22:13:44'),
(192, 41, NULL, 5, 4, 'বর্ণমালা', NULL, 120, 0.00, 0, 0.00, 2, '2023-11-18 00:20:58', '2023-11-18 00:20:58'),
(193, 41, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, 0.00, 0, 0.00, 1, '2023-11-18 00:20:58', '2023-11-18 00:20:58'),
(194, 41, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, 0.00, 0, 0.00, 1, '2023-11-18 00:20:58', '2023-11-18 00:20:58'),
(209, 42, NULL, 5, 1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 260, 5.00, 247, 260.00, 1, '2023-11-18 01:56:56', '2023-11-18 01:56:56'),
(210, 42, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, 5.00, 38, 40.00, 10, '2023-11-18 01:56:57', '2023-11-18 01:56:57'),
(211, 43, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, 50.00, 20, 40.00, 1, '2023-11-18 02:24:11', '2023-11-18 02:24:11'),
(212, 43, NULL, 5, 12, 'সংবিধান', NULL, 20, 50.00, 10, 20.00, 1, '2023-11-18 02:24:11', '2023-11-18 02:24:11'),
(229, 44, NULL, 5, 12, 'সংবিধান', NULL, 20, 50.00, 10, 20.00, 1, '2023-11-18 03:48:46', '2023-11-18 03:48:46'),
(230, 44, NULL, 5, 2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 40, 50.00, 20, 40.00, 1, '2023-11-18 03:48:46', '2023-11-18 03:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `account_logs_id` bigint UNSIGNED DEFAULT NULL,
  `account_id` bigint UNSIGNED DEFAULT NULL,
  `account_number_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double UNSIGNED NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `approved` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `user_id`, `customer_id`, `account_logs_id`, `account_id`, `account_number_id`, `payment_method`, `number`, `account_no`, `trx_id`, `amount`, `date`, `approved`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, 1, 3, 3, 'bkash', '+880 169874525', NULL, '6555889576e88', 21185, '2023-11-13', 1, NULL, '6555889576f30', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:23'),
(2, 2, 4, NULL, NULL, 3, 2, 'bkash', '+880 169874524', NULL, '6555889582c85', 14715, '2023-11-12', 0, NULL, '6555889582cdd', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(3, 3, 4, NULL, 2, 3, 2, 'bkash', '+880 169874524', NULL, '655588958e2cf', 25611, '2023-11-14', 1, NULL, '655588958e32c', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:23'),
(4, 4, 4, NULL, 3, 3, 2, 'bkash', '+880 169874524', NULL, '655588959985a', 26041, '2023-11-11', 1, NULL, '65558895998b2', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:23'),
(5, 5, 4, NULL, 4, 3, 3, 'bkash', '+880 169874525', NULL, '65558895a634e', 17746, '2023-11-15', 1, NULL, '65558895a63f8', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:23'),
(6, 6, 4, NULL, 5, 3, 2, 'bkash', '+880 169874524', NULL, '65558895b71b9', 24368, '2023-11-12', 1, NULL, '65558895b7211', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:23'),
(7, 7, 4, NULL, 6, 3, 3, 'bkash', '+880 169874525', NULL, '65558895c3b3b', 27462, '2023-11-13', 1, NULL, '65558895c3ba0', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:23'),
(8, 8, 4, NULL, NULL, 3, 1, 'bkash', '+880 169874523', NULL, '65558895cfbee', 15958, '2023-11-15', 0, NULL, '65558895cfc4d', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(9, 9, 4, NULL, NULL, 3, 3, 'bkash', '+880 169874525', NULL, '65558895db53a', 17991, '2023-11-14', 0, NULL, '65558895db5cc', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(10, 10, 4, NULL, 7, 3, 3, 'bkash', '+880 169874525', NULL, '65558895e7698', 14252, '2023-11-11', 1, NULL, '65558895e76f7', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:23'),
(11, 11, 4, NULL, NULL, 3, 1, 'bkash', '+880 169874523', NULL, '65558895f356f', 25178, '2023-11-11', 0, NULL, '65558895f35cf', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(12, 12, 5, NULL, NULL, 3, 1, 'bkash', '+880 169874523', NULL, '655588960ad46', 32962, '2023-11-14', 0, NULL, '655588960ad9a', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(13, 13, 5, NULL, NULL, 3, 1, 'bkash', '+880 169874523', NULL, '6555889616e01', 31615, '2023-11-14', 0, NULL, '6555889616e5f', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(14, 14, 5, NULL, 8, 3, 2, 'bkash', '+880 169874524', NULL, '6555889622972', 33358, '2023-11-14', 1, NULL, '65558896229c8', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(15, 15, 5, NULL, NULL, 3, 3, 'bkash', '+880 169874525', NULL, '655588963101b', 22245, '2023-11-13', 0, NULL, '65558896310d0', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(16, 16, 5, NULL, NULL, 3, 2, 'bkash', '+880 169874524', NULL, '655588963d14e', 28151, '2023-11-12', 0, NULL, '655588963d1aa', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(17, 17, 5, NULL, NULL, 3, 2, 'bkash', '+880 169874524', NULL, '6555889648ac4', 32363, '2023-11-15', 0, NULL, '6555889648b23', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(18, 18, 5, NULL, NULL, 3, 1, 'bkash', '+880 169874523', NULL, '65558896541ec', 16826, '2023-11-12', 0, NULL, '6555889654254', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(19, 19, 5, NULL, NULL, 3, 3, 'bkash', '+880 169874525', NULL, '655588965fb6e', 19847, '2023-11-12', 0, NULL, '655588965fbc5', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(20, 20, 5, NULL, 9, 3, 1, 'bkash', '+880 169874523', NULL, '655588966bd3c', 27321, '2023-11-15', 1, NULL, '655588966bd93', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(21, 21, 5, NULL, NULL, 3, 2, 'bkash', '+880 169874524', NULL, '6555889677b5f', 19042, '2023-11-12', 0, NULL, '6555889677bbf', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(22, 22, 5, NULL, 10, 3, 1, 'bkash', '+880 169874523', NULL, '655588968323c', 17793, '2023-11-15', 1, NULL, '6555889683295', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(23, 23, 6, NULL, 11, 3, 1, 'bkash', '+880 169874523', NULL, '655588968ec64', 30614, '2023-11-14', 1, NULL, '655588968ecc0', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(24, 24, 6, NULL, 12, 3, 3, 'bkash', '+880 169874525', NULL, '655588969d233', 29715, '2023-11-13', 1, NULL, '655588969d2bb', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(25, 25, 6, NULL, 13, 3, 2, 'bkash', '+880 169874524', NULL, '65558896aa295', 20424, '2023-11-14', 1, NULL, '65558896aa2fa', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(26, 26, 6, NULL, NULL, 3, 2, 'bkash', '+880 169874524', NULL, '65558896b9b0b', 27708, '2023-11-13', 0, NULL, '65558896b9b70', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(27, 27, 6, NULL, 14, 3, 2, 'bkash', '+880 169874524', NULL, '65558896c543f', 21566, '2023-11-14', 1, NULL, '65558896c5498', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(28, 28, 6, NULL, NULL, 3, 1, 'bkash', '+880 169874523', NULL, '65558896d0806', 23318, '2023-11-14', 0, NULL, '65558896d085f', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(29, 29, 6, NULL, 15, 3, 2, 'bkash', '+880 169874524', NULL, '65558896dbfaf', 27377, '2023-11-11', 1, NULL, '65558896dc00c', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:23'),
(30, 30, 6, NULL, NULL, 3, 3, 'bkash', '+880 169874525', NULL, '65558896e7c1d', 27081, '2023-11-11', 0, NULL, '65558896e7c77', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(31, 31, 6, NULL, NULL, 3, 1, 'bkash', '+880 169874523', NULL, '65558896f373e', 23678, '2023-11-14', 0, NULL, '65558896f379b', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(32, 32, 6, NULL, NULL, 3, 2, 'bkash', '+880 169874524', NULL, '655588970b26e', 23758, '2023-11-13', 0, NULL, '655588970b2c6', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(33, 33, 6, NULL, NULL, 3, 2, 'bkash', '+880 169874524', NULL, '655588971761a', 23773, '2023-11-11', 0, NULL, '655588971767d', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(34, 22, 5, NULL, 824, 2, 1, 'bank_account', '20503110201262812', NULL, '3434', 877, '2023-11-16', 1, 5, '6555f2d060e0c', 1, '2023-11-16 10:45:36', '2023-11-17 21:50:58'),
(35, 22, 5, NULL, 837, 2, 1, 'bank_account', '20503110201262812', NULL, '3423110100003250', 899, '2023-11-16', 1, 5, '6555f2fb261a9', 1, '2023-11-16 10:46:19', '2023-11-17 23:51:05'),
(36, 22, 5, NULL, 822, 2, 1, 'bank_account', '20503110201262812', NULL, '3434', 878, '2023-11-17', 1, 5, '6557a719eff49', 1, '2023-11-17 17:47:05', '2023-11-17 21:50:55'),
(37, 22, 5, NULL, 821, 2, 1, 'bank_account', '20503110201262812', NULL, '343423', 1000, '2023-11-17', 1, 5, '6557a838980cd', 1, '2023-11-17 17:51:52', '2023-11-17 21:47:54'),
(38, 38, 5, NULL, 819, 2, 1, 'bank_account', '20503110201262812', NULL, '3423110100003250', 1858, '2023-11-18', 1, 5, '6557d26445e6d', 1, '2023-11-17 20:51:48', '2023-11-17 21:47:27'),
(44, 40, 2, NULL, 835, 2, 1, 'bank_account', '20503110201262812', NULL, '3423110100003250', 2261.2, '2023-11-18', 1, 2, '6557eb917f6d2', 1, '2023-11-17 22:39:13', '2023-11-17 22:39:13'),
(45, 41, 5, NULL, 838, 2, 1, 'bank_account', '20503110201262812', NULL, '3423110100020150', 660, '2023-11-18', 1, 5, '6557edcb4aa37', 1, '2023-11-17 22:48:43', '2023-11-17 23:51:05'),
(46, 39, 5, NULL, 839, 2, 1, 'bank_account', '20503110201262812', NULL, '3423110100042098', 1499.6, '2023-11-18', 1, 5, '6557fd2a20a34', 1, '2023-11-17 23:54:18', '2023-11-17 23:56:16'),
(47, 42, 5, NULL, NULL, 2, 1, 'bank_account', '20503110201262812', NULL, '8706494', 720, '2023-11-18', 0, 5, '655814060f37c', 1, '2023-11-18 01:31:50', '2023-11-18 01:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment_attachments`
--

CREATE TABLE `order_payment_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_payment_id` bigint DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payment_attachments`
--

INSERT INTO `order_payment_attachments` (`id`, `order_payment_id`, `file`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 34, 'uploads/payment/NBA60bic8Ml4cy6rMuYsinyLYZUxuSIpyVgOWqy1.jpg', NULL, NULL, 1, '2023-11-16 10:45:36', '2023-11-16 10:45:36'),
(2, 35, 'uploads/payment/ffUP52v4hF0KfQEAIpYqwZArRK3afrr0dKzxYZZE.jpg', NULL, NULL, 1, '2023-11-16 10:46:19', '2023-11-16 10:46:19'),
(3, 36, 'uploads/payment/dhlPJWAExovd6wJ4iRaPOnSNyi8U6N18MSm8uPZh.jpg', NULL, NULL, 1, '2023-11-17 17:47:05', '2023-11-17 17:47:05'),
(4, 37, 'uploads/payment/DUtTA9EGV5Dtp8FPKq1o7VGNm5DzSvJdjgRcQabx.jpg', NULL, NULL, 1, '2023-11-17 17:51:52', '2023-11-17 17:51:52'),
(5, 38, 'uploads/payment/OhnAaeOp9n9B2vBDmf9x4U3CpDtVb5eS6vpK4OBw.jpg', NULL, NULL, 1, '2023-11-17 20:51:48', '2023-11-17 20:51:48'),
(6, 45, 'uploads/payment/VrPIvxSbqjOU5rih0XgoWa7ItZcAom9ukJ1NPpXT.jpg', NULL, NULL, 1, '2023-11-17 22:48:43', '2023-11-17 22:48:43'),
(7, 46, 'uploads/payment/0nXdCnd20Ep9OxwkpfrMfxapUWu2NmFWiKASHold.jpg', NULL, NULL, 1, '2023-11-17 23:54:18', '2023-11-17 23:54:18'),
(8, 47, 'uploads/payment/2ZckFzOVHnoyPcPEtGsrCXwmNgOLrRcFYaZilHbN.jpg', NULL, NULL, 1, '2023-11-18 01:31:50', '2023-11-18 01:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_variants`
--

CREATE TABLE `order_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `variant_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'color, size, brand etc',
  `variant_value` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'red, sm, hp etc',
  `order_details_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_variants`
--

INSERT INTO `order_variants` (`id`, `order_id`, `product_id`, `variant_name`, `variant_value`, `order_details_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'color', '0', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(2, 1, 2, 'color', '0', 2, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(3, 1, 3, 'color', '0', 3, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(4, 1, 8, 'color', '0', 4, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(5, 2, 5, 'color', '0', 5, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(6, 2, 6, 'color', '0', 6, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(7, 2, 7, 'color', '0', 7, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(8, 2, 8, 'color', '0', 8, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(9, 3, 4, 'color', '0', 9, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(10, 3, 7, 'color', '0', 10, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(11, 3, 8, 'color', '0', 11, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(12, 3, 9, 'color', '0', 12, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(13, 4, 5, 'color', '0', 13, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(14, 4, 7, 'color', '0', 14, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(15, 4, 8, 'color', '0', 15, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(16, 4, 12, 'color', '0', 16, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(17, 5, 1, 'color', '0', 17, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(18, 5, 9, 'color', '0', 18, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(19, 5, 10, 'color', '0', 19, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(20, 5, 12, 'color', '0', 20, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(21, 6, 2, 'color', '0', 21, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(22, 6, 5, 'color', '0', 22, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(23, 6, 6, 'color', '0', 23, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(24, 6, 10, 'color', '0', 24, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(25, 7, 5, 'color', '0', 25, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(26, 7, 6, 'color', '0', 26, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(27, 7, 9, 'color', '0', 27, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(28, 7, 11, 'color', '0', 28, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(29, 8, 1, 'color', '0', 29, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(30, 8, 4, 'color', '0', 30, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(31, 8, 6, 'color', '0', 31, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(32, 8, 9, 'color', '0', 32, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(33, 9, 5, 'color', '0', 33, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(34, 9, 9, 'color', '0', 34, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(35, 9, 10, 'color', '0', 35, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(36, 9, 11, 'color', '0', 36, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(37, 10, 2, 'color', '0', 37, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(38, 10, 8, 'color', '0', 38, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(39, 10, 11, 'color', '0', 39, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(40, 10, 12, 'color', '0', 40, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(41, 11, 1, 'color', '0', 41, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(42, 11, 2, 'color', '0', 42, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(43, 11, 6, 'color', '0', 43, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(44, 11, 12, 'color', '0', 44, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(45, 12, 1, 'color', '0', 45, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(46, 12, 3, 'color', '0', 46, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(47, 12, 9, 'color', '0', 47, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(48, 12, 11, 'color', '0', 48, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(49, 13, 1, 'color', '0', 49, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(50, 13, 3, 'color', '0', 50, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(51, 13, 4, 'color', '0', 51, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(52, 13, 8, 'color', '0', 52, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(53, 14, 2, 'color', '0', 53, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(54, 14, 7, 'color', '0', 54, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(55, 14, 9, 'color', '0', 55, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(56, 14, 10, 'color', '0', 56, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(57, 15, 5, 'color', '0', 57, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(58, 15, 6, 'color', '0', 58, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(59, 15, 10, 'color', '0', 59, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(60, 15, 12, 'color', '0', 60, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(61, 16, 2, 'color', '0', 61, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(62, 16, 3, 'color', '0', 62, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(63, 16, 9, 'color', '0', 63, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(64, 16, 11, 'color', '0', 64, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(65, 17, 3, 'color', '0', 65, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(66, 17, 8, 'color', '0', 66, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(67, 17, 9, 'color', '0', 67, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(68, 17, 10, 'color', '0', 68, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(69, 18, 1, 'color', '0', 69, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(70, 18, 2, 'color', '0', 70, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(71, 18, 7, 'color', '0', 71, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(72, 18, 10, 'color', '0', 72, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(73, 19, 3, 'color', '0', 73, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(74, 19, 4, 'color', '0', 74, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(75, 19, 5, 'color', '0', 75, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(76, 19, 8, 'color', '0', 76, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(77, 20, 1, 'color', '0', 77, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(78, 20, 2, 'color', '0', 78, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(79, 20, 7, 'color', '0', 79, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(80, 20, 8, 'color', '0', 80, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(81, 21, 1, 'color', '0', 81, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(82, 21, 7, 'color', '0', 82, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(83, 21, 10, 'color', '0', 83, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(84, 21, 11, 'color', '0', 84, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(85, 22, 1, 'color', '0', 85, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(86, 22, 2, 'color', '0', 86, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(87, 22, 8, 'color', '0', 87, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(88, 22, 10, 'color', '0', 88, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(89, 23, 3, 'color', '0', 89, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(90, 23, 4, 'color', '0', 90, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(91, 23, 8, 'color', '0', 91, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(92, 23, 12, 'color', '0', 92, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(93, 24, 3, 'color', '0', 93, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(94, 24, 4, 'color', '0', 94, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(95, 24, 7, 'color', '0', 95, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(96, 24, 11, 'color', '0', 96, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(97, 25, 1, 'color', '0', 97, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(98, 25, 4, 'color', '0', 98, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(99, 25, 10, 'color', '0', 99, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(100, 25, 11, 'color', '0', 100, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(101, 26, 1, 'color', '0', 101, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(102, 26, 3, 'color', '0', 102, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(103, 26, 4, 'color', '0', 103, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(104, 26, 8, 'color', '0', 104, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(105, 27, 2, 'color', '0', 105, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(106, 27, 5, 'color', '0', 106, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(107, 27, 6, 'color', '0', 107, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(108, 27, 7, 'color', '0', 108, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(109, 28, 1, 'color', '0', 109, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(110, 28, 8, 'color', '0', 110, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(111, 28, 9, 'color', '0', 111, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(112, 28, 12, 'color', '0', 112, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(113, 29, 1, 'color', '0', 113, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(114, 29, 4, 'color', '0', 114, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(115, 29, 6, 'color', '0', 115, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(116, 29, 9, 'color', '0', 116, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(117, 30, 6, 'color', '0', 117, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(118, 30, 8, 'color', '0', 118, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(119, 30, 9, 'color', '0', 119, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(120, 30, 10, 'color', '0', 120, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(121, 31, 3, 'color', '0', 121, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(122, 31, 8, 'color', '0', 122, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(123, 31, 11, 'color', '0', 123, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(124, 31, 12, 'color', '0', 124, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(125, 32, 2, 'color', '0', 125, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(126, 32, 3, 'color', '0', 126, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(127, 32, 6, 'color', '0', 127, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(128, 32, 7, 'color', '0', 128, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(129, 33, 1, 'color', '0', 129, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(130, 33, 3, 'color', '0', 130, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(131, 33, 5, 'color', '0', 131, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(132, 33, 6, 'color', '0', 132, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_numbers`
--

CREATE TABLE `phone_numbers` (
  `id` bigint UNSIGNED NOT NULL,
  `table_id` bigint UNSIGNED DEFAULT NULL COMMENT 'supplier bindingid / user_id / customer_id etc',
  `table_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'users / supplier_bindings / customers etc',
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_numbers`
--

INSERT INTO `phone_numbers` (`id`, `table_id`, `table_name`, `mobile_number`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'users', '01944325663', NULL, '65558892a148f', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 2, 'users', '01832611492', NULL, '65558892a21d5', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 3, 'users', '01734271350', NULL, '65558892a29c0', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 1, 'customers', '01761771529', NULL, '65558892a304b', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 2, 'customers', '01579557449', NULL, '65558892a3668', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 3, 'customers', '01822998346', NULL, '65558892a3f59', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 1, 'users', '01542333599', NULL, '65558892a4533', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(8, 1, 'customers', '01672298270', NULL, '65558892a4d46', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(9, 1, 'users', '01951132837', NULL, '65558892a52e4', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(10, 2, 'users', '01513988817', NULL, '65558892a5b3e', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(11, 1, 'customers', '01999356161', NULL, '65558892a6118', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(12, 2, 'customers', '01960171603', NULL, '65558892a6862', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(13, 3, 'customers', '01778064209', NULL, '65558892a705d', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(14, 1, 'users', '01891036239', NULL, '65558892a75fa', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(15, 2, 'users', '01924931493', NULL, '65558892a7e07', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(16, 1, 'customers', '01567336213', NULL, '65558892a8353', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(17, 2, 'customers', '01691115371', NULL, '65558892a8fb0', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(18, 3, 'customers', '01877655133', NULL, '65558892a9551', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(19, 1, 'users', '01636832527', NULL, '65558892a9d23', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(20, 1, 'customers', '01914396776', NULL, '65558892aa2a6', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(21, 2, 'customers', '01528916692', NULL, '65558892aaa75', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(22, 1, 'users', '01548080079', NULL, '65558892aafd5', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(23, 2, 'users', '01878684359', NULL, '65558892ab6ea', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(24, 1, 'customers', '01778928725', NULL, '65558892abe77', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(25, 2, 'customers', '01628336911', NULL, '65558892ac3c6', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(26, 3, 'customers', '01766151872', NULL, '65558892acba8', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(27, 1, 'users', '01719235304', NULL, '65558892ad0fb', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(28, 2, 'users', '01563465376', NULL, '65558892ad959', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(29, 3, 'users', '01671747954', NULL, '65558892adfb5', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(30, 4, 'users', '01963864032', NULL, '65558892ae7cb', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(31, 1, 'customers', '01774760154', NULL, '65558892aed35', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(32, 2, 'customers', '01978587690', NULL, '65558892af2fe', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(33, 3, 'customers', '01968803267', NULL, '65558892b04d3', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(34, 1, 'users', '01688983098', NULL, '65558892b1db6', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(35, 2, 'users', '01917971841', NULL, '65558892b394c', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(36, 3, 'users', '01791236681', NULL, '65558892b42be', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(37, 1, 'customers', '01886251520', NULL, '65558892b4a99', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(38, 2, 'customers', '01744238693', NULL, '65558892b5009', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(39, 3, 'customers', '01828234847', NULL, '65558892b5d0f', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(40, 1, 'users', '01750620378', NULL, '65558892b6631', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(41, 2, 'users', '01865433018', NULL, '65558892b6c18', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(42, 1, 'customers', '01532656389', NULL, '65558892b748a', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(43, 2, 'customers', '01529842442', NULL, '65558892b7b0f', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(44, 3, 'customers', '01840455844', NULL, '65558892b8296', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(45, 1, 'users', '01631912151', NULL, '65558892b8ae2', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(46, 1, 'customers', '01857210587', NULL, '65558892b9374', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(47, 2, 'customers', '01945108287', NULL, '65558892b99e4', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(48, 3, 'customers', '01812140738', NULL, '65558892b9f91', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(49, 1, 'supplier_bindings', '+49430337763', NULL, '6555889366b71', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(50, 2, 'supplier_bindings', '+44973567505', NULL, '6555889367ecd', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(51, 3, 'supplier_bindings', '+44998573059', NULL, '6555889368e11', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(52, 4, 'supplier_bindings', '+44360257991', NULL, '6555889369e86', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(53, 5, 'supplier_bindings', '+61824490236', NULL, '655588936ae52', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(54, 6, 'supplier_bindings', '+1755996162', NULL, '655588936c0ea', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(55, 7, 'supplier_bindings', '+44599810600', NULL, '655588936d1e2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(56, 8, 'supplier_bindings', '+49106592109', NULL, '655588936e21e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(57, 9, 'supplier_bindings', '+44379745246', NULL, '655588936f2a0', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(58, 10, 'supplier_bindings', '+61444231160', NULL, '6555889370084', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(59, 11, 'supplier_bindings', '+1846065167', NULL, '6555889370bb4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(60, 12, 'supplier_bindings', '+49509202324', NULL, '6555889371911', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(61, 13, 'supplier_bindings', '+49299422803', NULL, '655588937264c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(62, 14, 'supplier_bindings', '+61395721825', NULL, '655588937395f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(63, 1, 'supplier_papers', '+61926043324', NULL, '655588937998a', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(64, 2, 'supplier_papers', '+61333701644', NULL, '655588937adf3', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(65, 3, 'supplier_papers', '+61845236845', NULL, '655588937bc8f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(66, 4, 'supplier_papers', '+1203060985', NULL, '655588937ca7a', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(67, 5, 'supplier_papers', '+1817472121', NULL, '655588937dc25', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(68, 6, 'supplier_papers', '+49330057376', NULL, '655588937ea42', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(69, 7, 'supplier_papers', '+49812839001', NULL, '655588937f60e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(70, 8, 'supplier_papers', '+61611666509', NULL, '6555889380391', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(71, 9, 'supplier_papers', '+61282137863', NULL, '6555889381290', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(72, 10, 'supplier_papers', '+49231743047', NULL, '655588938281c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(73, 11, 'supplier_papers', '+1952836226', NULL, '6555889383353', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(74, 12, 'supplier_papers', '+44124999659', NULL, '65558893840ce', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(75, 13, 'supplier_papers', '+61964032001', NULL, '6555889384e28', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(76, 14, 'supplier_papers', '+1178026960', NULL, '6555889385ba7', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(77, 15, 'supplier_papers', '+61214765036', NULL, '6555889386bb9', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(78, 16, 'supplier_papers', '+49108120598', NULL, '65558893879c6', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(79, 17, 'supplier_papers', '+44509340619', NULL, '65558893887fd', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(80, 18, 'supplier_papers', '+49886096621', NULL, '6555889389628', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(81, 19, 'supplier_papers', '+49864919759', NULL, '655588938a510', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(82, 20, 'supplier_papers', '+61405903676', NULL, '655588938b314', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(83, 21, 'supplier_papers', '+61272111082', NULL, '655588938c793', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(84, 22, 'supplier_papers', '+44480570751', NULL, '655588938d6d1', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(85, 23, 'supplier_papers', '+49832585751', NULL, '655588938e6e4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(86, 24, 'supplier_papers', '+49879660634', NULL, '655588938f568', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(87, 25, 'supplier_papers', '+61514229847', NULL, '65558893906b2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(88, 26, 'supplier_papers', '+61283686995', NULL, '6555889391560', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(89, 27, 'supplier_papers', '+61341072729', NULL, '65558893923cb', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(90, 28, 'supplier_papers', '+44674743317', NULL, '65558893932a8', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(91, 29, 'supplier_papers', '+1975056599', NULL, '6555889393e07', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(92, 30, 'supplier_papers', '+49615532015', NULL, '6555889394d4b', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(93, 31, 'supplier_papers', '+1298639412', NULL, '65558893961bf', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(94, 32, 'supplier_papers', '+1200529182', NULL, '65558893972c2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(95, 33, 'supplier_papers', '+44579235668', NULL, '65558893981d2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(96, 34, 'supplier_papers', '+49875878788', NULL, '6555889399142', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(97, 35, 'supplier_papers', '+61900419722', NULL, '655588939a05b', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(98, 36, 'supplier_papers', '+49507747721', NULL, '655588939b1e5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(99, 37, 'supplier_papers', '+61334839553', NULL, '655588939c09d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(100, 38, 'supplier_papers', '+44918694752', NULL, '655588939cec2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(101, 39, 'supplier_papers', '+61892068453', NULL, '655588939de3d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(102, 40, 'supplier_papers', '+1486472023', NULL, '655588939ea0d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(103, 41, 'supplier_papers', '+44595031664', NULL, '655588939fd13', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(104, 42, 'supplier_papers', '+49489955172', NULL, '65558893a0f95', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(105, 43, 'supplier_papers', '+61775455735', NULL, '65558893a1d4e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(106, 44, 'supplier_papers', '+61171653717', NULL, '65558893a2942', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(107, 45, 'supplier_papers', '+61107359633', NULL, '65558893a36ce', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(108, 46, 'supplier_papers', '+49274524825', NULL, '65558893a47d1', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(109, 47, 'supplier_papers', '+1745754955', NULL, '65558893a564b', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(110, 48, 'supplier_papers', '+49986280452', NULL, '65558893a6558', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(111, 1, 'supplier_prints', '+49572527673', NULL, '6555889445dcb', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(112, 2, 'supplier_prints', '+49836031170', NULL, '6555889446c5a', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(113, 3, 'supplier_prints', '+61182906381', NULL, '6555889447c0c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(114, 4, 'supplier_prints', '+44689380265', NULL, '6555889448b0a', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(115, 5, 'supplier_prints', '+61190718408', NULL, '65558894498cc', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(116, 6, 'supplier_prints', '+44149568673', NULL, '655588944a83c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(117, 7, 'supplier_prints', '+1682794392', NULL, '655588944b72d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(118, 8, 'supplier_prints', '+44934827285', NULL, '655588944c705', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(119, 9, 'supplier_prints', '+61849253009', NULL, '655588944d647', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(120, 10, 'supplier_prints', '+1213407676', NULL, '655588944e3d4', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(121, 11, 'supplier_prints', '+49272705999', NULL, '655588944f707', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(122, 12, 'supplier_prints', '+1653503567', NULL, '65558894504e7', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(123, 13, 'supplier_prints', '+49455366089', NULL, '65558894514b1', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(124, 14, 'supplier_prints', '+1653122327', NULL, '65558894523ee', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(125, 15, 'supplier_prints', '+44557187201', NULL, '6555889453210', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(126, 16, 'supplier_prints', '+49183386794', NULL, '6555889454163', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `paper_amount` double(8,2) DEFAULT NULL,
  `print_qty` bigint UNSIGNED DEFAULT NULL,
  `book_cover_designer` bigint DEFAULT NULL,
  `supplier_prints_id` bigint UNSIGNED DEFAULT NULL,
  `supplier_bindings_id` bigint UNSIGNED DEFAULT NULL,
  `total_sales` bigint NOT NULL DEFAULT '0',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `product_id`, `paper_amount`, `print_qty`, `book_cover_designer`, `supplier_prints_id`, `supplier_bindings_id`, `total_sales`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 68.00, 492, 47, 47, 35, 231, 3, '655588946e316', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:23'),
(2, 1, 66.00, 500, 39, 2, 16, 0, 3, '65558894737d3', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(3, 1, 51.00, 351, 26, 7, 27, 0, 3, '6555889478761', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(4, 2, 63.00, 456, 47, 1, 13, 175, 3, '655588947d5d4', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:23'),
(5, 2, 48.00, 400, 30, 35, 47, 0, 3, '6555889482a44', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(6, 2, 54.00, 457, 19, 9, 39, 0, 3, '6555889487835', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(7, 3, 53.00, 431, 24, 41, 15, 178, 3, '655588948c646', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:23'),
(8, 3, 40.00, 450, 10, 1, 48, 0, 3, '65558894913e6', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(9, 3, 69.00, 494, 45, 21, 22, 0, 3, '6555889496283', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(10, 4, 40.00, 483, 16, 20, 47, 147, 3, '655588949b0bd', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:22'),
(11, 4, 66.00, 451, 6, 15, 35, 0, 3, '65558894a0190', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(12, 4, 48.00, 385, 33, 23, 28, 0, 3, '65558894a4b3f', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(13, 5, 60.00, 459, 18, 17, 21, 127, 3, '65558894a91ac', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:23'),
(14, 5, 59.00, 337, 33, 28, 35, 0, 3, '65558894adf08', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(15, 5, 63.00, 474, 11, 5, 15, 0, 3, '65558894b668f', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(16, 6, 52.00, 345, 32, 2, 16, 159, 3, '65558894bdc24', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:23'),
(17, 6, 70.00, 434, 20, 34, 44, 0, 3, '65558894c247e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(18, 6, 65.00, 476, 9, 10, 5, 0, 3, '65558894c716c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(19, 7, 52.00, 364, 32, 8, 5, 172, 3, '65558894cbbbe', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:23'),
(20, 7, 61.00, 422, 47, 30, 33, 0, 3, '65558894d0508', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(21, 7, 49.00, 485, 18, 27, 45, 0, 3, '65558894d4fc0', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(22, 8, 44.00, 444, 46, 48, 12, 241, 3, '65558894d9a0d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:22'),
(23, 8, 69.00, 465, 4, 4, 11, 0, 3, '65558894de102', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(24, 8, 55.00, 314, 4, 44, 30, 0, 3, '65558894e2a98', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(25, 9, 41.00, 351, 36, 7, 25, 164, 3, '65558894e77ca', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:22'),
(26, 9, 46.00, 432, 23, 4, 14, 0, 3, '65558894ec327', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(27, 9, 56.00, 457, 26, 4, 10, 0, 3, '65558894f1315', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(28, 10, 41.00, 497, 25, 12, 6, 164, 3, '6555889501a62', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:22'),
(29, 10, 64.00, 493, 17, 32, 44, 0, 3, '655588950693a', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(30, 10, 45.00, 339, 39, 7, 36, 0, 3, '655588950b626', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(31, 11, 44.00, 377, 15, 18, 32, 139, 3, '6555889510404', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:22'),
(32, 11, 58.00, 373, 8, 23, 12, 0, 3, '6555889514d29', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(33, 11, 54.00, 387, 32, 15, 30, 0, 3, '6555889519b24', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(34, 12, 51.00, 409, 48, 1, 34, 103, 3, '655588951e3fb', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:22'),
(35, 12, 63.00, 361, 4, 6, 43, 0, 3, '6555889522e0d', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(36, 12, 55.00, 333, 29, 13, 32, 0, 3, '6555889527dd7', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `production_costs`
--

CREATE TABLE `production_costs` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `design_cost` int NOT NULL DEFAULT '0',
  `printing_cost` int NOT NULL DEFAULT '0',
  `binding_cost` int NOT NULL DEFAULT '0',
  `other_cost` int NOT NULL DEFAULT '0',
  `final_cost` int NOT NULL DEFAULT '0',
  `sales_price` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_designers`
--

CREATE TABLE `production_designers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci COMMENT 'designer address',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'designer description',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_designers`
--

INSERT INTO `production_designers` (`id`, `name`, `address`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed Rahman', NULL, NULL, NULL, 'mohammed-rahman', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(2, 'Abdul Ali', NULL, NULL, NULL, 'abdul-ali', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(3, 'Rahim Ahmed', NULL, NULL, NULL, 'rahim-ahmed', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(4, 'Kamal Hasan', NULL, NULL, NULL, 'kamal-hasan', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(5, 'Shahidul Islam', NULL, NULL, NULL, 'shahidul-islam', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(6, 'Mosharraf Hossain', NULL, NULL, NULL, 'mosharraf-hossain', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(7, 'Tariqul Islam', NULL, NULL, NULL, 'tariqul-islam', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(8, 'Rashid Ahmed', NULL, NULL, NULL, 'rashid-ahmed', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(9, 'Anwar Hossain', NULL, NULL, NULL, 'anwar-hossain', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(10, 'Nurul Islam', NULL, NULL, NULL, 'nurul-islam', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `production_statuses`
--

CREATE TABLE `production_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `production_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'planning, designing, prototyping, printing, binding, complete',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'status related description',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_statuses`
--

INSERT INTO `production_statuses` (`id`, `production_id`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(2, 1, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(3, 1, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(4, 1, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(5, 1, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(6, 1, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(7, 2, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(8, 2, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(9, 2, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(10, 2, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(11, 2, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(12, 2, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(13, 3, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(14, 3, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(15, 3, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(16, 3, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(17, 3, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(18, 3, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(19, 4, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(20, 4, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(21, 4, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(22, 4, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(23, 4, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(24, 4, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(25, 5, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(26, 5, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(27, 5, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(28, 5, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(29, 5, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(30, 5, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(31, 6, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(32, 6, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(33, 6, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(34, 6, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(35, 6, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(36, 6, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(37, 7, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(38, 7, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(39, 7, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(40, 7, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(41, 7, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(42, 7, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(43, 8, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(44, 8, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(45, 8, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(46, 8, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(47, 8, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(48, 8, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(49, 9, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(50, 9, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(51, 9, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(52, 9, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(53, 9, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(54, 9, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(55, 10, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(56, 10, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(57, 10, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(58, 10, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(59, 10, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(60, 10, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(61, 11, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(62, 11, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(63, 11, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(64, 11, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(65, 11, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(66, 11, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(67, 12, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(68, 12, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(69, 12, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(70, 12, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(71, 12, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(72, 12, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(73, 13, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(74, 13, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(75, 13, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(76, 13, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(77, 13, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(78, 13, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(79, 14, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(80, 14, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(81, 14, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(82, 14, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(83, 14, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(84, 14, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(85, 15, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(86, 15, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(87, 15, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(88, 15, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(89, 15, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(90, 15, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(91, 16, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(92, 16, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(93, 16, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(94, 16, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(95, 16, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(96, 16, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(97, 17, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(98, 17, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(99, 17, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(100, 17, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(101, 17, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(102, 17, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(103, 18, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(104, 18, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(105, 18, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(106, 18, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(107, 18, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(108, 18, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(109, 19, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(110, 19, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(111, 19, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(112, 19, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(113, 19, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(114, 19, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(115, 20, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(116, 20, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(117, 20, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(118, 20, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(119, 20, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(120, 20, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(121, 21, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(122, 21, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(123, 21, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(124, 21, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(125, 21, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(126, 21, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(127, 22, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(128, 22, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(129, 22, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(130, 22, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(131, 22, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(132, 22, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(133, 23, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(134, 23, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(135, 23, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(136, 23, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(137, 23, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(138, 23, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(139, 24, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(140, 24, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(141, 24, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(142, 24, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(143, 24, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(144, 24, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(145, 25, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(146, 25, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(147, 25, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(148, 25, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(149, 25, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(150, 25, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(151, 26, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(152, 26, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(153, 26, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(154, 26, 'printing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(155, 26, 'binding', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(156, 26, 'complete', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(157, 27, 'planning', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(158, 27, 'processing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(159, 27, 'designing', NULL, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(160, 27, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(161, 27, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(162, 27, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(163, 28, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(164, 28, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(165, 28, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(166, 28, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(167, 28, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(168, 28, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(169, 29, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(170, 29, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(171, 29, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(172, 29, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(173, 29, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(174, 29, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(175, 30, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(176, 30, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(177, 30, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(178, 30, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(179, 30, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(180, 30, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(181, 31, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(182, 31, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(183, 31, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(184, 31, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(185, 31, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(186, 31, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(187, 32, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(188, 32, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(189, 32, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(190, 32, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(191, 32, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(192, 32, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(193, 33, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(194, 33, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(195, 33, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(196, 33, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(197, 33, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(198, 33, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(199, 34, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(200, 34, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(201, 34, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(202, 34, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(203, 34, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(204, 34, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(205, 35, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(206, 35, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(207, 35, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(208, 35, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(209, 35, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(210, 35, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(211, 36, 'planning', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(212, 36, 'processing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(213, 36, 'designing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(214, 36, 'printing', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(215, 36, 'binding', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(216, 36, 'complete', NULL, '2023-11-16 03:12:21', '2023-11-16 03:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `production_used_papers`
--

CREATE TABLE `production_used_papers` (
  `id` bigint UNSIGNED NOT NULL,
  `production_id` bigint UNSIGNED DEFAULT NULL,
  `supplier_paper_id` bigint UNSIGNED DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_used_papers`
--

INSERT INTO `production_used_papers` (`id`, `production_id`, `supplier_paper_id`, `amount`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 43, 68, NULL, '655588946f86e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(2, 1, 47, 66, NULL, '65558894749ed', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(3, 1, 11, 51, NULL, '655588947969b', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(4, 2, 32, 63, NULL, '655588947e526', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(5, 2, 13, 48, NULL, '65558894839f7', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(6, 2, 17, 54, NULL, '6555889488628', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(7, 3, 22, 53, NULL, '655588948d4e7', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(8, 3, 27, 40, NULL, '6555889492306', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(9, 3, 7, 69, NULL, '65558894971fc', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(10, 4, 30, 40, NULL, '655588949bed3', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(11, 4, 19, 66, NULL, '65558894a0faf', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(12, 4, 25, 48, NULL, '65558894a56f9', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(13, 5, 44, 60, NULL, '65558894aa431', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(14, 5, 46, 59, NULL, '65558894aed11', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(15, 5, 30, 63, NULL, '65558894b749e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(16, 6, 33, 52, NULL, '65558894beb98', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(17, 6, 40, 70, NULL, '65558894c341f', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(18, 6, 24, 65, NULL, '65558894c8135', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(19, 7, 31, 52, NULL, '65558894cc8bc', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(20, 7, 3, 61, NULL, '65558894d141f', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(21, 7, 44, 49, NULL, '65558894d5d6d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(22, 8, 22, 44, NULL, '65558894da854', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(23, 8, 14, 69, NULL, '65558894defde', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(24, 8, 7, 55, NULL, '65558894e3ca3', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(25, 9, 33, 41, NULL, '65558894e864d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(26, 9, 42, 46, NULL, '65558894ed23f', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(27, 9, 5, 56, NULL, '65558894f2142', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(28, 10, 14, 41, NULL, '65558895025df', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(29, 10, 9, 64, NULL, '65558895078d0', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(30, 10, 2, 45, NULL, '655588950c244', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(31, 11, 42, 44, NULL, '655588951108e', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(32, 11, 11, 58, NULL, '6555889515c5a', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(33, 11, 40, 54, NULL, '655588951a921', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(34, 12, 32, 51, NULL, '655588951f478', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(35, 12, 13, 63, NULL, '6555889524098', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(36, 12, 46, 55, NULL, '6555889528e84', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci,
  `product_name_english` text COLLATE utf8mb4_unicode_ci,
  `product_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_top_product` tinyint NOT NULL DEFAULT '0',
  `cost` double UNSIGNED NOT NULL DEFAULT '0',
  `sales_price` double UNSIGNED NOT NULL DEFAULT '0',
  `stock_alert_qty` int UNSIGNED NOT NULL DEFAULT '10',
  `pages` int UNSIGNED NOT NULL DEFAULT '0',
  `binding` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` double(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `width` double(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `weight` double(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `depth` double(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `specification` longtext COLLATE utf8mb4_unicode_ci,
  `thumb_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_alt` text COLLATE utf8mb4_unicode_ci,
  `search_keywords` text COLLATE utf8mb4_unicode_ci,
  `page_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_name_english`, `product_url`, `is_top_product`, `cost`, `sales_price`, `stock_alert_qty`, `pages`, `binding`, `isbn`, `sku`, `height`, `width`, `weight`, `depth`, `description`, `specification`, `thumb_image`, `thumb_alt`, `search_keywords`, `page_title`, `meta_description`, `custom_fields`, `is_public`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ক্যারিয়ার বিকশিত জীবনের দ্বার', 'kzariyar-bikshit-jeebner-dwar', 'kzariyar-bikshit-jeebner-dwar', 0, 0, 260, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ক্যারিয়ার বিকশিত জীবনের দ্বার<br />\r\nপ্রকাশনায় : মুনলাইট পাবলিকেশন</p>\r\n\r\n<p>স্বপ্নের ক্যারিয়ার!<br />\r\nক্যারিয়ার গড়ার চ্যালেঞ্জ বা সমস্যা!<br />\r\nতার সমাধানে আমরা কোথায় পাব?<br />\r\nক্যারিয়ার বা ক্যারিয়ার কাউন্সেলিং-কেন্দ্রিক কোনো বিশেষজ্ঞ বা বিশেষায়িত প্রতিষ্ঠান কি আমাদের আছে? না, নেই।<br />\r\nনা থাকার এই শূন্যতা পূরণের ছোট্ট একটি সচেতন প্রচেষ্টার নাম &lsquo;ক্যারিয়ার : বিকশিত জীবনের দ্বার&rsquo;।<br />\r\nবাংলাদেশে বিরাজমান অবস্থার নিরিখে শিক্ষক, শিক্ষার্থী, অভিভাবক ও চাকরিপ্রার্থীদের প্রয়োজনীয়তার বিষয়টি মাথায় রেখেই এ গ্রন্থের পরিকল্পনা। এর প্রতিটি অধ্যায় ক্যারিয়ার-কেন্দ্রিক যৌক্তিক পরামর্শ এবং তা বাস্তবায়নের সহজ এবং ব্যবহারবান্ধব উপায় বাতলে দেওয়া হয়েছে। ফলে এ বইয়ের সংস্পর্শে প্রিয়জনের ক্যারিয়ার ভাবনায় শঙ্কিত অভিভাবক যেমন হয়ে উঠবেন দক্ষ ক্যারিয়ার কাউন্সিলর, তেমনই সন্তান তথা শিক্ষার্থী বা চাকরিপ্রার্থীরা খুঁজে পাবেন ক্যারিয়ার-কেন্দ্রিক সুস্পষ্ট নির্দেশনা।</p>', NULL, 'uploads/product/product_main_image/dh2QioXn122GuTfvBBcrEkDKM0XAEiG2z63zwRKC.png', 'kzariyar-bikshit-jeebner-dwar', 'ক্যারিয়ার বিকশিত জীবনের দ্বার, kzariyar-bikshit-jeebner-dwar', 'ক্যারিয়ার বিকশিত জীবনের দ্বার', 'ক্যারিয়ার বিকশিত জীবনের দ্বার', NULL, 1, NULL, 'kzariyar-bikshit-jeebner-dwar', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(2, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', 'bishyvittik-ayat-oo-hadis-sngkln-choto', 'bishyvittik-ayat-oo-hadis-sngkln-choto', 1, 0, 40, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\"><span style=\"color:#16a085\">ধন্যবাদ বইটি সংগ্রহ করার জন্য।&nbsp;</span></span></p>', NULL, 'uploads/product/product_main_image/PWGp7nvai1IYlG3xbEt8WBmV6nZ7V0Rmc3FeM2eP.jpeg', 'bishyvittik-ayat-oo-hadis-sngkln-choto', 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো), bishyvittik-ayat-oo-hadis-sngkln-choto', 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)', NULL, 1, NULL, 'bishyvittik-ayat-oo-hadis-sngkln-choto', 1, '2023-11-16 04:42:05', '2023-11-17 21:00:29'),
(3, 'এসো আলোর পথে', 'eso-alor-pthe', 'eso-alor-pthe', 0, 0, 9.8, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">ইসলাম সম্পর্কে মৌলিক ধারণা সৃষ্টির লক্ষ্যে বইটিতে একটি চিত্র অঙ্কিত করা হয়েছে যার মাধ্যমে একজন শিক্ষার্থীর হৃদয়ে ইসলাম-এর পূর্ণতা সম্পর্কে ধারণা সৃস্টির জন্যই বইটি বিন্যাস সাজানো হয়েছে।</span></span></p>', NULL, 'uploads/product/product_main_image/juRgRV0pxxjFkulEA4flJI1UAKSr966a9JFgyKyb.jpeg', 'eso-alor-pthe', 'এসো আলোর পথে, eso-alor-pthe', 'এসো আলোর পথে', 'এসো আলোর পথে', NULL, 1, NULL, 'eso-alor-pthe', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(4, 'বর্ণমালা', 'brnmala', 'brnmala', 0, 0, 120, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : মুনলাইট পাবলিকেশন&nbsp;</strong></p>\r\n\r\n<p><br />\r\nশিশু-কিশোরদের জন্য প্রথম পাঠ হিসেবে বইটি তথ্যসমৃদ্ধ আকর্ষণীয়। শিশু-কিশোরদের প্রাথমিক শিক্ষা হিসেবে বইটিতে বাংলা ইংরেজি আরবি বর্ণমালা সুন্দরভাবে বিন্যাস করা আছে। বিভিন্ন প্রতিষ্ঠানের শিক্ষার্থীদের প্রাথমিক পাঠ হিসেবে বইটি আধুনিক মানসম্মত। শিশুদেরকে নৈতিক মূল্যবোধ জাগ্রত কারণে বইটি অত্যন্ত উপযোগী।</p>', NULL, 'uploads/product/product_main_image/1SNDUyvzYwCSyXJHOSAtiVCYj8DinhqVjGEuuwXK.jpeg', 'brnmala', 'বর্ণমালা, brnmala', 'বর্ণমালা', 'বর্ণমালা', NULL, 1, NULL, 'brnmala', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(5, 'মুক্তির পয়গাম', 'muktir-pygam', 'muktir-pygam', 0, 0, 14, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>ইবনে মাসুম- ইবনে মাসুম</strong></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">দুনিয়া-আখেরাতের কৃষি ক্ষেত্র, দুনিয়াতে মানুষ যা কিছু করে তা হয় মানুষ রচিত কিংবা মহান রবের পক্ষ থেকে নির্দেশনা। একজন মানুষকে কিভাবে নবী রাসূলের অনুসরণ এর মধ্য দিয়ে দুনিয়াতে সফল হওয়া এবং অনন্তকালের জন্য মহান রবের পুরস্কারপ্রাপ্তির মৌলিক বিষয়সমূহ উল্লেখ করা হয়েছে বইটিতে।</span></span></p>', NULL, 'uploads/product/product_main_image/ZzXiMQqsyqql8YZ91f4WAxWDxdQHeNKaOzAwhDde.jpeg', 'muktir-pygam', 'মুক্তির পয়গাম, muktir-pygam', 'মুক্তির পয়গাম', 'মুক্তির পয়গাম', NULL, 1, NULL, 'muktir-pygam', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(6, 'আমরা কী চাই কেন চাই কীভাবে চাই?', 'amra-kee-cai-ken-cai-keevabe-cai', 'amra-kee-cai-ken-cai-keevabe-cai', 1, 0, 12.6, 50, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:20px\"><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:20px\">ইসলাম মানব জীবনের বিভিন্ন বিষয়ে দিকনির্দেশনা। ব্যক্তি, পরিবার, সমাজ রাষ্ট্র, সর্বক্ষেত্রে এর রয়েছে সুনির্দিষ্ট নির্দেশনা। একটি ইসলামী সংগঠন পরিচালনার ক্ষেত্রে কখন কোনটা কীভাবে করতে হবে এই সংক্রান্ত বিষয়ে বইটিতে আলোকপাত করা হয়েছে।</span><br />\r\n&nbsp;</p>', NULL, 'uploads/product/product_main_image/yYfE1q73QFxVmnelrkF9cwgY5526DLlSOfAOVswh.jpeg', 'amra-kee-cai-ken-cai-keevabe-cai', 'আমরা কী চাই কেন চাই কীভাবে চাই?, amra-kee-cai-ken-cai-keevabe-cai', 'আমরা কী চাই কেন চাই কীভাবে চাই?', 'আমরা কী চাই কেন চাই কীভাবে চাই?', NULL, 1, NULL, 'amra-kee-cai-ken-cai-keevabe-cai', 1, '2023-11-16 04:42:05', '2023-11-17 21:00:27'),
(7, 'মোরা বড়ো হতে চাই', 'mora-bro-hte-cai', 'mora-bro-hte-cai', 1, 0, 35, 50, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>মোরা বড় হতে চাই - ড. আহসান হাবীব ইমরোজ</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></span></p>\r\n\r\n<p>আল্লাহ তাআলা আর মাখলুকের ভেতর? আকৃতিতে বড়- তিমি মাছ, হাতি । দ্রুততায় বড় - সুইফট বার্ড আর লেপার্ড । সৌন্দর্যে বড় - প্রজাপতি, ময়ূর, হরিণ । শৃঙ্খলা, একতা আর পরিশ্রমে বড় - মৌমাছি, পিঁপড়া। &nbsp;কিন্তু মানুষ হচ্ছে সকল মাখলুকের ভেতর সবচেয়ে বড় এবং শ্রেষ্ঠ; কিন্তু কেন ? জ্ঞান, চরিত্র আর যোগ্যতায় । আর মানুষের ভেতর সবচেয়ে বড় মানুষ তারাই - যাদের জ্ঞান, চরিত্র আর যোগ্যতা সবচেয়ে বেশি।</p>', NULL, 'uploads/product/product_main_image/vmp4VInfAjPB5c8wRn1Ml7v6IIuARtnSr8NTmCna.jpeg', 'mora-bro-hte-cai', 'মোরা বড়ো হতে চাই, mora-bro-hte-cai', 'মোরা বড়ো হতে চাই', 'মোরা বড়ো হতে চাই', NULL, 1, NULL, 'mora-bro-hte-cai', 1, '2023-11-16 04:42:05', '2023-11-17 21:00:27'),
(8, 'ইসলামের প্রাথমিক পরিচয়', 'islamer-prathmik-pricy', 'islamer-prathmik-pricy', 1, 0, 35, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : বাংলাদেশ দাওয়াহ সার্কেল</strong></p>\r\n\r\n<p><br />\r\nমানব জীবন চলার সঠিক নির্দেশনা একমাত্র আল্লাহর পক্ষ থেকে যার নাম ইসলাম, সর্বপর্যায়ে শান্তি, নিরাপত্তা, সৌহার্দ্য, সম্প্রীতি, মানবিক মর্যাদা, অগ্রগতি এবং মানসিক বিকাশ এর পূর্ণ দৃষ্টিভঙ্গি ও তার বাস্তবায়ন কৌশল এই বিধান রয়েছে। ব্যক্তি, পরিবার, সমাজ ও রাষ্ট্রীয় জীবনে এর সর্বোচ্চ সৌন্দর্য্যম-িত এবং শান্তির নিশ্চয়তা প্রদান করে। বইটিতে ইসলাম ও মুসলমান এর মৌলিক বিষয় জ্ঞানের আবশ্যকতা ও পূর্ণতা সম্পর্কে আলোচনা করা হয়েছে।<br />\r\n&nbsp;</p>', NULL, 'uploads/product/product_main_image/LzOJjXBYq3LBCaXTu4tikhhBXUQ6Np01Tq45732a.jpeg', 'islamer-prathmik-pricy', 'ইসলামের প্রাথমিক পরিচয়, islamer-prathmik-pricy', 'ইসলামের প্রাথমিক পরিচয়', 'ইসলামের প্রাথমিক পরিচয়', NULL, 1, NULL, 'islamer-prathmik-pricy', 1, '2023-11-16 04:42:05', '2023-11-17 21:00:28'),
(9, 'মোদের চলার পথ ইসলাম', 'moder-clar-pth-islam', 'moder-clar-pth-islam', 0, 0, 35, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p><strong>মোদের চলার পথ ইসলাম &nbsp;- &nbsp;মাসুদ আলী</strong></p>\r\n\r\n<p>লেখক বইটিতে তরুণ যুব সমাজকে ইসলামের সঠিক চিন্তা, ধ্যান-ধারণা, মূল্যবোধকে সামনে রেখে অসংখ্য প্রশ্নোত্তর এর মাধ্যমে ইসলামের মৌলিক নীতিবোধ জাগ্রত করার চেষ্টা এবং তরুণ যুবক সমাজের সঠিক নির্দেশনা এর ক্ষেত্রে এই বইটি গুরুত্বপূর্ণ।&nbsp;</p>', NULL, 'uploads/product/product_main_image/mS4aggf1vghA2dl4d7TnkoxD83eHIOqXcyP25xWs.jpeg', 'moder-clar-pth-islam', 'মোদের চলার পথ ইসলাম, moder-clar-pth-islam', 'মোদের চলার পথ ইসলাম', 'মোদের চলার পথ ইসলাম', NULL, 1, NULL, 'moder-clar-pth-islam', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(10, 'জীবন বদলে যাবে (বোর্ড বাইন্ডিং)', 'jeebn-bdle-zabe-bord-bainding', 'jeebn-bdle-zabe-bord-bainding', 0, 0, 140, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>জীবন বদলে যাবে- মোহাম্মদ ইয়াসিন আরাফাত</strong></p>\r\n\r\n<p><br />\r\n<strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>\r\n\r\n<p><br />\r\nজীবন চ্যালেঞ্জিং আর এই চ্যালেঞ্জ মোকাবেলায় নিজেকে যোগ্য হিসেবে গড়ে তোলার জন্য পরিকল্পনা ও কর্মকৌশল অপরিহার্য।<br />\r\nবইটিতে তরুণ ও যুবকদেরকে আগামীর ভবিষ্যৎ বিনির্মাণে পরিকল্পনা প্রণয়ন ও তা বাস্তবায়নের কর্মকৌশল বিন্যাস ভাবে আলোকপাত করা হয়েছে।</p>', NULL, 'uploads/product/product_main_image/CrsCgTd96vYaLCB8VA6T4Uh2FxXSZtxAzkY6JoPB.jpeg', 'jeebn-bdle-zabe-bord-bainding', 'জীবন বদলে যাবে (বোর্ড বাইন্ডিং), jeebn-bdle-zabe-bord-bainding', 'জীবন বদলে যাবে (বোর্ড বাইন্ডিং)', 'জীবন বদলে যাবে (বোর্ড বাইন্ডিং)', NULL, 1, NULL, 'jeebn-bdle-zabe-bord-bainding', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(11, 'সাহসী মানুষের গল্প-১', 'sahsee-manusher-glp-1', 'sahsee-manusher-glp-1', 0, 0, 56, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><br />\r\n<span style=\"font-size:28px\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></p>\r\n\r\n<p><span style=\"font-size:28px\">ইসলামের বীরত্বগাথা ইতিহাস-ঐতিহ্যের আলোকে তরুণ-যুবকদের উজ্জীবিত করার জন্য অনুপ্রেরণা মূলক গল্পের মাধ্যমে শিক্ষণীয় বিষয়গুলো আলোকপাত করা হয়েছে। তরুণ-যুবকদের নৈতিকতা মূল্যবোধ বিকশিত করার জন্য একটি অনন্য বই হিসেবে সাহসী মানুষের গল্প ১-৬ খন্ড প্রকাশিত।&nbsp;</span></p>', NULL, 'uploads/product/product_main_image/lzpN9BrmCnUSX3E0kMgGaUDTIUfqYE3mWDTq0Nln.jpeg', 'sahsee-manusher-glp-1', 'সাহসী মানুষের গল্প-১, sahsee-manusher-glp-1', 'সাহসী মানুষের গল্প-১', 'সাহসী মানুষের গল্প-১', NULL, 1, NULL, 'sahsee-manusher-glp-1', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(12, 'সংবিধান', 'sngbidhan', 'sngbidhan', 0, 0, 20, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>বিআইসিএস</strong></p>\r\n\r\n<p><br />\r\nবাংলাদেশ ইসলামী ছাত্রশিবিরের সংবিধান এর পবিত্র আমানত। এর প্রতিটি দিক কুরআন, সুন্নাহ ও ইসলামী আন্দোলনের ঐতিহ্যের আলোকে প্রণয়ন করা হয়েছে। তাই বাংলাদেশ ইসলামী ছাত্রশিবিরের সকল কর্মতৎপরতা এই সংবিধানের ভিত্তিতেই পরিচালিত হয়। ছাত্রশিবিরের সংবিধানে ৫০টি ধারা রয়েছে। এছাড়াও পরিশিষ্টে সংগঠনের বিভিন্ন পর্যায়ের শপথসমূহ অন্তর্ভুক্ত করা হয়েছে।</p>', NULL, 'uploads/product/product_main_image/FKS91GU2SdFliaJV7tId65Z6kgiLimSYAW45d0mY.jpeg', 'sngbidhan', 'সংবিধান, sngbidhan', 'সংবিধান', 'সংবিধান', NULL, 1, NULL, 'sngbidhan', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(13, 'কর্মপদ্ধতি', 'krmpddhti', 'krmpddhti', 0, 0, 21, 50, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>বিআইসিএস</strong></p>\r\n\r\n<p><br />\r\nবইটিতে বাংলাদেশ ইসলামী ছাত্রশিবির প্রতিষ্ঠার লক্ষ্য, কর্মপদ্ধতির প্রয়োজনীয়তা, ইসলামের সাথে অন্যান্য বাতিল মতাদর্শের পার্থক্য, কর্মপদ্ধতির উৎস, কৌশলগত দিক ও ছাত্রশিবিরের কর্মসূচি যথা, দাওয়াত, সংগঠন, প্রশিক্ষণ, ইসলামী শিক্ষা আন্দোলন ও ছাত্রসমস্যা এবং ইসলামী সমাজ বিনির্মাণের বিষয়ে বিভিন্ন দিক ও কাজ সম্পর্কে বিস্তারিত আলোচনা করা হয়েছে।</p>', NULL, 'uploads/product/product_main_image/dt8f7ZM7u4sxULypFgk82Gct5rzeRXdTjqCluO8V.jpeg', 'krmpddhti', 'কর্মপদ্ধতি, krmpddhti', 'কর্মপদ্ধতি', 'কর্মপদ্ধতি', NULL, 1, NULL, 'krmpddhti', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(14, 'বায়োডাটা (সাথী-সদস্য প্রার্থী)', 'bayodata-sathee-sdsz-prarthee', 'bayodata-sathee-sdsz-prarthee', 0, 0, 150, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"color:#ff0000\"><span style=\"font-size:22px\"><strong>বি: দ্র: এই ফর্মটি কমপক্ষে 100 কপি (1 বাইন্ডিল) অর্ডার করতে হবে, অন্যথায় অর্ডার বাতিল&nbsp; বলে গণ্য হবে।</strong></span></span></p>', NULL, 'uploads/product/product_main_image/S0arTUaVI6tOzKqQtnL0S7qS5ZgfrACAPBMruY5g.jpeg', 'bayodata-sathee-sdsz-prarthee', 'বায়োডাটা (সাথী-সদস্য প্রার্থী), bayodata-sathee-sdsz-prarthee', 'বায়োডাটা (সাথী-সদস্য প্রার্থী)', 'বায়োডাটা (সাথী-সদস্য প্রার্থী)', NULL, 1, NULL, 'bayodata-sathee-sdsz-prarthee', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(15, 'চরিত্র গঠনের মৌলিক উপাদান', 'critr-gthner-moulik-upadan', 'critr-gthner-moulik-upadan', 0, 0, 21, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>চরিত্র গঠনের মৌলিক উপাদান- নঈম সিদ্দিকী</p>\r\n\r\n<p><br />\r\nঅনুবাদ : আবদুল মান্নান তালিব, আইসিএস পাবলিকেশন</p>\r\n\r\n<p><br />\r\nচরিত্র গঠনের মৌলিক উপাদান বইয়ে ইসলামী আন্দোলনের একজন কর্মী কিভাবে আল্লাহর সাথে সম্পর্ক স্থাপন, সংগঠনের সাথে সম্পর্ক স্থাপন এবং সহযোগীদের সাথে সম্পর্ক স্থাপনের মাধ্যমে তার চরিত্রকে সংশোধন করে আসহাবে রাসূলের চরিত্রে চরিত্র গঠন করবে তা বর্ণনা করেছেন।</p>', NULL, 'uploads/product/product_main_image/7gQVThWAwfL8rIK4qBZDYMHe15q0yolCkbzjlzNI.jpeg', 'critr-gthner-moulik-upadan', 'চরিত্র গঠনের মৌলিক উপাদান, critr-gthner-moulik-upadan', 'চরিত্র গঠনের মৌলিক উপাদান', 'চরিত্র গঠনের মৌলিক উপাদান', NULL, 1, NULL, 'critr-gthner-moulik-upadan', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(16, 'আদর্শ কীভাবে প্রচার করতে হবে', 'adrs-keevabe-prcar-krte-hbe', 'adrs-keevabe-prcar-krte-hbe', 0, 0, 21, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>প্রকাশনায়<br />\r\nআইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/maRUNbNCQbZgxnhYITzQaHMr4szQkz0shbqdoiQx.jpeg', 'adrs-keevabe-prcar-krte-hbe', 'আদর্শ কীভাবে প্রচার করতে হবে, adrs-keevabe-prcar-krte-hbe', 'আদর্শ কীভাবে প্রচার করতে হবে', 'আদর্শ কীভাবে প্রচার করতে হবে', NULL, 1, NULL, 'adrs-keevabe-prcar-krte-hbe', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(17, 'অর্থনীতিতে রাসুলের (সা.) দশ দফা', 'orthneetite-rasuler-sa-ds-dfa', 'orthneetite-rasuler-sa-ds-dfa', 0, 0, 21, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>অর্থনীতিতে রাসুলের (সা.) দশ দফা- শাহ্ মুহাম্মদ হাবীবুর রহমান</p>\r\n\r\n<p><br />\r\nপ্রচলিত অর্থনীতিতে রাসূলে কারীম (সা.) যে নতুন বিষয়গুলি প্রবর্তন করেছিলেন সেগুলি হলো-<br />\r\n১। হালাল উপায়ে উপার্জন ও হারাম পথ বর্জন ২। সুদ উচ্ছেদ ৩। ব্যবসায়িক অসাধুতা উচ্ছেদ ৪। যাকাত ব্যবস্থার প্রবর্তন<br />\r\n৫। বায়তুলমালের প্রতিষ্ঠা ৬। মানবিক শ্রমনীতির প্রবর্তন ৭। ওশরের প্রবর্তন ও ভূমিস্বত্ব ব্যবস্থার ইসলামীকরণ ৮। উত্তরাধিকার ব্যবস্থার যৌক্তিক রূপদান ৯। ন্যায়সঙ্গত রাষ্ট্রীয় হস্তক্ষেপের বিধান, এবং ১০। সামাজিক কল্যাণ ও নিরাপত্তা ব্যবস্থার প্রবর্তন।</p>', NULL, 'uploads/product/product_main_image/uHVWyO9e2j0f7tv3wS3ZP0jzzR1WluXrazvIx9Yl.jpeg', 'orthneetite-rasuler-sa-ds-dfa', 'অর্থনীতিতে রাসুলের (সা.) দশ দফা, orthneetite-rasuler-sa-ds-dfa', 'অর্থনীতিতে রাসুলের (সা.) দশ দফা', 'অর্থনীতিতে রাসুলের (সা.) দশ দফা', NULL, 1, NULL, 'orthneetite-rasuler-sa-ds-dfa', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(18, 'ইসলামী আন্দোলনের কর্মীদের পারস্পরিক সম্পর্ক', 'islamee-andolner-krmeeder-parsprik-smprk', 'islamee-andolner-krmeeder-parsprik-smprk', 0, 0, 56, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ইসলামী আন্দোলনের কর্মীদের পারস্পরিক সম্পর্ক- খুররম জাহ্ মুরাদ</p>\r\n\r\n<p><br />\r\nযে মানবগোষ্ঠী বিভিন্ন দল-গোত্র-খান্দানে দ্বিধাবিভক্ত হয়েছিলো, ছিলো পরস্পর পরস্পরের রক্তপিপাসু ও ইজ্জতের দুশমন। কুরআনের বিপ্লবী আহবানের ফলে তারা পরস্পর পরস্পরের ভাই এবং একে অপরের ইজ্জতের সংরক্ষক হয়ে গেল। এই ঐক্যের ফলে এক নতুন শক্তির উত্থান হলো এবং এই আহবান দুনিয়ার সবচেয়ে আলোড়ন তৈরির আহবানে পরিণত &nbsp;হয়ে ও শ্রেষ্ঠতম উত্তম সংস্কৃতি রূপায়ণের নিয়ামতে কিভাবে পরিণত হয়েছিল লেখক তা এই বইয়ে বর্ণনা করেছেন।</p>', NULL, 'uploads/product/product_main_image/RdYVKTKIJRAt4piKgRTy7vq7kuK7CLg3S7me0rCV.jpeg', 'islamee-andolner-krmeeder-parsprik-smprk', 'ইসলামী আন্দোলনের কর্মীদের পারস্পরিক সম্পর্ক, islamee-andolner-krmeeder-parsprik-smprk', 'ইসলামী আন্দোলনের কর্মীদের পারস্পরিক সম্পর্ক', 'ইসলামী আন্দোলনের কর্মীদের পারস্পরিক সম্পর্ক', NULL, 1, NULL, 'islamee-andolner-krmeeder-parsprik-smprk', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(19, 'ইসলাম ও অন্যান্য মতবাদ', 'islam-oo-onzanz-mtbad', 'islam-oo-onzanz-mtbad', 0, 0, 325, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ইসলাম ও অন্যান্য মতবাদ- ড. মুহাম্মদ নুরুল ইসলাম</p>\r\n\r\n<p><br />\r\nইসলামিক পূর্ণাঙ্গ জীবন বিধান, মানব জীবনের সকল দিক বিভাগ এতে স্পষ্টভাবে নির্দেশনা দেয়। পৃথিবীতে প্রচলিত মতবাদের বিরুদ্ধে এর রয়েছে সুনির্দিষ্ট নির্দেশনা। বিভিন্ন মতবাদের সাথে তুলনামূলক আলোচনায় ইসলামের শ্রেষ্ঠত্ব বইটিতে তুলে ধরা হয়েছে।<br />\r\n&nbsp;</p>', NULL, 'uploads/product/product_main_image/GzFL7p1UMY70FTNvIwonQzM0PgRBo6FIBKFjhFP5.jpeg', 'islam-oo-onzanz-mtbad', 'ইসলাম ও অন্যান্য মতবাদ, islam-oo-onzanz-mtbad', 'ইসলাম ও অন্যান্য মতবাদ', 'ইসলাম ও অন্যান্য মতবাদ', NULL, 1, NULL, 'islam-oo-onzanz-mtbad', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(20, 'দিকদিগন্ত-১', 'dikdignt-1', 'dikdignt-1', 0, 0, 170, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>দিকদিগন্ত-১<br />\r\nপ্রকাশনায় : আইসিএস পাবলিকেশন</p>\r\n\r\n<p><br />\r\nতথ্য কণিকা হিসেবে এই বইটি সমৃদ্ধ। আইসিএস পাবলিকেশন এর ২০০০ সাল থেকে ২০০৫ সাল পর্যন্ত নববর্ষের প্রকাশনাসমূহ এবং প্রকাশিত স্টিকার কার্ড এর সমৃদ্ধ তালিকা বইটিতে উল্লেখ করা হয়েছে ।</p>', NULL, 'uploads/product/product_main_image/sqkONsxFvi4Fz4E8f29ZVRwU7S4Zoodz3FUERnm0.jpeg', 'dikdignt-1', 'দিকদিগন্ত-১, dikdignt-1', 'দিকদিগন্ত-১', 'দিকদিগন্ত-১', NULL, 1, NULL, 'dikdignt-1', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(21, 'দিকদিগন্ত-২', 'dikdignt-2', 'dikdignt-2', 0, 0, 175, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>দিকদিগন্ত-২<br />\r\nপ্রকাশনায় : আইসিএস পাবলিকেশন</p>\r\n\r\n<p><br />\r\nতথ্য কণিকা হিসেবে এই বইটি সমৃদ্ধ। আইসিএস পাবলিকেশন এর ২০০৬ সাল থেকে ২০১১ সাল পর্যন্ত নববর্ষের প্রকাশনাসমূহ এবং প্রকাশিত স্টিকার কার্ড এর সমৃদ্ধ তালিকা বইটিতে উল্লেখ করা হয়েছে ।&nbsp;</p>', NULL, 'uploads/product/product_main_image/ExVSPQ9Dlb4kCJmTSNX23NyJhWJlpmOaOFH5SPnt.jpeg', 'dikdignt-2', 'দিকদিগন্ত-২, dikdignt-2', 'দিকদিগন্ত-২', 'দিকদিগন্ত-২', NULL, 1, NULL, 'dikdignt-2', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(22, 'দিকদিগন্ত-৩', 'dikdignt-3', 'dikdignt-3', 0, 0, 175, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>দিকদিগন্ত-৩<br />\r\nপ্রকাশনায় : আইসিএস পাবলিকেশন</p>\r\n\r\n<p><br />\r\nতথ্য কণিকা হিসেবে এই বইটি সমৃদ্ধ। আইসিএস পাবলিকেশন এর ২০১২ সাল থেকে ২০১৫ সাল পর্যন্ত নববর্ষের প্রকাশনাসমূহ এবং প্রকাশিত স্টিকার কার্ড এর সমৃদ্ধ তালিকা বইটিতে উল্লেখ করা হয়েছে ।</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'uploads/product/product_main_image/7jD939a9BZvfo7XwosPTYdVOyfj39jvWz195lz11.jpeg', 'dikdignt-3', 'দিকদিগন্ত-৩, dikdignt-3', 'দিকদিগন্ত-৩', 'দিকদিগন্ত-৩', NULL, 1, NULL, 'dikdignt-3', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(23, 'স্মৃতি অমলিন-১', 'smrriti-omlin-1', 'smrriti-omlin-1', 0, 0, 350, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>স্মৃতি অমলিন-১<br />\r\nপ্রকাশনায় : আইসিএস পাবলিকেশন্স</p>\r\n\r\n<p><br />\r\nশহিদেরা আমাদের অনুপ্রেরণা। লাল-সবুজের এই বাংলাদেশে সর্বোচ্চ ত্যাগের &nbsp;দৃষ্টান্ত স্থাপনকারী। বাংলাদেশ ইসলামী ছাত্রশিবিরের প্রতিষ্ঠা লগ্ন থেকে বর্তমান পর্যন্ত যারা শাহাদাত বরণ করেছেন তাদের জীবনের বিভিন্ন দিক সম্পর্কে বিন্যাস ভাবে আলোকপাত করা হয়েছে এই বইটিতে।</p>', NULL, 'uploads/product/product_main_image/cmoBuzAuxEpzkoKAJsQ7xDeC45OT2EU8LYjjQtL5.jpeg', 'smrriti-omlin-1', 'স্মৃতি অমলিন-১, smrriti-omlin-1', 'স্মৃতি অমলিন-১', 'স্মৃতি অমলিন-১', NULL, 1, NULL, 'smrriti-omlin-1', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(24, 'দৈনন্দিন মাসনুন দোয়া ও মাসআলা মাসায়েল', 'doinndin-masnun-doya-oo-masala-masayel', 'doinndin-masnun-doya-oo-masala-masayel', 0, 0, 84, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>দৈনন্দিন মাসনুন দোয়া ও মাসআলা মাসায়েল<br />\r\nপ্রকাশনায় : আইসিএস পাবলিকেশন</p>\r\n\r\n<p><br />\r\nবইটিতে মানুষের দৈনন্দিন বিভিন্ন আমলের &nbsp;দোয়া সংক্রান্ত বিষয় আলোচনা করা হয়েছে। ইসলাম একটি পরিপূর্ণ জীবন বিধান প্রতিদিন সকাল থেকে শুরু করে রাত পর্যন্ত প্রতিটি মানুষের প্রতিটি কর্মকা-ই ইসলামের বিধানের আওতার মধ্যে। কুরআন ও হাদিসের দলিল উপস্থাপন করা এবং সংশ্লিষ্ট বিষয়ের উপর মাসআলা-মাসায়েল সম্পর্কে আলোচনা করা হয়েছে।<br />\r\n&nbsp;</p>', NULL, 'uploads/product/product_main_image/ha7wQLNjmfePQOg45yBFVQNI3AWJDBINtWO9sNfg.jpeg', 'doinndin-masnun-doya-oo-masala-masayel', 'দৈনন্দিন মাসনুন দোয়া ও মাসআলা মাসায়েল, doinndin-masnun-doya-oo-masala-masayel', 'দৈনন্দিন মাসনুন দোয়া ও মাসআলা মাসায়েল', 'দৈনন্দিন মাসনুন দোয়া ও মাসআলা মাসায়েল', NULL, 1, NULL, 'doinndin-masnun-doya-oo-masala-masayel', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(25, 'ছোটদের ইসলামী অর্থনীতি', 'chotder-islamee-orthneeti', 'chotder-islamee-orthneeti', 0, 0, 42, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">&nbsp;<strong> ড. মুহাম্মাদ নুরুল ইসলাম</strong></span></p>', NULL, 'uploads/product/product_main_image/mIhIDNxpHrnVWzRd8KNrUWKToswUvYsb3w5ki5kd.jpeg', 'chotder-islamee-orthneeti', 'ছোটদের ইসলামী অর্থনীতি, chotder-islamee-orthneeti', 'ছোটদের ইসলামী অর্থনীতি', 'ছোটদের ইসলামী অর্থনীতি', NULL, 1, NULL, 'chotder-islamee-orthneeti', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(26, 'Road to Higher Study', 'road-to-higher-study', 'road-to-higher-study', 0, 0, 250, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>রোড টু হায়ার স্টাডি<br />\r\nপ্রকাশনায় : মুনলাইট পাবলিকেশন</p>\r\n\r\n<p><br />\r\nশিক্ষা জাতির মেরুদন্ড। বাংলাদেশের উচ্চ শিক্ষার পাশাপাশি বিদেশে উচ্চশিক্ষা সম্পর্কে ধারণা রাখা একজন শিক্ষার্থীর জন্য গুরুত্বপূর্ণ। একজন শিক্ষার্থী তার উন্নত ক্যারিয়ার গঠনের লক্ষ্যে আন্তর্জাতিক শীর্ষ প্রতিষ্ঠান সম্পর্কে এবং তার পাঠদান সম্পর্কে নানান বিষয়ে তথ্য সমৃদ্ধ এই বইটি।</p>', NULL, 'uploads/product/product_main_image/wUJydARDav81u26fADuzOnMlPlThEAG1M7j2AJNW.jpeg', 'road-to-higher-study', 'Road to Higher Study, road-to-higher-study', 'Road to Higher Study', 'Road to Higher Study', NULL, 1, NULL, 'road-to-higher-study', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(27, 'সফল বিতার্কিক বক্তা ও নেতা হওয়ার কৌশল', 'sfl-bitarkik-bkta-oo-neta-hwar-kousl', 'sfl-bitarkik-bkta-oo-neta-hwar-kousl', 0, 0, 195, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>সফল বিতার্কিক বক্তা ও নেতা হওয়ার কৌশল<br />\r\nপ্রকাশনায় : জাতীয় বিতর্ক মঞ্চ</p>\r\n\r\n<p><br />\r\nবিতর্ক প্রতিযোগিতায় নিজেকে একজন সফল বিতার্কিক হিসেবে গড়ে তোলা এবং বিভিন্ন বিষয়ে যুক্তি উপস্থাপন করার ক্ষেত্রে সর্বোত্তম নিয়ম নীতি অনুসরণ এবং সঠিক কৌশল অবলম্বনের মাধ্যমে শ্রেষ্ঠত্ব অর্জনের বিষয়ে আলোকপাত করা হযয়েছে।</p>', NULL, 'uploads/product/product_main_image/Bxn88uUmULycmUZt3Bom313CuW0YZEMjZZdl4PCO.jpeg', 'sfl-bitarkik-bkta-oo-neta-hwar-kousl', 'সফল বিতার্কিক বক্তা ও নেতা হওয়ার কৌশল, sfl-bitarkik-bkta-oo-neta-hwar-kousl', 'সফল বিতার্কিক বক্তা ও নেতা হওয়ার কৌশল', 'সফল বিতার্কিক বক্তা ও নেতা হওয়ার কৌশল', NULL, 1, NULL, 'sfl-bitarkik-bkta-oo-neta-hwar-kousl', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(28, 'শিশু কিশোর রচনাবলী', 'sisu-kisor-rcnablee', 'sisu-kisor-rcnablee', 0, 0, 126, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>শিশু কিশোর রচনাবলী- ড. কজী দীন মুহম্মদ<br />\r\nপ্রকাশনায় : নতুন এক মাত্রা&nbsp;</p>\r\n\r\n<p><br />\r\nশিশু কিশোর মনের উপযোগী উপাদান, ভাবনার বিচ্ছুরণ, জীবন গঠনে নৈতিক শিক্ষা, স্বপ্নের রংধনু এতে আলোকপাত করা হয়েছে। বিশ্বের নানা প্রান্তে ইতিহাস, সংস্কৃতি, ঐতিহ্য ও ধর্মের নানামাত্রিক জীবনঘনিষ্ঠ গল্পগুচ্ছ, আখ্যান, ফিচার এখানে সংগ্রহ করা হয়েছে। শিক্ষার্থীদের মনে সত্য সুন্দর ও কল্যাণের আলো ছড়ানোর লক্ষ্যে বইটির ভূমিকা গুরুত্বপূর্ণ।<br />\r\n&nbsp;</p>', NULL, 'uploads/product/product_main_image/eJiJoxtBzsZKahzPfMn8G9QjCtGxbq0HvcA3IlBz.jpeg', 'sisu-kisor-rcnablee', 'শিশু কিশোর রচনাবলী, sisu-kisor-rcnablee', 'শিশু কিশোর রচনাবলী', 'শিশু কিশোর রচনাবলী', NULL, 1, NULL, 'sisu-kisor-rcnablee', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(29, 'শ্রেষ্ঠ শিশু কিশোর সাহিত্য', 'sreshth-sisu-kisor-sahitz', 'sreshth-sisu-kisor-sahitz', 0, 0, 290, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>শ্রেষ্ঠ শিশু কিশোর সাহিত্য- ফররুক আহমদ<br />\r\nপ্রকাশনায় : দেশজ প্রকাশন</p>\r\n\r\n<p><br />\r\nশিশু কিশোরদের জন্য লেখা কবি ফররুখ আহমেদের অসামান্য সব সৃষ্টি। এতে স্থান পেয়েছে পাখির বাসা, হরফের ছড়া, নতুন লেখা, চিড়িয়াখানা, ছড়ার আসর, ছড়া ছবি দেশে, ফুলের জলসা, পাখির ছড়া, গীতিকাব্য, গল্প।<br />\r\n&nbsp;</p>', NULL, 'uploads/product/product_main_image/AQP1CisyQIlyJ0iYkWSd6UaJEgd40gibOf87YZH6.jpeg', 'sreshth-sisu-kisor-sahitz', 'শ্রেষ্ঠ শিশু কিশোর সাহিত্য, sreshth-sisu-kisor-sahitz', 'শ্রেষ্ঠ শিশু কিশোর সাহিত্য', 'শ্রেষ্ঠ শিশু কিশোর সাহিত্য', NULL, 1, NULL, 'sreshth-sisu-kisor-sahitz', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(30, 'সিলেবাস', 'silebas', 'silebas', 0, 0, 21, 50, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>সিলেবাস</p>\r\n\r\n<p>প্রকাশনায় : বিআইসিএস</p>', NULL, 'uploads/product/product_main_image/a5VS9oD6oKIiBT3pUYqOWw5Szve1QdxhJPN9YLI4.jpeg', 'silebas', 'সিলেবাস, silebas', 'সিলেবাস', 'সিলেবাস', NULL, 1, NULL, 'silebas', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(31, 'চাবির রিং (বি)', 'cabir-ring-bi', 'cabir-ring-bi', 0, 0, 24, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\"><span style=\"color:#ff0000\">&nbsp;যে কোনো একটি চাবির রিং এর মূল্য</span></span></p>', NULL, 'uploads/product/product_main_image/0FxOdm6Q59CJoiIoQEwdLNxWrhlcCAlNtYTTax36.jpeg', 'cabir-ring-bi', 'চাবির রিং (বি), cabir-ring-bi', 'চাবির রিং (বি)', 'চাবির রিং (বি)', NULL, 1, NULL, 'cabir-ring-bi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(32, 'চাবির রিং (পতাকা)', 'cabir-ring-ptaka', 'cabir-ring-ptaka', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/3Q5k55S4m9VT8F4U654azXDbUIqaCfZWCzl1mlQ8.jpeg', 'cabir-ring-ptaka', 'চাবির রিং (পতাকা), cabir-ring-ptaka', 'চাবির রিং (পতাকা)', 'চাবির রিং (পতাকা)', NULL, 1, NULL, 'cabir-ring-ptaka', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(33, 'রমাদান কর্ম পরিকল্পনা', 'rmadan-krm-priklpna', 'rmadan-krm-priklpna', 0, 0, 35, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#f1c40f\"><span style=\"font-size:36px\"><span style=\"background-color:#000000\">&nbsp;</span></span><span style=\"font-size:72px\"><span style=\"background-color:#000000\">রমজানূল মুবারক</span></span></span></p>', NULL, 'uploads/product/product_main_image/l7vnnRi4I8tCtrBXwfRguMZEJ2yKNQnFjBvdSRHf.jpeg', 'rmadan-krm-priklpna', 'রমাদান কর্ম পরিকল্পনা, rmadan-krm-priklpna', 'রমাদান কর্ম পরিকল্পনা', 'রমাদান কর্ম পরিকল্পনা', NULL, 1, NULL, 'rmadan-krm-priklpna', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(34, 'তিন পাতা ক্যালেন্ডার', 'tin-pata-kzalendar', 'tin-pata-kzalendar', 0, 0, 60, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<h1 style=\"text-align:center\"><span style=\"font-size:48px\"><span style=\"color:#e74c3c\">নববর্ষের শুভেচ্ছা</span></span></h1>\r\n\r\n<p>&nbsp;</p>', NULL, 'uploads/product/product_main_image/nryYuCLdZxyVqAQ4A7LXYsgKH2G1jZTPrjEfkHTR.jpeg', 'tin-pata-kzalendar', 'তিন পাতা ক্যালেন্ডার, tin-pata-kzalendar', 'তিন পাতা ক্যালেন্ডার', 'তিন পাতা ক্যালেন্ডার', NULL, 1, NULL, 'tin-pata-kzalendar', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(35, 'একপাতা ক্যালেন্ডার (বড়ো)', 'ekpata-kzalendar-bro', 'ekpata-kzalendar-bro', 0, 0, 20, 300, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"color:#ff0000\"><span style=\"font-size:36px\">শুভ নববর্ষ&nbsp;</span></span></p>', NULL, 'uploads/product/product_main_image/Ls85NQkb4bBhm6q9EfZzW4LNq6IHd20FK3qTfIjv.jpeg', 'ekpata-kzalendar-bro', 'একপাতা ক্যালেন্ডার (বড়ো), ekpata-kzalendar-bro', 'একপাতা ক্যালেন্ডার (বড়ো)', 'একপাতা ক্যালেন্ডার (বড়ো)', NULL, 1, NULL, 'ekpata-kzalendar-bro', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(36, 'ডেস্ক ক্যালেন্ডার (বাংলা)', 'desk-kzalendar-bangla', 'desk-kzalendar-bangla', 0, 0, 50, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#e74c3c\"><span style=\"font-size:36px\">নববর্ষের শুভেচ্ছা</span></span></p>', NULL, 'uploads/product/product_main_image/tzb0KhuTxxIvLtzEQfzZqX6Ve2LxoXzZoPYMmgif.jpeg', 'desk-kzalendar-bangla', 'ডেস্ক ক্যালেন্ডার (বাংলা), desk-kzalendar-bangla', 'ডেস্ক ক্যালেন্ডার (বাংলা)', 'ডেস্ক ক্যালেন্ডার (বাংলা)', NULL, 1, NULL, 'desk-kzalendar-bangla', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(37, 'একপাতা ক্যালেন্ডার (ছোটো)', 'ekpata-kzalendar-choto', 'ekpata-kzalendar-choto', 0, 0, 10, 200, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"color:#ff0000\"><span style=\"font-size:36px\">শুভ নববর্ষ&nbsp;</span></span></p>', NULL, 'uploads/product/product_main_image/Pi2tT8L2nKuyCog3t37Vjg6h4VR98CMfxEufe40r.jpeg', 'ekpata-kzalendar-choto', 'একপাতা ক্যালেন্ডার (ছোটো), ekpata-kzalendar-choto', 'একপাতা ক্যালেন্ডার (ছোটো)', 'একপাতা ক্যালেন্ডার (ছোটো)', NULL, 1, NULL, 'ekpata-kzalendar-choto', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(38, 'ডায়েরি (বাংলা)', 'dayeri-bangla', 'dayeri-bangla', 0, 0, 180, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\"><span style=\"color:#ff0000\">নববর্ষের শুভেচ্ছা-2024</span></span></p>', NULL, 'uploads/product/product_main_image/w7LbLjBpqIEyFk5EaAu1Buh07U8hWGba8PbuDM5X.jpeg', 'dayeri-bangla', 'ডায়েরি (বাংলা), dayeri-bangla', 'ডায়েরি (বাংলা)', 'ডায়েরি (বাংলা)', NULL, 1, NULL, 'dayeri-bangla', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(39, 'ডায়েরি (ইংরেজি)', 'dayeri-ingreji', 'dayeri-ingreji', 0, 0, 180, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\"><span style=\"color:#9b59b6\">নববর্ষের শুভেচ্ছা</span></span></p>', NULL, 'uploads/product/product_main_image/MQRCR3CVlC2YSjY2tmUhPDmy0LxdhnMudY9mec6e.jpeg', 'dayeri-ingreji', 'ডায়েরি (ইংরেজি), dayeri-ingreji', 'ডায়েরি (ইংরেজি)', 'ডায়েরি (ইংরেজি)', NULL, 1, NULL, 'dayeri-ingreji', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(40, 'ডায়েরি (মাঝারি)', 'dayeri-majhari', 'dayeri-majhari', 0, 0, 55, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#e74c3c\"><span style=\"font-size:36px\">নববর্ষের শুভেচ্ছা</span></span></p>', NULL, 'uploads/product/product_main_image/aAQLZgMQ11Oz4y9DJACUkWRUKsi7VFi6dac0Yh2j.jpeg', 'dayeri-majhari', 'ডায়েরি (মাঝারি), dayeri-majhari', 'ডায়েরি (মাঝারি)', 'ডায়েরি (মাঝারি)', NULL, 1, NULL, 'dayeri-majhari', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(41, 'ডায়েরি (পকেট)', 'dayeri-pket', 'dayeri-pket', 0, 0, 35, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#ff0000\"><span style=\"font-size:36px\">শুভ নববর্ষ-2024 </span></span></p>', NULL, 'uploads/product/product_main_image/EFedoLR3hH0yuckGi4EhnGn3kdSBxGX6qVtHp0S0.jpeg', 'dayeri-pket', 'ডায়েরি (পকেট), dayeri-pket', 'ডায়েরি (পকেট)', 'ডায়েরি (পকেট)', NULL, 1, NULL, 'dayeri-pket', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(42, 'কোচিং রেজিস্টার খাতা', 'kocing-rejistar-khata', 'kocing-rejistar-khata', 0, 0, 250, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">কোচিং রেজিস্টার খাতা</span></p>', NULL, 'uploads/product/product_main_image/xhEyyNHIeASWr16k3g2S1BZuMbtvkKzSgi6thOPq.jpeg', 'kocing-rejistar-khata', 'কোচিং রেজিস্টার খাতা, kocing-rejistar-khata', 'কোচিং রেজিস্টার খাতা', 'কোচিং রেজিস্টার খাতা', NULL, 1, NULL, 'kocing-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(43, 'অর্থ রেজিস্টার খাতা (বড়ো)(শাখা)', 'orth-rejistar-khata-brosakha', 'orth-rejistar-khata-brosakha', 0, 0, 220, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/O1qVodm6ahzpH0cmMNcImTZPlEBHUMKRedPqG1Hr.jpeg', 'orth-rejistar-khata-brosakha', 'অর্থ রেজিস্টার খাতা (বড়ো)(শাখা), orth-rejistar-khata-brosakha', 'অর্থ রেজিস্টার খাতা (বড়ো)(শাখা)', 'অর্থ রেজিস্টার খাতা (বড়ো)(শাখা)', NULL, 1, NULL, 'orth-rejistar-khata-brosakha', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(44, 'প্রকাশনা রেজিস্টার খাতা', 'prkasna-rejistar-khata', 'prkasna-rejistar-khata', 0, 0, 150, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/f1mj8lrnoE5wWOAvBI53yo3TqNIHVZWYWQBjwpOG.jpeg', 'prkasna-rejistar-khata', 'প্রকাশনা রেজিস্টার খাতা, prkasna-rejistar-khata', 'প্রকাশনা রেজিস্টার খাতা', 'প্রকাশনা রেজিস্টার খাতা', NULL, 1, NULL, 'prkasna-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(45, 'সাহিত্য রেজিস্টার খাতা', 'sahitz-rejistar-khata', 'sahitz-rejistar-khata', 0, 0, 70, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/L0FQZTew7LlTNd3mBAEndANHxKiIixawGShdmq5q.jpeg', 'sahitz-rejistar-khata', 'সাহিত্য রেজিস্টার খাতা, sahitz-rejistar-khata', 'সাহিত্য রেজিস্টার খাতা', 'সাহিত্য রেজিস্টার খাতা', NULL, 1, NULL, 'sahitz-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(46, 'পোস্টার (মিনি)', 'postar-mini', 'postar-mini', 0, 0, 4, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/K94YCEn3Te0SP32fO8xLAJe4Y3URUNDEk7znF9xh.jpeg', 'postar-mini', 'পোস্টার (মিনি), postar-mini', 'পোস্টার (মিনি)', 'পোস্টার (মিনি)', NULL, 1, NULL, 'postar-mini', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(47, 'পোস্টার (পাঁচ শ্রেণি)', 'postar-pannc-sreni', 'postar-pannc-sreni', 0, 0, 25, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/aP5kRlQzfhW5E4RB2YWEZhjmErsMYcnnLJKkj2ut.jpeg', 'postar-pannc-sreni', 'পোস্টার (পাঁচ শ্রেণি), postar-pannc-sreni', 'পোস্টার (পাঁচ শ্রেণি)', 'পোস্টার (পাঁচ শ্রেণি)', NULL, 1, NULL, 'postar-pannc-sreni', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(48, 'পোস্টার (সাত শ্রেণি)', 'postar-sat-sreni', 'postar-sat-sreni', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/mu4IfiBsYsdYdyVYnK5RVK7rXYSEaAMqX6H0wlLZ.jpeg', 'postar-sat-sreni', 'পোস্টার (সাত শ্রেণি), postar-sat-sreni', 'পোস্টার (সাত শ্রেণি)', 'পোস্টার (সাত শ্রেণি)', NULL, 1, NULL, 'postar-sat-sreni', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(49, 'পোস্টার (নহে সমাপ্ত)', 'postar-nhe-smapt', 'postar-nhe-smapt', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/ro5qm4tjTbnJlxxOvaY322sMT1VioKf0GIOzTxs0.jpeg', 'postar-nhe-smapt', 'পোস্টার (নহে সমাপ্ত), postar-nhe-smapt', 'পোস্টার (নহে সমাপ্ত)', 'পোস্টার (নহে সমাপ্ত)', NULL, 1, NULL, 'postar-nhe-smapt', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(50, 'স্ট্যান্ড পতাকা (দলিয়)', 'stzand-ptaka-dliy', 'stzand-ptaka-dliy', 0, 0, 600, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/V36yK0RHVlVWZAAUUGVVI9bzsyFtnjtNHXulxt3e.jpeg', 'stzand-ptaka-dliy', 'স্ট্যান্ড পতাকা (দলিয়), stzand-ptaka-dliy', 'স্ট্যান্ড পতাকা (দলিয়)', 'স্ট্যান্ড পতাকা (দলিয়)', NULL, 1, NULL, 'stzand-ptaka-dliy', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(51, 'সাহসী মানুষের গল্প-২', 'sahsee-manusher-glp-2', 'sahsee-manusher-glp-2', 0, 0, 49, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>প্রকাশনায় : আইসিএস পাবলিকেশন</p>\r\n\r\n<p>ইসলামের বীরত্বগাথা ইতিহাস-ঐতিহ্যের আলোকে তরুণ-যুবকদের উজ্জীবিত করার জন্য অনুপ্রেরণা মূলক গল্পের মাধ্যমে শিক্ষণীয় বিষয়গুলো আলোকপাত করা হয়েছে। তরুণ-যুবকদের নৈতিকতা মূল্যবোধ বিকশিত করার জন্য একটি অনন্য বই হিসেবে সাহসী মানুষের গল্প ১-৬ খন্ড প্রকাশিত।&nbsp;</p>', NULL, 'uploads/product/product_main_image/NqiaQruvqzUmWC2oOLoorYsDcq0L8CHWGgsSzCuY.jpeg', 'sahsee-manusher-glp-2', 'সাহসী মানুষের গল্প-২, sahsee-manusher-glp-2', 'সাহসী মানুষের গল্প-২', 'সাহসী মানুষের গল্প-২', NULL, 1, NULL, 'sahsee-manusher-glp-2', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(52, 'সাহসী মানুষের গল্প-৩', 'sahsee-manusher-glp-3', 'sahsee-manusher-glp-3', 0, 0, 35, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:22px\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></p>\r\n\r\n<p><span style=\"font-size:22px\">ইসলামের বীরত্বগাথা ইতিহাস-ঐতিহ্যের আলোকে তরুণ-যুবকদের উজ্জীবিত করার জন্য অনুপ্রেরণা মূলক গল্পের মাধ্যমে শিক্ষণীয় বিষয়গুলো আলোকপাত করা হয়েছে। তরুণ-যুবকদের নৈতিকতা মূল্যবোধ বিকশিত করার জন্য একটি অনন্য বই হিসেবে সাহসী মানুষের গল্প ১-৬ খন্ড প্রকাশিত।&nbsp;</span></p>', NULL, 'uploads/product/product_main_image/tpaoRJCROcShqsZWfJJj6zuYAWU2KQEDp7GhuMq8.jpeg', 'sahsee-manusher-glp-3', 'সাহসী মানুষের গল্প-৩, sahsee-manusher-glp-3', 'সাহসী মানুষের গল্প-৩', 'সাহসী মানুষের গল্প-৩', NULL, 1, NULL, 'sahsee-manusher-glp-3', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(53, 'সাহসী মানুষরে গল্প-৪', 'sahsee-manushre-glp-4', 'sahsee-manushre-glp-4', 0, 0, 28, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:26px\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></p>\r\n\r\n<p><span style=\"font-size:26px\">ইসলামের বীরত্বগাথা ইতিহাস-ঐতিহ্যের আলোকে তরুণ-যুবকদের উজ্জীবিত করার জন্য অনুপ্রেরণা মূলক গল্পের মাধ্যমে শিক্ষণীয় বিষয়গুলো আলোকপাত করা হয়েছে। তরুণ-যুবকদের নৈতিকতা মূল্যবোধ বিকশিত করার জন্য একটি অনন্য বই হিসেবে সাহসী মানুষের গল্প ১-৬ খন্ড প্রকাশিত।&nbsp;</span></p>', NULL, 'uploads/product/product_main_image/KQUPVPmBVxjDnPVOtrXqTFq5A5vr9FQkTt5UF2oC.jpeg', 'sahsee-manushre-glp-4', 'সাহসী মানুষরে গল্প-৪, sahsee-manushre-glp-4', 'সাহসী মানুষরে গল্প-৪', 'সাহসী মানুষরে গল্প-৪', NULL, 1, NULL, 'sahsee-manushre-glp-4', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(54, 'সাহসী মানুষরে গল্প-৫', 'sahsee-manushre-glp-5', 'sahsee-manushre-glp-5', 0, 0, 35, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:22px\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></p>\r\n\r\n<p><span style=\"font-size:22px\">সাহসী মানুষের গল্প (১-৬)<br />\r\nইসলামের বীরত্বগাথা ইতিহাস-ঐতিহ্যের আলোকে তরুণ-যুবকদের উজ্জীবিত করার জন্য অনুপ্রেরণা মূলক গল্পের মাধ্যমে শিক্ষণীয় বিষয়গুলো আলোকপাত করা হয়েছে। তরুণ-যুবকদের নৈতিকতা মূল্যবোধ বিকশিত করার জন্য একটি অনন্য বই হিসেবে সাহসী মানুষের গল্প ১-৬ খন্ড প্রকাশিত।&nbsp;</span></p>', NULL, 'uploads/product/product_main_image/dnf861e0MOoL2iNh9a5ZQl5KBlkbRLjx1IBJcIuf.jpeg', 'sahsee-manushre-glp-5', 'সাহসী মানুষরে গল্প-৫, sahsee-manushre-glp-5', 'সাহসী মানুষরে গল্প-৫', 'সাহসী মানুষরে গল্প-৫', NULL, 1, NULL, 'sahsee-manushre-glp-5', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(55, 'সাহসী মানুষরে গল্প-৬', 'sahsee-manushre-glp-6', 'sahsee-manushre-glp-6', 0, 0, 35, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:22px\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></p>\r\n\r\n<p><span style=\"font-size:22px\">ইসলামের বীরত্বগাথা ইতিহাস-ঐতিহ্যের আলোকে তরুণ-যুবকদের উজ্জীবিত করার জন্য অনুপ্রেরণা মূলক গল্পের মাধ্যমে শিক্ষণীয় বিষয়গুলো আলোকপাত করা হয়েছে। তরুণ-যুবকদের নৈতিকতা মূল্যবোধ বিকশিত করার জন্য একটি অনন্য বই হিসেবে সাহসী মানুষের গল্প ১-৬ খন্ড প্রকা</span>শিত।&nbsp;</p>', NULL, 'uploads/product/product_main_image/bduViNaLn1NOd41w7NbYd4Re6I3lrdYHsceWVQTU.jpeg', 'sahsee-manushre-glp-6', 'সাহসী মানুষরে গল্প-৬, sahsee-manushre-glp-6', 'সাহসী মানুষরে গল্প-৬', 'সাহসী মানুষরে গল্প-৬', NULL, 1, NULL, 'sahsee-manushre-glp-6', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(56, 'ভাউচার পেড (বই)', 'vaucar-ped-bi', 'vaucar-ped-bi', 0, 0, 50, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/3OzDl3v20uwHqWgn4SE4N4n0SR9bZn4GbgXtBb9H.jpeg', 'vaucar-ped-bi', 'ভাউচার পেড (বই), vaucar-ped-bi', 'ভাউচার পেড (বই)', 'ভাউচার পেড (বই)', NULL, 1, NULL, 'vaucar-ped-bi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(57, 'ক্যাশ মেমো (বই)', 'kzas-memo-bi', 'kzas-memo-bi', 0, 0, 50, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"color:#2ecc71\"><span style=\"font-size:72px\"><span style=\"background-color:#f1c40f\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/sHtXeKFKvoRmSIGZjCHzE2uRs7IF28klHXA9g136.jpeg', 'kzas-memo-bi', 'ক্যাশ মেমো (বই), kzas-memo-bi', 'ক্যাশ মেমো (বই)', 'ক্যাশ মেমো (বই)', NULL, 1, NULL, 'kzas-memo-bi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(58, 'রসিদ বই (থানা) (প্রতিটি বান্ডিলে ৫০টি করে)', 'rsid-bi-thana-prtiti-bandile-50ti-kre', 'rsid-bi-thana-prtiti-bandile-50ti-kre', 0, 0, 1100, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"color:#ecf0f1\"><span style=\"font-size:72px\"><span style=\"background-color:#1abc9c\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/BAWxvBKRipVP3W5zkDD6ET6Gg9b8xYq1Rc1E4GBB.jpeg', 'rsid-bi-thana-prtiti-bandile-50ti-kre', 'রসিদ বই (থানা) (প্রতিটি বান্ডিলে ৫০টি করে), rsid-bi-thana-prtiti-bandile-50ti-kre', 'রসিদ বই (থানা) (প্রতিটি বান্ডিলে ৫০টি করে)', 'রসিদ বই (থানা) (প্রতিটি বান্ডিলে ৫০টি করে)', NULL, 1, NULL, 'rsid-bi-thana-prtiti-bandile-50ti-kre', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(59, 'ম্যাস মিল রেজিস্টার খাতা', 'mzas-mil-rejistar-khata', 'mzas-mil-rejistar-khata', 0, 0, 150, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/2QGE18rA7YYMQhOcqecGs4Ty28HOKxDXlXRPrNbK.jpeg', 'mzas-mil-rejistar-khata', 'ম্যাস মিল রেজিস্টার খাতা, mzas-mil-rejistar-khata', 'ম্যাস মিল রেজিস্টার খাতা', 'ম্যাস মিল রেজিস্টার খাতা', NULL, 1, NULL, 'mzas-mil-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(60, 'রসিদ বই স্টক রেজিস্টার খাতা', 'rsid-bi-stk-rejistar-khata', 'rsid-bi-stk-rejistar-khata', 0, 0, 110, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/YRSELowMXI6uFTn6faTBM9FQw66avsRnZnNp9Vey.jpeg', 'rsid-bi-stk-rejistar-khata', 'রসিদ বই স্টক রেজিস্টার খাতা, rsid-bi-stk-rejistar-khata', 'রসিদ বই স্টক রেজিস্টার খাতা', 'রসিদ বই স্টক রেজিস্টার খাতা', NULL, 1, NULL, 'rsid-bi-stk-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(61, 'অর্থ রেজিস্টার খাতা (ওয়ার্ড)', 'orth-rejistar-khata-ward', 'orth-rejistar-khata-ward', 0, 0, 230, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\"><span style=\"font-size:36px\"><span style=\"background-color:#2ecc71\">অর্থ রেজিস্টার খাতা (ওয়ার্ড)</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ecf0f1\"><span style=\"font-size:36px\"><span style=\"background-color:#2ecc71\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/MSzZCEeTGFqKEYNK19h9VFdIGqvG2JkjJ9Iw29OJ.jpeg', 'orth-rejistar-khata-ward', 'অর্থ রেজিস্টার খাতা (ওয়ার্ড), orth-rejistar-khata-ward', 'অর্থ রেজিস্টার খাতা (ওয়ার্ড)', 'অর্থ রেজিস্টার খাতা (ওয়ার্ড)', NULL, 1, NULL, 'orth-rejistar-khata-ward', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(62, 'উৎপাদন রেজিস্টার খাতা', 'uttpadn-rejistar-khata', 'uttpadn-rejistar-khata', 0, 0, 100, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/jOEsOBsWOWdfTcMUg7VZQTPJPpXiw1n323RnzX9L.jpeg', 'uttpadn-rejistar-khata', 'উৎপাদন রেজিস্টার খাতা, uttpadn-rejistar-khata', 'উৎপাদন রেজিস্টার খাতা', 'উৎপাদন রেজিস্টার খাতা', NULL, 1, NULL, 'uttpadn-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(63, 'মামলা রেজিস্টার খাতা', 'mamla-rejistar-khata', 'mamla-rejistar-khata', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/UKe6H6CdNJgDPlMGDQnGsAFseZMW1fDjErWO5JqM.jpeg', 'mamla-rejistar-khata', 'মামলা রেজিস্টার খাতা, mamla-rejistar-khata', 'মামলা রেজিস্টার খাতা', 'মামলা রেজিস্টার খাতা', NULL, 1, NULL, 'mamla-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(64, 'নামাজ রোজার স্থায়ী সময় সূচি', 'namaj-rojar-sthayee-smy-suuci', 'namaj-rojar-sthayee-smy-suuci', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/3MsNp5MNcibRXweZ62jht20RksZlxaCnRVJ3QKdC.jpeg', 'namaj-rojar-sthayee-smy-suuci', 'নামাজ রোজার স্থায়ী সময় সূচি, namaj-rojar-sthayee-smy-suuci', 'নামাজ রোজার স্থায়ী সময় সূচি', 'নামাজ রোজার স্থায়ী সময় সূচি', NULL, 1, NULL, 'namaj-rojar-sthayee-smy-suuci', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(65, 'ছাত্রকল্যাণ বক্স', 'chatrklzan-bks', 'chatrklzan-bks', 0, 0, 10, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/4DV8yFPihGSEcT8rmuZVOawdWvYY2YTG38QpywaF.jpeg', 'chatrklzan-bks', 'ছাত্রকল্যাণ বক্স, chatrklzan-bks', 'ছাত্রকল্যাণ বক্স', 'ছাত্রকল্যাণ বক্স', NULL, 1, NULL, 'chatrklzan-bks', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(66, 'ব্যক্তিগত রিপোর্ট বই', 'bzktigt-riport-bi', 'bzktigt-riport-bi', 0, 0, 18, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/fJHztjwARcPI0kZpNAzYfJw8liZQCdesOrUUn9Sv.jpeg', 'bzktigt-riport-bi', 'ব্যক্তিগত রিপোর্ট বই, bzktigt-riport-bi', 'ব্যক্তিগত রিপোর্ট বই', 'ব্যক্তিগত রিপোর্ট বই', NULL, 1, NULL, 'bzktigt-riport-bi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(67, '   ব্যক্তিগত রিপোর্ট বই (কিশোর কণ্ঠ)', 'bzktigt-riport-bi-kisor-knth', 'bzktigt-riport-bi-kisor-knth', 0, 0, 18, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#e74c3c\"><span style=\"font-size:48px\"><span style=\"background-color:#99ffff\">আইসি</span></span></span><span style=\"color:#3498db\"><span style=\"font-size:48px\"><span style=\"background-color:#99ffff\">এস </span></span></span><span style=\"color:#2980b9\"><span style=\"font-size:48px\"><span style=\"background-color:#99ffff\">পাব</span></span></span><span style=\"color:#e67e22\"><span style=\"font-size:48px\"><span style=\"background-color:#99ffff\">লিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/60ZGvQ7gD0EZSog4YPdGja2PEruu6VQHuaWa5zUw.jpeg', 'bzktigt-riport-bi-kisor-knth', '   ব্যক্তিগত রিপোর্ট বই (কিশোর কণ্ঠ), bzktigt-riport-bi-kisor-knth', '   ব্যক্তিগত রিপোর্ট বই (কিশোর কণ্ঠ)', '   ব্যক্তিগত রিপোর্ট বই (কিশোর কণ্ঠ)', NULL, 1, NULL, 'bzktigt-riport-bi-kisor-knth', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(68, 'সংক্ষিপ্ত পরিচিতি (১০০ পিচ)', 'sngkshipt-priciti-100-pic', 'sngkshipt-priciti-100-pic', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">বিআইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/NL1KXRKv62wA5MUH3srXA9CSuu1HwvOV2TvTOMR4.jpeg', 'sngkshipt-priciti-100-pic', 'সংক্ষিপ্ত পরিচিতি (১০০ পিচ), sngkshipt-priciti-100-pic', 'সংক্ষিপ্ত পরিচিতি (১০০ পিচ)', 'সংক্ষিপ্ত পরিচিতি (১০০ পিচ)', NULL, 1, NULL, 'sngkshipt-priciti-100-pic', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(69, 'সমর্থক ফর্ম (ভিন্ন ধর্মাবলম্বীদের জন্য) (১০০ পিচ)', 'smrthk-frm-vinn-dhrmablmbeeder-jnz-100-pic', 'smrthk-frm-vinn-dhrmablmbeeder-jnz-100-pic', 0, 0, 60, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/5dno30cOIVoRGEq3483kickMAjIaOCNw8CI3oZ9X.jpeg', 'smrthk-frm-vinn-dhrmablmbeeder-jnz-100-pic', 'সমর্থক ফর্ম (ভিন্ন ধর্মাবলম্বীদের জন্য) (১০০ পিচ), smrthk-frm-vinn-dhrmablmbeeder-jnz-100-pic', 'সমর্থক ফর্ম (ভিন্ন ধর্মাবলম্বীদের জন্য) (১০০ পিচ)', 'সমর্থক ফর্ম (ভিন্ন ধর্মাবলম্বীদের জন্য) (১০০ পিচ)', NULL, 1, NULL, 'smrthk-frm-vinn-dhrmablmbeeder-jnz-100-pic', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(70, 'শহিদ আ. মালেক বই', 'shid-a-malek-bi', 'shid-a-malek-bi', 0, 0, 50, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/EB7Zt8GEJelAztGX5tOxUGlrEgJkBxlRyOQFqy9W.jpeg', 'shid-a-malek-bi', 'শহিদ আ. মালেক বই, shid-a-malek-bi', 'শহিদ আ. মালেক বই', 'শহিদ আ. মালেক বই', NULL, 1, NULL, 'shid-a-malek-bi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(71, 'পোস্টার (তাওফিক দাও)', 'postar-taoofik-daoo', 'postar-taoofik-daoo', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/pZsmPgX4otOhzsyjN5xMt4K9uiBND9ylMRpArllz.jpeg', 'postar-taoofik-daoo', 'পোস্টার (তাওফিক দাও), postar-taoofik-daoo', 'পোস্টার (তাওফিক দাও)', 'পোস্টার (তাওফিক দাও)', NULL, 1, NULL, 'postar-taoofik-daoo', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(72, 'স্কুল রুটিন (১০০ কপি)', 'skul-rutin-100-kpi', 'skul-rutin-100-kpi', 0, 0, 150, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#9b59b6\"><span style=\"font-size:48px\"><span style=\"background-color:#ffff33\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/WtufDdIdWwzPShqzXiqZzqUR4EWRyD1pe6TMk3yw.jpeg', 'skul-rutin-100-kpi', 'স্কুল রুটিন (১০০ কপি), skul-rutin-100-kpi', 'স্কুল রুটিন (১০০ কপি)', 'স্কুল রুটিন (১০০ কপি)', NULL, 1, NULL, 'skul-rutin-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(73, 'স্কুল রুটিন', 'skul-rutin', 'skul-rutin', 0, 0, 2, 1000, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/KpEz4axGSWt2gsqUCcIPlhIKufsvolnTVvkcN73i.jpeg', 'skul-rutin', 'স্কুল রুটিন, skul-rutin', 'স্কুল রুটিন', 'স্কুল রুটিন', NULL, 1, NULL, 'skul-rutin', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05');
INSERT INTO `products` (`id`, `product_name`, `product_name_english`, `product_url`, `is_top_product`, `cost`, `sales_price`, `stock_alert_qty`, `pages`, `binding`, `isbn`, `sku`, `height`, `width`, `weight`, `depth`, `description`, `specification`, `thumb_image`, `thumb_alt`, `search_keywords`, `page_title`, `meta_description`, `custom_fields`, `is_public`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(74, 'চাবির রিং (উড)', 'cabir-ring-ud', 'cabir-ring-ud', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/P3o2O46xXMCzt58WPYZwuowOu83qw7dyTyZj0REU.jpeg', 'cabir-ring-ud', 'চাবির রিং (উড), cabir-ring-ud', 'চাবির রিং (উড)', 'চাবির রিং (উড)', NULL, 1, NULL, 'cabir-ring-ud', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(75, 'চাবির রিং (এ)', 'cabir-ring-e', 'cabir-ring-e', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/QMwIeminO2Y3QElvJr40pbNgNBlUQQyoc3cbzEcz.jpeg', 'cabir-ring-e', 'চাবির রিং (এ), cabir-ring-e', 'চাবির রিং (এ)', 'চাবির রিং (এ)', NULL, 1, NULL, 'cabir-ring-e', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(76, 'Word Card', 'word-card', 'word-card', 0, 0, 15, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/ZLfQhIKniNqwmB4ucF8CjuELJ5wsXAmp3hPzkcDf.jpeg', 'word-card', 'Word Card, word-card', 'Word Card', 'Word Card', NULL, 1, NULL, 'word-card', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(77, 'ক্লাস রুটিন (এ)', 'klas-rutin-e', 'klas-rutin-e', 0, 0, 3, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\"><span style=\"background-color:#ff99ff\">আইসিএস পাবলিকেশন</span></span></p>', NULL, 'uploads/product/product_main_image/q62jtOSvbLpCKRvuOwcdOBjhhlaBJWIclrFyPTDS.jpeg', 'klas-rutin-e', 'ক্লাস রুটিন (এ), klas-rutin-e', 'ক্লাস রুটিন (এ)', 'ক্লাস রুটিন (এ)', NULL, 1, NULL, 'klas-rutin-e', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(78, 'ক্লাস রুটিন (বি) (১০০ কপি)', 'klas-rutin-bi-100-kpi', 'klas-rutin-bi-100-kpi', 0, 0, 2, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#ffffff\"><span style=\"font-size:48px\"><span style=\"background-color:#9b59b6\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/tnw9vxujLGqnwOblwvPUeGsjjPZBVjETpVqHy50H.jpeg', 'klas-rutin-bi-100-kpi', 'ক্লাস রুটিন (বি) (১০০ কপি), klas-rutin-bi-100-kpi', 'ক্লাস রুটিন (বি) (১০০ কপি)', 'ক্লাস রুটিন (বি) (১০০ কপি)', NULL, 1, NULL, 'klas-rutin-bi-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(79, 'প্রকাশনা পরিচিতি (৫০ কপি)', 'prkasna-priciti-50-kpi', 'prkasna-priciti-50-kpi', 0, 0, 3, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/Y2NL9YXJdIhkleVBpAxBdbdreEZWqhgZIH57lDW3.jpeg', 'prkasna-priciti-50-kpi', 'প্রকাশনা পরিচিতি (৫০ কপি), prkasna-priciti-50-kpi', 'প্রকাশনা পরিচিতি (৫০ কপি)', 'প্রকাশনা পরিচিতি (৫০ কপি)', NULL, 1, NULL, 'prkasna-priciti-50-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(80, 'ব্যক্তিগত প্রতিবেদন (কিশোর কণ্ঠ) (১০০ কপি)', 'bzktigt-prtibedn-kisor-knth-100-kpi', 'bzktigt-prtibedn-kisor-knth-100-kpi', 0, 0, 150, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:28px\"><span style=\"color:#2ecc71\"><strong>বি: দ্র: এই ফর্মটি কমপক্ষে 100 কপি (1 বাইন্ডিল) অর্ডার করতে হবে, অন্যথায় অর্ডার বাতিল&nbsp; বলে গণ্য হবে।</strong></span></span></p>', NULL, 'uploads/product/product_main_image/Gy5xezyTzbBVPfUS6i92RUmRUYb2OclTfxrG068c.jpeg', 'bzktigt-prtibedn-kisor-knth-100-kpi', 'ব্যক্তিগত প্রতিবেদন (কিশোর কণ্ঠ) (১০০ কপি), bzktigt-prtibedn-kisor-knth-100-kpi', 'ব্যক্তিগত প্রতিবেদন (কিশোর কণ্ঠ) (১০০ কপি)', 'ব্যক্তিগত প্রতিবেদন (কিশোর কণ্ঠ) (১০০ কপি)', NULL, 1, NULL, 'bzktigt-prtibedn-kisor-knth-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(81, 'রসিদ বই (শাখা) (প্রতিটি বান্ডিলে ৫০টি করে)', 'rsid-bi-sakha-prtiti-bandile-50ti-kre', 'rsid-bi-sakha-prtiti-bandile-50ti-kre', 0, 0, 1100, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/fietsVSCwz7AcUixN0VYYrc65CKErmz1SiHRVOJj.jpeg', 'rsid-bi-sakha-prtiti-bandile-50ti-kre', 'রসিদ বই (শাখা) (প্রতিটি বান্ডিলে ৫০টি করে), rsid-bi-sakha-prtiti-bandile-50ti-kre', 'রসিদ বই (শাখা) (প্রতিটি বান্ডিলে ৫০টি করে)', 'রসিদ বই (শাখা) (প্রতিটি বান্ডিলে ৫০টি করে)', NULL, 1, NULL, 'rsid-bi-sakha-prtiti-bandile-50ti-kre', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(82, 'কিশোর মনে ভাবনা জাগে', 'kisor-mne-vabna-jage', 'kisor-mne-vabna-jage', 0, 0, 42, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:22px\">কিশোর মনে ভাবনা জাগে</span></p>\r\n\r\n<p><span style=\"font-size:22px\">প্রকাশনায় : আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/FT8ucMz8DsOKXpM8n1H0wUAXWCBe5cSn4NX5qX5l.jpeg', 'kisor-mne-vabna-jage', 'কিশোর মনে ভাবনা জাগে, kisor-mne-vabna-jage', 'কিশোর মনে ভাবনা জাগে', 'কিশোর মনে ভাবনা জাগে', NULL, 1, NULL, 'kisor-mne-vabna-jage', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(83, 'উপশাখা রেজিস্টার খাতা', 'upshakha-rejistar-khata', 'upshakha-rejistar-khata', 0, 0, 160, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\"><span style=\"font-size:72px\"><span style=\"background-color:#2980b9\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/hUNYhhr2VWy3JPTpqNI7Fmzp5SmK22dlnAzS8SnP.jpeg', 'upshakha-rejistar-khata', 'উপশাখা রেজিস্টার খাতা, upshakha-rejistar-khata', 'উপশাখা রেজিস্টার খাতা', 'উপশাখা রেজিস্টার খাতা', NULL, 1, NULL, 'upshakha-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(84, 'সম্পদ রেজিস্টার খাতা', 'smpd-rejistar-khata', 'smpd-rejistar-khata', 0, 0, 120, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:72px\">সম্পদ রেজিস্টার খাতা</span></p>', NULL, 'uploads/product/product_main_image/YdywBBTt51cbQkx4bdIVrIfFfKthGnHYVCqU1mUG.jpeg', 'smpd-rejistar-khata', 'সম্পদ রেজিস্টার খাতা, smpd-rejistar-khata', 'সম্পদ রেজিস্টার খাতা', 'সম্পদ রেজিস্টার খাতা', NULL, 1, NULL, 'smpd-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(85, 'ছাত্রকল্যাণ রেজিস্টার খাতা', 'chatrklzan-rejistar-khata', 'chatrklzan-rejistar-khata', 0, 0, 80, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">ছাত্রকল্যাণ রেজিস্টার খাতা</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:36px\">ইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/pSdhYBy3SyXMcKkpplUstA3h1C4TUENFP2HCfM2m.jpeg', 'chatrklzan-rejistar-khata', 'ছাত্রকল্যাণ রেজিস্টার খাতা, chatrklzan-rejistar-khata', 'ছাত্রকল্যাণ রেজিস্টার খাতা', 'ছাত্রকল্যাণ রেজিস্টার খাতা', NULL, 1, NULL, 'chatrklzan-rejistar-khata', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(86, 'নোটবুক-এ  (বড়ো)', 'notbuk-e-bro', 'notbuk-e-bro', 0, 0, 60, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:36px\"><span style=\"background-color:#c0392b\">নোটবুক-এ &nbsp;(বড়ো)</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:36px\"><span style=\"background-color:#c0392b\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/QIpcipCAgN9cieIYRShfbGXooIJALkqJpVCBoHCF.jpeg', 'notbuk-e-bro', 'নোটবুক-এ  (বড়ো), notbuk-e-bro', 'নোটবুক-এ  (বড়ো)', 'নোটবুক-এ  (বড়ো)', NULL, 1, NULL, 'notbuk-e-bro', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(87, 'নোটবুক-বি  (মাঝারি)', 'notbuk-bi-majhari', 'notbuk-bi-majhari', 0, 0, 40, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:36px\"><span style=\"background-color:#e74c3c\">নোটবুক-বি &nbsp;(মাঝারি)</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:36px\"><span style=\"background-color:#e74c3c\">আইসিএস পাবলিকেশন</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', NULL, 'uploads/product/product_main_image/bjd1sw7jOWDEcplSBkZhUBRGsdZtzFJzyQ9t3pDs.jpeg', 'notbuk-bi-majhari', 'নোটবুক-বি  (মাঝারি), notbuk-bi-majhari', 'নোটবুক-বি  (মাঝারি)', 'নোটবুক-বি  (মাঝারি)', NULL, 1, NULL, 'notbuk-bi-majhari', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(88, 'নোটবুক-সি  (ছোটো)', 'notbuk-si-choto', 'notbuk-si-choto', 0, 0, 15, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:48px\"><span style=\"background-color:#d35400\">নোটবুক-সি&nbsp; (ছোটো)</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:48px\"><span style=\"background-color:#d35400\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/ZOrkdqrxF23NWqSs4oTU9LvfEmEplcjogeS7QzwP.jpeg', 'notbuk-si-choto', 'নোটবুক-সি  (ছোটো), notbuk-si-choto', 'নোটবুক-সি  (ছোটো)', 'নোটবুক-সি  (ছোটো)', NULL, 1, NULL, 'notbuk-si-choto', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(89, 'সদস্য প্রার্থী ডায়েরি', 'sdsz-prarthee-dayeri', 'sdsz-prarthee-dayeri', 0, 0, 80, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">সদস্য ডায়েরি</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/1rWXn80bdpA1ZYWANEBFEYFHAnrAeleMInOX912G.jpeg', 'sdsz-prarthee-dayeri', 'সদস্য প্রার্থী ডায়েরি, sdsz-prarthee-dayeri', 'সদস্য প্রার্থী ডায়েরি', 'সদস্য প্রার্থী ডায়েরি', NULL, 1, NULL, 'sdsz-prarthee-dayeri', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(90, 'শাখার মাসিক রিপোর্ট (১০০ কপি )', 'sakhar-masik-riport-100-kpi', 'sakhar-masik-riport-100-kpi', 0, 0, 175, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/NCZRi4Iyu0bLCCJcoa1GwifPgTdUjXKslsiZtrVD.jpeg', 'sakhar-masik-riport-100-kpi', 'শাখার মাসিক রিপোর্ট (১০০ কপি ), sakhar-masik-riport-100-kpi', 'শাখার মাসিক রিপোর্ট (১০০ কপি )', 'শাখার মাসিক রিপোর্ট (১০০ কপি )', NULL, 1, NULL, 'sakhar-masik-riport-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(91, 'উপশাখা-ইউনিটের মাসিক রিপোর্ট (১০০ কপি)', 'upshakha-iuniter-masik-riport-100-kpi', 'upshakha-iuniter-masik-riport-100-kpi', 0, 0, 150, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/6HrIZWtb5OVoWUUUYSar9spS4iq4dPP6yzL4mZvq.jpeg', 'upshakha-iuniter-masik-riport-100-kpi', 'উপশাখা-ইউনিটের মাসিক রিপোর্ট (১০০ কপি), upshakha-iuniter-masik-riport-100-kpi', 'উপশাখা-ইউনিটের মাসিক রিপোর্ট (১০০ কপি)', 'উপশাখা-ইউনিটের মাসিক রিপোর্ট (১০০ কপি)', NULL, 1, NULL, 'upshakha-iuniter-masik-riport-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(92, 'উপশাখার মাসিক পরিকল্পনা (১০০ কপি)', 'upshakhar-masik-priklpna-100-kpi', 'upshakhar-masik-priklpna-100-kpi', 0, 0, 150, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/qi8KBwWrcH4SdTdpbzM4pZuwlauu8OVJLd422C69.jpeg', 'upshakhar-masik-priklpna-100-kpi', 'উপশাখার মাসিক পরিকল্পনা (১০০ কপি), upshakhar-masik-priklpna-100-kpi', 'উপশাখার মাসিক পরিকল্পনা (১০০ কপি)', 'উপশাখার মাসিক পরিকল্পনা (১০০ কপি)', NULL, 1, NULL, 'upshakhar-masik-priklpna-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(93, 'মাসিক পরিকল্পনা (শাখা-থানা-ওয়ার্ড-ইউনিয়ন)', 'masik-priklpna-sakha-thana-ward-iuniyn', 'masik-priklpna-sakha-thana-ward-iuniyn', 0, 0, 150, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:48px\"><span style=\"background-color:#bdc3c7\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/AmEHVQxCfgMTRuWK7beNd4XdaoAtgY8g2KQbnjoE.jpeg', 'masik-priklpna-sakha-thana-ward-iuniyn', 'মাসিক পরিকল্পনা (শাখা-থানা-ওয়ার্ড-ইউনিয়ন), masik-priklpna-sakha-thana-ward-iuniyn', 'মাসিক পরিকল্পনা (শাখা-থানা-ওয়ার্ড-ইউনিয়ন)', 'মাসিক পরিকল্পনা (শাখা-থানা-ওয়ার্ড-ইউনিয়ন)', NULL, 1, NULL, 'masik-priklpna-sakha-thana-ward-iuniyn', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(94, 'অর্থনৈতিক প্রতিবেদন (১০০ কপি)', 'orthnoitik-prtibedn-100-kpi', 'orthnoitik-prtibedn-100-kpi', 0, 0, 150, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:28px\"><strong>বি: দ্র: এই ফর্মটি কমপক্ষে 100 কপি (1 বাইন্ডিল) অর্ডার করতে হবে, অন্যথায় অর্ডার বাতিল&nbsp; বলে গণ্য হবে।</strong></span></span></p>', NULL, 'uploads/product/product_main_image/dFVryNz7oAKkxpo2uVGeBpoyIRjH5BDYBF0UW9io.jpeg', 'orthnoitik-prtibedn-100-kpi', 'অর্থনৈতিক প্রতিবেদন (১০০ কপি), orthnoitik-prtibedn-100-kpi', 'অর্থনৈতিক প্রতিবেদন (১০০ কপি)', 'অর্থনৈতিক প্রতিবেদন (১০০ কপি)', NULL, 1, NULL, 'orthnoitik-prtibedn-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(95, 'GROWING CHILDREN MINDS', 'growing-children-minds', 'growing-children-minds', 0, 0, 35, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:28px\"><span style=\"background-color:#9b59b6\">GROWING CHILDREN MINDS</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:28px\"><span style=\"background-color:#9b59b6\">A.Z.M. OBAIDULLAH</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:28px\"><span style=\"background-color:#9b59b6\">ICS PUBLICATION</span></span></p>', NULL, 'uploads/product/product_main_image/l6go5lbVjwPB49xLnHXSdyArRP3qmkW2p5RzTZLA.jpeg', 'growing-children-minds', 'GROWING CHILDREN MINDS, growing-children-minds', 'GROWING CHILDREN MINDS', 'GROWING CHILDREN MINDS', NULL, 1, NULL, 'growing-children-minds', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(96, 'এসো আলোর পথে (ইংরেজি)', 'eso-alor-pthe-ingreji', 'eso-alor-pthe-ingreji', 0, 0, 4.2, 100, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>Welcome to the Way of Light</p>\r\n\r\n<p>ICS PUBLICATION&nbsp;</p>', NULL, 'uploads/product/product_main_image/ynXekmm1JCtBzfCk2zv9L0vUNsig70GzmdHnDpAF.jpeg', 'eso-alor-pthe-ingreji', 'এসো আলোর পথে (ইংরেজি), eso-alor-pthe-ingreji', 'এসো আলোর পথে (ইংরেজি)', 'এসো আলোর পথে (ইংরেজি)', NULL, 1, NULL, 'eso-alor-pthe-ingreji', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(97, 'টি-সার্ট অপচয় করিনা-এ (বড়ো সাইজ)', 'ti-sart-opcy-krina-e-bro-saij', 'ti-sart-opcy-krina-e-bro-saij', 0, 0, 200, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>টি-সার্ট অপচয় করিনা-এ (বড়ো সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/1pwZHnauwseV8TFCC1wyGH8sJbGEUl3ilfjkzjja.jpeg', 'ti-sart-opcy-krina-e-bro-saij', 'টি-সার্ট অপচয় করিনা-এ (বড়ো সাইজ), ti-sart-opcy-krina-e-bro-saij', 'টি-সার্ট অপচয় করিনা-এ (বড়ো সাইজ)', 'টি-সার্ট অপচয় করিনা-এ (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-e-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(98, 'ব্যাক্তিগত রিপোর্ট ফর্ম', 'bzaktigt-riport-frm', 'bzaktigt-riport-frm', 0, 0, 150, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#e67e22\"><span style=\"font-size:28px\"><strong>বি: দ্র: এই ফর্মটি কমপক্ষে 100 কপি (1 বাইন্ডিল) অর্ডার করতে হবে, অন্যথায় অর্ডার বাতিল&nbsp; বলে গণ্য হবে।</strong></span></span></p>', NULL, 'uploads/product/product_main_image/7Ft37xt0uRd8LrBdus7WYYoviyUGgfyDarQ3mv5m.jpeg', 'bzaktigt-riport-frm', 'ব্যাক্তিগত রিপোর্ট ফর্ম, bzaktigt-riport-frm', 'ব্যাক্তিগত রিপোর্ট ফর্ম', 'ব্যাক্তিগত রিপোর্ট ফর্ম', NULL, 1, NULL, 'bzaktigt-riport-frm', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(99, 'ব্যক্তিগত প্রতিবেদন  (১০০ কপি)', 'bzktigt-prtibedn-100-kpi', 'bzktigt-prtibedn-100-kpi', 0, 0, 150, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:28px\"><strong>বি: দ্র: এই ফর্মটি কমপক্ষে 100 কপি (1 বাইন্ডিল) অর্ডার করতে হবে, অন্যথায় অর্ডার বাতিল&nbsp; বলে গণ্য হবে।</strong></span></span></p>', NULL, 'uploads/product/product_main_image/oFerBJLjXE2Kd9EBVH0HG6XqSzqayBgoJER9XjgI.jpeg', 'bzktigt-prtibedn-100-kpi', 'ব্যক্তিগত প্রতিবেদন  (১০০ কপি), bzktigt-prtibedn-100-kpi', 'ব্যক্তিগত প্রতিবেদন  (১০০ কপি)', 'ব্যক্তিগত প্রতিবেদন  (১০০ কপি)', NULL, 1, NULL, 'bzktigt-prtibedn-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(100, 'সমর্থক ফর্ম  (১০০ পিচ)', 'smrthk-frm-100-pic', 'smrthk-frm-100-pic', 0, 0, 80, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/dkqcdRRGxDu2sZv8yqfijGpM8FUiMfbJgWeQXdWh.jpeg', 'smrthk-frm-100-pic', 'সমর্থক ফর্ম  (১০০ পিচ), smrthk-frm-100-pic', 'সমর্থক ফর্ম  (১০০ পিচ)', 'সমর্থক ফর্ম  (১০০ পিচ)', NULL, 1, NULL, 'smrthk-frm-100-pic', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(101, 'টি-সার্ট অপচয় করিনা-এ (মাঝারি সাইজ)', 'ti-sart-opcy-krina-e-majhari-saij', 'ti-sart-opcy-krina-e-majhari-saij', 0, 0, 200, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>টি-সার্ট অপচয় করিনা-এ (মাঝারি সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/UDLpoVMpErKfn0rTf2necKlcwIGlaksyz5ie7oTe.jpeg', 'ti-sart-opcy-krina-e-majhari-saij', 'টি-সার্ট অপচয় করিনা-এ (মাঝারি সাইজ), ti-sart-opcy-krina-e-majhari-saij', 'টি-সার্ট অপচয় করিনা-এ (মাঝারি সাইজ)', 'টি-সার্ট অপচয় করিনা-এ (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-e-majhari-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(102, 'টি-সার্ট অপচয় করিনা-এ (ছোটো সাইজ)', 'ti-sart-opcy-krina-e-choto-saij', 'ti-sart-opcy-krina-e-choto-saij', 0, 0, 200, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;টি-সার্ট অপচয় করিনা-এ (ছোটো সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/MyJ5VSD3Su8FCtX9AwqU0StOajbdYLE6vHKl60Q9.jpeg', 'ti-sart-opcy-krina-e-choto-saij', 'টি-সার্ট অপচয় করিনা-এ (ছোটো সাইজ), ti-sart-opcy-krina-e-choto-saij', 'টি-সার্ট অপচয় করিনা-এ (ছোটো সাইজ)', 'টি-সার্ট অপচয় করিনা-এ (ছোটো সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-e-choto-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(103, 'টি-সার্ট অপচয় করিনা-বি (বড়ো সাইজ)', 'ti-sart-opcy-krina-bi-bro-saij', 'ti-sart-opcy-krina-bi-bro-saij', 0, 0, 200, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;টি-সার্ট অপচয় করিনা-বি (বড়ো সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/CN8ico4jFuX0izQumHP7aHwA6Q20MzYazsIuVDfq.jpeg', 'ti-sart-opcy-krina-bi-bro-saij', 'টি-সার্ট অপচয় করিনা-বি (বড়ো সাইজ), ti-sart-opcy-krina-bi-bro-saij', 'টি-সার্ট অপচয় করিনা-বি (বড়ো সাইজ)', 'টি-সার্ট অপচয় করিনা-বি (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-bi-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(104, 'টি-সার্ট অপচয় করিনা-বি (মাঝারি সাইজ)', 'ti-sart-opcy-krina-bi-majhari-saij', 'ti-sart-opcy-krina-bi-majhari-saij', 0, 0, 200, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>টি-সার্ট অপচয় করিনা-বি&nbsp;(মাঝারি সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/URCjx8t2nbKktU5YDSiE3l7xSyKziPWTIrQxzqFQ.jpeg', 'ti-sart-opcy-krina-bi-majhari-saij', 'টি-সার্ট অপচয় করিনা-বি (মাঝারি সাইজ), ti-sart-opcy-krina-bi-majhari-saij', 'টি-সার্ট অপচয় করিনা-বি (মাঝারি সাইজ)', 'টি-সার্ট অপচয় করিনা-বি (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-bi-majhari-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(105, 'টি-সার্ট অপচয় করিনা-ইংরেজি (বড়ো সাইজ)', 'ti-sart-opcy-krina-ingreji-bro-saij', 'ti-sart-opcy-krina-ingreji-bro-saij', 0, 0, 200, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>টি-সার্ট অপচয় করিনা-ইংরেজি (বড়ো সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/CQVUOQeGOXfwQUYL4IiWj8lifLCiEH8hEYcjrwM1.jpeg', 'ti-sart-opcy-krina-ingreji-bro-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (বড়ো সাইজ), ti-sart-opcy-krina-ingreji-bro-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (বড়ো সাইজ)', 'টি-সার্ট অপচয় করিনা-ইংরেজি (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-ingreji-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(106, 'টি-সার্ট অপচয় করিনা-ইংরেজি (ছোটো সাইজ)', 'ti-sart-opcy-krina-ingreji-choto-saij', 'ti-sart-opcy-krina-ingreji-choto-saij', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;টি-সার্ট অপচয় করিনা-বি (ছোটো সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/frUxBk6KyU8l71D2UHbZjN3FTQPs8QZHZcLmmkQp.jpeg', 'ti-sart-opcy-krina-ingreji-choto-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (ছোটো সাইজ), ti-sart-opcy-krina-ingreji-choto-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (ছোটো সাইজ)', 'টি-সার্ট অপচয় করিনা-ইংরেজি (ছোটো সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-ingreji-choto-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(107, 'মুক্তির পয়গাম (ইংরেজি)', 'muktir-pygam-ingreji', 'muktir-pygam-ingreji', 0, 0, 7, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>A MASSAGE for &nbsp;THE fREEDOM OF HUMANITY</p>\r\n\r\n<p>ICS PUBLICATION&nbsp;</p>', NULL, 'uploads/product/product_main_image/ARFmzSqM6FACkmmdiuN3S8ONXEksJLV4mgg1VuoP.jpeg', 'muktir-pygam-ingreji', 'মুক্তির পয়গাম (ইংরেজি), muktir-pygam-ingreji', 'মুক্তির পয়গাম (ইংরেজি)', 'মুক্তির পয়গাম (ইংরেজি)', NULL, 1, NULL, 'muktir-pygam-ingreji', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(108, 'আমরা কী চাই কেন চাই কীভাবে চাই? (ইংরেজি)', 'amra-kee-cai-ken-cai-keevabe-cai-ingreji', 'amra-kee-cai-ken-cai-keevabe-cai-ingreji', 0, 0, 8.4, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>\r\n\r\n<p><br />\r\nইসলাম মানব জীবনের বিভিন্ন বিষয়ে দিকনির্দেশনা। ব্যক্তি, পরিবার, সমাজ রাষ্ট্র, সর্বক্ষেত্রে এর রয়েছে সুনির্দিষ্ট নির্দেশনা। একটি ইসলামী সংগঠন পরিচালনার ক্ষেত্রে কখন কোনটা কীভাবে করতে হবে এই সংক্রান্ত বিষয়ে বইটিতে আলোকপাত করা হয়েছে।</p>', NULL, 'uploads/product/product_main_image/Yp5PAwb3V0CJ0nAy3QHjLvtqxZgC2E0yvOn6jtZ5.jpeg', 'amra-kee-cai-ken-cai-keevabe-cai-ingreji', 'আমরা কী চাই কেন চাই কীভাবে চাই? (ইংরেজি), amra-kee-cai-ken-cai-keevabe-cai-ingreji', 'আমরা কী চাই কেন চাই কীভাবে চাই? (ইংরেজি)', 'আমরা কী চাই কেন চাই কীভাবে চাই? (ইংরেজি)', NULL, 1, NULL, 'amra-kee-cai-ken-cai-keevabe-cai-ingreji', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(109, 'অন্যান্য ধর্মাবলম্বীদের প্রতি আমাদের আহবান', 'onzanz-dhrmablmbeeder-prti-amader-ahban', 'onzanz-dhrmablmbeeder-prti-amader-ahban', 0, 0, 7, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/KL6UuJqgvzVtMWYzPggloupyqHPzaIZUyUuxtZXl.jpeg', 'onzanz-dhrmablmbeeder-prti-amader-ahban', 'অন্যান্য ধর্মাবলম্বীদের প্রতি আমাদের আহবান, onzanz-dhrmablmbeeder-prti-amader-ahban', 'অন্যান্য ধর্মাবলম্বীদের প্রতি আমাদের আহবান', 'অন্যান্য ধর্মাবলম্বীদের প্রতি আমাদের আহবান', NULL, 1, NULL, 'onzanz-dhrmablmbeeder-prti-amader-ahban', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(110, 'অন্যান্য ধর্মাবলম্বীদের প্রতি ইসলামের আহবান', 'onzanz-dhrmablmbeeder-prti-islamer-ahban', 'onzanz-dhrmablmbeeder-prti-islamer-ahban', 0, 0, 21, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/siVtJyy7o7TAMpcVBDaxiPgBNCSjigO9GpYikt82.jpeg', 'onzanz-dhrmablmbeeder-prti-islamer-ahban', 'অন্যান্য ধর্মাবলম্বীদের প্রতি ইসলামের আহবান, onzanz-dhrmablmbeeder-prti-islamer-ahban', 'অন্যান্য ধর্মাবলম্বীদের প্রতি ইসলামের আহবান', 'অন্যান্য ধর্মাবলম্বীদের প্রতি ইসলামের আহবান', NULL, 1, NULL, 'onzanz-dhrmablmbeeder-prti-islamer-ahban', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(111, 'জীবন বদলে যাবে (নরমাল বাাইন্ডিং)', 'jeebn-bdle-zabe-nrmal-baainding', 'jeebn-bdle-zabe-nrmal-baainding', 0, 0, 42, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>জীবন বদলে যাবে- মোহাম্মদ ইয়াসিন আরাফাত</strong></p>\r\n\r\n<p><br />\r\n<strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>\r\n\r\n<p><br />\r\nজীবন চ্যালেঞ্জিং আর এই চ্যালেঞ্জ মোকাবেলায় নিজেকে যোগ্য হিসেবে গড়ে তোলার জন্য পরিকল্পনা ও কর্মকৌশল অপরিহার্য।<br />\r\nবইটিতে তরুণ ও যুবকদেরকে আগামীর ভবিষ্যৎ বিনির্মাণে পরিকল্পনা প্রণয়ন ও তা বাস্তবায়নের কর্মকৌশল বিন্যাস ভাবে আলোকপাত করা হয়েছে।</p>', NULL, 'uploads/product/product_main_image/RfRe0SWwfHfjfjFtfTCrj12D4PHYudHzsheTLAb4.jpeg', 'jeebn-bdle-zabe-nrmal-baainding', 'জীবন বদলে যাবে (নরমাল বাাইন্ডিং), jeebn-bdle-zabe-nrmal-baainding', 'জীবন বদলে যাবে (নরমাল বাাইন্ডিং)', 'জীবন বদলে যাবে (নরমাল বাাইন্ডিং)', NULL, 1, NULL, 'jeebn-bdle-zabe-nrmal-baainding', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(112, 'সংবিধান (আরবি)', 'sngbidhan-arbi', 'sngbidhan-arbi', 0, 0, 15, 50, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ICS PUBLICATION</p>', NULL, 'uploads/product/product_main_image/VaObnOFY21b8X6w0UT0zk2OY38oXL16pjiuhDTb7.jpeg', 'sngbidhan-arbi', 'সংবিধান (আরবি), sngbidhan-arbi', 'সংবিধান (আরবি)', 'সংবিধান (আরবি)', NULL, 1, NULL, 'sngbidhan-arbi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(113, 'কর্মপদ্ধতি (ইংরেজি)', 'krmpddhti-ingreji', 'krmpddhti-ingreji', 0, 0, 15, 30, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>বিআইসিএস</strong></p>\r\n\r\n<p><br />\r\nবইটিতে বাংলাদেশ ইসলামী ছাত্রশিবির প্রতিষ্ঠার লক্ষ্য, কর্মপদ্ধতির প্রয়োজনীয়তা, ইসলামের সাথে অন্যান্য বাতিল মতাদর্শের পার্থক্য, কর্মপদ্ধতির উৎস, কৌশলগত দিক ও ছাত্রশিবিরের কর্মসূচি যথা, দাওয়াত, সংগঠন, প্রশিক্ষণ, ইসলামী শিক্ষা আন্দোলন ও ছাত্রসমস্যা এবং ইসলামী সমাজ বিনির্মাণের বিষয়ে বিভিন্ন দিক ও কাজ সম্পর্কে বিস্তারিত আলোচনা করা হয়েছে।</p>', NULL, 'uploads/product/product_main_image/IUxpGQmUwxFVPL1W1ciVSAMcdBmXFJ2ZmjRKTLVF.jpeg', 'krmpddhti-ingreji', 'কর্মপদ্ধতি (ইংরেজি), krmpddhti-ingreji', 'কর্মপদ্ধতি (ইংরেজি)', 'কর্মপদ্ধতি (ইংরেজি)', NULL, 1, NULL, 'krmpddhti-ingreji', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(114, 'ইসলামী আন্দোলন সাফল্যের শর্তাবলী', 'islamee-andoln-saflzer-srtablee', 'islamee-andoln-saflzer-srtablee', 0, 0, 35, 50, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>ইসলামী আন্দোলন সাফল্যের শর্তাবলী- সাইয়েদ আবুল আ&rsquo;লা মওদূদী</strong></p>\r\n\r\n<p><br />\r\n<strong>এই দুনিয়ায় ইসলামী সমাজ প্রতিষ্ঠায় অবতীর্ণ হওয়া ছাড়া আখেরাতে আল্লাহর সন্তুষ্টি পাওয়ার উত্তম পথ আর নেই। তাইতো এই আন্দোলন তার কর্মীদের কাছে স্বাভাবিকভাবেই আশা করে অধিক কর্মপ্রেরণা, ত্যাগ আর কুরবানি। দাবি করে বিশেষ যোগ্যতা ও বৈশিষ্ট্য। মাওলানা মওদূদী কতিপয় গ্রহণীয় গুণাবলি যেমন ব্যক্তিগত, দলীয় ও পূর্ণতাদানকারী গুণাবলি এবং বর্জনীয় দিক যেমন মৌলিক ও অসৎ গুণাবলি এবং মানবিক দুর্বলতার দিকসমূহ তুলে ধরেছেন এ বইতে।</strong></p>', NULL, 'uploads/product/product_main_image/HD1I4ahrYz9rWt18SVo9qxenock23GiJx5Bf5RmS.jpeg', 'islamee-andoln-saflzer-srtablee', 'ইসলামী আন্দোলন সাফল্যের শর্তাবলী, islamee-andoln-saflzer-srtablee', 'ইসলামী আন্দোলন সাফল্যের শর্তাবলী', 'ইসলামী আন্দোলন সাফল্যের শর্তাবলী', NULL, 1, NULL, 'islamee-andoln-saflzer-srtablee', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(115, 'প্রশিক্ষণ নির্দেশিকা', 'prsikshn-nirdesika', 'prsikshn-nirdesika', 0, 0, 35, 50, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/1iOGx2QuwuZTjvIaLyyUV7nmCP9KqcrgGo6b8DTb.jpeg', 'prsikshn-nirdesika', 'প্রশিক্ষণ নির্দেশিকা, prsikshn-nirdesika', 'প্রশিক্ষণ নির্দেশিকা', 'প্রশিক্ষণ নির্দেশিকা', NULL, 1, NULL, 'prsikshn-nirdesika', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(116, 'কুরআনের আয়নায় বিম্বিত রাসূল (সা.)', 'kuraner-aynay-bimbit-rasuul-sa', 'kuraner-aynay-bimbit-rasuul-sa', 0, 0, 84, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:48px\">ধন্যবাদ বইটি সংগ্রহ করার জন্য।&nbsp;</span></p>', NULL, 'uploads/product/product_main_image/Q1qWwGOwd7Ku3DMtjJ7df8tiz9Tu2GBU65865KyQ.jpeg', 'kuraner-aynay-bimbit-rasuul-sa', 'কুরআনের আয়নায় বিম্বিত রাসূল (সা.), kuraner-aynay-bimbit-rasuul-sa', 'কুরআনের আয়নায় বিম্বিত রাসূল (সা.)', 'কুরআনের আয়নায় বিম্বিত রাসূল (সা.)', NULL, 1, NULL, 'kuraner-aynay-bimbit-rasuul-sa', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(117, 'মানব দেহের অলৌকিক রহস্য', 'manb-deher-oloukik-rhsz', 'manb-deher-oloukik-rhsz', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/8s7k8UMarGxrO4ulOvUv2jYSjUezav0V0alGUtRn.jpeg', 'manb-deher-oloukik-rhsz', 'মানব দেহের অলৌকিক রহস্য, manb-deher-oloukik-rhsz', 'মানব দেহের অলৌকিক রহস্য', 'মানব দেহের অলৌকিক রহস্য', NULL, 1, NULL, 'manb-deher-oloukik-rhsz', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(118, 'ইসলামী অর্থনীতি নির্বাচিত প্রবন্ধ', 'islamee-orthneeti-nirwacit-prbndh', 'islamee-orthneeti-nirwacit-prbndh', 0, 0, 140, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ধন্যবাদ বইটি সংগ্রহ করার জন্য।&nbsp;</p>', NULL, 'uploads/product/product_main_image/mEnAkdwMpVYLxAityF1KVjzEvHIIbQV5uFsojPYT.jpeg', 'islamee-orthneeti-nirwacit-prbndh', 'ইসলামী অর্থনীতি নির্বাচিত প্রবন্ধ, islamee-orthneeti-nirwacit-prbndh', 'ইসলামী অর্থনীতি নির্বাচিত প্রবন্ধ', 'ইসলামী অর্থনীতি নির্বাচিত প্রবন্ধ', NULL, 1, NULL, 'islamee-orthneeti-nirwacit-prbndh', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(119, 'স্রষ্টার সৃষ্টি অপার বিস্ময়', 'srshtar-srrishti-opar-bismy', 'srshtar-srrishti-opar-bismy', 0, 0, 105, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ধন্যবাদ বইটি সংগ্রহ করার জন্য।&nbsp;</p>', NULL, 'uploads/product/product_main_image/3vrxzYmax44eNp8cz7KKZcGkko7veicDe9v15h2y.jpeg', 'srshtar-srrishti-opar-bismy', 'স্রষ্টার সৃষ্টি অপার বিস্ময়, srshtar-srrishti-opar-bismy', 'স্রষ্টার সৃষ্টি অপার বিস্ময়', 'স্রষ্টার সৃষ্টি অপার বিস্ময়', NULL, 1, NULL, 'srshtar-srrishti-opar-bismy', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(120, 'নির্বাচিত প্রবন্ধ সংকলন-২০১২', 'nirwacit-prbndh-sngkln-2012', 'nirwacit-prbndh-sngkln-2012', 0, 0, 91, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ধন্যবাদ বইটি সংগ্রহ করার জন্য</p>', NULL, 'uploads/product/product_main_image/QbMA5n482xopku4Qt7FreDHPJ2p8Ihrkh8wbk093.jpeg', 'nirwacit-prbndh-sngkln-2012', 'নির্বাচিত প্রবন্ধ সংকলন-২০১২, nirwacit-prbndh-sngkln-2012', 'নির্বাচিত প্রবন্ধ সংকলন-২০১২', 'নির্বাচিত প্রবন্ধ সংকলন-২০১২', NULL, 1, NULL, 'nirwacit-prbndh-sngkln-2012', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(121, 'অবরুদ্ধ বাংলাদেশ', 'obruddh-banglades', 'obruddh-banglades', 0, 0, 140, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ধন্যবাদ বইটি সংগ্রহ করার জন্য।&nbsp;</p>', NULL, 'uploads/product/product_main_image/vAdUsmDRWvSCjLF59hcHC7FO3Jhk7xyLWGd3L6IF.jpeg', 'obruddh-banglades', 'অবরুদ্ধ বাংলাদেশ, obruddh-banglades', 'অবরুদ্ধ বাংলাদেশ', 'অবরুদ্ধ বাংলাদেশ', NULL, 1, NULL, 'obruddh-banglades', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(122, 'শিক্ষা সেমিনার (প্রবন্ধ সংকলন)', 'siksha-seminar-prbndh-sngkln', 'siksha-seminar-prbndh-sngkln', 0, 0, 175, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ধন্যবাদ বইটি সংগ্রহ করার জন্য।&nbsp;</p>', NULL, 'uploads/product/product_main_image/JbZEZXVQfJP6A4dvTilCkfCNbkEA3vcQP1unNcfe.jpeg', 'siksha-seminar-prbndh-sngkln', 'শিক্ষা সেমিনার (প্রবন্ধ সংকলন), siksha-seminar-prbndh-sngkln', 'শিক্ষা সেমিনার (প্রবন্ধ সংকলন)', 'শিক্ষা সেমিনার (প্রবন্ধ সংকলন)', NULL, 1, NULL, 'siksha-seminar-prbndh-sngkln', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(123, 'রিপোর্টিং হ্যান্ডবুক', 'riporting-hzandbuk', 'riporting-hzandbuk', 0, 0, 90, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>ধন্যবাদ বইটি সংগ্রহ করার জন্য।&nbsp;</p>', NULL, 'uploads/product/product_main_image/GyDbYcUVuqxE8I4yPPaJiujwNICs6hLoFTuySwfh.jpeg', 'riporting-hzandbuk', 'রিপোর্টিং হ্যান্ডবুক, riporting-hzandbuk', 'রিপোর্টিং হ্যান্ডবুক', 'রিপোর্টিং হ্যান্ডবুক', NULL, 1, NULL, 'riporting-hzandbuk', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(124, 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (বড়ো সাইজ)', 'ti-sart-allahi-amar-jnz-zthesht-bro-saij', 'ti-sart-allahi-amar-jnz-zthesht-bro-saij', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/XGuds4XYS3qBgefbyehhorfVHwi9NtR0X5G6rpFJ.jpeg', 'ti-sart-allahi-amar-jnz-zthesht-bro-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (বড়ো সাইজ), ti-sart-allahi-amar-jnz-zthesht-bro-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (বড়ো সাইজ)', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-allahi-amar-jnz-zthesht-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(125, 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (মাঝারি সাইজ)', 'ti-sart-allahi-amar-jnz-zthesht-majhari-saij', 'ti-sart-allahi-amar-jnz-zthesht-majhari-saij', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/D6DYAoQnLiTJd9RIJnBbvwci6xiUqHKEyVRKrk5k.jpeg', 'ti-sart-allahi-amar-jnz-zthesht-majhari-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (মাঝারি সাইজ), ti-sart-allahi-amar-jnz-zthesht-majhari-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (মাঝারি সাইজ)', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-allahi-amar-jnz-zthesht-majhari-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(126, 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (ছোটো সাইজ)', 'ti-sart-allahi-amar-jnz-zthesht-choto-saij', 'ti-sart-allahi-amar-jnz-zthesht-choto-saij', 0, 0, 200, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/HopLUs5YO9EhoKgYi0EafDML0j4IpIr4cm4RZ6Pk.jpeg', 'ti-sart-allahi-amar-jnz-zthesht-choto-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (ছোটো সাইজ), ti-sart-allahi-amar-jnz-zthesht-choto-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (ছোটো সাইজ)', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট (ছোটো সাইজ)', NULL, 1, NULL, 'ti-sart-allahi-amar-jnz-zthesht-choto-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(127, 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (বড়ো সাইজ)', 'ti-sart-allahi-amar-jnz-zthesht-ingreji-bro-saij', 'ti-sart-allahi-amar-jnz-zthesht-ingreji-bro-saij', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/qOPz18cO9WnovwYA4vKagGdE4xDkLt5v9xcgrxGY.jpeg', 'ti-sart-allahi-amar-jnz-zthesht-ingreji-bro-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (বড়ো সাইজ), ti-sart-allahi-amar-jnz-zthesht-ingreji-bro-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (বড়ো সাইজ)', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-allahi-amar-jnz-zthesht-ingreji-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(128, 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (মাঝারি সাইজ)', 'ti-sart-allahi-amar-jnz-zthesht-ingreji-majhari-saij', 'ti-sart-allahi-amar-jnz-zthesht-ingreji-majhari-saij', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/dN84cXcPMdQ1BkaPsrFPrjZKAWvbTex2Iked4aQE.jpeg', 'ti-sart-allahi-amar-jnz-zthesht-ingreji-majhari-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (মাঝারি সাইজ), ti-sart-allahi-amar-jnz-zthesht-ingreji-majhari-saij', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (মাঝারি সাইজ)', 'টি-সার্ট আল্লাহই আমার জন্য যথেষ্ট -ইংরেজি (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-allahi-amar-jnz-zthesht-ingreji-majhari-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(129, 'টি-সার্ট সালাম দিন (বড়ো সাইজ)', 'ti-sart-salam-din-bro-saij', 'ti-sart-salam-din-bro-saij', 0, 0, 200, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/aAFpcfwx3b3Lbf1VFtC21ZxDGztxBGJIUE880ogf.jpeg', 'ti-sart-salam-din-bro-saij', 'টি-সার্ট সালাম দিন (বড়ো সাইজ), ti-sart-salam-din-bro-saij', 'টি-সার্ট সালাম দিন (বড়ো সাইজ)', 'টি-সার্ট সালাম দিন (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-salam-din-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(130, 'টি-সার্ট সালাম দিন (মাঝারি সাইজ)', 'ti-sart-salam-din-majhari-saij', 'ti-sart-salam-din-majhari-saij', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/DX3rrpP1ohGYxivUeysbkIGPmxhj1KBkWNLw7z8s.jpeg', 'ti-sart-salam-din-majhari-saij', 'টি-সার্ট সালাম দিন (মাঝারি সাইজ), ti-sart-salam-din-majhari-saij', 'টি-সার্ট সালাম দিন (মাঝারি সাইজ)', 'টি-সার্ট সালাম দিন (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-salam-din-majhari-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(131, 'টি-সার্ট সালাম দিন (ছোটো সাইজ)', 'ti-sart-salam-din-choto-saij', 'ti-sart-salam-din-choto-saij', 0, 0, 200, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/DUWKR5eFaqgTkQNom8L7StxvJ5D9zeKZ5j5wT5pn.jpeg', 'ti-sart-salam-din-choto-saij', 'টি-সার্ট সালাম দিন (ছোটো সাইজ), ti-sart-salam-din-choto-saij', 'টি-সার্ট সালাম দিন (ছোটো সাইজ)', 'টি-সার্ট সালাম দিন (ছোটো সাইজ)', NULL, 1, NULL, 'ti-sart-salam-din-choto-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(132, 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (বড়ো সাইজ)', 'ti-sart-islam-puurnango-jeebnbzabstha-bro-saij', 'ti-sart-islam-puurnango-jeebnbzabstha-bro-saij', 0, 0, 200, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/3el1ZrangVR6b0Qu0eICBXzxrevObOAg9bJ7hVeL.jpeg', 'ti-sart-islam-puurnango-jeebnbzabstha-bro-saij', 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (বড়ো সাইজ), ti-sart-islam-puurnango-jeebnbzabstha-bro-saij', 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (বড়ো সাইজ)', 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-islam-puurnango-jeebnbzabstha-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(133, 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (মাঝারি সাইজ)', 'ti-sart-islam-puurnango-jeebnbzabstha-majhari-saij', 'ti-sart-islam-puurnango-jeebnbzabstha-majhari-saij', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/k2CcWZqNi0uZWoE3euBwZxlE3Bwt9JNsn9ULQOv3.jpeg', 'ti-sart-islam-puurnango-jeebnbzabstha-majhari-saij', 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (মাঝারি সাইজ), ti-sart-islam-puurnango-jeebnbzabstha-majhari-saij', 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (মাঝারি সাইজ)', 'টি-সার্ট  ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-islam-puurnango-jeebnbzabstha-majhari-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(134, 'টি-সার্ট ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (ছোটো সাইজ)', 'ti-sart-islam-puurnango-jeebnbzabstha-choto-saij', 'ti-sart-islam-puurnango-jeebnbzabstha-choto-saij', 0, 0, 200, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/xnSDr2vi63fDNeEMGrWvSiKrP4nHHLVxyUkOShdl.jpeg', 'ti-sart-islam-puurnango-jeebnbzabstha-choto-saij', 'টি-সার্ট ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (ছোটো সাইজ), ti-sart-islam-puurnango-jeebnbzabstha-choto-saij', 'টি-সার্ট ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (ছোটো সাইজ)', 'টি-সার্ট ইসলাম পূর্ণাঙ্গ জীবনব্যাবস্থা (ছোটো সাইজ)', NULL, 1, NULL, 'ti-sart-islam-puurnango-jeebnbzabstha-choto-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(135, 'টি-সার্ট  মানুষ তাই পায় যা সে করে (বড়ো সাইজ)', 'ti-sart-manush-tai-pay-za-se-kre-bro-saij', 'ti-sart-manush-tai-pay-za-se-kre-bro-saij', 0, 0, 200, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/e3bs9iDCOvLo8tQS78hfjngEhAosD8ZZayzLp39H.jpeg', 'ti-sart-manush-tai-pay-za-se-kre-bro-saij', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (বড়ো সাইজ), ti-sart-manush-tai-pay-za-se-kre-bro-saij', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (বড়ো সাইজ)', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (বড়ো সাইজ)', NULL, 1, NULL, 'ti-sart-manush-tai-pay-za-se-kre-bro-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(136, 'টি-সার্ট  মানুষ তাই পায় যা সে করে (মাঝারি সাইজ)', 'ti-sart-manush-tai-pay-za-se-kre-majhari-saij', 'ti-sart-manush-tai-pay-za-se-kre-majhari-saij', 0, 0, 200, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/rApq7BGBzNsKzeVkcQaxUy9c6zR0GRv0WlOJULf0.jpeg', 'ti-sart-manush-tai-pay-za-se-kre-majhari-saij', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (মাঝারি সাইজ), ti-sart-manush-tai-pay-za-se-kre-majhari-saij', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (মাঝারি সাইজ)', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-manush-tai-pay-za-se-kre-majhari-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(137, 'টি-সার্ট  মানুষ তাই পায় যা সে করে (ছোটো সাইজ)', 'ti-sart-manush-tai-pay-za-se-kre-choto-saij', 'ti-sart-manush-tai-pay-za-se-kre-choto-saij', 0, 0, 200, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/GlRDXUDYUAjLeuZnIwZOGjsutaaEeIg0Gzl2MWkJ.jpeg', 'ti-sart-manush-tai-pay-za-se-kre-choto-saij', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (ছোটো সাইজ), ti-sart-manush-tai-pay-za-se-kre-choto-saij', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (ছোটো সাইজ)', 'টি-সার্ট  মানুষ তাই পায় যা সে করে (ছোটো সাইজ)', NULL, 1, NULL, 'ti-sart-manush-tai-pay-za-se-kre-choto-saij', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(138, 'স্টিকার (এ) (১০০ কপি)', 'stikar-e-100-kpi', 'stikar-e-100-kpi', 0, 0, 288, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/57l89UhcZ42DX8uFVMpXV9Fr4Rt1mVKERuYTOU5k.jpeg', 'stikar-e-100-kpi', 'স্টিকার (এ) (১০০ কপি), stikar-e-100-kpi', 'স্টিকার (এ) (১০০ কপি)', 'স্টিকার (এ) (১০০ কপি)', NULL, 1, NULL, 'stikar-e-100-kpi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(139, 'পোস্টার (আব্দুল মালেক)', 'postar-abdul-malek', 'postar-abdul-malek', 0, 0, 10, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/RQHgq1bI1QmeeeKXmyfqU0xA9Hu6hvC50p03HMf9.jpeg', 'postar-abdul-malek', 'পোস্টার (আব্দুল মালেক), postar-abdul-malek', 'পোস্টার (আব্দুল মালেক)', 'পোস্টার (আব্দুল মালেক)', NULL, 1, NULL, 'postar-abdul-malek', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(140, 'পোস্টার (হৃদয়ের ১০ ব্যাধি)', 'postar-hrridyer-10-bzadhi', 'postar-hrridyer-10-bzadhi', 0, 0, 25, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\"><span style=\"background-color:#ffff00\">আইসিএস পাবলিকেশন</span></span></p>', NULL, 'uploads/product/product_main_image/aRJEaomKN684YnxA1lhWHNGObtSnl0EWTbWiPo7K.jpeg', 'postar-hrridyer-10-bzadhi', 'পোস্টার (হৃদয়ের ১০ ব্যাধি), postar-hrridyer-10-bzadhi', 'পোস্টার (হৃদয়ের ১০ ব্যাধি)', 'পোস্টার (হৃদয়ের ১০ ব্যাধি)', NULL, 1, NULL, 'postar-hrridyer-10-bzadhi', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(141, 'পোস্টার (কবি ফররুখ)', 'postar-kbi-frrukh', 'postar-kbi-frrukh', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:36px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/6qrRRSfkb1w5cC8wu4JhUcW97qekePYczPhc5XSq.jpeg', 'postar-kbi-frrukh', 'পোস্টার (কবি ফররুখ), postar-kbi-frrukh', 'পোস্টার (কবি ফররুখ)', 'পোস্টার (কবি ফররুখ)', NULL, 1, NULL, 'postar-kbi-frrukh', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(142, 'পোস্টার (আল কুরআনকে ভালোবেসে)', 'postar-al-kuranke-valobese', 'postar-al-kuranke-valobese', 0, 0, 25, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/2g0huawFmVpBgl613Vr15UxIcLVXjyI6rhjtGqrt.jpeg', 'postar-al-kuranke-valobese', 'পোস্টার (আল কুরআনকে ভালোবেসে), postar-al-kuranke-valobese', 'পোস্টার (আল কুরআনকে ভালোবেসে)', 'পোস্টার (আল কুরআনকে ভালোবেসে)', NULL, 1, NULL, 'postar-al-kuranke-valobese', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(143, 'পোস্টার (মুসলিম আমি সংগ্রামী আমি)', 'postar-muslim-ami-snggramee-ami', 'postar-muslim-ami-snggramee-ami', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/JRCKJS801fVSTeRfUbV0h6HSety78Xj7NQnnz6rk.jpeg', 'postar-muslim-ami-snggramee-ami', 'পোস্টার (মুসলিম আমি সংগ্রামী আমি), postar-muslim-ami-snggramee-ami', 'পোস্টার (মুসলিম আমি সংগ্রামী আমি)', 'পোস্টার (মুসলিম আমি সংগ্রামী আমি)', NULL, 1, NULL, 'postar-muslim-ami-snggramee-ami', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(144, 'পোস্টার (এ দুর্যোগে মুক্তির অন্বেষায়)', 'postar-e-durzeage-muktir-onweshay', 'postar-e-durzeage-muktir-onweshay', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/S5SdcwLa7QC8GSez0XqGGNaCJnr2rezylnICdqmM.jpeg', 'postar-e-durzeage-muktir-onweshay', 'পোস্টার (এ দুর্যোগে মুক্তির অন্বেষায়), postar-e-durzeage-muktir-onweshay', 'পোস্টার (এ দুর্যোগে মুক্তির অন্বেষায়)', 'পোস্টার (এ দুর্যোগে মুক্তির অন্বেষায়)', NULL, 1, NULL, 'postar-e-durzeage-muktir-onweshay', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(145, 'পোস্টার (জীবনের স্বপ্নকে ওরা কিনেছে)', 'postar-jeebner-swpnke-oora-kineche', 'postar-jeebner-swpnke-oora-kineche', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/OnfhFNKmSVhOBc6CNF824BEtZN2u6R917RLTWLlD.jpeg', 'postar-jeebner-swpnke-oora-kineche', 'পোস্টার (জীবনের স্বপ্নকে ওরা কিনেছে), postar-jeebner-swpnke-oora-kineche', 'পোস্টার (জীবনের স্বপ্নকে ওরা কিনেছে)', 'পোস্টার (জীবনের স্বপ্নকে ওরা কিনেছে)', NULL, 1, NULL, 'postar-jeebner-swpnke-oora-kineche', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(146, 'পোস্টার (দুঃসাহসী বীর)', 'postar-dusahsee-beer', 'postar-dusahsee-beer', 0, 0, 25, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/SnGtmOqlxizYNunw3xHKO5VLuHFi5qh3LGP03Qay.jpeg', 'postar-dusahsee-beer', 'পোস্টার (দুঃসাহসী বীর), postar-dusahsee-beer', 'পোস্টার (দুঃসাহসী বীর)', 'পোস্টার (দুঃসাহসী বীর)', NULL, 1, NULL, 'postar-dusahsee-beer', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(147, 'পোস্টার (হাদিসের প্রকারভেদ)', 'postar-hadiser-prkarved', 'postar-hadiser-prkarved', 0, 0, 25, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/1zms6mw8YA7nYvPuQNJklQ0ZlTupdmjIa16lDcDj.jpeg', 'postar-hadiser-prkarved', 'পোস্টার (হাদিসের প্রকারভেদ), postar-hadiser-prkarved', 'পোস্টার (হাদিসের প্রকারভেদ)', 'পোস্টার (হাদিসের প্রকারভেদ)', NULL, 1, NULL, 'postar-hadiser-prkarved', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(148, 'রাস্ট্রীয় সন্ত্রাসের শিকার', 'rastreey-sntraser-sikar', 'rastreey-sntraser-sikar', 0, 0, 550, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>বিআইসি এস</p>', NULL, 'uploads/product/product_main_image/B4GDcho6Kj6ny1ezSsGFxSe0yrk1RCCZacnhKABS.jpeg', 'rastreey-sntraser-sikar', 'রাস্ট্রীয় সন্ত্রাসের শিকার, rastreey-sntraser-sikar', 'রাস্ট্রীয় সন্ত্রাসের শিকার', 'রাস্ট্রীয় সন্ত্রাসের শিকার', NULL, 1, NULL, 'rastreey-sntraser-sikar', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(149, 'থানা-সাথী শাখা-ওয়ার্ড-ইউনিয়নের মাসিক রিপোর্ট', 'thana-sathee-sakha-ward-iuniyner-masik-riport', 'thana-sathee-sakha-ward-iuniyner-masik-riport', 0, 0, 200, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">বিআইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/yCGFeB4j7M327s4QnMDJjgSwAeFMhFicvjKqz0lK.jpeg', 'thana-sathee-sakha-ward-iuniyner-masik-riport', 'থানা-সাথী শাখা-ওয়ার্ড-ইউনিয়নের মাসিক রিপোর্ট, thana-sathee-sakha-ward-iuniyner-masik-riport', 'থানা-সাথী শাখা-ওয়ার্ড-ইউনিয়নের মাসিক রিপোর্ট', 'থানা-সাথী শাখা-ওয়ার্ড-ইউনিয়নের মাসিক রিপোর্ট', NULL, 1, NULL, 'thana-sathee-sakha-ward-iuniyner-masik-riport', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(150, 'SHAPE THE LIFE', 'shape-the-life', 'shape-the-life', 0, 0, 35, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ecf0f1\"><span style=\"font-size:48px\"><span style=\"background-color:#4e5f70\">আইসিএস পাবলিকেশন</span></span></span></p>', NULL, 'uploads/product/product_main_image/tEmgkZKFXow6bSXtQQuenuep6P64mFIgpc5Ld73z.jpeg', 'shape-the-life', 'SHAPE THE LIFE, shape-the-life', 'SHAPE THE LIFE', 'SHAPE THE LIFE', NULL, 1, NULL, 'shape-the-life', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(151, 'KEY TO SUCCESS', 'key-to-success', 'key-to-success', 0, 0, 42, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:36px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/fIlbFDaWGEMs2clZaak8eZEZXsfgx6v6WxDjiEUf.jpeg', 'key-to-success', 'KEY TO SUCCESS, key-to-success', 'KEY TO SUCCESS', 'KEY TO SUCCESS', NULL, 1, NULL, 'key-to-success', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05');
INSERT INTO `products` (`id`, `product_name`, `product_name_english`, `product_url`, `is_top_product`, `cost`, `sales_price`, `stock_alert_qty`, `pages`, `binding`, `isbn`, `sku`, `height`, `width`, `weight`, `depth`, `description`, `specification`, `thumb_image`, `thumb_alt`, `search_keywords`, `page_title`, `meta_description`, `custom_fields`, `is_public`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(152, 'মুসলিম মানসে সংকট', 'muslim-manse-sngkt', 'muslim-manse-sngkt', 0, 0, 140, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">বিআইআইটি পাবলিকেশন্স</span></p>', NULL, 'uploads/product/product_main_image/BzazzCB6OF2SIATx89h1Na8yXLQQnLVIPr7C5DHB.jpeg', 'muslim-manse-sngkt', 'মুসলিম মানসে সংকট, muslim-manse-sngkt', 'মুসলিম মানসে সংকট', 'মুসলিম মানসে সংকট', NULL, 1, NULL, 'muslim-manse-sngkt', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(153, 'উসূলুল ফিকহ', 'usuulul-fikh', 'usuulul-fikh', 0, 0, 70, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">বিআইআইটি পাবলিকেশন্স</span></p>', NULL, 'uploads/product/product_main_image/HPrB5RZD3MDA7ZXZBNj7inK6cGHnO6SGW1xqnGhC.jpeg', 'usuulul-fikh', 'উসূলুল ফিকহ, usuulul-fikh', 'উসূলুল ফিকহ', 'উসূলুল ফিকহ', NULL, 1, NULL, 'usuulul-fikh', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(154, 'সমর্থক ফর্ম  (ইংরেজি)(১০০ পিচ)', 'smrthk-frm-ingreji100-pic', 'smrthk-frm-ingreji100-pic', 0, 0, 50, 500, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/CuH9bhV4kp4luqcZrmL2QEI8AzQ6RC03PkPjSs5W.jpeg', 'smrthk-frm-ingreji100-pic', 'সমর্থক ফর্ম  (ইংরেজি)(১০০ পিচ), smrthk-frm-ingreji100-pic', 'সমর্থক ফর্ম  (ইংরেজি)(১০০ পিচ)', 'সমর্থক ফর্ম  (ইংরেজি)(১০০ পিচ)', NULL, 1, NULL, 'smrthk-frm-ingreji100-pic', 1, '2023-11-16 04:42:05', '2023-11-16 04:42:05'),
(155, 'সংসদীয় বিতর্ক', 'sngsdeey-bitrk', 'sngsdeey-bitrk', 0, 0, 23, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/Gv8EbYAepTy17wo1YMZuUB43TYqkB1qka78IINfI.jpeg', 'sngsdeey-bitrk', 'সংসদীয় বিতর্ক, sngsdeey-bitrk', 'সংসদীয় বিতর্ক', 'সংসদীয় বিতর্ক', NULL, 1, NULL, 'sngsdeey-bitrk', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(156, 'কুরআন ও সুন্নাহ স্থান-কাল-পরিপ্রেক্ষিত', 'kuran-oo-sunnah-sthan-kal-priprekshit', 'kuran-oo-sunnah-sthan-kal-priprekshit', 0, 0, 35, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">বিআইআইটি পাবলিকেশন্স</span></p>', NULL, 'uploads/product/product_main_image/Og3mIgqfB1T2FQArbLDCwAcCvdlYSYM7CcXIZgrz.jpeg', 'kuran-oo-sunnah-sthan-kal-priprekshit', 'কুরআন ও সুন্নাহ স্থান-কাল-পরিপ্রেক্ষিত, kuran-oo-sunnah-sthan-kal-priprekshit', 'কুরআন ও সুন্নাহ স্থান-কাল-পরিপ্রেক্ষিত', 'কুরআন ও সুন্নাহ স্থান-কাল-পরিপ্রেক্ষিত', NULL, 1, NULL, 'kuran-oo-sunnah-sthan-kal-priprekshit', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(157, 'সূত্রাবলি', 'suutrabli', 'suutrabli', 0, 0, 8, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:36px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/qwZHmNvceO39sEDr91CIzxMXK4ewn5iNYRWOS8yE.jpeg', 'suutrabli', 'সূত্রাবলি, suutrabli', 'সূত্রাবলি', 'সূত্রাবলি', NULL, 1, NULL, 'suutrabli', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(158, 'TENSE', 'tense', 'tense', 0, 0, 8, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/pAdrYHaOUi4HoxHHBtrlTqUBmOqr0eC4FpCll6ML.jpeg', 'tense', 'TENSE, tense', 'TENSE', 'TENSE', NULL, 1, NULL, 'tense', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(159, 'দাওয়াতি কার্ড (১০০ কপি)', 'dawati-kard-100-kpi', 'dawati-kard-100-kpi', 0, 0, 100, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/ImHyXIrj2KtIWQm6be8CcSy5XaGjsION61947v1m.jpeg', 'dawati-kard-100-kpi', 'দাওয়াতি কার্ড (১০০ কপি), dawati-kard-100-kpi', 'দাওয়াতি কার্ড (১০০ কপি)', 'দাওয়াতি কার্ড (১০০ কপি)', NULL, 1, NULL, 'dawati-kard-100-kpi', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(160, 'পোস্টার (বাংলাশে দাওয়াহ সার্কেল)', 'postar-banglase-dawah-sarkel', 'postar-banglase-dawah-sarkel', 0, 0, 20, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:36px\"><strong>বাংলাশে দাওয়াহ সার্কেল</strong></span></p>', NULL, 'uploads/product/product_main_image/tymD0wZxhjOAsVGxO9sKNFCY7G0w7zJLkKleEMQE.jpeg', 'postar-banglase-dawah-sarkel', 'পোস্টার (বাংলাশে দাওয়াহ সার্কেল), postar-banglase-dawah-sarkel', 'পোস্টার (বাংলাশে দাওয়াহ সার্কেল)', 'পোস্টার (বাংলাশে দাওয়াহ সার্কেল)', NULL, 1, NULL, 'postar-banglase-dawah-sarkel', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(161, 'চাবির রিং- সদস্য সম্মেলনের- ২০২২', 'cabir-ring-sdsz-smmelner-2022', 'cabir-ring-sdsz-smmelner-2022', 0, 0, 32, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\"><strong>চাবির রিং- সদস্য সম্মেলনের- ২০২২</strong></span></p>', NULL, 'uploads/product/product_main_image/fRMGTWUUCy0Iq2O65rGr8WJhlLUUBFcv77i9bbmi.jpeg', 'cabir-ring-sdsz-smmelner-2022', 'চাবির রিং- সদস্য সম্মেলনের- ২০২২, cabir-ring-sdsz-smmelner-2022', 'চাবির রিং- সদস্য সম্মেলনের- ২০২২', 'চাবির রিং- সদস্য সম্মেলনের- ২০২২', NULL, 1, NULL, 'cabir-ring-sdsz-smmelner-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(162, 'প্রেরণার বাতিঘর', 'prernar-batighr', 'prernar-batighr', 0, 0, 200, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">শহীদ আবদুল মালেক স্বরণিকা</span></p>', NULL, 'uploads/product/product_main_image/bmKsCk1EvA3ZtMqIdwpp2dqm1Cz8tKCar9HkP8zy.jpeg', 'prernar-batighr', 'প্রেরণার বাতিঘর, prernar-batighr', 'প্রেরণার বাতিঘর', 'প্রেরণার বাতিঘর', NULL, 1, NULL, 'prernar-batighr', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(163, 'পেপার ওয়েট (বি)', 'pepar-wet-bi', 'pepar-wet-bi', 0, 0, 40, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>বিআইসিএস</p>', NULL, 'uploads/product/product_main_image/xZ9n0YIuC8M4ohTJevzMdATfBkpCesFb2oXanWca.jpeg', 'pepar-wet-bi', 'পেপার ওয়েট (বি), pepar-wet-bi', 'পেপার ওয়েট (বি)', 'পেপার ওয়েট (বি)', NULL, 1, NULL, 'pepar-wet-bi', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(164, 'জাতীয় পতাকা (কাপর-৩’*২’)', 'jateey-ptaka-kapr-32', 'jateey-ptaka-kapr-32', 0, 0, 50, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/GonSTYVhsztv7tHJEftTBW2E21eaxr1H10V7LId1.jpeg', 'jateey-ptaka-kapr-32', 'জাতীয় পতাকা (কাপর-৩’*২’), jateey-ptaka-kapr-32', 'জাতীয় পতাকা (কাপর-৩’*২’)', 'জাতীয় পতাকা (কাপর-৩’*২’)', NULL, 1, NULL, 'jateey-ptaka-kapr-32', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(165, 'পতাকা কালিমা (কাপর-৩’*২’)', 'ptaka-kalima-kapr-32', 'ptaka-kalima-kapr-32', 0, 0, 50, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/qkI8o5iVSxNFCFqN0k0ULKXGySqPxsIrhiE4IckJ.jpeg', 'ptaka-kalima-kapr-32', 'পতাকা কালিমা (কাপর-৩’*২’), ptaka-kalima-kapr-32', 'পতাকা কালিমা (কাপর-৩’*২’)', 'পতাকা কালিমা (কাপর-৩’*২’)', NULL, 1, NULL, 'ptaka-kalima-kapr-32', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(166, 'মাসিক রিপোর্ট', 'masik-riport', 'masik-riport', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/CL99Lp4z8KoQZIOMghGj94iZpqQ6jMJ3Wi7H2NOp.jpeg', 'masik-riport', 'মাসিক রিপোর্ট, masik-riport', 'মাসিক রিপোর্ট', 'মাসিক রিপোর্ট', NULL, 1, NULL, 'masik-riport', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(167, 'টি-সার্ট অপচয় করিনা-বি (ছোটো সাইজ)', 'ti-sart-opcy-krina-bi-choto-saij', 'ti-sart-opcy-krina-bi-choto-saij', 0, 0, 200, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;টি-সার্ট অপচয় করিনা-এ (ছোটো সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/Zg4ggEs6sWIeoqdfzGZD5AfIcOUuQarwWwvbgC5z.jpeg', 'ti-sart-opcy-krina-bi-choto-saij', 'টি-সার্ট অপচয় করিনা-বি (ছোটো সাইজ), ti-sart-opcy-krina-bi-choto-saij', 'টি-সার্ট অপচয় করিনা-বি (ছোটো সাইজ)', 'টি-সার্ট অপচয় করিনা-বি (ছোটো সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-bi-choto-saij', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(168, 'টি-সার্ট অপচয় করিনা-ইংরেজি (মাঝারি সাইজ)', 'ti-sart-opcy-krina-ingreji-majhari-saij', 'ti-sart-opcy-krina-ingreji-majhari-saij', 0, 0, 200, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;টি-সার্ট অপচয় করিনা-বি (ছোটো সাইজ)</p>\r\n\r\n<p>- আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/XdbNTApKbOCtjfeBIjPjrkBfzVHDSMkHSrsb8P05.jpeg', 'ti-sart-opcy-krina-ingreji-majhari-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (মাঝারি সাইজ), ti-sart-opcy-krina-ingreji-majhari-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (মাঝারি সাইজ)', 'টি-সার্ট অপচয় করিনা-ইংরেজি (মাঝারি সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-ingreji-majhari-saij', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(169, 'বায়োডাটা (কর্মী-সাথী প্রার্থী)', 'bayodata-krmee-sathee-prarthee', 'bayodata-krmee-sathee-prarthee', 0, 0, 150, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#9b59b6\"><span style=\"font-size:28px\"><strong>বি: দ্র: এই ফর্মটি কমপক্ষে 100 কপি (1 বাইন্ডিল) অর্ডার করতে হবে, অন্যথায় অর্ডার বাতিল&nbsp; বলে গণ্য হবে।</strong></span></span></p>', NULL, 'uploads/product/product_main_image/PLLDgr1oz5zOWGEWHlMZG9hATcOSvPulKwL54PfD.jpeg', 'bayodata-krmee-sathee-prarthee', 'বায়োডাটা (কর্মী-সাথী প্রার্থী), bayodata-krmee-sathee-prarthee', 'বায়োডাটা (কর্মী-সাথী প্রার্থী)', 'বায়োডাটা (কর্মী-সাথী প্রার্থী)', NULL, 1, NULL, 'bayodata-krmee-sathee-prarthee', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(170, 'শুভেচ্ছা কার্ড (১০০ কপি)', 'suveccha-kard-100-kpi', 'suveccha-kard-100-kpi', 0, 0, 70, 500, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/jjXMzOaGeyfCqB5pfwoOtpFaKCp105QGzYeBmDjl.jpeg', 'suveccha-kard-100-kpi', 'শুভেচ্ছা কার্ড (১০০ কপি), suveccha-kard-100-kpi', 'শুভেচ্ছা কার্ড (১০০ কপি)', 'শুভেচ্ছা কার্ড (১০০ কপি)', NULL, 1, NULL, 'suveccha-kard-100-kpi', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(171, 'Bactigata Report Book (Englis)', 'bactigata-report-book-englis', 'bactigata-report-book-englis', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">Bactigata Report Book (Englis)</span></p>', NULL, 'uploads/product/product_main_image/Gw9CwFbFIDALoam5tozM7fIrN6R87AgoHRz9MgRt.png', 'bactigata-report-book-englis', 'Bactigata Report Book (Englis), bactigata-report-book-englis', 'Bactigata Report Book (Englis)', 'Bactigata Report Book (Englis)', NULL, 1, NULL, 'bactigata-report-book-englis', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(172, 'কিশোরকন্ঠ গল্পসমগ্র-১', 'kisorknth-glpsmgr-1', 'kisorknth-glpsmgr-1', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>কিশোরকন্ঠ ফাউন্ডেশন</p>', NULL, 'uploads/product/product_main_image/5AM8df6CLCoMB4wntMOkj96zQrbmhqwO6vjBEUWP.jpeg', 'kisorknth-glpsmgr-1', 'কিশোরকন্ঠ গল্পসমগ্র-১, kisorknth-glpsmgr-1', 'কিশোরকন্ঠ গল্পসমগ্র-১', 'কিশোরকন্ঠ গল্পসমগ্র-১', NULL, 1, NULL, 'kisorknth-glpsmgr-1', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(173, 'চারটি হাদীস গ্রন্থ  (সাথী সিলেবাস)', 'carti-hadees-grnth-sathee-silebas', 'carti-hadees-grnth-sathee-silebas', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>(রাহে আমল-২ রিয়াদুস সালেহীন-১ হাদীস শরীফ-১ এন্তেখাবে হাদীস-১ও২)</p>', NULL, 'uploads/product/product_main_image/pycrKGSIgNLwfNwHuqAMPahn3yfZvUZI76HsLjjX.jpeg', 'carti-hadees-grnth-sathee-silebas', 'চারটি হাদীস গ্রন্থ  (সাথী সিলেবাস), carti-hadees-grnth-sathee-silebas', 'চারটি হাদীস গ্রন্থ  (সাথী সিলেবাস)', 'চারটি হাদীস গ্রন্থ  (সাথী সিলেবাস)', NULL, 1, NULL, 'carti-hadees-grnth-sathee-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(174, 'সত্যের সৌরভ', 'stzer-sourv', 'stzer-sourv', 0, 0, 84, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">হাদিসের আলো</span></p>', NULL, 'uploads/product/product_main_image/zFSMUFRZx4nti4qfYyE22fLNptVeO2GWKlADbigq.jpeg', 'stzer-sourv', 'সত্যের সৌরভ, stzer-sourv', 'সত্যের সৌরভ', 'সত্যের সৌরভ', NULL, 1, NULL, 'stzer-sourv', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(175, 'মানবদেহ স্রষ্টার সুনিপুণ সৃষ্টি', 'manbdeh-srshtar-sunipun-srrishti', 'manbdeh-srshtar-sunipun-srrishti', 0, 0, 112, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">মানবদেহ স্রষ্টার সুনিপুণ সৃষ্টি</span></p>', NULL, 'uploads/product/product_main_image/5OPFcuM3e0UvdHAt6LYIotgmDISq4NQqtXBDX7c6.jpeg', 'manbdeh-srshtar-sunipun-srrishti', 'মানবদেহ স্রষ্টার সুনিপুণ সৃষ্টি, manbdeh-srshtar-sunipun-srrishti', 'মানবদেহ স্রষ্টার সুনিপুণ সৃষ্টি', 'মানবদেহ স্রষ্টার সুনিপুণ সৃষ্টি', NULL, 1, NULL, 'manbdeh-srshtar-sunipun-srrishti', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(176, 'স্বর্ণযুগের মুসলিম বিজ্ঞানিরা', 'swrnzuger-muslim-bijnganira', 'swrnzuger-muslim-bijnganira', 0, 0, 260, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">মুনলাইট পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/EFPlqCB2pAd7FEATDHutWh0EbvGa6Bc0wxqvtL1p.jpeg', 'swrnzuger-muslim-bijnganira', 'স্বর্ণযুগের মুসলিম বিজ্ঞানিরা, swrnzuger-muslim-bijnganira', 'স্বর্ণযুগের মুসলিম বিজ্ঞানিরা', 'স্বর্ণযুগের মুসলিম বিজ্ঞানিরা', NULL, 1, NULL, 'swrnzuger-muslim-bijnganira', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(177, 'অমিয় সুধা', 'omiy-sudha', 'omiy-sudha', 0, 0, 112, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\">&nbsp;<span style=\"font-size:48px\">প্রকাশনায়</span></p>\r\n\r\n<h1 style=\"text-align:center\"><span style=\"color:#ffff33\"><span style=\"font-size:72px\"><span style=\"background-color:#e74c3c\">প্রেরনা</span></span></span></h1>', NULL, 'uploads/product/product_main_image/T6dJXUJGjIDhE1NaPew49d6Q4IAWs5C676aBkiCc.jpeg', 'omiy-sudha', 'অমিয় সুধা, omiy-sudha', 'অমিয় সুধা', 'অমিয় সুধা', NULL, 1, NULL, 'omiy-sudha', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(178, 'পাহাড়ি এক লড়াকু', 'pahari-ek-lraku', 'pahari-ek-lraku', 0, 0, 120, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><br />\r\nকিশোরকন্ঠ ফাউন্ডেশন</p>', NULL, 'uploads/product/product_main_image/LtBObpMsgLd827gUpTbqjk6PaG1xwAht8rKtWZ4t.jpeg', 'pahari-ek-lraku', 'পাহাড়ি এক লড়াকু, pahari-ek-lraku', 'পাহাড়ি এক লড়াকু', 'পাহাড়ি এক লড়াকু', NULL, 1, NULL, 'pahari-ek-lraku', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(179, 'রমাদান ক্যালেন্ডার', 'rmadan-kzalendar', 'rmadan-kzalendar', 0, 0, 10, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:28px\"><span style=\"color:#cc0000\">&nbsp;রমজানূল মুবারক</span></span></p>', NULL, 'uploads/product/product_main_image/eLMZwooIlxk8BerjEFZGLzDcF2Cc0hID5A5ICRbk.jpeg', 'rmadan-kzalendar', 'রমাদান ক্যালেন্ডার, rmadan-kzalendar', 'রমাদান ক্যালেন্ডার', 'রমাদান ক্যালেন্ডার', NULL, 1, NULL, 'rmadan-kzalendar', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(180, 'স্টিকার দুআ, সেট-০১', 'stikar-dua-set-01', 'stikar-dua-set-01', 0, 0, 288, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\"><span style=\"color:#c0392b\">মাসনুন দুআসমূহ আমলের লক্ষেমুখস্ত&nbsp;করুন।</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>\r\n\r\n<p>&nbsp;</p>', NULL, 'uploads/product/product_main_image/q9w2WJbVhaKXYs1eNsfJPax4caLNsMlaGdhzCWG9.jpeg', 'stikar-dua-set-01', 'স্টিকার দুআ, সেট-০১, stikar-dua-set-01', 'স্টিকার দুআ, সেট-০১', 'স্টিকার দুআ, সেট-০১', NULL, 1, NULL, 'stikar-dua-set-01', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(181, 'সাথী সিলেবাস', 'sathee-silebas', 'sathee-silebas', 0, 0, 2050, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:14px\">৩২টি পাঠ্যবই ও ৪টি হাদিসগ্রন্থ</span></p>\r\n\r\n<p><span style=\"font-size:28px\"><span style=\"color:#e74c3c\">ব্যক্তিগত লাইব্রেরি তৈরি ও সমৃদ্ধ করার লক্ষ্যে বিশেষ ছাড়!!!</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/NJKkXOI0YlLQeFnLk1I79teqzGbSzic2CczZHfOe.jpeg', 'sathee-silebas', 'সাথী সিলেবাস, sathee-silebas', 'সাথী সিলেবাস', 'সাথী সিলেবাস', NULL, 1, NULL, 'sathee-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(182, 'সদস্য সিলেবাস', 'sdsz-silebas', 'sdsz-silebas', 0, 0, 7200, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:20px\">৮২টি পাঠ্যবই</span></p>\r\n\r\n<p><span style=\"font-size:28px\"><span style=\"color:#c0392b\">ব্যক্তিগত লাইব্রেরি তৈরি ও সমৃদ্ধ করার লক্ষ্যে বিশেষ ছাড়!!!</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/qXE82E1t8BlBsbPBdsFX1QlZ44uBVoMhBcRTfqOx.jpeg', 'sdsz-silebas', 'সদস্য সিলেবাস, sdsz-silebas', 'সদস্য সিলেবাস', 'সদস্য সিলেবাস', NULL, 1, NULL, 'sdsz-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(183, 'কর্মী সিলেবাস', 'krmee-silebas', 'krmee-silebas', 0, 0, 520, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">১১&nbsp;টি পাঠ্যবই</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/0X7zEpxaFHe7UuhwsthQ2MnAa7BJPFjTMRt7xnib.jpeg', 'krmee-silebas', 'কর্মী সিলেবাস, krmee-silebas', 'কর্মী সিলেবাস', 'কর্মী সিলেবাস', NULL, 1, NULL, 'krmee-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(184, 'সহীহ আল বুখারী - (১-৬ খণ্ড)', 'sheeh-al-bukharee-1-6-khnd', 'sheeh-al-bukharee-1-6-khnd', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">৬ টি খন্ড</span></p>', NULL, 'uploads/product/product_main_image/Q8BhMYUOfuG8eHRfSjr3jBTuaXFR3jF7mCs1WP9d.jpeg', 'sheeh-al-bukharee-1-6-khnd', 'সহীহ আল বুখারী - (১-৬ খণ্ড), sheeh-al-bukharee-1-6-khnd', 'সহীহ আল বুখারী - (১-৬ খণ্ড)', 'সহীহ আল বুখারী - (১-৬ খণ্ড)', NULL, 1, NULL, 'sheeh-al-bukharee-1-6-khnd', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(185, 'তাফহীমুল কুরআন (১-১০ খণ্ড, ফুল সেট)', 'tafheemul-kuran-1-10-khnd-ful-set', 'tafheemul-kuran-1-10-khnd-ful-set', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:72px\">আধুনিক প্রকাশনী</span></p>', NULL, 'uploads/product/product_main_image/tZAW9v46qHuv8gg5yF2Wi5p6tgtSEboMubFHPCbB.jpeg', 'tafheemul-kuran-1-10-khnd-ful-set', 'তাফহীমুল কুরআন (১-১০ খণ্ড, ফুল সেট), tafheemul-kuran-1-10-khnd-ful-set', 'তাফহীমুল কুরআন (১-১০ খণ্ড, ফুল সেট)', 'তাফহীমুল কুরআন (১-১০ খণ্ড, ফুল সেট)', NULL, 1, NULL, 'tafheemul-kuran-1-10-khnd-ful-set', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(186, 'তাফহীমুল কুরআন  (১-১৯ খণ্ড )', 'tafheemul-kuran-1-19-khnd', 'tafheemul-kuran-1-19-khnd', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:72px\">আধুনিক প্রকাশনী</span></p>', NULL, 'uploads/product/product_main_image/oayMqTUZBit4LLTwxVHme39lwk2nsUbLLAOfUz3r.jpeg', 'tafheemul-kuran-1-19-khnd', 'তাফহীমুল কুরআন  (১-১৯ খণ্ড ), tafheemul-kuran-1-19-khnd', 'তাফহীমুল কুরআন  (১-১৯ খণ্ড )', 'তাফহীমুল কুরআন  (১-১৯ খণ্ড )', NULL, 1, NULL, 'tafheemul-kuran-1-19-khnd', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(187, 'তাফসীর ফী যিলালিল কুরআন  (১-২২ খণ্ড)', 'tafseer-fee-zilalil-kuran-1-22-khnd', 'tafseer-fee-zilalil-kuran-1-22-khnd', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/zlzlkY99s4yoJ8r4B0aZ379h09XffXbj8M1WFeXe.jpeg', 'tafseer-fee-zilalil-kuran-1-22-khnd', 'তাফসীর ফী যিলালিল কুরআন  (১-২২ খণ্ড), tafseer-fee-zilalil-kuran-1-22-khnd', 'তাফসীর ফী যিলালিল কুরআন  (১-২২ খণ্ড)', 'তাফসীর ফী যিলালিল কুরআন  (১-২২ খণ্ড)', NULL, 1, NULL, 'tafseer-fee-zilalil-kuran-1-22-khnd', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(188, 'তাফসীর ইবনে কাছীর (১-৮ খণ্ড)', 'tafseer-ibne-kacheer-1-8-khnd', 'tafseer-ibne-kacheer-1-8-khnd', 0, 0, 3080, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/xGXh1PHgUrhlmsXToAXKu8AcQ1dI3wpUgeFjmxBQ.jpeg', 'tafseer-ibne-kacheer-1-8-khnd', 'তাফসীর ইবনে কাছীর (১-৮ খণ্ড), tafseer-ibne-kacheer-1-8-khnd', 'তাফসীর ইবনে কাছীর (১-৮ খণ্ড)', 'তাফসীর ইবনে কাছীর (১-৮ খণ্ড)', NULL, 1, NULL, 'tafseer-ibne-kacheer-1-8-khnd', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(189, 'টি-সার্ট অপচয় করিনা-ইংরেজি (এম সাইজ)', 'ti-sart-opcy-krina-ingreji-em-saij', 'ti-sart-opcy-krina-ingreji-em-saij', 0, 0, 200, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/7uzB570shtl8hCLwI5V7Q7K632YacTl6XYcHDJ1v.jpeg', 'ti-sart-opcy-krina-ingreji-em-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (এম সাইজ), ti-sart-opcy-krina-ingreji-em-saij', 'টি-সার্ট অপচয় করিনা-ইংরেজি (এম সাইজ)', 'টি-সার্ট অপচয় করিনা-ইংরেজি (এম সাইজ)', NULL, 1, NULL, 'ti-sart-opcy-krina-ingreji-em-saij', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(190, 'মৌলিক ১৫টি বই (ভলিউম)', 'moulik-15ti-bi-vlium', 'moulik-15ti-bi-vlium', 0, 0, 450, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:28px\"><span style=\"color:#c0392b\">ব্যক্তিগত লাইব্রেরি তৈরি ও সমৃদ্ধ করার লক্ষ্যে বিশেষ ছাড়!!!</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>আইসিএস পাবলিকেশন</strong></span></p>', NULL, 'uploads/product/product_main_image/nMvNuE6sbfRyFE6V6pTsHcMpqhUWZGWrHVBX06Bl.jpeg', 'moulik-15ti-bi-vlium', 'মৌলিক ১৫টি বই (ভলিউম), moulik-15ti-bi-vlium', 'মৌলিক ১৫টি বই (ভলিউম)', 'মৌলিক ১৫টি বই (ভলিউম)', NULL, 1, NULL, 'moulik-15ti-bi-vlium', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(191, 'সদস্য সিলেবাস ও সাথী সিলেবাস (একত্রে)', 'sdsz-silebas-oo-sathee-silebas-ektre', 'sdsz-silebas-oo-sathee-silebas-ektre', 0, 0, 8950, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:28px\"><span style=\"color:#c0392b\">ব্যক্তিগত লাইব্রেরি তৈরি ও সমৃদ্ধ করার লক্ষ্যে বিশেষ ছাড়!!!</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/DL5ThZcqbtOA6a3pOeydYxjPDlQsBwZA89egjKnp.jpeg', 'sdsz-silebas-oo-sathee-silebas-ektre', 'সদস্য সিলেবাস ও সাথী সিলেবাস (একত্রে), sdsz-silebas-oo-sathee-silebas-ektre', 'সদস্য সিলেবাস ও সাথী সিলেবাস (একত্রে)', 'সদস্য সিলেবাস ও সাথী সিলেবাস (একত্রে)', NULL, 1, NULL, 'sdsz-silebas-oo-sathee-silebas-ektre', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(192, 'সাথী সিলেবাস', 'sathee-silebas', 'sathee-silebas', 0, 0, 2712, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">৩৬টি পাঠ্যবই ও ৪টি হাদিসগ্রন্থ</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/ZqQjEHZf3eJW1JcNtaO52rDFFBgbYY6V9i2AzNQ6.jpeg', 'sathee-silebas', 'সাথী সিলেবাস, sathee-silebas', 'সাথী সিলেবাস', 'সাথী সিলেবাস', NULL, 1, NULL, 'sathee-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(193, 'সদস্য সিলেবাস', 'sdsz-silebas', 'sdsz-silebas', 0, 0, 9000, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:72px\">৮৩ টি পাঠ্যবই</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:36px\"><strong>আইসিএস&nbsp;পাবলিকেন</strong></span></p>', NULL, 'uploads/product/product_main_image/AbWtPn88NhpCXroZ9e3zOeC8WpjLiM6bYWgWh663.jpeg', 'sdsz-silebas', 'সদস্য সিলেবাস, sdsz-silebas', 'সদস্য সিলেবাস', 'সদস্য সিলেবাস', NULL, 1, NULL, 'sdsz-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(194, 'মৌলিক ১৫টি বই (ভলিউম)', 'moulik-15ti-bi-vlium', 'moulik-15ti-bi-vlium', 0, 0, 550, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/HRJ5lRRrhnMuLq4bcmh8nTEBb7SefOPp4dwiTpgq.jpeg', 'moulik-15ti-bi-vlium', 'মৌলিক ১৫টি বই (ভলিউম), moulik-15ti-bi-vlium', 'মৌলিক ১৫টি বই (ভলিউম)', 'মৌলিক ১৫টি বই (ভলিউম)', NULL, 1, NULL, 'moulik-15ti-bi-vlium', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(195, 'ঈমানের হাকীকত', 'eemaner-hakeekt', 'eemaner-hakeekt', 0, 0, 17.5, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/A3Z7vZwnUv3Q7x950gLMjpw6hCo8Z9BMZeXQIq82.jpeg', 'eemaner-hakeekt', 'ঈমানের হাকীকত, eemaner-hakeekt', 'ঈমানের হাকীকত', 'ঈমানের হাকীকত', NULL, 1, NULL, 'eemaner-hakeekt', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(196, 'অর্থ রেজিস্টার খাতা (থানা)', 'orth-rejistar-khata-thana', 'orth-rejistar-khata-thana', 0, 0, 230, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">অর্থ রেজিস্টার খাতা (থানা)</span></p>', NULL, 'uploads/product/product_main_image/mmlx0SQyOMzXBCZdJyCAsCNiMjPM0tRdy3kPvNIW.jpeg', 'orth-rejistar-khata-thana', 'অর্থ রেজিস্টার খাতা (থানা), orth-rejistar-khata-thana', 'অর্থ রেজিস্টার খাতা (থানা)', 'অর্থ রেজিস্টার খাতা (থানা)', NULL, 1, NULL, 'orth-rejistar-khata-thana', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(197, 'ব্যানার  (চিকন পাইপ)', 'bzanar-cikn-paip', 'bzanar-cikn-paip', 0, 0, 210, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:48px\">বাংলাদেশ দাওয়াহ সার্কেল&nbsp;</span></p>', NULL, 'uploads/product/product_main_image/0xWI9xhuMwuqQkE3189IXSXujQ6fPWlfOpqRmHnP.jpeg', 'bzanar-cikn-paip', 'ব্যানার  (চিকন পাইপ), bzanar-cikn-paip', 'ব্যানার  (চিকন পাইপ)', 'ব্যানার  (চিকন পাইপ)', NULL, 1, NULL, 'bzanar-cikn-paip', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(198, 'সাথী সিলেবাস (নতুন সংযোজিত বইসমূহ)', 'sathee-silebas-ntun-sngzojit-bismuuh', 'sathee-silebas-ntun-sngzojit-bismuuh', 0, 0, 602, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/ZtbkqA5CyU21OzhUJuAACnsVnqJBDoPRDqzV6aqv.jpeg', 'sathee-silebas-ntun-sngzojit-bismuuh', 'সাথী সিলেবাস (নতুন সংযোজিত বইসমূহ), sathee-silebas-ntun-sngzojit-bismuuh', 'সাথী সিলেবাস (নতুন সংযোজিত বইসমূহ)', 'সাথী সিলেবাস (নতুন সংযোজিত বইসমূহ)', NULL, 1, NULL, 'sathee-silebas-ntun-sngzojit-bismuuh', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(199, 'সদস্য সিলেবাস (নতুন সংযোজিত বইসমূহ)', 'sdsz-silebas-ntun-sngzojit-bismuuh', 'sdsz-silebas-ntun-sngzojit-bismuuh', 0, 0, 2505, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></p>', NULL, 'uploads/product/product_main_image/AwmnNpfmfApa1PMFZB3kVvHYXGdlAlkpaIIKs6pl.jpeg', 'sdsz-silebas-ntun-sngzojit-bismuuh', 'সদস্য সিলেবাস (নতুন সংযোজিত বইসমূহ), sdsz-silebas-ntun-sngzojit-bismuuh', 'সদস্য সিলেবাস (নতুন সংযোজিত বইসমূহ)', 'সদস্য সিলেবাস (নতুন সংযোজিত বইসমূহ)', NULL, 1, NULL, 'sdsz-silebas-ntun-sngzojit-bismuuh', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(200, 'পোস্টার (পাচঁটি আবস্থা)', 'postar-pacnnti-abstha', 'postar-pacnnti-abstha', 0, 0, 25, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\"><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></span></p>', NULL, 'uploads/product/product_main_image/3M8IkCtsUtj3sLRG1JFfK7lkiU1b36DwHk1wIy9I.jpeg', 'postar-pacnnti-abstha', 'পোস্টার (পাচঁটি আবস্থা), postar-pacnnti-abstha', 'পোস্টার (পাচঁটি আবস্থা)', 'পোস্টার (পাচঁটি আবস্থা)', NULL, 1, NULL, 'postar-pacnnti-abstha', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(201, 'ক্যালেন্ডার (একপাতা বড়ো)', 'kzalendar-ekpata-bro', 'kzalendar-ekpata-bro', 0, 0, 22, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#e74c3c\"><span style=\"font-size:36px\">নববর্ষের শুভেচ্ছা-২০২4</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\">২৫/৫০/৭৫/১০০ এর কমে অর্ডার করা যাবে না</span></p>', NULL, 'uploads/product/product_main_image/HIaFW1x6HqvsBtDVrmTInlNN9aB1ZBK1qyRMVesZ.jpeg', 'kzalendar-ekpata-bro', 'ক্যালেন্ডার (একপাতা বড়ো), kzalendar-ekpata-bro', 'ক্যালেন্ডার (একপাতা বড়ো)', 'ক্যালেন্ডার (একপাতা বড়ো)', NULL, 1, NULL, 'kzalendar-ekpata-bro', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(202, 'ক্যালেন্ডার (একপাতা ছোটো)', 'kzalendar-ekpata-choto', 'kzalendar-ekpata-choto', 0, 0, 12, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">নববর্ষের শুভেচ্ছা-২০২4</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\">৫০/১০০ এর কমে অর্ডার করা যাবে না</span></p>', NULL, 'uploads/product/product_main_image/n3WZrNk8twLbdkrFWQNovC55CTGCmnSISGLDWzCe.jpeg', 'kzalendar-ekpata-choto', 'ক্যালেন্ডার (একপাতা ছোটো), kzalendar-ekpata-choto', 'ক্যালেন্ডার (একপাতা ছোটো)', 'ক্যালেন্ডার (একপাতা ছোটো)', NULL, 1, NULL, 'kzalendar-ekpata-choto', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(203, 'সুবহে সাদিক', 'subhe-sadik', 'subhe-sadik', 0, 0, 105, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#99ffff\"><span style=\"font-size:48px\"><span style=\"background-color:#663333\">বিআইআইটি পাবলিকেশন্স</span></span></span></p>', NULL, 'uploads/product/product_main_image/JBtQMbADDjmLW3JvyLnJDYQ3TEvMVr0QPWixc4Yb.jpeg', 'subhe-sadik', 'সুবহে সাদিক, subhe-sadik', 'সুবহে সাদিক', 'সুবহে সাদিক', NULL, 1, NULL, 'subhe-sadik', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(204, 'ষ্টিকার - বি (১০০ পিছ)', 'shtikar-bi-100-pich', 'shtikar-bi-100-pich', 0, 0, 250, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">আইসিএস পাবলিকেশন</span></p>', NULL, 'uploads/product/product_main_image/HzHyMEGJg9D7aOxepIYOPeZegSacO2pSqO2naeUe.jpeg', 'shtikar-bi-100-pich', 'ষ্টিকার - বি (১০০ পিছ), shtikar-bi-100-pich', 'ষ্টিকার - বি (১০০ পিছ)', 'ষ্টিকার - বি (১০০ পিছ)', NULL, 1, NULL, 'shtikar-bi-100-pich', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(205, 'সদস্য সম্মেলনের প্যাকেজ - ২০২২', 'sdsz-smmelner-pzakej-2022', 'sdsz-smmelner-pzakej-2022', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<h1 style=\"text-align:center\"><span style=\"font-size:48px\">সদস্য সম্মেলনের প্যাকেজ - ২০২২</span></h1>', NULL, 'uploads/product/product_main_image/YB4hzbO47M3Py6ED0rADNhYoBcDUzw7FLFn765An.jpeg', 'sdsz-smmelner-pzakej-2022', 'সদস্য সম্মেলনের প্যাকেজ - ২০২২, sdsz-smmelner-pzakej-2022', 'সদস্য সম্মেলনের প্যাকেজ - ২০২২', 'সদস্য সম্মেলনের প্যাকেজ - ২০২২', NULL, 1, NULL, 'sdsz-smmelner-pzakej-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(206, 'মানবতার বন্ধু মুহাম্মদ রসূল্লাহ (সা.)', 'manbtar-bndhu-muhammd-rsuullah-sa', 'manbtar-bndhu-muhammd-rsuullah-sa', 0, 0, 200, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/IHizCzb1vp3co9uDekrD0RAAwIXWY1lqSOGsRYzi.jpeg', 'manbtar-bndhu-muhammd-rsuullah-sa', 'মানবতার বন্ধু মুহাম্মদ রসূল্লাহ (সা.), manbtar-bndhu-muhammd-rsuullah-sa', 'মানবতার বন্ধু মুহাম্মদ রসূল্লাহ (সা.)', 'মানবতার বন্ধু মুহাম্মদ রসূল্লাহ (সা.)', NULL, 1, NULL, 'manbtar-bndhu-muhammd-rsuullah-sa', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(207, 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (বড়ো)', 'bishyvittik-ayat-oo-hadis-sngkln-bro', 'bishyvittik-ayat-oo-hadis-sngkln-bro', 0, 0, 210, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:36px\"><span style=\"color:#9b59b6\"><strong>প্রকাশনায় : আইসিএস পাবলিকেশন</strong></span></span></p>', NULL, 'uploads/product/product_main_image/TVTs9EvazjZYltfl30IURFlkSpXA01gbq8STXt6s.jpeg', 'bishyvittik-ayat-oo-hadis-sngkln-bro', 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (বড়ো), bishyvittik-ayat-oo-hadis-sngkln-bro', 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (বড়ো)', 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (বড়ো)', NULL, 1, NULL, 'bishyvittik-ayat-oo-hadis-sngkln-bro', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(208, 'সংবর্ধনা প্যাকেজ', 'sngbrdhna-pzakej', 'sngbrdhna-pzakej', 0, 0, 80, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/REhyCU8oWEUcR8cc8vuPkH6296XZj39bMCumWpJq.jpeg', 'sngbrdhna-pzakej', 'সংবর্ধনা প্যাকেজ, sngbrdhna-pzakej', 'সংবর্ধনা প্যাকেজ', 'সংবর্ধনা প্যাকেজ', NULL, 1, NULL, 'sngbrdhna-pzakej', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(209, 'সাথী সিলেবাসের ইসলামী সাহিত্য', 'sathee-silebaser-islamee-sahitz', 'sathee-silebaser-islamee-sahitz', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:28px\">সুধু সাথী সিলেবাসের ইসলামী সাহিত্য বই সংখ্যা ৩২ টি</span></p>\r\n\r\n<p><span style=\"font-size:28px\">১০ সেটের বেশি অর্ডার করা জাবেনা (১ শাখা শুধু একবার নিতে পারবে)</span></p>', NULL, 'uploads/product/product_main_image/Vw1J84M9ttSx2AHc3MXsks90g4etHShfG8k39VYd.jpeg', 'sathee-silebaser-islamee-sahitz', 'সাথী সিলেবাসের ইসলামী সাহিত্য, sathee-silebaser-islamee-sahitz', 'সাথী সিলেবাসের ইসলামী সাহিত্য', 'সাথী সিলেবাসের ইসলামী সাহিত্য', NULL, 1, NULL, 'sathee-silebaser-islamee-sahitz', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(210, 'সাহিত্য রেজিস্টার খাতা', 'sahitz-rejistar-khata', 'sahitz-rejistar-khata', 0, 0, 150, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>আইসিএস পাবলিকেশন</p>', NULL, 'uploads/product/product_main_image/vzseUhuoDYQazanP0ggR1om1bTHI4xNWEkxGGBay.jpeg', 'sahitz-rejistar-khata', 'সাহিত্য রেজিস্টার খাতা, sahitz-rejistar-khata', 'সাহিত্য রেজিস্টার খাতা', 'সাহিত্য রেজিস্টার খাতা', NULL, 1, NULL, 'sahitz-rejistar-khata', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(211, 'সাহিত্য রেজিষ্টার খাতা', 'sahitz-rejishtar-khata', 'sahitz-rejishtar-khata', 0, 0, 150, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, 'uploads/product/product_main_image/AaGYZPD09Rc7eJ1OPz3G4uhcTc41I1dPXQyzLJbG.jpeg', 'sahitz-rejishtar-khata', 'সাহিত্য রেজিষ্টার খাতা, sahitz-rejishtar-khata', 'সাহিত্য রেজিষ্টার খাতা', 'সাহিত্য রেজিষ্টার খাতা', NULL, 1, NULL, 'sahitz-rejishtar-khata', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(212, 'ইসলাম ও অর্থনৈতিক চ্যালেঞ্জ', 'islam-oo-orthnoitik-czalenj', 'islam-oo-orthnoitik-czalenj', 0, 0, 240, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>বর্তমান বিশ্বে ইসলামী অর্থনৈতিক দৃষ্টিভঙ্গির অন্যতম শ্রেষ্ঠ প্রবক্তা হলেন এম. উমর চাপড়া। এই বইয়ে তিনি প্রচলিত ও অতীতে অনুসৃত বিভিন্ন অর্থনৈতিক দৃষ্টিভঙ্গির মজবুত একাডেমিক ভিত্তি প্রদান করেছেন। তিনি একদিকে পুঁজিবাদ ও সমাজতন্ত্রের অন্তনিহিত</p>', NULL, 'uploads/product/product_main_image/JMdekhzGTiSY1cfjOTyzsHBR895VPdBwUfUInxDs.jpeg', 'islam-oo-orthnoitik-czalenj', 'ইসলাম ও অর্থনৈতিক চ্যালেঞ্জ, islam-oo-orthnoitik-czalenj', 'ইসলাম ও অর্থনৈতিক চ্যালেঞ্জ', 'ইসলাম ও অর্থনৈতিক চ্যালেঞ্জ', NULL, 1, NULL, 'islam-oo-orthnoitik-czalenj', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(213, 'ডেস্ক ক্যালেন্ডার (ইংরেজি)', 'desk-kzalendar-ingreji', 'desk-kzalendar-ingreji', 0, 0, 50, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">ডেস্ক ক্যালেন্ডার (ইংরেজি)</span></span></p>', NULL, 'uploads/product/product_main_image/Y8IayfzntjLG6QyQG2YQlX0kZpkU0klLHHNrU67e.jpeg', 'desk-kzalendar-ingreji', 'ডেস্ক ক্যালেন্ডার (ইংরেজি), desk-kzalendar-ingreji', 'ডেস্ক ক্যালেন্ডার (ইংরেজি)', 'ডেস্ক ক্যালেন্ডার (ইংরেজি)', NULL, 1, NULL, 'desk-kzalendar-ingreji', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(214, 'হেরার জ্যোতি - ১', 'herar-jzoti-1', 'herar-jzoti-1', 0, 0, 168, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#c0392b\"><span style=\"font-size:72px\"><span style=\"background-color:#bdc3c7\">হেরার জ্যোতি - ১</span></span></span></p>', NULL, 'uploads/product/product_main_image/U6RKvFFXTrJVbZ8h3r57v1wyO0WvZk1YWIHTGVtC.jpeg', 'herar-jzoti-1', 'হেরার জ্যোতি - ১, herar-jzoti-1', 'হেরার জ্যোতি - ১', 'হেরার জ্যোতি - ১', NULL, 1, NULL, 'herar-jzoti-1', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(215, 'পাঠাগার রেজিষ্টার খাতা', 'pathagar-rejishtar-khata', 'pathagar-rejishtar-khata', 0, 0, 180, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">পাঠাগার রেজিষ্টার খাতা</span></p>', NULL, 'uploads/product/product_main_image/fNs9KArlduCNXxlcPsed6VTSiAez2IIlDX0Nt54E.jpeg', 'pathagar-rejishtar-khata', 'পাঠাগার রেজিষ্টার খাতা, pathagar-rejishtar-khata', 'পাঠাগার রেজিষ্টার খাতা', 'পাঠাগার রেজিষ্টার খাতা', NULL, 1, NULL, 'pathagar-rejishtar-khata', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(216, 'তরুণ তোমার জন্য', 'trun-tomar-jnz', 'trun-tomar-jnz', 0, 0, 42, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p><span style=\"font-size:72px\"><span style=\"background-color:#16a085\">আ জ </span><span style=\"background-color:#e74c3c\">ম</span><span style=\"background-color:#16a085\"> ও</span><span style=\"background-color:#e74c3c\">বা</span><span style=\"background-color:#16a085\">য়েদুল্লাহ</span></span></p>', NULL, 'uploads/product/product_main_image/dhNgWtG1tdEipDx621Za5hAb47Bb7dRag4H8xqoq.png', 'trun-tomar-jnz', 'তরুণ তোমার জন্য, trun-tomar-jnz', 'তরুণ তোমার জন্য', 'তরুণ তোমার জন্য', NULL, 1, NULL, 'trun-tomar-jnz', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(217, 'আল-কুরআনুল কারীম, সাবলীল বাংলা অনুবাদ', 'al-kuranul-kareem-sableel-bangla-onubad', 'al-kuranul-kareem-sableel-bangla-onubad', 0, 0, 250, 440, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"color:#f39c12\"><strong><span style=\"font-size:36px\"><span style=\"background-color:#000000\">আল-কুরআনুল কারীম</span></span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#f39c12\"><strong><span style=\"font-size:36px\"><span style=\"background-color:#000000\">সাবলীল বাংলা অনুবাদ</span></span></strong></span></p>', NULL, 'uploads/product/product_main_image/DkUIPshkVVyzeMNOPElbNv23NHCbHH8pyOT73yij.jpeg', 'al-kuranul-kareem-sableel-bangla-onubad', 'আল-কুরআনুল কারীম, সাবলীল বাংলা অনুবাদ, al-kuranul-kareem-sableel-bangla-onubad', 'আল-কুরআনুল কারীম, সাবলীল বাংলা অনুবাদ', 'আল-কুরআনুল কারীম, সাবলীল বাংলা অনুবাদ', NULL, 1, NULL, 'al-kuranul-kareem-sableel-bangla-onubad', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(218, 'এ+সংবর্ধনা প্যাকেজ', 'esngbrdhna-pzakej', 'esngbrdhna-pzakej', 0, 0, 189, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:72px\">এ+সংবর্ধনা প্যাকেজ</span></p>', NULL, 'uploads/product/product_main_image/HgAiNRyYKSmGfZ6yCG05agBtx468XLUAZs51JgdN.jpeg', 'esngbrdhna-pzakej', 'এ+সংবর্ধনা প্যাকেজ, esngbrdhna-pzakej', 'এ+সংবর্ধনা প্যাকেজ', 'এ+সংবর্ধনা প্যাকেজ', NULL, 1, NULL, 'esngbrdhna-pzakej', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(219, 'মগ - সদস্য সম্মেলন ২০২২', 'mg-sdsz-smmeln-2022', 'mg-sdsz-smmeln-2022', 0, 0, 290, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">মগ - সদস্য সম্মেলন ২০২২</span></p>', NULL, 'uploads/product/product_main_image/WaqT2yUcfHiTMz1k8OUJGJQHaVBDb6V8CrBRYRoL.jpeg', 'mg-sdsz-smmeln-2022', 'মগ - সদস্য সম্মেলন ২০২২, mg-sdsz-smmeln-2022', 'মগ - সদস্য সম্মেলন ২০২২', 'মগ - সদস্য সম্মেলন ২০২২', NULL, 1, NULL, 'mg-sdsz-smmeln-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(220, 'কলম দানি - সদস্য সম্মেলন', 'klm-dani-sdsz-smmeln', 'klm-dani-sdsz-smmeln', 0, 0, 225, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">কলম দানি - সদস্য সম্মেলন</span></p>', NULL, 'uploads/product/product_main_image/B8zc3jmvxiJvt6kDvZZkx0zBSmWaGbBIc3yZLBkt.jpeg', 'klm-dani-sdsz-smmeln', 'কলম দানি - সদস্য সম্মেলন, klm-dani-sdsz-smmeln', 'কলম দানি - সদস্য সম্মেলন', 'কলম দানি - সদস্য সম্মেলন', NULL, 1, NULL, 'klm-dani-sdsz-smmeln', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(221, 'দেয়াল ঘড়ি - সদস্য সম্মেলন-২০২২', 'deyal-ghri-sdsz-smmeln-2022', 'deyal-ghri-sdsz-smmeln-2022', 0, 0, 350, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">দেয়াল ঘড়ি - সদস্য সম্মেলন-২০২২</span></p>', NULL, 'uploads/product/product_main_image/xmqqhKYB5huXuhbtJ5wqOoNpF7khjZoQhuAx0tZY.jpeg', 'deyal-ghri-sdsz-smmeln-2022', 'দেয়াল ঘড়ি - সদস্য সম্মেলন-২০২২, deyal-ghri-sdsz-smmeln-2022', 'দেয়াল ঘড়ি - সদস্য সম্মেলন-২০২২', 'দেয়াল ঘড়ি - সদস্য সম্মেলন-২০২২', NULL, 1, NULL, 'deyal-ghri-sdsz-smmeln-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(222, 'পেপার ওয়েট - সদস্য সম্মেলন-২০২২', 'pepar-wet-sdsz-smmeln-2022', 'pepar-wet-sdsz-smmeln-2022', 0, 0, 120, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">পেপার ওয়েট - সদস্য সম্মেলন-২০২২</span></p>', NULL, 'uploads/product/product_main_image/N68pfzUauzRw1T5fmt6bQBb79GYWWY4NR51coIHX.jpeg', 'pepar-wet-sdsz-smmeln-2022', 'পেপার ওয়েট - সদস্য সম্মেলন-২০২২, pepar-wet-sdsz-smmeln-2022', 'পেপার ওয়েট - সদস্য সম্মেলন-২০২২', 'পেপার ওয়েট - সদস্য সম্মেলন-২০২২', NULL, 1, NULL, 'pepar-wet-sdsz-smmeln-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(223, 'কোর্ট পিন - সদস্য সম্মেলন-২০২২', 'kort-pin-sdsz-smmeln-2022', 'kort-pin-sdsz-smmeln-2022', 0, 0, 45, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:36px\">কোর্ট পিন - সদস্য সম্মেলন-২০২২</span></p>', NULL, 'uploads/product/product_main_image/pBD35okbZNzlFGQ3ib0XQ4sIJLf9HKke3IUK65TV.jpeg', 'kort-pin-sdsz-smmeln-2022', 'কোর্ট পিন - সদস্য সম্মেলন-২০২২, kort-pin-sdsz-smmeln-2022', 'কোর্ট পিন - সদস্য সম্মেলন-২০২২', 'কোর্ট পিন - সদস্য সম্মেলন-২০২২', NULL, 1, NULL, 'kort-pin-sdsz-smmeln-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(224, 'বুকমার্ক - সদস্য সম্মেলন-২০২২', 'bukmark-sdsz-smmeln-2022', 'bukmark-sdsz-smmeln-2022', 0, 0, 35, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">বুকমার্ক - সদস্য সম্মেলন-২০২২</span></p>', NULL, 'uploads/product/product_main_image/fZGuhl2z7HxOmgl4X2QFNeq0gC9vX2u8BsOeq5fJ.jpeg', 'bukmark-sdsz-smmeln-2022', 'বুকমার্ক - সদস্য সম্মেলন-২০২২, bukmark-sdsz-smmeln-2022', 'বুকমার্ক - সদস্য সম্মেলন-২০২২', 'বুকমার্ক - সদস্য সম্মেলন-২০২২', NULL, 1, NULL, 'bukmark-sdsz-smmeln-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(225, 'কলম - সদস্য সম্মেলন-২০২২', 'klm-sdsz-smmeln-2022', 'klm-sdsz-smmeln-2022', 0, 0, 40, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">কলম - সদস্য সম্মেলন-২০২২</span></p>', NULL, 'uploads/product/product_main_image/YWtpD0PWXu4fnYgrhYOkckh9XgTUl9NcMbxLmJLp.jpeg', 'klm-sdsz-smmeln-2022', 'কলম - সদস্য সম্মেলন-২০২২, klm-sdsz-smmeln-2022', 'কলম - সদস্য সম্মেলন-২০২২', 'কলম - সদস্য সম্মেলন-২০২২', NULL, 1, NULL, 'klm-sdsz-smmeln-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(226, 'রমজান বুক প্যাকেজ', 'rmjan-buk-pzakej', 'rmjan-buk-pzakej', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">মাহে রমদান বুক প্যাকেজ</span></p>', NULL, 'uploads/product/product_main_image/B803dEwrQqxjENdy4wI4A4LqCK953Rx1iqYr8Qjy.jpeg', 'rmjan-buk-pzakej', 'রমজান বুক প্যাকেজ, rmjan-buk-pzakej', 'রমজান বুক প্যাকেজ', 'রমজান বুক প্যাকেজ', NULL, 1, NULL, 'rmjan-buk-pzakej', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(227, 'টি-সার্ট সম্মেলনের-২০২২', 'ti-sart-smmelner-2022', 'ti-sart-smmelner-2022', 0, 0, 100, 20, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">সম্মেলনের-২০২২</span></p>', NULL, 'uploads/product/product_main_image/QpFpsC29gu3VLCAM24WpaiuSWOx9DVbrqHVZVL8b.jpeg', 'ti-sart-smmelner-2022', 'টি-সার্ট সম্মেলনের-২০২২, ti-sart-smmelner-2022', 'টি-সার্ট সম্মেলনের-২০২২', 'টি-সার্ট সম্মেলনের-২০২২', NULL, 1, NULL, 'ti-sart-smmelner-2022', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(228, 'টি-সার্ট (দাওয়াতে দ্বীন প্রতিদিন)', 'ti-sart-dawate-dween-prtidin', 'ti-sart-dawate-dween-prtidin', 0, 0, 300, 5, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">টি-সার্ট (দাওয়াতে দ্বীন প্রতিদিন)</span></p>', NULL, 'uploads/product/product_main_image/oiWvN1CDgxKrUgIscQPFiofVa38DNLPn6qZP4vXi.jpeg', 'ti-sart-dawate-dween-prtidin', 'টি-সার্ট (দাওয়াতে দ্বীন প্রতিদিন), ti-sart-dawate-dween-prtidin', 'টি-সার্ট (দাওয়াতে দ্বীন প্রতিদিন)', 'টি-সার্ট (দাওয়াতে দ্বীন প্রতিদিন)', NULL, 1, NULL, 'ti-sart-dawate-dween-prtidin', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(229, 'উপশাখা রেজিষ্টার খাতা ও কর্মী সিলেবাস', 'upshakha-rejishtar-khata-oo-krmee-silebas', 'upshakha-rejishtar-khata-oo-krmee-silebas', 0, 0, 0, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p>উপশাখা রেজিষ্টার খাতা ও কর্মী সিলেবাস</p>', NULL, 'uploads/product/product_main_image/AAoakg0Ny2oUKJMTHGk1UH7kDc57DuXQN4IpeSJW.jpeg', 'upshakha-rejishtar-khata-oo-krmee-silebas', 'উপশাখা রেজিষ্টার খাতা ও কর্মী সিলেবাস, upshakha-rejishtar-khata-oo-krmee-silebas', 'উপশাখা রেজিষ্টার খাতা ও কর্মী সিলেবাস', 'উপশাখা রেজিষ্টার খাতা ও কর্মী সিলেবাস', NULL, 1, NULL, 'upshakha-rejishtar-khata-oo-krmee-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(230, 'বুদ্ধিবৃত্তিক যুদ্ধ', 'buddhibrrittik-zuddh', 'buddhibrrittik-zuddh', 0, 0, 325, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">ড. মুহাম্মাদ নুরুল ইসলাম</span></p>', NULL, 'uploads/product/product_main_image/UKJ5ORziTSCgVcstyo2zvcfyTWQBEKrAFLMt9a0g.jpeg', 'buddhibrrittik-zuddh', 'বুদ্ধিবৃত্তিক যুদ্ধ, buddhibrrittik-zuddh', 'বুদ্ধিবৃত্তিক যুদ্ধ', 'বুদ্ধিবৃত্তিক যুদ্ধ', NULL, 1, NULL, 'buddhibrrittik-zuddh', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(231, 'স্বরনে মননে (শহীদ আব্দুল মালেক)', 'swrne-mnne-sheed-abdul-malek', 'swrne-mnne-sheed-abdul-malek', 0, 0, 140, 2, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:justify\"><span style=\"font-size:22px\">বিশ্বের সমস্ত শক্তি আল্লাহর দেওয়া জীবণ বিধানকে পৃথিবীর বুক থেকে মুছে ফেলার চেষ্টা করছে। আমরা মুসলমান যুবকরা বেঁচে থাকতে তা হতে পারে না। হয় বাতিলের উৎখাত করে সত্যের প্রতিষ্ঠা করবো, নচেৎ সে চেষ্টায় আমাদের জীবণ শেষ হয়ে যাবে। আপনারা আমায় প্রাণভরে দুআ করুন; জীবণের শেষ রক্তবিন্দু দিয়েও যেন বাতিলের বিরুদ্ধে সংগ্রাম করতে পারি। কারাগারের নিরন্ধ্র অন্ধকার, সরকারি জাঁতাকলের নিষ্পেষণ আর ফাঁসির মঞ্চও যেন আমায় ভড়কে দিতে না পারে।<br />\r\n(২৪/০২/১৯৬৬)</span><br />\r\n&nbsp;</p>', NULL, 'uploads/product/product_main_image/4WiGHp5qcAjOkYV4spEQm8JtKVESxD8JirTx0STO.jpeg', 'swrne-mnne-sheed-abdul-malek', 'স্বরনে মননে (শহীদ আব্দুল মালেক), swrne-mnne-sheed-abdul-malek', 'স্বরনে মননে (শহীদ আব্দুল মালেক)', 'স্বরনে মননে (শহীদ আব্দুল মালেক)', NULL, 1, NULL, 'swrne-mnne-sheed-abdul-malek', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(232, 'স্ট্যান্ড পতাকা ( জাতীয়)', 'stzand-ptaka-jateey', 'stzand-ptaka-jateey', 0, 0, 600, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">স্ট্যান্ড পতাকা ( জাতীয়)</span></p>', NULL, 'uploads/product/product_main_image/5rILLNyU5sOVn8QxRKHuTXHNYI8UlXMOOlWzYcWS.jpeg', 'stzand-ptaka-jateey', 'স্ট্যান্ড পতাকা ( জাতীয়), stzand-ptaka-jateey', 'স্ট্যান্ড পতাকা ( জাতীয়)', 'স্ট্যান্ড পতাকা ( জাতীয়)', NULL, 1, NULL, 'stzand-ptaka-jateey', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(233, 'স্কুল সিলেবাস', 'skul-silebas', 'skul-silebas', 0, 0, 2500, 1, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:72px\">৩৩টি পাঠ্যবই</span></p>', NULL, 'uploads/product/product_main_image/aKGqUBOoiSJNarXQfncsGPUEPrZBl8FXpVvpKFLp.jpeg', 'skul-silebas', 'স্কুল সিলেবাস, skul-silebas', 'স্কুল সিলেবাস', 'স্কুল সিলেবাস', NULL, 1, NULL, 'skul-silebas', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(234, 'Year Planner', 'year-planner', 'year-planner', 0, 0, 400, 0, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\"><span style=\"background-color:#2ecc71\">নববর্ষের শুভেচ্ছা-2024</span></span></p>', NULL, 'uploads/product/product_main_image/1fTCNx0gvZljfjXYle5T97hWqQkAfVFRONQSVKCq.jpeg', 'year-planner', 'Year Planner, year-planner', 'Year Planner', 'Year Planner', NULL, 1, NULL, 'year-planner', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06'),
(235, 'আধুনিক যুগের চ্যালেঞ্জ ও যুবসমাজ', 'adhunik-zuger-czalenj-oo-zubsmaj', 'adhunik-zuger-czalenj-oo-zubsmaj', 0, 0, 21, 10, 0, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, '<p style=\"text-align:center\"><span style=\"font-size:48px\">সাইয়েদ আবুল আলা মওদূদী</span></p>', NULL, 'uploads/product/product_main_image/OfRQ0583IiKbFuCfdHhfGLMepzzf1w1wQeXHMi92.jpeg', 'adhunik-zuger-czalenj-oo-zubsmaj', 'আধুনিক যুগের চ্যালেঞ্জ ও যুবসমাজ, adhunik-zuger-czalenj-oo-zubsmaj', 'আধুনিক যুগের চ্যালেঞ্জ ও যুবসমাজ', 'আধুনিক যুগের চ্যালেঞ্জ ও যুবসমাজ', NULL, 1, NULL, 'adhunik-zuger-czalenj-oo-zubsmaj', 1, '2023-11-16 04:42:06', '2023-11-16 04:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `qty` int UNSIGNED DEFAULT NULL,
  `type` enum('cart','wish_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cart',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `qty`, `type`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 9, 'cart', NULL, '655588971e768', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 6, 2, 6, 'cart', NULL, '655588971fa3a', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(3, 6, 3, 8, 'cart', NULL, '6555889720503', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, 6, 4, 8, 'cart', NULL, '655588972119c', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, 6, 5, 5, 'cart', NULL, '65558897219c5', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(6, 6, 1, 9, 'wish_list', NULL, '65558897225a4', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(7, 6, 2, 9, 'wish_list', NULL, '6555889722f36', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(8, 6, 3, 5, 'wish_list', NULL, '65558897236e4', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(9, 6, 4, 7, 'wish_list', NULL, '65558897242f4', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(10, 6, 5, 5, 'wish_list', NULL, '6555889724e77', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_discounts`
--

CREATE TABLE `product_discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `main_price` double DEFAULT NULL,
  `parcent_discount` double DEFAULT NULL COMMENT '5% discount',
  `flat_discount` double DEFAULT NULL COMMENT '20 tk discount',
  `expire_date` datetime DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `path` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `path`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'books_demo/1.jpg', NULL, '6555889358f06', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(2, 2, 'books_demo/2.jpg', NULL, '655588935a126', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(3, 3, 'books_demo/3.jpg', NULL, '655588935ac3c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(4, 4, 'books_demo/4.jpg', NULL, '655588935b3d3', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(5, 5, 'books_demo/5.jpg', NULL, '655588935be36', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(6, 6, 'books_demo/6.jpg', NULL, '655588935c78d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(7, 7, 'books_demo/7.jpg', NULL, '655588935ce03', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(8, 8, 'books_demo/8.jpg', NULL, '655588935db70', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(9, 9, 'books_demo/9.jpg', NULL, '655588935e4c7', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(10, 10, 'books_demo/10.jpg', NULL, '655588935ee5d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(11, 11, 'books_demo/11.jpg', NULL, '655588935f74f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(12, 12, 'books_demo/12.jpg', NULL, '655588935fddb', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_in_branches`
--

CREATE TABLE `product_in_branches` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `branch_id` bigint UNSIGNED DEFAULT NULL,
  `qty` bigint DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL COMMENT 'stock transfering date',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_offers`
--

CREATE TABLE `product_offers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` double NOT NULL DEFAULT '0' COMMENT 'will be calculated dynamically using the prices of linked products',
  `parcent_discount` int NOT NULL DEFAULT '0' COMMENT '5% discount',
  `flat_discount` int NOT NULL DEFAULT '0' COMMENT '30 tk discount',
  `total` double NOT NULL DEFAULT '0' COMMENT 'will be calculated dynamically using the prices of linked products',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'offer / package image',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'offer description',
  `additional_fields` longtext COLLATE utf8mb4_unicode_ci COMMENT 'custom fields and values',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_offer_products`
--

CREATE TABLE `product_offer_products` (
  `id` bigint UNSIGNED NOT NULL,
  `offer_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_product_translator`
--

CREATE TABLE `product_product_translator` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `product_translator_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_product_translator`
--

INSERT INTO `product_product_translator` (`id`, `product_id`, `product_translator_id`) VALUES
(1, 1, 2),
(2, 2, 8),
(3, 3, 8),
(4, 4, 8),
(5, 5, 12),
(6, 6, 9),
(7, 7, 13),
(8, 8, 9),
(9, 9, 2),
(10, 10, 14),
(11, 11, 14),
(12, 12, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_product_writer`
--

CREATE TABLE `product_product_writer` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `product_writer_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_product_writer`
--

INSERT INTO `product_product_writer` (`id`, `product_id`, `product_writer_id`) VALUES
(1, 1, 7),
(2, 2, 2),
(3, 3, 7),
(4, 4, 8),
(5, 5, 4),
(6, 6, 3),
(7, 7, 5),
(8, 8, 11),
(9, 9, 2),
(10, 10, 1),
(11, 11, 14),
(12, 12, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL COMMENT 'from customer table',
  `user_id` bigint UNSIGNED DEFAULT NULL COMMENT 'from user table',
  `order_id` bigint UNSIGNED DEFAULT NULL COMMENT 'related order id',
  `order_details_id` bigint UNSIGNED DEFAULT NULL COMMENT 'related order details id',
  `qty` int UNSIGNED DEFAULT NULL COMMENT 'returned qty',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'return description / cause',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_returns`
--

INSERT INTO `product_returns` (`id`, `product_id`, `customer_id`, `user_id`, `order_id`, `order_details_id`, `qty`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 4, 1, 1, 1, 'Defective product received', NULL, '655588972ddd4', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(2, 5, NULL, 4, 2, 5, 1, 'Size did not fit', NULL, '65558897301e1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(3, 4, NULL, 4, 3, 9, 1, 'Color mismatch', NULL, '6555889731912', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(4, 5, NULL, 4, 4, 13, 1, 'Changed my mind', NULL, '65558897329a1', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(5, 1, NULL, 4, 5, 17, 1, 'Item arrived damaged', NULL, '6555889733881', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(6, 2, NULL, 4, 6, 21, 1, 'Wrong item shipped', NULL, '6555889734780', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(7, 5, NULL, 4, 7, 25, 1, 'Poor quality', NULL, '6555889735695', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(8, 1, NULL, 4, 8, 29, 1, 'Not as described', NULL, '65558897366de', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(9, 5, NULL, 4, 9, 33, 1, 'Received duplicate item', NULL, '6555889737a37', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(10, 2, NULL, 4, 10, 37, 1, 'Difficult to assemble', NULL, '6555889738942', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(11, 1, NULL, 4, 11, 41, 1, 'Item missing parts', NULL, '65558897398c0', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(12, 1, NULL, 5, 12, 45, 1, 'Poor customer service', NULL, '655588973a75a', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(13, 1, NULL, 5, 13, 49, 1, 'Shipping delay', NULL, '655588973b6ee', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `review_description` text COLLATE utf8mb4_unicode_ci,
  `star` tinyint UNSIGNED DEFAULT NULL,
  `approve` tinyint NOT NULL DEFAULT '0',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `review_description`, `star`, `approve`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 7, 'Great product!', 4, 1, NULL, '65558893494f4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(2, 6, 4, 'Good quality', 2, 1, NULL, '655588934a3bc', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(3, 6, 4, 'Good value for money', 3, 0, NULL, '655588934acc9', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(4, 6, 1, 'Great product!', 3, 1, NULL, '655588934b4bc', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(5, 6, 9, 'Good quality', 5, 1, NULL, '655588934bc9d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(6, 6, 11, 'Good quality', 2, 1, NULL, '655588934c213', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(7, 6, 5, 'satisfied with the purchase', 2, 1, NULL, '655588934c80e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(8, 6, 3, 'Highly recommended', 2, 0, NULL, '655588934d230', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(9, 6, 8, 'Good quality', 3, 0, NULL, '655588934d85a', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(10, 6, 11, 'Highly recommended', 3, 1, NULL, '655588934e11f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(11, 6, 6, 'Highly recommended', 3, 1, NULL, '655588934e81e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(12, 6, 10, 'satisfied with the purchase', 5, 0, NULL, '655588934f12c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(13, 6, 12, 'satisfied with the purchase', 5, 1, NULL, '655588934f770', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(14, 6, 5, 'satisfied with the purchase', 2, 1, NULL, '655588934ff76', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(15, 6, 11, 'Highly recommended', 2, 0, NULL, '655588935051c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(16, 6, 10, 'Good quality', 3, 0, NULL, '6555889350dcf', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(17, 6, 1, 'Highly recommended', 5, 0, NULL, '6555889351468', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(18, 6, 10, 'Highly recommended', 1, 0, NULL, '6555889351c4e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(19, 6, 4, 'Good value for money', 5, 1, NULL, '65558893523c3', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(20, 6, 11, 'Highly recommended', 4, 0, NULL, '6555889352bd9', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_stock_logs`
--

CREATE TABLE `product_stock_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `qty` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'sale, production',
  `productions_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `product_return_id` bigint UNSIGNED DEFAULT NULL,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stock_logs`
--

INSERT INTO `product_stock_logs` (`id`, `product_id`, `qty`, `type`, `productions_id`, `order_id`, `product_return_id`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 492, 'production', 1, NULL, NULL, 3, '655588946edcc', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(2, 1, 500, 'production', 2, NULL, NULL, 3, '65558894742cb', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(3, 1, 351, 'production', 3, NULL, NULL, 3, '6555889478fc4', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(4, 2, 456, 'production', 4, NULL, NULL, 3, '655588947de51', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(5, 2, 400, 'production', 5, NULL, NULL, 3, '65558894830ef', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(6, 2, 457, 'production', 6, NULL, NULL, 3, '6555889487db2', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(7, 3, 431, 'production', 7, NULL, NULL, 3, '655588948cc58', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(8, 3, 450, 'production', 8, NULL, NULL, 3, '6555889491a78', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(9, 3, 494, 'production', 9, NULL, NULL, 3, '6555889496937', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(10, 4, 483, 'production', 10, NULL, NULL, 3, '655588949b678', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(11, 4, 451, 'production', 11, NULL, NULL, 3, '65558894a075b', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(12, 4, 385, 'production', 12, NULL, NULL, 3, '65558894a5153', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(13, 5, 459, 'production', 13, NULL, NULL, 3, '65558894a9a30', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(14, 5, 337, 'production', 14, NULL, NULL, 3, '65558894ae760', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(15, 5, 474, 'production', 15, NULL, NULL, 3, '65558894b6c76', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(16, 6, 345, 'production', 16, NULL, NULL, 3, '65558894be5f3', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(17, 6, 434, 'production', 17, NULL, NULL, 3, '65558894c2c43', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(18, 6, 476, 'production', 18, NULL, NULL, 3, '65558894c774e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(19, 7, 364, 'production', 19, NULL, NULL, 3, '65558894cc17b', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(20, 7, 422, 'production', 20, NULL, NULL, 3, '65558894d0d69', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(21, 7, 485, 'production', 21, NULL, NULL, 3, '65558894d5568', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(22, 8, 444, 'production', 22, NULL, NULL, 3, '65558894d9ff5', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(23, 8, 465, 'production', 23, NULL, NULL, 3, '65558894dea09', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(24, 8, 314, 'production', 24, NULL, NULL, 3, '65558894e32da', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(25, 9, 351, 'production', 25, NULL, NULL, 3, '65558894e7e0e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(26, 9, 432, 'production', 26, NULL, NULL, 3, '65558894ec99e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(27, 9, 457, 'production', 27, NULL, NULL, 3, '65558894f197c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(28, 10, 497, 'production', 28, NULL, NULL, 3, '6555889502039', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(29, 10, 493, 'production', 29, NULL, NULL, 3, '655588950703b', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(30, 10, 339, 'production', 30, NULL, NULL, 3, '655588950bc9c', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(31, 11, 377, 'production', 31, NULL, NULL, 3, '6555889510ac9', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(32, 11, 373, 'production', 32, NULL, NULL, 3, '65558895155b1', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(33, 11, 387, 'production', 33, NULL, NULL, 3, '655588951a36c', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(34, 12, 409, 'production', 34, NULL, NULL, 3, '655588951ec16', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(35, 12, 361, 'production', 35, NULL, NULL, 3, '6555889523776', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(36, 12, 333, 'production', 36, NULL, NULL, 3, '65558895284aa', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(37, 1, 15, 'sales', 1, 1, NULL, NULL, '655588956dcbc', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(38, 2, 17, 'sales', 4, 1, NULL, NULL, '655588957035a', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(39, 3, 18, 'sales', 7, 1, NULL, NULL, '6555889572851', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(40, 8, 15, 'sales', 22, 1, NULL, NULL, '655588957473c', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(41, 5, 10, 'sales', 13, 2, NULL, NULL, '655588957a5f2', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(42, 6, 10, 'sales', 16, 2, NULL, NULL, '655588957c5b3', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(43, 7, 13, 'sales', 19, 2, NULL, NULL, '655588957e585', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(44, 8, 19, 'sales', 22, 2, NULL, NULL, '6555889580cff', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(45, 4, 16, 'sales', 10, 3, NULL, NULL, '655588958628b', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(46, 7, 14, 'sales', 19, 3, NULL, NULL, '655588958834b', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(47, 8, 20, 'sales', 22, 3, NULL, NULL, '655588958a6ea', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(48, 9, 13, 'sales', 25, 3, NULL, NULL, '655588958cab8', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(49, 5, 13, 'sales', 13, 4, NULL, NULL, '65558895917b3', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(50, 7, 18, 'sales', 19, 4, NULL, NULL, '655588959392e', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(51, 8, 15, 'sales', 22, 4, NULL, NULL, '65558895956f3', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(52, 12, 16, 'sales', 34, 4, NULL, NULL, '6555889597e64', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(53, 1, 17, 'sales', 1, 5, NULL, NULL, '655588959d17e', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(54, 9, 12, 'sales', 25, 5, NULL, NULL, '655588959f318', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(55, 10, 15, 'sales', 28, 5, NULL, NULL, '65558895a166f', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(56, 12, 10, 'sales', 34, 5, NULL, NULL, '65558895a3634', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(57, 2, 19, 'sales', 4, 6, NULL, NULL, '65558895aad6e', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(58, 5, 16, 'sales', 13, 6, NULL, NULL, '65558895ad4d9', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(59, 6, 16, 'sales', 16, 6, NULL, NULL, '65558895b0208', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(60, 10, 10, 'sales', 28, 6, NULL, NULL, '65558895b56b1', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(61, 5, 18, 'sales', 13, 7, NULL, NULL, '65558895ba7db', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(62, 6, 16, 'sales', 16, 7, NULL, NULL, '65558895bd42d', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(63, 9, 18, 'sales', 25, 7, NULL, NULL, '65558895bf943', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(64, 11, 20, 'sales', 31, 7, NULL, NULL, '65558895c2082', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(65, 1, 16, 'sales', 1, 8, NULL, NULL, '65558895c744e', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(66, 4, 13, 'sales', 10, 8, NULL, NULL, '65558895c962a', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(67, 6, 13, 'sales', 16, 8, NULL, NULL, '65558895cbce4', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(68, 9, 11, 'sales', 25, 8, NULL, NULL, '65558895cdf58', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(69, 5, 14, 'sales', 13, 9, NULL, NULL, '65558895d2f82', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(70, 9, 12, 'sales', 25, 9, NULL, NULL, '65558895d5314', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(71, 10, 15, 'sales', 28, 9, NULL, NULL, '65558895d794f', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(72, 11, 11, 'sales', 31, 9, NULL, NULL, '65558895d9b52', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(73, 2, 13, 'sales', 4, 10, NULL, NULL, '65558895decf2', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(74, 8, 16, 'sales', 22, 10, NULL, NULL, '65558895e1619', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(75, 11, 14, 'sales', 31, 10, NULL, NULL, '65558895e3880', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(76, 12, 12, 'sales', 34, 10, NULL, NULL, '65558895e5aa3', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(77, 1, 15, 'sales', 1, 11, NULL, NULL, '65558895eb0b7', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(78, 2, 15, 'sales', 4, 11, NULL, NULL, '65558895ed5fe', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(79, 6, 16, 'sales', 16, 11, NULL, NULL, '65558895ef7a2', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(80, 12, 11, 'sales', 34, 11, NULL, NULL, '65558895f1a16', 1, '2023-11-16 03:12:21', '2023-11-16 03:12:21'),
(81, 1, 17, 'sales', 1, 12, NULL, NULL, '6555889602c6e', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(82, 3, 16, 'sales', 7, 12, NULL, NULL, '6555889604f2d', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(83, 9, 11, 'sales', 25, 12, NULL, NULL, '6555889607298', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(84, 11, 19, 'sales', 31, 12, NULL, NULL, '65558896092a8', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(85, 1, 20, 'sales', 1, 13, NULL, NULL, '655588960e926', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(86, 3, 20, 'sales', 7, 13, NULL, NULL, '6555889610d01', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(87, 4, 13, 'sales', 10, 13, NULL, NULL, '6555889612e26', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(88, 8, 15, 'sales', 22, 13, NULL, NULL, '6555889614ee1', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(89, 2, 19, 'sales', 4, 14, NULL, NULL, '655588961a81f', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(90, 7, 20, 'sales', 19, 14, NULL, NULL, '655588961ca11', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(91, 9, 14, 'sales', 25, 14, NULL, NULL, '655588961eb20', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(92, 10, 18, 'sales', 28, 14, NULL, NULL, '65558896210ff', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(93, 5, 15, 'sales', 13, 15, NULL, NULL, '6555889625ea6', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(94, 6, 17, 'sales', 16, 15, NULL, NULL, '6555889629183', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(95, 10, 17, 'sales', 28, 15, NULL, NULL, '655588962c640', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(96, 12, 13, 'sales', 34, 15, NULL, NULL, '655588962ecda', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(97, 2, 19, 'sales', 4, 16, NULL, NULL, '6555889634c14', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(98, 3, 10, 'sales', 7, 16, NULL, NULL, '6555889636def', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(99, 9, 18, 'sales', 25, 16, NULL, NULL, '6555889639654', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(100, 11, 12, 'sales', 31, 16, NULL, NULL, '655588963b912', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(101, 3, 20, 'sales', 7, 17, NULL, NULL, '65558896405c0', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(102, 8, 19, 'sales', 22, 17, NULL, NULL, '6555889642c0f', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(103, 9, 16, 'sales', 25, 17, NULL, NULL, '6555889645099', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(104, 10, 11, 'sales', 28, 17, NULL, NULL, '6555889647223', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(105, 1, 12, 'sales', 1, 18, NULL, NULL, '655588964c247', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(106, 2, 16, 'sales', 4, 18, NULL, NULL, '655588964e485', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(107, 7, 18, 'sales', 19, 18, NULL, NULL, '655588965051a', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(108, 10, 14, 'sales', 28, 18, NULL, NULL, '65558896527fb', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(109, 3, 15, 'sales', 7, 19, NULL, NULL, '6555889657dbb', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(110, 4, 15, 'sales', 10, 19, NULL, NULL, '6555889659e73', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(111, 5, 18, 'sales', 13, 19, NULL, NULL, '655588965c041', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(112, 8, 12, 'sales', 22, 19, NULL, NULL, '655588965e16c', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(113, 1, 13, 'sales', 1, 20, NULL, NULL, '65558896638df', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(114, 2, 16, 'sales', 4, 20, NULL, NULL, '6555889665953', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(115, 7, 20, 'sales', 19, 20, NULL, NULL, '6555889667f7b', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(116, 8, 10, 'sales', 22, 20, NULL, NULL, '655588966a4ed', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(117, 1, 20, 'sales', 1, 21, NULL, NULL, '655588966f41c', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(118, 7, 13, 'sales', 19, 21, NULL, NULL, '655588967187f', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(119, 10, 16, 'sales', 28, 21, NULL, NULL, '6555889673bd2', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(120, 11, 20, 'sales', 31, 21, NULL, NULL, '6555889675e50', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(121, 1, 11, 'sales', 1, 22, NULL, NULL, '655588967ae6c', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(122, 2, 11, 'sales', 4, 22, NULL, NULL, '655588967d15b', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(123, 8, 16, 'sales', 22, 22, NULL, NULL, '655588967f482', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(124, 10, 17, 'sales', 28, 22, NULL, NULL, '6555889681465', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(125, 3, 12, 'sales', 7, 23, NULL, NULL, '6555889686a11', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(126, 4, 18, 'sales', 10, 23, NULL, NULL, '6555889688ced', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(127, 8, 18, 'sales', 22, 23, NULL, NULL, '655588968ad23', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(128, 12, 13, 'sales', 34, 23, NULL, NULL, '655588968d0e2', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(129, 3, 11, 'sales', 7, 24, NULL, NULL, '65558896926fd', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(130, 4, 19, 'sales', 10, 24, NULL, NULL, '655588969541e', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(131, 7, 20, 'sales', 19, 24, NULL, NULL, '6555889697574', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(132, 11, 18, 'sales', 31, 24, NULL, NULL, '655588969a7d6', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(133, 1, 18, 'sales', 1, 25, NULL, NULL, '65558896a100e', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(134, 4, 18, 'sales', 10, 25, NULL, NULL, '65558896a3de8', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(135, 10, 13, 'sales', 28, 25, NULL, NULL, '65558896a60a8', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(136, 11, 11, 'sales', 31, 25, NULL, NULL, '65558896a866d', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(137, 1, 15, 'sales', 1, 26, NULL, NULL, '65558896ad8e0', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(138, 3, 11, 'sales', 7, 26, NULL, NULL, '65558896af8aa', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(139, 4, 20, 'sales', 10, 26, NULL, NULL, '65558896b5a95', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(140, 8, 14, 'sales', 22, 26, NULL, NULL, '65558896b80bb', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(141, 2, 14, 'sales', 4, 27, NULL, NULL, '65558896bd26e', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(142, 5, 11, 'sales', 13, 27, NULL, NULL, '65558896bf3d5', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(143, 6, 10, 'sales', 16, 27, NULL, NULL, '65558896c17c2', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(144, 7, 20, 'sales', 19, 27, NULL, NULL, '65558896c393f', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(145, 1, 11, 'sales', 1, 28, NULL, NULL, '65558896c8896', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(146, 8, 15, 'sales', 22, 28, NULL, NULL, '65558896cad4b', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(147, 9, 17, 'sales', 25, 28, NULL, NULL, '65558896cd254', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(148, 12, 14, 'sales', 34, 28, NULL, NULL, '65558896ceeda', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(149, 1, 11, 'sales', 1, 29, NULL, NULL, '65558896d4378', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(150, 4, 15, 'sales', 10, 29, NULL, NULL, '65558896d6481', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(151, 6, 17, 'sales', 16, 29, NULL, NULL, '65558896d8438', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(152, 9, 12, 'sales', 25, 29, NULL, NULL, '65558896da3c0', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(153, 6, 15, 'sales', 16, 30, NULL, NULL, '65558896df803', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(154, 8, 19, 'sales', 22, 30, NULL, NULL, '65558896e1a94', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(155, 9, 10, 'sales', 25, 30, NULL, NULL, '65558896e3be0', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(156, 10, 18, 'sales', 28, 30, NULL, NULL, '65558896e5ddf', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(157, 3, 14, 'sales', 7, 31, NULL, NULL, '65558896eb2be', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(158, 8, 18, 'sales', 22, 31, NULL, NULL, '65558896ed538', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(159, 11, 14, 'sales', 31, 31, NULL, NULL, '65558896ef51b', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(160, 12, 14, 'sales', 34, 31, NULL, NULL, '65558896f19fe', 1, '2023-11-16 03:12:22', '2023-11-16 03:12:22'),
(161, 2, 16, 'sales', 4, 32, NULL, NULL, '6555889702c29', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(162, 3, 13, 'sales', 7, 32, NULL, NULL, '65558897050d8', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(163, 6, 10, 'sales', 16, 32, NULL, NULL, '655588970747f', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(164, 7, 16, 'sales', 19, 32, NULL, NULL, '65558897098f9', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(165, 1, 20, 'sales', 1, 33, NULL, NULL, '655588970e7f5', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(166, 3, 18, 'sales', 7, 33, NULL, NULL, '6555889710934', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(167, 5, 12, 'sales', 13, 33, NULL, NULL, '655588971348f', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(168, 6, 19, 'sales', 16, 33, NULL, NULL, '6555889715800', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(169, 1, 1, 'return', NULL, 1, 1, NULL, '655588972eb1f', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(170, 5, 1, 'return', NULL, 2, 2, NULL, '6555889730e6b', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(171, 4, 1, 'return', NULL, 3, 3, NULL, '655588973209a', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(172, 5, 1, 'return', NULL, 4, 4, NULL, '6555889732f7b', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(173, 1, 1, 'return', NULL, 5, 5, NULL, '6555889733e5b', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(174, 2, 1, 'return', NULL, 6, 6, NULL, '6555889734d59', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(175, 5, 1, 'return', NULL, 7, 7, NULL, '6555889735c61', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(176, 1, 1, 'return', NULL, 8, 8, NULL, '65558897370ac', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(177, 5, 1, 'return', NULL, 9, 9, NULL, '655588973802f', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(178, 2, 1, 'return', NULL, 10, 10, NULL, '6555889738f45', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(179, 1, 1, 'return', NULL, 11, 11, NULL, '6555889739e4c', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(180, 1, 1, 'return', NULL, 12, 12, NULL, '655588973ad6b', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(181, 1, 1, 'return', NULL, 13, 13, NULL, '655588973bf4b', 1, '2023-11-16 03:12:23', '2023-11-16 03:12:23'),
(182, 1, 197, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(183, 2, 2105, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(184, 3, 17069, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(185, 4, 1874, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(186, 5, 10307, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(187, 6, 13098, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(188, 7, 6831, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(189, 8, 500, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(190, 9, 1642, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(191, 10, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(192, 11, 2618, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(193, 12, 3895, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(194, 13, 2534, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(195, 14, 631, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(196, 15, 6866, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(197, 16, 6053, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(198, 17, 472, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(199, 18, 2690, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(200, 19, 483, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(201, 20, 31, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(202, 21, 278, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(203, 22, 4, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(204, 23, 22, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(205, 24, 1007, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(206, 25, 2000, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(207, 26, 448, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(208, 27, 959, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(209, 28, 12, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(210, 29, 119, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(211, 30, 1399, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(212, 31, 504, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(213, 32, 1679, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(214, 33, 197125, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(215, 34, 2460, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(216, 35, 2250, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(217, 36, 2433, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(218, 37, 1400, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(219, 38, 1460, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(220, 39, 983, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(221, 40, 3943, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(222, 41, 6980, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(223, 42, 44, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(224, 43, 41, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(225, 44, 262, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(226, 45, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(227, 46, 5600, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(228, 47, 1963, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(229, 48, 221, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(230, 49, 1468, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(231, 50, 74, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(232, 51, 2925, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(233, 52, 2657, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(234, 53, 1786, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(235, 54, 2240, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(236, 55, 1108, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(237, 56, 292, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(238, 57, 2723, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(239, 58, 323, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(240, 59, 5, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(241, 60, 203, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(242, 61, 87, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(243, 62, 200, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(244, 63, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(245, 64, 620, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(246, 65, 3041, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(247, 66, 7475, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(248, 67, 3880, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(249, 68, 30389, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(250, 69, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(251, 70, 200, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(252, 71, 1867, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(253, 72, 51020, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(254, 73, 41000, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(255, 74, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(256, 75, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(257, 76, 5100, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(258, 77, 590, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(259, 78, 8767, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(260, 79, 445, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(261, 80, 4682, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(262, 81, 188, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(263, 82, 4234, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(264, 83, 2849, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(265, 84, 283, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(266, 85, 36, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(267, 86, 898, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(268, 87, 1224, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(269, 88, 3439, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(270, 89, 2269, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(271, 90, 477, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(272, 91, 16, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(273, 92, 27, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(274, 93, 888, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(275, 94, 124, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(276, 95, 747, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(277, 96, 590, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(278, 97, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(279, 98, 4958, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(280, 99, 3532, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(281, 100, 352, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(282, 101, 17, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(283, 102, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(284, 103, 32, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(285, 104, 33, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(286, 105, 13, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(287, 106, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(288, 107, 10, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(289, 108, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(290, 109, 539, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(291, 110, 583, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(292, 111, 2580, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(293, 112, 2, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(294, 113, 35, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(295, 114, 2844, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(296, 115, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(297, 116, 195, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(298, 117, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(299, 118, 1487, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(300, 119, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(301, 120, 42, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(302, 121, 154, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(303, 122, 10, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(304, 123, 60, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(305, 124, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(306, 125, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(307, 126, 6, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(308, 127, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(309, 128, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(310, 129, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(311, 130, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(312, 131, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(313, 132, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(314, 133, 13, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(315, 134, 18, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(316, 135, 32, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(317, 136, 25, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(318, 137, 32, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(319, 138, 494, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(320, 139, 2509, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(321, 140, 1833, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(322, 141, 1846, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(323, 142, 2322, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(324, 143, 2345, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(325, 144, 471, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(326, 145, 917, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(327, 146, 1913, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(328, 147, 1856, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(329, 148, 78, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(330, 149, 383, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(331, 150, 532, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(332, 151, 4818, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(333, 152, 790, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(334, 153, 405, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(335, 154, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(336, 155, 1555, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(337, 156, 991, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(338, 157, 4906, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(339, 158, 5236, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(340, 159, 200, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(341, 160, 1590, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(342, 161, 250, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(343, 162, 1720, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(344, 163, 3, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(345, 164, 84, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(346, 165, 172, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(347, 166, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(348, 167, 43, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(349, 168, 8, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(350, 169, 2451, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(351, 170, 1737, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(352, 171, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(353, 172, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(354, 173, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(355, 174, 156, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(356, 175, 85, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(357, 176, 1245, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(358, 177, 251, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(359, 178, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(360, 179, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(361, 180, 777, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(362, 181, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(363, 182, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(364, 183, 139, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(365, 184, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(366, 185, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(367, 186, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(368, 187, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(369, 188, 1, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(370, 189, 20, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(371, 190, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(372, 191, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(373, 192, 41, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(374, 193, 13, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(375, 194, 68, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(376, 195, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(377, 196, 36, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(378, 197, 199, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(379, 198, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(380, 199, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(381, 200, 1758, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(382, 201, 6050, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(383, 202, 5030, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(384, 203, 1702, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(385, 204, 999, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(386, 205, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(387, 206, 11, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(388, 207, 799, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(389, 208, 769, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(390, 209, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(391, 210, 3, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(392, 211, 1, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(393, 212, 266, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(394, 213, 502, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(395, 214, 663, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(396, 215, 68, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(397, 216, 7516, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(398, 217, 7129, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(399, 218, 400, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(400, 219, 6, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(401, 220, 25, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(402, 221, 10, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(403, 222, 170, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(404, 223, 90, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(405, 224, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(406, 225, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(407, 226, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(408, 227, 498, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(409, 228, 984, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(410, 229, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(411, 230, 979, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(412, 231, 768, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(413, 232, 50, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(414, 233, 30, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(415, 234, 191, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(416, 235, 4997, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(417, 1, 197, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(418, 2, 2105, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(419, 3, 17069, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(420, 4, 1874, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(421, 5, 10307, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(422, 6, 13098, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(423, 7, 6831, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(424, 8, 500, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(425, 9, 1642, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(426, 10, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(427, 11, 2618, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(428, 12, 3895, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(429, 13, 2534, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(430, 14, 631, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(431, 15, 6866, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(432, 16, 6053, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(433, 17, 472, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(434, 18, 2690, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(435, 19, 483, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(436, 20, 31, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(437, 21, 278, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(438, 22, 4, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(439, 23, 22, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(440, 24, 1007, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(441, 25, 2000, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(442, 26, 448, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(443, 27, 959, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(444, 28, 12, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(445, 29, 119, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(446, 30, 1399, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(447, 31, 504, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(448, 32, 1679, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(449, 33, 197125, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(450, 34, 2460, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(451, 35, 2250, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(452, 36, 2433, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(453, 37, 1400, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(454, 38, 1460, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(455, 39, 983, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(456, 40, 3943, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(457, 41, 6980, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(458, 42, 44, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(459, 43, 41, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(460, 44, 262, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(461, 45, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(462, 46, 5600, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(463, 47, 1963, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(464, 48, 221, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(465, 49, 1468, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(466, 50, 74, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(467, 51, 2925, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(468, 52, 2657, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(469, 53, 1786, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(470, 54, 2240, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(471, 55, 1108, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(472, 56, 292, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(473, 57, 2723, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(474, 58, 323, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(475, 59, 5, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(476, 60, 203, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(477, 61, 87, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(478, 62, 200, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(479, 63, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(480, 64, 620, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(481, 65, 3041, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(482, 66, 7475, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(483, 67, 3880, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(484, 68, 30389, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(485, 69, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(486, 70, 200, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(487, 71, 1867, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(488, 72, 51020, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(489, 73, 41000, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(490, 74, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(491, 75, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(492, 76, 5100, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(493, 77, 590, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(494, 78, 8767, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(495, 79, 445, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(496, 80, 4682, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(497, 81, 188, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(498, 82, 4234, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(499, 83, 2849, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(500, 84, 283, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(501, 85, 36, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(502, 86, 898, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(503, 87, 1224, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(504, 88, 3439, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(505, 89, 2269, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(506, 90, 477, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(507, 91, 16, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(508, 92, 27, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(509, 93, 888, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(510, 94, 124, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(511, 95, 747, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(512, 96, 590, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(513, 97, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(514, 98, 4958, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(515, 99, 3532, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(516, 100, 352, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(517, 101, 17, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(518, 102, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(519, 103, 32, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(520, 104, 33, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(521, 105, 13, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(522, 106, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(523, 107, 10, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(524, 108, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(525, 109, 539, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(526, 110, 583, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(527, 111, 2580, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(528, 112, 2, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(529, 113, 35, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(530, 114, 2844, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(531, 115, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(532, 116, 195, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(533, 117, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(534, 118, 1487, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(535, 119, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(536, 120, 42, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(537, 121, 154, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(538, 122, 10, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(539, 123, 60, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(540, 124, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(541, 125, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(542, 126, 6, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(543, 127, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(544, 128, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(545, 129, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(546, 130, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(547, 131, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(548, 132, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(549, 133, 13, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(550, 134, 18, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(551, 135, 32, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(552, 136, 25, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(553, 137, 32, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(554, 138, 494, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(555, 139, 2509, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(556, 140, 1833, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(557, 141, 1846, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(558, 142, 2322, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(559, 143, 2345, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(560, 144, 471, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(561, 145, 917, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(562, 146, 1913, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(563, 147, 1856, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(564, 148, 78, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(565, 149, 383, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(566, 150, 532, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(567, 151, 4818, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(568, 152, 790, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(569, 153, 405, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(570, 154, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(571, 155, 1555, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(572, 156, 991, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(573, 157, 4906, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(574, 158, 5236, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(575, 159, 200, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(576, 160, 1590, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(577, 161, 250, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(578, 162, 1720, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(579, 163, 3, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(580, 164, 84, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(581, 165, 172, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(582, 166, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(583, 167, 43, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(584, 168, 8, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(585, 169, 2451, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(586, 170, 1737, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(587, 171, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(588, 172, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(589, 173, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(590, 174, 156, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(591, 175, 85, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(592, 176, 1245, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(593, 177, 251, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(594, 178, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(595, 179, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(596, 180, 777, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(597, 181, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(598, 182, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(599, 183, 139, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(600, 184, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(601, 185, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(602, 186, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(603, 187, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(604, 188, 1, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(605, 189, 20, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(606, 190, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(607, 191, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(608, 192, 41, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(609, 193, 13, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(610, 194, 68, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(611, 195, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(612, 196, 36, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(613, 197, 199, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(614, 198, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(615, 199, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(616, 200, 1758, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(617, 201, 6050, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(618, 202, 5030, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(619, 203, 1702, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(620, 204, 999, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(621, 205, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(622, 206, 11, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(623, 207, 799, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(624, 208, 769, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(625, 209, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(626, 210, 3, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(627, 211, 1, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(628, 212, 266, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(629, 213, 502, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(630, 214, 663, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(631, 215, 68, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(632, 216, 7516, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(633, 217, 7129, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `product_stock_logs` (`id`, `product_id`, `qty`, `type`, `productions_id`, `order_id`, `product_return_id`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(634, 218, 400, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(635, 219, 6, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(636, 220, 25, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(637, 221, 10, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(638, 222, 170, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(639, 223, 90, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(640, 224, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(641, 225, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(642, 226, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(643, 227, 498, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(644, 228, 984, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(645, 229, 0, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(646, 230, 979, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(647, 231, 768, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(648, 232, 50, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(649, 233, 30, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(650, 234, 191, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(651, 235, 4997, 'init', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_translators`
--

CREATE TABLE `product_translators` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci COMMENT 'translator bio',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translators`
--

INSERT INTO `product_translators` (`id`, `name`, `designation`, `address`, `image`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Yusuf Ali', NULL, NULL, NULL, NULL, NULL, 'abdullah-yusuf-ali', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 'Muhammad Muhsin Khan', NULL, NULL, NULL, NULL, NULL, 'muhammad-muhsin-khan', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 'Saheeh International', NULL, NULL, NULL, NULL, NULL, 'saheeh-international', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 'Muhammad Taqi-ud-Din al-Hilali', NULL, NULL, NULL, NULL, NULL, 'muhammad-taqi-ud-din-al-hilali', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 'Mufti Taqi Usmani', NULL, NULL, NULL, NULL, NULL, 'mufti-taqi-usmani', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 'Dr. Muhammad Taqi-ud-Din al-Hilali', NULL, NULL, NULL, NULL, NULL, 'dr-muhammad-taqi-ud-din-al-hilali', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 'Yusuf Talal DeLorenzo', NULL, NULL, NULL, NULL, NULL, 'yusuf-talal-delorenzo', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(8, 'Muhammad Abdel-Haleem', NULL, NULL, NULL, NULL, NULL, 'muhammad-abdel-haleem', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(9, 'Abdul Majid Daryabadi', NULL, NULL, NULL, NULL, NULL, 'abdul-majid-daryabadi', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(10, 'Abdul Rahman Yusuf', NULL, NULL, NULL, NULL, NULL, 'abdul-rahman-yusuf', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_writers`
--

CREATE TABLE `product_writers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci COMMENT 'writer bio',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_writers`
--

INSERT INTO `product_writers` (`id`, `name`, `designation`, `address`, `image`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maulana Mufti Muhammad Waliullah Deobandi', NULL, NULL, NULL, NULL, NULL, 'maulana-mufti-muhammad-waliullah-deobandi', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 'Mufti Muhammad Ruhul Amin Kausari', NULL, NULL, NULL, NULL, NULL, 'mufti-muhammad-ruhul-amin-kausari', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 'Maulana Abdul Hamid Khan Bhashani', NULL, NULL, NULL, NULL, NULL, 'maulana-abdul-hamid-khan-bhashani', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 'Professor Ghulam Azam', NULL, NULL, NULL, NULL, NULL, 'professor-ghulam-azam', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 'Maulana Abul Kalam Azad', NULL, NULL, NULL, NULL, NULL, 'maulana-abul-kalam-azad', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 'Professor Muhammad Yunus', NULL, NULL, NULL, NULL, NULL, 'professor-muhammad-yunus', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 'Maulana Syed Abul Ala', NULL, NULL, NULL, NULL, NULL, 'maulana-syed-abul-ala', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(8, 'Maulana Abdul Latif Chowdhury', NULL, NULL, NULL, NULL, NULL, 'maulana-abdul-latif-chowdhury', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(9, 'Maulana Mohammad Ibrahim', NULL, NULL, NULL, NULL, NULL, 'maulana-mohammad-ibrahim', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(10, 'Maulana Abdur Rahim', NULL, NULL, NULL, NULL, NULL, 'maulana-abdur-rahim', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(11, 'Maulana Muhammad Qasim Nanotvi', NULL, NULL, NULL, NULL, NULL, 'maulana-muhammad-qasim-nanotvi', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(12, 'Mufti Maulana Fazlul Karim', NULL, NULL, NULL, NULL, NULL, 'mufti-maulana-fazlul-karim', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(13, 'Professor Dr. Muhammad Shahidullah', NULL, NULL, NULL, NULL, NULL, 'professor-dr-muhammad-shahidullah', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(14, 'Maulana Abdul Hai Laskar', NULL, NULL, NULL, NULL, NULL, 'maulana-abdul-hai-laskar', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(15, 'Maulana Muhiuddin Khan', NULL, NULL, NULL, NULL, NULL, 'maulana-muhiuddin-khan', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(16, 'Maulana Mohammad Zafar Iqbal', NULL, NULL, NULL, NULL, NULL, 'maulana-mohammad-zafar-iqbal', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(17, 'Maulana Muhammad Abdul Matin', NULL, NULL, NULL, NULL, NULL, 'maulana-muhammad-abdul-matin', 1, '2023-11-16 03:12:18', '2023-11-16 03:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_bindings`
--

CREATE TABLE `supplier_bindings` (
  `id` bigint UNSIGNED NOT NULL,
  `company_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `binding_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `total_book` int NOT NULL DEFAULT '0',
  `contact_date` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_bindings`
--

INSERT INTO `supplier_bindings` (`id`, `company_name`, `binding_cost`, `total_book`, `contact_date`, `address`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Joti Book Bingding', 10.00, 148, '2023-05-28', NULL, NULL, NULL, '6555889365a7c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(2, 'Al-Hera Binding', 18.00, 127, '2023-03-21', NULL, NULL, NULL, '6555889367530', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(3, 'parvej Binding', 10.00, 101, '2023-01-17', NULL, NULL, NULL, '6555889368763', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(4, 'Jahidul Calender Binding', 17.00, 113, '2023-01-17', NULL, NULL, NULL, '6555889369818', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(5, 'Jahid binding', 17.00, 143, '2023-01-07', NULL, NULL, NULL, '655588936a6ee', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(6, 'Masum binding', 13.00, 134, '2023-01-04', NULL, NULL, NULL, '655588936b6fb', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(7, 'Professor pablication', 13.00, 131, '2023-05-21', NULL, NULL, NULL, '655588936c888', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(8, 'Suganda', 12.00, 107, '2023-02-06', NULL, NULL, NULL, '655588936da16', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(9, 'Sashas', 20.00, 134, '2023-03-09', NULL, NULL, NULL, '655588936e99c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(10, 'colour criation', 12.00, 129, '2023-05-16', NULL, NULL, NULL, '655588936f872', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(11, 'Gardian', 17.00, 105, '2023-01-11', NULL, NULL, NULL, '6555889370610', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(12, 'Ali Bindings', 17.00, 150, '2023-04-01', NULL, NULL, NULL, '65558893713bb', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(13, 'Rakib Binding', 10.00, 149, '2023-03-04', NULL, NULL, NULL, '65558893720eb', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(14, 'Jinnat Calander Binding', 18.00, 144, '2023-05-25', NULL, NULL, NULL, '6555889373022', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_papers`
--

CREATE TABLE `supplier_papers` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` double(8,2) NOT NULL DEFAULT '0.00',
  `purchase_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_papers`
--

INSERT INTO `supplier_papers` (`id`, `supplier_name`, `stock`, `purchase_date`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fatah Paper House', 656.00, '2023-09-13', NULL, NULL, '6555889378e5d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(2, 'S Alam', 498.00, '2023-09-13', NULL, NULL, '655588937a252', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(3, 'Isan Paper House', 503.00, '2023-10-21', NULL, NULL, '655588937b47d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(4, 'Mahmud', 589.00, '2023-08-31', NULL, NULL, '655588937c226', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(5, 'Al Hamra Paper  House', 525.00, '2023-09-06', NULL, NULL, '655588937d3d6', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(6, 'Nasim Fayel', 606.00, '2023-10-06', NULL, NULL, '655588937e1c9', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(7, 'Payel Vi', 516.00, '2023-09-10', NULL, NULL, '655588937f0a8', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(8, 'Al kawser', 565.00, '2023-10-03', NULL, NULL, '655588937fe2a', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(9, 'Al Nasba', 527.00, '2023-08-29', NULL, NULL, '6555889380c17', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(10, 'Gardian', 619.00, '2023-08-10', NULL, NULL, '6555889382029', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(11, 'Mustafig treders', 473.00, '2023-09-05', NULL, NULL, '6555889382def', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(12, 'Abdul Jabber', 705.00, '2023-09-25', NULL, NULL, '6555889383b32', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(13, 'Universel treders', 538.00, '2023-10-12', NULL, NULL, '65558893848cd', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(14, 'Professor pablication', 505.00, '2023-08-25', NULL, NULL, '65558893853d7', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(15, 'Bismillah papers (banglabazer)', 632.00, '2023-10-16', NULL, NULL, '6555889386147', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(16, 'Dewan bazer chittagong union', 571.00, '2023-08-27', NULL, NULL, '655588938719d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(17, 'Suganda', 553.00, '2023-08-17', NULL, NULL, '6555889387fc8', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(18, 'Sashas', 710.00, '2023-08-18', NULL, NULL, '6555889388ddb', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(19, 'sarak nijame', 526.00, '2023-08-29', NULL, NULL, '6555889389cea', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(20, 'Upaher Galary', 714.00, '2023-08-14', NULL, NULL, '655588938abd5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(21, 'colour criation', 549.00, '2023-09-30', NULL, NULL, '655588938bf1e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(22, 'Maktabun Nasba', 457.00, '2023-10-02', NULL, NULL, '655588938ce3d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(23, 'Gardian', 624.00, '2023-08-20', NULL, NULL, '655588938ddcd', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(24, 'Shohag Trade', 453.00, '2023-09-23', NULL, NULL, '655588938ed11', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(25, 'Prassad pracationa', 637.00, '2023-08-12', NULL, NULL, '655588938fc12', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(26, 'Office Advance', 569.00, '2023-09-06', NULL, NULL, '6555889390d3d', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(27, 'IDEA COMMUNICATION', 627.00, '2023-09-06', NULL, NULL, '6555889391b8c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(28, 'Maria Key House', 562.00, '2023-10-14', NULL, NULL, '6555889392ab6', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(29, 'Mayer Doya Lamination', 644.00, '2023-08-24', NULL, NULL, '6555889393875', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(30, 'Gift Vely', 517.00, '2023-09-26', NULL, NULL, '65558893946de', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(31, 'BM Trading Corporation', 507.00, '2023-08-12', NULL, NULL, '65558893957ad', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(32, 'Pan Asiatic Pablication', 508.00, '2023-09-28', NULL, NULL, '6555889396a18', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(33, 'BIIT Pablication', 348.00, '2023-10-03', NULL, NULL, '655588939798b', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(34, 'Md Habibur Rahman', 678.00, '2023-10-03', NULL, NULL, '65558893988de', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(35, 'BIC', 651.00, '2023-08-11', NULL, NULL, '6555889399806', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(36, 'colour criation', 614.00, '2023-08-27', NULL, NULL, '655588939a927', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(37, 'Agig Paper House', 622.00, '2023-09-29', NULL, NULL, '655588939b8a5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(38, 'Ontara Plastic', 609.00, '2023-09-13', NULL, NULL, '655588939c651', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(39, 'ZR Printers', 629.00, '2023-08-15', NULL, NULL, '655588939d5db', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(40, 'MRI Association', 525.00, '2023-09-24', NULL, NULL, '655588939e413', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(41, 'Nur Lader', 565.00, '2023-10-04', NULL, NULL, '655588939f4d9', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(42, 'Gangi', 453.00, '2023-08-31', NULL, NULL, '65558893a0791', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(43, 'Mitaly Solution', 543.00, '2023-09-12', NULL, NULL, '65558893a1533', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(44, 'CMC Sarak', 483.00, '2023-10-07', NULL, NULL, '65558893a234c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(45, 'Paper View', 604.00, '2023-09-07', NULL, NULL, '65558893a314c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(46, 'Quelity Care', 490.00, '2023-09-30', NULL, NULL, '65558893a3f8c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:21'),
(47, 'Tech park Trust', 587.00, '2023-09-22', NULL, NULL, '65558893a4ff0', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20'),
(48, 'Mawlana Richarce', 632.00, '2023-10-02', NULL, NULL, '65558893a5f00', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_paper_stocks`
--

CREATE TABLE `supplier_paper_stocks` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_paper_id` bigint UNSIGNED DEFAULT NULL,
  `paper_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paper_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_paper` double(8,2) DEFAULT NULL,
  `cost_per_ream` double(8,2) DEFAULT NULL,
  `stock` double(8,2) NOT NULL DEFAULT '0.00',
  `purchase_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_paper_stocks`
--

INSERT INTO `supplier_paper_stocks` (`id`, `supplier_paper_id`, `paper_name`, `paper_type`, `cost_per_paper`, `cost_per_ream`, `stock`, `purchase_date`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bond paper', 'Bond', 1.00, 500.00, 153.00, '2023-08-17', '', NULL, '65558893ac0d2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(2, 1, 'Coated paper', 'Coated', 0.30, 150.00, 182.00, '2023-08-15', '', NULL, '65558893ace95', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(3, 1, 'Offset paper', 'Offset', 0.30, 150.00, 143.00, '2023-10-18', '', NULL, '65558893ad6e2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(4, 1, 'Recycled paper', 'Recycled', 1.50, 750.00, 178.00, '2023-09-13', '', NULL, '65558893adfa5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(5, 2, 'Bond paper', 'Bond', 0.50, 250.00, 102.00, '2023-09-24', '', NULL, '65558893b096f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(6, 2, 'Coated paper', 'Coated', 0.50, 250.00, 145.00, '2023-08-28', '', NULL, '65558893b1f18', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(7, 2, 'Offset paper', 'Offset', 1.50, 750.00, 118.00, '2023-09-01', '', NULL, '65558893b3d8e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(8, 2, 'Recycled paper', 'Recycled', 0.50, 250.00, 178.00, '2023-09-13', '', NULL, '65558893b4d75', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(9, 3, 'Bond paper', 'Bond', 0.30, 150.00, 100.00, '2023-08-31', '', NULL, '65558893b611f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(10, 3, 'Coated paper', 'Coated', 1.50, 750.00, 181.00, '2023-10-19', '', NULL, '65558893b6997', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(11, 3, 'Offset paper', 'Offset', 0.30, 150.00, 105.00, '2023-09-08', '', NULL, '65558893b7055', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(12, 3, 'Recycled paper', 'Recycled', 0.30, 150.00, 178.00, '2023-10-21', '', NULL, '65558893b7b0a', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(13, 4, 'Bond paper', 'Bond', 1.50, 750.00, 170.00, '2023-09-28', '', NULL, '65558893b8eb5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(14, 4, 'Coated paper', 'Coated', 1.50, 750.00, 102.00, '2023-08-31', '', NULL, '65558893b97f1', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(15, 4, 'Offset paper', 'Offset', 1.50, 750.00, 167.00, '2023-10-12', '', NULL, '65558893b9df5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(16, 4, 'Recycled paper', 'Recycled', 0.50, 250.00, 150.00, '2023-08-31', '', NULL, '65558893ba6e7', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(17, 5, 'Bond paper', 'Bond', 0.50, 250.00, 173.00, '2023-10-18', '', NULL, '65558893bbab6', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(18, 5, 'Coated paper', 'Coated', 0.30, 150.00, 126.00, '2023-08-08', '', NULL, '65558893bc782', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(19, 5, 'Offset paper', 'Offset', 0.50, 250.00, 141.00, '2023-09-06', '', NULL, '65558893bcdca', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(20, 5, 'Recycled paper', 'Recycled', 1.50, 750.00, 141.00, '2023-09-06', '', NULL, '65558893bd7ea', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(21, 6, 'Bond paper', 'Bond', 0.30, 150.00, 137.00, '2023-09-05', '', NULL, '65558893bec15', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(22, 6, 'Coated paper', 'Coated', 0.50, 250.00, 145.00, '2023-08-25', '', NULL, '65558893bf229', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(23, 6, 'Offset paper', 'Offset', 0.30, 150.00, 157.00, '2023-09-02', '', NULL, '65558893bf7ab', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(24, 6, 'Recycled paper', 'Recycled', 0.30, 150.00, 167.00, '2023-10-06', '', NULL, '65558893bfdd3', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(25, 7, 'Bond paper', 'Bond', 0.30, 150.00, 144.00, '2023-10-13', '', NULL, '65558893c12c4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(26, 7, 'Coated paper', 'Coated', 1.50, 750.00, 164.00, '2023-09-19', '', NULL, '65558893c193e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(27, 7, 'Offset paper', 'Offset', 0.50, 250.00, 180.00, '2023-10-24', '', NULL, '65558893c23d5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(28, 7, 'Recycled paper', 'Recycled', 0.30, 150.00, 152.00, '2023-09-10', '', NULL, '65558893c29d4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(29, 8, 'Bond paper', 'Bond', 1.00, 500.00, 111.00, '2023-10-13', '', NULL, '65558893c3ba8', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(30, 8, 'Coated paper', 'Coated', 1.00, 500.00, 134.00, '2023-09-17', '', NULL, '65558893c43f9', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(31, 8, 'Offset paper', 'Offset', 0.50, 250.00, 135.00, '2023-09-12', '', NULL, '65558893c49aa', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(32, 8, 'Recycled paper', 'Recycled', 1.50, 750.00, 185.00, '2023-10-03', '', NULL, '65558893c51b7', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(33, 9, 'Bond paper', 'Bond', 0.30, 150.00, 115.00, '2023-10-14', '', NULL, '65558893c63b2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(34, 9, 'Coated paper', 'Coated', 1.50, 750.00, 151.00, '2023-10-21', '', NULL, '65558893c6de7', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(35, 9, 'Offset paper', 'Offset', 1.00, 500.00, 184.00, '2023-10-03', '', NULL, '65558893c767e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(36, 9, 'Recycled paper', 'Recycled', 1.00, 500.00, 141.00, '2023-08-29', '', NULL, '65558893c7fc2', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(37, 10, 'Bond paper', 'Bond', 0.30, 150.00, 171.00, '2023-08-10', '', NULL, '65558893c9251', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(38, 10, 'Coated paper', 'Coated', 0.50, 250.00, 154.00, '2023-10-10', '', NULL, '65558893c986f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(39, 10, 'Offset paper', 'Offset', 0.50, 250.00, 183.00, '2023-09-24', '', NULL, '65558893ca169', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(40, 10, 'Recycled paper', 'Recycled', 0.50, 250.00, 111.00, '2023-08-10', '', NULL, '65558893ca7d1', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(41, 11, 'Bond paper', 'Bond', 1.50, 750.00, 107.00, '2023-08-19', '', NULL, '65558893cbb0e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(42, 11, 'Coated paper', 'Coated', 0.30, 150.00, 177.00, '2023-08-10', '', NULL, '65558893cc51f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(43, 11, 'Offset paper', 'Offset', 1.50, 750.00, 159.00, '2023-08-08', '', NULL, '65558893ccda4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(44, 11, 'Recycled paper', 'Recycled', 0.50, 250.00, 139.00, '2023-09-05', '', NULL, '65558893cd48a', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(45, 12, 'Bond paper', 'Bond', 0.50, 250.00, 168.00, '2023-10-25', '', NULL, '65558893ce7a9', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(46, 12, 'Coated paper', 'Coated', 0.30, 150.00, 155.00, '2023-10-22', '', NULL, '65558893cf0c4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(47, 12, 'Offset paper', 'Offset', 0.50, 250.00, 188.00, '2023-08-19', '', NULL, '65558893cf72f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(48, 12, 'Recycled paper', 'Recycled', 0.30, 150.00, 194.00, '2023-09-25', '', NULL, '65558893cff8c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(49, 13, 'Bond paper', 'Bond', 1.50, 750.00, 173.00, '2023-09-01', '', NULL, '65558893d15ea', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(50, 13, 'Coated paper', 'Coated', 0.50, 250.00, 193.00, '2023-10-19', '', NULL, '65558893d1d53', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(51, 13, 'Offset paper', 'Offset', 0.30, 150.00, 121.00, '2023-08-10', '', NULL, '65558893d2384', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(52, 13, 'Recycled paper', 'Recycled', 0.30, 150.00, 162.00, '2023-10-12', '', NULL, '65558893d2c84', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(53, 14, 'Bond paper', 'Bond', 0.50, 250.00, 168.00, '2023-09-04', '', NULL, '65558893d3ecc', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(54, 14, 'Coated paper', 'Coated', 0.50, 250.00, 148.00, '2023-09-14', '', NULL, '65558893d445f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(55, 14, 'Offset paper', 'Offset', 0.30, 150.00, 170.00, '2023-09-23', '', NULL, '65558893d4cfa', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(56, 14, 'Recycled paper', 'Recycled', 0.50, 250.00, 129.00, '2023-08-25', '', NULL, '65558893d53c4', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(57, 15, 'Bond paper', 'Bond', 0.30, 150.00, 138.00, '2023-09-28', '', NULL, '65558893d6a42', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(58, 15, 'Coated paper', 'Coated', 1.00, 500.00, 123.00, '2023-09-11', '', NULL, '65558893d7007', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(59, 15, 'Offset paper', 'Offset', 0.30, 150.00, 176.00, '2023-09-23', '', NULL, '65558893d78b8', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(60, 15, 'Recycled paper', 'Recycled', 0.30, 150.00, 195.00, '2023-10-16', '', NULL, '65558893d7ef7', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(61, 16, 'Bond paper', 'Bond', 0.50, 250.00, 103.00, '2023-10-23', '', NULL, '65558893d9105', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(62, 16, 'Coated paper', 'Coated', 0.50, 250.00, 198.00, '2023-10-15', '', NULL, '65558893d99e1', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(63, 16, 'Offset paper', 'Offset', 0.50, 250.00, 103.00, '2023-09-02', '', NULL, '65558893da071', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(64, 16, 'Recycled paper', 'Recycled', 1.50, 750.00, 167.00, '2023-08-27', '', NULL, '65558893daa6f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(65, 17, 'Bond paper', 'Bond', 0.50, 250.00, 153.00, '2023-08-28', '', NULL, '65558893dbe70', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(66, 17, 'Coated paper', 'Coated', 0.50, 250.00, 149.00, '2023-09-17', '', NULL, '65558893dc6ab', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(67, 17, 'Offset paper', 'Offset', 1.50, 750.00, 187.00, '2023-09-22', '', NULL, '65558893dccc5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(68, 17, 'Recycled paper', 'Recycled', 0.30, 150.00, 118.00, '2023-08-17', '', NULL, '65558893dd572', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(69, 18, 'Bond paper', 'Bond', 1.50, 750.00, 169.00, '2023-09-11', '', NULL, '65558893de803', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(70, 18, 'Coated paper', 'Coated', 1.00, 500.00, 156.00, '2023-09-16', '', NULL, '65558893dee71', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(71, 18, 'Offset paper', 'Offset', 1.00, 500.00, 199.00, '2023-09-08', '', NULL, '65558893df8d0', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(72, 18, 'Recycled paper', 'Recycled', 0.30, 150.00, 186.00, '2023-08-18', '', NULL, '65558893dff95', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(73, 19, 'Bond paper', 'Bond', 1.50, 750.00, 145.00, '2023-09-12', '', NULL, '65558893e12d1', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(74, 19, 'Coated paper', 'Coated', 1.00, 500.00, 135.00, '2023-09-14', '', NULL, '65558893e1bf5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(75, 19, 'Offset paper', 'Offset', 0.50, 250.00, 143.00, '2023-09-09', '', NULL, '65558893e24ef', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(76, 19, 'Recycled paper', 'Recycled', 1.50, 750.00, 169.00, '2023-08-29', '', NULL, '65558893e2b20', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(77, 20, 'Bond paper', 'Bond', 0.50, 250.00, 153.00, '2023-09-03', '', NULL, '65558893e3d13', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(78, 20, 'Coated paper', 'Coated', 1.50, 750.00, 188.00, '2023-08-25', '', NULL, '65558893e453e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(79, 20, 'Offset paper', 'Offset', 0.30, 150.00, 173.00, '2023-08-15', '', NULL, '65558893e4d4e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(80, 20, 'Recycled paper', 'Recycled', 0.30, 150.00, 200.00, '2023-08-14', '', NULL, '65558893e59aa', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(81, 21, 'Bond paper', 'Bond', 0.50, 250.00, 115.00, '2023-09-15', '', NULL, '65558893e6c17', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(82, 21, 'Coated paper', 'Coated', 0.30, 150.00, 185.00, '2023-09-08', '', NULL, '65558893e74a6', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(83, 21, 'Offset paper', 'Offset', 1.00, 500.00, 111.00, '2023-08-21', '', NULL, '65558893e7b11', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(84, 21, 'Recycled paper', 'Recycled', 0.50, 250.00, 138.00, '2023-09-30', '', NULL, '65558893e832e', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(85, 22, 'Bond paper', 'Bond', 0.50, 250.00, 101.00, '2023-10-26', '', NULL, '65558893e9713', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(86, 22, 'Coated paper', 'Coated', 1.50, 750.00, 159.00, '2023-09-08', '', NULL, '65558893e9e55', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(87, 22, 'Offset paper', 'Offset', 1.50, 750.00, 183.00, '2023-09-08', '', NULL, '65558893ea71c', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(88, 22, 'Recycled paper', 'Recycled', 1.50, 750.00, 111.00, '2023-10-02', '', NULL, '65558893eae00', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(89, 23, 'Bond paper', 'Bond', 0.50, 250.00, 164.00, '2023-10-13', '', NULL, '65558893ec3aa', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(90, 23, 'Coated paper', 'Coated', 1.50, 750.00, 166.00, '2023-09-16', '', NULL, '65558893ec99f', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(91, 23, 'Offset paper', 'Offset', 1.50, 750.00, 194.00, '2023-09-28', '', NULL, '65558893ed258', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(92, 23, 'Recycled paper', 'Recycled', 0.50, 250.00, 100.00, '2023-08-20', '', NULL, '65558893ed903', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(93, 24, 'Bond paper', 'Bond', 0.30, 150.00, 101.00, '2023-09-22', '', NULL, '65558893eedfc', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(94, 24, 'Coated paper', 'Coated', 1.50, 750.00, 165.00, '2023-10-20', '', NULL, '65558893ef5e5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(95, 24, 'Offset paper', 'Offset', 1.50, 750.00, 138.00, '2023-09-14', '', NULL, '65558893f01aa', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(96, 24, 'Recycled paper', 'Recycled', 0.30, 150.00, 114.00, '2023-09-23', '', NULL, '65558893f07d5', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(97, 25, 'Bond paper', 'Bond', 0.30, 150.00, 196.00, '2023-10-11', '', NULL, '65558893f1b3a', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(98, 25, 'Coated paper', 'Coated', 0.50, 250.00, 159.00, '2023-08-11', '', NULL, '65558893f24b8', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(99, 25, 'Offset paper', 'Offset', 0.30, 150.00, 163.00, '2023-08-19', '', NULL, '65558893f2d76', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(100, 25, 'Recycled paper', 'Recycled', 1.00, 500.00, 167.00, '2023-08-12', '', NULL, '65558893f3397', 1, '2023-11-16 03:12:19', '2023-11-16 03:12:19'),
(101, 26, 'Bond paper', 'Bond', 0.50, 250.00, 150.00, '2023-10-24', '', NULL, '6555889400787', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(102, 26, 'Coated paper', 'Coated', 1.50, 750.00, 165.00, '2023-08-25', '', NULL, '6555889401056', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(103, 26, 'Offset paper', 'Offset', 1.00, 500.00, 129.00, '2023-08-13', '', NULL, '6555889401709', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(104, 26, 'Recycled paper', 'Recycled', 1.00, 500.00, 125.00, '2023-09-06', '', NULL, '6555889401f6e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(105, 27, 'Bond paper', 'Bond', 0.50, 250.00, 139.00, '2023-08-25', '', NULL, '6555889403910', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(106, 27, 'Coated paper', 'Coated', 1.00, 500.00, 194.00, '2023-10-05', '', NULL, '6555889404004', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(107, 27, 'Offset paper', 'Offset', 1.00, 500.00, 187.00, '2023-10-22', '', NULL, '65558894048a5', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(108, 27, 'Recycled paper', 'Recycled', 1.00, 500.00, 147.00, '2023-09-06', '', NULL, '6555889404f48', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(109, 28, 'Bond paper', 'Bond', 1.00, 500.00, 117.00, '2023-09-16', '', NULL, '65558894062cc', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(110, 28, 'Coated paper', 'Coated', 1.00, 500.00, 100.00, '2023-09-11', '', NULL, '6555889406a57', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(111, 28, 'Offset paper', 'Offset', 1.50, 750.00, 178.00, '2023-09-03', '', NULL, '6555889406fd5', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(112, 28, 'Recycled paper', 'Recycled', 1.00, 500.00, 167.00, '2023-10-14', '', NULL, '6555889407825', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(113, 29, 'Bond paper', 'Bond', 0.50, 250.00, 174.00, '2023-09-11', '', NULL, '6555889408bbb', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(114, 29, 'Coated paper', 'Coated', 0.50, 250.00, 195.00, '2023-10-02', '', NULL, '6555889409190', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(115, 29, 'Offset paper', 'Offset', 1.50, 750.00, 137.00, '2023-10-22', '', NULL, '6555889409a12', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(116, 29, 'Recycled paper', 'Recycled', 1.00, 500.00, 138.00, '2023-08-24', '', NULL, '655588940a288', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(117, 30, 'Bond paper', 'Bond', 1.00, 500.00, 154.00, '2023-10-12', '', NULL, '655588940ba81', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(118, 30, 'Coated paper', 'Coated', 1.00, 500.00, 177.00, '2023-10-03', '', NULL, '655588940c081', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(119, 30, 'Offset paper', 'Offset', 1.50, 750.00, 167.00, '2023-10-19', '', NULL, '655588940c8e4', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(120, 30, 'Recycled paper', 'Recycled', 0.30, 150.00, 122.00, '2023-09-26', '', NULL, '655588940ce78', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(121, 31, 'Bond paper', 'Bond', 0.50, 250.00, 174.00, '2023-09-10', '', NULL, '655588940e711', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(122, 31, 'Coated paper', 'Coated', 1.50, 750.00, 146.00, '2023-10-03', '', NULL, '655588940ed01', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(123, 31, 'Offset paper', 'Offset', 0.30, 150.00, 112.00, '2023-10-05', '', NULL, '655588940f790', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(124, 31, 'Recycled paper', 'Recycled', 0.50, 250.00, 127.00, '2023-08-12', '', NULL, '655588940fd9d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(125, 32, 'Bond paper', 'Bond', 1.50, 750.00, 100.00, '2023-08-24', '', NULL, '65558894110dc', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(126, 32, 'Coated paper', 'Coated', 0.30, 150.00, 140.00, '2023-08-20', '', NULL, '6555889411a31', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(127, 32, 'Offset paper', 'Offset', 0.50, 250.00, 191.00, '2023-09-09', '', NULL, '6555889412042', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(128, 32, 'Recycled paper', 'Recycled', 0.50, 250.00, 191.00, '2023-09-28', '', NULL, '65558894129a1', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(129, 33, 'Bond paper', 'Bond', 1.50, 750.00, 101.00, '2023-08-23', '', NULL, '6555889413d60', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(130, 33, 'Coated paper', 'Coated', 0.30, 150.00, 110.00, '2023-10-11', '', NULL, '6555889414396', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(131, 33, 'Offset paper', 'Offset', 0.50, 250.00, 113.00, '2023-09-22', '', NULL, '6555889414b23', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(132, 33, 'Recycled paper', 'Recycled', 1.50, 750.00, 117.00, '2023-10-03', '', NULL, '65558894153a0', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(133, 34, 'Bond paper', 'Bond', 0.30, 150.00, 152.00, '2023-08-19', '', NULL, '6555889416774', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(134, 34, 'Coated paper', 'Coated', 0.30, 150.00, 199.00, '2023-10-03', '', NULL, '6555889416d71', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(135, 34, 'Offset paper', 'Offset', 0.50, 250.00, 130.00, '2023-09-26', '', NULL, '655588941763d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(136, 34, 'Recycled paper', 'Recycled', 0.50, 250.00, 197.00, '2023-10-03', '', NULL, '6555889417fc7', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(137, 35, 'Bond paper', 'Bond', 1.00, 500.00, 190.00, '2023-10-02', '', NULL, '6555889419474', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(138, 35, 'Coated paper', 'Coated', 1.50, 750.00, 108.00, '2023-08-15', '', NULL, '6555889419c0b', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(139, 35, 'Offset paper', 'Offset', 1.50, 750.00, 186.00, '2023-08-20', '', NULL, '655588941a477', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(140, 35, 'Recycled paper', 'Recycled', 1.50, 750.00, 167.00, '2023-08-11', '', NULL, '655588941ab63', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(141, 36, 'Bond paper', 'Bond', 1.00, 500.00, 117.00, '2023-10-10', '', NULL, '655588941bd47', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(142, 36, 'Coated paper', 'Coated', 0.50, 250.00, 179.00, '2023-09-20', '', NULL, '655588941c583', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(143, 36, 'Offset paper', 'Offset', 0.30, 150.00, 158.00, '2023-08-12', '', NULL, '655588941da43', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(144, 36, 'Recycled paper', 'Recycled', 1.50, 750.00, 160.00, '2023-08-27', '', NULL, '655588941e32e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(145, 37, 'Bond paper', 'Bond', 1.00, 500.00, 161.00, '2023-08-11', '', NULL, '655588941f911', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(146, 37, 'Coated paper', 'Coated', 0.30, 150.00, 152.00, '2023-09-01', '', NULL, '65558894201ef', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(147, 37, 'Offset paper', 'Offset', 1.00, 500.00, 116.00, '2023-09-22', '', NULL, '6555889420827', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(148, 37, 'Recycled paper', 'Recycled', 0.30, 150.00, 193.00, '2023-09-29', '', NULL, '65558894210ee', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(149, 38, 'Bond paper', 'Bond', 1.50, 750.00, 196.00, '2023-10-27', '', NULL, '6555889422538', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(150, 38, 'Coated paper', 'Coated', 1.00, 500.00, 121.00, '2023-10-15', '', NULL, '6555889423284', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(151, 38, 'Offset paper', 'Offset', 0.30, 150.00, 158.00, '2023-10-14', '', NULL, '6555889423890', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(152, 38, 'Recycled paper', 'Recycled', 0.30, 150.00, 134.00, '2023-09-13', '', NULL, '65558894240a7', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(153, 39, 'Bond paper', 'Bond', 0.50, 250.00, 191.00, '2023-09-29', '', NULL, '655588942546b', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(154, 39, 'Coated paper', 'Coated', 0.30, 150.00, 122.00, '2023-09-09', '', NULL, '6555889425cc0', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(155, 39, 'Offset paper', 'Offset', 0.50, 250.00, 142.00, '2023-10-10', '', NULL, '6555889426394', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(156, 39, 'Recycled paper', 'Recycled', 1.50, 750.00, 174.00, '2023-08-15', '', NULL, '6555889426ba8', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(157, 40, 'Bond paper', 'Bond', 1.00, 500.00, 191.00, '2023-08-21', '', NULL, '6555889427dab', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(158, 40, 'Coated paper', 'Coated', 0.50, 250.00, 193.00, '2023-09-21', '', NULL, '6555889428404', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(159, 40, 'Offset paper', 'Offset', 0.30, 150.00, 128.00, '2023-08-26', '', NULL, '6555889428c4a', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(160, 40, 'Recycled paper', 'Recycled', 1.50, 750.00, 137.00, '2023-09-24', '', NULL, '6555889429220', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(161, 41, 'Bond paper', 'Bond', 0.50, 250.00, 140.00, '2023-10-16', '', NULL, '655588942a5ec', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(162, 41, 'Coated paper', 'Coated', 1.50, 750.00, 130.00, '2023-08-24', '', NULL, '655588942ae7d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(163, 41, 'Offset paper', 'Offset', 0.50, 250.00, 154.00, '2023-09-21', '', NULL, '655588942b546', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(164, 41, 'Recycled paper', 'Recycled', 1.00, 500.00, 141.00, '2023-10-04', '', NULL, '655588942bdc2', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(165, 42, 'Bond paper', 'Bond', 0.30, 150.00, 100.00, '2023-08-28', '', NULL, '655588942d4ff', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(166, 42, 'Coated paper', 'Coated', 0.50, 250.00, 137.00, '2023-10-10', '', NULL, '655588942dbdb', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(167, 42, 'Offset paper', 'Offset', 1.50, 750.00, 155.00, '2023-09-28', '', NULL, '655588942e16b', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(168, 42, 'Recycled paper', 'Recycled', 1.00, 500.00, 151.00, '2023-08-31', '', NULL, '655588942eb3c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(169, 43, 'Bond paper', 'Bond', 1.00, 500.00, 134.00, '2023-10-12', '', NULL, '655588942fd74', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(170, 43, 'Coated paper', 'Coated', 1.00, 500.00, 179.00, '2023-08-08', '', NULL, '65558894303a8', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(171, 43, 'Offset paper', 'Offset', 0.30, 150.00, 186.00, '2023-08-13', '', NULL, '6555889430c0c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(172, 43, 'Recycled paper', 'Recycled', 1.50, 750.00, 112.00, '2023-09-12', '', NULL, '6555889431297', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(173, 44, 'Bond paper', 'Bond', 1.50, 750.00, 154.00, '2023-10-15', '', NULL, '65558894325b9', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(174, 44, 'Coated paper', 'Coated', 0.50, 250.00, 119.00, '2023-09-15', '', NULL, '6555889432e5d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(175, 44, 'Offset paper', 'Offset', 1.50, 750.00, 160.00, '2023-09-04', '', NULL, '6555889433922', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(176, 44, 'Recycled paper', 'Recycled', 1.50, 750.00, 159.00, '2023-10-07', '', NULL, '6555889433f17', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(177, 45, 'Bond paper', 'Bond', 0.50, 250.00, 116.00, '2023-10-22', '', NULL, '6555889435136', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(178, 45, 'Coated paper', 'Coated', 1.50, 750.00, 159.00, '2023-08-18', '', NULL, '6555889435965', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(179, 45, 'Offset paper', 'Offset', 1.00, 500.00, 176.00, '2023-10-04', '', NULL, '6555889435f32', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(180, 45, 'Recycled paper', 'Recycled', 0.30, 150.00, 153.00, '2023-09-07', '', NULL, '6555889436785', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(181, 46, 'Bond paper', 'Bond', 0.50, 250.00, 133.00, '2023-08-31', '', NULL, '6555889437e21', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(182, 46, 'Coated paper', 'Coated', 0.30, 150.00, 110.00, '2023-09-01', '', NULL, '6555889438624', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(183, 46, 'Offset paper', 'Offset', 1.00, 500.00, 161.00, '2023-09-26', '', NULL, '6555889438e20', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(184, 46, 'Recycled paper', 'Recycled', 1.50, 750.00, 200.00, '2023-09-30', '', NULL, '6555889439666', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(185, 47, 'Bond paper', 'Bond', 1.00, 500.00, 140.00, '2023-08-14', '', NULL, '655588943aab4', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(186, 47, 'Coated paper', 'Coated', 0.50, 250.00, 172.00, '2023-10-19', '', NULL, '655588943b0b3', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(187, 47, 'Offset paper', 'Offset', 1.50, 750.00, 145.00, '2023-10-08', '', NULL, '655588943b9a7', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(188, 47, 'Recycled paper', 'Recycled', 0.30, 150.00, 196.00, '2023-09-22', '', NULL, '655588943bf6e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(189, 48, 'Bond paper', 'Bond', 1.00, 500.00, 185.00, '2023-09-07', '', NULL, '655588943d55e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(190, 48, 'Coated paper', 'Coated', 0.30, 150.00, 199.00, '2023-09-15', '', NULL, '655588943dd0c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(191, 48, 'Offset paper', 'Offset', 1.00, 500.00, 133.00, '2023-09-25', '', NULL, '655588943e583', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(192, 48, 'Recycled paper', 'Recycled', 0.50, 250.00, 115.00, '2023-10-02', '', NULL, '655588943ebe1', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_prints`
--

CREATE TABLE `supplier_prints` (
  `id` bigint UNSIGNED NOT NULL,
  `company_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_cost` double(8,2) DEFAULT NULL,
  `total_page` int DEFAULT NULL,
  `per_page_cost` double(8,2) DEFAULT NULL,
  `contact_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_prints`
--

INSERT INTO `supplier_prints` (`id`, `company_name`, `print_cost`, `total_page`, `per_page_cost`, `contact_date`, `description`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arshad Production', 192.00, 349, 2.00, '2023-01-09', NULL, NULL, '6555889444f4e', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(2, 'Hoque Printers', 153.00, 382, 1.00, '2023-04-04', NULL, NULL, '6555889446400', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(3, 'Diganta printers', 100.00, 454, 1.00, '2023-01-05', NULL, NULL, '65558894474a5', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(4, 'Professor pablication', 184.00, 385, 2.00, '2023-01-05', NULL, NULL, '6555889448494', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(5, 'Brahmaputra Printers', 116.00, 322, 1.00, '2023-04-28', NULL, NULL, '6555889449318', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(6, 'colour criation', 116.00, 322, 2.00, '2023-03-03', NULL, NULL, '655588944a185', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(7, 'Gardian', 199.00, 339, 1.00, '2023-01-04', NULL, NULL, '655588944b0c6', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(8, 'Sijan Printing', 194.00, 384, 1.00, '2023-04-01', NULL, NULL, '655588944bf9c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(9, 'BIIT Pablication', 197.00, 291, 2.00, '2023-02-23', NULL, NULL, '655588944cfb2', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(10, 'BIC', 120.00, 495, 2.00, '2023-02-08', NULL, NULL, '655588944de5c', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(11, 'colour criation', 123.00, 259, 2.00, '2023-01-19', NULL, NULL, '655588944f085', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(12, 'ZR Printers', 190.00, 497, 1.00, '2023-05-06', NULL, NULL, '655588944fefd', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(13, 'The Imprint Press', 185.00, 340, 2.00, '2023-02-25', NULL, NULL, '6555889450d0d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(14, 'Al falah Printing Press', 158.00, 304, 2.00, '2023-04-20', NULL, NULL, '6555889451d16', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(15, 'Rafiq onubad', 160.00, 195, 2.00, '2023-03-18', NULL, NULL, '6555889452c2d', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20'),
(16, 'Rafiq onubad', 177.00, 207, 2.00, '2023-03-09', NULL, NULL, '6555889453a72', 1, '2023-11-16 03:12:20', '2023-11-16 03:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `table_update_logs`
--

CREATE TABLE `table_update_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `table_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_col_id` bigint UNSIGNED DEFAULT NULL COMMENT 'eg: from products table id:100 price is updted',
  `table_col_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'eg: price collumn',
  `previous_value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'eg: only small values, price prev value: 120. updated value 150',
  `creator` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_name` text COLLATE utf8mb4_unicode_ci,
  `mobile_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'avatar.png',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `telegram_id`, `telegram_name`, `mobile_number`, `photo`, `email`, `email_verified_at`, `password`, `slug`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super', 'admin', 'super admin', '812239513', NULL, '016123', 'avatar.png', 'superadmin@gmail.com', NULL, '$2y$10$pi1m7lDJ2t0fpStZ5XMXzujKnnjtoJOs6NFSuxy.XGeWXUNKxXZUS', '14112774', 1, NULL, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(2, 'mr', 'admin', 'admin', '664398905', NULL, '016124', 'avatar.png', 'admin@gmail.com', NULL, '$2y$10$58o./HcbbNFu6DG9LpLtmOo1CxkLwCHI96mQXnFk0naIU.xWYolsW', '94125951', 1, NULL, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(3, 'mr', 'production', 'production', '812239513', NULL, '016125678', 'avatar.png', 'production@gmail.com', NULL, '$2y$10$OxEPxZAq73VbfKds25u.gOZj/byZZEQ1rH3VYrRZMzt0LN5hOjAcW', '70035264', 1, NULL, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(4, 'mr', 'accountant', 'accountant', '812239513', NULL, '0161256789', 'avatar.png', 'accountant@gmail.com', NULL, '$2y$10$mPDFLGZkNZl8xPdzu4EesO5wijQh5Awk58DvK1KeuAlaKY7drdyxq', '43845745', 1, NULL, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(5, 'mr', 'branch1', 'branch1', '812239513', NULL, '016125', 'avatar.png', 'branch1@gmail.com', NULL, '$2y$10$Ujmz5J30Fi2J/oEUSVbob.0himZJjWljdOw2PT2ST860M8gFAGoj6', '11551103', 1, NULL, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(6, 'mr', 'branch2', 'branch2', '812239513', NULL, '0161256', 'avatar.png', 'branch2@gmail.com', NULL, '$2y$10$8Abb2vzp/xkhnrfVm9cyve3ErEHcTguPe5vN9zM07AP7riK1Try9m', '61663661', 1, NULL, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(7, 'mr', 'user', 'user', '812239513', NULL, '01612567', 'avatar.png', 'user@gmail.com', NULL, '$2y$10$GmA2Uo.u5oJ2kczvmhW8rO0bqeILCRnNM06hER40yt9cTTrFS5Qo2', '93976047', 1, NULL, '2023-11-16 03:12:18', '2023-11-16 03:12:18'),
(18, 'ঢাকা মহানগর উত্তর', NULL, '1', NULL, NULL, NULL, 'uploads/users/efI5x9YeEt1ZeulHDdkcS0ftxSQlRhiDczrkgYft.jpeg', NULL, NULL, '$2y$10$HX0nXRoVDg1CcG6r4vqu8uVfSy6LTXxO4HL6qW4TMwuoNQ3V.xYuy', '424183578', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(19, 'ঢাকা মহানগর দক্ষিণ', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ropdSvWigt3MF2RhhQHdwuepewirDEQmko/UPHwfeNO/ZBA4wj7HW', '963191044', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(20, 'ঢাকা মহানগর পূর্ব', NULL, '3', NULL, NULL, NULL, 'uploads/users/HG8Gfkkc5OX7lwiLcbxl8ExbatCQo1JsTgFHRtL5.jpeg', NULL, NULL, '$2y$10$ZpkQnDaIhUu1eoLNOMIc8.RJrGRFNq6ypOuj5bno0hsiHIlpiDBly', '768203793', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(21, 'ঢাকা মহানগর পশ্চিম', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0jlZcIkBeopth/F64MpBU.EdTIfiWNfsftYIURoY.4c9RYgoJf2ru', '258218902', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(22, 'ঢাকা বিশ্ববিদ্যালয়', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$c6keuz5soKf/WB8Z7plUQ.qufvrkPAKf6RPY/o0RpMPJouWYCJHbi', '570221843', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(23, 'আইডিয়াল ইন্সটিটিউট', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bq5c0sBaUyRLgwj3SLfYuOly5jC1M5E9n9D.GoPy5yVmZKoJeL1/q', '757231979', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(24, 'জগন্নাথ বিশ্ববিদ্যালয়', NULL, '7', NULL, NULL, NULL, 'uploads/users/59afYpn4e4Ums8E4Cdq7OCHq8he2iFf6SUdQoLqw.jpeg', NULL, NULL, '$2y$10$hXFGSVJ.xZ89SHQldywCKex5WTbC137WS0OPtIbe1QEllNkNoTIeC', '434249302', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(25, 'প্রাইভেট ইউনিভার্সিটি', NULL, '8', NULL, NULL, NULL, 'uploads/users/pdBXWfwGfQ9oLAQTrySFJMOGQRUqEMlNydTun1fm.jpeg', NULL, NULL, '$2y$10$9D3Pki2qV4pqqzIYB/zmtOfujVBce2Audyzzh969ibPN70Vj0TT6O', '550256872', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(26, 'ঢাকা কলেজ', NULL, '9', NULL, NULL, NULL, 'uploads/users/UOifqw2RABPkdOxwGTnUgSn8FeER6PeLoAkaR6jl.jpeg', NULL, NULL, '$2y$10$J5exq30VaoZNFRMei9TuM.3vvoxT/wOTtNcMHJenmjBGNwSNOncvG', '466269545', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(27, 'সায়েন্স একাডেমি', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$B9xTR0PwYP8gD044nhDJS.Wm1uIt5d1U4U/memmR2trq2TWl9pHra', '594277944', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(28, 'গাজীপুর মহানগর ', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qHXF0j5o./cZ0lHXvJY.Z.bQHNA5gygPBQ84lGONLRaHbbo5lr7nO', '755286030', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(29, 'ঢাকা জেলা উত্তর', NULL, '12', NULL, NULL, NULL, 'uploads/users/qgjSXdNQYH8THunX9c3S607YnTK4su9Azp8hSlpM.jpeg', NULL, NULL, '$2y$10$pO6sG2.HeupWJbTaP0wzsuuW1t4sWjS57Q7XJR9rLsW.lqjIVVYx6', '742296710', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(30, 'ঢাকা জেলা দক্ষিণ', NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$J9qrt7oDUuJ.s3oe2kBca.72dC59Y7V6ifRGvrQPXNCkd6qWgu9Ay', '308302738', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(31, 'মানিকগঞ্জ জেলা', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1ES5ef5uvCCuecUhZkfs7OQO30W3yxZaEIAfLWBiQLX5Ofey9OZxS', '102319542', 1, NULL, '2023-11-17 21:27:17', '2023-11-17 21:27:17'),
(32, 'ডুয়েট', NULL, '15', NULL, NULL, NULL, 'uploads/users/y9gsYeISL7pqMJYTZnXK8mBBkv6hoEQcUQdauPLt.jpeg', NULL, NULL, '$2y$10$u9M5hapm3BVvxl6TNxBt1e6TUCSkqP5/t1lRwjgVa9Wa8IdwpU8su', '698326744', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(33, 'গাজীপুর জেলা', NULL, '16', NULL, NULL, NULL, 'uploads/users/rqNehDBgtnV6lnDeCg7cbDvSkVhg36CmlFCwQMDm.png', NULL, NULL, '$2y$10$nIBj0FkaiGqLEY6Vw0pEaO3DjPujOkkbimdUCVL0v0LmTGjmcrWam', '943336087', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(34, 'নারায়ণগঞ্জ মহানগর', NULL, '17', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IVHVKNBvMlaD5X/r/J/Aoe2penhy7BbD6seA1ogzE1qi0NvE38DTy', '181343068', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(35, 'নারায়ণগঞ্জ জেলা', NULL, '18', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wl/2rD1E.C5KBOOd2IiYyuGJ1pHE3q3./b0rVXmEjyEF0cTfprTYG', '842352782', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(36, 'মুন্সিগঞ্জ জেলা', NULL, '19', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mfXrnls10VaXoEGwdsaqh.ndRPOgU66Og0jOvhY138nrbnEN7pbQe', '671362141', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(37, 'নরসিংদী শহর', NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$i9X1i0HEVjAk4NzHR2Y9t.gTAn4/u/e9U9rgeRFa2Q9jveL3k4jJC', '405377405', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(38, 'নরসিংদী জেলা', NULL, '21', NULL, NULL, NULL, 'uploads/users/MwMUwNjuYNQTh7jLiCKWKq62cIuh1BpctkPa4SZD.jpeg', NULL, NULL, '$2y$10$IQpqlNLkWehLgzVdPLEin..Hrs7/5xdhUE27hPAZB1UhRQ7S6IL0.', '654388967', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(39, 'টাঙ্গাইল শহর', NULL, '22', NULL, NULL, NULL, 'uploads/users/CMH3UXVBs5bSUfmpXpMADlKYkwCODcAc8ZSlVgEq.jpeg', NULL, NULL, '$2y$10$O0JTYAKrrst0ef/4uPpVx.bVBfPuVfZVY.Zlh.c41DDYMDhmzDjsa', '736398310', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(40, 'টাঙ্গাইল জেলা', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nMOvNEzgy93JM6PHDNqSg.QXRWGV7l5L68Pg30lU3aAlfXjbImTR2', '882409898', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(41, 'বাকৃবি', NULL, '24', NULL, NULL, NULL, 'uploads/users/6bQJaPqLfolyrxy1tXfRWqL6VqcrKOt8ofe8PU81.jpeg', NULL, NULL, '$2y$10$TL.O04idjr9RRCL6UOaO6.tuAs0gsSd6aBBGUSYNJFgnmJKD2FQpW', '498416835', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(42, 'মোমেনশাহী মহানগর', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KPMLyC/M0Ioi9NJinV63F.DuUapSSd4AXke2tKYizFrZBfzMCrpRC', '182423538', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(43, 'মোমেনশাহী জেলা উত্তর', NULL, '26', NULL, NULL, NULL, 'uploads/users/32ufO1MOiIlP74H9MBWRSJCZTOlMrTLr8u1KAGvZ.jpeg', NULL, NULL, '$2y$10$6ixT6cBBAXwWdxhb5AEJ4OIwwhRHD.LCYo.yGqpFyYk2pwrmhdHLu', '984435139', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(44, 'মোমেনশাহী জেলা দক্ষিণ', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$COk3eSCz5rP1tHwW3cEx7Op8qj0nKcybzafQJSZ31IUglJVEtREeS', '953447571', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(45, 'কিশোরগঞ্জ জেলা উত্তর', NULL, '28', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OH2v0vih.tZ/WMdEFvRUU.pVxEueTfwHhH9j9Q2wNw9b6ToFc8uM.', '659453116', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(46, 'কিশোরগঞ্জ জেলা দক্ষিণ', NULL, '29', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tyJhNScciausj0J7Q1HdEOIfTs0LzmVijwxRhKiRAaTpYeW8eT31O', '456464829', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(47, 'নেত্রকোনা জেলা', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RqiY5WxthwRxNq4NZj9NoO6hfttOJZF6s7ooAw2qD/QVvt.fnL9/S', '588473843', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(48, 'জামালপুর জেলা', NULL, '31', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MTUHQa0XUVANy2c/snD6P.oNK0PDCufrW25jP1zdNH.LxIau660dm', '143489227', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(49, 'শেরপুর জেলা', NULL, '32', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JhWn3H36t5JFnNzZmuWlKO2iBJTl2E9YhmzlOq6iwKZwjUvQtOehi', '641492376', 1, NULL, '2023-11-17 21:27:18', '2023-11-17 21:27:18'),
(50, 'ফরিদপুর শহর', NULL, '33', NULL, NULL, NULL, 'uploads/users/eTIfyYJklasxeZ0yYmRqGbNG5xbu3thKVQ2KdYbP.jpeg', NULL, NULL, '$2y$10$.pzQJAiKfYAvfg.S69AvL.DcrsKI.2LA5Mqt4ueQWryyT6DO/rKkq', '626505002', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(51, 'ফরিদপুর জেলা', NULL, '34', NULL, NULL, NULL, 'uploads/users/RZ0HzOGEfDn9oC1qsoEVJwZA6DU3pyO1t8k2v0Sc.jpeg', NULL, NULL, '$2y$10$9cyAgLKiXSUwyrWx4./RqOYk1e2PqBaVNx4sXvmFnKOW1STwHcaGe', '392516730', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(52, 'রাজবাড়ী জেলা', NULL, '35', NULL, NULL, NULL, 'uploads/users/R030JHI3CnVwiXFOrggPHwCWz6g7x3PJbjbhKYQr.jpeg', NULL, NULL, '$2y$10$uBjHW6PS.Ml8MZfPq.4VoOnOCpfL5rRGjkNheE5X3.AIMkYu/7gRu', '965529171', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(53, 'গোপালগঞ্জ জেলা', NULL, '36', NULL, NULL, NULL, 'uploads/users/xiwj325tmpludbUiSqObNfy4pog83wy3FPTewxQ7.png', NULL, NULL, '$2y$10$U/ADhls63F2xnbIPEKgJG.KpfhzCGcmKU8YbvqVfxIPm7CiAlxdcS', '232534871', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(54, 'মাদারীপুর জেলা', NULL, '37', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OXZIAhJ803n8M3kQbBbt/.HODZ2xGZjk6JWbHzvDmauK8fZTWCjZy', '559544983', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(55, 'শরীয়তপুর জেলা', NULL, '38', NULL, NULL, NULL, 'uploads/users/9GYvhPbbKIKfd37ljCtVFe3MvdCMMUp6fEKq8Egk.jpeg', NULL, NULL, '$2y$10$PrffOHAlPVsZwSLtbTPa8uhMhhzellgdrJnaoSxmDRErrCV/ushnO', '567554125', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(56, 'চট্টগ্রাম মহানগর উত্তর', NULL, '39', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pfzJ5s9IddIXYt5fvFSOTu5ZCiZdQqvPkPvTZ8TxIlbOzVHyB2rrm', '924568435', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(57, 'চট্টগ্রাম মহানগর দক্ষিণ', NULL, '40', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CJRbF4OvNupEaVXWErZjXusjAQ6i2v/uqIXfzv9V//cUtBeUXaTOa', '900571118', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(58, 'চট্টগ্রাম বিশ্ববিদ্যালয়', NULL, '41', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DtPU1JZbjJWDufEfdoFtau4xSx2dlN2vJLNcfme7LY1P/yf/K2mcO', '920585050', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(59, 'আইআইইউসি', NULL, '42', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qNTwD/Dw/ZGg5QGGR7BTfes7aJ/hYCzdGcU7AQqqTXUZKwN.Yiuxa', '951598763', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(60, 'চট্টগ্রাম জেলা উত্তর', NULL, '43', NULL, NULL, NULL, 'uploads/users/bD605GHIgbcpVgTL7I7NtjRtqcoKFkjcu9dC0Muo.jpeg', NULL, NULL, '$2y$10$s6NK1zP.TXZxM3WP9UfboetPo7XfosmwHo127E3iOvIsLCLlkmt.O', '865604565', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(61, 'চট্টগ্রাম জেলা দক্ষিণ', NULL, '44', NULL, NULL, NULL, 'uploads/users/BxTW0AZeIKwbAlplyg0IztFDF5rl52KA9xgXSQtW.png', NULL, NULL, '$2y$10$VOjMYNWfCnpBjmk1HXRPGuA6ULetQIaFOxnOgQPhHBTV3ajBW6pQe', '349615309', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(62, 'চট্টগ্রাম জেলা পূর্ব', NULL, '45', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QiJ9V9EbON2pU3R4D2Xbs.h.J1YuQGv4E4kaJEYy.aVcJFEHsgYLq', '905623665', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(63, 'রাঙ্গামাটি পার্বত্য জেলা', NULL, '46', NULL, NULL, NULL, 'uploads/users/ylRvNMRSmwXF2rgKT6yLfnlXkwnrC4n13z4yAvUs.jpeg', NULL, NULL, '$2y$10$GkhKhoNFnyIOBkT3FKcPq.2nZ3hY2Pm6uvhyMRpTIcJESzpzvuMQK', '469638196', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(64, 'খাগড়াছড়ি পার্বত্য জেলা', NULL, '47', NULL, NULL, NULL, 'uploads/users/wTt5g8xKJU5Hk7Z0aUMPxNLO5bLBBG2dDy982BIn.jpeg', NULL, NULL, '$2y$10$GKoPOUiroFgfWuwhOx69b.47YNryzIIYIewo70AVLyMKCdbHLmagS', '731648615', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(65, 'বান্দরবান পার্বত্য জেলা', NULL, '48', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WGEsQ5HTCbUzm8YjGZLd5eU2uL442FltSCvc6h85tzHQ1kDimBmvC', '996655922', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(66, 'কক্সবাজার শহর', NULL, '49', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Wxe.8ZYyV4OI4Y/OXNdAyOxw.nisNWOcpOk2KH1pscYO6DVzvsPAO', '930665073', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(67, 'কক্সবাজার জেলা', NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bsMNndOUCsZ.tOnlyN8wJegs1rPzE6aSo1zz/o7LFXcdmJtF4ixqu', '903679601', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(68, 'কুমিল্লা মহানগর', NULL, '51', NULL, NULL, NULL, 'uploads/users/jaW1SbTdqEcePGNSkOIhE7F5GxbtemUkV4Ckqjry.heic', NULL, NULL, '$2y$10$HipPAoOL/qIzc49HgRrQduVoBPWRa/PyXh7Kpn9sc0VLCOS5iNme.', '617686770', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(69, 'কুমিল্লা বিশ্ববিদ্যালয় ', NULL, '52', NULL, NULL, NULL, 'uploads/users/awRwVnyU8xg0nJBsAIl3WidFrVQf9ColoxQVilqp.jpeg', NULL, NULL, '$2y$10$LAW04CIcDHSpU1iYj7ky.uE9sxZICoME8ngx116yGN.gN0r5fqIQe', '631697732', 1, NULL, '2023-11-17 21:27:19', '2023-11-17 21:27:19'),
(70, 'কুমিল্লা জেলা উত্তর', NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$079mpw3AWK3rYK8UoQfsD./CBVzCM3C.J4FTlwdGTRQEvElIF1XeO', '970703244', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(71, 'কুমিল্লা জেলা দক্ষিণ', NULL, '54', NULL, NULL, NULL, 'uploads/users/j44h4Yp2S8iNLnwCvhQiSAQpDUQXjSiNOmx3iwVj.jpeg', NULL, NULL, '$2y$10$4J5ZsyvGERwAjOaVMPOoC.ctr1K9PQoyC4Qtr6r0iH/NYroR0X4ga', '425715075', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(72, 'কুমিল্লা জেলা পশ্চিম', NULL, '55', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hOdl2FMwGgPP7xPQZQm3iOqU7lY066G0ro2XeoVk6WrycYXImWiru', '326725264', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(73, 'ব্রাহ্মণবাড়িয়া জেলা', NULL, '56', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/Cjc35fhqUc8QEDY09GkPejr9mteF.4wMyTLvQww6rWERHR2oMbG.', '372738576', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(74, 'চাঁদপুর শহর', NULL, '57', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zzKISVl7hp5g1vEdg450we7aX2fNF88lwxDS5c7LmwUp9JnwD.CT6', '657748508', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(75, 'চাঁদপুর জেলা', NULL, '58', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JvLOWDnx4lJ3etg6vPPfyOaS74HIOZ3mTFKygJmZ0FwI841MS8EKa', '859757658', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(76, 'নোয়াখালী শহর', NULL, '59', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$m9rkSrpSJIm8eQhTvkqLnOj8ibplbViLXV1C7RVc0V04Mr5v/h5tu', '171764528', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(77, 'নোয়াখালী জেলা উত্তর', NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$X/zAF/V0gxRye1F37MdRcOCe3Q/pkJyZvVtSEJU.l7Qu3hlreRfYi', '376775124', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(78, 'নোয়াখালী জেলা দক্ষিণ', NULL, '61', NULL, NULL, NULL, 'uploads/users/uV8MYSswDOLz2ByQ8yTXBvA8vSQohcPEYsA02Hme.jpeg', NULL, NULL, '$2y$10$TlJl0Ed7WTbTZzUDS.AsiuMhOuAwnH545cg82dDxNcZ8XSsNHU9dC', '800781368', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(79, 'ফেনী শহর', NULL, '62', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YNAOTBEpHImDg2YkfOjyAOOTBwpUgrO23lgbcOno4wQhELFbd1RM6', '942794874', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(80, 'ফেনী জেলা', NULL, '63', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CARHWu9SK3qZH5cgc/B3RuesF132XsWakRjHRvDfo5CFEJywNoxQm', '159804513', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(81, 'লক্ষ্মীপুর শহর', NULL, '64', NULL, NULL, NULL, 'uploads/users/sHmI9eXCte0aUXxwVHWMnM7hjkJDmMioJqFJkXNs.jpeg', NULL, NULL, '$2y$10$96c9gYSYKTBt1rwYXRQlseIlfzR0PGcJsyZejBTmqrCV3STcvL6CK', '355812530', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(82, 'লক্ষ্মীপুর জেলা', NULL, '65', NULL, NULL, NULL, 'uploads/users/o5Lgs5m3P9IBsriVNzkm9LnAmVBUFvUEGBKupU3w.jpeg', NULL, NULL, '$2y$10$7K6UzbqW9nZnT2mz75hfo.gFYLxZiMF1fHL/GjvZ/jHDRXP6K.u4e', '327828596', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(83, 'সিলেট মহানগর', NULL, '66', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/.H97nO9r/eU7sLE3Rg8yeIAqD/OTyVwXYlxPMiKQ3nZHuy4iLRgC', '259833478', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(84, 'শাবিপ্রবি', NULL, '67', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1c.eFnQuE3g5yZn3rl60juVwoNlSbuWMJW0zAON9en/kqWwnnav3W', '110843992', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(85, 'সিলেট জেলা পূর্ব', NULL, '68', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7XIv1mBaMMBTFufykx07w.1GVAkNRtQt3ojOiqX.yIsfoj4YI8Vy2', '413853259', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(86, 'সিলেট জেলা পশ্চিম', NULL, '69', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DQ3U9.B6ACsvEX7ZZM.IuOb1AaadavyEeOJ4Wg/k4LW2FBC2OIpUG', '521866535', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(87, 'সুনামগঞ্জ জেলা', NULL, '70', NULL, NULL, NULL, 'uploads/users/IF1NS4dcnurf4eyvW28lUgaNnMI394BKVWNl72nt.jpeg', NULL, NULL, '$2y$10$l46wEuIb30NdufGVA0RSFuxpAp9TAluhol7F.kILlXwrYP.6hDmaG', '697877433', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(88, 'মৌলভীবাজার শহর', NULL, '71', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iSCHw1fazpY7ZW6h207Q7ODYMl/NouXje0fq/X3c.TSRmzdQPr34G', '394886510', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(89, 'মৌলভীবাজার জেলা', NULL, '72', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JEwKI//VK7nNXrCn5i2peeyKd3d6PDQ4nNOJ7yUUd8RMDtQnYheJq', '858892942', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(90, 'হবিগঞ্জ জেলা', NULL, '73', NULL, NULL, NULL, 'uploads/users/FaT3s9ohXAJiwrfB0SiKhSFNvvo29XcMNxBeLTnE.jpeg', NULL, NULL, '$2y$10$STfAERfZdOIk8wDYTRYyzejOoqfvFCHxIYW.dihi2Rqlfg0BDRt0y', '661902425', 1, NULL, '2023-11-17 21:27:20', '2023-11-17 21:27:20'),
(91, 'রাজশাহী মহানগর', NULL, '74', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9Z.7yiU.bPCTPjMRH6669emjVZUuR7Y3SALzRflPnRHBtwKrZP3QC', '847919447', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(92, 'রাজশাহী বিশ্ববিদ্যালয়', NULL, '75', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ELGcTVUovVniJiB64O/k/.tfx/A5hrcXxfvapP9XbuYDvKRGhIOBi', '909921296', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(93, 'রাজশাহী জেলা পূর্ব', NULL, '76', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KXfV2NMYX9pVtQeWQfOSSOdZ8Z5K8yEP7rLXcSPLVgZoExG6nmJgu', '623935690', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(94, 'রাজশাহী জেলা পশ্চিম', NULL, '77', NULL, NULL, NULL, 'uploads/users/AuwPdTWgppqu6viRlfgQAnIcNHJlh1iO7hmHbZOw.jpeg', NULL, NULL, '$2y$10$4dst80oAZ9CK1jLziSF8g.h1r0RCSI0USSp/zarXeJGHw2m1/dJsK', '967947905', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(95, 'নাটোর জেলা', NULL, '78', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GgH3h4lrftN1uXQe3zGiHu.Ijy7nl3SMSPSN67LOmK1zDz8ATE6C.', '904953170', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(96, 'চাঁপাইনবাবগঞ্জ শহর', NULL, '79', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eTHGRFQLilr5o58CbS4bQ.CmTdzv68biOdF4oITnt0xusbuO/YI2C', '688966667', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(97, 'চাঁপাইনবাবগঞ্জ জেলা পশ্চিম   ', NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wrr6k.iZV23wS/6NBzzs3ubQYNRropGjbDsCPmvVvGJ1fbcVi4wPC', '304974527', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(98, 'নওগাঁ জেলা পূর্ব', NULL, '81', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7xMQptTJfrWc.FmBV8cY9.wPancx0pXmdPYRUHWkDoTP4IIw848Qq', '102988325', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(99, 'নওগাঁ জেলা পশ্চিম', NULL, '82', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$y2ut1.0d2.wUsqQ5d4H2T.XFl786gVbJ7.XviTsPU99pVKf2OFZry', '448995998', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(100, 'পাবনা শহর', NULL, '83', NULL, NULL, NULL, 'uploads/users/OsROoZa9bjSBAL2BbPr8NSOhqs8eDxwflUpr05Sn.jpeg', NULL, NULL, '$2y$10$tmiCjrRWn6EkBMJ0mRPvfuVqsI6qzEuK9/0dpJiwa3cDU.41gx6NO', '5261006943', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(101, 'পাবনা জেলা পূর্ব', NULL, '84', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$t6Q2C1bet4iK25RRHhSscupTqsHIMGkEvfKWDVWgPa5w5d6ikkt3G', '9491019797', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(102, 'পাবনা জেলা পশ্চিম', NULL, '85', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6anYwvAs/DmUViYqGQn9d.F4CGeTkHK0nO6wVZXI.70kw2t9tudv2', '9081023698', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(103, 'সিরাজগঞ্জ শহর', NULL, '86', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$i8kAaYu2QKDydi6gVAV6qun2SzAODg8NPW/2O1F4Q9Lo2PTqEk8y2', '7891031531', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(104, 'সিরাজগঞ্জ জেলা', NULL, '87', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GzN7zJUvoHTx59kW/0PBaew/HZwqRQ1baRqmiHeJg1/vx4I.tFuhO', '4211048497', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(105, 'বগুড়া শহর', NULL, '88', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QpuToEWsd5ASifXUj8bM8ekVj/8Cdw.VkdLla2G7onZVBpsAqOLO6', '9211058794', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(106, 'বগুড়া জেলা পূর্ব', NULL, '89', NULL, NULL, NULL, 'uploads/users/q92PkxZsIjrm81ExmFeV615eFXVzSvYixu5enFxY.jpeg', NULL, NULL, '$2y$10$gCkh7zf5LeD0yj7QnkACv.int.cf2xHK0sRnawb6L2qjQx3PMad7y', '8911061678', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(107, 'বগুড়া জেলা পশ্চিম', NULL, '90', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tTN0.6l4V8Rpc8RmIT/POOYOelyWSz3/oei5Apo5lyKgYZ5q3T5Ke', '7831076555', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(108, 'জয়পুরহাট জেলা', NULL, '91', NULL, NULL, NULL, 'uploads/users/0GXegH7rh9EGYWhuxzkK2bS3Jtv5We37GbfrpBUr.png', NULL, NULL, '$2y$10$sxj18rCE.HZaLnwUP5a9tubTsW0JaVUiv2aysPViP66htJRKqsgLa', '8651083689', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(109, 'রংপুর মহানগর', NULL, '92', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$S.HS8mMGm/tR8.rAWnIUVu/Qk73BZOxUMaKs3m41ErOzlXN2P.IS6', '3641094015', 1, NULL, '2023-11-17 21:27:21', '2023-11-17 21:27:21'),
(110, 'রংপুর জেলা  উত্তর', NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qIqmxjmlZlfqY5YHxvMB0ueI95XcTQFlEZmLXKQynhMC625/jgIAu', '3521104150', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(111, 'কুড়িগ্রাম জেলা', NULL, '94', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZRc.Uu1wiWYmIlMn7ETnK..qXSHJgbtLmCOKSfipZ8bZh9THb.AzC', '7171115133', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(112, 'নীলফামারী জেলা', NULL, '95', NULL, NULL, NULL, 'uploads/users/FyzcY7s4xfPzR4O8wEpz5lSKgXCC9mtORCCeRDNp.jpeg', NULL, NULL, '$2y$10$Im0DnYf933Tr059Ds0CR..CygSbhmAeovyQoLkn8JKPPDsFwgF5Am', '2271129254', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(113, 'লালমনিরহাট জেলা', NULL, '96', NULL, NULL, NULL, 'uploads/users/FldLboKuIcxrlmJEoMvLmTCYXqnzOA2NdyAzJ0wr.jpeg', NULL, NULL, '$2y$10$FnaH2vIa.ZugsfVUXciIs.2AezPCNFMj/057J0POX2uQ//yRwBo7K', '5001133098', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(114, 'গাইবান্ধা জেলা', NULL, '97', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r4yH6DB4qemL9ny2iKZk2ejskIIQ4dWjd4G2B5r51q6fUuExtZdKa', '3841149509', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(115, 'দিনাজপুর শহর', NULL, '98', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$85GG2xP80rXUl52RQuyEPukFqKekgWCFKjz4dkjHGs99EyAmASa3a', '4541152166', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(116, 'দিনাজপুর জেলা উত্তর', NULL, '99', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2vXzyNj/BAlptcVSyg3mguPEw/7oqDqrOuCw6PXnCv3htb6L4c55G', '1581168774', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(117, 'দিনাজপুর জেলা দক্ষিণ', NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GombSYBkui4F0jrQw8VnFu5zoTfAb8JITU77Y6fzizChR1WJLkhhW', '8621171750', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(118, 'ঠাকুরগাঁও জেলা', NULL, '101', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$B2m/5KEqKCnHf6mTWctDuudr5mFIaenKEdr86qLse7Bro7Bb67ffO', '1191181281', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(119, 'পঞ্চগড় জেলা', NULL, '102', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WvmPdZ8mhuVlRKKZndOwjOz/iF.YdAx4xwqWI7s1ITlbD6H.S7a/i', '8241192438', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(120, 'খুলনা মহানগর', NULL, '103', NULL, NULL, NULL, 'uploads/users/kWBuEydUTDpWeGEGNitoX8tmlBXTNyPdy3pjqEkc.jpeg', NULL, NULL, '$2y$10$qt8QNFOKwaOd596eceuiUOowwA5LemNbCHLypRICJj0zJZHYyfJk.', '8841204448', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(121, 'খুলনা জেলা উত্তর', NULL, '104', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MlWZSG2Ub3LzbLjodLaY7.hFZ3nnQruTa.H7N4AK75ZS16/gGqhQG', '2191213928', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(122, 'খুলনা জেলা দক্ষিণ', NULL, '105', NULL, NULL, NULL, 'uploads/users/HdZF7JlpOx93vHitSzX479R6z8uPv7EkcSE0QI4V.jpeg', NULL, NULL, '$2y$10$qoRLFZVMZ/BGmz9vFDiyAuF2J489SO2Gx64tuFbgipMcZKpaA20ZW', '1471227306', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(123, 'বাগেরহাট জেলা', NULL, '106', NULL, NULL, NULL, 'uploads/users/f2AdK6R631Ledl90NgWFY2cHfSYvfssKqBk4hILO.jpeg', NULL, NULL, '$2y$10$8fy7AotorNX9/P1yYHTPu..EvIxeDyCYlUMagNSaD.6V9k8tK3lUK', '2251236081', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(124, 'সাতক্ষীরা শহর', NULL, '107', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EsWNA1oci4V2EC0Dn7Ck3u/nyvhXLLB.KYZ.qtmKSfFIfnQ.mVgyq', '1251246959', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(125, 'সাতক্ষীরা জেলা', NULL, '108', NULL, NULL, NULL, 'uploads/users/Z78iUcqQEeOW3y4jL4UYK4Sb5V3F45BER5h581Y1.jpeg', NULL, NULL, '$2y$10$HeAB3KsPXckW156ZpeX46e8TISNRvCitfvd5t4OgA1j4Jp941GeCy', '9311256872', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(126, 'যশোর শহর', NULL, '109', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KEgfXSkXP0/ca7eEXBhLF.EhZabF7v6G2bR1sfeXdK/fjuD8401fq', '7921268657', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(127, 'যশোর জেলা পূর্ব', NULL, '110', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VxNY7zPvQ13s5YlKLiQqRuxuQZDlwx4uA.mXW8OLlseRr/tCwFuse', '9001271716', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(128, 'যশোর জেলা পশ্চিম', NULL, '111', NULL, NULL, NULL, 'uploads/users/NiNIi0AqQsmWcCpt5CDFKd0Oy0JKQadIJKTkQkjR.webp', NULL, NULL, '$2y$10$uWeVeQgUBTcsgMeNMpDutu1yZ3YrtRumEGUGbOsqIWIXTrJk79wK6', '7501284566', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(129, 'নড়াইল জেলা', NULL, '112', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IhZFB00SvCA3oGbzrliQjuDiH8e3S6AFvINUS5eKWEqqOReyPWR3y', '9431294951', 1, NULL, '2023-11-17 21:27:22', '2023-11-17 21:27:22'),
(130, 'মাগুরা জেলা', NULL, '113', NULL, NULL, NULL, 'uploads/users/D6PXiDREuPZgrGr5dr1eXzQBLbJ1pp7Sg9MFOP6S.jpeg', NULL, NULL, '$2y$10$Yu6Qexo.BEhf.pCsRMlFQ.SPYqboCD5d5ETvpyBqrrqiIe6FiI99a', '3231308343', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(131, 'ইসলামী বিশ্ববিদ্যালয়', NULL, '114', NULL, NULL, NULL, 'uploads/users/R6otGSrctqnzeWZodwcStIv9s3QnUeghnLaK8eUt.png', NULL, NULL, '$2y$10$fdHVo1aMqMb/1EOFs9gwiOWCdA15T1Ju7y.MaaJ5UIqTxfkZgA2n.', '2221314510', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(132, 'ঝিনাইদহ শহর', NULL, '115', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Wjem4ccz4bXuH0E5BM2OjO78Wer/qDpVZu8E7N2wfRtCeKYtRnpKK', '1081324978', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(133, 'ঝিনাইদহ জেলা', NULL, '116', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XJT68sWQo9er9jVuFyE6weaNbdrgVQpofjtthT0f7gN7tO6u/mF9m', '3841336178', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(134, 'কুষ্টিয়া শহর', NULL, '117', NULL, NULL, NULL, 'uploads/users/gE0g5uOJzUHq2ne2ZzL8x4FzXIGyURmWdxyQzIkg.jpeg', NULL, NULL, '$2y$10$7wPbJGkU3.ZC6BKfd8GkduJowUUdDj7jlZuMl.p.wuvDAibkawh3K', '2361345970', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(135, 'কুষ্টিয়া জেলা', NULL, '118', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1bCYdtVVF.lgfjsUKQ54ruChKvoAlmn7YM1JXGKBnRY34xU0ocxze', '2641358954', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(136, 'চুয়াডাঙ্গা জেলা', NULL, '119', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1Loz9CCivTwth4Gl.Ynn.eBRwGwH7Tc83EzttCPszSZ3taVR8KN.u', '8391364977', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(137, 'মেহেরপুর জেলা', NULL, '120', NULL, NULL, NULL, 'uploads/users/P7YHA7yF3NXq5Xc4UYP8BHW8UmmfJ5gRcG4lwRHI.jpeg', NULL, NULL, '$2y$10$ZPeQA4NCSyO1jPueDa1MJew/z0G4cOH3Usr8p6ACxpxKOt/4tEsRO', '5411371930', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(138, 'বরিশাল মহানগর', NULL, '121', NULL, NULL, NULL, 'uploads/users/M36iXg4Ig5IJwNLtx9iEimhOAAbXnNyHcyL7tMmV.jpeg', NULL, NULL, '$2y$10$oGSsnbV82pTIYWFELkrD2O14Me2QbhTAO07VJWgtsIauGuUknQH.e', '4181384911', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(139, 'বরিশাল জেলা পূর্ব', NULL, '122', NULL, NULL, NULL, 'uploads/users/l0nOrjhUUMJRhlnJag6zzKr3aEYYGoStSdn90ZXs.jpeg', NULL, NULL, '$2y$10$QfxQXn13GaNxCYE3wxOrYeVjF/vnfgU.sqGzBZ5MihqO/E7LmZlD.', '4751396354', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(140, 'বরিশাল জেলা পশ্চিম', NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ItKuLFqmCL3WThu4TxVhfuWjtwoVccj5C2IUW4Yw/nB4HDHLbqNMO', '2791405470', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(141, 'ঝালকাঠি জেলা', NULL, '124', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eywW.wPqiGsqzqEZUWOITuYvezp2ns1td9NOYH0UCQ3CeT5eJmPx.', '9161416785', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(142, 'পিরোজপুর জেলা', NULL, '125', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tHVj8XQJu7UrVhrrHYWYEeHFIobMWPWZqZx3e/hzRlLG.UJbO3yF6', '3201428957', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(143, 'পটুয়াখালী জেলা', NULL, '126', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vGq7YhDlTJAz75XQWjfZM.TP2q8jUh1p6sMYU.OLHUSVlAKCpgn8m', '5711435906', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(144, 'বরগুনা জেলা', NULL, '127', NULL, NULL, NULL, 'uploads/users/E0sIeRdmcbSs7IcHt8ft1jm6DhrLGu4EsqjF6C8u.jpeg', NULL, NULL, '$2y$10$WmFgVIEeEsMWDizr6Tz2E.800FUQwRz1FAqqUF7HHagvtSmZ0oTVy', '8321446398', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(145, 'ভোলা শহর', NULL, '128', NULL, NULL, NULL, 'uploads/users/wMnSn8Uo0eyuskJs09GSaKWuoNlmVDi9AD1e9cTb.jpeg', NULL, NULL, '$2y$10$0E8x5wHgFW909NtjMP/.WOHPPthXyhKAECxynOwVJdSrpCEMhjaAq', '6191457600', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(146, 'ভোলা জেলা', NULL, '129', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$O08NVxt1xbz8TrCTGGMOUePt7beletOGwRh4W4h1Hzt0DaPn.a7jG', '6951465911', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(147, 'মেডিকেল জোন', NULL, '130', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NyrOmIukY51uhV7khPeugOJs357v1VXMED3MbBTMHopl1vKHPnt4u', '5161473602', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(148, 'ইংলিশ মিডিয়াম', NULL, '131', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7FdS3ZtN90xxAhjjNN3I8.2OfUlXrS45wT3Hd3gh6xyoaZmq.PC3S', '2321483013', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(149, 'সাইমুম', NULL, '132', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3iIhfa.dnJ1TiaraZYkbl.VLG7dVO6vt89IRADBKY6guMgeivTul.', '1001492321', 1, NULL, '2023-11-17 21:27:23', '2023-11-17 21:27:23'),
(150, 'পটুয়াখালী শহর', NULL, '133', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XqitUxnPdnTjqwMA23uXPef9/FyeaosmKVTOSoJ/LthdCGRcFR/PG', '6071501023', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(151, 'ঠাকুরগাঁও শহর', NULL, '134', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KN83H4a9prIzOM/b36pLGed6oQlT9elDHU1h6.WuGRP8gltayv5Gu', '8481516048', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(152, 'নোবিপ্রবি', NULL, '135', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$guv/sBM5KwmZN5D9vGTpY.rcjsw2wTiTxbRl8Lz4hAFXixCOpmjRO', '3231526246', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(153, 'মডেল ইন্সটিটিউট', NULL, '136', NULL, NULL, NULL, 'uploads/users/J5EV8LGO9UBVMgtpxnIme4CxTZEtcoSED9GXYQre.jpeg', NULL, NULL, '$2y$10$kdGVF/bFvF17AizbBUAEpe9SsysPrXZcfCrisMDa2hww30aNIfU5u', '7981536224', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(154, 'কেন্দ্রীয় শিশুকল্যাণ', NULL, '888', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r8RDJBGVeecCr8kNiDK3aOTW8eVU1PBddXH2Odb0RQVfBpzAfzbem', '2061549517', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(155, 'কেন্দ্র', NULL, '999', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GThs6bn6WCaxARKCRJUwAurgA2NiJ.xiA6RfiPBIuMuXNCGgjj9vC', '9771556272', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(156, 'extra1', NULL, '201', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ngdDI.zNJ63ls5THiJDUIu/sqbqQBdVpE2gDC6BNjazrgp0PTs/ga', '1211568931', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(157, 'extra2', NULL, '202', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Qm7ppx4VI38IiHltnRokp.2Q4d7ize2DwbpoOwVWTGR7dW8bwFRvu', '2011574433', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(158, 'extra3', NULL, '203', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bhB8Ghj.y6cAQCEKLVipSOPUZBLN8U5JhjctXKiZkUx/81L3HkaiS', '4511586798', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(159, 'extra4', NULL, '204', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uXKoqNr3k2CKbVbnM.nyB.RU993FC.mOoh50yUVvrxT9Xe0XBR1Oe', '7281599441', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(160, 'extra5', NULL, '205', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WFwGr0L8auZ8DUuUy3hpz./lCnYDnNayV0/m1iuzDvU1gTpbSd3e6', '6141607814', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(161, 'extra6', NULL, '206', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fA0dXBbn0I5acgunA/MEQemyNDkndwXSF6W3aLoH67Ni5f8hUbvN6', '5421613621', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(162, 'extra7', NULL, '207', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$B5tn.ZJ6ujTVR.KCAjmfQOtosID3VTAD.5cTTKswDlC/DFfo2rEwK', '3171628545', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(163, 'extra8', NULL, '208', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JnAZh2NQA/BFDxVDykXTPOgL/8VmqQkuWcg7gnLC5GXEwmpJAS8Ya', '9071631380', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(164, 'extra9', NULL, '209', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UnnUJWI98jwTlCZ6YFvLrulaBBDeEQwryhKYmqIqpTaDpt7MobVpC', '4571647240', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(165, 'extra10', NULL, '210', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w9h2cmNcAXqraPON/bX/jutrJP0IzDyhQWL2wbl/2e3oOekwDaqSC', '5201655848', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(166, 'extra11', NULL, '211', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nHwM7JiLm0NqHaHty488O.JEhJkYrXMt4XMzTe9iuT6acTzzOWyaC', '1221663220', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(167, 'extra12', NULL, '212', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dhnaVKMKDlUexSGcIXgaMOyrhAeCiig.I4ygnBY3Zo2NyLlMBxkb2', '3051678454', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(168, 'extra13', NULL, '213', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MZtEnlGpJ26t9sdHXJwgduR7wsqrZQ6I2ZBqjdP7szj.EPDKZvrmK', '4281687857', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(169, 'extra14', NULL, '214', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nbCQ/7a1R9vEru4or21JL.dUjRwvoRF4OaewGf1gTYzJfAQ2Bfb5i', '3921691190', 1, NULL, '2023-11-17 21:27:24', '2023-11-17 21:27:24'),
(170, 'extra15', NULL, '215', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KBVfHN6C4/kpYyYuvla4WOPGDUc.5w1gj51xLDf6UFPTi09fn3S.O', '8771702280', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(171, 'extra16', NULL, '216', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3p8ZxnQ8evZkGwu7SZtoauJiwuewYRhuJbFTLDeeULLcLOkHyZqzO', '7821717508', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(172, 'extra17', NULL, '217', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Z1O8VvL6.EcHu.gw8BSExOBsW6TOc2dOtadTh35Hm9FlyFGw3DhKG', '3721722003', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(173, 'extra18', NULL, '218', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$A8qiBnzJl//JOnkLKL9DZOnmFgfQMAWxuV8zltb1KIhpJiETXMasC', '2941733915', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(174, 'extra19', NULL, '219', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Z0jsfgRRJwsoZX07my7Qv.8uLCiBgNx4ox2bt4bjQxtFFq5CiPyZ6', '7671748234', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(175, 'extra20', NULL, '220', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$T3TQjys1Wwz6Z12HCGxgtuDL5KLLzAkqyU2IEhzrDmF6iykMH8Ldy', '7811751668', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(176, 'বেরবি', NULL, '137', NULL, NULL, NULL, NULL, '137@gmail.com', NULL, '$2y$10$yGw8Ph3J5zOlYDD3nT9tKO6d7.iYtS9JW9/mzWaP9gFAwBw.SRnPy', '3831767688', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(177, 'রংপুর জেলা দক্ষিণ', NULL, '138', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nTmgNmoZXeIwMHRsS3McC.GCHravp9w2/Hwrdngu3y.yN4PMJiHFu', '9771777308', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(178, 'চট্টগ্রাম জেলা পশ্চিম', NULL, '139', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nXI4KvLbpLX9IZoPp5ZtFut6FmW9tGrSG8naYGeyf1K44dQnSa4Em', '8761783008', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(179, 'কুমিল্লা জেলা পূর্ব', NULL, '140', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mHXu0BHErXFiXTowyARyo.iHz8zShIMzgC3SuBVjozNFOup/scQcq', '3281792004', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(180, '141', NULL, '141', NULL, NULL, NULL, NULL, 'mahmud@gmail.com', NULL, '$2y$10$AeK1BEDF.UhH8PIRylmROuGJG6WNAvpz8touVzCM0l9nFssQbLEF6', '6241803021', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25'),
(181, 'চাঁপাইনবাবগঞ্জ জেলা পূর্ব', NULL, '142', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HBw/DUqg5nbZ9ZgUovx7.OXEZnDh/YSTDWAu/KZNXI7bomyeJ/LZ.', '7261813135', 1, NULL, '2023-11-17 21:27:25', '2023-11-17 21:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_serial` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` tinyint DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `title`, `permission_serial`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(10, 'can_create', '1', NULL, 'can-create', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17'),
(20, 'can_edit', '2', NULL, 'can-edit', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17'),
(30, 'can_delete', '3', NULL, 'can-delete', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_serial` int DEFAULT NULL,
  `creator` tinyint DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `role_serial`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(10, 'super_admin', 1, NULL, 'super-admin', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17'),
(20, 'admin', 2, NULL, 'admin', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17'),
(30, 'production', 3, NULL, 'production', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17'),
(40, 'branch', 4, NULL, 'branch', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17'),
(50, 'user', 5, NULL, 'user', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17'),
(51, 'accountant', 6, NULL, 'accountant', 1, '2023-11-16 03:12:17', '2023-11-16 03:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_user_permission`
--

CREATE TABLE `user_user_permission` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_permission_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_user_permission`
--

INSERT INTO `user_user_permission` (`id`, `user_id`, `user_permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 1),
(14, 5, 2),
(15, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_user_role`
--

CREATE TABLE `user_user_role` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_role_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_user_role`
--

INSERT INTO `user_user_role` (`id`, `user_id`, `user_role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 6),
(5, 5, 4),
(6, 6, 4),
(7, 7, 5),
(8, 15, 4),
(9, 16, 4),
(10, 18, 4),
(11, 19, 4),
(12, 20, 4),
(13, 21, 4),
(14, 22, 4),
(15, 23, 4),
(16, 24, 4),
(17, 25, 4),
(18, 26, 4),
(19, 27, 4),
(20, 28, 4),
(21, 29, 4),
(22, 30, 4),
(23, 31, 4),
(24, 32, 4),
(25, 33, 4),
(26, 34, 4),
(27, 35, 4),
(28, 36, 4),
(29, 37, 4),
(30, 38, 4),
(31, 39, 4),
(32, 40, 4),
(33, 41, 4),
(34, 42, 4),
(35, 43, 4),
(36, 44, 4),
(37, 45, 4),
(38, 46, 4),
(39, 47, 4),
(40, 48, 4),
(41, 49, 4),
(42, 50, 4),
(43, 51, 4),
(44, 52, 4),
(45, 53, 4),
(46, 54, 4),
(47, 55, 4),
(48, 56, 4),
(49, 57, 4),
(50, 58, 4),
(51, 59, 4),
(52, 60, 4),
(53, 61, 4),
(54, 62, 4),
(55, 63, 4),
(56, 64, 4),
(57, 65, 4),
(58, 66, 4),
(59, 67, 4),
(60, 68, 4),
(61, 69, 4),
(62, 70, 4),
(63, 71, 4),
(64, 72, 4),
(65, 73, 4),
(66, 74, 4),
(67, 75, 4),
(68, 76, 4),
(69, 77, 4),
(70, 78, 4),
(71, 79, 4),
(72, 80, 4),
(73, 81, 4),
(74, 82, 4),
(75, 83, 4),
(76, 84, 4),
(77, 85, 4),
(78, 86, 4),
(79, 87, 4),
(80, 88, 4),
(81, 89, 4),
(82, 90, 4),
(83, 91, 4),
(84, 92, 4),
(85, 93, 4),
(86, 94, 4),
(87, 95, 4),
(88, 96, 4),
(89, 97, 4),
(90, 98, 4),
(91, 99, 4),
(92, 100, 4),
(93, 101, 4),
(94, 102, 4),
(95, 103, 4),
(96, 104, 4),
(97, 105, 4),
(98, 106, 4),
(99, 107, 4),
(100, 108, 4),
(101, 109, 4),
(102, 110, 4),
(103, 111, 4),
(104, 112, 4),
(105, 113, 4),
(106, 114, 4),
(107, 115, 4),
(108, 116, 4),
(109, 117, 4),
(110, 118, 4),
(111, 119, 4),
(112, 120, 4),
(113, 121, 4),
(114, 122, 4),
(115, 123, 4),
(116, 124, 4),
(117, 125, 4),
(118, 126, 4),
(119, 127, 4),
(120, 128, 4),
(121, 129, 4),
(122, 130, 4),
(123, 131, 4),
(124, 132, 4),
(125, 133, 4),
(126, 134, 4),
(127, 135, 4),
(128, 136, 4),
(129, 137, 4),
(130, 138, 4),
(131, 139, 4),
(132, 140, 4),
(133, 141, 4),
(134, 142, 4),
(135, 143, 4),
(136, 144, 4),
(137, 145, 4),
(138, 146, 4),
(139, 147, 4),
(140, 148, 4),
(141, 149, 4),
(142, 150, 4),
(143, 151, 4),
(144, 152, 4),
(145, 153, 4),
(146, 154, 4),
(147, 155, 4),
(148, 156, 4),
(149, 157, 4),
(150, 158, 4),
(151, 159, 4),
(152, 160, 4),
(153, 161, 4),
(154, 162, 4),
(155, 163, 4),
(156, 164, 4),
(157, 165, 4),
(158, 166, 4),
(159, 167, 4),
(160, 168, 4),
(161, 169, 4),
(162, 170, 4),
(163, 171, 4),
(164, 172, 4),
(165, 173, 4),
(166, 174, 4),
(167, 175, 4),
(168, 176, 4),
(169, 177, 4),
(170, 178, 4),
(171, 179, 4),
(172, 180, 4),
(173, 181, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accountant_vendors`
--
ALTER TABLE `accountant_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_categories`
--
ALTER TABLE `account_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_category_types`
--
ALTER TABLE `account_category_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_customers`
--
ALTER TABLE `account_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_logs`
--
ALTER TABLE `account_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_log_attachments`
--
ALTER TABLE `account_log_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_numbers`
--
ALTER TABLE `account_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_supplier_logs`
--
ALTER TABLE `account_supplier_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_setting_titles`
--
ALTER TABLE `app_setting_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_setting_values`
--
ALTER TABLE `app_setting_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_product`
--
ALTER TABLE `brand_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_coupons`
--
ALTER TABLE `order_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_infos`
--
ALTER TABLE `order_delivery_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payment_attachments`
--
ALTER TABLE `order_payment_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_variants`
--
ALTER TABLE `order_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phone_numbers`
--
ALTER TABLE `phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_costs`
--
ALTER TABLE `production_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_designers`
--
ALTER TABLE `production_designers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_statuses`
--
ALTER TABLE `production_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_used_papers`
--
ALTER TABLE `production_used_papers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_in_branches`
--
ALTER TABLE `product_in_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_offers`
--
ALTER TABLE `product_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_offer_products`
--
ALTER TABLE `product_offer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product_translator`
--
ALTER TABLE `product_product_translator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product_writer`
--
ALTER TABLE `product_product_writer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stock_logs`
--
ALTER TABLE `product_stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translators`
--
ALTER TABLE `product_translators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_writers`
--
ALTER TABLE `product_writers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_bindings`
--
ALTER TABLE `supplier_bindings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_papers`
--
ALTER TABLE `supplier_papers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_paper_stocks`
--
ALTER TABLE `supplier_paper_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_prints`
--
ALTER TABLE `supplier_prints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_update_logs`
--
ALTER TABLE `table_update_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `users_mobile_number_unique` (`mobile_number`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_permissions_permission_serial_unique` (`permission_serial`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_role_serial_unique` (`role_serial`);

--
-- Indexes for table `user_user_permission`
--
ALTER TABLE `user_user_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_user_role`
--
ALTER TABLE `user_user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accountant_vendors`
--
ALTER TABLE `accountant_vendors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `account_categories`
--
ALTER TABLE `account_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `account_category_types`
--
ALTER TABLE `account_category_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_customers`
--
ALTER TABLE `account_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `account_logs`
--
ALTER TABLE `account_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=840;

--
-- AUTO_INCREMENT for table `account_log_attachments`
--
ALTER TABLE `account_log_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_numbers`
--
ALTER TABLE `account_numbers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_supplier_logs`
--
ALTER TABLE `account_supplier_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=859;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `app_setting_titles`
--
ALTER TABLE `app_setting_titles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `app_setting_values`
--
ALTER TABLE `app_setting_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `brand_product`
--
ALTER TABLE `brand_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_coupons`
--
ALTER TABLE `order_coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_delivery_infos`
--
ALTER TABLE `order_delivery_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `order_payment_attachments`
--
ALTER TABLE `order_payment_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_variants`
--
ALTER TABLE `order_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `phone_numbers`
--
ALTER TABLE `phone_numbers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `production_costs`
--
ALTER TABLE `production_costs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_designers`
--
ALTER TABLE `production_designers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `production_statuses`
--
ALTER TABLE `production_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `production_used_papers`
--
ALTER TABLE `production_used_papers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_discounts`
--
ALTER TABLE `product_discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_in_branches`
--
ALTER TABLE `product_in_branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_offers`
--
ALTER TABLE `product_offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_offer_products`
--
ALTER TABLE `product_offer_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_product_translator`
--
ALTER TABLE `product_product_translator`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_product_writer`
--
ALTER TABLE `product_product_writer`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_stock_logs`
--
ALTER TABLE `product_stock_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `product_translators`
--
ALTER TABLE `product_translators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_writers`
--
ALTER TABLE `product_writers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `supplier_bindings`
--
ALTER TABLE `supplier_bindings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `supplier_papers`
--
ALTER TABLE `supplier_papers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `supplier_paper_stocks`
--
ALTER TABLE `supplier_paper_stocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `supplier_prints`
--
ALTER TABLE `supplier_prints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `table_update_logs`
--
ALTER TABLE `table_update_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_user_permission`
--
ALTER TABLE `user_user_permission`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_user_role`
--
ALTER TABLE `user_user_role`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
