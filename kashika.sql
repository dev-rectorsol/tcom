-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2020 at 10:08 AM
-- Server version: 5.6.48-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Turaja`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(5) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `house` varchar(32) DEFAULT NULL,
  `post` varchar(32) DEFAULT NULL,
  `dist` varchar(32) DEFAULT NULL,
  `state` varchar(12) DEFAULT NULL,
  `city` varchar(12) DEFAULT NULL,
  `country` varchar(6) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `house`, `post`, `dist`, `state`, `city`, `country`, `pincode`) VALUES
(1, '100', 'dlw', 'dlw', 'varanasi', 'UP', 'varanasi', 'India', '123456'),
(2, '200', 'akarmatta', 'dlw', 'varanasi', 'UP', 'varanasi', 'India', '123456'),
(3, '300', 'Raju Lal ', 'kakarmatta', 'varanasi', 'jgh.jpg', 'Varanasi', 'India', '221010'),
(4, '400', 'sdafsfsdf', 'kkaskasaska', 'varanasi', 'UP', 'Varansi', 'India', '222100');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `ansid` char(32) NOT NULL,
  `question` char(32) NOT NULL,
  `answers` text NOT NULL,
  `userid` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `postid` char(32) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(128) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `public_at` datetime NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `postid`, `title`, `slug`, `created_by`, `content`, `public_at`, `is_publish`, `deleted`, `created_at`) VALUES
(14, '5eb7e2b69d95e', 'priyanka singh yadav', 'dgdfg', 'AKIASZ001', '<p>Add a content here</p><p><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">There are latest blog posts</span><br></p>', '2020-05-10 17:17:10', 0, 1, '2020-05-10 11:47:10'),
(15, '145eb7e300aa928', 'ME0000003878', 'hello', 'AKIASZ001', '<p>Add a content here</p><p><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">There are latest blog posts</span></p><p><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">There are latest blog posts</span><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\"><br></span><br></p>', '2020-05-10 17:18:24', 0, 1, '2020-05-10 11:48:24'),
(16, '155eb7e32a600ad', 'singh', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-05-10 17:19:06', 0, 1, '2020-05-10 11:49:06'),
(17, '165eb7e3556098e', 'arti singh patel', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-05-10 17:19:49', 0, 1, '2020-05-10 11:49:49'),
(18, '175eb7e3a210c5f', 'arti singh patel', 'hello', 'AKIASZ001', 'Add a content here', '2020-05-10 17:21:06', 0, 1, '2020-05-10 11:51:06'),
(19, 'post19', 'arti', 'hello', 'AKIASZ001', 'Add a content here', '2020-06-01 12:15:50', 1, 1, '2020-06-01 06:45:50'),
(20, 'post20', 'hello', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-06-01 12:55:57', 1, 1, '2020-06-01 07:25:57'),
(21, 'post21', 'hello', 'dgdfg', 'AKIASZ001', 'Add a content here', '2020-06-01 12:57:39', 0, 1, '2020-06-01 07:27:39'),
(22, 'post22', 'arti', 'dgdfg', 'AKIASZ001', 'Add a content here', '0000-00-00 00:00:00', 0, 0, '2020-06-01 07:32:55'),
(23, 'post23', 'arti singh patel', 'hello', 'AKIASZ001', 'Add a content here', '2020-06-01 14:35:54', 1, 0, '2020-06-01 09:05:54'),
(24, 'post24', 'priya', 'hello', 'AKIASZ001', 'Add a content here', '2020-06-01 14:43:56', 1, 0, '2020-06-01 09:13:56'),
(25, 'post25', 'pinki', 'pink', 'AKIASZ001', 'Add a content here', '2020-06-01 14:44:42', 1, 0, '2020-06-01 09:14:42'),
(26, 'post26', 'ruchi singh', 'ruchi', 'AKIASZ001', 'Add a content here', '2020-06-01 14:45:19', 1, 0, '2020-06-01 09:15:19'),
(27, 'post27', 'fghf', '', 'AKIASZ001', 'Add a content here', '0000-00-00 00:00:00', 0, 0, '2020-07-26 13:43:45'),
(28, 'post28', 'arti singh patel', '', 'AKIASZ001', 'Add a content herehgjg', '0000-00-00 00:00:00', 0, 0, '2020-07-26 13:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `created_at`) VALUES
(20, 'Color', '2020-04-24 15:10:00'),
(21, 'Fabric', '2020-04-24 15:10:16'),
(22, 'Stitch', '2020-04-24 15:10:27'),
(23, 'Dye', '2020-04-24 15:10:39'),
(24, 'Pattern', '2020-06-18 08:34:07'),
(25, 'Weaving', '2020-06-18 08:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `carousel_id` int(11) NOT NULL,
  `type` enum('saree','suit','dupatta','lehenga') NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sno` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`carousel_id`, `type`, `updated_at`, `sno`, `product_id`) VALUES
(112, 'lehenga', '2020-07-23 00:39:51', 'Corousel2', 175),
(111, 'lehenga', '2020-07-23 00:39:51', 'Corousel1', 173),
(110, 'suit', '2020-07-23 00:39:27', 'Corousel10', 0),
(109, 'suit', '2020-07-23 00:39:27', 'Corousel9', 0),
(108, 'suit', '2020-07-23 00:39:27', 'Corousel8', 0),
(107, 'suit', '2020-07-23 00:39:27', 'Corousel7', 177),
(106, 'suit', '2020-07-23 00:39:27', 'Corousel6', 179),
(105, 'suit', '2020-07-23 00:39:27', 'Corousel5', 177),
(104, 'suit', '2020-07-23 00:39:27', 'Corousel4', 180),
(103, 'suit', '2020-07-23 00:39:27', 'Corousel3', 178),
(102, 'suit', '2020-07-23 00:39:27', 'Corousel2', 179),
(101, 'suit', '2020-07-23 00:39:27', 'Corousel1', 177),
(100, 'dupatta', '2020-07-23 00:38:51', 'Corousel10', 0),
(99, 'dupatta', '2020-07-23 00:38:51', 'Corousel9', 0),
(98, 'dupatta', '2020-07-23 00:38:51', 'Corousel8', 0),
(97, 'dupatta', '2020-07-23 00:38:51', 'Corousel7', 182),
(96, 'dupatta', '2020-07-23 00:38:51', 'Corousel6', 182),
(95, 'dupatta', '2020-07-23 00:38:51', 'Corousel5', 183),
(94, 'dupatta', '2020-07-23 00:38:51', 'Corousel4', 181),
(93, 'dupatta', '2020-07-23 00:38:51', 'Corousel3', 183),
(92, 'dupatta', '2020-07-23 00:38:51', 'Corousel2', 182),
(91, 'dupatta', '2020-07-23 00:38:51', 'Corousel1', 181),
(90, 'saree', '2020-07-23 00:17:49', 'Corousel10', 0),
(89, 'saree', '2020-07-23 00:17:49', 'Corousel9', 0),
(88, 'saree', '2020-07-23 00:17:49', 'Corousel8', 0),
(87, 'saree', '2020-07-23 00:17:49', 'Corousel7', 0),
(86, 'saree', '2020-07-23 00:17:49', 'Corousel6', 0),
(85, 'saree', '2020-07-23 00:17:49', 'Corousel5', 172),
(84, 'saree', '2020-07-23 00:17:49', 'Corousel4', 171),
(83, 'saree', '2020-07-23 00:17:49', 'Corousel3', 171),
(82, 'saree', '2020-07-23 00:17:49', 'Corousel2', 169),
(81, 'saree', '2020-07-23 00:17:49', 'Corousel1', 168),
(113, 'lehenga', '2020-07-23 00:39:51', 'Corousel3', 174),
(114, 'lehenga', '2020-07-23 00:39:51', 'Corousel4', 175),
(115, 'lehenga', '2020-07-23 00:39:51', 'Corousel5', 176),
(116, 'lehenga', '2020-07-23 00:39:51', 'Corousel6', 0),
(117, 'lehenga', '2020-07-23 00:39:51', 'Corousel7', 0),
(118, 'lehenga', '2020-07-23 00:39:51', 'Corousel8', 0),
(119, 'lehenga', '2020-07-23 00:39:51', 'Corousel9', 0),
(120, 'lehenga', '2020-07-23 00:39:51', 'Corousel10', 0),
(121, 'lehenga', '2020-07-23 11:34:39', '', 176),
(122, 'saree', '2020-08-04 06:47:23', '', 168),
(123, 'saree', '2020-08-04 06:47:38', '', 169);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `name` varchar(32) NOT NULL,
  `parent` varchar(32) NOT NULL,
  `source` varchar(262) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent`, `source`) VALUES
(7, 'Sute', 'none', 'uploads/product/DSC_0500-copy-1-330x413.jpg'),
(8, 'Dupatta', 'none', 'uploads/product/002-330x413.jpg'),
(9, 'Lehenga', 'none', 'uploads/images\\/thumbnail/5085_1_thumb-142x200.jpg'),
(10, 'Sarees', 'none', 'uploads/product/DSC_0621-copy-330x413.jpg'),
(11, 'arti singh pateldgdf', 'Sute', 'd4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sub_title` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `menu` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `title`, `sub_title`, `created_at`, `menu`) VALUES
(4, 'Collection', '<span xss=removed>Collection</span> ', '2020-06-27 17:33:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection_product`
--

CREATE TABLE `collection_product` (
  `cp_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection_product`
--

INSERT INTO `collection_product` (`cp_id`, `collection_id`, `product_id`) VALUES
(4, 4, 23),
(5, 4, 27),
(6, 4, 28),
(7, 4, 45);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(62) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `subject` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `status` enum('New','Done') NOT NULL DEFAULT 'New',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `subject`, `message`, `status`, `added_date`) VALUES
(1, 'ruchi singh', '01231312323', 'artisinghh11@gmail.com', 'SM Consultancy', 'bf  fghf bgf  hf  gfn  g  h c bgfn g  f  h f b h', 'New', '2020-04-16 06:31:18'),
(2, 'ruchi singh', '01231312323', 'artisinghh11@gmail.com', 'SM Consultancy', 'bf  fghf bgf  hf  gfn  g  h c bgfn g  f  h f b h', 'New', '2020-04-16 06:31:50'),
(4, 'ruchi singh', '8040729016', 'a@gmail.com', 'something', 'hello', 'Done', '2020-06-01 10:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` int(6) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `customer_name`, `email`, `phone`, `postcode`, `address`, `created`, `modified`, `status`) VALUES
(21, 'AKIASZ001', 'pooja singh', 'singhseema4581@gmail.com', '01231312323', 123455, 'sikiya narapur', '0000-00-00 00:00:00', '2020-06-05 23:43:18', '1'),
(22, 'EDO100142', 'arti singh', 'arti@gmail.com', '01231312323', 123455, 'sikiya', '2020-07-17 21:44:22', '2020-07-22 12:51:02', '1'),
(23, 'EDO100143', 'pooja singh', '', '', NULL, '', '2020-07-23 17:46:24', '2020-07-23 17:46:24', '1'),
(24, 'EDO100144', 'test', '', '', NULL, '', '2020-08-02 05:28:52', '2020-08-02 05:28:52', '1');

-- --------------------------------------------------------

--
-- Table structure for table `docfile`
--

CREATE TABLE `docfile` (
  `docid` char(32) NOT NULL,
  `nodeid` char(32) NOT NULL,
  `type` enum('free','paid') NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `size` varchar(32) NOT NULL,
  `doctype` varchar(32) NOT NULL,
  `download` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `filetype` varchar(32) DEFAULT NULL,
  `details` text,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `status`, `filetype`, `details`, `deleted`, `created`) VALUES
(102, 'saree_medium-1300x600', 1, 'jpg', '{\"dirname\":\"uploads\\/images\\/medium\",\"basename\":\"saree_medium-1300x600.jpg\",\"extension\":\"jpg\",\"filename\":\"saree_medium-1300x600\",\"status\":1,\"last_modified\":\"July 22 2020 16:24:14.\",\"size\":144127,\"dime\":{\"0\":1300,\"1\":600,\"2\":2,\"3\":\"width=\\\"1300\\\" height=\\\"600\\\"\",\"bits\":8,\"channels\":3,\"mime\":\"image\\/jpeg\"}}', 0, '2020-07-22 19:54:14'),
(103, 'logo_medium-200x92', 1, 'png', '{\"dirname\":\"uploads\\/images\\/medium\",\"basename\":\"logo_medium-200x92.png\",\"extension\":\"png\",\"filename\":\"logo_medium-200x92\",\"status\":1,\"last_modified\":\"July 23 2020 10:27:29.\",\"size\":21834,\"dime\":{\"0\":200,\"1\":92,\"2\":3,\"3\":\"width=\\\"200\\\" height=\\\"92\\\"\",\"bits\":8,\"mime\":\"image\\/png\"}}', 0, '2020-07-23 13:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `gst`
--

CREATE TABLE `gst` (
  `id` int(11) NOT NULL,
  `gstName` varchar(20) NOT NULL,
  `gstValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gst`
--

INSERT INTO `gst` (`id`, `gstName`, `gstValue`) VALUES
(1, 'SGST', 30),
(2, 'CGST', 20),
(3, 'IGST', 10);

-- --------------------------------------------------------

--
-- Table structure for table `homesetting`
--

CREATE TABLE `homesetting` (
  `id` int(11) NOT NULL,
  `address` varchar(62) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `about` varchar(132) NOT NULL,
  `logo` varchar(62) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homesetting`
--

INSERT INTO `homesetting` (`id`, `address`, `email`, `phone`, `title`, `favicon`, `about`, `logo`, `added_date`) VALUES
(1, '12/A sector 3 varanasi up India', 'onlineTuraja@gmail.com', '9876543214', 'Turaja', 'icon.png', 'Hello , What are you Say this site?', 'logo8.png', '2020-07-26 03:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `indexing`
--

CREATE TABLE `indexing` (
  `id` int(11) NOT NULL,
  `root` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indexing`
--

INSERT INTO `indexing` (`id`, `root`, `port`, `type`) VALUES
(206, 109, 9, 'category'),
(207, 110, 7, 'category'),
(208, 111, 7, 'category'),
(209, 112, 7, 'category'),
(210, 113, 7, 'category'),
(211, 114, 7, 'category'),
(212, 115, 7, 'category'),
(213, 116, 7, 'category'),
(214, 117, 8, 'category'),
(215, 118, 8, 'category'),
(216, 119, 8, 'category'),
(217, 120, 8, 'category'),
(218, 121, 8, 'category'),
(219, 122, 8, 'category'),
(220, 123, 9, 'category'),
(221, 124, 10, 'category'),
(222, 125, 9, 'category'),
(223, 126, 8, 'category'),
(224, 127, 10, 'category'),
(225, 128, 9, 'category'),
(226, 129, 7, 'category'),
(227, 130, 8, 'category'),
(228, 131, 7, 'category'),
(229, 132, 7, 'category'),
(230, 133, 9, 'category'),
(231, 134, 9, 'category'),
(232, 135, 9, 'category'),
(233, 136, 7, 'category'),
(234, 137, 7, 'category'),
(235, 138, 7, 'category'),
(236, 139, 7, 'category'),
(237, 140, 7, 'category'),
(238, 141, 7, 'category'),
(239, 142, 7, 'category'),
(240, 143, 8, 'category'),
(241, 144, 8, 'category'),
(242, 145, 8, 'category'),
(243, 146, 8, 'category'),
(244, 147, 8, 'category'),
(245, 148, 8, 'category'),
(246, 149, 9, 'category'),
(247, 150, 10, 'category'),
(248, 151, 9, 'category'),
(249, 152, 8, 'category'),
(250, 153, 10, 'category'),
(251, 154, 9, 'category'),
(252, 155, 7, 'category'),
(253, 156, 8, 'category'),
(254, 157, 7, 'category'),
(255, 158, 7, 'category'),
(256, 159, 9, 'category'),
(257, 160, 9, 'category'),
(258, 161, 9, 'category'),
(259, 162, 7, 'category'),
(260, 163, 7, 'category'),
(261, 164, 7, 'category'),
(262, 165, 7, 'category'),
(263, 166, 7, 'category'),
(264, 167, 7, 'category'),
(265, 168, 2, 'tag'),
(266, 168, 10, 'category'),
(267, 169, 3, 'tag'),
(268, 169, 10, 'category'),
(269, 170, 4, 'tag'),
(270, 170, 10, 'category'),
(271, 171, 4, 'tag'),
(272, 171, 10, 'category'),
(273, 172, 2, 'tag'),
(274, 172, 10, 'category'),
(275, 173, 4, 'tag'),
(276, 173, 9, 'category'),
(277, 174, 4, 'tag'),
(278, 174, 9, 'category'),
(279, 175, 3, 'tag'),
(280, 175, 9, 'category'),
(281, 176, 3, 'tag'),
(282, 176, 9, 'category'),
(283, 177, 2, 'tag'),
(284, 177, 7, 'category'),
(285, 178, 2, 'tag'),
(286, 178, 7, 'category'),
(287, 179, 3, 'tag'),
(288, 179, 7, 'category'),
(289, 180, 2, 'tag'),
(290, 180, 7, 'category'),
(291, 181, 3, 'tag'),
(292, 181, 8, 'category'),
(293, 182, 2, 'tag'),
(294, 182, 8, 'category'),
(295, 183, 2, 'tag'),
(296, 183, 8, 'category'),
(297, 184, 2, 'tag'),
(298, 184, 8, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 'kogk44c00ksswwg44sssgg8c8sws8g0ogocgkg84', 10, 1, 0, NULL, 1584184675);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user_id` char(32) NOT NULL,
  `ip` varchar(24) NOT NULL,
  `lastlog` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user_id`, `ip`, `lastlog`) VALUES
(1, '200', '::1', '2020-03-13 08:03:11'),
(2, '200', '::1', '2020-03-13 08:03:06'),
(3, '200', '100.0.0.100', '2020-03-16 09:03:21'),
(4, '400', '100.0.0.100', '2020-03-16 09:03:21'),
(5, '400', '192.168.0.1', '2020-03-16 10:03:04'),
(6, '400', '192.168.0.1', '2020-03-16 10:03:32'),
(7, '400', '192.168.0.1', '2020-03-16 10:03:20'),
(8, '400', '192.168.0.1', '2020-03-16 10:03:15'),
(9, '400', '192.168.0.1', '2020-03-16 10:03:35'),
(10, '400', '192.168.0.1', '2020-03-16 10:03:07'),
(11, '400', '192.168.0.1', '2020-03-16 10:03:06'),
(12, '400', '192.168.0.1', '2020-03-16 10:03:11'),
(13, '400', '192.168.0.1', '2020-03-16 10:03:35'),
(14, '400', '192.168.0.1', '2020-03-16 10:03:56'),
(15, '400', '192.168.0.1', '2020-03-16 10:03:43'),
(16, '400', '192.168.0.1', '2020-03-16 11:03:05'),
(17, '400', '192.168.0.1', '2020-03-16 11:03:33'),
(18, '400', '192.168.0.1', '2020-03-16 11:03:45'),
(200, '', '::1', '2020-03-19 07:03:49'),
(201, '200', '::1', '2020-03-19 07:03:07'),
(202, '200', '::1', '2020-03-19 07:03:49'),
(203, '200', '::1', '2020-03-19 07:03:25'),
(204, '200', '::1', '2020-03-19 07:03:10'),
(205, '200', '::1', '2020-03-19 07:03:41'),
(206, '200', '::1', '2020-03-19 07:03:55'),
(207, '200', '::1', '2020-03-19 07:03:21'),
(208, '200', '::1', '2020-03-19 07:03:31'),
(209, '200', '::1', '2020-03-19 07:03:47'),
(210, '200', '::1', '2020-03-19 07:03:19'),
(211, '200', '::1', '2020-03-19 07:03:32'),
(212, '200', '::1', '2020-03-19 07:03:56'),
(213, '200', '::1', '2020-03-19 07:03:44'),
(214, '200', '::1', '2020-03-19 07:03:10'),
(215, '200', '::1', '2020-03-19 07:03:39'),
(216, '200', '::1', '2020-03-19 07:03:11'),
(217, '300', '::1', '2020-03-20 08:03:12'),
(218, '300', '::1', '2020-03-20 08:03:39'),
(219, '200', '::1', '2020-03-20 08:03:59'),
(220, '200', '::1', '2020-03-20 08:03:42'),
(221, '200', '::1', '2020-03-20 08:03:57'),
(222, '200', '::1', '2020-03-20 08:03:38'),
(223, '200', '::1', '2020-03-20 08:03:57'),
(224, '200', '::1', '2020-03-20 08:03:22'),
(225, '200', '::1', '2020-03-20 08:03:10'),
(226, '200', '::1', '2020-03-20 08:03:11'),
(227, '200', '::1', '2020-03-20 08:03:25'),
(228, '200', '::1', '2020-03-20 08:03:59'),
(229, '200', '::1', '2020-03-20 08:03:38'),
(230, '200', '::1', '2020-03-20 08:03:44'),
(231, '200', '::1', '2020-03-20 08:03:06'),
(232, '200', '::1', '2020-03-20 08:03:00'),
(233, '200', '::1', '2020-03-20 08:03:26'),
(234, '200', '::1', '2020-03-20 08:03:06'),
(235, '200', '::1', '2020-03-20 08:03:25'),
(236, '200', '::1', '2020-03-20 08:03:56'),
(237, '200', '::1', '2020-03-20 08:03:26'),
(238, '200', '::1', '2020-03-20 08:03:41'),
(239, '200', '::1', '2020-03-20 09:03:24'),
(240, '200', '::1', '2020-03-20 09:03:47'),
(241, '300', '::1', '2020-03-20 09:03:17'),
(242, '200', '::1', '2020-03-20 10:03:27'),
(243, '200', '::1', '2020-03-21 06:03:33'),
(244, '200', '::1', '2020-03-23 03:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `logme`
--

CREATE TABLE `logme` (
  `id` int(11) NOT NULL,
  `logid` char(9) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `language` enum('english','hindi') DEFAULT NULL,
  `role` char(5) NOT NULL,
  `status` enum('active','deactive') NOT NULL,
  `joindate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logme`
--

INSERT INTO `logme` (`id`, `logid`, `phone`, `email`, `password`, `language`, `role`, `status`, `joindate`, `updated_at`, `deleted_at`, `deleted`) VALUES
(100101, 'AKIASZ001', '7905004391', 'omie@gmail.com', '$2y$10$RiAZ5AQUiLJBlSyNagz/yOHVYzhhWv3t5LfADRTGI4TQaiAV3DUmK', 'english', 'a', 'active', '2020-03-13 00:00:00', '2020-03-18 11:43:03', '0000-00-00 00:00:00', 0),
(100137, 'EDO100137', NULL, 'ruchisingh@gmail.com', '$2y$10$eX5DTDyoAVVgWA8unK4DBuAYZZuU08JnQ5OltMf.IA6NtRLt6nA8K', NULL, 'u', 'active', '2020-06-05 13:26:53', '2020-06-05 12:56:53', NULL, 0),
(100138, 'EDO100138', NULL, 'adity@gmail.com', '$2y$10$zE506nolSXAtTaVqRiLMmeazcRDdXpE7nN0BwzNoIuC7ry3F6C32K', NULL, 'u', 'active', '2020-06-05 19:06:30', '2020-06-05 18:36:30', NULL, 0),
(100139, 'EDO100139', NULL, 'payal@gmail.com', '$2y$10$ZMXDLttly5l6RkhUW5Po6ukT9/TMo5gbP.jqJEOIjtZSlc39Zx5Bm', NULL, 'u', 'active', '2020-06-05 23:47:02', '2020-06-05 23:17:02', NULL, 0),
(100140, 'EDO100140', NULL, 'a@gmail.com', '$2y$10$egAl8xBx2zO6PkqjqaNaDu3axldaF3IC9qTadspX7da7fYDdkvrai', NULL, 'u', 'active', '2020-06-06 16:45:30', '2020-06-06 16:15:30', NULL, 0),
(100141, 'EDO100141', NULL, 'saka@gmail.com', '$2y$10$TFmCBzTHtB7Zx2UWzwQq3ua6z1.3QrhfHNlJq6jAp4/b8KYHxRBqC', NULL, 'u', 'active', '2020-07-13 21:22:20', '2020-07-13 08:22:20', NULL, 0),
(100142, 'EDO100142', NULL, 'arti@gmail.com', '$2y$10$Hhp7oM7IIAY/q4USmc/oe.oS59gC6S2M0pvhYpKpBSyc4ui/vpgb.', NULL, 'u', 'active', '2020-07-17 22:14:22', '2020-07-17 21:44:22', NULL, 0),
(100143, 'EDO100143', NULL, 'pooja@gmail.com', '$2y$10$6UicLR8R.CkZTGbwvyc79ORFHG17iXT/9SJT0bPrEskTRVboUAcN2', NULL, 'u', 'active', '2020-07-23 18:16:24', '2020-07-23 17:46:24', NULL, 0),
(100144, 'EDO100144', '9984661737', NULL, '$2y$10$PMSn5KII2jA1gTjAJQjbY.UbTmHo5ZvfcGow67fvolhXgXWhMNQtS', NULL, 'u', 'active', '2020-08-02 18:28:52', '2020-08-02 05:28:52', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------dc86471a86024c76\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602388, 1.59393, '1', 201),
(2, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------9310426db8a20720\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602442, 0.394157, '1', 0),
(3, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------c07f8dac69e6dd4f\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602558, 0.0782301, '1', 0),
(4, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------2bbd95f48ea85a50\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602637, 0.157143, '1', 0),
(5, 'api/Login', 'post', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"86fd8d17-de9f-441c-a560-1736528be0cb\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602744, 0.129579, '1', 0),
(6, 'api/Login', 'post', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e9a6934d-bd08-4e65-86eb-1e4f33910192\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602826, 0.222999, '1', 201),
(7, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------3c47f35839bdf500\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602869, 0.32407, '1', 201),
(8, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------6f7dbceb2640d8ef\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602905, 0.26103, '1', 201),
(9, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------205c489c311ace26\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602950, 0.208422, '1', 201),
(10, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------02fa45c52c6d47d3\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584602981, 0.0971799, '1', 201),
(11, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b34b041a2f16f440\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603054, 0.161104, '1', 201),
(12, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------f61eccc30b08c44e\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603081, 0.322779, '1', 201),
(13, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------3567e5f9ec1732cf\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603271, 0.139919, '1', 201),
(14, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------8822b84224a4072c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603347, 0.264792, '1', 201),
(15, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------312fcda55573967f\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603439, 0.135676, '1', 201),
(16, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------fd00e29d873f3d83\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603872, 0.278166, '1', 201),
(17, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------84d2e3c14a1662f0\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603896, 0.281119, '1', 201),
(18, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------6ffdd5a4508df4f4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603944, 0.170359, '1', 201),
(19, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------234434975d33544c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603970, 0.220311, '1', 201),
(20, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b41190ac79762c25\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584603999, 0.108457, '1', 201),
(21, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"246\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------c8407a2a3300715a\";s:5:\"email\";s:4:\"root\";s:8:\"password\";s:5:\"admin\";}', '', '::1', 1584604014, 0.163954, '1', 204),
(22, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"246\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------aee0123d00ae023c\";s:5:\"email\";s:4:\"root\";s:8:\"password\";s:5:\"admin\";}', '', '::1', 1584604130, 0.199594, '1', 204),
(23, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"246\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e627ff8ea7037baa\";s:5:\"email\";s:4:\"root\";s:8:\"password\";s:5:\"admin\";}', '', '::1', 1584604135, 0.154999, '1', 204),
(24, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e6e1d137b9a0c28b\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584604151, 0.111509, '1', 201),
(25, 'api/signup/otp', 'put', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"84558422-f673-48d0-90d8-4ca5adacc59e\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"17\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"mobile\";s:10:\"7668498112\";}', '', '::1', 1584605929, 0.919467, '1', 201),
(26, 'api/users', 'get', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0e1e2559-9486-4752-939b-a003b967f6f1\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"17\";s:10:\"Connection\";s:10:\"keep-alive\";}', '', '::1', 1584688264, 1.90539, '1', 200),
(27, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"256\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e542d057d5fd2cb3\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584691807, 0.232942, '1', 204),
(28, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------2b60db0b55209b54\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584691818, 0.128321, '1', 204),
(29, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------a9f984a4a5bf5536\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692005, 0.250493, '1', 204),
(30, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------56ae17612e5113df\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692168, 0.114027, '1', 204),
(31, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------6825de4554985700\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692180, 0.140713, '1', 204),
(32, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------e399c8539873aead\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692208, 0.0860889, '1', 204),
(33, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------24ee6f7fdf99fa91\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692270, 0.170467, '1', 204),
(34, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------5c22faee9bae0616\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692396, 0.256813, '1', 204),
(35, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b82bd1aa7acbe679\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692417, 0.177258, '1', 204),
(36, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------7ef9c66fc3acc62c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692477, 0.163793, '1', 204),
(37, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------79b9abe368127611\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692546, 0.11574, '1', 204),
(38, 'api/Login', 'post', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"249129fa-3bcf-4e75-9526-ecd8e7d11e71\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692626, 0.134079, '1', 204),
(39, 'api/Login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7524829f-8c6b-4314-9cda-90f62d43df66\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692701, 0.160372, '1', 204),
(40, 'api/Login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"01d86a95-f43a-4266-b37d-34910e7aed86\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------827250464519600781342123\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:14:\"Content-Length\";s:3:\"287\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692744, 0.306863, '1', 204),
(41, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8769a102-fd87-461b-866c-e959b4e900e9\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692810, 0.139524, '1', 204),
(42, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"2848c164-9997-4435-8874-0445b3dc802d\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584692832, 0.322264, '1', 201),
(43, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f32c9ca6-6d16-45cc-b245-ce5f2900b643\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";}', '', '::1', 1584692852, 0.086364, '1', 204),
(44, 'api/Login', 'post', 'a:7:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"257\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------bad4535c9ad3b088\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584692900, 0.367161, '1', 204),
(45, 'api/login', 'post', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"df302ac9-ac39-4a43-9152-d36fb89d965d\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"38\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";}', '', '::1', 1584692923, 0.16898, '1', 204),
(46, 'api/login', 'post', 'a:14:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a1d98c23-bf29-4922-954d-42ef7c267c9e\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"45\";s:6:\"Cookie\";s:43:\"ci_session=u0v0qcsp9lpl73dkscs6k2rf0vaphqej\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693088, 0.105505, '1', 204),
(47, 'api/login', 'post', 'a:14:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8855e79c-ecc0-45c1-8680-01a8be2deabf\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"45\";s:6:\"Cookie\";s:43:\"ci_session=in6e7naibj3rkfnr5dku66jh8s26kis4\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";s:4:\"role\";s:1:\"s\";}', '', '::1', 1584693099, 0.3226, '1', 201),
(48, 'api/login', 'post', 'a:14:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.23.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b2296ded-71a3-4a42-a1a2-b9728fb59656\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:2:\"45\";s:6:\"Cookie\";s:43:\"ci_session=in6e7naibj3rkfnr5dku66jh8s26kis4\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693179, 0.308308, '1', 201),
(49, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------fd505e8b2f18d869\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693282, 0.144112, '1', 201),
(50, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------cb7951ffa5bfe94d\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693357, 0.18238, '1', 201),
(51, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------5d77f125891aa5f5\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693397, 0.137795, '1', 201),
(52, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------cef93a6d8046c089\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693477, 0.178403, '1', 201),
(53, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------d5aa774327c990b0\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693501, 0.21852, '1', 201),
(54, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------995b5b81614da22e\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693610, 0.299046, '1', 201),
(55, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------06e4c76aecbf17fc\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693671, 0.136203, '1', 201),
(56, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------9d3cc4573c083e2b\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584693925, 0.199257, '1', 201),
(57, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------edb83fc294af9a35\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694019, 0.1715, '1', 201),
(58, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------8650d7455ff6b8f7\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694058, 0.101836, '1', 201),
(59, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------96339d1987d62bee\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694184, 0.316631, '1', 201),
(60, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------bd53fc468d179e21\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694206, 0.167158, '1', 201),
(61, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------71e18a42f4b36294\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694319, 0.203884, '1', 201),
(62, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------14d5737ec33b9cc4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694406, 0.112315, '1', 201),
(63, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------727e8715cde55007\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694506, 0.259325, '1', 201),
(64, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------1a08dee71e3c5a9f\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694525, 0.192755, '1', 201),
(65, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------9a779a782a885e37\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694676, 0.20404, '1', 201),
(66, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------ab959eb0eaeff9c4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694766, 0.134476, '1', 201),
(67, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------c60fdf4f7513551c\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694781, 0.292675, '1', 201),
(68, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------47e2ac5b3c4923e4\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694824, 0.143524, '1', 201),
(69, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------967b50347a7f21d5\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694847, 0.162707, '1', 201),
(70, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------b29a921acdaad87d\";s:5:\"email\";s:15:\"rit12@gmail.com\";s:8:\"password\";s:5:\"12345\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584694877, 0.165407, '1', 201),
(71, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------98409086bc50671e\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584699387, 0.241007, '1', 201),
(72, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------bfcaa807ba6642f5\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584770553, 0.814498, '1', 201),
(73, 'api/Login', 'post', 'a:8:{s:4:\"Host\";s:9:\"localhost\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:6:\"Accept\";s:3:\"*/*\";s:14:\"Content-Length\";s:3:\"351\";s:12:\"Content-Type\";s:70:\"multipart/form-data; boundary=------------------------16faa89f7da12b07\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"a\";}', '', '::1', 1584933874, 1.79188, '1', 201),
(74, 'api/Login', 'post', 'a:16:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"f11467d3-4e3c-b32b-ed58-2514864dccdf\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";}', '', '::1', 1585125739, 0.44133, '1', 204),
(75, 'api/Signup', 'post', 'a:18:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarybV97p1ozAsBTFwjz\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"8b85d7b7-ebb3-7925-47bc-64b5d57559b6\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"mobile\";s:10:\"7905004391\";}', '', '::1', 1585283153, 0.56331, '1', 0),
(76, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundary8XmecQ665DGxzLj9\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"280d23d3-3336-f8ca-db18-e57a99b5c525\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"7905004391\";}', '', '::1', 1585283191, 0.219044, '1', 404),
(77, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundaryawLNaMufgXV6ttii\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"ee08e5ad-3327-34d5-ff49-8ade7eec22bf\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120459\";}', '', '::1', 1585283310, 0.313454, '1', 201),
(78, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarytXYwZBgDIzvUtMAV\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"c5333875-84f9-7fb1-d50f-0b95ba3587de\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120459\";}', '', '::1', 1585283331, 0.159369, '1', 404),
(79, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarywNZPpSJxKvdv1x6W\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"ebe1ac53-d1e3-44c4-178d-65ebec0d6837\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120450\";}', '', '::1', 1585283393, 0.238131, '1', 0),
(80, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarypyz0QB7v1GfYowO6\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"9faffb00-c92d-dc7b-7477-60ddbeb74591\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=sa3uijo5mf3ttiqjgmhr94v11vcqk3km\";s:6:\"mobile\";s:10:\"8853120450\";}', '', '::1', 1585283474, 0.619877, '1', 404),
(81, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarylbPibEpybehA6wRA\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"19d18b2e-a087-1343-466b-a27ce41c2e38\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=324r09c6h3et9t4p93jhe5cv468uai9i\";s:6:\"mobile\";s:10:\"8853120456\";}', '', '::1', 1585283498, 0.362385, '1', 0),
(82, 'api/signup', 'post', 'a:19:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundaryvShQfKAfxeU1KLqQ\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:14:\"Sec-Fetch-Dest\";s:5:\"empty\";s:5:\"email\";s:14:\"rit1@gmail.com\";s:8:\"password\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"226ce77f-d511-2ea7-36dd-536279b363a4\";s:6:\"Accept\";s:3:\"*/*\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:32:\"en-US,en;q=0.9,hi;q=0.8,mt;q=0.7\";s:6:\"Cookie\";s:43:\"ci_session=324r09c6h3et9t4p93jhe5cv468uai9i\";s:6:\"mobile\";s:10:\"8853120455\";}', '', '::1', 1585283572, 4.3544, '1', 201);

-- --------------------------------------------------------

--
-- Table structure for table `megamenu`
--

CREATE TABLE `megamenu` (
  `menu_id` int(11) NOT NULL,
  `parent` enum('shop','collection','technique') NOT NULL,
  `type` enum('text','pic') NOT NULL,
  `title` varchar(64) NOT NULL,
  `url` varchar(256) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `megamenu`
--

INSERT INTO `megamenu` (`menu_id`, `parent`, `type`, `title`, `url`, `image`, `updated_at`) VALUES
(1, 'shop', 'text', 'Fresh of the Loom', 'http://localhost/Turaja/web/shop/shop_by_category/7', NULL, '2020-06-25 17:27:49'),
(2, 'shop', 'pic', 'title1', 'http://localhost/Turaja/web/shop/shop_by_category/7 ', 'day3.png', '2020-06-25 18:09:50'),
(3, 'shop', 'pic', 'title2', '', 'DSC_0507-copy-330x413.jpg', '2020-06-25 18:09:50'),
(6, 'shop', 'pic', 'title3', '', 'DSC_0507-copy-330x413.jpg', '2020-06-25 18:10:57'),
(9, 'collection', 'pic', 'title1', '', '002-330x413.jpg', '2020-06-25 20:12:30'),
(10, 'collection', 'pic', 'title2', '', 'download_(1).jpg', '2020-06-25 20:13:26'),
(11, 'collection', 'pic', 'sdfsdfds', '', 'download_(1).jpg', '2020-06-25 20:13:50'),
(22, 'collection', 'text', 'Collection', 'Pages/collection/4', NULL, '2020-06-27 17:33:14'),
(23, 'technique', 'text', 'Technique', 'Pages/technique/3', NULL, '2020-06-27 17:39:36'),
(19, 'technique', 'pic', 'Title1', '', 'DSC_0507-copy-330x413.jpg', '2020-06-27 15:35:24'),
(20, 'technique', 'pic', 'Title2', '', 'DSC_0507-copy-330x413.jpg', '2020-06-27 15:35:31'),
(21, 'technique', 'pic', 'Title3', '', 'DSC_0507-copy-330x413.jpg', '2020-06-27 15:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `code` varchar(6) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `key`, `code`, `time`) VALUES
(21, '9984661737', '172914', '2020-03-17 07:03:13'),
(20, '7668498112', '953507', '2020-03-19 08:03:50'),
(22, '7668498113', '106939', '2020-03-17 02:03:18'),
(12, '8951122124', '357692', '2020-03-16 11:03:46'),
(13, '8951122123', '798448', '2020-03-16 01:03:40'),
(23, '8853120455', '789022', '2020-03-27 05:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `totalPrice` float(10,2) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_id`, `grand_total`, `totalPrice`, `created`, `modified`, `status`) VALUES
(45, 'EDO100140', 37, 10200.00, NULL, '2020-06-07 10:18:02', '2020-06-07 10:18:02', '4'),
(46, 'EDO100140', 37, 10000.00, NULL, '2020-06-07 10:19:32', '2020-06-07 10:19:32', '2'),
(47, 'EDO100142', 22, 12500.00, NULL, '2020-07-17 21:46:40', '2020-07-17 21:46:40', '2'),
(48, 'EDO100142', 22, 1100.00, NULL, '2020-07-22 00:45:31', '2020-07-22 00:45:31', '3'),
(49, 'EDO100142', 22, 200.00, NULL, '2020-07-22 01:09:01', '2020-07-22 01:09:01', '2'),
(50, 'EDO100142', 22, 400.00, 520.00, '2020-07-22 11:29:51', '2020-07-22 11:29:51', '2'),
(51, 'EDO100142', 22, 200.00, 300.00, '2020-07-22 11:39:53', '2020-07-22 11:39:53', '2'),
(52, 'EDO100142', 22, 9000.00, 9080.00, '2020-07-22 11:59:06', '2020-07-22 11:59:06', '4'),
(53, 'EDO100142', 22, 1000.00, NULL, '2020-07-22 12:03:41', '2020-07-22 12:03:41', '1'),
(54, 'EDO100142', 22, 200.00, 290.00, '2020-07-22 12:21:02', '2020-07-22 12:21:02', '2');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_id`, `quantity`, `sub_total`) VALUES
(47, 'EDO100140', 45, 46, 2, 10000.00),
(48, 'EDO100140', 45, 31, 1, 200.00),
(49, 'EDO100140', 46, 47, 1, 10000.00),
(50, 'EDO100142', 47, 47, 1, 10000.00),
(51, 'EDO100142', 47, 141, 1, 2500.00),
(52, 'EDO100142', 48, 45, 1, 900.00),
(53, 'EDO100142', 48, 25, 1, 200.00),
(54, 'EDO100142', 49, 41, 1, 200.00),
(55, 'EDO100142', 50, 42, 1, 200.00),
(56, 'EDO100142', 50, 41, 1, 200.00),
(57, 'EDO100142', 51, 41, 1, 200.00),
(58, 'EDO100142', 52, 28, 1, 9000.00),
(59, 'EDO100142', 53, 48, 1, 1000.00),
(60, 'EDO100142', 54, 25, 1, 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_meta`
--

CREATE TABLE `order_meta` (
  `id` int(11) NOT NULL,
  `product_id` char(6) NOT NULL,
  `order_id` char(32) NOT NULL,
  `price` double(5,2) NOT NULL,
  `discount_price` double(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment` char(32) NOT NULL,
  `transaction` varchar(64) NOT NULL,
  `userid` char(32) NOT NULL,
  `orderid` varchar(32) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment`, `transaction`, `userid`, `orderid`, `created_date`, `status`) VALUES
('pay_EzbkNzrUKVOJd3', '1020000', '37', '45', '2020-06-07 10:18:19', '1'),
('pay_EzblwruyHgygNd', '1000000', '37', '46', '2020-06-07 10:19:45', '1'),
('pay_FFcqlzKNnMra79', '1250000', '22', '47', '2020-07-17 21:47:03', '1'),
('pay_FHG2AExPLjihhL', '110000', '22', '48', '2020-07-22 00:45:52', '1'),
('pay_FHRuKSo7GeWK9Q', '29000', '22', '54', '2020-07-22 12:22:49', '1');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` tinytext,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pbc` varchar(32) DEFAULT NULL COMMENT 'Releted to id',
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` int(5) NOT NULL,
  `profile_pic` text NOT NULL,
  `discount` int(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gst` int(11) DEFAULT '0',
  `handwoven` varchar(20) DEFAULT NULL,
  `status` enum('On_Sell','Best_Sell') DEFAULT 'On_Sell',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pbc`, `name`, `description`, `price`, `profile_pic`, `discount`, `quantity`, `gst`, `handwoven`, `status`, `created_at`, `updated_at`) VALUES
(168, NULL, 'Red Pure Katan Silk Banarasi Handloom Saree', '<p><span xss=removed>Be irresistible in these splendid yards of silk and hues of bridal finery. This captivating Kadhua jangla saree has been handcrafted to perfection with delicate zari vines and flowers blooming with abandon.</span><br></p>', 5000, 's1.jpg', 10, 1, 30, 'yes', 'Best_Sell', '2020-07-22 16:35:49', NULL),
(169, NULL, 'Off-White Pure Katan Silk Banarasi Handloom Saree', '<p><span xss=removed>This Banarasi saree is a delightful floral classic. Its gorgeous silken body with delicate resham bootis and skirt border with its intricate Meenakari detailing will sweep you off your feet! </span><br></p>', 4500, 's2.jpg', 10, 1, 20, 'yes', 'Best_Sell', '2020-07-22 16:43:27', NULL),
(171, NULL, 'Beige Pure Katan Silk Banarasi Handloom Saree', '<p><span xss=removed>An utterly fabulous timeless classic in a captivating combination of colours! A resham-striped, silken body, set against artistic temple borders and a dramatic dose of zari. Refined elegance!</span><br></p>', 9000, 's3.jpg', 10, 1, 20, 'no', 'On_Sell', '2020-07-22 17:34:05', NULL),
(172, NULL, 'Beige Pure Katan Silk Banarasi Handloom Saree', '<p><span xss=removed>An utterly fabulous timeless classic in a captivating combination of colours! A resham-striped, silken body, set against artistic temple borders and a dramatic dose of zari. Refined elegance!</span><br></p>', 8000, 's4.jpg', 20, 1, 10, 'yes', 'On_Sell', '2020-07-22 17:42:55', NULL),
(173, NULL, 'Emerald Green Pure Katan Silk Banarasi Handloom Made-to-Measure Lehenga', '<p xss=removed><em xss=removed>She carries the past with her, ready to define the future. </em></p><p xss=removed><span xss=removed></span>An exquisite handloom lehenga, tailored to your measurements. A labour of love, encapsulating centuries of weaving traditions and months of painstaking craftsmanship. On your special day, wrap yourself in these yards of our heritage. </p>', 9000, 'l1.jpg', 20, 1, 20, 'yes', 'Best_Sell', '2020-07-22 17:59:30', NULL),
(174, NULL, 'Emerald Green Pure Katan Silk Banarasi Handloom Made-to-Measure Lehenga', '<p xss=removed><em xss=removed>She carries the past with her, ready to define the future. </em></p><p xss=removed><span xss=removed></span>An exquisite handloom lehenga, tailored to your measurements. A labour of love, encapsulating centuries of weaving traditions and months of painstaking craftsmanship. On your special day, wrap yourself in these yards of our heritage.</p>', 5000, 'l2.jpg', 10, 1, 20, 'yes', 'On_Sell', '2020-07-22 18:30:05', NULL),
(175, NULL, 'White Pure Katan Silk Banarasi Handloom Made-to-Measure Lehenga Rs. 80,000', '<p xss=removed>Nargis - ready to cast a spell. Alluring and enchanting, her smile reaches her eyes. She has the look of one unapologetically herself. Beautiful, inside and out. </p><p xss=removed>An exquisite handloom lehenga, tailored to your measurements. A labour of love, encapsulating centuries of weaving traditions and months of painstaking craftsmanship. On your special day, wrap yourself in these yards of our heritage.</p>', 10000, 'l3.jpg', 20, 1, 10, 'yes', 'Best_Sell', '2020-07-22 18:33:28', NULL),
(176, NULL, 'Mint Blue-Peach Pink Pure Katan Silk Banarasi Handloom Made-to-Measure Lehenga', '<h4 xss=removed><strong xss=removed>Nilofer</strong><em xss=removed><strong xss=removed> </strong></em> </h4><p xss=removed><span xss=removed>The romance of yesteryears and enduring craftsmanship come together in this </span>exquisite handloom lehenga. In a delicate, unusual, soft pallette, this is a labour of love, encapsulating centuries of weaving traditions and months of painstaking craftsmanship. On your special day, wrap yourself in these yards of our heritage. </p>', 3500, 'l4.jpg', 20, 1, 20, 'yes', 'Best_Sell', '2020-07-22 18:41:18', NULL),
(177, NULL, 'Merlot Red Pure Katan Silk Kadwa Jangla Handloom Suit-Skirt Set', '<h1 class=\"product_name title\" xss=removed><span xss=removed>A luxurious and stunning ensemble, steeped in our handloom heritage. The best of Banarasi craftsmanship and finery, paired with the soft, fleeting romance of delicate hand-embroidery on gossamer organza...b</span><span xss=removed>ecause special occasions deserve something extraordinary!</span><br></h1>', 8000, 'st1.jpg', 20, 2, 30, 'yes', 'On_Sell', '2020-07-22 19:03:09', NULL),
(178, NULL, 'Peach Pink Pure Katan Silk Kadwa Jangla Handloom Suit Set', '<p><span xss=removed>A luxurious and charming ensemble, steeped in our handloom heritage. The best of Banarasi craftsmanship and finery, paired with the soft, fleeting romance of delicate hand-embroidery on gossamer organza...b</span><span xss=removed>ecause special occasions deserve something extraordinary!</span><br></p>', 7000, 'st2.jpg', 20, 2, 20, 'yes', 'Best_Sell', '2020-07-22 19:09:05', NULL),
(179, NULL, 'Powder Pink Pure Katan Silk Kadwa Handloom Suit-Skirt Set', '<p><span xss=removed>A luxurious and stunning ensemble, steeped in our handloom heritage. The best of Banarasi craftsmanship and finery, paired with the soft, fleeting romance of delicate hand-embroidery on pure Katan silk with stunning rose bootas ...b</span><span xss=removed>ecause special occasions deserve something extraordinary!</span><br></p>', 8500, 'st5.jpg', 20, 3, 30, 'yes', 'On_Sell', '2020-07-22 19:13:16', NULL),
(180, NULL, 'Deep Olive Raw Silk Suit Set', '<p xss=removed><span xss=removed>An unconventional, rich and striking set. This is a beautiful textured raw silk, asymmetric drape kurta. </span></p><div xss=removed><ul xss=removed><li xss=removed><em xss=removed>Color</em> - A gorgeous shade of Deep Olive Green</li><li xss=removed><em xss=removed>Fabric</em> - Pure handloom raw silk kurta & Pure Chanderi pants</li><li xss=removed><em xss=removed>Speciality</em> - A dainty and chic, asymmetric textured kurta with delicate fabric button detailing on the arms. The trail can also be tucked around the ends for an altogether different drape!</li></ul></div>', 6500, 'st3.jpg', 10, 1, 20, 'no', 'On_Sell', '2020-07-22 19:17:38', NULL),
(181, NULL, 'Yellow Pure Kora Silk Net Banarasi Handloom Dupatta', '<p><span xss=removed>A festive dupatta in light kora silk net! Magnificent cutwork polka dot bootas and a vibrant border with roopa sona antique zari, makes this a delightful handwoven piece.</span><br></p>', 6700, 'd5.jpg', 20, 1, 20, 'yes', 'Best_Sell', '2020-07-22 19:35:30', NULL),
(182, NULL, 'Green Pure Kora Silk Net Banarasi Handloom Dupatta', '<p><span xss=removed>A festive dupatta in light kora silk net! Magnificent resham cutwork bootis, a beautiful interplay of roopa sona zari and textures make this a delightful handwoven piece.</span><br></p>', 3000, 'd1.jpg', 20, 1, 20, 'yes', 'On_Sell', '2020-07-22 19:39:12', NULL),
(183, NULL, 'Green Pure Kora Silk Net Banarasi Handloom Dupatta', '<p><span xss=removed> festive dupatta in light kora silk net! Magnificent resham cutwork bootis, a beautiful interplay of roopa sona zari and textures make this a delightful handwoven piece.</span><br></p>', 4000, 'd2.jpg', 20, 1, 10, 'yes', 'On_Sell', '2020-07-22 19:42:51', NULL),
(184, NULL, 'duppta', '<p><em xss=removed>Since </em><em xss=removed>this product is handwoven, there might be slight irregularities. But don\'t you think these add to the singular charm of a handloom beauty?</em><br></p>', 4000, 'd3.jpg', 20, 1, 30, 'yes', 'Best_Sell', '2020-07-22 19:45:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `product_attribute_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`product_attribute_id`, `product_id`, `attribute_id`, `value`) VALUES
(351, 168, 20, 'red'),
(352, 168, 21, 'pure Katan silk'),
(353, 168, 24, ' Banaras.'),
(354, 168, 25, 'Handloom'),
(355, 169, 0, 'yellow'),
(356, 169, 21, 'Soft as butter'),
(357, 169, 24, 'West Bengal'),
(358, 169, 25, 'Handloom'),
(359, 170, 0, ''),
(360, 171, 20, 'maroon'),
(361, 171, 21, 'coton'),
(362, 171, 24, 'banarasi'),
(363, 171, 25, 'handloom'),
(364, 172, 20, 'maroon'),
(365, 172, 21, 'coton'),
(366, 172, 24, 'banarasi'),
(367, 172, 25, 'modlist'),
(368, 173, 20, 'pink'),
(369, 173, 21, 'silk'),
(370, 173, 24, 'good'),
(371, 173, 25, 'hadloom'),
(372, 174, 20, 'maroon'),
(373, 174, 21, 'banarasi silk'),
(374, 174, 24, 'banarasi'),
(375, 174, 25, 'handloom'),
(376, 175, 20, 'maroon'),
(377, 176, 20, 'red'),
(378, 176, 21, 'silk'),
(379, 176, 24, 'panting'),
(380, 176, 25, 'panting'),
(381, 177, 20, 'white'),
(382, 177, 21, 'coton'),
(383, 177, 21, 'coton'),
(384, 177, 24, 'banarasi'),
(385, 177, 25, 'simple'),
(386, 178, 20, 'pink'),
(387, 178, 21, 'coton'),
(388, 178, 24, 'simple'),
(389, 178, 25, 'handloom'),
(390, 179, 20, 'green'),
(391, 179, 21, 'polister'),
(392, 179, 24, 'banarasi'),
(393, 179, 25, 'banarasi'),
(394, 180, 20, 'pink'),
(395, 180, 21, 'simple'),
(396, 180, 24, 'kadai'),
(397, 180, 25, 'handloom'),
(398, 181, 20, 'yellow'),
(399, 181, 21, 'banarasi'),
(400, 181, 24, 'simple'),
(401, 181, 25, 'simple'),
(402, 182, 20, 'pink'),
(403, 182, 21, 'banarasi'),
(404, 182, 24, 'panting'),
(405, 182, 25, 'panting'),
(406, 183, 20, 'red'),
(407, 183, 21, ' Light and airy'),
(408, 183, 24, ' Light and airy'),
(409, 183, 24, 'Handloom'),
(410, 184, 20, 'white');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `product_images_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `color` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`product_images_id`, `product_id`, `image`, `color`) VALUES
(1, 19, 'Ed_Sheeran1.png', '#F37A60'),
(2, 19, 'educationaduca.png', '#F37A60'),
(3, 20, 'slid4.jpg', '#F1182B'),
(4, 23, 'DSC_0381-330x413.jpg', '#0EF923'),
(5, 23, 'DSC_0621-copy-330x413.jpg', '#0EF923'),
(6, 24, 'download.jpg', '#FFC300'),
(7, 25, 'DSC_0507-copy-330x413.jpg', '#C70039'),
(8, 25, 'DSC_0500-copy-1-330x413.jpg', '#F9F20E '),
(9, 27, '5085_12.jpg', '#E811D4'),
(10, 28, 'download_(3).jpg', '#C70039'),
(11, 29, 'download_(3)2.jpg', '#F37A60'),
(14, 1, 'download_(2)1.jpg', '#56E628 '),
(15, 1, 'download_(2)1.jpg', '#F1182B'),
(16, 1, 'download_(2)1.jpg', '#09B4C5 '),
(17, 1, 'download_(2)1.jpg', '#18F073 '),
(18, 24, 'download_(1)3.jpg', '#18F073 '),
(19, 24, 'download3.jpg', '#0EF923'),
(20, 24, 'download_(3)5.jpg', '#18F073 '),
(21, 40, 'DSC_0381-330x4134.jpg', '#F9F20E '),
(22, 42, '1562871246794_0_2.jpg', '#56E628 '),
(24, 44, 'download_(3)6.jpg', '#faf4f4'),
(26, 45, 'skcit19_enlarge.jpg', '#fd8bee'),
(25, 45, '2635sl06-59224.jpg', '#57e5e2'),
(27, 45, 'Cotton-Patiala-Salwar-Kameez.jpg', '#ab0da5'),
(28, 45, 'Salwar-Kameez-Designs-2018-1.jpeg', '#5e5a5a'),
(29, 46, 'download_(2)2.jpg', '#c69faf'),
(30, 46, 'PRN4847-Red-color-Net-Lehenga-Choli_LC1387.jpg', '#db1a27'),
(31, 46, 'download.jpg', '#871212'),
(32, 47, '91nycgf7mbL__UY550_.jpg', '#d33c69'),
(33, 47, 'dulhan-saree-500x500.jpg', '#f33551'),
(34, 47, '27c1872b18649839dbc682ff3d4bf0e2--traditional-sarees-traditional-outfits.jpg', '#114b15'),
(35, 47, '0621119_admirable-mehendi-silk-sarees1.jpeg', '#73990a'),
(36, 48, '1562871246794_0_2.jpg', '#000000'),
(37, 48, 'download_(3).jpg', '#000000'),
(38, 48, 'images.jpg', '#000000'),
(39, 48, 'download_(2)3.jpg', '#000000'),
(40, 49, 's-l300.jpg', '#d02530'),
(41, 50, '91nycgf7mbL__UY550_1.jpg', '#bb6c2a'),
(42, 168, 's11.jpg', '#000000'),
(43, 168, 's12.jpg', '#000000'),
(44, 168, 's13.jpg', '#000000'),
(45, 169, 's21.jpg', '#000000'),
(46, 169, 's22.jpg', '#000000'),
(47, 169, 's23.jpg', '#000000'),
(48, 171, 's31.jpg', '#000000'),
(49, 172, 's41.jpg', '#000000'),
(50, 173, 'l11.jpg', '#f21818'),
(51, 174, 'l21.jpg', '#000000'),
(52, 175, 'l31.jpg', '#2d0101'),
(53, 176, 'l41.jpg', '#e90c0c'),
(54, 177, 'st11.jpg', '#b88e8e'),
(55, 178, 'st21.jpg', '#8eade6'),
(56, 179, 'st51.jpg', '#0c270f'),
(57, 180, 'st31.jpg', '#f312a0'),
(58, 181, 'd51.jpg', '#f5f05c'),
(59, 182, 'd11.jpg', '#e13d94'),
(60, 183, 'd21.jpg', '#aea7a7'),
(61, 184, 'd31.jpg', '#fffafa');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `test_id` char(32) NOT NULL,
  `user_id` char(32) NOT NULL,
  `obtained` int(6) NOT NULL,
  `attemptq` int(6) NOT NULL,
  `correctq` int(6) NOT NULL,
  `wrongq` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(30) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin', 1, NULL, NULL, NULL),
(2, 'student', 'Student', 'Student', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `user_id` char(9) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
('AKIASZ001', 1),
('EDO100100', 2),
('EDO100143', 2),
('EDO100144', 2);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(128) NOT NULL,
  `setting_value` longtext NOT NULL,
  `autoload` varchar(8) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`, `autoload`) VALUES
(1, 'application_name', 'Online Education Board', 'yes'),
(2, 'application_title', '{\"3\":{\"title\":\"BEST SALWAR SUIT SITE\",\"source\":\"uploads\\/images\\\\\\/thumbnail\\/download_thumb-175x200.png\"}}', 'yes'),
(3, 'home_slider', '{\"1\":{\"heading\":\"\",\"details\":\"\",\"buttonUrl\":\"\",\"source\":\"Hp_Bannare_rozmeher_desktop.jpg\"}}', 'yes'),
(4, 'social_icon', '[{\"link\":\"https:\\/\\/www.facebook.com\\/\",\"icon\":\"icon-line-awesome-facebook\"},{\"link\":\"https:\\/\\/twitter.com\\/Twitter\",\"icon\":\"icon-line-awesome-twitter-square\"},{\"link\":\"https:\\/\\/www.youtube.com\\/\",\"icon\":\"icon-line-awesome-youtube\"}]', 'yes'),
(5, 'contact_us', '{\"4\":{\"address\":\"12\\/A sector 3 varanasi up India\",\"email\":\"onlineTuraja@gmail.com\",\"phone\":\"9876543214\"}}', 'yes'),
(6, 'application_logo', '{\"5\":{\"discription\":\"Hello , What are you Say this site?\",\"source\":\"uploads\\/images\\\\\\/medium\\/logo-maker-02_medium-450x387.png\"}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(5) NOT NULL,
  `title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`) VALUES
(4, 'BIOLOGY'),
(1, 'repbulic'),
(3, 'SSC'),
(2, 'UPSC');

-- --------------------------------------------------------

--
-- Table structure for table `technique`
--

CREATE TABLE `technique` (
  `technique_id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `sub_title` text NOT NULL,
  `description` text NOT NULL,
  `menu` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `technique`
--

INSERT INTO `technique` (`technique_id`, `title`, `sub_title`, `description`, `menu`, `created_at`) VALUES
(3, 'Technique', '<p>Subtitle<span xss=removed>Celebrity Daughter Opens Up About Having Her Eye Color Changed \r\n</span></p><p> </p>', '<p>Description<span xss=removed>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam asperiores exercitationem deserunt inventore facilis, officiis,\r\nQuisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque.\r\naliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe reiciendis quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit quis dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium, corrupti deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis? Ipsam qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!</span></p><p> </p>', 1, '2020-06-27 17:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(62) DEFAULT NULL,
  `discription` text,
  `image` varchar(62) DEFAULT NULL,
  `ratting` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `discription`, `image`, `ratting`, `created_at`) VALUES
(3, 'arti', 'Add a content here', 'images.png', 3, '2020-05-06 14:57:55'),
(4, 'arti singh patel', 'Add a content here', 'download_(1).png', 5, '2020-05-06 17:02:54'),
(5, 'singh arti', 'Add a content here', 'images2.png', 5, '2020-05-07 06:56:01'),
(6, 'arti singh', 'Add a content here', 'download.png', 4, '2020-05-07 06:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `testid` char(32) NOT NULL,
  `nodeid` char(32) NOT NULL,
  `title` text NOT NULL,
  `duration` varchar(12) NOT NULL,
  `nofqus` int(6) NOT NULL,
  `totalno` int(6) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thumbnail`
--

CREATE TABLE `thumbnail` (
  `id` int(11) NOT NULL,
  `root` char(32) NOT NULL,
  `thumb` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thumbnail`
--

INSERT INTO `thumbnail` (`id`, `root`, `thumb`, `image`) VALUES
(16, 'EDO100134', NULL, NULL),
(17, 'EDO100135', NULL, NULL),
(18, 'EDO100136', NULL, NULL),
(19, 'post19', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(20, 'post20', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(21, '20', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(22, '23', 'uploads/images\\/thumbnail/16704_thumb-200x143.jpg', 'uploads/images\\/thumbnail/16704_thumb-200x143.jpg'),
(23, '24', 'uploads/product/1562871246794_0_2.jpg', 'uploads/product/1562871246794_0_2.jpg'),
(24, '25', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg', 'uploads/images\\/thumbnail/Cotton-Patiala-Salwar-Kameez_thumb-120x200.jpg'),
(25, '26', 'uploads/images\\/thumbnail/5085_1_thumb-142x200.jpg', 'uploads/images\\/thumbnail/5085_1_thumb-142x200.jpg'),
(26, 'EDO100137', NULL, NULL),
(27, 'EDO100138', NULL, NULL),
(28, 'EDO100139', NULL, NULL),
(29, 'EDO100140', NULL, NULL),
(30, 'EDO100141', NULL, NULL),
(31, 'EDO100142', NULL, NULL),
(32, 'EDO100143', NULL, NULL),
(33, '27', '', ''),
(34, '28', 'slid1.jpg', 'slid1.jpg'),
(35, 'EDO100144', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_aim`
--

CREATE TABLE `user_aim` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `aim_id` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_aim`
--

INSERT INTO `user_aim` (`id`, `user_id`, `aim_id`) VALUES
(1, 'EDO100503', 1),
(2, 'EDO100503', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `details` text,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `name`, `mobile`, `details`, `updated_at`) VALUES
(2, 'AKIASZ001', 'Kali', '4684655654', 'njkskdsd\nnsdksknvvnxvn\nxncvxvnmxv,cxvmxnvx,m,xcv,mx', '2020-03-18 11:42:15'),
(24, 'EDO100100', 'bhawana', NULL, NULL, '2020-03-30 15:10:19'),
(25, 'EDO100134', 'art', NULL, NULL, '2020-05-31 15:50:11'),
(26, 'EDO100135', 'artisingh ', '8840729016', 'hello', '2020-05-31 16:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videoid` char(32) NOT NULL,
  `nodeid` char(32) NOT NULL,
  `type` enum('free','paid') NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `size` varchar(32) NOT NULL,
  `videotype` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `rating` int(5) NOT NULL,
  `rate_count` int(11) NOT NULL,
  `download` tinyint(1) NOT NULL,
  `time` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`ansid`),
  ADD KEY `question` (`question`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `collection_product`
--
ALTER TABLE `collection_product`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docfile`
--
ALTER TABLE `docfile`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `nodeid` (`nodeid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(767));

--
-- Indexes for table `gst`
--
ALTER TABLE `gst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homesetting`
--
ALTER TABLE `homesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indexing`
--
ALTER TABLE `indexing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root` (`root`),
  ADD KEY `port` (`port`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`user_id`);

--
-- Indexes for table `logme`
--
ALTER TABLE `logme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `megamenu`
--
ALTER TABLE `megamenu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_meta`
--
ALTER TABLE `order_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment`),
  ADD KEY `userid` (`userid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`role_id`,`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`name`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`product_attribute_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`product_images_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_user_roles_role_Name` (`name`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `setting_name` (`setting_name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag` (`title`);

--
-- Indexes for table `technique`
--
ALTER TABLE `technique`
  ADD PRIMARY KEY (`technique_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`testid`);

--
-- Indexes for table `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root` (`root`);

--
-- Indexes for table `user_aim`
--
ALTER TABLE `user_aim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videoid`),
  ADD KEY `nodeid` (`nodeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `carousel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collection_product`
--
ALTER TABLE `collection_product`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `gst`
--
ALTER TABLE `gst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homesetting`
--
ALTER TABLE `homesetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `indexing`
--
ALTER TABLE `indexing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `logme`
--
ALTER TABLE `logme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100145;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `megamenu`
--
ALTER TABLE `megamenu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `order_meta`
--
ALTER TABLE `order_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `product_attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `product_images_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `technique`
--
ALTER TABLE `technique`
  MODIFY `technique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `thumbnail`
--
ALTER TABLE `thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_aim`
--
ALTER TABLE `user_aim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
