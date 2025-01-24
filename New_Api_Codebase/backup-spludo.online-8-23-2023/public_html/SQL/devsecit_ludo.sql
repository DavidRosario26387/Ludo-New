-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2024 at 10:04 PM
-- Server version: 8.0.34-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devsecit_ludo`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcoins`
--

CREATE TABLE `addcoins` (
  `id` bigint UNSIGNED NOT NULL,
  `playerid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addcoins`
--

INSERT INTO `addcoins` (`id`, `playerid`, `image`, `name`, `email`, `coin`, `status`, `trans_date`, `created_at`, `updated_at`) VALUES
(2, '3528169300', '16cf9fd3fdb0cc5935864375574bcf6f.jpg', 'chandan', 'raggen@gmail.com', '500', '2', 'Friday 25th February 2022 09:29:45 AM', '2022-02-25 03:59:45', '2022-02-25 12:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `role`, `password`, `bio`, `birthdate`, `website`, `phone`, `country`, `company`, `profile_img`, `work`, `publish_year`, `facebook`, `instagram`, `twitter`, `linkedin`, `youtube`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, 'Kanai', 'Kanai', 'kanai@gmail.com', 'Admin', 'Kanai@123', 'retete', '2021-07-01', 'devsecit.com', '8101979855', 'India', 'DEV SEC IT', '70ffbb7b286b99b060d83c045ffc4ac7.jpg', NULL, NULL, '#', '#', '#', '#', '#', '#', NULL, '2023-07-16 10:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint UNSIGNED NOT NULL,
  `bid_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `bid_value`, `updated_at`, `created_at`) VALUES
(15, '300', '2021-10-21 01:27:13', '2021-10-21 01:27:13'),
(5, '40', '2021-08-22 12:50:48', '2021-08-22 12:50:48'),
(6, '50', '2021-08-22 12:50:51', '2021-08-22 12:50:51'),
(7, '60', '2021-08-22 12:50:54', '2021-08-22 12:50:54'),
(10, '80', '2021-08-22 12:51:09', '2021-08-22 12:51:09'),
(9, '70', '2021-08-22 12:50:59', '2021-08-22 12:50:59'),
(11, '90', '2021-08-22 12:51:15', '2021-08-22 12:51:15'),
(12, '100', '2021-10-21 01:27:03', '2021-10-21 01:27:03'),
(13, '200', '2021-10-21 01:27:09', '2021-10-21 01:27:09'),
(16, '500', '2021-12-14 15:58:25', '2021-12-14 15:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(19, '2022-04-11 04:39:33', '2022-04-11 04:39:33', 'Chandan Kumar', 'webplustechsolutions@gmail.com', NULL, 'Customize Header & footer in elementor', 'Customize Header & footer in elementor');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `shortname` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos insert into countries (id, shortname, name, phonecode) values (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire insert into countries (id, shortname, name, phonecode) values (Ivory Coast)', 225),
(54, 'HR', 'Croatia insert into countries (id, shortname, name, phonecode) values (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man insert into countries (id, shortname, name, phonecode) values (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State insert into countries (id, shortname, name, phonecode) values (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands insert into countries (id, shortname, name, phonecode) values (British)', 1284),
(240, 'VI', 'Virgin Islands insert into countries (id, shortname, name, phonecode) values (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `faq_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `playerid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friendsid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gamehistories`
--

CREATE TABLE `gamehistories` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `playerid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bid_amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Win_amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loss_amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_limit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oppo1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oppo2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oppo3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playername` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalamount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playtime` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gamehistories`
--

INSERT INTO `gamehistories` (`id`, `created_at`, `updated_at`, `playerid`, `status`, `bid_amount`, `Win_amount`, `loss_amount`, `seat_limit`, `oppo1`, `oppo2`, `oppo3`, `playername`, `finalamount`, `playtime`) VALUES
(1, NULL, NULL, '-1628797117', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Jhon', '500', 'Sunday 11th June 2023 10:13:47 AM'),
(2, NULL, NULL, '-1628797117', 'loss', '0', '0', '0', NULL, NULL, NULL, NULL, 'Jhon', '500', 'Sunday 11th June 2023 10:20:47 AM'),
(3, NULL, NULL, '-1628797117', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Jhon', '500', 'Sunday 11th June 2023 10:22:45 AM'),
(4, NULL, NULL, '-1628797117', 'win', '0', '480', '0', '2', 'JHON', 'Jiyaan', NULL, 'Jhon', '980', 'Sunday 11th June 2023 11:31:36 AM'),
(5, NULL, NULL, '-1628797117', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Jhon', '500', 'Sunday 11th June 2023 11:33:19 AM'),
(6, NULL, NULL, '-1248661694', 'loss', '40', '0', '40', '2', NULL, NULL, NULL, 'Kanai Shil', '460', 'Sunday 11th June 2023 03:17:56 PM'),
(7, NULL, NULL, '-1330615764', 'win', '40', '64', '40', '2', 'GP Player', 'Kanai Shil', NULL, 'GP Player', '824', 'Sunday 11th June 2023 03:17:56 PM'),
(8, NULL, NULL, '-1373981875', 'win', '40', '64', '40', '2', 'pmg disha', 'Sathvik', NULL, 'pmg disha', '524', 'Sunday 11th June 2023 03:18:01 PM'),
(9, NULL, NULL, '-1248661694', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Kanai Shil', '460', 'Sunday 11th June 2023 04:32:15 PM'),
(10, NULL, NULL, '-1248661694', 'loss', '40', '0', '40', '2', NULL, NULL, NULL, 'Kanai Shil', '420', 'Sunday 11th June 2023 04:50:48 PM'),
(11, NULL, NULL, '-1330615764', 'win', '40', '64', '40', '2', 'GP Player', 'Kanai Shil', NULL, 'GP Player', '872', 'Sunday 11th June 2023 04:50:49 PM'),
(12, NULL, NULL, '-1330615764', 'loss', '40', '0', '40', '2', NULL, NULL, NULL, 'GP Player', '808', 'Sunday 11th June 2023 04:53:58 PM'),
(13, NULL, NULL, '-1248661694', 'win', '40', '64', '40', '2', 'Kanai Shil', 'GP Player', NULL, 'Kanai Shil', '468', 'Sunday 11th June 2023 04:53:59 PM'),
(14, NULL, NULL, '2087456562', 'loss', '40', '0', '40', '2', NULL, NULL, NULL, 'Kanai Shil', '10', 'Sunday 11th June 2023 05:31:01 PM'),
(15, NULL, NULL, '2087456562', 'win', '40', '64', '40', '2', 'Kanai Shil', 'Rihaan', NULL, 'Kanai Shil', '1058', 'Sunday 11th June 2023 05:47:45 PM'),
(16, NULL, NULL, '-1844131817', 'loss', '40', '0', '40', '2', NULL, NULL, NULL, 'GP Player', '1020', 'Monday 12th June 2023 01:10:34 AM'),
(17, NULL, NULL, '2087456562', 'loss', '40', '0', '40', '2', 'Kanai Shil', 'GP Player', NULL, 'Kanai Shil', '838', 'Monday 12th June 2023 01:10:36 AM'),
(18, NULL, NULL, '-1844131817', 'loss', '40', '0', '40', '2', NULL, NULL, NULL, 'GP Player', '980', 'Monday 12th June 2023 01:12:39 AM'),
(19, NULL, NULL, '2087456562', 'win', '40', '64', '40', '2', 'Kanai Shil', 'GP Player', NULL, 'Kanai Shil', '902', 'Monday 12th June 2023 01:12:39 AM'),
(20, NULL, NULL, '-1844131817', 'loss', '500', '0', '500', '2', NULL, NULL, NULL, 'GP Player', '480', 'Monday 12th June 2023 01:14:23 AM'),
(21, NULL, NULL, '2087456562', 'win', '500', '800', '500', '2', 'Kanai Shil', 'GP Player', NULL, 'Kanai Shil', '1202', 'Monday 12th June 2023 01:14:26 AM'),
(22, NULL, NULL, '2087456562', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Kanai Shil', '952', 'Monday 12th June 2023 01:23:56 AM'),
(23, NULL, NULL, '2087456562', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Kanai Shil', '952', 'Monday 12th June 2023 01:24:28 AM'),
(24, NULL, NULL, '2087456562', 'win', '40', '64', '40', '2', 'Kanai Shil', 'Rihaan', NULL, 'Kanai Shil', '646', 'Monday 12th June 2023 11:11:52 AM'),
(25, NULL, NULL, '2087456562', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Kanai Shil', '646', 'Monday 12th June 2023 11:15:28 AM'),
(26, NULL, NULL, '2087456562', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Kanai Shil', '646', 'Monday 12th June 2023 12:08:03 PM'),
(27, NULL, NULL, '2087456562', 'loss', '0', '0', '0', '4', NULL, NULL, NULL, 'Kanai Shil', '646', 'Tuesday 13th June 2023 08:59:44 AM'),
(28, NULL, NULL, 'dsi5972966322', 'loss', '0', '0', '0', NULL, NULL, NULL, NULL, 'Sucheta Banerjee', '50', 'Wednesday 14th June 2023 10:07:41 PM'),
(29, NULL, NULL, '2087456562', 'loss', '40', '0', '40', '2', NULL, NULL, NULL, 'Kanai Shil', '526', 'Friday 16th June 2023 12:24:41 PM'),
(30, NULL, NULL, 'dsi7004064500', 'loss', '0', '0', '0', NULL, NULL, NULL, NULL, 'RANABIR GAMING YT', '50', 'Saturday 17th June 2023 02:16:30 PM'),
(31, NULL, NULL, 'dsi9903600908', 'win', '100', '160', '100', NULL, 'Jit Banerjee - CEO - CEHPOINT', 'Mohit Agarwal', NULL, 'Jit Banerjee - CEO - CEHPOINT', '220', 'Saturday 17th June 2023 08:15:25 PM'),
(32, NULL, NULL, 'dsi4072506671', 'loss', '0', '0', '0', '4', NULL, NULL, NULL, 'All Technical Shibu', '100', 'Saturday 17th June 2023 10:26:33 PM'),
(33, NULL, NULL, 'dsi6130414993', 'loss', '0', '0', '0', NULL, NULL, NULL, NULL, 'KSHITISH BARMAN', '100', 'Sunday 18th June 2023 08:27:25 AM'),
(34, NULL, NULL, 'dsi4072506671', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'All Technical Shibu', '100', 'Wednesday 21st June 2023 10:57:45 PM'),
(35, NULL, NULL, 'dsi3151789580', 'win', '40', '64', '40', '2', 'hiren machhar', 'Zubair', NULL, 'hiren machhar', '123', 'Saturday 24th June 2023 12:21:04 AM'),
(36, NULL, NULL, 'dsi3151789580', 'win', '40', '64', '40', '2', 'hiren machhar', 'Prasanth V', NULL, 'hiren machhar', '123', 'Saturday 24th June 2023 12:30:58 AM'),
(37, NULL, NULL, 'dsi3151789580', 'win', '40', '64', '40', '2', 'hiren machhar', 'Rihaan', NULL, 'hiren machhar', '171', 'Saturday 24th June 2023 12:41:15 AM'),
(38, NULL, NULL, 'dsi3151789580', 'win', '40', '64', '40', '2', 'hiren machhar', 'Yuvaan', NULL, 'hiren machhar', '195', 'Saturday 24th June 2023 12:50:00 AM'),
(39, NULL, NULL, 'dsi3151789580', 'win', '40', '64', '40', '2', 'hiren machhar', 'Mohan Kumar', NULL, 'hiren machhar', '195', 'Saturday 24th June 2023 01:02:00 AM'),
(40, NULL, NULL, 'dsi3151789580', 'loss', '40', '0', '40', '2', 'hiren machhar', 'Md Irfan', NULL, 'hiren machhar', '155', 'Saturday 24th June 2023 01:11:05 AM'),
(41, NULL, NULL, 'dsi3151789580', 'win', '40', '64', '40', '2', 'hiren machhar', 'Pro Gamer', NULL, 'hiren machhar', '203', 'Saturday 24th June 2023 01:24:24 AM'),
(42, NULL, NULL, 'dsi3151789580', 'win', '50', '80', '50', '2', 'hiren machhar', 'Mohan Kumar', NULL, 'hiren machhar', '239', 'Saturday 24th June 2023 01:32:20 AM'),
(43, NULL, NULL, 'dsi3151789580', 'win', '50', '80', '50', '2', 'hiren machhar', 'A Khan', NULL, 'hiren machhar', '269', 'Saturday 24th June 2023 01:41:07 AM'),
(44, NULL, NULL, 'dsi3151789580', 'win', '60', '96', '60', '2', 'hiren machhar', 'Aadvik', NULL, 'hiren machhar', '275', 'Saturday 24th June 2023 01:52:13 AM'),
(45, NULL, NULL, 'dsi3151789580', 'win', '80', '128', '80', '2', 'hiren machhar', 'Fantastic Four', NULL, 'hiren machhar', '323', 'Saturday 24th June 2023 02:10:12 AM'),
(46, NULL, NULL, 'dsi3151789580', 'win', '200', '320', '200', '2', 'hiren machhar', 'Haider', NULL, 'hiren machhar', '563', 'Saturday 24th June 2023 02:27:21 AM'),
(47, NULL, NULL, 'dsi4510615250', 'win', '70', '112', '70', '2', 'Surendra Nath Aghori Baba', 'Sahil', NULL, 'Surendra Nath Aghori Baba', '159', 'Thursday 29th June 2023 05:48:27 PM'),
(48, NULL, NULL, 'dsi1257995478', 'win', '40', '64', '40', '2', 'Bhartendu Singh', 'Ivaan', NULL, 'Bhartendu Singh', '123', 'Tuesday 4th July 2023 07:59:33 PM'),
(49, NULL, NULL, 'dsi1257995478', 'win', '40', '64', '40', '2', 'Bhartendu Singh', 'Nivaan', NULL, 'Bhartendu Singh', '147', 'Wednesday 5th July 2023 02:40:54 PM'),
(50, NULL, NULL, 'dsi1257995478', 'win', '40', '64', '40', '2', 'Bhartendu Singh', 'IamTheWinner', NULL, 'Bhartendu Singh', '147', 'Wednesday 5th July 2023 02:50:26 PM'),
(51, NULL, NULL, 'dsi1257995478', 'loss', '40', '0', '40', '2', 'Bhartendu Singh', 'Aarush', NULL, 'Bhartendu Singh', '107', 'Wednesday 5th July 2023 05:35:24 PM'),
(52, NULL, NULL, 'dsi1257995478', 'win', '50', '80', '50', '2', 'Bhartendu Singh', 'Nivaan', NULL, 'Bhartendu Singh', '137', 'Wednesday 5th July 2023 05:43:42 PM'),
(53, NULL, NULL, 'dsi1257995478', 'loss', '40', '0', '40', '2', 'Bhartendu Singh', 'krishav', NULL, 'Bhartendu Singh', '17', 'Wednesday 5th July 2023 05:53:13 PM'),
(54, NULL, NULL, 'dsi4126378847', 'win', '60', '96', '60', '2', 'Bheru lal Nayak', 'Sahil', NULL, 'Bheru lal Nayak', '111', 'Wednesday 5th July 2023 06:17:40 PM'),
(55, NULL, NULL, 'dsi5972966322', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Sucheta Banerjee', '50', 'Friday 7th July 2023 02:12:26 PM'),
(56, NULL, NULL, 'dsi3082881511', 'win', '70', '112', '70', '2', 'Rohit Singh', 'TheGuy', NULL, 'Rohit Singh', '117', 'Thursday 13th July 2023 01:36:29 PM'),
(57, NULL, NULL, 'dsi8285562661', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Om Badghaiya', '75', 'Thursday 13th July 2023 03:25:11 PM'),
(58, NULL, NULL, 'dsi8285562661', 'win', '70', '112', '70', '2', 'Om Badghaiya', 'Md Irfan', NULL, 'Om Badghaiya', '117', 'Thursday 13th July 2023 03:43:39 PM'),
(59, NULL, NULL, 'dsi5007115552', 'win', '50', '80', '50', '2', 'Hansraj Bhakar', 'Nivaan', NULL, 'Hansraj Bhakar', '105', 'Thursday 13th July 2023 07:15:06 PM'),
(60, NULL, NULL, '2087456562', 'loss', '50', '0', '50', '2', NULL, NULL, NULL, 'Kanai Shil', '486', 'Thursday 13th July 2023 08:24:45 PM'),
(61, NULL, NULL, 'dsi7030362474', 'loss', '40', '0', '40', NULL, 'Ámáň Ńáth', 'Rudransh', 'Sathvik', 'Ámáň Ńáth', '35', 'Thursday 13th July 2023 08:48:00 PM'),
(62, NULL, NULL, 'dsi8086293705', 'loss', '0', '0', '0', NULL, NULL, NULL, NULL, 'Sangeeta Sharma', '35', 'Thursday 13th July 2023 09:21:08 PM'),
(63, NULL, NULL, 'dsi8086293705', 'win', '0', '0', '0', '2', 'Sangeeta Sharma', 'Computer 1', NULL, 'Sangeeta Sharma', '35', 'Thursday 13th July 2023 09:27:22 PM'),
(64, NULL, NULL, 'dsi8447563449', 'win', '40', '64', '40', '2', 'Nicky Sharma', NULL, NULL, 'Nicky Sharma', '201', 'Thursday 13th July 2023 09:46:09 PM'),
(65, NULL, NULL, 'dsi8447563449', 'win', '200', '320', '200', '2', 'Nicky Sharma', 'Ivaan', NULL, 'Nicky Sharma', '441', 'Thursday 13th July 2023 09:54:28 PM'),
(66, NULL, NULL, 'dsi8447563449', 'win', '200', '320', '200', '2', 'Nicky Sharma', 'viraj', NULL, 'Nicky Sharma', '441', 'Thursday 13th July 2023 10:02:38 PM'),
(67, NULL, NULL, 'dsi8447563449', 'win', '40', '64', '40', '2', 'Nicky Sharma', 'Pro Gamer', NULL, 'Nicky Sharma', '425', 'Thursday 13th July 2023 10:11:16 PM'),
(68, NULL, NULL, 'dsi8447563449', 'win', '40', '64', '40', '2', 'Nicky Sharma', 'Saumit', NULL, 'Nicky Sharma', '425', 'Thursday 13th July 2023 10:23:33 PM'),
(69, NULL, NULL, 'dsi6369674209', 'loss', '0', '0', '0', '4', NULL, NULL, NULL, 'Vikram Rathore', '25', 'Sunday 16th July 2023 09:55:56 AM'),
(70, NULL, NULL, '2087456562', 'win', '0', '60', '0', '2', 'Kanai Shil', 'Computer 1', NULL, 'Kanai Shil', '546', 'Monday 17th July 2023 08:11:46 PM'),
(71, NULL, NULL, 'dsi3107933305', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Saurbh Baghel', '45', 'Tuesday 18th July 2023 03:18:33 PM'),
(72, NULL, NULL, '2087456562', 'win', '0', '60', '0', '2', 'Kanai Shil', 'Computer 1', NULL, 'Kanai Shil', '546', 'Friday 21st July 2023 09:02:16 PM'),
(73, NULL, NULL, 'dsi5577406634', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Naveen Mounika Vasam', '45', 'Monday 31st July 2023 04:41:44 PM'),
(74, NULL, NULL, 'dsi6134355221', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Atanu Garai', '45', 'Tuesday 1st August 2023 04:58:04 PM'),
(75, NULL, NULL, 'dsi6597195489', 'loss', '0', '0', '0', '2', NULL, NULL, NULL, 'Vipul padhiyar Padhiyar', '45', 'Friday 4th August 2023 05:13:30 PM'),
(76, NULL, NULL, 'dsi9953747926', 'loss', '0', '0', '0', '4', NULL, NULL, NULL, 'Bhagadhar Gorai', '110', 'Saturday 5th August 2023 08:52:14 AM'),
(77, NULL, NULL, 'dsi9909834990', 'loss', '0', '0', '0', '4', NULL, NULL, NULL, 'Mehul kumar Mehul kumar', '45', 'Thursday 10th August 2023 10:40:41 AM'),
(78, NULL, NULL, 'dsi1764837173', 'win', '0', '60', '0', '2', 'Ranjit', 'Computer 1', NULL, 'Ranjit', '105', 'Saturday 12th August 2023 11:24:29 PM'),
(79, NULL, NULL, 'dsi9814029119', 'loss', '0', '0', '0', '4', NULL, NULL, NULL, 'Monu kumar', '45', 'Sunday 3rd September 2023 02:58:13 PM'),
(80, NULL, NULL, 'dsi5801137204', 'loss', '0', '0', '0', '4', NULL, NULL, NULL, 'Vairab Roy', '45', 'Saturday 7th October 2023 08:06:57 AM'),
(81, NULL, NULL, 'dsi3221358067', 'win', '40', '60', '40', '2', 'Play Cnx', 'Aarush', NULL, 'Play Cnx', '65', 'Monday 1st January 2024 10:22:12 AM');

-- --------------------------------------------------------

--
-- Table structure for table `homedetails`
--

CREATE TABLE `homedetails` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `heading` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subheading` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bannerimg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_setp1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_step2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_step3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fe_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fe_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fetitle1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fedesc1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feicon1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetitle2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fedesc2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feicon2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetitle3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fedesc3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feicon3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetitle4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fedesc4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feicon4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetitle5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fedesc5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feicon5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetitle6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fedesc6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feicon6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `download_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `download_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `download_link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `screenshot_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `screenshot_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_video` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `totalinstall` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totaldownload` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeuser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satisfieduser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardtitle1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carddescr1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardicon1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardtitle2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carddescr2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardicon2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardtitle3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carddescr3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardicon3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardtitle4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carddescr4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardicon4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_title` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homedetails`
--

INSERT INTO `homedetails` (`id`, `created_at`, `updated_at`, `heading`, `subheading`, `bannerimg`, `about_title`, `about_desc`, `about_setp1`, `about_step2`, `about_step3`, `about_img`, `fe_title`, `fe_desc`, `fetitle1`, `fedesc1`, `feicon1`, `fetitle2`, `fedesc2`, `feicon2`, `fetitle3`, `fedesc3`, `feicon3`, `fetitle4`, `fedesc4`, `feicon4`, `fetitle5`, `fedesc5`, `feicon5`, `fetitle6`, `fedesc6`, `feicon6`, `download_title`, `download_desc`, `download_image`, `download_link`, `screenshot_title`, `screenshot_desc`, `contact_image`, `contact_video`, `totalinstall`, `totaldownload`, `activeuser`, `satisfieduser`, `cardtitle1`, `carddescr1`, `cardicon1`, `cardtitle2`, `carddescr2`, `cardicon2`, `cardtitle3`, `carddescr3`, `cardicon3`, `cardtitle4`, `carddescr4`, `cardicon4`, `testimonial_title`, `testimonial_desc`, `contact_title`, `contact_desc`) VALUES
(1, NULL, '2022-04-11 04:01:56', 'Online Real Money Ludo Game', 'Elite Ludo is strategic Board Game where you can challenge your opponent with real money. Elite Ludo is a best Ludo online game tournament app, In Elite Ludo you can earn real paytm cash by playing Ludo.', 'homepage.png', 'About Elite Ludo', 'Ludo, one of the most popular multiplayer strategy board games, is generally played between 2 or 4 players. The objective of each player is to race their four tokens to their house based on rolls of a single dice. Ludo finds its origins in the Indian game Pachisi.', 'People are not chained to desktops or laptops to help and record.', 'The only way your business can evolve to the information.', 'Your app will be used by a host of different people different reasons.', 'rtyrt.png', 'Elite Ludo Features', 'Objectively deliver professional value with diverse web-readiness. Collaboratively transition wireless customer service without goal-oriented catalysts for change. Collaboratively.', 'Responsive web design', 'Modular and monetize an componente between layouts monetize array. Core competencies for testing.', '<i class=\"las la-desktop\"></i>', 'Loaded with features', 'Holisticly aggregate client centered the manufactured products transparent. Organic sources content.', '<i class=\"las la-swatchbook\"></i>', 'Friendly online support', 'Monotonectally recaptiualize client the centric customize clicks niche markets for this meta-services via.', '<i class=\"las la-headset\"></i>', 'Free updates forever', 'Compellingly formulate installed base imperatives high standards in benefits for highly efficient client.', '<i class=\"lab la-buromobelexperte\"></i>', 'Built with Sass', 'Energistically initiate client-centric the maximize market positioning synergy rather client-based data.', '<i class=\"lab la-sass\"></i>', 'Infinite colors', 'Energistically initiate client-centric e-tailers rather than-based data. Morph business technology before.', '<i class=\"las la-palette\"></i>', 'Download The Latest Version', 'Earn Real Cash While Having Fun Playing Ludo Games. Take Part In Ludo Leagues. Real Players And Fast Withdrawals Only On Elite Ludo. Download App And Play Right Now.', 'home.png', 'EliteLudo.apk', 'Apps Screenshots', 'Proactively impact value-added channels via backend leadership skills. Efficiently revolutionize worldwide networks whereas strategic catalysts for change.', 'rtyrt.png', 'https://www.youtube.com/watch?v=80y2FxcAUhY', '45644', '45644', '5453', '4547', 'Modular', 'All components are built to be used in combination.', '<i class=\"lab la-modx\"></i>', 'Responsive', 'Quick is optimized to work for most devices.', '<i class=\"las la-mobile\"></i>', 'Scalable', 'Remain consistent while developing new features.', '<i class=\"las la-sync\"></i>', 'Customizable', 'Change a few variables and the whole theme adapts.', '<i class=\"lab la-intercom\"></i>', 'What Our Client Say About Ludo', 'Collaboratively actualize excellent schemas without effective models. Synergistically engineer functionalized applications rather than backend e-commerce.', 'Looking for a excellent Business idea?', 'Give us a call or drop by anytime, we endeavour to answer all enquiries within 24 hours on business days.');

-- --------------------------------------------------------

--
-- Table structure for table `jackpots`
--

CREATE TABLE `jackpots` (
  `id` bigint UNSIGNED NOT NULL,
  `jackpot_entry` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_game` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jackpots`
--

INSERT INTO `jackpots` (`id`, `jackpot_entry`, `number_of_game`) VALUES
(1, '100', '2');

-- --------------------------------------------------------

--
-- Table structure for table `kycdetails`
--

CREATE TABLE `kycdetails` (
  `id` bigint UNSIGNED NOT NULL,
  `document_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_09_074813_create_admins_table', 1),
(5, '2021_06_09_035535_create_faqs_table', 1),
(6, '2021_06_14_040322_create_specials_table', 1),
(7, '2021_06_14_051935_create_kycdetails_table', 1),
(21, '2021_06_14_070353_create_shopcoins_table', 5),
(9, '2021_06_14_100930_create_bids_table', 1),
(10, '2021_06_14_105032_create_transactions_table', 1),
(11, '2021_06_14_125839_create_withdraws_table', 1),
(12, '2021_06_16_021015_create_websettings_table', 1),
(13, '2021_07_21_120338_create_tournaments_table', 1),
(14, '2021_07_23_143916_create_jackpots_table', 1),
(18, '2021_07_25_153224_create_roomdatas_table', 2),
(36, '2021_07_25_145706_create_userdatas_table', 14),
(20, '2021_08_31_104232_create_friends_table', 4),
(38, '2021_11_12_155952_create_homedetails_table', 16),
(24, '2021_11_12_160643_create_screenshots_table', 8),
(30, '2021_11_14_172611_create_contacts_table', 10),
(40, '2022_02_20_200941_create_testimonials_table', 18),
(35, '2022_02_24_204025_create_addcoins_table', 13),
(39, '2022_04_10_083037_create_gamehistories_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` int NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `amount` varchar(150) DEFAULT NULL,
  `uid` varchar(250) DEFAULT NULL,
  `thumbnail` varchar(250) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `status` varchar(150) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roomdatas`
--

CREATE TABLE `roomdatas` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roomID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_limit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_mode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stake_money` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win_money` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `screenshots`
--

CREATE TABLE `screenshots` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screenshot` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screenshots`
--

INSERT INTO `screenshots` (`id`, `created_at`, `updated_at`, `screenshot`) VALUES
(12, '2022-04-10 09:10:12', '2022-04-10 09:10:12', 'Screenshot (128).png'),
(13, '2022-04-10 09:10:18', '2022-04-10 09:10:18', 'Screenshot (129).png'),
(14, '2022-04-10 09:10:24', '2022-04-10 09:10:24', 'Screenshot (131).png'),
(15, '2022-04-10 09:10:31', '2022-04-10 09:10:31', 'Screenshot (132).png'),
(16, '2022-04-10 09:14:16', '2022-04-10 09:14:16', 'Screenshot (135).png'),
(17, '2022-04-10 09:14:21', '2022-04-10 09:14:21', 'Screenshot (136).png'),
(18, '2022-04-10 09:14:26', '2022-04-10 09:14:26', 'Screenshot (138).png'),
(19, '2022-04-10 09:14:31', '2022-04-10 09:14:31', 'Screenshot (139).png');

-- --------------------------------------------------------

--
-- Table structure for table `shopcoins`
--

CREATE TABLE `shopcoins` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopcoins`
--

INSERT INTO `shopcoins` (`id`, `created_at`, `updated_at`, `shop_coin`) VALUES
(13, '2023-06-17 22:02:42', '2023-06-17 22:02:42', '79'),
(14, '2023-06-17 22:01:31', '2023-06-17 22:02:53', '99'),
(15, '2023-06-17 22:01:12', '2023-06-17 22:03:09', '199'),
(26, '2023-06-17 22:00:34', '2023-06-17 22:04:02', '1499'),
(27, '2023-06-17 22:00:44', '2023-06-17 22:03:52', '999'),
(28, '2023-06-17 22:00:56', '2023-06-17 22:03:42', '499'),
(29, '2023-06-17 22:01:05', '2023-06-17 22:03:22', '299'),
(34, '2023-06-17 22:04:22', '2023-06-17 22:04:22', '1999'),
(35, '2023-07-16 10:24:18', '2023-07-16 10:24:18', '2499'),
(36, '2023-07-16 10:24:28', '2023-07-16 10:24:28', '2999'),
(37, '2023-07-16 10:24:43', '2023-07-16 10:24:43', '3499'),
(38, '2023-07-16 10:24:51', '2023-07-16 10:24:51', '3999'),
(39, '2023-07-16 10:25:01', '2023-07-16 10:26:05', '3199'),
(40, '2023-07-16 10:25:07', '2023-07-16 10:26:21', '2789'),
(10, '2023-07-16 10:26:53', '2023-07-16 10:26:53', '49'),
(11, '2023-07-16 10:27:08', '2023-07-16 10:27:08', '59'),
(12, '2023-07-16 10:27:21', '2023-07-16 10:27:21', '69');

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `id` bigint UNSIGNED NOT NULL,
  `offer_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_offer_coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_received_coin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offerimage` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `profile_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Designation` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usermail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Star` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Review` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `submit_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `profile_image`, `Designation`, `username`, `usermail`, `Star`, `Review`, `submit_date`, `created_at`, `updated_at`) VALUES
(1, 'unnamed.png', 'Active User', 'Chandan Kumar', 'webplustechsolutions@gmail.com', '5', 'No.1 web development agency for startups and businesses in samastipur, Bihar, they are excellent recourse and master at their IT skills such as website designing and web app development. They has been tremendous asset to my company and contacts and has frequently facilitated.They will convert your idea to the best product. They serve you as you want. They understand your project and starts the work as soon as possible. Try once 👍👍', 'Sunday 10th April 2022 05:22:47 PM', '2022-04-10 11:53:05', '2022-04-10 11:53:05'),
(2, 'unnamed.png', 'Active User', 'Chandan Kumar', 'webplustechsolutions@gmail.com', '5', 'No.1 web development agency for startups and businesses in samastipur, Bihar, they are excellent recourse and master at their IT skills such as website designing and web app development. They has been tremendous asset to my company and contacts and has frequently facilitated.They will convert your idea to the best product. They serve you as you want. They understand your project and starts the work as soon as possible. Try once 👍👍', 'Sunday 10th April 2022 05:22:47 PM', '2022-04-10 11:53:05', '2022-04-10 11:53:05'),
(3, 'unnamed.png', 'Active User', 'Chandan Kumar', 'webplustechsolutions@gmail.com', '5', 'No.1 web development agency for startups and businesses in samastipur, Bihar, they are excellent recourse and master at their IT skills such as website designing and web app development. They has been tremendous asset to my company and contacts and has frequently facilitated.They will convert your idea to the best product. They serve you as you want. They understand your project and starts the work as soon as possible. Try once 👍👍', 'Sunday 10th April 2022 05:22:47 PM', '2022-04-10 11:53:05', '2022-04-10 11:53:05'),
(4, 'unnamed.png', 'Active User', 'Chandan Kumar', 'webplustechsolutions@gmail.com', '5', 'No.1 web development agency for startups and businesses in samastipur, Bihar, they are excellent recourse and master at their IT skills such as website designing and web app development. They has been tremendous asset to my company and contacts and has frequently facilitated.They will convert your idea to the best product. They serve you as you want. They understand your project and starts the work as soon as possible. Try once 👍👍', 'Sunday 10th April 2022 05:22:47 PM', '2022-04-10 11:53:05', '2022-04-10 11:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bit_amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_player` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_player_winning` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_winner` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_player_winning_1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_player_winning_2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_player_winning_3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tournament_interval` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `userid`, `order_id`, `txn_id`, `amount`, `status`, `trans_date`, `created_at`) VALUES
(7, '2087456562', 'LDU1686506242', '20230611011020000874796114111493386', '10.00', 'Failed', 'Sunday 11th June 2023 05:58:42 PM', '1686506322'),
(8, '2087456562', 'LDU1686506358', '20230611011080000874796595081443876', '10.00', 'Failed', 'Sunday 11th June 2023 05:59:38 PM', '1686506378'),
(9, '2087456562', 'LDU1686506498', '20230611010930000874797184271471687', '10.00', 'Failed', 'Sunday 11th June 2023 06:01:56 PM', '1686506516'),
(10, '2087456562', 'LDU1686506527', '20230611011010000874797302127870576', '10.00', 'Success', 'Sunday 11th June 2023 06:03:51 PM', '1686506631'),
(11, '2087456562', 'LDU1686506862', '20230611011020000874798708628224394', '10.00', 'Success', 'Sunday 11th June 2023 06:08:47 PM', '1686506927'),
(12, '2087456562', 'LDU1686507245', '20230611010960000874800316258906008', '10.00', 'Failed', 'Sunday 11th June 2023 06:15:36 PM', '1686507336'),
(13, '2087456562', 'LDU1686507343', '20230611010830000874800724956210025', '10.00', 'Success', 'Sunday 11th June 2023 06:16:42 PM', '1686507402'),
(14, '2087456562', 'LDU1686507652', '20230611011090000874802022376053384', '10.00', 'Success', 'Sunday 11th June 2023 06:21:31 PM', '1686507691'),
(15, '2087456562', 'LDU1686507751', '20230611011100000874802440145728520', '20.00', 'Failed', 'Sunday 11th June 2023 06:22:47 PM', '1686507767'),
(16, '2087456562', 'LDU1686507864', '20230611010950000874802914525832891', '400.00', 'Failed', 'Sunday 11th June 2023 06:24:39 PM', '1686507879'),
(17, '2087456562', 'LDU1686507973', '20230611011070000874803366885878010', '10.00', 'Failed', 'Sunday 11th June 2023 06:26:28 PM', '1686507988'),
(18, '2087456562', 'LDU1686507999', '20230611010840000874803473227595282', '10.00', 'Success', 'Sunday 11th June 2023 06:27:16 PM', '1686508036'),
(19, '2087456562', 'LDU1686508165', '20230611011020000874804178303059836', '400.00', 'Success', 'Sunday 11th June 2023 06:29:41 PM', '1686508181'),
(20, '2087456562', 'LDU1686508353', '20230612010800000874804963140794229', '400.00', 'Success', 'Sunday 11th June 2023 06:32:48 PM', '1686508368'),
(21, '2087456562', 'LDU1686508669', '20230612010830000874806288863742035', '400.00', 'Success', 'Sunday 11th June 2023 06:38:06 PM', '1686508686'),
(22, '2087456562', 'LDU1686508705', '20230612010810000874806434369235088', '10.00', 'Success', 'Sunday 11th June 2023 06:38:37 PM', '1686508717'),
(23, '2087456562', 'LDU1686508830', '20230612010910000874806973215352871', '400.00', 'Success', 'Sunday 11th June 2023 06:40:49 PM', '1686508849'),
(24, '2087456562', 'LDU1686508967', '20230612010990000874807541757549250', '155.00', 'Failed', 'Sunday 11th June 2023 06:43:49 PM', '1686509029'),
(25, '-1844131817', 'LDU1686513316', '20230612010900000874825773549563086', '412.00', 'Failed', 'Sunday 11th June 2023 07:55:33 PM', '1686513333'),
(26, '-1844131817', 'LDU1686973400', '', '10.00', 'Failed', 'Saturday 17th June 2023 03:43:23 AM', '1686973403'),
(27, '-1844131817', 'LDU1686973861', '', '10.00', 'Failed', 'Saturday 17th June 2023 03:51:03 AM', '1686973863'),
(28, '2087456562', 'LDU1686985441', '', '10.00', 'Failed', 'Saturday 17th June 2023 07:04:03 AM', '1686985443'),
(29, '2087456562', 'LDU1686985441', '', '10.00', 'Failed', 'Saturday 17th June 2023 07:04:03 AM', '1686985443'),
(30, '2087456562', 'LDU1687011196', '', '10.00', 'Failed', 'Saturday 17th June 2023 02:13:18 PM', '1687011198'),
(31, 'dsi9903600908', 'LDU1687013144', '', '10.00', 'Failed', 'Saturday 17th June 2023 02:45:46 PM', '1687013146'),
(32, 'dsi9903600908', 'LDU1687013144', '', '10.00', 'Failed', 'Saturday 17th June 2023 02:45:46 PM', '1687013146'),
(33, 'dsi9903600908', 'LDU1687013158', '', '82.00', 'Failed', 'Saturday 17th June 2023 02:45:59 PM', '1687013159'),
(34, 'dsi4948285989', 'LDU1687014414', '', '258.00', 'Failed', 'Saturday 17th June 2023 03:06:55 PM', '1687014415'),
(35, 'dsi4948285989', 'LDU1687014425', '', '206.00', 'Failed', 'Saturday 17th June 2023 03:07:06 PM', '1687014426'),
(36, 'dsi4948285989', 'LDU1687014430', '', '10.00', 'Failed', 'Saturday 17th June 2023 03:07:11 PM', '1687014431');

-- --------------------------------------------------------

--
-- Table structure for table `userdatas`
--

CREATE TABLE `userdatas` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playerid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userphone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OTPCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useremail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_refer_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalgem` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalcoin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `playcoin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `wincoin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `device_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerDate` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refrelCoin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `GamePlayed` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `twoPlayWin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FourPlayWin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `twoPlayloss` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FourPlayloss` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountHolder` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountNumber` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniquebankid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniqueupiid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upi_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upi_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_holder` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userdatas`
--

INSERT INTO `userdatas` (`id`, `created_at`, `updated_at`, `userid`, `playerid`, `username`, `userphone`, `password`, `OTPCode`, `useremail`, `photo`, `refer_code`, `used_refer_code`, `totalgem`, `totalcoin`, `playcoin`, `wincoin`, `device_token`, `registerDate`, `refrelCoin`, `GamePlayed`, `twoPlayWin`, `FourPlayWin`, `twoPlayloss`, `FourPlayloss`, `status`, `banned`, `accountHolder`, `accountNumber`, `ifsc`, `uniquebankid`, `uniqueupiid`, `upi_id`, `upi_name`, `acc_holder`) VALUES
(1, '2023-06-11 17:24:41', '2024-01-03 14:37:26', NULL, '2087456562', 'Kanai Shil', NULL, '$2y$10$IKqXQwnwgZtWxtAsbHl/IuaHdYymo5Vgw0g8frxv.NGjqycIOYsW2', NULL, 'kanaishil501@gmail.com', NULL, '676432', NULL, NULL, '340', '486', '146', NULL, 'Sunday 11th June 2023 05:24:41 PM', '40', '7', '7', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2023-06-11 17:33:21', '2024-01-03 08:40:25', NULL, '-1844131817', 'GP Player', NULL, '$2y$10$Th9PYygawAJA8nx1q6ZUG.eYn9WQ8oMkY7k7ITZqEPP3Ev/8mE5ge', NULL, 'aaakassaha100@gmail.com', NULL, '658484', NULL, NULL, '480', '480', '0', NULL, 'Sunday 11th June 2023 05:33:21 PM', '10', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2023-06-12 00:55:37', '2023-06-12 00:56:21', NULL, 'dsi4858712837', 'DEV SEC IT', NULL, '$2y$10$JSuvxW1MiTwKBZSYylxT4e7gnHGClFF5QvW.Xy7Cah/qcmPSuSqyO', NULL, 'devsecit.com@gmail.com', NULL, '386999', '676432', NULL, '50', '50', '0', NULL, 'Monday 12th June 2023 12:55:37 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2023-06-12 01:06:05', '2023-06-12 01:08:39', NULL, 'dsi2521059165', 'DEV SEC IT Pvt. Ltd.', NULL, '$2y$10$dobT6w7NGYmZQWdg99C2OOUvbH4yftWDARFbyczm8Qe0qvO8177/m', NULL, 'devsecitpvtltd@gmail.com', NULL, '584646', '658484', NULL, '50', '50', '0', NULL, 'Monday 12th June 2023 01:06:05 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2023-06-12 08:26:55', '2023-06-12 08:28:00', NULL, 'dsi5515380137', 'Arpita Das', NULL, '$2y$10$3J5YjK7hKK9/kluP1Ncjl./HFf4kYGRNXFDUntup4HBM3EzziHEQ2', NULL, 'adas07112020@gmail.com', NULL, '495516', '676432', NULL, '50', '50', '0', NULL, 'Monday 12th June 2023 08:26:55 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2023-06-12 12:37:24', '2023-06-14 21:10:32', NULL, 'dsi9587997530', 'pmg disha', NULL, '$2y$10$rhzeKth7yMwu.R8NrDBcJ.zrxAQMVm0nDsQYebhYWls2nngdl6LPu', NULL, 'pmgdishain022@gmail.com', NULL, '724174', NULL, NULL, '50', '50', '0', NULL, 'Monday 12th June 2023 12:37:24 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2023-06-12 14:59:34', '2023-06-12 15:28:06', NULL, 'dsi4941924088', 'Konko Maji', NULL, '$2y$10$rm4JL/NvnaI88/WxxQR6ceYZO/kt.1o3u.nc/enYKdfXDYkTBtAa.', NULL, 'konkomaji@gmail.com', NULL, '974383', NULL, NULL, '50', '50', '0', NULL, 'Monday 12th June 2023 02:59:34 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2023-06-14 21:54:06', '2023-07-07 14:15:09', NULL, 'dsi5972966322', 'Sucheta Banerjee', NULL, '$2y$10$kAybqO7ZKoZXmfXZ6W/Gsedka73JaPkFfIb8Re.T806I5O1kpQF5S', NULL, 'suchetabanerjee60@gmail.com', NULL, '694463', NULL, NULL, '50', '50', '0', NULL, 'Wednesday 14th June 2023 09:54:06 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2023-06-17 13:48:02', '2023-06-19 15:10:08', NULL, 'dsi5909904955', 'TAPAS PAUL', NULL, '$2y$10$nnN0LfALCyiWdtO.yFaDdu4NfLL3x0c/USqar8wYpZ/ClcSmLLvqm', NULL, 'tapaspaul9382@gmail.com', NULL, '290682', '676432', NULL, '0', '0', '0', NULL, 'Saturday 17th June 2023 01:48:02 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2023-06-17 14:14:54', '2023-06-17 14:16:41', NULL, 'dsi7004064500', 'RANABIR GAMING YT', NULL, '$2y$10$EjBhCb7HDZi8uEmGhlDgmeaz7UwV1CI6owsgY3KA8d/Es7lIauo0O', NULL, 'ranabirmondal42@gmail.com', NULL, '717802', NULL, NULL, '50', '50', '0', NULL, 'Saturday 17th June 2023 02:14:54 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2023-06-17 20:05:05', '2023-06-21 19:25:36', NULL, 'dsi9903600908', 'Jit Banerjee - CEO - CEHPOINT', NULL, '$2y$10$vsEnCAddUqQUoPqJ9T7Gu.CxFg.D2byX.ONSotRiexVJO/m7EW8Lu', NULL, 'jitbanerjeesujan@gmail.com', NULL, '955338', NULL, NULL, '100', '160', '60', NULL, 'Saturday 17th June 2023 08:05:05 PM', '0', '1', '1', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2023-06-17 20:27:07', '2023-06-24 17:34:07', NULL, 'dsi4948285989', 'fan jamil', NULL, '$2y$10$Ya/RXuHExL/mOPWpjmbu5ejoFGoTuShWb4C50AKeMqw2nYIopI//.', NULL, 'ff795681@gmail.com', NULL, '807874', NULL, NULL, '100', '100', '0', NULL, 'Saturday 17th June 2023 08:27:07 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2023-06-17 22:23:29', '2023-09-01 08:47:22', NULL, 'dsi4072506671', 'All Technical Shibu', NULL, '$2y$10$621WKn8y90DncuaAPxEGgeOHYPc3tPTNlYtrFFy/5iXrVUH5pvoMi', NULL, 'dshibu135@gmail.com', NULL, '277236', NULL, NULL, '100', '100', '0', NULL, 'Saturday 17th June 2023 10:23:29 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2023-06-18 08:19:12', '2023-06-18 08:31:42', NULL, 'dsi6130414993', 'KSHITISH BARMAN', NULL, '$2y$10$m8JWHT.KLtGWrOTFsuTD/.dh3cG462Hxb8fE44/a4Uozcoo1Dn7f2', NULL, 'kshitishbarman100@gmail.com', NULL, '194464', NULL, NULL, '100', '100', '0', NULL, 'Sunday 18th June 2023 08:19:12 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2023-06-24 00:08:30', '2023-06-24 07:05:14', NULL, 'dsi3151789580', 'hiren machhar', NULL, '$2y$10$96iTLPzHRadCQe8r81YI6OLdWlJyEslwZByW2UsmaMj/imAh6LwXG', NULL, 'hirenmachhar300@gmail.com', NULL, '767509', NULL, NULL, '0', '143', '143', NULL, 'Saturday 24th June 2023 12:08:30 AM', '0', '11', '11', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2023-06-29 11:41:53', '2023-06-29 18:13:46', NULL, 'dsi4510615250', 'Surendra Nath Aghori Baba', NULL, '$2y$10$mcak4eNu.gNWMfIH2dMrJOzSZ1cadF.AzKcCookTBRiSHIeI/8bx6', NULL, 'surendranathaghoribaba884@gmail.com', NULL, '306046', NULL, NULL, '25', '67', '42', NULL, 'Thursday 29th June 2023 11:41:53 AM', '0', '1', '1', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2023-07-02 09:37:34', '2023-07-02 09:50:38', NULL, 'dsi3238781468', 'Asraful', NULL, '$2y$10$csExcWz9W5ovDvGKRTlif.s8OqPs/X747T.57JHjNATxW7OD090eq', NULL, 'rangiabtc2018@gmail.com', NULL, '685690', NULL, NULL, '75', '75', '0', NULL, 'Sunday 2nd July 2023 09:37:34 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2023-07-02 15:34:39', '2023-07-02 15:47:54', NULL, 'dsi7820749441', 'Khan Abed', NULL, '$2y$10$BSx.y/p4jhG02F6yA.m2PeKNmt9BQtdoXbHsMt4fOjuBcRwgz.E8i', NULL, 'abed64251@gmail.com', NULL, '794004', NULL, NULL, '35', '35', '0', NULL, 'Sunday 2nd July 2023 03:34:39 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2023-07-04 18:04:18', '2023-07-05 17:53:50', NULL, 'dsi1257995478', 'Bhartendu Singh', NULL, '$2y$10$rxJdR/G1YrUT2Oimt21YPuHwBRtIAoM/TUPvA8oT4zWyknrJeaN32', NULL, 'bhartendusingh277@gmail.com', NULL, '866757', NULL, NULL, '0', '17', '17', NULL, 'Tuesday 4th July 2023 06:04:18 PM', '0', '3', '3', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2023-07-05 01:18:31', '2023-07-05 01:20:08', NULL, 'dsi9888930300', 'Raksha Devadiya', NULL, '$2y$10$UjLRPJ1UGOcEYNTUG5RxYefCE4kb0mMC41kfR7DZIEj5mzCFUh9US', NULL, 'rakshadevadiya136@gmail.com', NULL, '112845', NULL, NULL, '75', '75', '0', NULL, 'Wednesday 5th July 2023 01:18:31 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2023-07-05 18:07:01', '2023-07-05 18:19:14', NULL, 'dsi4126378847', 'Bheru lal Nayak', NULL, '$2y$10$980mFe74RGHbxEwZd2GVT.VH/ynTfFHLGUR5oPfeTdNInMJmd9NdC', NULL, 'bherulalnayak805@gmail.com', NULL, '318918', NULL, NULL, '15', '15', '0', NULL, 'Wednesday 5th July 2023 06:07:01 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2023-07-08 01:37:21', '2023-07-08 02:04:25', NULL, 'dsi1818204661', 'babita Kumari', NULL, '$2y$10$vCXX62G65RL.wMxsNCmFpOblnYp1XwJDWRA03OmKTagunMq/0KUWO', NULL, 'babitaka1996@gmail.com', NULL, '831731', NULL, NULL, '35', '35', '0', NULL, 'Saturday 8th July 2023 01:37:21 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2023-07-11 23:18:41', '2023-07-12 09:17:27', NULL, 'dsi9312083010', 'Rak 1', NULL, '$2y$10$SMDxzMcsgBvXabTRirNXHu5CPDQRC8G3uD9.0ZUbHm67Kx433CfPG', NULL, 'rak775849@gmail.com', NULL, '644353', NULL, NULL, '75', '75', '0', NULL, 'Tuesday 11th July 2023 11:18:41 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2023-07-12 09:25:14', '2023-07-13 15:44:50', NULL, 'dsi2766378494', 'Raja Sk', NULL, '$2y$10$Xa6Pg5QNpMna2sc8UQG0X.lRnQSRQ8QLjCdR8haqFbpmOOf4MUVMe', NULL, 'skr506785@gmail.com', NULL, '780857', NULL, NULL, '105', '75', '0', NULL, 'Wednesday 12th July 2023 09:25:14 AM', '30', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2023-07-13 13:27:13', '2023-07-13 14:17:25', NULL, 'dsi3082881511', 'Rohit Singh', NULL, '$2y$10$Pi/s0WSmvTV5bBgc1t989e04OatWmPkLKTjxemChRsi4iGoor7NjO', NULL, 'rohitsingh44689@gmail.com', NULL, '296044', NULL, NULL, '5', '5', '0', NULL, 'Thursday 13th July 2023 01:27:13 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2023-07-13 15:23:51', '2023-07-13 15:44:41', NULL, 'dsi8285562661', 'Om Badghaiya', NULL, '$2y$10$YIpHPoIHhJFlUOHV.lgAseZtvcND12w2fEB/YXbq9pCyzUNM6JIN6', NULL, 'badghaiyaom@gmail.com', '/ppdsi8285562661.jpg', '295152', '780857', NULL, '5', '5', '0', NULL, 'Thursday 13th July 2023 03:23:51 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2023-07-13 15:44:39', '2023-07-16 12:55:57', NULL, 'dsi8447563449', 'Nicky Sharma', NULL, '$2y$10$MwRJA/ZG6gw82j/QXXqcee84juKwFnEvpKMlFcYEHL8IuvV5kyQpq', NULL, 'nickysharma484@gmail.com', NULL, '348344', '780857', NULL, '0', '5', '5', NULL, 'Thursday 13th July 2023 03:44:39 PM', '0', '6', '6', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2023-07-13 19:04:41', '2023-07-13 19:19:11', NULL, 'dsi5007115552', 'Hansraj Bhakar', NULL, '$2y$10$Dr51qIkn72PS2IT7Zanz/OyHEDV5b0N9Q0tQ0HtyPo5KZoK/5V5gy', NULL, 'gudubhakar17@gmail.com', NULL, '874273', NULL, NULL, '25', '25', '0', NULL, 'Thursday 13th July 2023 07:04:41 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2023-07-13 20:12:30', '2023-07-13 21:27:48', NULL, 'dsi8086293705', 'Sangeeta Sharma', NULL, '$2y$10$vYAImXIX0sxVm1lLFvOg7.rZAGcR2xA4VQ60a7Dm0eT9IWxIEBSJu', NULL, 'sangeetasharma06274@gmail.com', NULL, '166901', NULL, NULL, '35', '35', '0', NULL, 'Thursday 13th July 2023 08:12:30 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2023-07-13 19:55:05', '2023-08-14 10:36:34', NULL, 'dsi7030362474', 'Ámáň Ńáth', NULL, '$2y$10$KOe1ypFM3iyzxqy7g6exZe5zuYJFaWruVabsbuIXBPTQyUM45f6mu', NULL, 'amannath306@gmail.com', NULL, '839661', NULL, NULL, '35', '35', '0', NULL, 'Thursday 13th July 2023 07:55:05 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2023-07-14 10:44:10', '2023-07-16 13:07:39', NULL, 'dsi6369674209', 'Vikram Rathore', NULL, '$2y$10$sLPwy898qw3EWUg8CDAI2.0wOqclbQOwJ5uhRcrEwub2S91NlOfQO', NULL, 'vr4875476@gmail.com', NULL, '114943', NULL, NULL, '25', '25', '0', NULL, 'Friday 14th July 2023 10:44:10 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2023-07-13 21:33:15', '2023-07-13 21:46:21', NULL, 'dsi1612822565', 'Vikrnt Sharma', NULL, '$2y$10$NcDSNOFLBGM6eNmiPXwDjeqiDUDWHMdEtsHAwX2EBAecxvLu2SeRe', NULL, 'vikrntsharma743@gmail.com', NULL, '300237', NULL, NULL, '35', '35', '0', NULL, 'Thursday 13th July 2023 09:33:15 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2023-07-14 12:43:22', '2023-07-14 12:56:48', NULL, 'dsi4965839581', 'Ravi Bidwan', NULL, '$2y$10$UdSVi7Hvg/TvqKYC2bOq.eqkN9pDTOsACKTqgx.BjeWF6e1jpdLHu', NULL, 'ravibidwan652@gmail.com', NULL, '804543', NULL, NULL, '5', '5', '0', NULL, 'Friday 14th July 2023 12:43:22 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2023-07-16 12:58:35', '2023-07-26 09:04:41', NULL, 'dsi3778204712', 'Priyansh Sharma', NULL, '$2y$10$V9E.5W8c3VyU.kgNIHeTUOvWGon/paH7JQvcrG18WxxZ/9PcrliMO', NULL, 'spriyansh591@gmail.com', NULL, '218444', NULL, NULL, '45', '45', '0', NULL, 'Sunday 16th July 2023 12:58:35 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2023-07-18 15:05:43', '2023-07-18 15:19:25', NULL, 'dsi3107933305', 'Saurbh Baghel', NULL, '$2y$10$pcy5ZFVix406xvtyeJLAsej.sYi/xgVLJm223gVEtF/oFSmjbIIyG', NULL, 'baghelsaurbh187@gmail.com', NULL, '414033', NULL, NULL, '45', '45', '0', NULL, 'Tuesday 18th July 2023 03:05:43 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2023-07-19 20:08:29', '2023-07-21 20:33:21', NULL, 'dsi7440474362', 'Devraj Verma', NULL, '$2y$10$LFjpKKlw9MSNjrF3LB25AO2IA7Oa5QVq2ngjCIpe7dIzkGpBJbulW', NULL, 'dv8419266@gmail.com', NULL, '264639', NULL, NULL, '45', '45', '0', NULL, 'Wednesday 19th July 2023 08:08:29 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2023-07-20 15:39:19', '2023-08-07 20:14:10', NULL, 'dsi4393090610', 'Bharat Bobade', NULL, '$2y$10$wwNtZOx8shCRaT6XZ0AsVOv9weGd3A9176C.x0kGx6dY4A0ZBs5ke', NULL, 'bharatbobade37@gmail.com', NULL, '734347', NULL, NULL, '45', '45', '0', NULL, 'Thursday 20th July 2023 03:39:19 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2023-07-25 18:06:56', '2023-07-25 18:22:27', NULL, 'dsi5699908686', 'Ajay Bairagi', NULL, '$2y$10$ey9IECg42PlvaFVkcR2CbODOENhLbZS.9xNBXGPOpNl8kj3sVpMhK', NULL, 'ajaybairagi9631@gmail.com', NULL, '423018', NULL, NULL, '45', '45', '0', NULL, 'Tuesday 25th July 2023 06:06:56 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2023-07-26 04:41:47', '2023-07-26 04:56:41', NULL, 'dsi5600011234', 'Sanjoy Tudu', NULL, '$2y$10$XdSJ83m28J/WqvhYzKVPTeJUjSWygk5zRb.8sI/P/EkHceI91GPTe', NULL, 'aminjuiharmeya@gmail.com', NULL, '607356', NULL, NULL, '45', '45', '0', NULL, 'Wednesday 26th July 2023 04:41:47 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2023-07-26 10:46:32', '2023-07-27 06:17:42', NULL, 'dsi1701819421', 'Gobinda Debnath', NULL, '$2y$10$UeKo3N4U13a8EOc1EojMdOkb3W7krJpBwlZNraW7qDJUUbbwZ6.su', NULL, 'gobindadebnath3787@gmail.com', NULL, '171321', NULL, NULL, '45', '45', '0', NULL, 'Wednesday 26th July 2023 10:46:32 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2023-07-28 13:25:46', '2023-07-28 13:27:49', NULL, 'dsi5390433715', 'Poori Poori', NULL, '$2y$10$x7jYM88Q8av4yKFYvfzQWucLinspe4HJShB2eT8bDCEu.l2AiEyIq', NULL, 'poornimasubramani09@gmail.com', NULL, '320014', NULL, NULL, '45', '45', '0', NULL, 'Friday 28th July 2023 01:25:46 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2023-07-29 07:29:45', '2023-08-01 06:23:10', NULL, 'dsi4837671886', 'Laxman singh', NULL, '$2y$10$V.PtavxBdQWVrsLeADy6dOL0KVCGlXWwqC51Wb0myfnTCRZcT08uC', NULL, 'ls3944655@gmail.com', NULL, '697677', NULL, NULL, '45', '45', '0', NULL, 'Saturday 29th July 2023 07:29:45 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2023-07-31 14:59:40', '2023-07-31 16:51:28', NULL, 'dsi5577406634', 'Naveen Mounika Vasam', NULL, '$2y$10$DrfVXmxGIWs6.8gmpwu/E.KgiIDBUJh73dvdBzXZPharbPc4oAz6y', NULL, 'vasamnaveenmounika@gmail.com', NULL, '635340', NULL, NULL, '45', '45', '0', NULL, 'Monday 31st July 2023 02:59:40 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2023-07-31 17:17:54', '2023-07-31 17:34:59', NULL, 'dsi8780364769', 'Lolup Baral', NULL, '$2y$10$UhFUS3npZmEr7.9aeNAwceb4ey/3ZAeazzW4P8UmqjjxwKQrlHWpO', NULL, 'lolupbaral16@gmail.com', NULL, '514897', NULL, NULL, '45', '45', '0', NULL, 'Monday 31st July 2023 05:17:54 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2023-07-31 18:56:15', '2023-08-01 14:05:55', NULL, 'dsi8064392614', 'Babu Bhompally', NULL, '$2y$10$e9cRMfKMq5b02zms17O/9OyFaEVJ13MdagJJFFJpE02JO75FfbRf.', NULL, 'babubhompally211@gmail.com', NULL, '868748', NULL, NULL, '45', '45', '0', NULL, 'Monday 31st July 2023 06:56:15 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2023-08-01 16:41:42', '2023-08-03 10:00:13', NULL, 'dsi3051649729', 'Arijit Garai', NULL, '$2y$10$Nvjw1NVRqCjgFC71pGoLGecOx9v5hQVZWPKzLgnCF7Necwr3If.va', NULL, 'garaiutpal20@gmail.com', NULL, '960490', NULL, NULL, '45', '45', '0', NULL, 'Tuesday 1st August 2023 04:41:42 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2023-08-01 16:55:22', '2023-08-02 10:19:40', NULL, 'dsi6134355221', 'Atanu Garai', NULL, '$2y$10$9ChFfFyLRgLLvA6U57Z9xeRa2aBCezgisZVa730S93Sia2.od/wP2', NULL, 'garaiatanu35@gmail.com', NULL, '584634', NULL, NULL, '45', '45', '0', NULL, 'Tuesday 1st August 2023 04:55:22 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2023-08-02 09:55:24', '2023-08-05 08:53:09', NULL, 'dsi9953747926', 'Bhagadhar Gorai', NULL, '$2y$10$lLD4/rLdYWhqRZBFMfUwZOW9NCQSKN60DM4glPBpMysVaSIiSyYYa', NULL, 'bhagadhargorai@gmail.com', NULL, '907062', NULL, NULL, '110', '110', '0', NULL, 'Wednesday 2nd August 2023 09:55:24 AM', '65', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2023-08-02 10:06:33', '2023-08-21 13:32:24', NULL, 'dsi5527268735', 'Papai Garai', NULL, '$2y$10$ufqnDCoE/vMU6gXtqdes/Or6vFAxH/pqsmdVSVGDkRjh.FtwyeQ36', NULL, 'garaip705@gmail.com', NULL, '163040', '907062', NULL, '45', '45', '0', NULL, 'Wednesday 2nd August 2023 10:06:33 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2023-08-04 14:04:31', '2023-08-25 16:18:26', NULL, 'dsi9798422139', 'Sagar Binzlekar', NULL, '$2y$10$QQ8JyWFyOdJ3LNKXfys21O9DzrS9JwS1.0ZRIyGjZRWcFO35NUAn.', NULL, 'binzlekarsagar@gmail.com', NULL, '252442', NULL, NULL, '45', '45', '0', NULL, 'Friday 4th August 2023 02:04:31 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2023-08-04 14:53:46', '2023-08-04 17:13:54', NULL, 'dsi6597195489', 'Vipul padhiyar Padhiyar', NULL, '$2y$10$1waIVuUCyWN7HjYxDOrRyuYppMTOnkdQxTig.ryqiYp1l149zHBK.', NULL, 'vipulpadhiyarpadhiyar5@gmail.com', NULL, '492135', NULL, NULL, '45', '45', '0', NULL, 'Friday 4th August 2023 02:53:46 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2023-08-04 21:24:28', '2023-08-04 22:17:27', NULL, 'dsi2949995479', 'Prince Kumar', NULL, '$2y$10$RwELNL7aOZM2Y9Re5Peem.X.ouiq3XRnGcUm1IL991gXTZuVJtf5i', NULL, 'pk8129059982@gmail.com', NULL, '624772', NULL, NULL, '45', '45', '0', NULL, 'Friday 4th August 2023 09:24:28 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2023-08-04 22:18:12', '2023-08-08 12:15:29', NULL, 'dsi8538128025', 'Dileep Kumar', NULL, '$2y$10$E9N.mwyqMxwtEeAuHJgNwumanKimgHfMWFAaponxwsrTWPT9VY332', NULL, 'dileep.trts@gmail.com', NULL, '622103', NULL, NULL, '45', '45', '0', NULL, 'Friday 4th August 2023 10:18:12 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2023-08-05 14:06:13', '2023-08-05 14:09:47', NULL, 'dsi6779508748', 'DURGESH PRADHAN', NULL, '$2y$10$UX98/3ZttHgTwxn0PquIe.DKw79Yc9x6Z.a1UptCIXABYBlg6cxye', NULL, 'pradhandurgesh97@gmail.com', NULL, '850631', NULL, NULL, '45', '45', '0', NULL, 'Saturday 5th August 2023 02:06:13 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2023-08-07 12:53:31', '2023-08-07 12:59:27', NULL, 'dsi1591205328', 'Dilshada Javed', NULL, '$2y$10$SwhjxMvmcMYbRys0vgu9Q.Y2nOzqKbVhGCzAZsGiKYHJv.aLxfShq', NULL, 'dilshadajaved8@gmail.com', NULL, '515633', NULL, NULL, '45', '45', '0', NULL, 'Monday 7th August 2023 12:53:31 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2023-08-08 11:23:09', '2023-08-08 11:26:36', NULL, 'dsi7395860295', 'Sumit lole', NULL, '$2y$10$Vs4OTSfSeaLx/7fSsRAku.wfZqM5tLSLgmLtoQz9E10f/bKosjO1C', NULL, 'sumitlole7690@gmail.com', NULL, '845816', NULL, NULL, '45', '45', '0', NULL, 'Tuesday 8th August 2023 11:23:09 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2023-08-08 14:39:23', '2023-08-08 22:17:31', NULL, 'dsi8919010604', 'Meenu Verma', NULL, '$2y$10$oacgfle3vmJPR3qMlv2MyOheoPRRq9l.v31oeMp7ib0zIUvW6KAUC', NULL, 'mv325909@gmail.com', NULL, '943085', NULL, NULL, '45', '45', '0', NULL, 'Tuesday 8th August 2023 02:39:23 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2023-08-10 10:37:18', '2023-08-10 10:41:17', NULL, 'dsi9909834990', 'Mehul kumar Mehul kumar', NULL, '$2y$10$9jo2HOjXjmKQmbknCvYvcON2BfKV7UekjrCzVjz704sua61yLG2Gm', NULL, 'mehulkumarmehulkumar45@gmail.com', NULL, '572880', NULL, NULL, '45', '45', '0', NULL, 'Thursday 10th August 2023 10:37:18 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2023-08-10 15:48:31', '2023-08-10 15:52:04', NULL, 'dsi1223427069', 'Sumit Sumit', NULL, '$2y$10$Bm5M6/Olmk3nmTWgkIt7TOCHtC9zEz4zq/ad7SlCv.googmrcJfBW', NULL, 'sumitsumit07398@gmail.com', NULL, '886551', NULL, NULL, '45', '45', '0', NULL, 'Thursday 10th August 2023 03:48:31 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2023-08-11 11:29:14', '2023-08-21 13:41:45', NULL, 'dsi1764837173', 'Ranjit', NULL, '$2y$10$gNLHXOAejz9zOHsGHYdZIeWlxWQGCKo1XAjnTjBa.fwF2YwHROiZS', NULL, 'ranjitbrooo@gmail.com', NULL, '559799', NULL, NULL, '45', '45', '0', NULL, 'Friday 11th August 2023 11:29:14 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2023-08-14 14:57:19', '2023-08-14 14:58:24', NULL, 'dsi8433773020', 'Kanika Das', NULL, '$2y$10$4jzL3MTjGUnnUHeslFwVn.4JGUwko/WuRLwrspFNpWEc8.jPl3Cci', NULL, 'daskanika793@gmail.com', NULL, '669685', NULL, NULL, '45', '45', '0', NULL, 'Monday 14th August 2023 02:57:19 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2023-08-20 10:23:29', '2023-08-20 10:24:56', NULL, 'dsi4113022381', 'Play Store', NULL, '$2y$10$/36tuXCCRXSU4PI3ycY1g.kVWN6fI7jFq.KbAeE1QgXD623ATZS6u', NULL, 'playstoretest972@gmail.com', NULL, '728515', NULL, NULL, '45', '45', '0', NULL, 'Sunday 20th August 2023 10:23:29 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2023-09-03 14:51:56', '2023-09-03 15:04:48', NULL, 'dsi9814029119', 'Monu kumar', NULL, '$2y$10$hng8zhpDuYqxa8y9OcMkH.Zwgq1DARYuyFgDiKzrkdfJNT4QTqHYm', NULL, 'kumarmonu05121999@gmail.com', NULL, '398250', NULL, NULL, '45', '45', '0', NULL, 'Sunday 3rd September 2023 02:51:56 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2023-10-07 02:34:29', '2023-11-08 02:17:25', NULL, 'dsi5801137204', 'Vairab Roy', NULL, '$2y$10$04P/lRJ7T9yBE0Jen23PCeVjwQXeWmoCxcRkaHHiGWHj9gQ37R/pu', NULL, 'vairabroy1@gmail.com', NULL, '772228', NULL, NULL, '45', '45', '0', NULL, 'Saturday 7th October 2023 08:04:29 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2023-10-30 16:58:22', '2023-10-30 17:23:55', NULL, 'dsi2892033671', 'Anshika Tiwari', NULL, '$2y$10$vNy3t8vXRvdMsA9v1M.87O309cvfdKV/XgJsweLHN1lr7HYN6D17e', NULL, 'anshikatiwari839@gmail.com', NULL, '633328', NULL, NULL, '45', '45', '0', NULL, 'Monday 30th October 2023 10:28:22 PM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2023-12-31 19:23:08', '2023-12-31 19:33:24', NULL, 'dsi3305590790', 'concentrix playstore', NULL, '$2y$10$i.zfsA6tqMytJ.j5rjsnqONx59Y9V5Mmi1ygP5mENV1l1gIZ2GGD6', NULL, 'playstoreconcentrix79@gmail.com', NULL, '871867', NULL, NULL, '45', '45', '0', NULL, 'Monday 1st January 2024 12:53:08 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2024-01-01 04:42:35', '2024-01-01 04:43:53', NULL, 'dsi3221358067', 'Play Cnx', NULL, '$2y$10$LHKpXiv7YY44dB97I5QKwOv659MK21CERMLW9h7QgQkh2ik2eKZuS', NULL, 'pcnx70118@gmail.com', NULL, '344146', NULL, NULL, '5', '45', '0', NULL, 'Monday 1st January 2024 10:12:35 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2024-01-03 23:36:33', '2024-01-04 00:25:30', NULL, 'dsi1936247557', 'Jaime Clegane', NULL, '$2y$10$EIt4V1PiBYi/2JswN4w5FuO7clRxJaJBKxO22HRanzMcQYNJg1yvi', NULL, 'jaimeclegane001@gmail.com', NULL, '168390', NULL, NULL, '45', '45', '0', NULL, 'Thursday 4th January 2024 05:06:33 AM', '0', '0', '0', '0', '0', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websettings`
--

CREATE TABLE `websettings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_tagline` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin_mode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sideskin_mode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pnum` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secnum` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pemail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secemail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `classic_rule` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_rule` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrow_rule` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_bonus` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bot_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer_bonus` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_withdraw` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_mail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_apikey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_secret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whatsapp_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paytm_midid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashfree_apikey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashfree_secret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashfree_status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_title` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_slug` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websettings`
--

INSERT INTO `websettings` (`id`, `created_at`, `updated_at`, `website_name`, `website_url`, `website_tagline`, `website_keyword`, `website_desc`, `copyright`, `skin_mode`, `sideskin_mode`, `head_logo`, `footer_logo`, `favicon`, `facebook`, `youtube`, `twitter`, `whatsapp`, `linkedin`, `pinterest`, `instagram`, `github`, `pnum`, `secnum`, `pemail`, `secemail`, `address`, `about_title`, `about_slug`, `about_desc`, `classic_rule`, `quick_rule`, `arrow_rule`, `commission`, `signup_bonus`, `bot_status`, `server_key`, `refer_bonus`, `min_withdraw`, `support_mail`, `payment_apikey`, `payment_secret`, `terms_title`, `terms_slug`, `terms_desc`, `privacy_title`, `privacy_slug`, `privacy_desc`, `whatsapp_link`, `youtube_link`, `purchase_link`, `app_version`, `telegram_link`, `notification`, `paytm_midid`, `paytm_secret`, `cashfree_apikey`, `cashfree_secret`, `razorpay_status`, `paytm_status`, `cashfree_status`, `refund_title`, `refund_slug`, `refund_desc`) VALUES
(1, '2021-07-25 09:44:32', '2023-12-31 18:16:48', 'Devil Ludo', 'https://ludo.devsecit.com/', 'Devil Ludo - Real Money Online Game', 'Ludo,realmoney,earning app, ludo, ludo king,devil ludo', 'A Best Ludo Online Game Tournament App', 'Copyright @ 2023', NULL, 'menu-light', 'Ludo-Game-Ludo-2020-Star-Game-logo.webp', 'Ludo-Game-Ludo-2020-Star-Game-logo.webp', 'Ludo-Game-Ludo-2020-Star-Game-logo.webp', '#', '#', '#', '#', '#', '#', '#', '#', '8101979855', '8101979855', 'info@devsecit.com', 'info@devsecit.com', 'Kashipur Samastipur', 'About US', 'about-us', '<p>&nbsp;-</p>', 'kundan sah change erter', NULL, NULL, '25', '45', '1', NULL, '65', '250', 'info@devsecit.com', '12467023c176090bfb5777bc02076421', 'd780dc852cbcdec4698ee19b4e3f81e282994883', 'Terms & Condition', 'terms-&-condition', '-', 'Privacy Policy', 'privacy-policy', 'Kanai Shil built the Devil Ludo app as a Free app. This SERVICE is provided by Kanai Shil at no cost and is intended for use as is.\r\n\r\nThis page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.\r\n\r\nIf you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.\r\n\r\nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Devil Ludo unless otherwise defined in this Privacy Policy.\r\n\r\nInformation Collection and Use\r\n\r\nFor a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to na. The information that I request will be retained on your device and is not collected by me in any way.\r\n\r\nThe app does use third-party services that may collect information used to identify you.\r\n\r\nLink to the privacy policy of third-party service providers used by the app\r\n\r\nGoogle Play Services\r\nAdMob\r\nGoogle Analytics for Firebase\r\nUnity\r\nLog Data\r\n\r\nI want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.\r\n\r\nCookies\r\n\r\nCookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.\r\n\r\nThis Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\r\n\r\nService Providers\r\n\r\nI may employ third-party companies and individuals due to the following reasons:\r\n\r\nTo facilitate our Service;\r\nTo provide the Service on our behalf;\r\nTo perform Service-related services; or\r\nTo assist us in analyzing how our Service is used.\r\nI want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\r\n\r\nSecurity\r\n\r\nI value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.\r\n\r\nLinks to Other Sites\r\n\r\nThis Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\r\n\r\nChildren’s Privacy\r\n\r\nThese Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.\r\n\r\nChanges to This Privacy Policy\r\n\r\nI may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\r\n\r\nThis policy is effective as of 2023-06-12\r\n\r\nContact Us\r\n\r\nIf you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at bsm1111419@gmail.com.', 'https://telegram.me/+skuXu2p4PRs4YTFl', 'https://www.youtube.com/@webdeveloperkanaishil773', 'https://ludo.devsecit.com/razorpay/payment', '1.0', 'https://telegram.me/+skuXu2p4PRs4YTFl', '********** Offer ********** \r\nGet 250 coins on 199 Rs topup \r\nGet 500 coins on 299 Rs topup \r\nGet 800 coins on 499 Rs topup', NULL, NULL, '780644e1d1bd830caab64511046087', '8fd70b23c74162347d0fdf00a7b9cdac25fd1224', '0', '1', '0', 'Refund Policy', 'refund-policy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et sagittis elit. Aliquam commodo nisl quam, ac pellentesque justo dictum ac. Etiam ut purus turpis. Curabitur tristique massa ut urna pretium molestie. Phasellus ut massa nulla. Praesent commodo nulla leo, in consequat arcu tincidunt sit amet. Cras at purus felis. Phasellus aliquet ac erat ac pharetra.\r\n\r\nNunc posuere massa ac mollis molestie. Praesent placerat vitae risus imperdiet pellentesque. Morbi mattis at orci at tempor. Aenean sit amet condimentum arcu, sed interdum nunc. Curabitur mattis enim at purus venenatis maximus. Aenean magna elit, gravida sed mi in, cursus varius lectus. Nulla tristique lorem eu tincidunt pharetra. Nullam pretium sem sed ex dignissim, eu vestibulum ex laoreet. Maecenas felis nulla, semper at dolor et, auctor condimentum sem. Nulla dolor nunc, sollicitudin at leo vestibulum, aliquet tempus ex. Donec fringilla consectetur neque non vehicula.\r\n\r\nAenean nec consequat urna, ut molestie enim. Curabitur eu volutpat risus. Donec ultricies massa sit amet hendrerit cursus. Aenean eget molestie metus. Ut diam lectus, cursus quis diam sed, posuere hendrerit dolor. Quisque orci augue, dictum a commodo at, tincidunt eget tortor. Aenean sapien augue, molestie quis est a, vestibulum hendrerit dolor. Maecenas sit amet sodales purus, vel convallis magna. Phasellus aliquam at ex sit amet laoreet. Pellentesque et augue feugiat, accumsan nisl sed, hendrerit tellus. Aliquam ut congue velit.\r\n\r\nInteger ut tortor ante. Sed id magna quis felis egestas ullamcorper eget quis dolor. In hendrerit magna ac lacus luctus, quis facilisis diam consectetur. Maecenas sodales placerat nisi, id lacinia purus malesuada eget. Phasellus venenatis laoreet faucibus. Donec et est at ipsum porta feugiat non ut lacus. Mauris sit amet vulputate ligula, a convallis sem. Nullam eget dolor tellus. Suspendisse potenti. Integer tellus magna, feugiat sit amet posuere quis, finibus a tortor. Aenean a volutpat libero. Fusce vehicula ultrices augue non suscipit. Mauris in nunc rhoncus justo scelerisque auctor. Aliquam varius pulvinar nisl eu porta. Duis mollis id nisl id tempus.\r\n\r\nPhasellus id ligula eu lacus molestie porta eu in arcu. Phasellus ut scelerisque quam. Integer eu nulla metus. Donec ultricies nisi in gravida ultrices. Donec tincidunt lorem in iaculis hendrerit. Nulla et lectus in erat porta pellentesque in a dui. Fusce posuere sem quis turpis suscipit mollis. Praesent eu turpis leo.');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `transaction_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `userid`, `amount`, `payment_method`, `wallet_number`, `bank_name`, `account_number`, `ifsc_code`, `status`, `transaction_id`, `created_at`, `updated_at`) VALUES
(9, '2087456562', '250', 'UPI', NULL, '..', '7478596100@paytm', '..', '1', '686875858587585', NULL, '2023-06-12 01:16:05'),
(10, 'dsi8447563449', '250', 'Bank Account', NULL, 'Indian Bank', '50177858657', 'IDIB000B547', '1', '356219690114', NULL, '2023-07-15 12:12:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcoins`
--
ALTER TABLE `addcoins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gamehistories`
--
ALTER TABLE `gamehistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homedetails`
--
ALTER TABLE `homedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jackpots`
--
ALTER TABLE `jackpots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycdetails`
--
ALTER TABLE `kycdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kycdetails_document_number_unique` (`document_number`);

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
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomdatas`
--
ALTER TABLE `roomdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screenshots`
--
ALTER TABLE `screenshots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopcoins`
--
ALTER TABLE `shopcoins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `specials_offer_title_unique` (`offer_title`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdatas`
--
ALTER TABLE `userdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websettings`
--
ALTER TABLE `websettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcoins`
--
ALTER TABLE `addcoins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gamehistories`
--
ALTER TABLE `gamehistories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `homedetails`
--
ALTER TABLE `homedetails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jackpots`
--
ALTER TABLE `jackpots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kycdetails`
--
ALTER TABLE `kycdetails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roomdatas`
--
ALTER TABLE `roomdatas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `screenshots`
--
ALTER TABLE `screenshots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `shopcoins`
--
ALTER TABLE `shopcoins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userdatas`
--
ALTER TABLE `userdatas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `websettings`
--
ALTER TABLE `websettings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
