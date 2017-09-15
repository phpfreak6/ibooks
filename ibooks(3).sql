-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2017 at 01:04 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `address`, `website`) VALUES
(1, 'Solomon Northup', 'Pirates', 'snpdummy@gmail.com', '#852 LA Town 220', 'http://snpweb.com'),
(2, 'Shiv Kunal', 'Verma', 'skvdummy@gmail.com', '#1 AL Modal Town', 'http://skvweb.com'),
(3, 'Chetan', 'Bhagat', 'scdummy@gmail.com', '#2STATE AL Modal Town', 'http://cbvweb.com'),
(4, 'Anurag', 'Mathur', 'amdummy@gmail.com', '#MAthur AL Modal Town', 'http://amvweb.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publising_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `demo_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orignal_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pages` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `publising_year`, `publisher_id`, `author_id`, `language`, `description`, `demo_file`, `orignal_file`, `total_pages`, `image`, `price`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Indian Polity 5 Edition', '2015', 5, 2, 'en', 'Indian Polity 5 Edition Indian Polity 5 Edition Indian Polity 5 Edition Indian Polity 5 Edition', 'https://rukminim1.flixcart.com/image/312/312/book/6/3/3/indian-polity-original-imaen4zhg2kms3qh.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/book/6/3/3/indian-polity-original-imaen4zhg2kms3qh.jpeg?q=70', 20, 'indian-polity-original-imaen4zhg2kms3qh.jpeg', '417.00', '111111111111111', NULL, NULL),
(2, 'Indian Economy : For Civil Services Examination Ninth', '2010', 2, 3, 'hi', 'Indian Economy :  For Civil Services Examination Ninth Indian Economy : For Civil Services Examination Ninth', 'https://rukminim1.flixcart.com/image/312/312/j0y5z0w0/book/1/4/6/indian-economy-original-imaeshtz3egmghtb.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j0y5z0w0/book/1/4/6/indian-economy-original-imaeshtz3egmghtb.jpeg?q=70', 20, 'indian-economy-original-imaeshtz3egmghtb.jpeg?q=70', '368.00', '22222222', NULL, NULL),
(3, 'Oswaal CBSE Chapterwise and Topicwise Question Bank', '2010', 3, 4, 'hi,en', 'Oswaal CBSE Chapterwise and Topicwise Question Bank Oswaal CBSE Chapterwise and Topicwise Question Bank Oswaal CBSE Chapterwise and Topicwise Question Bank Oswaal CBSE Chapterwise and Topicwise Question Bank Oswaal CBSE Chapterwise and Topicwise Question Bank', 'https://rukminim1.flixcart.com/image/312/312/j0vb3bk0/book/1/3/3/oswaal-cbse-chapterwise-and-topicwise-question-bank-with-original-imaesjhtvezzpywg.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j0vb3bk0/book/1/3/3/oswaal-cbse-chapterwise-and-topicwise-question-bank-with-original-imaesjhtvezzpywg.jpeg?q=70', 20, 'oswaal-cbse-chapterwise-and-topicwise-question-bank-with-original-imaesjhtvezzpywg.jpeg?q=70', '89.00', '33333', NULL, NULL),
(4, 'RRB JUNIOR ENGINEERS& SENIOR SECTION ENGINEERS MECH', '1998', 1, 4, 'hi,en,es', 'RRB JUNIOR ENGINEERS& SENIOR SECTION ENGINEERS MECH RRB JUNIOR ENGINEERS& SENIOR SECTION ENGINEERS MECH RRB JUNIOR ENGINEERS& SENIOR SECTION ENGINEERS MECH RRB JUNIOR ENGINEERS& SENIOR SECTION ENGINEERS MECH', 'https://rukminim1.flixcart.com/image/312/312/book/3/8/6/rrb-junior-engineers-senior-section-engineers-mech-exam-book-original-imae52vzpvvxrt7v.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/book/3/8/6/rrb-junior-engineers-senior-section-engineers-mech-exam-book-original-imae52vzpvvxrt7v.jpeg?q=70', 56, 'rrb-junior-engineers-senior-section-engineers-mech-exam-book-original-imae52vzpvvxrt7v.jpeg?q=70', '189.00', '2543534', NULL, NULL),
(5, 'Forever is a Lie', '2000', 5, 3, 'hi,es', 'Forever is a Lie Forever is a Lie Forever is a Lie Forever is a Lie', 'https://rukminim1.flixcart.com/image/312/312/j4n1x8w0/book/4/9/0/forever-is-a-lie-original-imaevdvbgcjzzjfq.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j4n1x8w0/book/4/9/0/forever-is-a-lie-original-imaevdvbgcjzzjfq.jpeg?q=70', 50, 'forever-is-a-lie-original-imaevdvbgcjzzjfq.jpeg?q=70', '23.00', '32432', NULL, NULL),
(6, 'GATE GUIDE MECHANICAL ENGINEERING 2018 Edition', '2014', 5, 2, 'hi,es', 'GATE GUIDE MECHANICAL ENGINEERING 2018 Edition GATE GUIDE MECHANICAL ENGINEERING 2018 Edition', 'https://rukminim1.flixcart.com/image/312/312/j12gakw0/book/7/7/8/gate-mechanical-engineering-2018-original-imaerw57mjuzws6h.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j12gakw0/book/7/7/8/gate-mechanical-engineering-2018-original-imaerw57mjuzws6h.jpeg?q=70', 88, 'gate-mechanical-engineering-2018-original-imaerw57mjuzws6h.jpeg?q=70', '523.00', '998885223', NULL, NULL),
(7, 'Immortal India : Young Country, Timeless Civilisation', '2014', 2, 2, 'hi', 'Immortal India : Young Country, Timeless Civilisation Immortal India : Young Country, Timeless Civilisation Immortal India : Young Country, Timeless Civilisation Immortal India : Young Country, Timeless Civilisation Immortal India : Young Country, Timeless Civilisation Immortal India : Young Country, Timeless Civilisation Immortal India : Young Country, Timeless Civilisation Immortal India : Young Country, Timeless Civilisation', 'https://rukminim1.flixcart.com/image/312/312/j51cbrk0/book/0/0/6/immortal-india-original-imaevrzx8wyyaz3b.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j51cbrk0/book/0/0/6/immortal-india-original-imaevrzx8wyyaz3b.jpeg?q=70', 20, 'immortal-india-original-imaevrzx8wyyaz3b.jpeg?q=70', '55.00', '234', NULL, NULL),
(8, 'GATE GUIDE ELECTRONICS & COMMUNICATION ENGINEERING 2018', '2016', 5, 1, 'hi,en', 'GATE GUIDE ELECTRONICS & COMMUNICATION ENGINEERING 2018GATE GUIDE ELECTRONICS & COMMUNICATION ENGINEERING 2018GATE GUIDE ELECTRONICS & COMMUNICATION ENGINEERING 2018GATE GUIDE ELECTRONICS & COMMUNICATION ENGINEERING 2018', 'https://rukminim1.flixcart.com/image/312/312/j12gakw0/book/7/6/1/gate-electronics-communication-engineering-2018-original-imaerw56kpgg3bje.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j12gakw0/book/7/6/1/gate-electronics-communication-engineering-2018-original-imaerw56kpgg3bje.jpeg?q=70', 20, 'gate-electronics-communication-engineering-2018-original-imaerw56kpgg3bje.jpeg?q=70', '666.00', '890', NULL, NULL),
(10, 'Oswaal CBSE Chapterwise and Topicwise Question Bank', '2016', 2, 4, 'en', 'Oswaal CBSE Chapterwise and Topicwise Question Bank Oswaal CBSE Chapterwise and Topicwise Question Bank Oswaal CBSE Chapterwise and Topicwise Question Bank', 'https://rukminim1.flixcart.com/image/312/312/j0vb3bk0/book/2/2/5/oswaal-cbse-chapterwise-and-topicwise-question-bank-with-original-imaesjht8ycshqby.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j0vb3bk0/book/2/2/5/oswaal-cbse-chapterwise-and-topicwise-question-bank-with-original-imaesjht8ycshqby.jpeg?q=70', 85, 'oswaal-cbse-chapterwise-and-topicwise-question-bank-with-original-imaesjht8ycshqby.jpeg?q=70', '666.00', '8920', NULL, NULL),
(11, 'How to Prepare for Data Interpretation for Common', '1998', 1, 5, 'en', 'How to Prepare for Data Interpretation for Common How to Prepare for Data Interpretation for Common How to Prepare for Data Interpretation for Common How to Prepare for Data Interpretation for Common', 'https://rukminim1.flixcart.com/image/312/312/j6qs9e80/book/9/3/1/how-to-prepare-for-data-interpretation-for-common-admission-test-original-imaevqy3tfrgu29e.jpeg?q=70', 'https://rukminim1.flixcart.com/image/312/312/j6qs9e80/book/9/3/1/how-to-prepare-for-data-interpretation-for-common-admission-test-original-imaevqy3tfrgu29e.jpeg?q=70', 88, 'how-to-prepare-for-data-interpretation-for-common-admission-test-original-imaevqy3tfrgu29e.jpeg?q=70', '45.00', '865421', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books_categories`
--

CREATE TABLE `books_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_categories`
--

INSERT INTO `books_categories` (`id`, `title`, `cat_image`, `description`, `cat_slug`, `created_at`, `updated_at`) VALUES
(1, 'Educational and Professional Books', '', 'Educational and Professional Books Educational and Professional Books Educational and Professional Books Educational and Professional Books', '123123123', NULL, NULL),
(2, 'Fiction & Non-Fiction Books', '', 'Fiction & Non-Fiction Books Fiction & Non-Fiction Books Fiction & Non-Fiction Books Fiction & Non-Fiction Books', '3242', NULL, NULL),
(3, 'Philosophy Books', '', 'Philosophy Books Philosophy Books Philosophy Books Philosophy Books Philosophy Books', '423423', NULL, NULL),
(4, 'Indian Writing Books', '', 'Indian Writing Books Indian Writing Books Indian Writing Books Indian Writing Books Indian Writing Books', '324324', NULL, NULL),
(5, 'Religion & Spirituality Books', '', 'Religion & Spirituality Books Religion & Spirituality Books Religion & Spirituality Books Religion & Spirituality Books Religion & Spirituality Books Religion & Spirituality Books', '64564', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books_categories_relationships`
--

CREATE TABLE `books_categories_relationships` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_categories_relationships`
--

INSERT INTO `books_categories_relationships` (`id`, `cat_id`, `book_id`) VALUES
(1, 1, 1),
(2, 4, 6),
(3, 1, 4),
(4, 3, 5),
(5, 2, 8),
(6, 1, 3),
(7, 5, 6),
(8, 1, 7),
(9, 5, 11),
(10, 3, 6),
(11, 4, 2),
(12, 4, 8),
(13, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_04_04_025231_create_books_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2017_06_19_150110_create_roles_table', 1),
(10, '2017_06_19_150226_create_role_user_table', 1),
(13, '2017_09_13_101535_create_shoppingcart_table', 1),
(14, '2017_09_14_060716_create_books_categories_table', 2),
(15, '2017_09_14_061031_create_books_categories_relationships_table', 2),
(16, '2017_09_14_061208_create_publishers_table', 2),
(17, '2017_09_14_061414_create_authors_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `found` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `found`, `email`, `website`, `phone`, `address`) VALUES
(1, 'Arun Publishing house', '1990', 'arundemo@gmail.com', 'http://arunwebsite.com', '0172 270 2189', 'Book Publisher\r\nChandigarh\r\n0172 270 2189\r\nOpen until 6:00 PM'),
(2, 'White Falcon Publishing', '2000', 'wfpdemo@gmail.com', 'http://wfpwebsite.com', '091158 92986', 'Publisher\r\nChandigarh\r\n091158 92986\r\nOpen until 6:00 PM'),
(3, 'Chawla Publications Pvt Ltd', '2010', 'cppldemo@gmail.com', 'http://cpplwebsite.com', '09115885210', 'Publisher\r\nChandigarh\r\n09115885210\r\nOpen until 6:00 PM'),
(4, 'Rigi Publication', '2015', 'rpdemo@gmail.com', 'http://rpwebsite.com', '093577 10014', 'Book Publisher\r\nKhanna, Punjab\r\n093577 10014\r\nOpen until 6:00 PM'),
(5, 'Unistar Books Private Limited', '2006', 'ubpldemo@gmail.com', 'http://ubplwebsite.com', '0172 460 8699', 'Book Store\r\nSahibzada Ajit Singh Nagar, Punjab\r\n0172 460 8699\r\nOpen until 7:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '2017-09-14 01:59:45', '2017-09-14 01:59:45'),
(2, 'user', 'User', '2017-09-14 01:59:45', '2017-09-14 01:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2017-09-14 01:59:45', '2017-09-14 01:59:45'),
(2, 1, 2, '2017-09-14 01:59:45', '2017-09-14 01:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `devicetoken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `devicetype` enum('A','I') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `image`, `email`, `password`, `phone`, `devicetoken`, `devicetype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'S', NULL, NULL, 'user@gmail.com', '$2y$10$YFW9tOCL/HwGnwrfhIAvH.Gd.z1p51CmUbed8G8WztgaUpx3N.Hwe', '+4234324324', NULL, NULL, NULL, '2017-09-14 01:59:45', '2017-09-14 01:59:45'),
(2, 'Admin', 'S', NULL, NULL, 'admin@gmail.com', '$2y$10$zuEHND.Y0rrNVL0YjJapR.NJLGJeNAnMl/nEZFohBsAr8CYus84Su', '+2131854848', NULL, NULL, '7F4LokX0IArqFK0UZ9qFxhnSp938CdoSkzoAlYQ1dl9mvXZHQtRUKOqGmy4m', '2017-09-14 01:59:45', '2017-09-14 01:59:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Indexes for table `books_categories`
--
ALTER TABLE `books_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_categories_cat_slug_unique` (`cat_slug`);

--
-- Indexes for table `books_categories_relationships`
--
ALTER TABLE `books_categories_relationships`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `books_categories`
--
ALTER TABLE `books_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `books_categories_relationships`
--
ALTER TABLE `books_categories_relationships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
