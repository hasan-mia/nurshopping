-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2022 at 03:17 PM
-- Server version: 10.3.32-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nursupershop_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Admin', '123456789', 'admin@gmail.com', NULL, '$2y$10$ponFE9YSBCU/4oTxfJMQZOEjwg4QwBTAYNbzAUb84NeqVtnzOXDU6', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2020-01-04 12:28:45'),
(5, 'abubakor', '01775151417', 'abubakorsiddik789@gmail.com', NULL, '$2y$10$pQ5V6EuK7aiVlIB2WJhDJOjq15NdPuK9xMCqrUzIUCz79nwNuS4Zi', NULL, '1', '1', '1', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', 2, NULL, NULL),
(9, 'Editor', '01768829277', 'info@nursupershop.com', NULL, '$2y$10$7eD6nR8BquEyV3TA4Dzcf.qBosfGlj2K/tkgFfMpS.fDv8yMjvFxO', NULL, '1', '1', '1', NULL, '1', '1', NULL, NULL, '1', NULL, NULL, '1', '1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(4, 'Sony', 'public/media/brand/190120_20_53_24.png', NULL, NULL),
(5, 'Rado', 'public/media/brand/190120_20_35_25.png', NULL, NULL),
(6, 'Lenovo', 'public/media/brand/190120_20_56_25.png', NULL, NULL),
(7, 'Assus', 'public/media/brand/190120_20_11_26.png', NULL, NULL),
(8, 'Cannon', 'public/media/brand/190120_20_21_26.png', NULL, NULL),
(9, 'Dell', 'public/media/brand/190120_20_38_26.png', NULL, NULL),
(10, 'Gucci', 'public/media/brand/190120_20_53_26.png', NULL, NULL),
(11, 'Levis', 'public/media/brand/190120_20_05_27.png', NULL, NULL),
(12, 'Nike', 'public/media/brand/190120_20_17_27.png', NULL, NULL),
(13, 'Adidas', 'public/media/brand/190120_20_33_27.png', NULL, NULL),
(14, 'No Brand', 'public/media/brand/060421_01_15_36.png', NULL, NULL),
(15, 'SMC', 'public/media/brand/070421_15_38_45.jpg', NULL, NULL),
(16, 'Godrej', 'public/media/brand/070421_15_23_46.png', NULL, NULL),
(17, 'Sepnil', 'public/media/brand/070421_15_03_48.jpg', NULL, NULL),
(18, 'Biore', 'public/media/brand/070421_15_35_48.png', NULL, NULL),
(19, 'Boro Plus', 'public/media/brand/080421_08_04_33.jpg', NULL, NULL),
(20, 'Dettol', 'public/media/brand/080421_08_35_33.jpg', NULL, NULL),
(21, 'Dabur', 'public/media/brand/080421_08_09_34.png', NULL, NULL),
(22, 'Dove', 'public/media/brand/080421_08_30_34.png', NULL, NULL),
(23, 'Almer', 'public/media/brand/080421_08_54_34.png', NULL, NULL),
(24, 'Bactrol', 'public/media/brand/080421_08_47_36.jpg', NULL, NULL),
(25, 'Mediker', 'public/media/brand/080421_08_22_37.png', NULL, NULL),
(26, 'Emami', 'public/media/brand/080421_08_49_37.png', NULL, NULL),
(27, 'Lifebuoy', 'public/media/brand/080421_08_53_38.png', NULL, NULL),
(28, 'Pears', 'public/media/brand/080421_08_34_39.jpg', NULL, NULL),
(29, 'Savlon', 'public/media/brand/080421_08_00_40.jpg', NULL, NULL),
(30, 'Oxy Clean', 'public/media/brand/080421_18_06_00.png', NULL, NULL),
(31, 'Teer', 'public/media/brand/110421_18_11_10.png', NULL, NULL),
(32, 'ACI', 'public/media/brand/120421_18_16_44.jpg', NULL, NULL),
(33, 'Fresh', 'public/media/brand/120421_18_44_44.jpg', NULL, NULL),
(34, 'Eagle', 'public/media/brand/120421_19_55_05.jpg', NULL, NULL),
(35, 'Boss', 'public/media/brand/120421_19_07_06.jpg', NULL, NULL),
(36, 'Rak', 'public/media/brand/120421_19_19_06.png', NULL, NULL),
(37, 'Basundhara', 'public/media/brand/130421_09_53_03.png', NULL, NULL),
(38, 'Rupchanda', 'public/media/brand/150421_10_19_39.jpg', NULL, NULL),
(39, 'Radhuni', 'public/media/brand/150421_10_27_47.png', NULL, NULL),
(40, 'Pusti', 'public/media/brand/150421_10_17_48.png', NULL, NULL),
(41, 'square', 'public/media/brand/160421_14_53_46.jpg', NULL, NULL),
(42, 'Eskayef', 'public/media/brand/160421_14_09_48.png', NULL, NULL),
(43, 'Opsonin', 'public/media/brand/180421_13_13_48.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_logo`, `created_at`, `updated_at`) VALUES
(12, 'মেডিসিন', 'public/media/category/medicine.jpg', '2020-01-19 14:16:15', '2020-01-19 14:16:15'),
(13, 'কসমেটিক্স', 'public/media/category/160421_14_02_42.jpg', '2020-01-19 14:16:27', '2020-01-19 14:16:27'),
(14, 'ফলমূল', 'public/media/category/fruits.jpg', '2020-01-19 14:16:37', '2020-01-19 14:16:37'),
(15, 'টাংগাইলের মিষ্টি', 'public/media/category/160421_14_31_42.jpg', '2020-01-19 14:16:48', '2020-01-19 14:16:48'),
(16, 'খাবার', 'public/media/category/food.png', '2020-01-19 14:16:58', '2020-01-19 14:16:58'),
(17, 'সকল প্রকার বই', 'public/media/category/160421_14_55_42.jpg', '2020-01-19 14:17:30', '2020-01-19 14:17:30'),
(19, 'ইলেক্ট্রনিক্স', 'public/media/category/170421_14_32_30.jpg', '2020-01-19 14:17:52', '2020-01-19 14:17:52'),
(20, 'টাংগাইলের শাড়ি', 'public/media/category/saree.jpg', '2020-01-19 14:18:01', '2020-01-19 14:18:01'),
(21, 'গার্মেন্টস(পুরুষ)', 'public/media/category/garments.jpg', '2020-01-19 14:18:15', '2020-01-19 14:18:15'),
(22, 'নিত্যপ্রয়োজনীয়', 'public/media/category/dailyneeds.png', '2021-03-29 12:03:58', '2021-03-29 12:03:58'),
(23, 'মনোহারি', 'public/media/category/monohari.jpg', '2021-03-29 12:06:16', '2021-03-29 12:06:16'),
(25, 'বেবি প্রডাক্ট', 'public/media/category/babbyproducts.jpg\r\n', '2021-03-31 14:19:59', '2021-03-31 14:19:59'),
(26, 'স্টেশনারী', 'public/media/category/stationary.jpg\r\n', '2021-03-31 14:26:04', '2021-03-31 14:26:04'),
(27, 'স্লাইডার', 'public/media/category/150421_23_04_54.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'this is the test message', NULL, NULL),
(2, 'Khan', '9239827392`', 'khan@gmil.com', 'ahsdkfsadf ashdkjfhkasd hkas\r\na fkasd hfkashdfkas', NULL, NULL),
(3, 'Kazi', '293879238`', 'kazi@gmail.com', 'HI i need some infromation', NULL, NULL),
(4, 'Bridget Brett', '07147 33 02 99', 'bridget.brett@yahoo.com', 'Do you need more business for your online business? We can deliver keyword targeted visitors precisely for your business model\r\n For more info Visit: http://bit.ly/web-traffic-targeted-for-your-niche', NULL, NULL),
(5, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Hi, my name is Eric and I’m betting you’d like your website nursupershop.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at nursupershop.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=nursupershop.com', NULL, NULL),
(6, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found nursupershop.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=nursupershop.com', NULL, NULL),
(7, 'Mazlan Selvi', '86499966885', 'no-replyPug@gmail.com', 'Dear Friend, \r\n \r\nMy names are Mr. Mezlan Selvi, a lawyer base in Kuala Lumpur - Malaysia. I have previously sent you an email regarding a transaction of US$13.5 Million left behind by my late client before his tragic death but no response from you. \r\n \r\nHowever, I am contacting you once again with strong believe that you will work /partner with me to execute this business transaction in good faith. Please if you are interested in proceeding with me, kindly respond to me via my private email mselvi@ponnusamylawassociates-my.com for more detailed information. \r\n \r\nAs a matter of fact, this transaction is 100% risk free and I look forward to your acknowledgement. \r\n \r\nRegards, \r\nMr. Mazlan Selvi \r\nEmail: mselvi@ponnusamylawassociates-my.com', NULL, NULL),
(8, 'Mike Ayrton', '86984516344', 'no-reply@google.com', 'Hi there \r\n \r\nI have just took a look on your SEO for  nuronlineshopping.com for the ranking keywords and saw that your website could use an upgrade. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Ayrton\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', NULL, NULL),
(9, 'Aliza Zulfiqar', '05.13.15.27.61', 'aliza@greekfly.com', 'Hi,\r\n\r\nI want to contribute high-quality content to your website in form of a guest post through a simple 3 step process.\r\n\r\n1. I will send three amazing topic ideas that are up to the trend and your readers\' interest\r\n2. You need to choose one topic out of those.\r\n3. I will then send a high-quality, plagiarism-free article on that topic.\r\n\r\nYou will just have to publish it with one do-follow backlink to my website. It will be a win-win.\r\n\r\nPlease let me know if we shall start with step 1?\r\n\r\nBest,\r\n\r\nAliza Zulfiqar', NULL, NULL),
(10, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Hi, my name is Eric and I’m betting you’d like your website nurshopping.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at nurshopping.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=nurshopping.com', NULL, NULL),
(11, 'Cecil Bellamy', '0676 715 18 52', 'ykumarrudra125s@pianoxltd.com', 'How to earn extra cash with your website without doing a thing: https://bit.ly/cash-in-on-affiliate-marketing', NULL, NULL),
(12, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found nurshopping.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=nurshopping.com', NULL, NULL),
(13, 'Mike Stevenson', '89727387178', 'eliseharris3262@gmail.com', 'Hi \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Stevenson\r\n \r\nSpeed SEO Digital Agency', NULL, NULL),
(14, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found nurshopping.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=nurshopping.com', NULL, NULL),
(15, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Hi, my name is Eric and I’m betting you’d like your website nurshopping.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at nurshopping.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=nurshopping.com', NULL, NULL),
(16, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found nurshopping.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=nurshopping.com', NULL, NULL),
(17, 'Mike Jenkin', '84411266334', 'no-replyAbobedal@gmail.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nGet your nurshopping.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \r\n \r\nOn SALE: \r\nhttps://www.strictlydigital.net/product/ahrefs-dr60/ \r\n \r\n \r\nThank you \r\nMike Jenkin', NULL, NULL),
(18, 'Joeann Avalos', '06-23706116', 'joeann.avalos@msn.com', 'Get free backlinks on sites that Google loves! Here\'s where you can get them: https://ai6.net/GhUF0f', NULL, NULL),
(19, 'Millard Marx', '(03) 5361 3754', 'marx.millard@msn.com', 'Hi, can you please tell me if you\'re still offering the $50 discount like I saw on www.shinynewad.xyz?', NULL, NULL),
(20, 'Maximilian Charleston', '419 53 724', 'charleston.maximilian90@googlemail.com', 'Did you post an ad on www.trafficpros.xyz? I want the discount offer that\'s listed there if it\'s still available please.', NULL, NULL),
(21, 'Sybil Playfair', '077 7615 5948', 'sybil.playfair@gmail.com', 'Wanna score free traffic to your site quick? Go ahead and post some ads for free on these sites: https://26uf.short.gy/sites-that-accept-free-ads', NULL, NULL),
(22, 'Trey Kaawirn', '02684 65 24 51', 'trey.kaawirn@gmail.com', 'Want to improve your website\'s look and feel for free? Check out some of these free wordpress plugins: https://cutt.ly/yEDfWwf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(3, 'EASY', '1', NULL, NULL),
(4, 'TEST', '1', NULL, NULL);

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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2020_01_04_184258_create_categories_table', 2),
(6, '2020_01_04_184506_create_subcategories_table', 2),
(7, '2020_01_04_184544_create_brands_table', 2),
(8, '2020_01_09_211343_create_coupons_table', 3),
(9, '2020_01_09_222125_create_newslaters_table', 4),
(10, '2020_01_11_192542_create_products_table', 5),
(11, '2020_01_17_192520_create_post_category_table', 6),
(12, '2020_01_17_192619_create_posts_table', 6),
(13, '2020_01_24_192923_create_wishlists_table', 7),
(14, '2020_02_01_193132_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2020_02_06_192506_create_orders_table', 10),
(21, '2020_02_06_192627_create_orders_details_table', 10),
(22, '2020_02_06_192704_create_shipping_table', 10),
(23, '2020_02_11_195424_create_seo_table', 11),
(24, '2020_02_15_195532_create_sitesetting_table', 12),
(25, '2020_02_20_191513_create_contact_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(4, 'dinislam246@gmail.com', '2021-04-11 03:23:56', NULL),
(5, 'Nicolette87@hotmail.com', '2021-04-26 22:45:20', NULL),
(6, 'sarahtm2000@yahoo.com', '2021-05-28 10:14:49', NULL),
(7, 'donniesclassiccars2016@yahoo.com', '2021-06-15 11:58:16', NULL),
(8, 'jopila2415@bushdown.com', '2021-09-12 13:40:52', NULL),
(9, 'xoyefah903@shensufu.com', '2021-09-12 13:41:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'YsTOBdBJGrnS1EJpmhsQivXouyuFhDxIBeoEwJWF', 'http://localhost', 1, 0, 0, '2020-02-04 13:02:43', '2020-02-04 13:02:43'),
(2, NULL, 'Laravel Password Grant Client', 'pJ5V9FuM0OuvrMO4wwN99XjCPlBvwBy0FwygbehB', 'http://localhost', 0, 1, 0, '2020-02-04 13:02:44', '2020-02-04 13:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-04 13:02:44', '2020-02-04 13:02:44');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(25, '34', 'oncash', NULL, NULL, NULL, NULL, '200.00', NULL, NULL, '200.00', '3', '0', 'April', '12-04-21', '2021', '401650', NULL, NULL),
(26, '35', 'oncash', NULL, NULL, NULL, NULL, '60.00', NULL, NULL, '60.00', '0', '0', 'April', '12-04-21', '2021', '747733', NULL, NULL),
(27, '36', 'mobile', NULL, NULL, NULL, NULL, '20.00', NULL, NULL, '170', '0', '0', 'April', '13-04-21', '2021', '890877', NULL, NULL),
(28, '37', 'oncash', NULL, NULL, NULL, NULL, '40.00', NULL, NULL, '40.00', '0', '0', 'April', '15-04-21', '2021', '489499', NULL, NULL),
(29, '39', 'mobile', NULL, NULL, NULL, NULL, '290.00', NULL, NULL, '440', '0', '1', 'April', '16-04-21', '2021', '791429', NULL, NULL),
(30, '44', 'oncash', NULL, NULL, NULL, NULL, '250.00', NULL, NULL, '250.00', '0', '0', 'April', '26-04-21', '2021', '272276', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(11, 25, '265', 'দই ছোট পাতিল', 'NO', 'NO', '1', '200', '200', NULL, NULL),
(12, 26, '89', 'Dettol Original Liquid Hand Wash Refill (170ml)', 'সাদা', '170এমএল', '1', '60', '60', NULL, NULL),
(13, 27, '248', 'ইসুবগুল ( প্যাকেট )', 'no', '1 PCএস', '2', '10', '20', NULL, NULL),
(14, 28, '119', 'Sepnil Instant Hand Sanitizer (40ml)', 'সাদা', '40এমএল', '1', '40', '40', NULL, NULL),
(15, 29, '311', 'Pentonix 40mg (১ পাতা) incepta', 'No', 'NO', '1', '90', '90', NULL, NULL),
(16, 29, '58', 'লাল খুরমা - ১ কেজি', 'no', 'no', '1', '200', '200', NULL, NULL),
(17, 30, '170', 'মালাই চপ - ১ কেজি', 'NO', 'NO', '1', '250', '250', NULL, NULL);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_in` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_in`, `post_image`, `details_en`, `details_in`, `created_at`, `updated_at`) VALUES
(1, 2, '22SPI’s Epic Guide to Affiliate Marketing', '22संबद्ध विपणन के लिए SPI की एपिक गाइड', 'public/media/post/1657453489783170.png', '<div>111Affiliate marketing is the process of earning a commission by promoting another company\'s product (or service). You find a product, promote it to others, and earn a piece of the profit for each sale that you make.</div><div><br></div><div>In other words, when you help another company generate sales, you get a cut!</div><div><br></div><div>The best part is that you don’t have to spend the time and money to create your own products, because someone else has already done the hard work. You can begin making money as an affiliate as soon as you have a place to recommend products, whether that\'s a website you have, a podcast, or even on social media.</div><div><br></div><div>So, all you have to do is send traffic through a link to that product, and everything after that is out of your hands . . . right?</div>', '<div>11संबद्ध विपणन किसी अन्य कंपनी के उत्पाद (या सेवा) को बढ़ावा देकर कमीशन अर्जित करने की प्रक्रिया है। आप एक उत्पाद पाते हैं, इसे दूसरों को बढ़ावा देते हैं, और आपके द्वारा किए गए प्रत्येक बिक्री के लिए लाभ का एक टुकड़ा कमाते हैं।</div><div><br></div><div>दूसरे शब्दों में, जब आप किसी अन्य कंपनी को बिक्री उत्पन्न करने में मदद करते हैं, तो आपको कटौती मिलती है!</div><div><br></div><div>सबसे अच्छी बात यह है कि आपको अपना उत्पाद बनाने के लिए समय और पैसा खर्च नहीं करना पड़ता है, क्योंकि किसी और ने पहले ही कड़ी मेहनत की है। जैसे ही आपके पास उत्पादों की सिफारिश करने के लिए जगह है, चाहे वह आपके पास एक वेबसाइट हो, पॉडकास्ट हो या सोशल मीडिया पर भी आप पैसा बनाना शुरू कर सकते हैं।</div><div><br></div><div>इसलिए, आपको केवल उस उत्पाद के लिंक के माध्यम से ट्रैफ़िक भेजना है, और उसके बाद सब कुछ आपके हाथों से बाहर है। । । सही?</div>', NULL, NULL),
(2, 3, 'How Businesses Should Handle', 'कैसे व्यापार संभालना चाहिए', 'public/media/post/1657453376418533.jpeg', '<p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The World Health Organisation on Thursday declared the outbreak of the Wuhan coronavirus as a global emergency after more than 200 people died from the pneumonia-like illness.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Cities in China have been cordoned off, airlines have cancelled flights to and out of the country, and airports globally have started implementing thermal scanners to catch any infections early.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Till date, around 9,800 cases of a coronavirus infection have been reported, surpassing the SARS epidemic in early 2000s. The new virus - named&nbsp;<a href=\"https://www.cdc.gov/coronavirus/2019-ncov/\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">2019-nCoV</a>&nbsp;- appears to have a mortality rate of 2.2 per cent, as per a Bloomberg&nbsp;<a href=\"https://www.bloomberg.com/graphics/2020-wuhan-novel-coronavirus-outbreak/\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">report</a>, and from statistics based on national data from Jan. 20 onwards. However, the report added that it’s still too early to tell how deadly the outbreak will be, and notes that more people have died from it since Jan 20, than have left the hospital.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">With coronavirus still continuing to spread across the world, we’ve put together a handy guide on best practices companies and human resources departments should follow to help their employees stay healthy and infection-free.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">&nbsp;</p><h3 style=\"-webkit-font-smoothing: antialiased; font-weight: 700; line-height: 28.6px; font-size: 1.375rem; margin-top: 0.875rem; margin-right: 0px; margin-left: 0px; font-family: Roboto, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 33, 33);\">Effective Communication is Key</h3><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">HR departments should pull together information pertaining to the coronavirus to create a ready-to-refer instructional guide for employees that not only educates them about the viral infection, but also enlists ways to avoid it.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The communication strategy should be multi-pronged and use all channels of communication available.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">“You are looking at bulletins, sticking posters on the wall, emails, chat groups, town hall, infographics, videos, and any mode of media that could help to effectively communicate the message to all employees,” says Adrian Tan, a veteran HR practitioner and APAC leader of PeopleStrong, an India-based Enterprise HR SaaS platform.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Information gathered should only be from credible and verified sources, such as the&nbsp;<a href=\"https://www.who.int/health-topics/coronavirus\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">page</a>, the CDC&nbsp;<a href=\"https://www.cdc.gov/coronavirus/about/symptoms.html\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">website</a>, and reputable news outlets that clearly attribute their information to either statements made by governmental agencies, or health professionals engaged in researching the virus.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Check out&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2020-01-29/coronavirus-misinformation-is-incubating-all-over-social-media\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">this Bloomberg story</a>&nbsp;that busts some myths and highlights false information about coronavirus making the rounds online.</p>', '<div>विश्व स्वास्थ्य संगठन ने गुरुवार को निमोनिया जैसी बीमारी से 200 से अधिक लोगों की मौत के बाद वुहान कोरोनवायरस के प्रकोप को वैश्विक आपातकाल घोषित कर दिया।</div><div><br></div><div>चीन के शहरों को बंद कर दिया गया है, एयरलाइंस ने देश के बाहर और बाहर जाने वाली उड़ानों को रद्द कर दिया है, और विश्व स्तर पर हवाई अड्डों ने किसी भी संक्रमण को जल्दी से पकड़ने के लिए थर्मल स्कैनर लागू करना शुरू कर दिया है।</div><div><br></div><div>अब तक, 2000 के दशक की शुरुआत में SARS महामारी को पार कर, एक कोरोनवायरस संक्रमण के लगभग 9,800 मामले सामने आए हैं। ब्लूमबर्ग की रिपोर्ट के अनुसार नया वायरस - जिसका नाम 2019-nCoV है, में मृत्यु दर 2.2 प्रतिशत है, और यह 20 जनवरी के राष्ट्रीय आंकड़ों के आधार पर आँकड़ों से है। हालाँकि, रिपोर्ट में कहा गया है कि अभी भी यह बताना जल्दबाजी होगी कि प्रकोप कितना घातक होगा, और नोट करता है कि 20 जनवरी के बाद से इससे अधिक लोगों की मौत हो गई है, जबकि अस्पताल छोड़ दिया है।</div><div><br></div><div>कोरोनावायरस के साथ अभी भी दुनिया भर में फैल रहा है, हमने सर्वोत्तम प्रथाओं कंपनियों पर एक आसान मार्गदर्शिका रखी है और मानव संसाधन विभागों को अपने कर्मचारियों को स्वस्थ और संक्रमण मुक्त रहने में मदद करनी चाहिए।</div><div><br></div><div>&nbsp;</div><div><br></div><div>प्रभावी संचार कुंजी है</div><div>मानव संसाधन विभागों को कोरोनोवायरस से संबंधित जानकारी को कर्मचारियों के लिए एक तैयार-से-संदर्भित निर्देशात्मक गाइड बनाने के लिए खींचना चाहिए, जो न केवल उन्हें वायरल संक्रमण के बारे में शिक्षित करता है, बल्कि इससे बचने के तरीके भी बताता है।</div><div><br></div><div>संचार रणनीति बहुस्तरीय होनी चाहिए और उपलब्ध संचार के सभी चैनलों का उपयोग करना चाहिए।</div><div><br></div><div>\"आप बुलेटिनों को देख रहे हैं, दीवार पर पोस्टर चिपका रहे हैं, ईमेल, चैट समूह, टाउन हॉल, इन्फोग्राफिक्स, वीडियो, और मीडिया का कोई भी तरीका जो सभी कर्मचारियों को प्रभावी ढंग से संदेश देने में मदद कर सकता है,\" एड्रियन टैन, एक अनुभवी एचआर कहते हैं प्रैक्टिशनर और पीपुल्सस्ट्रोंग के APAC नेता, भारत स्थित एंटरप्राइज एचआर सास मंच।</div><div><br></div><div>एकत्रित की गई जानकारी केवल विश्वसनीय और सत्यापित स्रोतों से होनी चाहिए, जैसे कि पृष्ठ, सीडीसी वेबसाइट, और प्रतिष्ठित समाचार आउटलेट जो स्पष्ट रूप से सरकारी सूचना, या वायरस पर शोध करने में लगे स्वास्थ्य पेशेवरों द्वारा दिए गए बयानों को अपनी जानकारी देते हैं।</div><div><br></div><div>ब्लूमबर्ग की इस कहानी की जाँच करें जो कुछ मिथकों का भंडाफोड़ करती है और कोरोनोवायरस के बारे में झूठी जानकारी को ऑनलाइन प्रकाशित करती है।</div>', NULL, NULL),
(3, 3, 'FCC Proposes $12.9M Fine', 'FCC ने $ 12.9M का प्रस्ताव दिया', 'public/media/post/1657453462139350.jpeg', '<p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The FCC is getting serious with its responses to&nbsp;<a href=\"https://www.pcmag.com/how-to/how-to-block-robocalls-and-spam-calls\" rel=\"nofollow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">robocallers</a>, with the latest case being that of an individual rather than a company who made over 6,000 robocalls across six states.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">As&nbsp;<a href=\"https://www.engadget.com/2020/01/30/fcc-fines-one-man-almost-13-million/\" rel=\"nofollow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">Engadget reports</a>, the man in question used an online calling platform to manipulate caller ID so as to make his calls look like they came from a local number. He then set about targeting specific communities in each state, with the FCC stating his main intention was to \"cause harm.\"</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The FCC discovered he made 1,496 calls in California regarding the state\'s US Senate primary. In Florida he made 766 calls making \"racist attacks about a Florida gubernatorial candidate.\" Another 583 calls were made in Georgia attacking a similar candidate and callers were told it was on behalf of Oprah Winfrey. 750 calls were made in Idaho attacking a newspaper and publisher after they exposed another robocaller. Then in Virginia 2,023 calls were made during the James Fields trial with a suggestion the man was attempting to influence the jury.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The worst robocall spree was made in Iowa, though. The man made 827 calls following the murder of a local college student. An illegal alien from Mexico was arrested and the spoof calls talked about a \"brown horde,\" \"savages,\" and to \"Kill them all.\" The family members of the murdered student also received the calls.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">In a&nbsp;<a href=\"https://docs.fcc.gov/public/attachments/DOC-362195A1.pdf\" rel=\"nofollow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">statement</a>&nbsp;detailing the extent of the robocalls, the FCC said, \"The caller was apparently motivated by a belief that these actions would result in media notoriety and accordingly would enable him to increase publicity for his website and personal brand. In the process, he apparently broke the law. The FCC, Federal Trade Commission, and local law enforcement all received numerous complaints from consumers about apparently spoofed robocalls from this caller.\"</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Clearly his plan backfired and now he\'s in for a big financial shock. The FCC is proposing a fine of $12,910,000 against the individual, which it seems unlikely he\'ll be able to pay. Before then, the FCC is offering the man an opportunity to respond by submitting evidence and legal arguments.</p>', '<div>FCC लूटने वालों के प्रति अपनी प्रतिक्रिया के साथ गंभीर हो रही है, नवीनतम मामला एक कंपनी के बजाय एक व्यक्ति का है जो छह राज्यों में 6,000 से अधिक डकैती करता है।</div><div><br></div><div>Engadget की रिपोर्ट के अनुसार, विचाराधीन व्यक्ति ने कॉलर आईडी में हेरफेर करने के लिए एक ऑनलाइन कॉलिंग प्लेटफ़ॉर्म का उपयोग किया ताकि उसकी कॉल की तरह लग सके जैसे वे एक स्थानीय नंबर से आए थे। उन्होंने तब प्रत्येक राज्य में विशिष्ट समुदायों को लक्षित करने के बारे में सेट किया, जिसमें एफसीसी ने कहा कि उनका मुख्य उद्देश्य \"नुकसान पहुंचाना\" था।</div><div><br></div><div>एफसीसी ने पाया कि उसने राज्य के अमेरिकी सीनेट प्राथमिक के बारे में कैलिफोर्निया में 1,496 कॉल किए। फ्लोरिडा में उन्होंने 766 कॉल किए, जिसमें \"फ्लोरिडा के एक उम्मीदवार के बारे में नस्लवादी हमले किए गए।\" जॉर्जिया में एक और उम्मीदवार पर हमला करते हुए 583 कॉल किए गए और कॉल करने वालों को बताया गया कि यह ओपरा विन्फ्रे की ओर से है। ईदाहो में 750 कॉल किए गए थे कि एक अखबार और प्रकाशक पर हमला करने के बाद उन्होंने एक और डकैत का पर्दाफाश किया। तब वर्जीनिया में जेम्स फील्ड्स मुकदमे के दौरान 2,023 कॉल किए गए थे एक सुझाव के साथ आदमी जूरी को प्रभावित करने का प्रयास कर रहा था।</div><div><br></div><div>आयोवा में सबसे खराब रोबोकल स्प्री बनाया गया था, हालांकि। एक स्थानीय कॉलेज के छात्र की हत्या के बाद आदमी ने 827 कॉल किए। मेक्सिको से एक अवैध विदेशी को गिरफ्तार किया गया था और स्पूफ कॉल ने \"भूरे रंग की भीड़,\" \"बर्बरता,\" और \"उन सभी को मार डालो\" के बारे में बात की थी। हत्यारोपी छात्र के परिजनों के पास भी फोन आए।</div><div><br></div><div>डकैतों की सीमा का विस्तार करने वाले एक बयान में, एफसीसी ने कहा, \"कॉल करने वाले को स्पष्ट रूप से इस विश्वास से प्रेरित किया गया था कि इन कार्यों के परिणामस्वरूप मीडिया में बदनामी होगी और तदनुसार वह अपनी वेबसाइट और व्यक्तिगत ब्रांड के लिए प्रचार बढ़ाने में सक्षम होगा। इस प्रक्रिया में। उन्होंने स्पष्ट रूप से कानून को तोड़ दिया। एफसीसी, फेडरल ट्रेड कमीशन और स्थानीय कानून प्रवर्तन सभी को उपभोक्ताओं से इस कॉलर से लूटे गए लूट के सामान के बारे में कई शिकायतें मिलीं। \"</div><div><br></div><div>स्पष्ट रूप से उसकी योजना बैकफायर हो गई और अब वह एक बड़े वित्तीय सदमे में है। एफसीसी व्यक्ति के खिलाफ $ 12,910,000 का जुर्माना लगा रहा है, जिसे लगता है कि वह भुगतान करने में सक्षम नहीं होगा। इससे पहले, एफसीसी आदमी को सबूत और कानूनी तर्क प्रस्तुत करके जवाब देने का अवसर प्रदान कर रहा है।</div>', NULL, NULL),
(4, 3, 'How Startup Challenges', 'स्टार्टअप कैसे चुनौती देता है', 'public/media/post/1657458959782965.jpeg', '<p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Those familiar to the ins and outs of startup communities in Asia would know: there’s at least one startup challenge happening in the region every quarter, as governments and organizations seek new innovative ventures that tackle some of the world’s most pressing problems.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Perhaps one industry that has benefitted the most from this phenomenon in recent years is the fintech scene. With half of the region, or at least 1 billion people still unbanked, truly, there’s a vast opportunity for fintech players to close the gap between the financially marginalized, and affordable financial products.</p>', '<div>एशिया में स्टार्टअप समुदायों के ins और outs से परिचित लोगों को पता होगा: इस क्षेत्र में हर तिमाही में कम से कम एक स्टार्टअप चुनौती होती है, क्योंकि सरकार और संगठन दुनिया के कुछ सबसे अधिक दबाव वाली समस्याओं से निपटने के लिए नए अभिनव उपक्रम चाहते हैं।</div><div><br></div><div>शायद हाल के वर्षों में इस घटना से सबसे अधिक लाभ उठाने वाला एक उद्योग फिनटेक दृश्य है। इस क्षेत्र के आधे हिस्से में, या कम से कम 1 बिलियन लोग अभी भी असंबद्ध हैं, सही मायने में, फिनटेक खिलाड़ियों के लिए आर्थिक रूप से हाशिए और सस्ती वित्तीय उत्पादों के बीच अंतर को बंद करने का एक बड़ा अवसर है।</div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_in`, `created_at`, `updated_at`) VALUES
(2, 'local11', 'स्थानीय11', NULL, NULL),
(3, 'education', 'शिक्षा', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(30) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(16, 15, 27, NULL, 'Nf7987YL02CJ Analog', '23232', '12', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'black', 's', '590', '500', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'public/media/product/1656191902979308.jpeg', 'public/media/product/1656191903214064.jpeg', 'public/media/product/1656191903320251.jpeg', 1, NULL, NULL),
(27, 13, 23, 14, 'Studio X Brightening Facewash for Men 100ml', 'studio-x-01', '20', '<div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.60f9393bsQ2va4\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Get Ready to say goodbye to dirt once and for all and confidently show your style to the world. Introducing Studio X Brightening Facewash for Men made especially for men.</p><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.60f9393bsQ2va4\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\"><br></p></div>', 'no color', 'no size', '230', '172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696213014062018.jpg', 'public/media/product/1696213014190783.png', 'public/media/product/1696213014290819.jpg', 1, NULL, NULL),
(28, 13, 23, 14, 'Aci Neem Orginal Pure Flying Face Wash 100ml', 'Facewash001', '20', '<p style=\"box-sizing: border-box; border-collapse: collapse; line-height: 1.4rem; font-size: 0.9rem; margin: 0.5rem 0px 0.6rem; font-family: Arimo, sans-serif;\">Neem Laboratories Private Limited, a subsidiary of ACI Limited is on a mission to ensure a healthy skin for the people of Bangladesh by producing nature inspired skin care solutions. We are offering products like a range of Soap with multiple variants, Hand Wash, Face Wash, Face Pack etc. under the Brand Name Neem Original™ and soon we are going to provide a complete skin care range for the consumers.</p><div class=\"sub-header margin-xl\" style=\"box-sizing: border-box; border-collapse: collapse; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 1.25rem; line-height: 1.1; font-family: Arimo, &quot;Open Sans&quot;, sans-serif, serif; margin-top: 1.4rem; margin-bottom: 1rem;\">Operations</div><p style=\"box-sizing: border-box; border-collapse: collapse; line-height: 1.4rem; font-size: 0.9rem; margin: 0.5rem 0px 0.6rem; font-family: Arimo, sans-serif;\">Neem Original<span style=\"box-sizing: border-box; border-collapse: collapse; position: relative; font-size: 11.88px; line-height: 0; vertical-align: baseline; top: -0.5em;\">™</span>&nbsp;aspires to be the leader in Natural Skin Care Category within 05 years. To do that, we have ensure</p><ul class=\"simple-list green-bullet\" style=\"box-sizing: border-box; border-collapse: collapse; margin-left: 0.625rem; list-style: none; counter-reset: li 0; padding-left: 0px; color: rgb(38, 38, 38); font-family: Arimo, sans-serif; font-size: 15.4px;\"><li style=\"box-sizing: border-box; border-collapse: collapse; line-height: 1.25rem; position: relative; padding: 4px 12px; list-style: none; color: inherit;\">Top Quality Products</li><li style=\"box-sizing: border-box; border-collapse: collapse; line-height: 1.25rem; position: relative; padding: 4px 12px; list-style: none; color: inherit;\">State-of-Art packaging design</li><li style=\"box-sizing: border-box; border-collapse: collapse; line-height: 1.25rem; position: relative; padding: 4px 12px; list-style: none; color: inherit;\">A full range of products in NPD pipeline</li><li style=\"box-sizing: border-box; border-collapse: collapse; line-height: 1.25rem; position: relative; padding: 4px 12px; list-style: none; color: inherit;\">Product availability in Alternate Sales Channel apart from General Trade</li><li style=\"box-sizing: border-box; border-collapse: collapse; line-height: 1.25rem; position: relative; padding: 4px 12px; list-style: none; color: inherit;\">Proper Brand Communications to ensure TOM awareness among Target Group</li></ul>', 'NoColor', 'NoSize', '210', '185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696407745225775.jpeg', 'public/media/product/1696407745326827.jpg', 'public/media/product/1696407745385263.jpg', 1, NULL, NULL),
(29, 14, 34, 14, 'আপেল ফাস্ট ক্লাস', 'F001', '50', 'গুণগত মান সম্পন্ন আপেল ।', 'No', 'No', '180', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696446195411453.png', 'public/media/product/1696446195621112.png', 'public/media/product/1696446195761167.png', 1, NULL, NULL),
(30, 14, 34, 14, 'আপেল মিডিয়াম ক্লাস', 'F002', '45', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\"><o:p></o:p></span></p>', 'no', 'no', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696446681046726.jpg', 'public/media/product/1696446681098032.jpg', 'public/media/product/1696446681130454.jpg', 1, NULL, NULL),
(31, 14, 34, 14, 'আপেল একটু কম দাম', 'F003', '54', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'no', 'no', '130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696446836116970.jpg', 'public/media/product/1696446836181121.jpg', 'public/media/product/1696446836222333.jpg', 1, NULL, NULL),
(32, 14, 34, 14, 'মাল্টা', 'F004', '45', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'NO', 'No', '140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696447015299488.jpg', 'public/media/product/1696447015351441.jpg', 'public/media/product/1696447015377009.jpg', 1, NULL, NULL),
(33, 14, 34, 14, 'দেশি কমলা', 'F005', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'no', 'no', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696447213775571.jpg', 'public/media/product/1696447213979007.jpg', 'public/media/product/1696447214018312.jpg', 1, NULL, NULL),
(34, 14, 34, 14, 'নেট জালের কমলা ( প্যাকেট )', 'F006', '45', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'No', 'No', '120', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696447915161465.jpg', 'public/media/product/1696447915193276.jpg', 'public/media/product/1696447915207333.jpg', 1, NULL, NULL),
(35, 14, 34, 14, 'আঙ্গুর ( লাল ) - ৫০০ গ্রাম', 'F007', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'no', 'no', '260', '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696448522997758.jpg', 'public/media/product/1696448524091638.jpg', 'public/media/product/1696448525047151.jpg', 1, NULL, NULL),
(36, 14, 34, 14, 'আঙ্গুর ( সবুজ ) - ৫০০ গ্রাম', 'F008', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'no', 'no', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696448725653202.jpg', 'public/media/product/1696448725950681.jpg', 'public/media/product/1696448729918354.jpg', 1, NULL, NULL),
(37, 14, 34, 14, 'আঙ্গুর', 'F009', '65', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'no', 'no', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696448910258580.jpg', 'public/media/product/1696448910360961.jpg', 'public/media/product/1696448910400976.jpg', 1, NULL, NULL),
(38, 14, 34, 14, 'নাশপতি', 'F010', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'No', 'No', '280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696449269267368.jpg', 'public/media/product/1696449269456787.jpg', 'public/media/product/1696449269553440.jpg', 1, NULL, NULL),
(39, 14, 34, 14, 'ডালিম', 'F011', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল ।&nbsp;<o:p></o:p></span></p>', 'no', 'no', '360', '350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696449465554375.jpg', 'public/media/product/1696449465738464.jpg', 'public/media/product/1696449465876876.jpg', 1, NULL, NULL),
(40, 14, 34, 14, 'ডাব (বড়)', 'F012', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ডাব<o:p></o:p></span></p>', 'Green', 'বড়', '80', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696449945063135.webp', 'public/media/product/1696449945210861.webp', 'public/media/product/1696449945315630.webp', 1, NULL, NULL),
(41, 14, 34, 14, 'ডাব ( মাঝারি )', 'F013', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল<o:p></o:p></span></p>', 'green', 'Medium', '60', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696450053315580.jpg', 'public/media/product/1696450053417084.jpg', 'public/media/product/1696450053457776.jpg', 1, NULL, NULL),
(42, 14, 34, 14, 'ডাব ( ছোট )', 'F014', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল<o:p></o:p></span></p>', 'green', 'small', '45', '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696450185438148.jpg', 'public/media/product/1696450185563663.jpg', 'public/media/product/1696450185615889.jpg', 1, NULL, NULL),
(43, 14, 34, 14, 'তরমুজ', 'F015', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন\r\nসতেজ ফল<o:p></o:p></span></p>', 'no', 'no', '40', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696450393175803.jpg', 'public/media/product/1696450393243989.jpg', 'public/media/product/1696450393277478.jpg', 1, NULL, NULL),
(44, 14, 35, 14, 'মরিয়াম খেজুর - ফার্স্ট ক্লাস', 'K001', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন খেজুর<o:p></o:p></span></p>', 'no', 'no', '1050', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696450984935253.jpg', 'public/media/product/1696450985058712.jpg', 'public/media/product/1696450985115181.jpg', 1, NULL, NULL),
(45, 14, 35, 14, 'কালমিন মরিয়াম খেজুর', 'K002', '1', '<p class=\"MsoNormal\"><span style=\"font-family:&quot;Nirmala UI&quot;,sans-serif\">গুনগত মান সম্পন্ন&nbsp;</span><font face=\"Nirmala UI, sans-serif\">কালমিন মরিয়াম খেজুর</font></p>', 'no', 'no', '550', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696451229099359.jpeg', 'public/media/product/1696451229258596.jpeg', 'public/media/product/1696451229393679.jpeg', 1, NULL, NULL),
(46, 14, 35, 14, 'সাধারন মরিয়াম  খেজুর', 'F003', '34', '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Nirmala UI&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">গুনগত মান সম্পন্ন&nbsp;&nbsp;</span>সাধারন মরিয়াম&nbsp; খেজুর', 'no', 'no', '725', '700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696451441902616.jpg', 'public/media/product/1696451441989080.jpg', 'public/media/product/1696451442020491.jpg', 1, NULL, NULL),
(47, 14, 35, NULL, 'আজুয়া খেজুর ফাস্ট ক্লাস (বড়)', 'K004', '1 KG', '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Nirmala UI&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">গুনগত মান সম্পন্ন&nbsp;&nbsp;আজুয়া খেজুর ফাস্ট ক্লাস (বড়)</span>', 'no', 'no', '1100', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696451619521013.jpg', 'public/media/product/1696451619637659.jpg', 'public/media/product/1696451619718756.jpg', 1, NULL, NULL),
(48, 14, 35, 14, 'আজওয়াহ্ খেজুর মিডিয়াম ক্লাস (মাঝারি) - ৫০০ গ্রাম', 'K005', '1', '<span style=\"font-family: &quot;Nirmala UI&quot;, sans-serif; font-size: 14.6667px;\">গুনগত মান সম্পন্ন&nbsp;&nbsp;</span><font face=\"Nirmala UI, sans-serif\"><span style=\"font-size: 14.6667px;\">আজওয়াহ্&nbsp;খেজুর মিডিয়াম ক্লাস (মাঝারি)</span></font>', 'no', 'no', '440', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696451981941709.jpg', 'public/media/product/1696451982005852.jpg', 'public/media/product/1696451982033017.jpg', 1, NULL, NULL),
(49, 14, 35, 14, 'আজওয়াহ্ খেজুর (ছোট) - ৫০০ গ্রাম', 'K006', '50', '<span style=\"font-family: &quot;Nirmala UI&quot;, sans-serif; font-size: 14.6667px;\">গুনগত মান সম্পন্ন&nbsp;&nbsp;</span><font face=\"Nirmala UI, sans-serif\"><span style=\"font-size: 14.6667px;\">আজওয়াহ্ খেজুর (ছোট)&nbsp;</span></font>', 'no', 'no', '320', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696452300751951.jpg', 'public/media/product/1696452300776966.jpg', 'public/media/product/1696452300818900.jpg', 1, NULL, NULL),
(50, 14, 35, 14, 'মদিনা খেজুর (প্যাকেট) - ৫০০ গ্রাম', 'K007', '34', 'মদিনা খেজুর - ৫০০ গ্রাম', 'NO', 'No', '120', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696452591373834.jpg', 'public/media/product/1696452591436177.jpg', 'public/media/product/1696452591467984.jpg', 1, NULL, NULL),
(51, 14, 35, 14, 'বড়ই খেজুর ( অরজিনাল )  -  1 KG', 'K008', '43', '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Nirmala UI&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">গুনগত মান সম্পন্ন&nbsp;বড়ই খেজুর ( অরজিনাল )&nbsp; -&nbsp; 1 KG</span>', 'No', 'no', '250', '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696452847341288.jpg', 'public/media/product/1696452847441635.jpg', 'public/media/product/1696452847492804.jpg', 1, NULL, NULL),
(52, 14, 35, 14, 'বড়ই খেজুর ( প্যাকেট ) -  ৫০০ গ্রাম', 'K010', '34', 'গুনগত মান সম্পন্ন বড়ই খেজুর ( প্যাকেট ) - ৫০০ গ্রাম', 'no', 'no', '180', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696453181580771.jpg', 'public/media/product/1696453181689939.jpg', 'public/media/product/1696453181760529.jpg', 1, NULL, NULL),
(53, 14, 35, 14, 'দাবাস খেজুর (প্যাকেট) - 1 KG', 'K011', '50', '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Nirmala UI&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">গুনগত মান সম্পন্ন&nbsp;&nbsp;দাবাস খেজুর (প্যাকেট)</span>', 'no', 'no', '280', '260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696453435769167.jpg', 'public/media/product/1696453435875706.jpg', 'public/media/product/1696453435923722.jpg', 1, NULL, NULL),
(54, 14, 35, 14, 'দাবাস খেজুর (খোলা) - 1 kg', 'K013', '10', '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Nirmala UI&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">গুনগত মান সম্পন্ন&nbsp;&nbsp;</span>দাবাস খেজুর&nbsp;', 'no', 'no', '230', '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696453705375788.jpg', 'public/media/product/1696453705404974.jpg', 'public/media/product/1696453705423060.jpg', 1, NULL, NULL),
(55, 14, 35, 14, 'সেীদি খেজুর - ১ কেজি', 'K013', '1', '<span style=\"font-size: 11pt; line-height: 15.6933px; font-family: &quot;Nirmala UI&quot;, sans-serif;\">গুনগত মান সম্পন্ন&nbsp;&nbsp;</span>সেীদি খেজুর - ১ কেজি', 'no', 'no', '450', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696453855636408.jpg', 'public/media/product/1696453855663346.jpg', 'public/media/product/1696453855677684.jpg', 1, NULL, NULL),
(56, 14, 35, 14, 'খেজুর ( প্যাকেট ) - ২৫০  গ্রাম', 'K014', '1', '<span style=\"font-size: 11pt; line-height: 15.6933px; font-family: &quot;Nirmala UI&quot;, sans-serif;\">গুনগত মান সম্পন্ন&nbsp;&nbsp;</span>খেজুর', 'No', 'no', '80', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696454021076297.jpg', 'public/media/product/1696454021242074.jpg', 'public/media/product/1696454021398451.jpg', 1, NULL, NULL),
(57, 14, 35, 14, 'সাদা খুরমা - ১ কেজি', 'K015', '50', '<span style=\"font-size:11.0pt;line-height:107%;\r\nfont-family:&quot;Nirmala UI&quot;,sans-serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">গুনগত মান সম্পন্ন&nbsp;সাদা খুরমা &nbsp;</span>- ১ কেজি', 'no', 'no', '250', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696455759311523.jpg', 'public/media/product/1696455759362915.jpg', 'public/media/product/1696455759398215.jpg', 1, NULL, NULL),
(58, 14, 35, 14, 'লাল খুরমা - ১ কেজি', 'K016', '50', 'লাল খুরমা - ১ কেজি', 'no', 'no', '230', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696455872309804.jpg', 'public/media/product/1696455872384529.jpg', 'public/media/product/1696455872418986.jpg', 1, NULL, NULL),
(59, 14, 34, 14, 'চেরি  ফল ( প্রতি প্যাকেট )', 'F00C1', '66', 'গুনগত মানের চেরি ফল ।', 'No', 'No', '22', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696479652273750.jpg', 'public/media/product/1696479652341262.jpg', 'public/media/product/1696479652374407.jpg', 1, NULL, NULL),
(60, 14, 34, 13, 'সবুজ আপেল - ১ কেজি', 'F00A1', '2000', 'সতেজ সবুজ আপেল । ১০০% গুণগত মান সম্পন্ন ।', 'NO', 'No', '220', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696479965778644.jpg', 'public/media/product/1696479965920251.jpg', 'public/media/product/1696479966058049.jpg', 1, NULL, NULL),
(61, 14, 34, 14, 'ফ্রেস পেয়ারা - ১ কেজি', 'F0G1', '76', 'খাটি দেশি পেয়ারা ।', 'NO', 'No', '75', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696484337847514.jpg', 'public/media/product/1696484338034459.jpg', 'public/media/product/1696484338166163.jpg', 1, NULL, NULL),
(62, 14, 34, 14, 'চায়না কমলা - ১ কেজি', 'F0O1', '65', 'অরজিনাল চায়না কমলা ।', 'No', 'No', '250', '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696484584460534.jpg', 'public/media/product/1696484584619446.jpg', 'public/media/product/1696484584698085.jpg', 1, NULL, NULL),
(63, 14, 34, 14, 'রয়েল গালা আপেল - ১ কেজি', 'F0A2', '88', 'অরজিনাল রয়েল গালা আপেল ।', 'NO', 'No', '200', '185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696484742505091.jpg', 'public/media/product/1696484742547197.jpg', 'public/media/product/1696484742572459.jpg', 1, NULL, NULL),
(64, 14, 34, 14, 'ড্রগন ফল - ১ কেজি', 'F0D1', '68', 'সতেজ ড্রাগন ফল ।&nbsp;', 'No', 'No', '550', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696484960195841.jpg', 'public/media/product/1696484960291037.jpg', 'public/media/product/1696484960401671.jpg', 1, NULL, NULL),
(65, 14, 34, 14, 'কাঠ বাদাম - ১ কেজি', 'F0K1', '65', 'অরজিনাল কাঠ বাদাম।', 'No', 'No', '880', '800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696485599233872.jpg', 'public/media/product/1696485599346512.jpg', 'public/media/product/1696485599497184.jpg', 1, NULL, NULL),
(66, 14, 34, 14, 'কিসমিস - ( ১০০ গ্রাম )', 'F0K1', '85', 'গুণগত মান সম্পন্ন কিসমিস ।', 'NO', 'No', '110', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696485935806850.png', 'public/media/product/1696485936078079.jpg', 'public/media/product/1696485936175124.jpg', 1, NULL, NULL),
(67, 16, 40, 14, 'চকলেট কেক - ১ পাউন্ড', 'B00C1', '100', 'চকলেট কেক - ১ পাউন্ড', 'NO', 'NO', '200', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696487540176095.jpg', 'public/media/product/1696487540284114.jpg', 'public/media/product/1696487540339287.jpg', 1, NULL, NULL),
(68, 16, 40, 14, 'ক্রীম কেক - ১ পাউন্ড', 'B00C2', '55', 'ক্রীম কেক - ১ পাউন্ড', 'NO', 'No', '190', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696487683488537.jpg', 'public/media/product/1696487683680680.jpg', 'public/media/product/1696487683765810.jpg', 1, NULL, NULL),
(69, 16, 40, 14, 'ভ্যানিলা  - ১ পাউন্ড', 'B00C4', '85', 'ভ্যানিলা - ১ পাউন্ড', 'NO', 'NO', '150', '135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696488084739121.jpg', 'public/media/product/1696488084857414.jpg', 'public/media/product/1696488084978288.jpg', 1, NULL, NULL),
(70, 22, 66, 20, 'Dettol Hand Wash Re-energize Liquid Soap  Refill (170ml)', 'SN01', '100', '<span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">New Dettol Re-energize liquid Handwash protects your hands from germs and gives 10 times better protection. This 170ml of Re-energize formulation of Dettol reinvigorates you with the smell of zesty mandarin- accompanied by a pH balanced formula and Dettol\'s trusted germ protection that keep you healthy and make your skin feel fresh. Recommended by Doctors of Bangladesh Private Medical Practitioners Association (BPMPA).</span>', 'Orange', '170ml', '65', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696488185612075.jpg', 'public/media/product/1696488185778252.webp', 'public/media/product/1696488186087706.jpg', 1, NULL, NULL),
(71, 16, 40, 14, 'হোয়াইট ফরেস্ট কেক - ১ পাউন্ড', 'B00C5', '55', 'হোয়াইট ফরেস্ট কেক - ১ পাউন্ড', 'NO', 'NO', '700', '650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696488279572059.jpg', 'public/media/product/1696488279619599.jpg', 'public/media/product/1696488279681703.jpg', 1, NULL, NULL),
(72, 22, 66, 27, 'LIfebuoy Hand Wash Total Refill (170ml)', 'SN02', '100', '<div class=\"d9FyLd XcVN5d\" style=\"padding: 0px 0px 10px; color: rgb(32, 33, 36); font-size: 16px; font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\"><b>Lifebuoy Handwash Total</b>&nbsp;10&nbsp;<b>Refill</b>,&nbsp;<b>170ml</b></div><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sensitive skin demands a balance between protection and care. The formulation contains advanced germ protection ingredient, Activ Naturol Shield, and gives 99.9% germ protection in just 10 seconds.</span>', 'White', '170ml', '60', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696488520675919.jpg', 'public/media/product/1696488520748947.jpg', 'public/media/product/1696488520804381.jpg', 1, NULL, NULL),
(73, 16, 40, 14, 'ব্লাক ফরেস্ট কেক - ১ পাউন্ড', 'B00C7', '66', 'ব্লাক ফরেস্ট কেক - ১ পাউন্ড', 'NO', 'NO', '700', '650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696488591203164.jpg', 'public/media/product/1696488591225784.jpg', 'public/media/product/1696488591239228.jpg', 1, NULL, NULL),
(74, 22, 66, 29, 'ACI Savlon Ocean Blue Antiseptic Hand Wash Refill (200ml)', 'SN03', '100', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">savlon ocean blue is sparkly fresh, delivering a clean and fresh feeling as invigorating as a deep in the ocean, leaving your skin feeling smooth, soft and refreshed, thus ensuring a complete family protection against germ in a charming way.</span>', 'White', '200ml', '55', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696488867638876.jpg', 'public/media/product/1696488867766135.jpg', 'public/media/product/1696488867826956.jpg', 1, NULL, NULL),
(75, 16, 40, 14, 'বাটার কেক - ১ পাউন্ড', 'B00C8', '75', 'বাটার কেক - ১ পাউন্ড', 'NO', 'NO', '500', '450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696488937054814.jpg', 'public/media/product/1696488937073195.jpg', 'public/media/product/1696488937084168.jpg', 1, NULL, NULL),
(76, 13, 111, NULL, 'Godrej Protekt (Green) Hand Wash (170ml)', 'SN04', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Deliveries take up to 3-4 days after you place your order. A drop of naturally derived&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Godrej Protekt</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;Masterchef\'s&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">handwash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;can set it right. No smell, no grease, no germs, just squeaky&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">clean hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">.</span>', 'Green', '170ml', '60', '50', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696489155416690.jpg', 'public/media/product/1696489155459337.jpg', 'public/media/product/1696489155530920.jpg', 1, NULL, NULL),
(77, 16, 40, 14, 'ঝাল টোস্ট - ১ কেজি', 'B00B1', '100', 'ঝাল টোস্ট - ১ কেজি', 'NO', 'NO', '155', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696489309088332.jpg', 'public/media/product/1696489309297097.jpg', 'public/media/product/1696489309423105.jpg', 1, NULL, NULL),
(78, 22, 66, 27, 'LIfebuoy Hand Wash Lemon Fresh Refill (170ml)', 'SN05', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sensitive skin demands a balance between protection and care. The formulation contains advanced germ protection ingredient. Activ Naturol Shield, and gives 99.9% germ protection in just 10 seconds.</span>', 'Yellow', '170ml', '70', '60', NULL, NULL, 1, 1, NULL, 1, NULL, NULL, 'public/media/product/1696489334884989.jpg', 'public/media/product/1696489334983314.jpg', 'public/media/product/1696489334996382.jpg', 1, NULL, NULL),
(79, 22, 66, 27, 'LIfebuoy Hand Wash Care Refill (1ltr)', 'SN06', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sensitive skin demands a balance between protection and care. The formulation contains advanced germ protection ingredient. Activ Naturol Shield, and gives 99.9% germ protection in just 10 seconds.</span>', 'White', '1 Ltr', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696489532877120.jpg', 'public/media/product/1696489533128161.jpg', 'public/media/product/1696489533385657.jpg', 1, NULL, NULL),
(80, 22, 66, 27, 'LIfebuoy Hand Wash Care Refill (170ml)', 'SN06', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sensitive skin demands a balance between protection and care. The formulation contains advanced germ protection ingredient. Activ Naturol Shield, and gives 99.9% germ protection in just 10 seconds.</span>', 'Blue', '170ml', '60', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696489666060153.jpg', 'public/media/product/1696489666125758.jpg', 'public/media/product/1696489666279303.jpg', 1, NULL, NULL),
(81, 16, 99, 14, 'ফিতা প্লেন টোস্ট - ১ কেজি', 'B00T1', '65', 'ফিতা প্লেন টোস্ট - ১ কেজি', 'No', 'NO', '150', '140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696489716768900.jpeg', 'public/media/product/1696489716871661.jpeg', 'public/media/product/1696489716931433.jpeg', 1, NULL, NULL),
(82, 22, 66, 25, 'Mediker Safelife Hand wash Refill (170ml)', 'SN08', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Mediker SafeLife Hand Wash 170ml Refill</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Mediker Safe Life Hand Wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is alcohol based&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, contains 70% v/v isopropyl alcohol. Kills 99.9% of germs without any water. Protect your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;against germs anywhere anytime with&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Mediker Safe Life Hand Wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">.</span>', 'White', '170ml', '55', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696489898002532.jpeg', 'public/media/product/1696489898135916.jpeg', 'public/media/product/1696489898303254.jpeg', 1, NULL, NULL),
(83, 22, 66, 20, 'Dettol Hand Wash Cool  Refill (170ml)', 'SN09', '100', '<div class=\"d9FyLd XcVN5d\" style=\"padding: 0px 0px 10px; color: rgb(32, 33, 36); font-size: 16px; font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\"><b>Dettol Handwash Cool Refill</b>,&nbsp;<b>170ml</b></div><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">This&nbsp;<b>170ml</b>&nbsp;of&nbsp;<b>Cool</b>&nbsp;formulation of&nbsp;<b>Dettol</b>&nbsp;comes with a refreshing dose of Crisp menthol- accompanied by a pH balanced formula, and&nbsp;<b>Dettol\'s</b>&nbsp;trusted germ protection that keeps you healthy and makes your skin feel fresh</span>', 'Blue', '170ml', '115', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696490141704228.jpg', 'public/media/product/1696490141764541.jpg', 'public/media/product/1696490141831095.jpg', 1, NULL, NULL),
(84, 16, 40, 14, 'ডায়াবেটিকস্ টোস্ট - ১ কেজি', 'B00B4', '86', 'ডায়াবেটিকস্&nbsp; টোস্ট - ১ কেজি', 'NO', 'NO', '65', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696490163907543.jpg', 'public/media/product/1696490163970558.jpg', 'public/media/product/1696490164005814.jpg', 1, NULL, NULL),
(87, 22, 66, 27, 'LIfebuoy Hand Wash Cool Fresh Refill (170ml)', 'SN10', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Keep the germs away with&nbsp;</span><span class=\"hcV4Re nkGKTb\" style=\"font-weight: 800; color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Lifebuoy Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;that is effective against virus &amp;bacteria. Get rid of common germs causing infection and illness with&nbsp;</span><span class=\"hcV4Re nkGKTb\" style=\"font-weight: 800; color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Lifebuoy hand wash</span>', 'Blue', '170ml', '60', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696490307658658.jpg', 'public/media/product/1696490307882843.jpg', 'public/media/product/1696490308099011.jpg', 1, NULL, NULL),
(88, 16, 99, 14, 'কলা টোস্ট - ১ কেজি', 'B00T11', '75', 'কলা টোস্ট - ১ কেজি', 'NO', 'NO', '150', '140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696490344725073.jpg', 'public/media/product/1696490344766137.jpg', 'public/media/product/1696490344790884.jpg', 1, NULL, NULL),
(89, 22, 66, 20, 'Dettol Original Liquid Hand Wash Refill (170ml)', 'SN11', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol Original Liquid Hand wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;comes with the special PCMX active that is proven in ensuring everyday protection for you and your family. This&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">170ml refill</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;value pack of&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Original</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;formulation of&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol handwash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;protects you and your loved ones from 100 illness-causing germs, keeping you protected and healthy.</span>', 'White', '170ml', '60', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696490562535869.jpg', 'public/media/product/1696490562614476.jpg', 'public/media/product/1696490562681420.jpg', 1, NULL, NULL),
(90, 22, 66, 21, 'Dabur Sanitize Active Care  Hand Wash Refill (170ml)', 'SN12', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">DABUR SANITIZE Active Care Handwash Refill</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;-&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">170ml</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;(Buy Pack of 4 &amp; Get&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Handwash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Pump - 200ml Free). It kills 99% of germs actively. You can use it regularly inside your home, office, and in a public place. Buy it at the best price and save your family from germs.</span>', 'White', '170ml', '50', '45', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696490739603150.jpg', 'public/media/product/1696490739990792.jpg', 'public/media/product/1696490740442471.jpg', 1, NULL, NULL),
(91, 16, 99, 14, 'বোম্বাই হাফ টোস্ট - ১ কেজি', 'B00T2', '65', 'বোম্বাই হাফ টোস্ট - ১ কেজি', 'NO', 'NO', '150', '140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696490867564998.jpg', 'public/media/product/1696490867593150.jpg', 'public/media/product/1696490867611826.jpg', 1, NULL, NULL),
(92, 22, 66, 20, 'Dettol Hand Wash Skincare Liquid Soap Refill (170ml)', 'SN13', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">This&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">170ml refill</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;pack features the proven&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Skincare</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;formulation of&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dettol</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;having moisturizer and pH-balanced formula at its core that is best at making your skin feel healthy and soft. That\'s why mothers rely on&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dettol</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;protection.</span>', 'Pink,White', '170ml', '60', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696490905616728.jpeg', 'public/media/product/1696490905649148.jpeg', 'public/media/product/1696490905678373.jpeg', 1, NULL, NULL),
(93, 22, 66, 20, 'Dettol Hand Wash Coal Liquid Soap  Refill (170ml)', 'SN14', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">This&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">170ml refill</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;pack features the proven&nbsp;<b>Cool</b></span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;formulation of&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dettol</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;having moisturizer and pH-balanced formula at its core that is best at making your skin feel healthy and soft. That\'s why mothers rely on&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dettol</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;protection.</span>', 'Blue', '170ml', '65', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696491054239398.jpg', 'public/media/product/1696491054321956.jpg', 'public/media/product/1696491054364329.jpg', 1, NULL, NULL),
(94, 16, 99, 14, 'সাদা চানাচুর - ১ কেজি', 'B00C1', '55', 'সাদা চানাচুর - ১ কেজি', 'NO', 'NO', '220', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696491075489091.jpeg', 'public/media/product/1696491075554442.jpeg', 'public/media/product/1696491075603711.jpeg', 1, NULL, NULL),
(95, 22, 66, 27, 'LIfebuoy Hand Wash Total Pump (200ml)', 'SN15', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Lifebuoy Total</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;10&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;prevents the spread of germs, keeping the family safe from infection causing germs. ... It is specially designed to give you and your family superior germ protection. So now stay 1 step ahead of infections, and keep your hands&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">clean</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and healthy.</span>', 'White', '200ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696491251052788.jpg', 'public/media/product/1696491251153096.png', 'public/media/product/1696491251434965.png', 1, NULL, NULL),
(96, 16, 99, 14, 'বড় ঘি টোস্ট - ১ কেজি', 'B00T06', '85', 'বড় ঘি টোস্ট - ১ কেজি&nbsp;', 'NO', 'NO', '170', '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696491315062455.png', 'public/media/product/1696491315485098.png', 'public/media/product/1696491315951001.png', 1, NULL, NULL),
(97, 16, 99, 14, 'ছোট ঘি টোস্ট - ১ কেজি', 'B00T07', '85', 'ছোট ঘি টোস্ট - ১ কেজি&nbsp;', 'NO', 'NO', '165', '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696491648468344.png', 'public/media/product/1696491648684418.png', 'public/media/product/1696491648965847.png', 1, NULL, NULL),
(98, 16, 99, 14, 'তিন কোনা বাটার টোস্ট - ১ কেজি', 'B00T09', '75', 'তিন কোনা বাটার টোস্ট - ১ কেজি', 'NO', 'NO', '165', '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696491932822231.jpg', 'public/media/product/1696491932865546.jpg', 'public/media/product/1696491932880298.jpg', 1, NULL, NULL),
(99, 16, 37, 14, 'ফিতা বাটার টোস্ট - ১ কেজি', 'B00T10', '88', 'ফিতা বাটার টোস্ট - ১ কেজি', 'NO', 'NO', '165', '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696492062126837.jpg', 'public/media/product/1696492062157254.jpg', 'public/media/product/1696492062170901.jpg', 1, NULL, NULL),
(100, 16, 99, 14, 'হরলিক্স বিস্কুট - ১ কেজি', 'B00H1', '90', 'হরলিক্স বিস্কুট&nbsp; - ১ কেজি&nbsp;', 'NO', 'NO', '305', '300', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696492397061365.jpg', 'public/media/product/1696492397100172.jpg', 'public/media/product/1696492397112788.jpg', 1, NULL, NULL),
(101, 16, 99, 14, 'মিল্ক ভিটা বাচ্চার বিস্কুট - ১ কেজি', 'B00MV1', '100', 'মিল্ক ভিটা বাচ্চার বিস্কুট&nbsp;', 'NO', 'NO', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696492963279361.jpg', 'public/media/product/1696492963307273.jpg', 'public/media/product/1696492963337648.jpg', 1, NULL, NULL),
(102, 16, 40, 14, 'সুগার ফ্রি বাটার বিস্কুট - ১ কেজি', 'B00Bk1', '100', 'সুগার ফ্রি বাটার বিস্কুট&nbsp;', 'NO', 'NO', '360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696493140553094.jpg', 'public/media/product/1696493140596376.jpg', 'public/media/product/1696493140666119.jpg', 1, NULL, NULL),
(103, 16, 99, 14, 'সুগার ফ্রি বিস্কুট - ১ কেজি', 'B00S1', '100', 'সুগার ফ্রি বিস্কুট', 'NO', 'NO', '260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696493546055175.jpg', 'public/media/product/1696493546116404.jpg', 'public/media/product/1696493546152349.jpg', 1, NULL, NULL),
(104, 22, 66, 14, 'Divine Care Hand Sanitizer Spray (100)ml', 'SN16', '100', '<pre class=\"wp-block-code\" style=\"box-sizing: border-box; font-family: monospace, monospace; font-size: 12px; padding: 9.5px; margin-bottom: 10px; line-height: 1.42857; color: rgb(51, 51, 51); word-break: break-all; overflow-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 4px;\"><code style=\"box-sizing: border-box; font-family: monospace, monospace; white-space: pre-wrap;\">Description: 75% Ethanol Containing Spray Type Hand Sanitizer.\r\nFeature: Suitable for Cleaning &amp; Disinfecting your Hand to avoid Microorganisms Breed.</code></pre>', 'White', '100ml', '180', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696494977615908.jpg', 'public/media/product/1696494978305413.jpg', 'public/media/product/1696494979136308.jpg', 1, NULL, NULL),
(105, 22, 66, 16, 'Mr. Magic Hand Wash Refill Pack', 'SN17', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Magic Hand Wash Refill Pack</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. The first-ever powder to liquid&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, gentle on skin, but tough on germs with neem and aloe-vera, easy to make, in just 3 steps make 200 ml.</span>', 'White', '200 ml', '25', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696495252141680.jpg', 'public/media/product/1696495252179663.jpg', 'public/media/product/1696495252203556.jpg', 1, NULL, NULL),
(106, 22, 66, 29, 'ACI Savlon Aloe Vera Antiseptic Hand Wash Refill (200ml)', 'SN18', '100', 'ACI Savlon Aloe Vera Antiseptic Hand Wash Refill (200ml)', 'Green', '200ml', '55', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696495653829928.png', 'public/media/product/1696495654115085.png', 'public/media/product/1696495654530477.png', 1, NULL, NULL),
(107, 22, 66, 29, 'ACI Savlon Ocean Blue Antiseptic Hand Wash (1000ml)', 'SN19', '100', '<div class=\"d9FyLd XcVN5d\" style=\"padding: 0px 0px 10px; color: rgb(32, 33, 36); font-size: 16px; font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\"><b>ACI Savlon Ocean Blue Handwash</b>&nbsp;-&nbsp;<b>1000ml</b></div><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"><b>savlon ocean blue</b>&nbsp;is sparkly fresh, delivering a&nbsp;<b>clean</b>&nbsp;and fresh feeling as invigorating as a deep in the&nbsp;<b>ocean</b>, leaving your skin feeling smooth, soft and refreshed, thus ensuring a complete family protection against germ in a charming way.</span>', 'White', '1000ml', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696495932443620.jpg', 'public/media/product/1696495932520260.jpeg', 'public/media/product/1696495932549153.jpeg', 1, NULL, NULL),
(108, 22, 66, 30, 'Oxy Clean Disinfectant Spray (100ml)', 'SN20', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Oxyclean Disinfectant Spray</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;disinfects areas like the toilet areas, door handles, shower base, under sink. It kills 99.99% of bacteria, virus &amp; germs on surface. ... It kills 99.99% of bacteria, virus &amp; germs on the surface. It can be used in toilet areas, door handles, shower base, under the sink.</span>', 'White', '100ml', '150', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696496339135904.jpeg', 'public/media/product/1696496339194508.jpeg', 'public/media/product/1696496339234574.jpeg', 1, NULL, NULL),
(109, 22, 66, NULL, 'Lifebuoy Sanitizer Total (100ml)', 'SN21', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Lifebuoy Total</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;Hand&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;protects you against 99.99% of germs.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Lifebuoy</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;hand&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">sanitizers</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;have 70% alcohol content and are effective against 99.99% of germs</span>', 'White', '100ml', '130', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696496666398475.webp', 'public/media/product/1696496666994466.webp', 'public/media/product/1696496667414503.webp', 1, NULL, NULL),
(110, 22, 66, 29, 'ACI Savlon Ocean Blue Antiseptic Hand Wash ( 500ml)', 'SN22', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Description</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">savlon ocean blue</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is sparkly fresh, delivering a&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">clean</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and fresh feeling as invigorating as a deep in the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">ocean</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, leaving your skin feeling smooth, soft and refreshed, thus ensuring a complete family protection against germ in a charming way.</span>', 'White', '500ml', '150', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696496898193290.jpg', 'public/media/product/1696496898286696.jpeg', 'public/media/product/1696496898382554.jpeg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(111, 22, 66, 25, 'Mediker Safelife Hand Sanitizer (40ml)', 'SN23', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Mediker Safe Life Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is alcohol based&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, contains 70% v/v isopropyl alcohol. Kills 99.9% of germs without any water. Protect your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;against germs anywhere anytime with&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Mediker Safe Life Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. Absolutely no water or soap needed, use anywhere anytime.</span>', 'White', '40ml', '65', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696497621328931.jpeg', 'public/media/product/1696497621408890.jpeg', 'public/media/product/1696497621439919.jpeg', 1, NULL, NULL),
(112, 22, 66, 29, 'ACI Savlon Aloe Vera Antiseptic Hand Wash (1000ml)', 'SN24', '100', '<span style=\"color: rgb(53, 53, 53); font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Savlon Hand Wash has successfully created lot of enthusiasm among consumers through the attractive fragrance, color and efficacy. Savlon Active HW is a unique combination of gentle and most effective cleansing formulations that cleanses and protects skin from germs. Savlon Ocean Blue is sparkly fresh, delivering a clean and fresh feeling as invigorating as a dip in the ocean. Savlon Aloe Vera is enriched with a light scent and sensation of Aloe Vera to gently &amp; thoroughly clean skin without stripping essential moisture</span>', 'Green', '1000ml', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696497991044192.jpg', 'public/media/product/1696497991414810.jpeg', 'public/media/product/1696497991484655.jpeg', 1, NULL, NULL),
(113, 22, 66, 27, 'LIfebuoy Hand Wash Total (480ml)', 'SN25', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Lifebuoy Total</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;10&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is an effective way to fight infection-causing bacteria and viruses. The special formula with milk cream and Active Natural Shield is proven to remove 99.9% of germs in just 10 seconds.</span>', 'White', '480ml', '175', '175', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696498225130998.jpg', 'public/media/product/1696498225450221.jpg', 'public/media/product/1696498225471504.jpg', 1, NULL, NULL),
(114, 22, 66, 27, 'LIfebuoy Hand Wash Total Pump (560ml)', 'SN26', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Lifebuoy Total</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;10&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Handwash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is an effective way to fight infection-causing bacteria and viruses. The special formula with milk cream and Activ Naturol Shield is proven to remove 99.9% of germs in just 10 seconds.</span>', 'White', '560ml', '240', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696498534563287.png', 'public/media/product/1696498534738388.jpg', 'public/media/product/1696498534833291.jpg', 1, NULL, NULL),
(115, 22, 66, 16, 'Godrej Protekt Instant Hand Sanitizer (50ml)', 'SN27', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Godrej Protekt Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;keeps you protected from germs anytime and anywhere. This&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">gel</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">-based&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;kills 99.9% germs without water and soap. It contains more than 60% alcohol leaving your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;feeling clean and soft with a pleasant fragrance.</span>', 'White', '50ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696498857134781.jpg', 'public/media/product/1696498857289164.jpg', 'public/media/product/1696498857447192.jpg', 1, NULL, NULL),
(116, 22, 66, 23, 'Almer Hand Wash Refill (250ml)', 'SN28', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;It is specially formulated with pH balance and contains moisturizer to help leave your hands feeling soft.</span>', 'White', '250ml', '65', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696499106326862.webp', 'public/media/product/1696499106617050.webp', 'public/media/product/1696499106744547.webp', 1, NULL, NULL),
(117, 22, 66, 29, 'ACI Savlon Herbal Iris Hand Wash (1000ml)', 'SN29', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;leaves consumers\' skin feeling smooth, soft and refreshed thus ensuring \'complete family protection\' against germs in a charming way. ...&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Active&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;is a unique combination of gentle and most effective cleansing formulations that cleanses and protects skin from germs.</span>', 'Blue', '1000ml', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696499303985031.jpg', 'public/media/product/1696499304053618.jpeg', 'public/media/product/1696499304090906.jpeg', 1, NULL, NULL),
(118, 22, 66, 29, 'ACI Savlon Herbal Marigold Hand Wash (1000ml)', 'SN30', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;leaves consumers\' skin feeling smooth, soft and refreshed thus ensuring \'complete family protection\' against germs in a charming way. ...&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Active&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;is a unique combination of gentle and most effective cleansing formulations that cleanses and protects skin from germs.</span>', 'Gold,Yellow', '1000ml', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696499466938760.jpg', 'public/media/product/1696499466996603.jpeg', 'public/media/product/1696499467080781.jpeg', 1, NULL, NULL),
(119, 22, 66, 17, 'Sepnil Instant Hand Sanitizer (40ml)', 'SN31', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sepnil Instant Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;ascertains and removes 99.9% germs. ... Removes 99.9% germs. It is rinse free and ideal for the family use.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sepnil Instant Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;meets your personal healing and cleansing needs.</span>', 'White', '40ml', '40', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696499870234173.jpeg', 'public/media/product/1696499870273309.jpeg', 'public/media/product/1696499870303067.jpeg', 1, NULL, NULL),
(120, 22, 66, 27, 'LIfebuoy Hand Wash Care (5Ltr)', 'SN32', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Lifebuoy</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Liquid&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">, Total 10, 5 Liter Size:&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">5 Ltr Lifebuoy</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;also offers specific health benefits through it.</span>', 'White', '5 Litter', '1100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696500140357673.jpg', 'public/media/product/1696500140411296.jpg', 'public/media/product/1696500140439775.jpg', 1, NULL, NULL),
(121, 22, 66, 29, 'ACI Savlon Aloe Vera Antiseptic Hand Wash Pump (300ml)', 'SN33', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;leaves consumers\' skin feeling smooth, soft and refreshed thus ensuring \'complete family protection\' against germs in a charming way.</span>', 'Green', '300ml', '110', '100', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696500453123121.jpg', 'public/media/product/1696500453215268.jpg', 'public/media/product/1696500453333757.jpg', 1, NULL, NULL),
(122, 22, 66, 27, 'LIfebuoy Hand Wash Care Pump (200ml)', 'SN34', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Keep the germs away with&nbsp;</span><span class=\"hcV4Re nkGKTb\" style=\"font-weight: 800; color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Lifebuoy Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;that is effective against virus &amp;bacteria. Get rid of common germs causing infection and illness with&nbsp;</span><span class=\"hcV4Re nkGKTb\" style=\"font-weight: 800; color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Lifebuoy hand wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">.</span>', 'White', '200ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696500595900538.jpeg', 'public/media/product/1696500595935179.jpeg', 'public/media/product/1696500595961852.jpeg', 1, NULL, NULL),
(123, 22, 66, 20, 'Dettol Hand Wash Gold  Liquid Soap  Refill (170ml)', 'SN35', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">This&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol Gold Handwash 170 ml Refill</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Poly Pack gives&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol\'s Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Standard of Germ Protection. It is the biggest innovation from&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;with a special range of products to give you and your family our best ever protection. ... Product Type:&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">. This will help your skin feel healthy and fresh.</span>', 'Gold', '170ml', '65', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696500790225917.jpg', 'public/media/product/1696500790354804.jpeg', 'public/media/product/1696500790403642.jpeg', 1, NULL, NULL),
(124, 16, 40, 14, 'মোটা ড্রাই কেক (2) - ১ কেজি', 'B000C1', '55', 'মোটা ড্রাই কেক - ১ কেজি', 'NO', 'No', '300', '280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696523765269344.jpg', 'public/media/product/1696523765463393.jpg', 'public/media/product/1696523765525576.jpg', 1, NULL, NULL),
(125, 16, 40, 14, 'মোটা ড্রাই কেক (1) - ১ কেজি', 'F000D1', '66', 'মোটা ড্রাই কেক (1) - ১ কেজি গুণগত মান সম্পন্ন কেক ।', 'NO', 'NO', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696523842590599.jpg', 'public/media/product/1696523842626763.jpg', 'public/media/product/1696523842649236.jpg', 1, NULL, NULL),
(126, 16, 40, 14, 'চিকন ড্রাই কেক (1) - ১ কেজি', 'B000D3', '65', 'চিকন ড্রাই কেক (1) - ১ কেজি&nbsp; গুণগত&nbsp; মান সম্পন্ন কেক ।', 'NO', 'NO', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696523993152050.jpg', 'public/media/product/1696523993234091.jpg', 'public/media/product/1696523993335728.jpg', 1, NULL, NULL),
(127, 16, 40, 14, 'চিকন ড্রাই কেক (2) - ১ কেজি', 'B00D5', '55', 'চিকন ড্রাই কেক (2) - ১ কেজি&nbsp; গুণগত&nbsp; মান সম্পন্ন কেক ।', 'NO', 'NO', '280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696524064392202.jpg', 'public/media/product/1696524064471300.jpg', 'public/media/product/1696524064530120.jpg', 1, NULL, NULL),
(128, 16, 40, 14, '১ বাদাম বিস্কুট - ১ কেজি', 'B000B1', '88', '১ বাদাম বিস্কুট - গুণগত মানস্পন্ন বিস্কুট ।', 'No', 'NO', '260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696524266440234.jpeg', 'public/media/product/1696524267135156.jpeg', 'public/media/product/1696524268282928.jpeg', 1, NULL, NULL),
(129, 16, 40, 14, 'নারিকেল বিস্কুট - ১ কেজি', 'B000N1', '100', 'নারিকেল বিস্কুট&nbsp; উন্নত গুণগত মান সম্পন্ন বিস্কুট ।', 'NO', 'NO', '280', '260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696524464059389.jpg', 'public/media/product/1696524464337630.jpg', 'public/media/product/1696524464610028.jpg', 1, NULL, NULL),
(130, 16, 37, 14, 'ঝুড়ো বাদাম বিস্কুট - ১ কেজি', 'B00JB1', '65', 'ঝুড়ো বাদাম বিস্কুট গুণগত মানের সেরা বিস্কুট ।', 'NO', 'NO', '320', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696524684396880.jpg', 'public/media/product/1696524684476401.jpg', 'public/media/product/1696524684539333.jpg', 1, NULL, NULL),
(131, 16, 99, NULL, 'মালটোভা বিস্কুট - ১ কেজি', 'B00M1', '65', 'মালটোভা বিস্কুট গুণগত মানের বিস্কুট ।', 'NO', 'NO', '270', '260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696524919790821.jpg', 'public/media/product/1696524919937772.jpg', 'public/media/product/1696524920145906.jpg', 1, NULL, NULL),
(132, 16, 40, 14, 'প্লেন কেক বড় - ১ পিস', 'B00C01', '78', 'প্লেন কেক বড় গুণগত মানের সেরা কেক ।', 'No', 'NO', '110', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696525179569315.jpg', 'public/media/product/1696525179630612.jpg', 'public/media/product/1696525179703385.jpg', 1, NULL, NULL),
(133, 16, 40, 14, 'প্লেন কেক মাঝারি - ১ পিস', 'B00C02', '78', 'প্লেন কেক মাঝারি গুণগত মানের সেরা কেক ।', 'NO', 'NO', '80', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696525269871909.jpg', 'public/media/product/1696525269923023.jpg', 'public/media/product/1696525269938109.jpg', 1, NULL, NULL),
(134, 16, 40, 14, 'প্লেন কেক ছোট - ১ পিস', 'B00C03', '65', 'প্লেন কেক ছোট গুণগত মানের সেরা কেক ।', 'NO', 'NO', '55', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696525449814519.jpg', 'public/media/product/1696525449834591.jpg', 'public/media/product/1696525449844978.jpg', 1, NULL, NULL),
(135, 16, 40, 14, 'ওভালটিন কেক বড় - ১ পিস', 'B00C0O1', '100', 'ওভালটিন কেক&nbsp; গুণগত মানের সেরা কেক ।', 'NO', 'NO', '220', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696525676466055.jpg', 'public/media/product/1696525676564190.jpg', 'public/media/product/1696525676642929.jpg', 1, NULL, NULL),
(136, 16, 37, 14, 'ফুড কেক গোল - ১ পিস', 'B00C10', '100', 'ফুড কেক গোল&nbsp; গুণগত মানের সেরা কেক ।', 'NO', 'NO', '65', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696525925094800.jpg', 'public/media/product/1696525925142202.jpg', 'public/media/product/1696525925229169.jpg', 1, NULL, NULL),
(137, 16, 39, 14, 'মোরগ  পোলাও', 'E00P1', '65', 'মোরগ পোলাও স্বাদ ও গুণগত মানে সেরা&nbsp;', 'no', 'no', '150', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696526197194187.jpg', 'public/media/product/1696526197262577.jpg', 'public/media/product/1696526197284588.jpg', 1, NULL, NULL),
(138, 16, 39, 14, 'কাশ্মীরি কাচ্চি', 'B00K1', '75', 'কাশ্মীরি কাচ্চি গুণগত মান সম্পন্ন ।', 'NO', 'NO', '160', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696526431786699.jpg', 'public/media/product/1696526431900951.jpg', 'public/media/product/1696526432002494.jpg', 1, NULL, NULL),
(139, 16, 39, 14, 'চিকেন বিরিয়ানি (ঝাল )', 'B00CV1', '65', 'চিকেন বিরিয়ানি (ঝাল )&nbsp;', 'NO', 'NO', '140', '130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696526656560779.jpg', 'public/media/product/1696526656675512.jpg', 'public/media/product/1696526656836599.jpg', 1, NULL, NULL),
(140, 16, 37, 14, 'গরুর কাচ্চি - ১ প্লেট', 'B00G1', '85', 'গরুর কাচ্চি গুণগত মান সম্পন্ন কাচ্চি ।', 'NO', 'NO', '150', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696526842661358.jpg', 'public/media/product/1696526842772842.jpg', 'public/media/product/1696526842818082.jpg', 1, NULL, NULL),
(141, 16, 39, 14, 'গরুর তেহারী- ১ প্লেট', 'B00G3', '75', 'গরুর তেহারী গুণগত মান সম্পন্ন ।', 'NO', 'NO', '120', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696527040514480.jpg', 'public/media/product/1696527040656032.jpg', 'public/media/product/1696527040830398.jpg', 1, NULL, NULL),
(142, 16, 37, 14, 'চিকেন কাচ্চি', 'B00C1', '65', 'চিকেন কাচ্চি গুণগত মান সম্পন্ন&nbsp; কাচ্চি ।', 'NO', 'NO', '140', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696527196449730.jpg', 'public/media/product/1696527196491070.jpg', 'public/media/product/1696527196513127.jpg', 1, NULL, NULL),
(143, 16, 37, 14, 'ডিম পোলাও', 'B00E1', '55', 'ডিম পোলাও গুণগত মান সম্পন্ন ।', 'NO', 'NO', '70', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696527350802363.jpg', 'public/media/product/1696527350874935.jpg', 'public/media/product/1696527350943982.jpg', 1, NULL, NULL),
(144, 16, 39, 14, 'বোরহানী - ১ গ্লাস', 'B000B11', '55', 'বোরহানী গুণগত মান সম্পন্ন ।', 'NO', 'NO', '35', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696527503851183.jpg', 'public/media/product/1696527503890120.jpg', 'public/media/product/1696527503920778.jpg', 1, NULL, NULL),
(145, 15, 109, 14, 'বিলপাড়া মিষ্টি - ১ কেজি', 'M0001', '150', 'বিলপাড়া&nbsp; মিষ্টি গুণগত মান সম্পন্ন মিষ্ট ।', 'NO', 'NO', '300', '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696531579522770.jpg', 'public/media/product/1696531579592768.jpg', 'public/media/product/1696531579652150.jpg', 1, NULL, NULL),
(146, 15, 109, 14, 'সাদা চমচম - ১ কেজি', 'M0002', '150', 'সাদা চমচম গুণগত মান সম্পন্ন ।', 'NO', 'NO', '300', '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696531719823516.jpg', 'public/media/product/1696531719943403.jpg', 'public/media/product/1696531720039609.jpg', 1, NULL, NULL),
(147, 15, 109, 14, 'স্পেশাল রসমালাই  - ( ছোট প্যাকেট )', 'M000R1', '150', 'স্পেশাল রসমালাই&nbsp; গুণগত মান সম্পন্ন ।', 'NO', 'NO', '180', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696531933321226.jpg', 'public/media/product/1696531933416394.jpg', 'public/media/product/1696531933464518.jpg', 1, NULL, NULL),
(148, 15, 109, 14, 'স্পেশাল রসমালাই  - ( বড় প্যাকেট )', 'M000R2', '150', 'স্পেশাল রসমালাই&nbsp; গুণগত মান সম্পন্ন ।', 'NO', 'NO', '330', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696531980377855.jpg', 'public/media/product/1696531980431022.jpg', 'public/media/product/1696531980501302.jpg', 1, NULL, NULL),
(149, 15, 36, 14, 'সাদা গোল্লা - ১ কেজি', 'M000G4', '150', 'সাদা গোল্লা গুণগত মান সম্পন্ন ।', 'NO', 'NO', '180', '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696532175191724.jpg', 'public/media/product/1696532175241502.jpg', 'public/media/product/1696532175286288.jpg', 1, NULL, NULL),
(150, 15, 109, 14, 'গোপাল স্পেশাল দই - ১ কেজি', 'M000G5', '150', 'গোপাল স্পেশাল দই গুণগত মান সম্পন্ন ।', 'NO', 'NO', '220', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696532363582413.jpg', 'public/media/product/1696532363666126.jpg', 'public/media/product/1696532363781972.jpg', 1, NULL, NULL),
(151, 15, 109, 14, 'গোপাল স্পেশাল দই - ২ কেজি', 'M000G5', '150', 'গোপাল স্পেশাল দই&nbsp;গুণগত মান সম্পন্ন ।', 'NO', 'NO', '440', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696532445755546.jpg', 'public/media/product/1696532445799932.jpg', 'public/media/product/1696532445852389.jpg', 1, NULL, NULL),
(152, 15, 109, 14, 'হাসিখুশি মিষ্টি - ১ কেজি', 'M00H1', '111', 'হাসিখুশি মিষ্টি&nbsp;গুণগত মান সম্পন্ন ।', 'NO', 'NO', '180', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696532712495807.jpg', 'public/media/product/1696532712669356.jpg', 'public/media/product/1696532712724291.jpg', 1, NULL, NULL),
(153, 15, 109, 14, 'স্পেশাল দই - ১ কেজি', 'M00D4', '132', 'স্পেশাল দই&nbsp;গুণগত মান সম্পন্ন ।', 'NO', 'NO', '210', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696532864973109.jpg', 'public/media/product/1696532864993979.jpg', 'public/media/product/1696532865004483.jpg', 1, NULL, NULL),
(154, 22, 66, 29, 'ACI Savlon Active Hand Wash (1000ml)', 'SN36', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Active Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;is a unique combination of gentle and most effective cleansing formulations that cleanses and protects skin from germs.&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Ocean Blue is sparkly fresh, delivering a&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">clean</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;and fresh feeling as invigorating as a dip in the ocean.</span>', 'White', '1000ml', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696550439380110.jpeg', 'public/media/product/1696550439472838.jpeg', 'public/media/product/1696550439564538.jpeg', 1, NULL, NULL),
(155, 22, 66, 20, 'Dettol Hand Wash Gold  Liquid Soap  Pump (200ml)', 'SN37', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol Gold Handwash 200 ml Pump</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;gives&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol\'s Gold</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Standard of Germ Protection. It is the biggest innovation from&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;which gives you and your family our best ever protection. ...&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol Handwash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;is recommended by Doctors of Bangladesh Private Medical Practitioners Association (BPMPA).</span>', 'Gold', '200ml', '100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696550611340508.jpg', 'public/media/product/1696550611439455.jpg', 'public/media/product/1696550611512403.jpg', 1, NULL, NULL),
(156, 22, 66, 20, 'Dettol Hand Wash Cool Bottle With Push-Pull Cap  (200ml)', 'SN38', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dettol handwash Cool liquid soap</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;comes with crisp menthol.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dettol handwash liquid soap</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;with new&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Push</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;&amp;&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Pull cap</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;protects from 100 illness causing germs.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Pull</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cap</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;upward before using it.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Push</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cap</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;downward to lock the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">bottle</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;after using it.</span>', 'Blue', '200ml', '100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696550894791279.jpg', 'public/media/product/1696550894909313.jpg', 'public/media/product/1696550895024680.jpg', 1, NULL, NULL),
(157, 22, 66, 29, 'ACI Savlon Ocean Blue Antiseptic Hand Wash Bottle (250ml)', 'SN39', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon ocean blue</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;is sparkly fresh, delivering a clean and fresh feeling as invigorating as a deep in the ocean, leaving your skin feeling smooth</span>', 'Blue', '250ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696551078154190.jpeg', 'public/media/product/1696551078507964.jpeg', 'public/media/product/1696551078611399.jpeg', 1, NULL, NULL),
(158, 22, 66, 29, 'ACI Savlon  Neem Original Olive and Aloe Vera Hand Wash  Refill (200ml)', 'SN40', '100', 'ACI Savlon&nbsp; Neem Original Olive and Aloe Vera Hand Wash&nbsp; Refill (200ml)', 'Green', '200ml', '60', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696551282833212.jpg', 'public/media/product/1696551283008065.jpg', 'public/media/product/1696551283073169.jpg', 1, NULL, NULL),
(159, 22, 66, 27, 'LIfebuoy Hand Wash  Lemon Fresh Pump (200ml)', 'SN41', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Lifebuoy\'s Lemon Fresh hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is infused with refreshing and zesty&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">lemon</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;juice, keeping your hands&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">fresh</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. ... So,&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Lifebuoy hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;contains advanced germ protection with Activ Silver Formula, and gives 99.9% germ protection in just 10 seconds.</span>', 'Yellow', '200ml', '95', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696551509905880.jpg', 'public/media/product/1696551511159074.jpg', 'public/media/product/1696551512349428.jpg', 1, NULL, NULL),
(160, 22, 66, 29, 'ACI Savlon Herbal Iris Hand Wash (500ml)', 'SN42', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand washing</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;with&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">soap</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;is one of the most effective ways to prevent diseases.&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Herbal Iris Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;leaves consumers\' skin feeling smooth, soft and refreshed thus ensuring \'complete family protection\' against germs in a charming way.&nbsp;</span>', 'Blue', '500ml', '200', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696551721664582.jpg', 'public/media/product/1696551721863504.jpg', 'public/media/product/1696551721944881.jpg', 1, NULL, NULL),
(161, 22, 66, 28, 'Pears Lemon Flower Extract Hand Wash (250ml)', 'SN43', '100', '<div class=\"d9FyLd XcVN5d\" style=\"padding: 0px 0px 10px; color: rgb(32, 33, 36); font-size: 16px; font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\"><b>Pears Hand Wash Lemon Flower Extract250ml</b></div><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dermatologically tested to be mild on the skin - the perfect liquid&nbsp;<b>hand wash</b>! ... A liquid&nbsp;<b>hand wash</b>&nbsp;which is 100%&nbsp;<b>soap</b>&nbsp;free. Mild &amp; refreshing natural&nbsp;<b>lemon flower</b>&nbsp;fragrance in a liquid&nbsp;<b>hand wash</b>. Over 200 years of&nbsp;<b>soap</b>&nbsp;making expertise.</span>', 'Green', '250ml', '290', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696552054162857.jpg', 'public/media/product/1696552054247913.jpg', 'public/media/product/1696552054296518.jpg', 1, NULL, NULL),
(162, 22, 66, 29, 'ACI Savlon Herbal Marigold Hand Wash (500ml)', 'SN44', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;leaves consumers\' skin feeling smooth, soft and refreshed thus ensuring \'complete family protection\' against germs in a charming way.</span>', 'Red', '500ml', '200', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696552216532028.jpeg', 'public/media/product/1696552216593105.jpeg', 'public/media/product/1696552216624331.jpeg', 1, NULL, NULL),
(163, 22, 66, 29, 'ACI Savlon Active Antiseptic Hand Wash Refill (200ml)', 'SN45', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Active</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;HW is a unique combination of gentle and most effective cleansing formulations that cleanses and protects skin from germs. ...&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Ocean Blue is sparkly fresh, delivering a&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">clean</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;and fresh feeling as invigorating as a dip in the ocean.</span>', 'White', '200ml', '55', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696552413677969.jpg', 'public/media/product/1696552413825834.jpg', 'public/media/product/1696552413912884.jpg', 1, NULL, NULL),
(164, 22, 66, 23, 'Almer Anti Bacterial Hand Wash Green Refill (250ml)( Buy 2 Get 1 Free)', 'SN46', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">It is specially formulated with pH balance and contains moisturizer to help leave your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;feeling soft. It eliminates 99.9% of germs, your family encounter. It cleanses and protects&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;against germs, leaving it clean and refreshed.</span>', 'Green', '250ml', '140', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, 'public/media/product/1696552721595934.jpg', 'public/media/product/1696552721706605.jpeg', 'public/media/product/1696552721741261.jpeg', 1, NULL, NULL),
(165, 15, 109, 14, 'নরমাল দই', 'M00D5', '55', 'গুণগত মান&nbsp; সম্পন্ন দই ।', 'NO', 'NO', '170', '160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696570823524704.webp', 'public/media/product/1696570823955703.webp', 'public/media/product/1696570824024207.webp', 1, NULL, NULL),
(166, 15, 109, 14, 'কাটা সন্দেস - ১ কেজি', 'M00S1', '75', 'কাটা সন্দেস গুণগত মান সম্পন্ন ।', 'NO', 'No', '550', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696571258426696.jpg', 'public/media/product/1696571258696432.jpg', 'public/media/product/1696571258879471.jpg', 1, NULL, NULL),
(167, 15, 109, 14, 'নেরমাল সন্দেস - ১ কেজি', 'M00S2', '70', 'গুণগত মানের সন্দেস ।', 'NO', 'NO', '550', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696571533719109.jpeg', 'public/media/product/1696571534381352.jpeg', 'public/media/product/1696571534858944.jpeg', 1, NULL, NULL),
(168, 15, 109, 14, 'কদম মিষ্টি - ১ কেজি', 'M00M1', '78', 'গুণগত মান সম্পন্ন ।', 'NO', 'NO', '250', '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696571729934136.jpg', 'public/media/product/1696571730596427.jpg', 'public/media/product/1696571730660279.jpg', 1, NULL, NULL),
(169, 15, 109, 14, 'কালো জাম - ১ কেজি', 'M00M2', '100', 'গুণগত মান সম্পন্ন মিষ্টি ।', 'NO', 'NO', '200', '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696571953813576.jpg', 'public/media/product/1696571954087427.jpg', 'public/media/product/1696571954327624.jpg', 1, NULL, NULL),
(170, 15, 109, 14, 'মালাই চপ - ১ কেজি', 'M00M3', '100', 'গুণগত মান সম্পন্ন মিষ্টি ।', 'NO', 'NO', '300', '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696572194173081.jpg', 'public/media/product/1696572194728001.jpg', 'public/media/product/1696572194985643.jpg', 1, NULL, NULL),
(171, 15, 36, 14, 'খাটি ঘি - ১ কেজি', 'M0F01', '200', 'গুণগত মান সম্পন্ন খাটি ঘি&nbsp;।', 'NO', 'NO', '1200', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'public/media/product/1696572911012313.jpg', 'public/media/product/1696572911157815.jpg', 'public/media/product/1696572911226364.jpg', 1, NULL, NULL),
(172, 15, 36, 14, 'ফনিন্দ্র চমচম - ১ কেজি', 'M0F02', '100', 'ফনিন্দ্র চমচম গুণগত মান সম্পন্ন ।', 'NO', 'NO', '220', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696573254377368.jpg', 'public/media/product/1696573254652459.jpg', 'public/media/product/1696573254828998.jpg', 1, NULL, NULL),
(173, 16, 37, 14, 'চিকেন ফ্রাই - ১ পিস', 'FF01', '100', 'চিকেন ফ্রাই গুণগত মান সম্পন্ন ।', 'NO', 'NO', '100', '80', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696577249372536.jpg', 'public/media/product/1696577249580091.jpg', 'public/media/product/1696577249691178.jpg', 1, NULL, NULL),
(174, 16, 37, 14, 'ফ্রাই বার্গার - ১ পিস', 'FF02', '100', 'ফ্রাই বার্গার গুনগত মান সম্পন্ন ।', 'NO', 'NO', '100', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696577669321117.jpg', 'public/media/product/1696577669513698.jpg', 'public/media/product/1696577669604078.jpg', 1, NULL, NULL),
(175, 16, 37, 14, 'S. বার্গার - ১ পিস', 'FF03', '100', 'গুণগত মান সম্পন্ন S. বার্গার।', 'NO', 'NO', '50', '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696577890346875.jpg', 'public/media/product/1696577890797468.jpg', 'public/media/product/1696577890895951.jpg', 1, NULL, NULL),
(176, 16, 37, 14, 'B. বার্গার - ১ পিস', 'FF04', '100', 'গুণগত মান সম্পন্ন B. বার্গার', 'NO', 'NO', '60', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696578050784471.webp', 'public/media/product/1696578051743154.webp', 'public/media/product/1696578053008237.webp', 1, NULL, NULL),
(177, 16, 37, NULL, 'S. পিজা - ১ পিস', 'FF05', '130', 'গুণগত মান সম্পন্ন S. পিজা&nbsp;', 'NO', 'NO', '80', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696578274725632.jpg', 'public/media/product/1696578275129592.jpg', 'public/media/product/1696578275247358.jpg', 1, NULL, NULL),
(178, 16, 37, NULL, 'চিকেন রোল - ১ পিস', 'FF06', '100', 'গুণগত মান সম্পন্ন চিকেন রোল&nbsp;', 'NO', 'NO', '50', '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696579964567584.jpg', 'public/media/product/1696579965917880.jpg', 'public/media/product/1696579966791712.jpg', 1, NULL, NULL),
(179, 16, 37, 14, 'ভেজ রোল - ১ পিস', 'FF07', '125', 'গুণগত মান সম্পন্ন&nbsp; ভেজ রোল', 'NO', 'NO', '50', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696580155016686.jpg', 'public/media/product/1696580155841543.jpg', 'public/media/product/1696580156659799.jpg', 1, NULL, NULL),
(180, 16, 37, 14, 'স্যান্ডউইচ - ১ পিস', 'FF08', '125', 'গুণগত মান সম্পন্ন&nbsp;স্যান্ডউইচ&nbsp;', 'NO', 'NO', '60', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696580540475756.jpg', 'public/media/product/1696580540560905.jpg', 'public/media/product/1696580540667599.jpg', 1, NULL, NULL),
(181, 22, 66, 19, 'Boro Plus Hand Wash Pump (250ml)', 'SN47', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Boroplus</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Antiseptic&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;has antiseptic &amp; moisturising properties that leaves your hands germ-free and soft. Key Benefits. With new&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Boroplus</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Advanced</span>', 'Green', '250ml', '75', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696580588269954.png', 'public/media/product/1696580588755832.png', 'public/media/product/1696580589117045.png', 1, NULL, NULL),
(182, 16, 37, 14, 'সিঙ্গেল স্যান্ডউইচ -  ১ পিস', 'FF09', '125', 'গুণগত মান সম্পন্ন সিঙ্গেল স্যান্ডউইচ&nbsp;', 'NO', 'NO', '140', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696580878357181.jpg', 'public/media/product/1696580879633653.jpg', 'public/media/product/1696580879834763.jpg', 1, NULL, NULL),
(183, 22, 66, 19, 'Boro Plus Hand Wash Refill (200ml)', 'SN48', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">BoroPlus</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Moisturising&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Neem, Tulsi &amp; Aloe Vera</span><wbr style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\"><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">, Kills 99.99% Germs and Kills Virus.</span>', 'White', '200ml', '65', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696580909500735.png', 'public/media/product/1696580909608855.png', 'public/media/product/1696580909659450.png', 1, NULL, NULL),
(184, 22, 66, 20, 'Dettol Hand Wash Aloe Vera Bottle With Push-Pull Cap  (200ml)', 'SN49', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol handwash Aloe Vera liquid soap</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;comes with&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Aloe Vera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;extracts.&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol handwash liquid soap</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;with new&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Push</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;&amp;&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Pull cap</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;protects from 100 illness causing germs.&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Pull</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;the&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">cap</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;upward before using.&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Push</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;the&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">cap</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;downward to lock the&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">bottle</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;after using.</span>', 'Green', '200ml', '100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696581124386517.jpg', 'public/media/product/1696581124503870.jpg', 'public/media/product/1696581124603833.jpg', 1, NULL, NULL),
(185, 16, 37, 14, 'চটপটি - ১ প্লেট', 'FF11', '100', 'গুণগত মান সম্পন্ন&nbsp;চটপটি&nbsp;', 'NO', 'NO', '70', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696581266027675.jpg', 'public/media/product/1696581266232586.jpg', 'public/media/product/1696581266383039.jpg', 1, NULL, NULL),
(186, 22, 66, 15, 'SMC Germ Kill Instant Hand Sanitizer Tube (50ml)', 'SN50', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Germ Kill Instant Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is formulated with WHO recommended 70% Isopropyl alcohol. It is effective to&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">kill</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;99.9%&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">germs</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. It is anti- bacterial and anti- viral.</span>', 'Blue', '50ml', '80', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696581361983259.jpg', 'public/media/product/1696581362820224.png', 'public/media/product/1696581362931359.png', 1, NULL, NULL),
(187, 16, NULL, 14, 'ফুচকা - ১ প্লেট', 'FF10', '125', 'গুণগত মান সম্পন্ন&nbsp;ফুচকা&nbsp;', 'NO', 'no', '60', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696581441573304.jpg', 'public/media/product/1696581441887352.jpg', 'public/media/product/1696581442639260.jpg', 1, NULL, NULL),
(188, 22, 66, 15, 'SMC Germ Kill Instant Hand Sanitizer  (50ml)', 'SN51', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Germ Kill Instant Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is formulated with WHO recommended 70% Isopropyl alcohol. It is effective to&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">kill</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;99.9%&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">germs</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">. It is anti- bacterial and anti- viral.</span>', 'Blue', '50ml', '80', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696581509212908.jpg', 'public/media/product/1696581509612835.jpg', 'public/media/product/1696581510380076.jpg', 1, NULL, NULL),
(189, 22, 66, 14, 'Vah Hand Sanitizer (50ml)', 'SN52', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Instant&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">hand sanitizer</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;with moisturizing gel formulation. Kills 99.9% of the most illness causing germs</span>', 'White', '50ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696581720337660.jpg', 'public/media/product/1696581720868117.jpg', 'public/media/product/1696581721060616.jpg', 1, NULL, NULL),
(190, 22, 66, 26, 'Emami Creame 21 Hand Sanitizer (50ml)', 'SN53', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Creame&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">21 hand sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;gives 99.9% germ protection. It contains skin moisturizing aloe vera and vitamin E. It\'s hard on germs and soft on&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">.</span>', 'White', '50ml', '100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696581876062376.jpg', 'public/media/product/1696581876481966.jpg', 'public/media/product/1696581877025929.jpg', 1, NULL, NULL),
(191, 16, 37, 14, 'লাচ্ছি - ১ গ্লাস', 'FF12', '125', 'গুণগত মান সম্পন্ন&nbsp;লাচ্ছি&nbsp;&nbsp;', 'NO', 'NO', '60', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696582048689355.jpg', 'public/media/product/1696582048745328.jpg', 'public/media/product/1696582048788602.jpg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(192, 22, 66, 21, 'Dabur Hand Sanitize  (60ml)', 'SN54', '100', '<span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">Hand sanitizer is a liquid generally used to decrease infectious agents on the hands.Formulations of the alcohol-based type are preferable to hand washing with soap and water in most situations in the healthcare setting. It is generally more effective at killing microorganisms and better tolerated than soap and water. Hand washing should still be carried out if contamination can be seen or following the use of the toilet. The general use of non-alcohol based versions has no recommendations. Outside the health care setting, evidence to support the use of hand sanitizer over hand washing is poor. They are available as liquids, gels, and foams.</span>', 'White', '60ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696582055537538.jpg', 'public/media/product/1696582055645321.jpg', 'public/media/product/1696582055708080.jpg', 1, NULL, NULL),
(193, 22, 66, 14, 'Sanit Hand Sanitizer (50ml)', 'SN55', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Sanit Hand sanitizer</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;contains killing agents that kills germs from our&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">hand</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;easily. Benefit: It has 70% Isopropyl alcohol that is very effective in killing germs.</span>', 'White', '50ml', '80', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696582211361368.jpg', 'public/media/product/1696582211935528.jpg', 'public/media/product/1696582212400022.jpg', 1, NULL, NULL),
(194, 16, 37, 14, 'স্পেশাল লাচ্ছি - ১ গ্লাস', 'FF13', '125', 'গুণগত মান সম্পন্ন&nbsp;স্পেশাল লাচ্ছি ।', 'NO', 'No', '120', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696582314824699.jpg', 'public/media/product/1696582314854347.jpg', 'public/media/product/1696582314869119.jpg', 1, NULL, NULL),
(195, 22, 66, 14, 'Lucy Hand Sanitizer (100ml)', 'SN57', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Lucy Instant&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Hand Sanitizer</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;ascertains and removes 99.9% germs. It is rinse free</span>', 'White', '100ml', '130', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696582440616412.jpg', 'public/media/product/1696582440688020.jpg', 'public/media/product/1696582440740572.jpg', 1, NULL, NULL),
(196, 22, 66, 18, 'Biore Anti Bacterial Guard Hand Soap Pouch (250ml)', 'SN57', '100', '<font color=\"#777777\" face=\"Inter, Arial, Helvetica, sans-serif\">Biore Anti Bacterial Guard Hand Soap Pouch (250ml)&nbsp;wash comes with the special PCMX active that is proven in ensuring every day protection for you and your family. This 250ml refill value pack of Original formulation of Biorel handwash protects you and your loved ones from 100 illness causing germs, keeping you protected and healthy. Recommended by Doctors of Bangladesh Private Medical Practitioners Association (BPMPA).</font>', 'White', '250ml', '215', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696583051822131.jpg', 'public/media/product/1696583052023046.jpg', 'public/media/product/1696583052110455.jpg', 1, NULL, NULL),
(197, 16, 37, 14, 'ডাবল স্যান্ডউইচ - ১ পিচ', 'FF14', '125', 'গুণগত মান সম্পন্ন&nbsp;ডাবল স্যান্ডউইচ ।', 'NO', 'NO', '130', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696583315427279.jpg', 'public/media/product/1696583315634416.jpg', 'public/media/product/1696583315741495.jpg', 1, NULL, NULL),
(198, 22, 66, 18, 'Biore Anti Bacterial Guard Hand Soap Bottle (250ml)', 'SN58', '100', '<font color=\"#777777\" face=\"Inter, Arial, Helvetica, sans-serif\">&nbsp;Biore Anti Bacterial Guard Hand Soap Bottle (250ml)comes with the special PCMX active that is proven in ensuring every day protection for you and your family. This 250ml refill value pack of Original formulation of Biore handwash protects you and your loved ones from 100 illness causing germs, keeping you protected and healthy. Recommended by Doctors of Bangladesh Private Medical Practitioners Association (BPMPA).</font>', 'White', '250ml', '300', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696583314478763.jpg', 'public/media/product/1696583315091660.jpg', 'public/media/product/1696583315564081.jpg', 1, NULL, NULL),
(199, 22, 66, 16, 'Godrej Protekt Instant Hand Sanitizer (100ml)', 'SN59', '100', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Protekt Hand Sanitizer</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;(</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">100ml</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">) · GERM PROTECTION: Kills 99.9% disease causing germs&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">instantly</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;without water or soap · ALCOHOL BASED</span>', 'White', '100ml', '125', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696583503776894.jpg', 'public/media/product/1696583503859842.jpg', 'public/media/product/1696583503933330.jpg', 1, NULL, NULL),
(200, 16, 37, 14, 'B. পিজা - ১ পিস', 'FF15', '125', 'গুণগত মান সম্পন্ন B. পিজা ।', 'NO', 'NO', '80', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696584104334117.jpg', 'public/media/product/1696584104435214.jpg', 'public/media/product/1696584104468598.jpg', 1, NULL, NULL),
(201, 16, 37, 14, 'মিল্ক কেক', 'FF16', '155', 'গুণগত মান সম্পন্ন&nbsp;মিল্ক কেক&nbsp;', 'NO', 'NO', '110', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696584349444437.jpg', 'public/media/product/1696584349572051.jpg', 'public/media/product/1696584349785494.jpg', 1, NULL, NULL),
(202, 16, 37, 14, 'কোল্ড কফি', 'FF17', '111', 'গুণগত মান সম্পন্ন কোল্ড কফি&nbsp;', 'NO', 'NO', '100', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696584507925796.jpg', 'public/media/product/1696584508029627.jpg', 'public/media/product/1696584508366016.jpg', 1, NULL, NULL),
(203, 22, 66, 29, 'ACI Savlon  Neem Original Nourishing Hand Wash (1 Litter)', 'SN60', '100', '<font color=\"#4d5156\" face=\"arial, sans-serif\">ACI Savlon&nbsp; Neem Original Nourishing Hand Wash (1 Litter)&nbsp;with soap is&nbsp;</font><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">one</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;of the most effective ways to prevent diseases.&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Savlon Hand Wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;brings more excitement</span>', 'Green', '1 Litter', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696584904691767.jpg', 'public/media/product/1696584904996824.jpg', 'public/media/product/1696584905106091.jpg', 1, NULL, NULL),
(204, 22, 66, 23, 'Almer Hand Sanitizer (250ml)', 'SN61', '100', '<div class=\"d9FyLd XcVN5d\" style=\"padding: 0px 0px 10px; color: rgb(32, 33, 36); font-size: 16px; font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\">&nbsp;<b>Almer Hand Sanitizer</b>&nbsp;-&nbsp;<b>250ml</b></div><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">It instantly cleans and disinfects germs and dirt with no water required. It has an added moisturizer which helps to keep&nbsp;<b>hands</b>&nbsp;soft, smooth and supple. It kills 99.99% of germs. It is against animal testing.</span>', 'Blue', '250ml', '480', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696585249118075.jpg', 'public/media/product/1696585249406840.jpg', 'public/media/product/1696585249508763.jpg', 1, NULL, NULL),
(205, 22, 66, 23, 'Almer Hand Wash (Green) (250ml)', 'SN62', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">It is specially formulated with pH balance and contains moisturizer to help leave your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;feeling soft. It eliminates 99.9% of germs, your family encounter. It cleanses and protects&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;against germs, leaving it&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">clean</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and refreshed.</span>', 'Green', '250ml', '120', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696585462769763.jpeg', 'public/media/product/1696585462934779.jpeg', 'public/media/product/1696585463066784.jpeg', 1, NULL, NULL),
(206, 22, 66, 23, 'Almer Hand Wash (Blue) (250ml)', 'SN63', '100', '<div class=\"d9FyLd XcVN5d\" style=\"padding: 0px 0px 10px; color: rgb(32, 33, 36); font-size: 16px; font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\"><b>Almer Hand Wash</b>,&nbsp;<b>Blue</b>,&nbsp;<b>250ml</b></div><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">It is specially formulated with pH balance and contains moisturizer to help leave your&nbsp;<b>hands</b>&nbsp;feeling soft. It eliminates 99.9% of germs, your family encounter.</span>', 'Blue', '250ml', '120', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696585670575898.jpg', 'public/media/product/1696585670711875.jpg', 'public/media/product/1696585670850713.jpg', 1, NULL, NULL),
(207, 22, 66, 22, 'Dove Caring Hand Wash (UK) (250ml)', 'SN64', '100', '<div class=\"d9FyLd XcVN5d\" style=\"padding: 0px 0px 10px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"><b>Dove Caring Hand Wash250ml</b></div><span class=\"hgKElc\" style=\"padding: 0px 8px 0px 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">This moisturising liquid&nbsp;<b>hand wash</b>, with a kind-to-skin formula, cares for dry skin. Our&nbsp;<b>Dove hand wash</b>&nbsp;is enriched with ¼ moisturising cream that helps to nourish&nbsp;<b>hands</b>&nbsp;during cleansing. ... A moisturising formula that effectively cleanses while protecting your&nbsp;<b>hands</b>&nbsp;from dryness.</span>', 'White', '250ml', '350', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696585967322790.jpg', 'public/media/product/1696585968004858.jpg', 'public/media/product/1696585968490520.jpg', 1, NULL, NULL),
(208, 22, 66, 22, 'Dove Caring Cucumber and Green Tea Scent Hand Wash (250ml)', 'SN65', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">This&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dove hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;cleanses your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;with a special formulation enriched with ¼ moisturising cream to leave you with soft, smooth skin. The soft moisturising formula helps retain hydration in your skin, making the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dove Hand Wash Cucumber</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;&amp;&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Green Tea</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;suitable for every day&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand washing</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Dove</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;the home of real beauty.</span>', 'Green', '250ml', '350', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696586198519276.jpg', 'public/media/product/1696586199004121.jpg', 'public/media/product/1696586199220231.jpg', 1, NULL, NULL),
(209, 22, 66, 22, 'Dove Caring Fine Silk Hand Wash (250ml)', 'SN66', '100', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">A moisturising formula that effectively cleanses while protecting your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;from dryness. How to use: To clean&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">, just dispense a pump of this liquid&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand wash</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;into your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and work into a rich lather before rinsing away to leave you with soft, smooth&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hands</b>', 'White', '250ml', '350', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696586500169859.png', 'public/media/product/1696586500620056.jpg', 'public/media/product/1696586500697407.jpg', 1, NULL, NULL),
(210, 22, 66, 17, 'Sepnil Instant Hand Sanitizer (200ml)', 'SN67', '100', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sepnil Instant Hand Sanitizer</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Sepnil\'s</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection.</span>', 'White', '200ml', '200', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696586654469624.jpeg', 'public/media/product/1696586654618352.jpeg', 'public/media/product/1696586654693575.jpeg', 1, NULL, NULL),
(211, 22, 66, 29, 'ACI Savlon Antiseptic Hand Wash Ocean Blue Pump (300ml)', 'SN68', '100', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">ACI Savlon Antiseptic Hand Wash Ocean Blue Pump&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span></font><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get&nbsp;</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection.</span>', 'Blue', '300ml', '100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696587000742869.png', 'public/media/product/1696587001350152.jpg', 'public/media/product/1696587001495925.jpg', 1, NULL, NULL),
(212, 22, 66, 29, 'ACI Savlon Antiseptic Hand Wash Active Pump (300ml)', 'SN69', '100', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\"><b>ACI Savlon Antiseptic Hand Wash Active Pump</b>&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span></font><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get Savlon\'s</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection.</span>', 'Yellow', '300ml', '100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696587283374368.png', 'public/media/product/1696587283784849.jpeg', 'public/media/product/1696587283818683.jpeg', 1, NULL, NULL),
(213, 22, 66, 24, 'Bactrol Liquid Hand Wash Pump (200ml)', 'SN70', '100', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Bactrol Liquid Hand Wash Pump&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span></font><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get&nbsp;Bactrol</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection.</span>', 'White', '200ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696587551469320.jpg', 'public/media/product/1696587552196217.jpg', 'public/media/product/1696587552751313.jpg', 1, NULL, NULL),
(214, 22, 66, 29, 'ACI Savlon  Neem Original Olive and Aloe Vera Hand Wash (250ml)', 'SN71', '100', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">ACI Savlon&nbsp; Neem Original Olive and Aloe Vera Hand Wash&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span></font><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Savlon\'s</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection.</span>', 'Green', '250ml', '100', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696587771899381.jpg', 'public/media/product/1696587772021266.jpg', 'public/media/product/1696587772118296.jpg', 1, NULL, NULL),
(215, 22, NULL, 29, 'ACI Savlon Herbal Lavender Hand Wash (500ml)', 'SN72', '100', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\"><b>ACI Savlon Herbal Lavender Hand Wash</b></span></font><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Savlon\'s</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection.</span>', 'Purple', '500ml', '200', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696588051794229.png', 'public/media/product/1696588052244818.jpeg', 'public/media/product/1696588052328482.jpeg', 1, NULL, NULL),
(216, 22, 66, 29, 'ACI Savlon Aloe Vera Antiseptic Hand Wash Bottle (250ml)', 'SN73', '100', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\"><b>ACI Savlon Aloe Vera Antiseptic Hand Wash Bottle</b></span></font><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Savlon\'s</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection</span>', 'Green', '250ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696588277340907.jpg', 'public/media/product/1696588277381988.jpg', 'public/media/product/1696588277416968.jpg', 1, NULL, NULL),
(217, 22, 66, 29, 'ACI Savlon Active Hand Wash Bottle (250ml)', 'SN74', '100', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\"><b>ACI Savlon Active Hand Wash Bottle</b></span></font><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;ascertains and removes 99.9% germs. It is rinse free and ideal for the family use. Just pour a few drops in your&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">hand</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">rub hands</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;together to get&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Savlon\'s</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;trusted protection.</span>', 'White', '250ml', '90', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1696588554690785.jpg', 'public/media/product/1696588554770925.jpg', 'public/media/product/1696588554808999.jpg', 1, NULL, NULL),
(218, 22, 66, 20, 'Dettol Hand Wash Original Liquid Soap  Pump (200ml)', 'SN75', '100', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">This&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">200ml</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;of&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Original</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;formulation of&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol Original liquid Hand wash</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;protects from 100 illness causing germs. ... Protects&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">hands</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;from germs and gives 10 times better protection. This&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">200ml</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;of cool formulation of&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;with crisp menthol a pH-balanced formula with&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Dettol\'s</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;trusted germ protection.</span>', 'Yellow', '200ml', '100', '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696588699822947.webp', 'public/media/product/1696588700015809.jpeg', 'public/media/product/1696588700113279.jpeg', 1, NULL, NULL),
(219, 16, 37, 14, 'ফালুদা', 'FF18', '100', 'সুস্বাদু ও গুণগত মান সম্পন্ন&nbsp;ফালুদা&nbsp; ।', 'NO', 'NO', '100', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/100421_06_50_37.jpg', 'public/media/product/1696633991572109.jpg', 'public/media/product/1696633991908350.jpg', 1, NULL, NULL),
(220, 22, 68, 14, 'দেশী আলু - ১ কেজি', 'V001', '200', 'দেশী টাটকা আলু ।', 'NO', 'NO', '35', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/100421_06_14_51.jpg', 'public/media/product/1696634996517357.jpg', 'public/media/product/1696634996540456.jpg', 1, NULL, NULL),
(221, 22, 68, 14, 'বেগুন - প্রতি কেজি', 'V002', '100', 'টাটকা সবজি বেগুণ ।', 'NO', 'NO', '30', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696635561487220.jpg', 'public/media/product/1696635562068094.jpg', 'public/media/product/1696635562352238.jpg', 1, NULL, NULL),
(222, 22, 68, 14, 'দেশী উস্তা - ৫০০ গ্রাম', 'V003', '125', 'দেশী টাটকা উস্তা ।', 'NO', 'NO', '35', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696635860189046.jpg', 'public/media/product/1696635860205818.jpg', 'public/media/product/1696635860230296.jpg', 1, NULL, NULL),
(223, 22, 68, 14, 'পটল - ৫০০ গ্রাম', 'V004', '155', 'টাটকা সবজি&nbsp; পটল&nbsp;', 'NO', 'No', '30', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696636117426753.jpg', 'public/media/product/1696636117499509.jpg', 'public/media/product/1696636117552842.jpg', 1, NULL, NULL),
(224, 22, 68, 14, 'মুলা- ৫০০ গ্রাম', 'V005', '125', 'টাটকা সবজি মুলা ।', 'NO', 'No', '10', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696636712567452.jpg', 'public/media/product/1696636712592786.jpg', 'public/media/product/1696636712604053.jpg', 1, NULL, NULL),
(225, 22, 68, 14, 'কাঁচা মরিচ - ২৫০ গ্রাম', 'V006', '344', 'টাটকা সতেজ ঝাল মরিচ ।', 'NO', 'NO', '12', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696637602555751.jpg', 'public/media/product/1696637602874316.jpg', 'public/media/product/1696637602947626.jpg', 1, NULL, NULL),
(226, 22, 68, 14, 'ঢেঁড়শ - ৫০০ গ্রাম', 'V007', '100', 'টাটকা&nbsp;ঢেঁড়শ ।', 'NO', 'NO', '40', '35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696661908617805.jpg', 'public/media/product/1696661908953603.jpg', 'public/media/product/1696661908975064.jpg', 1, NULL, NULL),
(227, 22, 68, 14, 'লেবু - ২৫০ গ্রাম', 'V008', '200', 'সতেজ লেবু ।', 'No', 'No', '30', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696662264840514.jpg', 'public/media/product/1696662265306402.jpg', 'public/media/product/1696662265371400.jpg', 1, NULL, NULL),
(228, 22, 68, 14, 'জাম আলু - ৫০০ গ্রাম', 'V009', '155', 'গুণগত মান সম্পন্ন জাম আলু ।', 'NO', 'NO', '20', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696662692821323.jpg', 'public/media/product/1696662693002124.jpg', 'public/media/product/1696662693013465.jpg', 1, NULL, NULL),
(229, 22, 68, 14, 'কাঁচা কলা (বড় - ১ হালি )', 'V010', '200', 'দেশী কাঁচা কলা।', 'NO', 'NO', '33', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696663262039355.jpg', 'public/media/product/1696663262116831.jpg', 'public/media/product/1696663262233914.jpg', 1, NULL, NULL),
(230, 22, 68, 14, 'কাঁচা কলা (মাঝারি- ১ হালি )', 'V011', '200', 'দেশী&nbsp;কাঁচা কলা ( মাঝারি - ১ হালি )', 'NO', 'NO', '23', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696663390031199.jpg', 'public/media/product/1696663390190808.jpg', 'public/media/product/1696663390311539.jpg', 1, NULL, NULL),
(231, 22, 68, 14, 'কাঁচা কলা (ছোট- ১ হালি )', 'V012', '200', 'দেশী&nbsp;কাঁচা কলা ( ছোট- ১ হালি )', 'NO', 'NO', '18', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696663475147337.jpg', 'public/media/product/1696663476195056.jpg', 'public/media/product/1696663476519080.jpg', 1, NULL, NULL),
(232, 22, 68, 14, 'ধনি পাতা ( ১ আঁটি )', 'V013', '200', 'টাটকা সতেজ ধনে পাতা ।', 'NO', 'NO', '8', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696663925641909.jpg', 'public/media/product/1696663925691022.jpg', 'public/media/product/1696663925834653.jpg', 1, NULL, NULL),
(233, 22, 68, 14, 'লাল শাক ( ২ আটি )', 'V014', '200', 'সতেজ টাটকা লাল শাক ।', 'NO', 'NO', '14', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696664271651202.jpg', 'public/media/product/1696664272122434.jpg', 'public/media/product/1696664272254078.jpg', 1, NULL, NULL),
(234, 22, 68, 14, 'কলমি শাক ( ২ আটি )', 'V015', '200', 'টাটকা কলমি শাক', 'NO', 'NO', '14', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696664621183289.jpg', 'public/media/product/1696664621211225.jpg', 'public/media/product/1696664621259484.jpg', 1, NULL, NULL),
(235, 22, 66, 14, 'শশা - ৫০০ গ্রাম', 'V016', '222', 'টাটকা সতেজ শসা ।', 'NO', 'NO', '25', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696665003161347.jpg', 'public/media/product/1696665003252389.jpg', 'public/media/product/1696665003262794.jpg', 1, NULL, NULL),
(236, 22, 68, 14, 'গাজর - ৫০০ গ্রাম', 'V017', '225', 'সতেজ টাটকা গাজর ।', 'NO', 'NO', '18', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696665641301575.jpg', 'public/media/product/1696665641431603.jpg', 'public/media/product/1696665641719833.png', 1, NULL, NULL),
(237, 22, 68, 14, 'টমেটো - ৫০০ গ্রাম', 'V018', '200', 'সতেজ টাটকা টমেটো ।', 'NO', 'NO', '15', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696665875417217.jpg', 'public/media/product/1696665875648266.jpg', 'public/media/product/1696665875783057.jpg', 1, NULL, NULL),
(238, 22, 68, 14, 'সাজিনা - ৫০০ গ্রাম', 'V019', '200', 'সতেজ টাটকা সাজিনা ।', 'NO', 'NO', '30', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696666260143103.jpg', 'public/media/product/1696666260350340.jpg', 'public/media/product/1696666260485941.jpg', 1, NULL, NULL),
(239, 22, 68, 14, 'পুই শাঁক - ১ কেজি', 'V020', '200', 'টাটকা সতেজ পুই শাঁক ।', 'NO', 'NO', '45', '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696666505507125.jpg', 'public/media/product/1696666505729029.jpg', 'public/media/product/1696666505928765.jpg', 1, NULL, NULL),
(240, 22, 66, 14, 'ডায়মন্ড আলু - ১ কেজি', 'V021', '300', 'গুণগত মানের ডায়মন্ড আলু ।', 'NO', 'NO', '25', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696666727414407.jpg', 'public/media/product/1696666727439219.jpg', 'public/media/product/1696666727452882.jpg', 1, NULL, NULL),
(241, 22, 68, 14, 'চিচিংঘা - ৫০০ গ্রাম', 'V022', '225', 'গুণগত মানের চিচিংঘা', 'NO', 'NO', '35', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696666946646019.jpg', 'public/media/product/1696666946741937.jpg', 'public/media/product/1696666946798590.jpg', 1, NULL, NULL),
(242, 15, 36, 14, 'রসগোল্লা - ১ কেজি', 'M0F05', '200', 'গুণগত মানের ফনিন্দ্র রসগোল্লা ।', 'NO', 'NO', '250', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696669443379958.jpg', 'public/media/product/1696669443604483.jpg', 'public/media/product/1696669443725072.jpg', 1, NULL, NULL),
(243, 15, 36, 14, 'অমিত্তি - ১ কেজি', 'M0F06', '155', 'গুণগত মানের সেরা অমিত্তি ।', 'NO', 'NO', '250', '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696669800804339.jpg', 'public/media/product/1696669800903481.jpg', 'public/media/product/1696669800996931.jpg', 1, NULL, NULL),
(244, 12, 18, 15, 'ওরস্যালাইন এন SMC ( ১ বক্স - ২০  পিস )', 'ME001', '500', 'ওরস্যালাইন এন SMC ( ১ বক্স - ২০&nbsp; পিস )', 'NO', '20 PCS', '100', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696722713612720.jpg', 'public/media/product/1696722713785483.jpg', 'public/media/product/1696722713818129.jpg', 1, NULL, NULL),
(245, 12, 18, 14, 'টেস্টি স্যালাইন ( ১ বক্স - ২০  পিস )', 'ME003', '300', 'টেস্টি স্যালাইন&nbsp; ( ১ বক্স - ২০&nbsp; পিস )', 'NO', '20 PCS', '100', '80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696723148567990.jpg', 'public/media/product/1696723148621920.jpg', 'public/media/product/1696723148679456.jpg', 1, NULL, NULL),
(246, 12, 18, 14, 'রাইচ স্যালাইন ( ১ বক্স - ২০ পিস )', 'ME005', '200', 'রাইচ স্যালাইন ( ১ বক্স - ২০ পিস )', 'NO', '20 PCS', '200', '190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696723482323025.jpg', 'public/media/product/1696723482387707.jpg', 'public/media/product/1696723482401018.jpg', 1, NULL, NULL),
(247, 12, 18, 14, 'বোল্ট  গ্লুকোজ  ( ১ বক্স - ২০ পিস )', 'ME006', '200', 'বোল্ট&nbsp; গ্লুকোজ&nbsp; ( ১ বক্স - ২০ পিস )', 'NO', '20 PCS', '200', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696724037142962.jpg', 'public/media/product/1696724037161510.jpg', 'public/media/product/1696724037216216.jpg', 1, NULL, NULL),
(248, 12, 17, 14, 'ইসুবগুল ( প্যাকেট )', 'ME009', '100', 'গুণগত মানের ইসুবগুল&nbsp;', 'no', '1 PCS', '12', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696724941281118.jpg', 'public/media/product/1696724941355442.jpg', 'public/media/product/1696724941388087.jpg', 1, NULL, NULL),
(249, 12, 17, 14, 'ইসুবগুল এক্সটা ( প্যাকেট )', 'ME010', '100', 'গুণগত মানের ইসুবগুল এক্সটা', 'NO', '1 PCS', '18', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696725092004609.jpg', 'public/media/product/1696725092096263.jpg', 'public/media/product/1696725092160911.jpg', 1, NULL, NULL),
(250, 16, 75, 14, 'খাঁটি  গাভীর দুধ - প্রতি কেজি', 'MD001', '300', 'দেশী খাটি দুধ ।', 'NO', 'No', '60', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696727884725911.jpg', 'public/media/product/1696727884833664.jpg', 'public/media/product/1696727885014889.jpg', 1, NULL, NULL),
(251, 20, 54, 14, 'ধানঁসিড়ি সুতি শাড়ি - ( ১২ হাত )', 'S0C01', '350', 'টাংগাইলের&nbsp; আরজিনাল ধানঁসিড়ি সুতি শাড়ি ।', 'Green,Red,Pink,Violed,Marginta,light green,deep blue,White', '1PCS', '600', '499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696728558756226.jpg', 'public/media/product/1696728558876284.jpg', 'public/media/product/1696728558901869.jpg', 1, NULL, NULL),
(252, 23, NULL, 14, '২৯ চাউল ৫ কেজি', 'CH01', '100 Kg', 'আমাদের ২৯ চাউল বাজারের সেরা ২৯ চাউল এর মদ্ধে অন্যতম ।', 'No', '5 Kg', '260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696764842409801.jpg', 'public/media/product/1696764842420798.jpg', 'public/media/product/1696764842427015.jpg', 1, NULL, NULL),
(253, 23, 61, 14, 'মিনিকেট চাউল (৫ কেজি)', 'CH02', '100 Kg', 'আমাদের মিনিকেট চাউল বাজারের সেরা মিনিকেট চাউল।', 'No', '5 kg', '340', '325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696765991345753.jpg', 'public/media/product/1696765992393397.jpg', 'public/media/product/1696765993277077.jpg', 1, NULL, NULL),
(254, 23, 61, 14, 'নাজিরশাইল চাউল (৫কেজি)', 'CH03', '100 Kg', 'আমাদের&nbsp;নাজিরশাইল চাউল বাজারের সেরা।', 'NO', '5 KG', '340', '320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696766296468650.webp', 'public/media/product/1696766297833590.webp', 'public/media/product/1696766298426355.webp', 1, NULL, NULL),
(255, 23, 61, 14, 'কালিজিরা মোজাম্মেল চাউল (১ কেজি)', 'CH04', '100 Kg', 'আমাদের&nbsp;কালিজিরা মোজাম্মেল চাউল বাজারের সেরা কালিজিরা চাউল ।', 'NO', '1 KG', '100', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696766711712660.jpg', 'public/media/product/1696766711850246.jpg', 'public/media/product/1696766712128622.jpg', 1, NULL, NULL),
(256, 23, 61, 14, 'পাইজাম (১কেজি)', 'CH05', '100 Kg', 'আমাদের পাইজাম চাউল বাজারের সেরা পাইজাম চাউল ।', 'No', '1 KG', '75', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696767101708273.jpg', 'public/media/product/1696767101733712.jpg', 'public/media/product/1696767101796245.jpg', 1, NULL, NULL),
(257, 23, 61, 14, 'চিনিগুরা চাউল (১ কেজি)', 'CH06', '100 Kg', 'আমাদের&nbsp;চিনিগুরা চাউল বাজারের সেরা&nbsp;চিনিগুরা চাউল ।', 'No', '1 Kg', '110', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696767338093979.jpg', 'public/media/product/1696767338289301.jpg', 'public/media/product/1696767338430815.jpg', 1, NULL, NULL),
(258, 23, 61, 14, 'আতপ চাউল (১কেজি)', 'CH07', '100 Kg', 'আমাদের&nbsp;আতপ চাউল বাজারের সেরা&nbsp;আতপ চাউল ।', 'No', '1 Kg', '60', '54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696767758512318.png', 'public/media/product/1696767759037343.png', 'public/media/product/1696767759757433.png', 1, NULL, NULL),
(259, 23, 61, NULL, 'চাষী চিনিগুড়া চাল (২ কেজি)', 'CH08', '100 Kg', 'বাজারের সেরা&nbsp;<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">চাষী</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;সুগন্ধি&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">চিনিগুড়া চাল।</span>', 'NO', '2 Kg', '260', '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696768104167311.jpg', 'public/media/product/1696768104583702.jpg', 'public/media/product/1696768104673485.jpg', 1, NULL, NULL),
(260, 23, 61, 14, 'ফ্রেশ চিনিগুড়া চাউল (১ কেজি)', 'CH09', '100 Kg', 'স্বাদে সেরা&nbsp;ফ্রেশ চিনিগুড়া চাউল।', 'No', '1 Kg', '140', '130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696768406924158.jpg', 'public/media/product/1696768407004190.jpg', 'public/media/product/1696768407132094.jpg', 1, NULL, NULL),
(261, 23, 61, 31, 'তীর মিনিকেট চাউল (৫ কেজি)', 'CH10', '100 Kg', 'তীর মিনিকেট চাউল বাজারের সেরা মিনিকেট চাউল।', 'No', '5 Kg', '400', '385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696769096498052.png', 'public/media/product/1696769097001607.png', 'public/media/product/1696769097819001.png', 1, NULL, NULL),
(262, 20, 51, 14, 'অরজিনাল সিল্ক শাড়ী - ১৪ হাত', 'SOC02', '200', '<blockquote><font face=\"Courier New\">অরজিনাল সিল্ক শাড়ী - ১৪ হাত&nbsp;</font></blockquote><ul><li>উপাদান: সিল্ক</li><li>ধোয়া যত্ন: ড্রাই ক্লিন</li><li>ব্লাউজ পিস: অন্তর্ভুক্ত</li><li>হেভি বর্ডার ডিজাইন</li><li>ক্লাসিক লুক</li></ul><p><b>(বি দ্র: টাংগাইল সদরে হোম ডেলিভারি ফ্রি )</b></p><p> \r\n\r\n             </p>', 'Orange,Blue,Golden,Violet', '১৪ হাত', '1400', '1250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696809877698758.jpg', 'public/media/product/1696809877728310.jpg', 'public/media/product/1696809877807001.jpg', 1, NULL, NULL),
(263, 12, 21, 14, 'Seclo - 20 mg (১ পাতা) - স্কয়ার', 'MEG01', '200', 'Seclo - 20 mg (১ পাতা) - স্কয়ার', 'NO', 'No', '60', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696811593279723.jpg', 'public/media/product/1696811593294043.jpg', 'public/media/product/1696811593305008.jpg', 1, NULL, NULL),
(264, 15, 36, 14, 'ফনিন্দ্র সন্দেশ - ১ কেজি', 'M0F09', '300', 'গুণগত মানের সেরা&nbsp;ফনিন্দ্র সন্দেশ ।', 'No', 'No', '650', '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696812066129619.jpg', 'public/media/product/1696812066238260.jpg', 'public/media/product/1696812066707856.jpg', 1, NULL, NULL),
(265, 15, 36, 14, 'দই ছোট পাতিল', 'M0F10', '199', 'গুণগত মানের দই ।', 'NO', 'NO', '220', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696812687810243.jpg', 'public/media/product/1696812688191834.jpg', 'public/media/product/1696812688397331.jpg', 1, NULL, NULL),
(266, 15, 36, 14, 'দই বড় পাতিল', 'M0F11', '200', 'গুণগত মানের দই ।', 'NO', 'NO', '440', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696812775801984.jpg', 'public/media/product/1696812775925295.jpg', 'public/media/product/1696812776000372.jpg', 1, NULL, NULL),
(267, 12, 21, 14, 'Seclo - 40 mg (১ পাতা)', 'MEG02', '200', 'Seclo - 40 mg (১ পাতা)&nbsp;', 'NO', 'NO', '100', '85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696847113643188.jpg', 'public/media/product/1696847113745557.jpg', 'public/media/product/1696847113763579.jpg', 1, NULL, NULL),
(268, 15, 36, 14, 'কাপ দই - ১ পিস', 'M0F14', '300', 'সুস্বাদু কাপ দই ।', 'NO', '1 PCS', '40', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696847707135615.jpg', 'public/media/product/1696847707358447.jpg', 'public/media/product/1696847707426653.jpg', 1, NULL, NULL),
(269, 15, 36, 14, 'টক দই - ১ লিটার', 'M0F15', '300', 'পিওর টক দই ।', 'No', '1 Liter', '120', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696848118669279.jpg', 'public/media/product/1696848118756312.jpg', 'public/media/product/1696848118844349.jpg', 1, NULL, NULL),
(270, 15, 36, 14, 'মাওয়া - ১ কেজি', 'M0F17', '200', 'গুণগত মানের মাওয়া ।', 'NO', '1 KG', '1050', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696848576008164.jpg', 'public/media/product/1696848576258408.jpg', 'public/media/product/1696848576346370.jpg', 1, NULL, NULL),
(271, 15, 36, 14, 'ক্ষীর মোহন - ১ কেজি', 'M0F18', '300', 'খাঁটি&nbsp;ক্ষীর মোহন&nbsp; ।', 'NO', 'No', '700', '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696848891104227.jpg', 'public/media/product/1696848891274567.jpg', 'public/media/product/1696848891316866.jpg', 1, NULL, NULL),
(272, 15, 36, 14, 'মাদ্রাজী গোল্লা - ১ কেজি', 'M0F19', '300', 'সুস্বাদু মাদ্রাজী গোল্লা ।', 'NO', 'NO', '700', '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696849202384881.jpg', 'public/media/product/1696849202462476.jpg', 'public/media/product/1696849202552634.jpg', 1, NULL, NULL),
(273, 15, 36, 14, 'ছানা বালুশা- ১ কেজি', 'M0F20', '344', 'গুণগত মানের&nbsp; ছানা বালুশা ।', 'NO', 'NO', '660', '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696849515078864.jpg', 'public/media/product/1696849515098024.jpg', 'public/media/product/1696849515117280.jpg', 1, NULL, NULL),
(274, 15, 36, 14, 'মালাই জাম - ১ কেজি', 'M0F21', '355', 'সুস্বাদু মালাই জাম ।', 'NO', 'NO', '350', '320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696849750934899.jpg', 'public/media/product/1696849751014192.jpg', 'public/media/product/1696849751044488.jpg', 1, NULL, NULL),
(275, 23, 65, 14, 'পূবালী লবণ (১ কেজি)', 'LB01', '100 Kg', 'পূবালী লবণ উৎকৃষ্ট লবণ ।', 'NO', '1 Kg', '25', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696860731550555.jpg', 'public/media/product/1696860731983380.jpg', 'public/media/product/1696860732289399.jpg', 1, NULL, NULL),
(276, 23, 65, 32, 'ACI Pure Salt (1 KG)', 'LB03', '100 Kg', 'ACI Pure Salt is most pure salt of our Country.', 'No', '1 Kg', '30', '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696861557906134.jpg', 'public/media/product/1696861558080938.jpg', 'public/media/product/1696861558312936.jpg', 1, NULL, NULL),
(277, 23, 65, 14, 'পূবালী ফাইন (১ কেজি)', 'LB04', '100 Kg', 'পূবালী ফাইন লবণ বাজারের সেরা আয়োডিন যুক্ত লবণ ।', 'No', '1 Kg', '30', '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696861885453197.jpeg', 'public/media/product/1696861885536217.jpeg', 'public/media/product/1696861885550286.jpeg', 1, NULL, NULL),
(278, 23, 65, 33, 'ফ্রেশ লবণ (১কেজি)', 'LB05', '100 Kg', 'ফ্রেশ লবণ সুপার ফ্রেশ প্রিমিয়াম লবণ।', 'No', '1 Kg', '30', '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696862092710900.jpg', 'public/media/product/1696862094620176.jpg', 'public/media/product/1696862096270067.jpg', 1, NULL, NULL),
(279, 23, 65, 14, 'চিনি (১ কেজি)', 'LB06', '100 Kg', 'বাজারের সেরা খোলা চিনি।&nbsp;', 'No', '1 Kg', '30', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696862288671403.jpg', 'public/media/product/1696862288888755.jpg', 'public/media/product/1696862289140215.jpg', 1, NULL, NULL),
(280, 23, 65, 31, 'তীর চিনি (১ কেজি)', 'CH07', '100 Kg', 'তীর চিনি উৎকৃষ্ট মানের চিনি ।', 'NO', '1KG', '80', '72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696862418805420.jpg', 'public/media/product/1696862418841471.jpg', 'public/media/product/1696862418876358.jpg', 1, NULL, NULL),
(281, 23, 65, 14, 'লাল চিনি (১ কেজি)', 'CH08', '100 Kg', 'লাল চিনি বাজারের সেরা লাল চিনি ।', 'No', '1 Kg', '70', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696862514224654.jpg', 'public/media/product/1696862514278712.jpg', 'public/media/product/1696862514298291.jpg', 1, NULL, NULL),
(282, 22, 73, 34, 'ঈগল কয়েল', 'CL01', '100 BOX', '<span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;\">দেশের নাম্বার ওয়ান মশার কয়েল ঈগল ম্যাক্স হিট জাম্বো- এর প্যাকে এখন যুক্ত হয়েছে নাম্বার ওয়ান মোনোগ্রাম, সাথে অত্যাধুনিক হলোগ্রাফিক স্টিকার। তাই বাজারের নকল ঈগল কয়েল কিনে প্রতারিত হবেন না। কেনার আগে অবশ্যই প্যাকের গায়ে হলোগ্রাফিক স্টিকার দেখে-শুনে-বুঝে আসল ঈগল ম্যাক্স হিট জাম্বো কয়েল কিনুন</span>', 'NO', '1 Box', '60', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696862995043258.jpg', 'public/media/product/1696862995276383.jpg', 'public/media/product/1696862995292113.jpg', 1, NULL, NULL),
(283, 22, 73, 35, 'বস্ কয়েল (১ বাক্স )', 'CL02', '100 BOX', '<div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\" style=\"overflow-wrap: break-word; margin: 0px; white-space: pre-wrap; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">বস সুরক্ষায় থাকুক আপনার ঘর আর প্রিয় আপনজন।</div></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; white-space: pre-wrap; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">আপনার পরিবারকে মশা এবং মশা বাহিত মারাত্মক সব রোগ বালাই থেকে মুক্ত রাখতে এখনি সংগ্রহ করুন বস মশার কয়েল।</div></div>', 'NO', '1 Box', '60', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696863258894532.jpg', 'public/media/product/1696863259090377.jpg', 'public/media/product/1696863259114216.jpg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(284, 22, 73, 14, 'ফ্যামিলি কয়েল (১ বক্স )', 'CL03', '100 BOX', 'ফ্যামিলি কয়েল মশা নিধনে অধিক কার্যকরী ।', 'No', '1 Box', '60', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696863519825878.png', 'public/media/product/1696863520006253.png', 'public/media/product/1696863520050904.png', 1, NULL, NULL),
(285, 22, 73, 32, 'Black Fighter Coil (1 Box)', 'CL04', '100 BOX', 'Black Fighter Coil Kills Every Mosquito .', 'No', '1 Box', '60', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696863806291727.jpg', 'public/media/product/1696863806651422.jpg', 'public/media/product/1696863806680873.jpg', 1, NULL, NULL),
(286, 22, 73, NULL, 'RAK Coil (1 Box)', 'CL05', '100 BOX', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">RAK</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;MOSFLY Mosquito&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Coil</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Mega This is 12 hours continuous burning capacity.</span>', 'NO', '1 Box', '60', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696863979557329.jpg', 'public/media/product/1696863979765418.jpg', 'public/media/product/1696863979885725.jpg', 1, NULL, NULL),
(287, 23, 62, 14, 'ক্যাঙ্গারু মসুর ডাল (১ কেজি )', 'DL01', '100 Kg', 'ক্যাঙ্গারু মসুর ডাল উৎকৃষ্ট মান সম্পন্ন ডাল ।', 'NO', '1 KG', '120', '115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696911547471855.jpg', 'public/media/product/1696911547719604.jpg', 'public/media/product/1696911547768859.jpg', 1, NULL, NULL),
(288, 23, 62, 14, 'মসুর ডাল মিডিয়াম (১ কেজি)', 'DL02', '100 Kg', 'মসুর ডাল মিডিয়াম ভাল মান সম্পন্ন ডাল।', 'NO', '1 Kg', '80', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696911797473068.jpg', 'public/media/product/1696911797547538.jpg', 'public/media/product/1696911797904032.jpg', 1, NULL, NULL),
(289, 23, 62, 14, 'মুসুর ডাল সাধারণ (১ কেজি)', 'DL03', '100 Kg', 'মুসুর ডাল সাধারণ (১ কেজি)', 'No', '1 KG', '70', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696912031278331.jpg', 'public/media/product/1696912031737543.jpg', 'public/media/product/1696912031915223.jpg', 1, NULL, NULL),
(290, 23, 62, 14, 'বোট ডাল (৫০০ গ্রাম )', 'DL04', '100 Kg', 'বোট ডাল (৫০০ গ্রাম )', 'NO', '500g', '40', '38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696912202451160.jpg', 'public/media/product/1696912202837921.jpg', 'public/media/product/1696912203236403.jpg', 1, NULL, NULL),
(291, 23, 62, 14, 'ফ্রেশ  দেশি মসুর ডাল (১ কেজি)', 'DL05', '100 Kg', 'ফ্রেশ&nbsp; দেশি মসুর ডাল (১ কেজি)', 'NO', '1 KG', '130', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696912405578158.jpg', 'public/media/product/1696912405761824.jpg', 'public/media/product/1696912405807829.jpg', 1, NULL, NULL),
(292, 23, 62, 14, 'মাসের ডাল (৫০০ গ্রাম )', 'DL06', '100 Kg', 'মাসের ডাল (৫০০ গ্রাম )', 'no', '500g', '65', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696912546467725.jpg', 'public/media/product/1696912546627362.jpg', 'public/media/product/1696912546673528.jpg', 1, NULL, NULL),
(293, 23, 62, 14, 'খেঁসারি ডাল (৫০০ গ্রাম)', 'DL07', '100 Kg', 'খেঁসারি ডাল (৫০০ গ্রাম)', 'No', '500g', '40', '35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696912691243381.jpg', 'public/media/product/1696912691253980.jpg', 'public/media/product/1696912691258720.jpg', 1, NULL, NULL),
(294, 23, 62, 14, 'ডাবরি ডাল ( ৫০০ গ্রাম )', 'DL08', '100 Kg', 'ডাবরি ডাল ( ৫০০ গ্রাম )', 'NO', '500g', '30', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696912839957329.jpg', 'public/media/product/1696912839994789.jpg', 'public/media/product/1696912840016198.jpg', 1, NULL, NULL),
(295, 23, 62, 14, 'মটর ডাল ( ৫০০ গ্রাম)', 'DL09', '100 Kg', 'মটর ডাল ( ৫০০ গ্রাম)', 'No', '500g', '55', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696912981280767.jpg', 'public/media/product/1696912981306031.jpg', 'public/media/product/1696912981324591.jpg', 1, NULL, NULL),
(296, 23, 62, 14, 'মটর ডাল ( ১ কেজি)', 'DL10', '100 Kg', 'মটর ডাল ( ১ কেজি)', 'NO', '1 Kg', '110', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696913057798180.jpg', 'public/media/product/1696913057935984.jpg', 'public/media/product/1696913057971204.jpg', 1, NULL, NULL),
(297, 23, 61, 14, 'বুট ডাল ( ১কেজি )', 'DL11', '100 Kg', 'বুট ডাল ( ১কেজি )', 'NO', '1 Kg', '80', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696913174179609.jpg', 'public/media/product/1696913174220549.jpg', 'public/media/product/1696913174256853.jpg', 1, NULL, NULL),
(298, 23, 62, 14, 'মুগের ডাল ফাস্টক্লাস ( ১ কেজি )', 'DL12', '100 Kg', 'মুগের ডাল ফাস্টক্লাস ( ১ কেজি )', 'NO', '1  KG', '150', '140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696913346282961.jpg', 'public/media/product/1696913346304567.jpg', 'public/media/product/1696913346355840.jpg', 1, NULL, NULL),
(299, 23, 62, 14, 'মুগের মিডিয়াম ডাল  ( ১ কেজি )', 'DL13', '100 Kg', 'মুগের মিডিয়াম ডাল&nbsp; ( ১ কেজি )', 'NO', '1 KG', '130', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696913541737186.jpg', 'public/media/product/1696913541981000.jpg', 'public/media/product/1696913542101332.jpg', 1, NULL, NULL),
(300, 23, 62, 14, 'মুগের সাধারণ ডাল  ( ১ কেজি )', 'DL14', '100 Kg', 'মুগের সাধারণ ডাল&nbsp; ( ১ কেজি )', 'No', '1 KG', '110', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696913700094771.gif', 'public/media/product/1696913700188798.gif', 'public/media/product/1696913700216709.gif', 1, NULL, NULL),
(301, 23, 62, 14, 'ছোলা ( ফাস্ট ক্লাস) (১ কেজি)', 'DL15', '100 Kg', 'ছোলা ( ফাস্ট ক্লাস) (১ কেজি)', 'No', '1 Kg', '70', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696913930091062.jpg', 'public/media/product/1696913930417201.jpg', 'public/media/product/1696913930603553.jpg', 1, NULL, NULL),
(302, 23, 62, 14, 'ছোলা ( মিডিয়াম ) (১ কেজি)', 'DL16', '100 Kg', 'ছোলা ( মিডিয়াম ) (১ কেজি)', 'No', '1 Kg', '65', '62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696914052017528.jpg', 'public/media/product/1696914052213154.jpg', 'public/media/product/1696914052300576.jpg', 1, NULL, NULL),
(303, 23, 62, 14, 'ACI Pure Mosur Dal (1 KG)', 'DL17', '100 Kg', 'ACI Pure Mosur Dal (1 KG)', 'No', '1 Kg', '140', '130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696914234242344.jpeg', 'public/media/product/1696914234597248.jpeg', 'public/media/product/1696914234726748.jpeg', 1, NULL, NULL),
(304, 23, 63, 37, 'বসুন্ধরা সয়াবিন তেল ( ৫ লিটার )', 'TL01', '100 L', 'বসুন্ধরা সয়াবিন তেল ( ৫ লিটার )', 'No', '5L', '650', '640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696915564633853.jpg', 'public/media/product/1696915564872782.png', 'public/media/product/1696915565371771.jpg', 1, NULL, NULL),
(305, 12, 21, 14, 'Seclo Mups (১ পাতা) - স্কয়ার', 'MEG03', '255', 'Seclo Mups (১ পাতা) - স্কয়ার', 'NO', 'No', '75', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696991471804277.jpg', 'public/media/product/1696991471849469.jpg', 'public/media/product/1696991472080300.jpg', 1, NULL, NULL),
(306, 12, 21, 14, 'Sergel 20 mg (১ পাতা)', 'MEG05', '244', 'Sergel 20 mg (১ পাতা)&nbsp;', 'NO', 'NO', '70', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696992093080356.jpg', 'public/media/product/1696992093098297.jpg', 'public/media/product/1696992093108766.jpg', 1, NULL, NULL),
(307, 12, 21, 14, 'Sergel 40 mg (১ পাতা)', 'MEG05', '344', 'Sergel 40 mg (১ পাতা)&nbsp;', 'NO', 'No', '100', '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696992375107044.jpg', 'public/media/product/1696992375146497.jpg', 'public/media/product/1696992375158059.jpg', 1, NULL, NULL),
(308, 12, 21, 14, 'Losectil 20 mg (১ পাতা) SK+F', 'MEG06', '299', 'Losectil 20 mg (১ পাতা) SK+F', 'NO', 'NO', '50', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696992700990191.jpg', 'public/media/product/1696992701045076.jpg', 'public/media/product/1696992701060181.jpg', 1, NULL, NULL),
(309, 12, 17, 14, 'Losectil 40 mg (১ পাতা) SK+F', 'MEG07', '200', 'Losectil 40 mg (১ পাতা) SK+F', 'No', 'No', '50', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696992896903804.jpg', 'public/media/product/1696992897166841.jpg', 'public/media/product/1696992897239585.jpg', 1, NULL, NULL),
(310, 12, 17, 14, 'Pentonix 20mg (১ পাতা) incepta', 'MEG11', '300', 'Pentonix 20mg (১ পাতা)&nbsp;incepta', 'no', 'no', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696993514005059.jpg', 'public/media/product/1696993516372936.jpg', 'public/media/product/1696993516464247.jpg', 1, NULL, NULL),
(311, 12, 21, 14, 'Pentonix 40mg (১ পাতা) incepta', 'MEG12', '222', 'Pentonix 40mg (১ পাতা)&nbsp;incepta', 'No', 'NO', '100', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696993718966185.jpg', 'public/media/product/1696993719021803.jpg', 'public/media/product/1696993719032061.jpg', 1, NULL, NULL),
(312, 12, 21, 14, 'Esonix 20mg - (১ পাতা) incepta', 'MEG14', '222', 'Esonix 20mg - (১ পাতা) incepta', 'no', 'no', '70', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696994107162186.jpg', 'public/media/product/1696994107178208.jpg', 'public/media/product/1696994107186996.jpg', 1, NULL, NULL),
(313, 12, 21, 14, 'Finix 20mg - (১ পাতা) Opsonin', 'MEG15', '333', 'Finix 20mg - (১ পাতা) Opsonin', 'no', 'no', '130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696994283033442.jpg', 'public/media/product/1696994283048435.jpg', 'public/media/product/1696994283057599.jpg', 1, NULL, NULL),
(314, 12, 21, 14, 'Finix 10mg - (১ পাতা) Opsonin', 'MEG16', '333', 'Finix 10mg - (১ পাতা) Opsonin', 'NO', 'NO', '35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696994478197289.jpg', 'public/media/product/1696994478352877.jpg', 'public/media/product/1696994478419112.jpg', 1, NULL, NULL),
(315, 12, 21, 14, 'Xorel 20mg - (১ পাতা)', 'MEG16', '234', 'Xorel 20mg - (১ পাতা)&nbsp;', 'NO', 'NO', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696994642489831.jpg', 'public/media/product/1696994642511078.jpg', 'public/media/product/1696994642525321.jpg', 1, NULL, NULL),
(316, 12, 21, 14, 'Rabe 20mg - (১ পাতা) The IBNESINA', 'MEG16', '233', 'Rabe 20 mg - (১ পাতার) The IBN SINA', 'NO', 'NO', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1696994855397690.jpg', 'public/media/product/1696994855433490.jpg', 'public/media/product/1696994855444277.jpg', 1, NULL, NULL),
(317, 20, 54, 14, 'ঘাসফুল সুতি শাড়ি', 'S0C3', '300', '<p>মেটারিয়ালঃ- কটন সুতা দিয়ে তৈরি।</p><p><span style=\"font-size: 0.875rem;\">কালার ১০০% গেরান্টি।</span></p>', 'NO', 'No', '1000', '899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697027001011469.jpg', 'public/media/product/1697027001182158.jpg', 'public/media/product/1697027001231865.jpg', 1, NULL, NULL),
(318, 20, 54, 14, 'পর্পকন কোঠা খেশ সুতি শাড়ি', 'S0C4', '444', '<p>পর্পকন কোঠা খেশ সুতি শাড়ি</p><p>মেটারিয়ালঃ-&nbsp; সুতা সুতি দিয়ে তৈরি।&nbsp; কালার ১০০% গেরান্টি।<br></p>', 'সাদা,কালো,আকাশি,লালচে', 'no', '950', '749', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697027462734253.jpg', 'public/media/product/1697027463141768.jpg', 'public/media/product/1697027463398473.jpg', 1, NULL, NULL),
(319, 20, 49, 14, 'জামদানী শাড়ি - ১৩.৫ হাত লম্বা', 'S0C5', '343', '<p>পণ্যের নামঃ জামদানী শাড়ি&nbsp; &nbsp;</p><p>মেটালিয়ালঃ গ্যাস জামদানী শাড়ি&nbsp; লম্বাঃ ১৩.৫ হাত।</p><p>কালার ১০০% গেরান্টি। \r\n\r\n             </p>', 'NO', 'No', '1600', '1449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697028124539215.jpg', 'public/media/product/1697028124576866.jpg', 'public/media/product/1697028124667871.jpg', 1, NULL, NULL),
(320, 20, 49, 14, 'মাসলাইস কটন  শাড়ি - ১২.৫ হাত', 'S0C6', '345', '<p>&nbsp;পণ্যের নামঃ মাসলাইস কটন&nbsp; শাড়ি।&nbsp; </p><p>মেটারিয়ালঃ- মাসলাইস সুতা দিয়ে তৈরি।</p><p> লম্বাঃ-১২.৫ হাত।</p><p>কালার ১০০% গেরান্টি।</p>', 'ANY', 'NO', '1550', '1410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697028801673264.jpg', 'public/media/product/1697028801951374.jpg', 'public/media/product/1697028801990825.jpg', 1, NULL, NULL),
(321, 20, 51, 14, 'হাঁপ সিল্ক চুমকি  শাড়ি - ১২.৫ হাত', 'S0C7', '455', '<p>পণ্যের নামঃ হাঁপ সিল্ক চুমকি&nbsp; শাড়ি।&nbsp; &nbsp;</p><p>মেটারিয়ালঃ-সিল্ক আর&nbsp; সুতি সুতা দিয়ে তৈরি।&nbsp;</p><p> লম্বাঃ-১২.৫ হাত।কালার ১০০% গেরান্টি। \r\n\r\n             </p>', 'ANY', 'NO', '800', '720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697029716201988.jpg', 'public/media/product/1697029716239930.jpg', 'public/media/product/1697029716298434.jpg', 1, NULL, NULL),
(322, 20, 51, 14, 'পর্পকন খেশ  শাড়ি - ১২.৫ হাত', 'S0C9', '245', '<p>পণ্যের নামঃ পর্পকন খেশ&nbsp; শাড়ি।&nbsp; </p><p>মেটারিয়ালঃ-সিল্ক আর&nbsp; সুতি সুতা দিয়ে তৈরি।&nbsp;</p><p> লম্বাঃ-১২.৫ হাত।</p><p>কালার ১০০% গেরান্টি। \r\n\r\n             </p>', 'No', 'No', '900', '820', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697083864819918.jpg', 'public/media/product/1697083865499162.jpg', 'public/media/product/1697083865948153.jpg', 1, NULL, NULL),
(323, 20, 54, 14, 'আরজিনাল সুতি শাড়ি -১২.৫ হাত', 'S0C10', '344', '<p>পণ্যের নামঃআরজিনাল সুতি শাড়ি।</p><p> মেটারিয়ালঃ-সুতি সুতা দিয়ে তৈরি। </p><p>লম্বাঃ-১২.৫ হাত।কালার ১০০% গেরান্টি।</p>', 'ANY', 'NO', '979', '849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697084334207707.jpg', 'public/media/product/1697084334552121.jpg', 'public/media/product/1697084335039151.jpg', 1, NULL, NULL),
(324, 20, 49, 14, 'জামদানী শাড়ি -  ১২.৫ হাত', 'S0C11', '343', '<p>পণ্যের নামঃ জামদানী শাড়ি।&nbsp;</p><p> &nbsp;মেটারিয়ালঃ-&nbsp; সিল্ক আর সুতি সুতা দিয়ে তৈরি।&nbsp;</p><p> লম্বাঃ-১২.৫ হাত।</p><p>কালার ১০০% গেরান্টি। \r\n\r\n             </p>', 'ANY', 'NO', '1000', '860', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697086471420869.jpg', 'public/media/product/1697086471443398.jpg', 'public/media/product/1697086471516676.jpg', 1, NULL, NULL),
(325, 20, 51, 14, 'মনিপরী হাপ সিল্ক শাড়ি -১২.৫ হাত', 'S0C12', '245', '<p>পণ্যের নামঃ মনিপরী হাপ সিল্ক শাড়ি।</p><p>মেটারিয়ালঃ-&nbsp; সিল্ক আর সুতি সুতা দিয়ে তৈরি।</p><p><span style=\"font-size: 0.875rem;\">&nbsp;লম্বাঃ-১২.৫ হাত।</span></p><p><span style=\"font-size: 0.875rem;\">কালার ১০০% গেরান্টি।</span></p>', 'ANY', 'NO', '1050', '949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697087024532170.jpg', 'public/media/product/1697087024571424.jpg', 'public/media/product/1697087024886752.jpg', 1, NULL, NULL),
(326, 20, 51, 14, 'আমপাড় সিল্ক শাড়ি -১৩ হাত', 'S0C13', '355', '<p>পণ্যের নামঃ আমপাড় সিল্ক শাড়ি।&nbsp;</p><p> &nbsp;মেটারিয়ালঃ-&nbsp; সিল্ক আর রেওন সুতা দিয়ে তৈরি।&nbsp;</p><p> লম্বাঃ-১৩ হাত।</p><p>কালার ১০০% গেরান্টি। \r\n\r\n             </p>', 'ANY', 'NO', '800', '699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697087353380683.jpg', 'public/media/product/1697087353618057.jpg', 'public/media/product/1697087354041035.jpg', 1, NULL, NULL),
(327, 20, 49, 14, 'নাকফুল জামদানী -১৩ হাত', 'S0C14', '455', '<p>পণ্যের নামঃ নাকফুল জামদানী&nbsp; &nbsp;</p><p>মেটারিয়ালঃ- সিল্ক আর সুতি সুতা দিয়ে তৈরি।&nbsp;</p><p> লম্বাঃ-১৩ হাত।</p><p>কালার ১০০% গেরান্টি। \r\n\r\n             </p>', 'ANY', 'NO', '1200', '1050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/150421_06_03_46.jpg', 'public/media/product/1697087573423288.jpg', 'public/media/product/1697087573564116.jpg', 1, NULL, NULL),
(328, 20, 51, 14, 'হাঁপ সিল্ক শাড়ি  -১২ হাত', 'S0C15', '343', '<p>পণ্যের নামঃ হাঁপ সিল্ক শাড়ি।</p><p>মেটারিয়ালঃ- সিল্ক আর সুতি সুতা দিয়ে তৈরি।&nbsp;</p><p> লম্বাঃ-১২ হাত। </p><p>কালার ১০০% গেরান্টি। \r\n\r\n             </p>', 'ANY', 'NO', '499', '399', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697087833205626.jpg', 'public/media/product/1697087833500651.jpg', 'public/media/product/1697087833653702.jpg', 1, NULL, NULL),
(329, 23, 63, 33, 'ফ্রেশ সয়াবিন তেল (৫ লিটার )', 'TL02', '100 L', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">ফ্রেশ সয়াবিন তেল ৫ লিটার</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">. Fresh Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin</span>', 'No', '5L', '670', '650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697102122275638.jpg', 'public/media/product/1697102123124946.jpg', 'public/media/product/1697102123462487.jpg', 1, NULL, NULL),
(330, 23, 63, 38, 'রূপচাঁদা সয়াবিন তৈল (৫ লিটার)', 'TL03', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">রূপচাঁদা সয়াবিন তৈল&nbsp;&nbsp;Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin</font>', 'NO', '5L', '670', '650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697102852217805.png', 'public/media/product/1697102854001948.png', 'public/media/product/1697102855074574.png', 1, NULL, NULL),
(331, 23, 63, 40, 'পুষ্টি সয়াবিন তৈল ( ৫ লিটার )', 'TL04', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">পুষ্টি সয়াবিন তৈল ( ৫ লিটার )&nbsp;</font><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin</span>', 'No', '5L', '690', '655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697103371230014.jpg', 'public/media/product/1697103371318711.jpg', 'public/media/product/1697103371340386.jpg', 1, NULL, NULL),
(332, 23, 63, 31, 'তীর সয়াবিন তৈল ( ৫ লিটার )', 'TL05', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">তীর সয়াবিন তৈল ( ৫ লিটার )&nbsp;&nbsp;Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin</font>', 'No', '5L', '680', '650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697103594635928.jpg', 'public/media/product/1697103594722980.jpg', 'public/media/product/1697103594817342.jpg', 1, NULL, NULL),
(333, 23, 63, 33, 'ফ্রেশ সয়াবিন তৈল ( ২ লিটার )', 'TL06', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">ফ্রেশ সয়াবিন তৈল&nbsp;&nbsp;</font><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin</span>', 'NO', '2L', '300', '274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697103784416567.jpg', 'public/media/product/1697103784483776.jpg', 'public/media/product/1697103784508672.jpg', 1, NULL, NULL),
(334, 23, 63, 38, 'রূপচাঁদা সয়াবিন তৈল (২ লিটার)', 'TL07', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">রূপচাঁদা সয়াবিন তৈল Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;</font>', 'No', '2L', '280', '270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697104074747848.jpg', 'public/media/product/1697104074771181.jpg', 'public/media/product/1697104074938967.jpg', 1, NULL, NULL),
(335, 23, 63, 31, 'তীর সয়াবিন তৈল  ( ২ লিটার )', 'TL08', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">তীর সয়াবিন তৈল&nbsp;</font><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;</span>', 'No', '2L', '280', '270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697104383919241.jpg', 'public/media/product/1697104384017801.jpg', 'public/media/product/1697104384072540.jpg', 1, NULL, NULL),
(336, 23, 63, 32, 'ACI সয়াবিন তৈল ( ২ লিটার )', 'Tl09', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">ACI সয়াবিন তৈল&nbsp; Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;&nbsp;</font>', 'No', '2L', '290', '275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697104695366221.jpg', 'public/media/product/1697104695438100.jpg', 'public/media/product/1697104695445621.jpg', 1, NULL, NULL),
(337, 23, 61, 32, 'ACI সয়াবিন তৈল ( ৫ লিটার )', 'TL10', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">ACI সয়াবিন তৈল&nbsp;Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;</font>', 'No', '5L', '670', '650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697105046437855.jpg', 'public/media/product/1697105046511314.jpg', 'public/media/product/1697105046535694.jpg', 1, NULL, NULL),
(338, 23, 63, 31, 'তীর সয়াবিন তৈল (৩ লিটার )', 'TL11', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">তীর সয়াবিন তৈল&nbsp; Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;</font>', 'NO', '3L', '420', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697105219686561.png', 'public/media/product/1697105220291539.png', 'public/media/product/1697105221101844.png', 1, NULL, NULL),
(339, 23, 63, 31, 'তীর সয়াবিন তৈল (৩ লিটার )', 'TL11', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">তীর সয়াবিন তৈল&nbsp; Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;</font>', 'NO', '3L', '420', '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697105232200856.png', 'public/media/product/1697105232927030.png', 'public/media/product/1697105233776202.png', 1, NULL, NULL),
(340, 23, 61, 38, 'রূপচাঁদা সয়াবিন তৈল (৩ লিটার)', 'TL12', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">রূপচাঁদা সয়াবিন তৈল&nbsp;&nbsp;</font><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;</span>', 'No', '3L', '430', '405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697105413146124.png', 'public/media/product/1697105413670254.png', 'public/media/product/1697105413918120.png', 1, NULL, NULL),
(341, 23, 63, 38, 'রূপচাঁদা সয়াবিন তৈল (১ লিটার)', 'TL13', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">রূপচাঁদা সয়াবিন তৈল&nbsp;&nbsp;</font><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin&nbsp;</span>', 'NO', '1L', '150', '137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697105532878254.jpg', 'public/media/product/1697105532948993.jpg', 'public/media/product/1697105533006980.jpg', 1, NULL, NULL),
(342, 23, 63, 38, 'রূপচাঁদা সয়াবিন তৈল (১/২ লিটার)', 'TL14', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">রূপচাঁদা সয়াবিন তৈল&nbsp;&nbsp;</font><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin.</span>', 'NO', '500ml', '75', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697105741408000.jpg', 'public/media/product/1697105741432536.jpg', 'public/media/product/1697105741436741.jpg', 1, NULL, NULL),
(343, 23, 63, 31, 'তীর সয়াবিন তৈল  ( ১ লিটার )', 'TL15', '100 L', '<font color=\"#4d5156\" face=\"arial, sans-serif\">তীর সয়াবিন তৈল&nbsp;</font><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming &amp; Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 &amp; 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin.</span>', 'NO', '1L', '145', '137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697105961095580.jpg', 'public/media/product/1697105961308504.jpg', 'public/media/product/1697105961514129.jpg', 1, NULL, NULL),
(344, 23, 63, 14, 'সিরাজ  সরিষার তৈল ( ১ লিটার )', 'TL17', '100 L', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">সিরাজ&nbsp; সরিষার তৈল যে কারখানায় ক্রেতার সামনেই&nbsp;</span></font><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'NO', '1L', '200', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697106311140550.jpeg', 'public/media/product/1697106311200911.jpeg', 'public/media/product/1697106311354741.jpeg', 1, NULL, NULL),
(345, 23, 63, 14, 'সিরাজ  সরিষার তৈল ( ১/২ লিটার )', 'TL18', '100 L', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">সিরাজ&nbsp; সরিষার তৈল&nbsp;যে কারখানায় ক্রেতার সামনেই&nbsp;</span></font><span style=\"font-weight: bolder; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'No', '500ml', '110', '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697106398629806.jpeg', 'public/media/product/1697106398716828.jpeg', 'public/media/product/1697106398740786.jpeg', 1, NULL, NULL),
(346, 23, 63, 14, 'সিরাজ  সরিষার তৈল ( ২৫০ মিলি.)', 'TL18', '100 L', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">সিরাজ&nbsp; সরিষার তৈল&nbsp;যে কারখানায় ক্রেতার সামনেই&nbsp;</span></font><span style=\"font-weight: bolder; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'NO', '250ml', '50', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697106512919583.jpeg', 'public/media/product/1697106513127000.jpeg', 'public/media/product/1697106513474075.jpeg', 1, NULL, NULL),
(347, 23, 63, 14, 'রাঁধুনি সরিষার তৈল ( ১ লিটার )', 'TL19', '100 L', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">রাঁধুনি সরিষার তৈল&nbsp;</span></font><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">যে কারখানায় ক্রেতার সামনেই&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'No', '1L', '235', '225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697106727324646.jpg', 'public/media/product/1697106727506670.jpg', 'public/media/product/1697106728206806.jpg', 1, NULL, NULL),
(348, 23, 63, 14, 'রাঁধুনি সরিষার তৈল ( ১/২ লিটার )', 'TL20', '100 L', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">রাঁধুনি সরিষার তৈল&nbsp;</span></font><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">যে কারখানায় ক্রেতার সামনেই&nbsp;</span><span style=\"font-weight: bolder; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'NO', '500ml', '125', '115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697106825974278.jpg', 'public/media/product/1697106826003629.jpg', 'public/media/product/1697106826104537.jpg', 1, NULL, NULL),
(349, 23, 63, 14, 'স্বস্তির সরিষার তৈল ( ১ লিটার )', 'TL21', '100 L', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">স্বস্তির সরিষার তৈল&nbsp;&nbsp;</span></font><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">যে কারখানায় ক্রেতার সামনেই&nbsp;</span><span style=\"font-weight: bolder; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'No', '1L', '200', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697107038121993.png', 'public/media/product/1697107038273416.png', 'public/media/product/1697107038305623.png', 1, NULL, NULL),
(350, 23, 63, 14, 'স্বস্তির সরিষার তৈল ( ১/২ লিটার )', 'TL22', '100 L', 'স্বস্তির সরিষার তৈল&nbsp;<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">যে কারখানায় ক্রেতার সামনেই&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'No', '500ml', '100', '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697107234247712.png', 'public/media/product/1697107234295923.png', 'public/media/product/1697107234363875.png', 1, NULL, NULL),
(351, 23, 61, 14, 'স্বস্তির সরিষার তৈল ( 2৫০ মিলি.)', 'TL23', '100 L', 'স্বস্তির সরিষার তৈল&nbsp;<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">যে কারখানায় ক্রেতার সামনেই&nbsp;</span><span style=\"font-weight: bolder; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">সরিষা</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;থেকে তেল তৈরি করা হয়। যে তেলে কোনো প্রিজারভেটিভ, ঝাঁজ বাড়ানোর কেমিক্যাল, কৃত্রিম রং ও ভেজাল নেই।</span>', 'NO', '250ml', '50', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697107364309209.png', 'public/media/product/1697107364529383.png', 'public/media/product/1697107364621151.png', 1, NULL, NULL),
(352, 27, NULL, 14, 'Slider 1', '001', '01', 'First Slider', 'no', 'x,l', '22', '01', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697152938832531.jpg', 'public/media/product/1697152938926664.jpg', 'public/media/product/1697152938943608.jpg', 1, NULL, NULL),
(353, 12, 21, 14, 'xeldrin 10mg - ( ১পাতা )', 'MEG17', '455', 'xeldrin 10mg - ( ১পাতা )', 'NO', 'NO', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697297890175541.jpg', 'public/media/product/1697297890375655.jpg', 'public/media/product/1697297890388524.jpg', 1, NULL, NULL),
(354, 12, 21, 14, 'xeldrin 20mg - ( ১পাতা )  ACI', 'MEG18', '345', 'xeldrin 20mg - ( ১পাতা )&nbsp; ACI', 'NO', 'NO', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697298084553330.jpg', 'public/media/product/1697298084806430.jpg', 'public/media/product/1697298084987731.jpg', 1, NULL, NULL),
(355, 12, 21, 14, 'xeldrin 40mg - ( ১পাতা )  ACI', 'MEG19', '355', 'xeldrin 40mg - ( ১পাতা )&nbsp; ACI', 'NO', 'NO', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697298200325046.jpg', 'public/media/product/1697298200421896.jpg', 'public/media/product/1697298200434260.jpg', 1, NULL, NULL),
(356, 27, NULL, 14, 'Slider 02', '2000', '1', 'Slider 02', 'NO', 'No\'', '2', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697301666382200.jpg', 'public/media/product/1697301666468914.jpg', 'public/media/product/1697301666488447.jpg', 1, NULL, NULL),
(357, 12, 21, 14, 'maxpro 20 mg - ১ পাতা', 'MEG21', '324', 'maxpro 20 mg - ১ পাতা&nbsp;', 'NO', 'NO', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697385290353616.jpg', 'public/media/product/1697385290455767.jpg', 'public/media/product/1697385290519534.jpg', 1, NULL, NULL),
(358, 12, 21, 41, 'Entacyd plus 20 mg - ১ পাতা', 'MEG23', '255', 'Entacyd plus 20 mg - ১ পাতা', 'NO', 'NO', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697385477164937.jpg', 'public/media/product/1697385477262916.jpg', 'public/media/product/1697385477806942.jpg', 1, NULL, NULL),
(359, 12, 21, 14, 'Maxima 20 mg - ১ পাতা', 'MEG24', '255', 'Maxima 20 mg - ১ পাতা', 'NO', 'NO', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697385646653496.jpg', 'public/media/product/1697385646705553.jpg', 'public/media/product/1697385646719757.jpg', 1, NULL, NULL),
(360, 12, 21, 14, 'Acifix 20 mg - ১ পাতা', 'MEG25', '355', 'Acifix 20 mg - ১ পাতা', 'NO', 'NO', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697385861194865.jpg', 'public/media/product/1697385861451174.jpg', 'public/media/product/1697385861512997.jpg', 1, NULL, NULL),
(361, 12, 21, 14, 'Dexclan 30 mg - ১ পাতা', 'MEG25', '233', 'Dexlan 30 mg - ১ পাতা', 'NO', 'NO', '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697386089545752.jpg', 'public/media/product/1697386089629860.jpg', 'public/media/product/1697386089649749.jpg', 1, NULL, NULL),
(362, 12, 17, 43, 'Pantid 20 mg - ১ পাতা', 'MEG26', '255', 'Pantid 20 mg - ১ পাতা', 'NO', 'NO', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697386854046082.jpg', 'public/media/product/1697386854133008.jpg', 'public/media/product/1697386854157380.jpg', 1, NULL, NULL),
(363, 12, 21, 43, 'Esotid 20 mg - ১ পাতা', 'MEG28', '255', 'Esotid 20 mg - ১ পাতা', 'NO', 'NO', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697387165359182.jpg', 'public/media/product/1697387165442299.jpg', 'public/media/product/1697387165497087.jpg', 1, NULL, NULL),
(364, 12, 21, 43, 'Ometid 20 mg - ১ পাতা', 'MEG29', '255', 'Ometid 20 mg - ১ পাতা', 'NO', 'NO', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697387664094641.jpg', 'public/media/product/1697387664212991.jpg', 'public/media/product/1697387664584782.jpg', 1, NULL, NULL),
(365, 12, 17, 14, 'Progut 20 mg - ১ পাতা', 'MEG30', '255', 'Progut 20 mg - ১ পাতা', 'No', 'NO', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697388327478979.jpg', 'public/media/product/1697388327605501.jpg', 'public/media/product/1697388327617404.jpg', 1, NULL, NULL),
(366, 12, 21, 14, 'Omegut 20 mg - ১ পাতা', 'MEG32', '255', 'Omegut 20 mg - ১ পাতা', 'NO', 'NO', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1697388566868904.jpg', 'public/media/product/1697388566885205.jpg', 'public/media/product/1697388566895399.jpg', 1, NULL, NULL),
(367, 16, 37, 14, 'চিকেন স্যান্ডউইচ প্রতি পিস', 'F0001', '250', 'চিকেন স্যান্ডউইচ', 'no', 'no', '60', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/100521_15_32_37.jpg', 'public/media/product/1699385778384320.jpg', 'public/media/product/1699385778480640.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Nur Super Shop Online Store', 'Nursupershop', 'Largest Online Store', 'NurSuperShop is the largest online store in Bangladesh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adderss` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `adderss`, `logo`, `created_at`, `updated_at`) VALUES
(1, '5', '10', 'udemy shop', 'udemy@gmail.com', '6546546546464', 'udemy usa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(9, '13', 'nursuper', '01768829277', 'jack@gmail.com', 'stihati', 'Dhaka', NULL, NULL),
(10, '25', 'হাসান', '01737892323', 'সুন্দরবন', 'ছাতিহাটি, কালিহাতি, টাংগাইল', 'ঢাকা', NULL, NULL),
(11, '26', 'Din', '01929637524', NULL, 'Shatihati', 'Shatihati', NULL, NULL),
(12, '27', 'Guinevere Hobbs', '+1 (778) 222-6421', 'radugoron@mailinator.com', 'Ab earum ab et occae', 'Voluptatem dignissi', NULL, NULL),
(13, '28', 'Md Rasel', '01518400849', NULL, 'Bhuapur', 'Bhuapur', NULL, NULL),
(14, '29', 'Abul Haydar', '01616964552', 'bKash', 'Sakhipur, Tangail', 'Sakhipur', NULL, NULL),
(15, '30', 'ASM Delowar Hossain', '01713585542', NULL, 'MBSTU, Santosh', 'Tangail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '01728672958', '01780004529', 'support@nursupershop.com', 'নূর সুপার শপ', 'ছাতিহাটি, কালিহাতি, টাংগাইল', 'facebok.com/nursupershopcom', 'youtube.com/#', 'instragram.com/#', 'twitter.com/#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tshirt Update', NULL, NULL),
(2, 2, 'Pant', NULL, NULL),
(4, 4, 'Home item update', NULL, NULL),
(6, 8, 'Mobiles', NULL, NULL),
(7, 8, 'Tablets', NULL, NULL),
(8, 8, 'Laptops', NULL, NULL),
(9, 9, 'Bath & Body', NULL, NULL),
(10, 9, 'Beauty Tools', NULL, NULL),
(11, 9, 'Skin Care', NULL, NULL),
(12, 10, 'Women\'s Jackets', NULL, NULL),
(13, 10, 'Women\'s  Coats', NULL, NULL),
(14, 11, 'Gents Watch', NULL, NULL),
(15, 11, 'Womans Watch', NULL, NULL),
(16, 11, 'Kids Watch', NULL, NULL),
(17, 12, 'সকল মেডিসিন', NULL, NULL),
(18, 12, 'স্যালাইন', NULL, NULL),
(19, 12, 'মহিলা-স্পেশাল', NULL, NULL),
(21, 12, 'গ্যাস্ট্রিক', NULL, NULL),
(22, 12, 'ফাস্ট এইড', NULL, NULL),
(23, 13, 'ফেশ ওয়াশ', NULL, NULL),
(24, 13, 'ক্রিম', NULL, NULL),
(25, 13, 'লিপস্টিক', NULL, NULL),
(26, 13, 'লোশন', NULL, NULL),
(27, 13, 'তৈল', NULL, NULL),
(28, 13, 'শ্যাম্পু', NULL, NULL),
(29, 13, 'বডি স্প্রে', NULL, NULL),
(30, 13, 'জুয়েলারি', NULL, NULL),
(31, 13, 'মেরিল', NULL, NULL),
(32, 13, 'মেকাপ', NULL, NULL),
(33, 13, 'সাবান', NULL, NULL),
(34, 14, 'সকল ফল', NULL, NULL),
(35, 14, 'খেজুর', NULL, NULL),
(36, 15, 'ফনিন্দ্র মিষ্টি', NULL, NULL),
(37, 16, 'ফাস্টফুড', NULL, NULL),
(38, 16, 'রেস্টুরেন্ট', NULL, NULL),
(39, 16, 'বিরিয়ানি', NULL, NULL),
(40, 16, 'বেকারি', NULL, NULL),
(41, 17, 'ইসলামিক বই', NULL, NULL),
(42, 17, 'প্রথম শ্রেণী - দশম শ্রেণী (গাইড বই)-স্কুল', NULL, NULL),
(43, 17, 'একাদশ - দ্বাদশ (বই+গাইড)-কলেজ', NULL, NULL),
(44, 17, 'বিশ্ববিদ্যালয় ভর্তি গাইড', NULL, NULL),
(45, 17, 'অন্যন্য বই', NULL, NULL),
(46, 19, 'বাল্ব', NULL, NULL),
(47, 19, 'ফ্যান', NULL, NULL),
(48, 19, 'অন্যন্য', NULL, NULL),
(49, 20, 'জামদানি', NULL, NULL),
(50, 20, 'জুম শাড়ি', NULL, NULL),
(51, 20, 'হাফ সিল্ক', NULL, NULL),
(52, 20, 'মসলিন', NULL, NULL),
(53, 20, 'কাপল ড্রেস', NULL, NULL),
(54, 20, 'সুতি শাড়ি', NULL, NULL),
(55, 20, 'প্রিন্ট শাড়ি', NULL, NULL),
(56, 20, 'থ্রিপিচ', NULL, NULL),
(57, 21, 'টি-শার্ট', NULL, NULL),
(58, 21, 'শার্ট', NULL, NULL),
(59, 21, 'প্যান্ট', NULL, NULL),
(60, 21, 'পুরুষ স্পেশাল', NULL, NULL),
(61, 23, 'চাল', NULL, NULL),
(62, 23, 'ডাল', NULL, NULL),
(63, 23, 'ভোজ্য তৈল', NULL, NULL),
(64, 23, 'মশলা', NULL, NULL),
(65, 23, 'লবন ও চিনি', NULL, NULL),
(66, 22, 'হ্যান্ড সেনিটাইজার', NULL, NULL),
(67, 23, 'অন্যান্য', NULL, NULL),
(68, 22, 'সবজি', NULL, NULL),
(69, 22, 'এলপিজি-গ্যাস', NULL, NULL),
(70, 22, 'মাছ', NULL, NULL),
(71, 22, 'মাংস', NULL, NULL),
(72, 22, 'কাচা-সবজি', NULL, NULL),
(73, 22, 'অন্যান্য', NULL, NULL),
(74, 16, 'মধু', NULL, NULL),
(75, 16, 'দুগ্ধজাত পন্য', NULL, NULL),
(76, 13, 'মহিলা স্পেশাল', NULL, NULL),
(77, 13, 'মেহেদি', NULL, NULL),
(78, 22, 'সেভিং', NULL, NULL),
(79, 22, 'মুখের যত্ন', NULL, NULL),
(80, 22, 'টিস্যু এবং উইপস', NULL, NULL),
(81, 22, 'ক্লিনার', NULL, NULL),
(82, 23, 'চা পাতা', NULL, NULL),
(83, 16, 'আচার', NULL, NULL),
(84, 23, 'নুডলস ও স্যুপ', NULL, NULL),
(85, 23, 'সেমাই ও সুজি', NULL, NULL),
(86, 23, 'আটা-ময়দা', NULL, NULL),
(87, 23, 'পাস্তা ও ম্যাকারন', NULL, NULL),
(88, 22, 'গুড়া সাবান', NULL, NULL),
(89, 25, 'প্যাম্পাস', NULL, NULL),
(90, 25, 'বাথ ও স্কিন কেয়ার', NULL, NULL),
(91, 25, 'পোষাক', NULL, NULL),
(92, 12, 'কফ সিরাপ', NULL, NULL),
(93, 12, 'ভিটামিন সিরাপ', NULL, NULL),
(94, 12, 'কোভিট-১৯', NULL, NULL),
(95, 26, 'রিম ও খাতা', NULL, NULL),
(96, 26, 'কলম ও পেন্সিল', NULL, NULL),
(97, 26, 'বক্স', NULL, NULL),
(98, 26, 'অন্যান্য', NULL, NULL),
(99, 16, 'বিস্কুট', NULL, NULL),
(100, 25, 'খেলনা', NULL, NULL),
(101, 19, 'ফোন কাভার', NULL, NULL),
(102, 19, 'চার্জার ও ব্যাটারি', NULL, NULL),
(103, 19, 'পেনড্রাইভ ও মেমোরি', NULL, NULL),
(104, 19, 'লাইট', NULL, NULL),
(105, 19, 'ঘড়ি', NULL, NULL),
(106, 16, 'রমজান স্পেশাল', NULL, NULL),
(107, 17, 'প্রথম-দশম (গাইড বই)-মাদ্রাসা', NULL, NULL),
(108, 17, 'একাদশ-দ্বাদশ (বই+গাইড)-আলিম', NULL, NULL),
(109, 15, 'টাংগাইলের সকল মিষ্টি', NULL, NULL),
(110, 13, 'হ্যান্ড ওয়াশ', NULL, NULL),
(111, 13, 'হ্যান্ড স্যানিটাইজার', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(34, 'হাসান', '01737892323', NULL, NULL, NULL, NULL, NULL, '$2y$10$oM6uMcEWF.Kl5E/yH0rRYO7oubMpTgQXucNmx71L4h2Mfb35fy71i', NULL, '2021-04-12 05:34:20', '2021-04-12 05:34:20'),
(35, 'Din', '01929637524', NULL, NULL, NULL, NULL, NULL, '$2y$10$cI36UrKvuN1.1JQWBtY92u9emq9dvMP20MuQ5lcWYRLguul8GOYCC', NULL, '2021-04-12 11:12:45', '2021-04-12 11:12:45'),
(36, 'Hyacinth Harrison', '+1 (984) 625-5328', NULL, NULL, NULL, NULL, NULL, '$2y$10$q8TR22r/NNGNfCeMZoOxcuNsEjobwfKT4xkPuKBNSteYxlBep1vz.', NULL, '2021-04-13 13:58:55', '2021-04-13 13:58:55'),
(37, 'Md Rasel', '01518400849', NULL, NULL, NULL, NULL, NULL, '$2y$10$ZKXP6wwYJ8IsxP/sPoAopuysvNZBRLnIkSugUaa22cRqFInTTY5XG', NULL, '2021-04-15 19:22:40', '2021-04-15 19:22:40'),
(38, 'Jahid', '01301235863', NULL, NULL, NULL, NULL, NULL, '$2y$10$UYkjO2yvP6wdzz8LxuL9l.DWTKilzeXVMKp6MtUTHcS8zcqqJsGfK', NULL, '2021-04-15 20:18:19', '2021-04-15 20:18:19'),
(39, 'Abul Haydar', '01616964552', NULL, NULL, NULL, NULL, NULL, '$2y$10$OiGbOIIS2APZdqc.VO76VecrdQ9i5/gEfIJcdklkgr9xBbchneucK', NULL, '2021-04-16 15:04:03', '2021-04-16 15:04:03'),
(40, 'Lukman Hakim Judge', '+8801963180836', NULL, NULL, NULL, NULL, NULL, '$2y$10$ISWZyUpEanBcfoUt.iTIT.9oEABIlK0A.bAeUDh/SzAvyo9uzrai.', NULL, '2021-04-17 07:21:15', '2021-04-17 07:21:15'),
(41, 'মোহাম্মদ আসাদুজ্জামান', '০১৭১১৩৭১৪৫৪', NULL, NULL, NULL, NULL, NULL, '$2y$10$GPr7Q.tPoKaWlouTysemBO.WLugYJZ4tshErAIMe5SveRNuZZIsfC', NULL, '2021-04-18 13:52:10', '2021-04-18 13:52:10'),
(42, 'Md. Ajim Hossain', '01303053969', NULL, NULL, NULL, NULL, NULL, '$2y$10$JNWGaEillwkLnMxo0FZTpOfozVy.i7J7.YVOFALm4/i59uL5OO2KK', NULL, '2021-04-21 02:10:27', '2021-04-21 02:10:27'),
(43, 'Md Tauhidul Islam', '01772603867', NULL, NULL, NULL, NULL, NULL, '$2y$10$l/iuqvC/ndEoDcLUrmcdbumRnKIBKDksGuU/b4NLydoo5dWDln17G', NULL, '2021-04-25 04:35:23', '2021-04-25 04:35:23'),
(44, 'ASM Delowar Hossain', '01713585542', NULL, NULL, NULL, NULL, NULL, '$2y$10$YMAOKgpEuYYxkSuIQMmIxutSxVdC6lPMlmOOi3TNIyjbK2yFNZZP.', NULL, '2021-04-26 03:21:19', '2021-04-26 03:21:19'),
(45, 'faysal chowdhury', '01813980584', NULL, NULL, NULL, NULL, NULL, '$2y$10$LfgsD1PcYatdVfimZEeVfuIltr3NLMrL/LjD.vfDppc0H0Osn1pbq', NULL, '2021-05-05 06:37:23', '2021-05-05 06:37:23'),
(46, 'Ralph Johns', '17854519365', NULL, NULL, NULL, NULL, NULL, '$2y$10$52g069FH4mMVBoAdPHylLOE8/5lE9cQaUdKdHXbP8N0sBIQxGecqu', NULL, '2021-05-07 15:30:54', '2021-05-07 15:30:54'),
(47, 'Manuela Runolfsdottir', '15910297454', NULL, NULL, NULL, NULL, NULL, '$2y$10$cSrJbYTytr37ii1bz4QVTu4THVhAG19iFdoJDWc8q1QUl8rfFFXUK', NULL, '2021-06-24 16:44:00', '2021-06-24 16:44:00'),
(48, 'Joey O\'Connell DVM', '16529656877', NULL, NULL, NULL, NULL, NULL, '$2y$10$ewbskmfu8gWn.dMNhvvBCOVRL7j2deXDj8/9prGtTfpDfW7JF.rYm', NULL, '2021-07-19 18:22:45', '2021-07-19 18:22:45'),
(49, 'Lonnie Kihn', '14418865759', NULL, NULL, NULL, NULL, NULL, '$2y$10$J0Yi1odm72MO.xhCaoR60.y71/TsG.8EU2XoJGARCmDhkJxpjkE3S', NULL, '2021-08-05 20:31:13', '2021-08-05 20:31:13'),
(50, 'Luke Johns', '13072460478', NULL, NULL, NULL, NULL, NULL, '$2y$10$CzgUMV7JIEd65LBCliWAXuLWRooI9h6nsImZw2QB7dDejri51biFG', NULL, '2021-08-08 13:35:20', '2021-08-08 13:35:20'),
(51, 'Lynette Swaniawski', '13269100326', NULL, NULL, NULL, NULL, NULL, '$2y$10$3173QrVq/69F8HqzUyhRKe55vQI5VW.ORdC9Hu6afj1LsMwtr4.8m', NULL, '2021-08-24 05:23:02', '2021-08-24 05:23:02'),
(52, 'Victoria Langworth', '16821867440', NULL, NULL, NULL, NULL, NULL, '$2y$10$sYgznBvzy7B2b3dKZonf9Obs0bo0xyLr7f7aIP7h9Cpjhz53LQn/6', NULL, '2021-09-29 00:10:44', '2021-09-29 00:10:44'),
(53, 'Mark Mertz', '17419500404', NULL, NULL, NULL, NULL, NULL, '$2y$10$EuVXGZK3TYP0OAoVqfyd2eNwpUMcWCy7c8Ynq5oaYoR4V5dCOmbXS', NULL, '2021-10-03 01:09:00', '2021-10-03 01:09:00'),
(54, 'Kasandra Kub', '12940022816', NULL, NULL, NULL, NULL, NULL, '$2y$10$HtcOSfOlXIbXwN8Hb2uXnOmF9Rodfj2khSzX2w3M.z/EGIUSQzejG', NULL, '2021-10-06 22:16:01', '2021-10-06 22:16:01'),
(55, 'Dr. Sam Klein', '15084588477', NULL, NULL, NULL, NULL, NULL, '$2y$10$qN0pePUcz9D.UKBNtIlnPu/evmpowB8KoTRx.eqlwBt8BhnYNamBy', NULL, '2021-10-10 21:20:07', '2021-10-10 21:20:07'),
(56, 'Cyrus Bogan', '10930061554', NULL, NULL, NULL, NULL, NULL, '$2y$10$z0Ki8vuOzuUZfzEB.nD0IebmJ9tZqYRAb.PARKkE9FaSqtg3bIIPa', NULL, '2021-10-14 02:46:33', '2021-10-14 02:46:33'),
(57, 'Bertha Gusikowski', '17442908889', NULL, NULL, NULL, NULL, NULL, '$2y$10$6XYps9k/Jyk3TjqsTKqJoOwA3.Cl0tlevitZVgFMRMa3xba/uffh2', NULL, '2021-10-14 10:18:35', '2021-10-14 10:18:35'),
(58, 'aka', '01732804707', NULL, NULL, NULL, NULL, NULL, '$2y$10$/Xd3prchHz3Mkowjmieuv.n6pMKFOH5CwV/nABRDSwKFg18R7j86G', NULL, '2021-10-18 10:29:11', '2021-10-18 10:29:11'),
(59, 'syye', '08128376363', NULL, NULL, NULL, NULL, NULL, '$2y$10$OSeU//NCIfogoUlRR6cPVupQ6o7egHE1LTQIJwyq/bAqWDiTVnice', NULL, '2021-10-18 10:34:13', '2021-10-18 10:34:13'),
(60, 'Miguel Spencer Sr.', '15800573568', NULL, NULL, NULL, NULL, NULL, '$2y$10$bwVyuSeiAY1MxGpshqURL.P7bQELQ1NOklkfPwIbKjK5CnOkr8Nju', NULL, '2021-10-27 23:02:11', '2021-10-27 23:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(10, 3, 25, NULL, NULL),
(11, 3, 23, NULL, NULL),
(12, 3, 19, NULL, NULL),
(13, 3, 24, NULL, NULL),
(14, 32, 261, NULL, NULL),
(15, 32, 260, NULL, NULL),
(16, 32, 258, NULL, NULL),
(17, 32, 259, NULL, NULL),
(18, 58, 274, NULL, NULL),
(19, 58, 273, NULL, NULL),
(20, 58, 272, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
