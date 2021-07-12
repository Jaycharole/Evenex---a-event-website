-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2021 at 07:25 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meetup`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_associatedattendees`
--

CREATE TABLE `wp_associatedattendees` (
  `attendeeID` int(11) NOT NULL,
  `associatedAttendeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_attendeeanswers`
--

CREATE TABLE `wp_attendeeanswers` (
  `id` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `answer` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attendeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_attendees`
--

CREATE TABLE `wp_attendees` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rsvpDate` date DEFAULT NULL,
  `rsvpStatus` enum('Yes','No','NoResponse') NOT NULL DEFAULT 'NoResponse',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `kidsMeal` enum('Y','N') NOT NULL DEFAULT 'N',
  `additionalAttendee` enum('Y','N') NOT NULL DEFAULT 'N',
  `veggieMeal` enum('Y','N') NOT NULL DEFAULT 'N',
  `personalGreeting` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `passcode` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 4, 'city', ''),
(2, 5, 'country', NULL),
(3, 5, 'state', NULL),
(4, 5, 'mobile', NULL),
(5, 5, 'city', ''),
(6, 6, 'city', ''),
(7, 7, 'city', ''),
(8, 8, 'city', ''),
(9, 9, 'city', ''),
(10, 10, 'city', ''),
(11, 10, '_wp_trash_meta_status', '0'),
(12, 10, '_wp_trash_meta_time', '1617689343'),
(13, 11, 'city', ''),
(14, 12, 'city', ''),
(15, 13, 'city', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-06 06:20:19', '2021-03-06 06:20:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 119, 'jay004', 'jaycharole@gmail.com', 'http://localhost/meetup', '127.0.0.1', '2021-04-01 07:55:41', '2021-04-01 07:55:41', 'sddf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'comment', 0, 1),
(3, 119, 'jay004', 'jaycharole@gmail.com', 'http://localhost/meetup', '127.0.0.1', '2021-04-01 07:57:20', '2021-04-01 07:57:20', 'fuck off', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'comment', 0, 1),
(4, 119, 'shahnawaz', 'shahnu97@gmail.com', 'http://mumbai', '127.0.0.1', '2021-04-04 21:58:07', '2021-04-04 21:58:07', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'comment', 0, 0),
(5, 119, 'ssajsd', 'shahnu97@gmail.com', 'http://mumba', '127.0.0.1', '2021-04-04 22:05:20', '2021-04-04 22:05:20', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(6, 119, 'ssajsd', 'rakesh@egarage.biz', 'http://mumba', '127.0.0.1', '2021-04-04 22:20:51', '2021-04-04 22:20:51', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(7, 119, 'ssajsd', 'kasim@egarage.biz', 'http://mumbao', '127.0.0.1', '2021-04-04 22:22:48', '2021-04-04 22:22:48', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(8, 119, 'jay004', 'jaycharole@gmail.com', 'http://localhost/meetup', '127.0.0.1', '2021-04-05 06:11:15', '2021-04-05 06:11:15', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'comment', 0, 1),
(9, 119, 'bbfdj', 'sdjhhj@gmail.com', 'http://jsahjhffd', '127.0.0.1', '2021-04-05 06:12:19', '2021-04-05 06:12:19', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(10, 119, 'Jay Charole', 'jay@gmail.com', 'http://9870767786', '127.0.0.1', '2021-04-06 06:06:32', '2021-04-06 06:06:32', '', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(11, 119, 'Jay', 'shahnu97@gmail.com', 'http://9870767786', '127.0.0.1', '2021-04-06 06:09:36', '2021-04-06 06:09:36', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(12, 119, 'altaf', 'rakesh@egarage.biz', 'http://537643254', '127.0.0.1', '2021-04-06 06:12:16', '2021-04-06 06:12:16', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(13, 68, 'shan', 'xyz@gmail.com', 'http://989272923', '127.0.0.1', '2021-04-06 07:17:39', '2021-04-06 07:17:39', '', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_eo_events`
--

CREATE TABLE `wp_eo_events` (
  `event_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `FinishTime` time NOT NULL,
  `event_occurrence` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_eo_venuemeta`
--

CREATE TABLE `wp_eo_venuemeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `eo_venue_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_etn_events`
--

CREATE TABLE `wp_etn_events` (
  `event_id` mediumint(9) NOT NULL,
  `post_id` bigint(20) NOT NULL COMMENT 'This id is teh event id',
  `form_id` bigint(20) NOT NULL COMMENT 'This id From wp post table',
  `invoice` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `event_amount` double NOT NULL DEFAULT '0',
  `user_id` mediumint(9) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `event_type` enum('ticket') COLLATE utf8mb4_unicode_520_ci DEFAULT 'ticket',
  `payment_type` enum('woocommerce') COLLATE utf8mb4_unicode_520_ci DEFAULT 'woocommerce',
  `pledge_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `payment_gateway` enum('offline_payment','online_payment','bank_payment','check_payment','stripe_payment','other_payment') COLLATE utf8mb4_unicode_520_ci DEFAULT 'online_payment',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('Active','Review','DeActive','Failed','Processing','Pending','Hold','Refunded','Delete','Completed','Cancelled') COLLATE utf8mb4_unicode_520_ci DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_etn_trans_meta`
--

CREATE TABLE `wp_etn_trans_meta` (
  `meta_id` mediumint(9) NOT NULL,
  `event_id` mediumint(9) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/meetup', 'yes'),
(2, 'home', 'http://localhost/meetup', 'yes'),
(3, 'blogname', 'Meetup', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'jaycharole@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:263:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:15:\"events/event/?$\";s:25:\"index.php?post_type=event\";s:45:\"events/event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:40:\"events/event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:32:\"events/event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:6:\"etn/?$\";s:23:\"index.php?post_type=etn\";s:23:\"etn/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=etn&paged=$matches[1]\";s:15:\"etn-attendee/?$\";s:32:\"index.php?post_type=etn-attendee\";s:32:\"etn-attendee/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=etn-attendee&paged=$matches[1]\";s:14:\"etn-speaker/?$\";s:31:\"index.php?post_type=etn-speaker\";s:31:\"etn-speaker/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=etn-speaker&paged=$matches[1]\";s:19:\"etn-zoom-meeting/?$\";s:36:\"index.php?post_type=etn-zoom-meeting\";s:36:\"etn-zoom-meeting/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=etn-zoom-meeting&paged=$matches[1]\";s:57:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"category/(.+?)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:64:\"events/venues/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:50:\"index.php?event-venue=$matches[1]&feed=$matches[2]\";s:59:\"events/venues/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:50:\"index.php?event-venue=$matches[1]&feed=$matches[2]\";s:30:\"events/venues/([^/]+)/embed/?$\";s:44:\"index.php?event-venue=$matches[1]&embed=true\";s:42:\"events/venues/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?event-venue=$matches[1]&paged=$matches[2]\";s:24:\"events/venues/([^/]+)/?$\";s:33:\"index.php?event-venue=$matches[1]\";s:66:\"events/category/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:53:\"index.php?event-category=$matches[1]&feed=$matches[2]\";s:61:\"events/category/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:53:\"index.php?event-category=$matches[1]&feed=$matches[2]\";s:32:\"events/category/([^/]+)/embed/?$\";s:47:\"index.php?event-category=$matches[1]&embed=true\";s:44:\"events/category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?event-category=$matches[1]&paged=$matches[2]\";s:26:\"events/category/([^/]+)/?$\";s:36:\"index.php?event-category=$matches[1]\";s:61:\"events/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:48:\"index.php?event-tag=$matches[1]&feed=$matches[2]\";s:56:\"events/tag/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:48:\"index.php?event-tag=$matches[1]&feed=$matches[2]\";s:27:\"events/tag/([^/]+)/embed/?$\";s:42:\"index.php?event-tag=$matches[1]&embed=true\";s:39:\"events/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?event-tag=$matches[1]&paged=$matches[2]\";s:21:\"events/tag/([^/]+)/?$\";s:31:\"index.php?event-tag=$matches[1]\";s:68:\"offline_event_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:56:\"index.php?offline_event_cat=$matches[1]&feed=$matches[2]\";s:63:\"offline_event_cat/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:56:\"index.php?offline_event_cat=$matches[1]&feed=$matches[2]\";s:34:\"offline_event_cat/([^/]+)/embed/?$\";s:50:\"index.php?offline_event_cat=$matches[1]&embed=true\";s:46:\"offline_event_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?offline_event_cat=$matches[1]&paged=$matches[2]\";s:28:\"offline_event_cat/([^/]+)/?$\";s:39:\"index.php?offline_event_cat=$matches[1]\";s:67:\"online_event_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:55:\"index.php?online_event_cat=$matches[1]&feed=$matches[2]\";s:62:\"online_event_cat/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:55:\"index.php?online_event_cat=$matches[1]&feed=$matches[2]\";s:33:\"online_event_cat/([^/]+)/embed/?$\";s:49:\"index.php?online_event_cat=$matches[1]&embed=true\";s:45:\"online_event_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?online_event_cat=$matches[1]&paged=$matches[2]\";s:27:\"online_event_cat/([^/]+)/?$\";s:38:\"index.php?online_event_cat=$matches[1]\";s:40:\"offline_events/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"offline_events/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"offline_events/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"offline_events/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"offline_events/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"offline_events/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"offline_events/(.+?)/embed/?$\";s:47:\"index.php?offline_events=$matches[1]&embed=true\";s:33:\"offline_events/(.+?)/trackback/?$\";s:41:\"index.php?offline_events=$matches[1]&tb=1\";s:41:\"offline_events/(.+?)/page/?([0-9]{1,})/?$\";s:54:\"index.php?offline_events=$matches[1]&paged=$matches[2]\";s:48:\"offline_events/(.+?)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?offline_events=$matches[1]&cpage=$matches[2]\";s:37:\"offline_events/(.+?)(?:/([0-9]+))?/?$\";s:53:\"index.php?offline_events=$matches[1]&page=$matches[2]\";s:39:\"online_events/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"online_events/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"online_events/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"online_events/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"online_events/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"online_events/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"online_events/(.+?)/embed/?$\";s:46:\"index.php?online_events=$matches[1]&embed=true\";s:32:\"online_events/(.+?)/trackback/?$\";s:40:\"index.php?online_events=$matches[1]&tb=1\";s:40:\"online_events/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?online_events=$matches[1]&paged=$matches[2]\";s:47:\"online_events/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?online_events=$matches[1]&cpage=$matches[2]\";s:36:\"online_events/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?online_events=$matches[1]&page=$matches[2]\";s:97:\"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:61:\"index.php?post_type=event&ondate=$matches[1]&feed=$matches[2]\";s:92:\"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:61:\"index.php?post_type=event&ondate=$matches[1]&feed=$matches[2]\";s:63:\"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/embed/?$\";s:55:\"index.php?post_type=event&ondate=$matches[1]&embed=true\";s:75:\"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/page/?([0-9]{1,})/?$\";s:62:\"index.php?post_type=event&ondate=$matches[1]&paged=$matches[2]\";s:57:\"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/?$\";s:44:\"index.php?post_type=event&ondate=$matches[1]\";s:40:\"events/event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"events/event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"events/event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"events/event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"events/event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"events/event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"events/event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:33:\"events/event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:63:\"events/event/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:58:\"events/event/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:41:\"events/event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:48:\"events/event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:37:\"events/event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:29:\"events/event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"events/event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"events/event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"events/event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"events/event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"events/event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"etn/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"etn/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"etn/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"etn/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"etn/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"etn/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:18:\"etn/(.+?)/embed/?$\";s:36:\"index.php?etn=$matches[1]&embed=true\";s:22:\"etn/(.+?)/trackback/?$\";s:30:\"index.php?etn=$matches[1]&tb=1\";s:30:\"etn/(.+?)/page/?([0-9]{1,})/?$\";s:43:\"index.php?etn=$matches[1]&paged=$matches[2]\";s:37:\"etn/(.+?)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?etn=$matches[1]&cpage=$matches[2]\";s:26:\"etn/(.+?)(?:/([0-9]+))?/?$\";s:42:\"index.php?etn=$matches[1]&page=$matches[2]\";s:63:\"etn-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:51:\"index.php?etn_category=$matches[1]&feed=$matches[2]\";s:58:\"etn-category/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:51:\"index.php?etn_category=$matches[1]&feed=$matches[2]\";s:29:\"etn-category/([^/]+)/embed/?$\";s:45:\"index.php?etn_category=$matches[1]&embed=true\";s:41:\"etn-category/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?etn_category=$matches[1]&paged=$matches[2]\";s:23:\"etn-category/([^/]+)/?$\";s:34:\"index.php?etn_category=$matches[1]\";s:59:\"etn-tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:47:\"index.php?etn_tags=$matches[1]&feed=$matches[2]\";s:54:\"etn-tags/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:47:\"index.php?etn_tags=$matches[1]&feed=$matches[2]\";s:25:\"etn-tags/([^/]+)/embed/?$\";s:41:\"index.php?etn_tags=$matches[1]&embed=true\";s:37:\"etn-tags/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?etn_tags=$matches[1]&paged=$matches[2]\";s:19:\"etn-tags/([^/]+)/?$\";s:30:\"index.php?etn_tags=$matches[1]\";s:38:\"etn-attendee/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"etn-attendee/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"etn-attendee/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"etn-attendee/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"etn-attendee/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"etn-attendee/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"etn-attendee/(.+?)/embed/?$\";s:45:\"index.php?etn-attendee=$matches[1]&embed=true\";s:31:\"etn-attendee/(.+?)/trackback/?$\";s:39:\"index.php?etn-attendee=$matches[1]&tb=1\";s:39:\"etn-attendee/(.+?)/page/?([0-9]{1,})/?$\";s:52:\"index.php?etn-attendee=$matches[1]&paged=$matches[2]\";s:46:\"etn-attendee/(.+?)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?etn-attendee=$matches[1]&cpage=$matches[2]\";s:35:\"etn-attendee/(.+?)(?:/([0-9]+))?/?$\";s:51:\"index.php?etn-attendee=$matches[1]&page=$matches[2]\";s:38:\"etn-schedule/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"etn-schedule/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"etn-schedule/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"etn-schedule/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"etn-schedule/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"etn-schedule/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"etn-schedule/(.+?)/embed/?$\";s:45:\"index.php?etn-schedule=$matches[1]&embed=true\";s:31:\"etn-schedule/(.+?)/trackback/?$\";s:39:\"index.php?etn-schedule=$matches[1]&tb=1\";s:39:\"etn-schedule/(.+?)/page/?([0-9]{1,})/?$\";s:52:\"index.php?etn-schedule=$matches[1]&paged=$matches[2]\";s:46:\"etn-schedule/(.+?)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?etn-schedule=$matches[1]&cpage=$matches[2]\";s:35:\"etn-schedule/(.+?)(?:/([0-9]+))?/?$\";s:51:\"index.php?etn-schedule=$matches[1]&page=$matches[2]\";s:37:\"etn-speaker/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"etn-speaker/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"etn-speaker/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"etn-speaker/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"etn-speaker/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"etn-speaker/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"etn-speaker/(.+?)/embed/?$\";s:44:\"index.php?etn-speaker=$matches[1]&embed=true\";s:30:\"etn-speaker/(.+?)/trackback/?$\";s:38:\"index.php?etn-speaker=$matches[1]&tb=1\";s:38:\"etn-speaker/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?etn-speaker=$matches[1]&paged=$matches[2]\";s:45:\"etn-speaker/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?etn-speaker=$matches[1]&cpage=$matches[2]\";s:34:\"etn-speaker/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?etn-speaker=$matches[1]&page=$matches[2]\";s:71:\"etn-speaker-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:59:\"index.php?etn_speaker_category=$matches[1]&feed=$matches[2]\";s:66:\"etn-speaker-category/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:59:\"index.php?etn_speaker_category=$matches[1]&feed=$matches[2]\";s:37:\"etn-speaker-category/([^/]+)/embed/?$\";s:53:\"index.php?etn_speaker_category=$matches[1]&embed=true\";s:49:\"etn-speaker-category/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?etn_speaker_category=$matches[1]&paged=$matches[2]\";s:31:\"etn-speaker-category/([^/]+)/?$\";s:42:\"index.php?etn_speaker_category=$matches[1]\";s:44:\"etn-zoom-meeting/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"etn-zoom-meeting/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:84:\"etn-zoom-meeting/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:79:\"etn-zoom-meeting/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"etn-zoom-meeting/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"etn-zoom-meeting/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"etn-zoom-meeting/([^/]+)/embed/?$\";s:49:\"index.php?etn-zoom-meeting=$matches[1]&embed=true\";s:37:\"etn-zoom-meeting/([^/]+)/trackback/?$\";s:43:\"index.php?etn-zoom-meeting=$matches[1]&tb=1\";s:45:\"etn-zoom-meeting/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?etn-zoom-meeting=$matches[1]&paged=$matches[2]\";s:52:\"etn-zoom-meeting/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?etn-zoom-meeting=$matches[1]&cpage=$matches[2]\";s:41:\"etn-zoom-meeting/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?etn-zoom-meeting=$matches[1]&page=$matches[2]\";s:33:\"etn-zoom-meeting/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"etn-zoom-meeting/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"etn-zoom-meeting/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"etn-zoom-meeting/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"etn-zoom-meeting/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"etn-zoom-meeting/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:68:\"etn-zoom-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:64:\"index.php?etn_zoom_meeting_category=$matches[1]&feed=$matches[2]\";s:63:\"etn-zoom-category/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:64:\"index.php?etn_zoom_meeting_category=$matches[1]&feed=$matches[2]\";s:34:\"etn-zoom-category/([^/]+)/embed/?$\";s:58:\"index.php?etn_zoom_meeting_category=$matches[1]&embed=true\";s:46:\"etn-zoom-category/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?etn_zoom_meeting_category=$matches[1]&paged=$matches[2]\";s:28:\"etn-zoom-category/([^/]+)/?$\";s:47:\"index.php?etn_zoom_meeting_category=$matches[1]\";s:64:\"etn-zoom-tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:60:\"index.php?etn_zoom_meeting_tags=$matches[1]&feed=$matches[2]\";s:59:\"etn-zoom-tags/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:60:\"index.php?etn_zoom_meeting_tags=$matches[1]&feed=$matches[2]\";s:30:\"etn-zoom-tags/([^/]+)/embed/?$\";s:54:\"index.php?etn_zoom_meeting_tags=$matches[1]&embed=true\";s:42:\"etn-zoom-tags/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?etn_zoom_meeting_tags=$matches[1]&paged=$matches[2]\";s:24:\"etn-zoom-tags/([^/]+)/?$\";s:43:\"index.php?etn_zoom_meeting_tags=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"comments/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"comments/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"search/(.+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"(.?.+?)/(feed|rdf|rss|rss2|atom|eo-events)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:35:\"event-organiser/event-organiser.php\";i:4;s:29:\"wp-event-solution/eventin.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'meetup', 'yes'),
(41, 'stylesheet', 'meetup', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:35:\"event-organiser/event-organiser.php\";s:24:\"eventorganiser_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1630563613', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:69:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"edit_events\";b:1;s:14:\"publish_events\";b:1;s:13:\"delete_events\";b:1;s:18:\"edit_others_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"read_private_events\";b:1;s:13:\"manage_venues\";b:1;s:23:\"manage_event_categories\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:8:{i:1617697224;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1617732004;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617733224;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617776421;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617776528;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617776533;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618122023;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:1:{s:22:\"7wvkszyMSbj5kuVcDMrawI\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bd40queHiYM7mZUZMBh.FFViUZ3bl./\";s:10:\"created_at\";i:1617692727;}}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1615011808;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'can_compress_scripts', '0', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'current_theme', 'Meetup', 'yes'),
(151, 'theme_mods_meetup', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(176, '_transient_health-check-site-status-result', '{\"good\":\"13\",\"recommended\":\"5\",\"critical\":\"2\"}', 'yes'),
(198, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(206, 'category_children', 'a:0:{}', 'yes'),
(228, 'WPLANG', '', 'yes'),
(229, 'new_admin_email', 'jaycharole@gmail.com', 'yes'),
(230, 'recovery_mode_email_last_sent', '1617692726', 'yes'),
(325, 'recently_activated', 'a:1:{s:16:\"rsvp/wp-rsvp.php\";i:1616922198;}', 'yes'),
(326, 'acf_version', '5.7.7', 'yes'),
(329, 'cptui_new_install', 'false', 'yes'),
(332, 'cptui_post_types', 'a:2:{s:14:\"offline_events\";a:29:{s:4:\"name\";s:14:\"offline_events\";s:5:\"label\";s:14:\"Offline Events\";s:14:\"singular_label\";s:14:\"Offline Events\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:19:\"dashicons-megaphone\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"online_events\";a:29:{s:4:\"name\";s:13:\"online_events\";s:5:\"label\";s:13:\"Online Events\";s:14:\"singular_label\";s:13:\"Online Events\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:25:\"dashicons-admin-site-alt3\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:8:\"comments\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"post_tag\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(335, 'cptui_taxonomies', 'a:2:{s:17:\"offline_event_cat\";a:24:{s:4:\"name\";s:17:\"offline_event_cat\";s:5:\"label\";s:8:\"Category\";s:14:\"singular_label\";s:8:\"Category\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:14:\"offline_events\";}}s:16:\"online_event_cat\";a:24:{s:4:\"name\";s:16:\"online_event_cat\";s:5:\"label\";s:8:\"Category\";s:14:\"singular_label\";s:8:\"Category\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:13:\"online_events\";}}}', 'yes'),
(394, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1617690033;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(395, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"jaycharole@gmail.com\";s:7:\"version\";s:3:\"5.7\";s:9:\"timestamp\";i:1616219988;}', 'no'),
(397, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(448, 'offline_event_cat_children', 'a:0:{}', 'yes'),
(449, 'online_event_cat_children', 'a:0:{}', 'yes'),
(466, 'widget_eo_events_agenda_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(467, 'widget_eo_event_list_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(469, 'widget_eo-event-categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(470, 'widget_eo-event-venues', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(477, 'etn_version', '2.3.9', 'yes'),
(479, 'etn_speaker_category_children', 'a:0:{}', 'yes'),
(480, 'eventin__banner_last_check', '1617687753', 'yes'),
(481, 'eventin__banner_data', 'O:8:\"stdClass\":2:{s:8:\"10000952\";O:8:\"stdClass\":7:{s:2:\"id\";i:10000952;s:5:\"title\";s:45:\"WP Eventin NewYear Sale 2020 (Dashboard only)\";s:4:\"type\";s:6:\"banner\";s:6:\"screen\";s:9:\"dashboard\";s:5:\"start\";i:1609372800;s:3:\"end\";i:1609977600;s:4:\"data\";O:8:\"stdClass\":7:{s:4:\"type\";s:6:\"banner\";s:11:\"banner_link\";s:38:\"https://themewinter.com/new-year-sale/\";s:12:\"banner_image\";s:73:\"https://api.wpmet.com/auth/wp-content/uploads/2020/12/new_year_sale-1.png\";s:9:\"blacklist\";s:0:\"\";s:9:\"whitelist\";s:0:\"\";s:9:\"style_css\";s:0:\"\";s:10:\"unique_key\";s:17:\"twnewyearsale2021\";}}s:8:\"10000878\";O:8:\"stdClass\":7:{s:2:\"id\";i:10000878;s:5:\"title\";s:40:\"WP Eventin NewYear Sale 2020 (Page only)\";s:4:\"type\";s:6:\"banner\";s:6:\"screen\";s:11:\"plugin_page\";s:5:\"start\";i:1609027200;s:3:\"end\";i:1609977600;s:4:\"data\";O:8:\"stdClass\":7:{s:4:\"type\";s:6:\"banner\";s:11:\"banner_link\";s:38:\"https://themewinter.com/new-year-sale/\";s:12:\"banner_image\";s:73:\"https://api.wpmet.com/auth/wp-content/uploads/2020/12/new_year_sale-1.png\";s:9:\"blacklist\";s:0:\"\";s:9:\"whitelist\";s:0:\"\";s:9:\"style_css\";s:0:\"\";s:10:\"unique_key\";s:17:\"twnewyearsale2021\";}}}', 'yes'),
(486, 'rsvp_db_version', '12', 'yes'),
(505, 'eventorganiser_options', 'a:18:{s:8:\"supports\";a:7:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:9:\"thumbnail\";i:4;s:7:\"excerpt\";i:5;s:13:\"custom-fields\";i:6;s:8:\"eventtag\";}s:14:\"event_redirect\";s:6:\"events\";s:10:\"dateformat\";s:5:\"dd-mm\";s:9:\"prettyurl\";i:1;s:9:\"templates\";s:11:\"themecompat\";s:9:\"addtomenu\";i:0;s:17:\"excludefromsearch\";i:0;s:8:\"showpast\";i:0;s:12:\"group_events\";s:0:\"\";s:9:\"url_venue\";s:13:\"events/venues\";s:7:\"url_cat\";s:15:\"events/category\";s:7:\"url_tag\";s:10:\"events/tag\";s:8:\"navtitle\";s:6:\"Events\";s:8:\"eventtag\";i:1;s:4:\"feed\";i:1;s:16:\"runningisnotpast\";i:0;s:13:\"deleteexpired\";i:0;s:12:\"map_provider\";s:13:\"openstreetmap\";}', 'yes'),
(506, 'eventorganiser_admin_notices', 'a:1:{i:0;s:17:\"changedtemplate17\";}', 'yes'),
(507, 'widget_eo_calendar_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(508, 'eventorganiser_version', '3.10.5', 'yes'),
(567, '_site_transient_timeout_browser_1509ab70d6a2d319ec457fb7f46a8933', '1617826505', 'no'),
(568, '_site_transient_browser_1509ab70d6a2d319ec457fb7f46a8933', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"88.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(603, '_transient_timeout_acf_plugin_updates', '1617860516', 'no'),
(604, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.7\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}', 'no'),
(610, '_site_transient_timeout_php_check_4119c0564599b106df6b0bd2271e5fd0', '1618292551', 'no'),
(611, '_site_transient_php_check_4119c0564599b106df6b0bd2271e5fd0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(619, '_site_transient_timeout_theme_roots', '1617691832', 'no'),
(620, '_site_transient_theme_roots', 'a:4:{s:6:\"meetup\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(622, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617690035;s:7:\"checked\";a:4:{s:6:\"meetup\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.9\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(623, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1617690035;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.0\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.7\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"event-organiser/event-organiser.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/event-organiser\";s:4:\"slug\";s:15:\"event-organiser\";s:6:\"plugin\";s:35:\"event-organiser/event-organiser.php\";s:11:\"new_version\";s:6:\"3.10.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/event-organiser/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/event-organiser.3.10.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/event-organiser/assets/icon-256x256.png?rev=978123\";s:2:\"1x\";s:67:\"https://ps.w.org/event-organiser/assets/icon-128x128.png?rev=978123\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/event-organiser/assets/banner-772x250.png?rev=978123\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-event-solution/eventin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/wp-event-solution\";s:4:\"slug\";s:17:\"wp-event-solution\";s:6:\"plugin\";s:29:\"wp-event-solution/eventin.php\";s:11:\"new_version\";s:5:\"2.3.9\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-event-solution/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wp-event-solution.2.3.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-event-solution/assets/icon-256x256.png?rev=2340842\";s:2:\"1x\";s:70:\"https://ps.w.org/wp-event-solution/assets/icon-128x128.png?rev=2340842\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wp-event-solution/assets/banner-1544x500.png?rev=2417188\";s:2:\"1x\";s:72:\"https://ps.w.org/wp-event-solution/assets/banner-772x250.png?rev=2417188\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(625, '_site_transient_timeout_browser_83f75fe8d5c2f40c243760c04f60cc4e', '1618297307', 'no'),
(626, '_site_transient_browser_83f75fe8d5c2f40c243760c04f60cc4e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_org_reg`
--

CREATE TABLE `wp_org_reg` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `org_name` varchar(250) NOT NULL,
  `org_city` varchar(250) NOT NULL,
  `org_state` varchar(250) NOT NULL,
  `org_country` varchar(250) NOT NULL,
  `org_address` varchar(300) NOT NULL,
  `org_email` varchar(50) NOT NULL,
  `org_phone_no` int(12) NOT NULL,
  `org_domain` varchar(30) NOT NULL,
  `org_website_name` varchar(50) NOT NULL,
  `org_passwd` varchar(20) NOT NULL,
  `org_conf_passwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_org_reg`
--

INSERT INTO `wp_org_reg` (`id`, `first_name`, `last_name`, `org_name`, `org_city`, `org_state`, `org_country`, `org_address`, `org_email`, `org_phone_no`, `org_domain`, `org_website_name`, `org_passwd`, `org_conf_passwd`) VALUES
(1, 'Jay', 'Charole', 'Even You', 'Mumbai', 'Maharashtra', 'India', 'Ghatkopar', 'abc@abc.com', 2147483647, 'abc.com', 'heelo.com', 'sahara', 'sahara'),
(2, 'Jay', 'Charole', 'Even You', 'Mumbai', 'Maharashtra', 'India', 'Ghatkopar', 'abc@abc.com', 2147483647, 'abc.com', 'heelo.com', 'sahara', 'sahara'),
(3, '', '', '', '', '', '', '', '', 0, '', '', '', ''),
(4, 'Prabhu', 'Sharma', 'Data Crux', 'Mumbai', 'Delhi', 'Austraia', 'RJ COLLEGE', 'xyz@gmail.com', 2147483647, 'retail', 'heelo.com', 'prs1224', 'prs1234'),
(5, 'Jay', 'Charole', 'Data Crux', 'Mumbai', 'Delhi', 'India', 'test', 'jaycharole004@gmail.com', 789097647, 'abc.com', 'heelo.com', 'abc', 'abc'),
(6, 'mihir ', 'matkar', 'rjc', 'mum', 'Maharashtra', 'India', 'rjc ghatkopar', 'mihirmatkar@gmail.com', 9090, 'abc.com', 'heelo.com', 'mihir786', 'mihir786'),
(7, 'shahnq', 'ashdsh', 'dhshsdh', 'mumbai', 'mha', 'in', 'jdsjkdksj', 'ddjjksd@abc.com', 2147483647, 'fdfdd', 'jhjfddfh', '123244', '133233'),
(8, 'shahnq', 'ashdsh', 'dhshsdh', 'mumbai', 'ughjj', 'ijhg', 'ghghg', 'mhjhjhj`87@gmail.com', 2147483647, 'chn', 'jjkhjjk', 'fghjhj', 'ghghjh'),
(9, 'shahnq', 'dlkdsjk', 'dsjkdkjfjkf', 'mumbai', 'dnjdfjjdf', 'jfdhkhfd', 'dfjhfhdf', 'fdf@abc.com', 2147483647, 'dddshj', 'jdsd', 'hjdhhdshj', 'dshdfjhd'),
(10, 'fdg', 'fdggf', 'dfggfdf', 'dfgdfg', 'dfgfd', 'in', 'cjkkjsdfd', 'abc@bc.com', 2147483647, 'djkjfdk', 'qjkjkfdjkfd', 'dnffd', 'djhjhfdf'),
(11, 'shahnq', 'jkjkdfjfd', 'qdfjkfh', 'qjhdfhf', 'fdjhhfd', 'jhfhfhfg', 'qfdhfhgf', 'dndf@gmail.com', 2147483647, 'dffhjfd', 'dfjfhhj', 'qdffhhf', 'fdffd'),
(12, 'ffd', 'ffd', 'dsdss', 'ff', 'dsfd', 'fdfd', 'fddffd', 'fdfd@av.vom', 872214, '51', 'gffgfg', 'ffddffgg', 'dsdf'),
(13, 'Jay ', 'Charole', 'Data Crux', 'Mumbai', 'Maharashtra', 'India', 'XYZ ', 'jaycharole004@gmail.com', 2147483647, 'Service', 'www.xyz.com', 'myaarya1', 'myaarya1'),
(14, 'Archana', 'Bide', 'RJ College', 'Mumbai', 'Maharashtra', 'India', 'Ghatkopar west', 'itrjcollege@gmail.com', 2147483647, 'College', 'rjcollege.com', 'rjcit', 'rjcit'),
(15, 'Archana', 'Bide', 'RJ College', 'Mumbai', 'Maharashtra', 'India', 'Ghatkopar west', 'itrjcollege@gmail.com', 2147483647, 'College', 'rjcollege.com', 'rjcit', 'rjcit');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1615011799:1'),
(4, 7, '_edit_lock', '1615011835:1'),
(5, 9, '_edit_lock', '1615011887:1'),
(6, 11, '_edit_lock', '1615019538:1'),
(7, 13, '_edit_lock', '1615062737:1'),
(8, 15, '_edit_lock', '1615229075:1'),
(9, 17, '_menu_item_type', 'custom'),
(10, 17, '_menu_item_menu_item_parent', '0'),
(11, 17, '_menu_item_object_id', '17'),
(12, 17, '_menu_item_object', 'custom'),
(13, 17, '_menu_item_target', ''),
(14, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 17, '_menu_item_xfn', ''),
(16, 17, '_menu_item_url', 'http://localhost/meetup/'),
(18, 18, '_menu_item_type', 'post_type'),
(19, 18, '_menu_item_menu_item_parent', '0'),
(20, 18, '_menu_item_object_id', '15'),
(21, 18, '_menu_item_object', 'page'),
(22, 18, '_menu_item_target', ''),
(23, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 18, '_menu_item_xfn', ''),
(25, 18, '_menu_item_url', ''),
(27, 19, '_menu_item_type', 'post_type'),
(28, 19, '_menu_item_menu_item_parent', '0'),
(29, 19, '_menu_item_object_id', '13'),
(30, 19, '_menu_item_object', 'page'),
(31, 19, '_menu_item_target', ''),
(32, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 19, '_menu_item_xfn', ''),
(34, 19, '_menu_item_url', ''),
(35, 19, '_menu_item_orphaned', '1615229228'),
(36, 20, '_menu_item_type', 'post_type'),
(37, 20, '_menu_item_menu_item_parent', '0'),
(38, 20, '_menu_item_object_id', '5'),
(39, 20, '_menu_item_object', 'page'),
(40, 20, '_menu_item_target', ''),
(41, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 20, '_menu_item_xfn', ''),
(43, 20, '_menu_item_url', ''),
(44, 20, '_menu_item_orphaned', '1615229228'),
(45, 21, '_menu_item_type', 'post_type'),
(46, 21, '_menu_item_menu_item_parent', '0'),
(47, 21, '_menu_item_object_id', '7'),
(48, 21, '_menu_item_object', 'page'),
(49, 21, '_menu_item_target', ''),
(50, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 21, '_menu_item_xfn', ''),
(52, 21, '_menu_item_url', ''),
(53, 21, '_menu_item_orphaned', '1615229229'),
(54, 22, '_menu_item_type', 'post_type'),
(55, 22, '_menu_item_menu_item_parent', '0'),
(56, 22, '_menu_item_object_id', '11'),
(57, 22, '_menu_item_object', 'page'),
(58, 22, '_menu_item_target', ''),
(59, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 22, '_menu_item_xfn', ''),
(61, 22, '_menu_item_url', ''),
(62, 22, '_menu_item_orphaned', '1615229230'),
(63, 23, '_menu_item_type', 'post_type'),
(64, 23, '_menu_item_menu_item_parent', '0'),
(65, 23, '_menu_item_object_id', '2'),
(66, 23, '_menu_item_object', 'page'),
(67, 23, '_menu_item_target', ''),
(68, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 23, '_menu_item_xfn', ''),
(70, 23, '_menu_item_url', ''),
(71, 23, '_menu_item_orphaned', '1615229230'),
(72, 24, '_menu_item_type', 'post_type'),
(73, 24, '_menu_item_menu_item_parent', '0'),
(74, 24, '_menu_item_object_id', '9'),
(75, 24, '_menu_item_object', 'page'),
(76, 24, '_menu_item_target', ''),
(77, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 24, '_menu_item_xfn', ''),
(79, 24, '_menu_item_url', ''),
(80, 24, '_menu_item_orphaned', '1615229231'),
(81, 25, '_menu_item_type', 'post_type'),
(82, 25, '_menu_item_menu_item_parent', '0'),
(83, 25, '_menu_item_object_id', '11'),
(84, 25, '_menu_item_object', 'page'),
(85, 25, '_menu_item_target', ''),
(86, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 25, '_menu_item_xfn', ''),
(88, 25, '_menu_item_url', ''),
(90, 26, '_edit_lock', '1615229322:1'),
(91, 28, '_menu_item_type', 'post_type'),
(92, 28, '_menu_item_menu_item_parent', '0'),
(93, 28, '_menu_item_object_id', '26'),
(94, 28, '_menu_item_object', 'page'),
(95, 28, '_menu_item_target', ''),
(96, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 28, '_menu_item_xfn', ''),
(98, 28, '_menu_item_url', ''),
(99, 30, '_wp_attached_file', '2021/03/background.jpg'),
(100, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:830;s:4:\"file\";s:22:\"2021/03/background.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"background-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"background-1024x531.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"background-768x398.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"background-1536x797.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:797;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 31, '_edit_lock', '1615928146:1'),
(104, 35, '_edit_lock', '1617087286:1'),
(105, 35, '_edit_last', '1'),
(107, 60, '_edit_lock', '1615966807:1'),
(108, 60, '_edit_last', '1'),
(109, 60, '_wp_trash_meta_status', 'publish'),
(110, 60, '_wp_trash_meta_time', '1615967128'),
(111, 60, '_wp_desired_post_slug', 'group_6051b2ad2ef1c'),
(112, 61, '_edit_lock', '1617224249:1'),
(113, 61, '_edit_last', '1'),
(116, 64, '_edit_lock', '1616050821:1'),
(117, 64, '_edit_last', '1'),
(118, 66, '_edit_lock', '1616836562:1'),
(119, 66, '_edit_last', '1'),
(120, 68, '_edit_lock', '1617693868:1'),
(121, 68, '_edit_last', '1'),
(122, 69, '_wp_attached_file', '2021/03/5.jpg'),
(123, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:399;s:4:\"file\";s:13:\"2021/03/5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 70, '_wp_attached_file', '2021/03/6.jpg'),
(125, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:304;s:4:\"file\";s:13:\"2021/03/6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 71, '_wp_attached_file', '2021/03/7.png'),
(127, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:770;s:4:\"file\";s:13:\"2021/03/7.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 68, '_thumbnail_id', '30'),
(129, 68, 'event_speaker_name_1', 'Shahnawaz'),
(130, 68, '_event_speaker_name_1', 'field_6051ae55152c6'),
(131, 68, 'event_speaker_name_2', 'Shan'),
(132, 68, '_event_speaker_name_2', 'field_6051aeb3e6da1'),
(133, 68, 'event_speaker_name_3', 'Altaf'),
(134, 68, '_event_speaker_name_3', 'field_6051aee5fd774'),
(135, 68, 'date_time', '2021-03-21 00:00:00'),
(136, 68, '_date_time', 'field_6051aef57de4f'),
(137, 68, 'map', ''),
(138, 68, '_map', 'field_6051af3224c67'),
(139, 68, 'gallery', 'a:4:{i:0;s:2:\"30\";i:1;s:2:\"69\";i:2;s:2:\"70\";i:3;s:2:\"71\";}'),
(140, 68, '_gallery', 'field_6051af5f4d15c'),
(141, 68, 'faq_1', ''),
(142, 68, '_faq_1', 'field_6051b01fa6586'),
(143, 68, 'faq_2', ''),
(144, 68, '_faq_2', 'field_6051b080a6587'),
(145, 68, 'faq_3', ''),
(146, 68, '_faq_3', 'field_6051b092a6588'),
(147, 68, 'faq_4', ''),
(148, 68, '_faq_4', 'field_6051b09fa6589'),
(149, 68, 'faq_5', ''),
(150, 68, '_faq_5', 'field_6051b0baa658b'),
(151, 68, 'facebook', ''),
(152, 68, '_facebook', 'field_6051b0da0a7f5'),
(153, 68, 'tweeter_copy', ''),
(154, 68, '_tweeter_copy', 'field_6051b1080a7f6'),
(155, 68, 'instagram', ''),
(156, 68, '_instagram', 'field_6051b11f0a7f7'),
(157, 68, 'linkedin', ''),
(158, 68, '_linkedin', 'field_6051b1470a7f8'),
(159, 68, 'tags', ''),
(160, 68, '_tags', 'field_6051b18021931'),
(161, 68, 'short_deatils', ''),
(162, 68, '_short_deatils', 'field_6051b1adc27c6'),
(163, 68, 'start_date', ''),
(164, 68, '_start_date', 'field_6051b1e2c27c7'),
(165, 68, 'event_menue', ''),
(166, 68, '_event_menue', 'field_6051b1fdc27c8'),
(167, 68, 'event_type', 'Online'),
(168, 68, '_event_type', 'field_6051b20bc27c9'),
(169, 68, 'organizer', ''),
(170, 68, '_organizer', 'field_6051b22ac27ca'),
(171, 68, 'category', ''),
(172, 68, '_category', 'field_6051b23ec27cb'),
(173, 68, 'email', ''),
(174, 68, '_email', 'field_6051b24cc27cc'),
(175, 72, '_edit_lock', '1617085525:1'),
(176, 72, '_edit_last', '1'),
(177, 72, '_thumbnail_id', '69'),
(178, 72, 'event_speaker_name_1', 'hello'),
(179, 72, '_event_speaker_name_1', 'field_6051ae55152c6'),
(180, 72, 'event_speaker_name_2', 'bolo'),
(181, 72, '_event_speaker_name_2', 'field_6051aeb3e6da1'),
(182, 72, 'event_speaker_name_3', 'bobda'),
(183, 72, '_event_speaker_name_3', 'field_6051aee5fd774'),
(184, 72, 'date_time', '2021-03-12 00:00:00'),
(185, 72, '_date_time', 'field_6051aef57de4f'),
(186, 72, 'map', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15081.908740596868!2d72.9078565!3d19.0867109!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc49a9b0f2704a1bf!2sExtra%20Catchy!5e0!3m2!1sen!2sin!4v1616568206683!5m2!1sen!2sin\" width=\"600\" height=\"450\" allowfullscreen=\"allowfullscreen\"></iframe>'),
(187, 72, '_map', 'field_6051af3224c67'),
(188, 72, 'gallery', 'a:4:{i:0;s:2:\"71\";i:1;s:2:\"69\";i:2;s:2:\"30\";i:3;s:2:\"70\";}'),
(189, 72, '_gallery', 'field_6051af5f4d15c'),
(190, 72, 'faq_1', ''),
(191, 72, '_faq_1', 'field_6051b01fa6586'),
(192, 72, 'faq_2', ''),
(193, 72, '_faq_2', 'field_6051b080a6587'),
(194, 72, 'faq_3', ''),
(195, 72, '_faq_3', 'field_6051b092a6588'),
(196, 72, 'faq_4', ''),
(197, 72, '_faq_4', 'field_6051b09fa6589'),
(198, 72, 'faq_5', ''),
(199, 72, '_faq_5', 'field_6051b0baa658b'),
(200, 72, 'facebook', 'https://www.datacamp.com/'),
(201, 72, '_facebook', 'field_6051b0da0a7f5'),
(202, 72, 'tweeter_copy', ''),
(203, 72, '_tweeter_copy', 'field_6051b1080a7f6'),
(204, 72, 'instagram', 'https://www.datacamp.com/'),
(205, 72, '_instagram', 'field_6051b11f0a7f7'),
(206, 72, 'linkedin', 'https://www.datacamp.com/'),
(207, 72, '_linkedin', 'field_6051b1470a7f8'),
(208, 72, 'tags', ''),
(209, 72, '_tags', 'field_6051b18021931'),
(210, 72, 'short_deatils', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(211, 72, '_short_deatils', 'field_6051b1adc27c6'),
(212, 72, 'start_date', ''),
(213, 72, '_start_date', 'field_6051b1e2c27c7'),
(214, 72, 'event_menue', ''),
(215, 72, '_event_menue', 'field_6051b1fdc27c8'),
(216, 72, 'event_type', 'Offline'),
(217, 72, '_event_type', 'field_6051b20bc27c9'),
(218, 72, 'organizer', 'ABC groups'),
(219, 72, '_organizer', 'field_6051b22ac27ca'),
(220, 72, 'category', 'Web dev'),
(221, 72, '_category', 'field_6051b23ec27cb'),
(222, 72, 'email', ''),
(223, 72, '_email', 'field_6051b24cc27cc'),
(224, 68, 'image_speaker_1', '71'),
(225, 68, '_image_speaker_1', 'field_605596602af0b'),
(226, 68, 'image_speaker_2', '70'),
(227, 68, '_image_speaker_2', 'field_605596bf0ef4d'),
(228, 68, 'image_speaker_3', '69'),
(229, 68, '_image_speaker_3', 'field_605596d9ec64e'),
(230, 78, 'event_speaker_name_1', 'Shahnawaz'),
(231, 78, '_event_speaker_name_1', 'field_6051ae55152c6'),
(232, 78, 'event_speaker_name_2', 'Shan'),
(233, 78, '_event_speaker_name_2', 'field_6051aeb3e6da1'),
(234, 78, 'event_speaker_name_3', 'Altaf'),
(235, 78, '_event_speaker_name_3', 'field_6051aee5fd774'),
(236, 78, 'date_time', ''),
(237, 78, '_date_time', 'field_6051aef57de4f'),
(238, 78, 'map', ''),
(239, 78, '_map', 'field_6051af3224c67'),
(240, 78, 'gallery', 'a:4:{i:0;s:2:\"30\";i:1;s:2:\"69\";i:2;s:2:\"70\";i:3;s:2:\"71\";}'),
(241, 78, '_gallery', 'field_6051af5f4d15c'),
(242, 78, 'faq_1', ''),
(243, 78, '_faq_1', 'field_6051b01fa6586'),
(244, 78, 'faq_2', ''),
(245, 78, '_faq_2', 'field_6051b080a6587'),
(246, 78, 'faq_3', ''),
(247, 78, '_faq_3', 'field_6051b092a6588'),
(248, 78, 'faq_4', ''),
(249, 78, '_faq_4', 'field_6051b09fa6589'),
(250, 78, 'faq_5', ''),
(251, 78, '_faq_5', 'field_6051b0baa658b'),
(252, 78, 'facebook', ''),
(253, 78, '_facebook', 'field_6051b0da0a7f5'),
(254, 78, 'tweeter_copy', ''),
(255, 78, '_tweeter_copy', 'field_6051b1080a7f6'),
(256, 78, 'instagram', ''),
(257, 78, '_instagram', 'field_6051b11f0a7f7'),
(258, 78, 'linkedin', ''),
(259, 78, '_linkedin', 'field_6051b1470a7f8'),
(260, 78, 'tags', ''),
(261, 78, '_tags', 'field_6051b18021931'),
(262, 78, 'short_deatils', ''),
(263, 78, '_short_deatils', 'field_6051b1adc27c6'),
(264, 78, 'start_date', ''),
(265, 78, '_start_date', 'field_6051b1e2c27c7'),
(266, 78, 'event_menue', ''),
(267, 78, '_event_menue', 'field_6051b1fdc27c8'),
(268, 78, 'event_type', ''),
(269, 78, '_event_type', 'field_6051b20bc27c9'),
(270, 78, 'organizer', ''),
(271, 78, '_organizer', 'field_6051b22ac27ca'),
(272, 78, 'category', ''),
(273, 78, '_category', 'field_6051b23ec27cb'),
(274, 78, 'email', ''),
(275, 78, '_email', 'field_6051b24cc27cc'),
(276, 78, 'image_speaker_1', '71'),
(277, 78, '_image_speaker_1', 'field_605596602af0b'),
(278, 78, 'image_speaker_2', '70'),
(279, 78, '_image_speaker_2', 'field_605596bf0ef4d'),
(280, 78, 'image_speaker_3', '69'),
(281, 78, '_image_speaker_3', 'field_605596d9ec64e'),
(282, 79, '_edit_lock', '1616397862:1'),
(283, 79, '_edit_last', '1'),
(284, 81, '_edit_lock', '1616397885:1'),
(285, 81, '_edit_last', '1'),
(286, 83, '_menu_item_type', 'post_type'),
(287, 83, '_menu_item_menu_item_parent', '85'),
(288, 83, '_menu_item_object_id', '81'),
(289, 83, '_menu_item_object', 'page'),
(290, 83, '_menu_item_target', ''),
(291, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 83, '_menu_item_xfn', ''),
(293, 83, '_menu_item_url', ''),
(295, 84, '_menu_item_type', 'post_type'),
(296, 84, '_menu_item_menu_item_parent', '85'),
(297, 84, '_menu_item_object_id', '79'),
(298, 84, '_menu_item_object', 'page'),
(299, 84, '_menu_item_target', ''),
(300, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(301, 84, '_menu_item_xfn', ''),
(302, 84, '_menu_item_url', ''),
(304, 17, '_wp_old_date', '2021-03-08'),
(305, 18, '_wp_old_date', '2021-03-08'),
(306, 25, '_wp_old_date', '2021-03-08'),
(307, 28, '_wp_old_date', '2021-03-08'),
(308, 85, '_menu_item_type', 'custom'),
(309, 85, '_menu_item_menu_item_parent', '0'),
(310, 85, '_menu_item_object_id', '85'),
(311, 85, '_menu_item_object', 'custom'),
(312, 85, '_menu_item_target', ''),
(313, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(314, 85, '_menu_item_xfn', ''),
(315, 85, '_menu_item_url', '#'),
(318, 72, 'image_speaker_1', '70'),
(319, 72, '_image_speaker_1', 'field_605596602af0b'),
(320, 72, 'image_speaker_2', '71'),
(321, 72, '_image_speaker_2', 'field_605596bf0ef4d'),
(322, 72, 'image_speaker_3', '69'),
(323, 72, '_image_speaker_3', 'field_605596d9ec64e'),
(324, 72, '_oembed_a097251d096e88008a49bbd4dd8ecb8e', '{{unknown}}'),
(327, 72, 'questions_0_accordian_header', 'What is a Computer'),
(328, 72, '_questions_0_accordian_header', 'field_605af4479a53f'),
(329, 72, 'questions_0_accordian_content', 'Hello'),
(330, 72, '_questions_0_accordian_content', 'field_605af4609a540'),
(331, 72, 'questions', '1'),
(332, 72, '_questions', 'field_605af42e9a53e'),
(333, 72, 'accordion_repeater_0_accordion_header', 'what is a computer'),
(334, 72, '_accordion_repeater_0_accordion_header', 'field_605af4479a53f'),
(335, 72, 'accordion_repeater_0_accordian_content', 'dhdfhhjdf'),
(336, 72, '_accordion_repeater_0_accordian_content', 'field_605af4609a540'),
(337, 72, 'accordion_repeater', '1'),
(338, 72, '_accordion_repeater', 'field_605af42e9a53e'),
(339, 72, 'accordion_repeater_0_accordion_content', 'jhgghgh'),
(340, 72, '_accordion_repeater_0_accordion_content', 'field_605af4609a540'),
(343, 106, '_edit_lock', '1616653744:1'),
(347, 106, '_edit_last', '1'),
(348, 119, '_edit_lock', '1617693255:1'),
(349, 119, '_edit_last', '1'),
(350, 119, 'name_of_the_event', 'hksdh Charole'),
(351, 119, '_name_of_the_event', 'field_605aef20edd9a'),
(352, 119, 'description', 'This is data analytics event'),
(353, 119, '_description', 'field_605aef55edd9b'),
(354, 119, 'event_date', '2021-03-28 23:08:00'),
(355, 119, '_event_date', 'field_605aef80edd9c'),
(356, 119, 'event_link', 'https://www.advancedcustomfields.com/'),
(357, 119, '_event_link', 'field_605c2a5a4ad34'),
(358, 119, 'speaker_name_1', 'Zen Dsouza'),
(359, 119, '_speaker_name_1', 'field_605aefd6edd9e'),
(360, 119, 'speaker_name_2', 'Jay Charole'),
(361, 119, '_speaker_name_2', 'field_605af001edd9f'),
(362, 119, 'speaker_name_3', 'Prabu Sharma'),
(363, 119, '_speaker_name_3', 'field_605af004edda0'),
(364, 119, 'event_speaker_1_image', '69'),
(365, 119, '_event_speaker_1_image', 'field_605af026edda2'),
(366, 119, 'event_speaker_2_image', '70'),
(367, 119, '_event_speaker_2_image', 'field_605af043edda4'),
(368, 119, 'event_speaker_3_image', '69'),
(369, 119, '_event_speaker_3_image', 'field_605af05bedda5'),
(370, 119, 'gallery', 'a:3:{i:0;s:2:\"71\";i:1;s:2:\"70\";i:2;s:2:\"69\";}'),
(371, 119, '_gallery', 'field_605c28e10a8d9'),
(372, 119, 'facebook', 'https://inblog.in/@girigowd1997'),
(373, 119, '_facebook', 'field_605c28ff0a8da'),
(374, 119, 'linked_in', 'https://inblog.in/@girigowd1997'),
(375, 119, '_linked_in', 'field_605c292a0a8db'),
(376, 119, 'instagram', 'https://inblog.in/@girigowd1997'),
(377, 119, '_instagram', 'field_605c293d0a8dc'),
(378, 119, 'short_details', 'hello world'),
(379, 119, '_short_details', 'field_605c294e0a8dd'),
(380, 119, 'event_type', 'Online'),
(381, 119, '_event_type', 'field_605c29a70a8de'),
(382, 119, 'organizer', 'Jay Charole\'s Data crux'),
(383, 119, '_organizer', 'field_605c29d00a8df'),
(384, 119, 'email_of_organizer', 'jaycharole@gmail.com'),
(385, 119, '_email_of_organizer', 'field_605c29dc0a8e0'),
(386, 119, '_thumbnail_id', '70'),
(389, 123, '_edit_lock', '1617258954:1'),
(390, 123, '_edit_last', '1'),
(394, 123, 'etn_event_location', '232'),
(395, 123, 'etn_event_schedule', ''),
(396, 123, 'etn_event_organizer', 'organizer'),
(397, 123, 'etn_start_date', '2021-03-30'),
(398, 123, 'etn_start_time', '14:53'),
(399, 123, 'etn_end_date', '2021-03-23'),
(400, 123, 'etn_end_time', ''),
(401, 123, 'etn_registration_deadline', '2021-03-29'),
(402, 123, 'etn_ticket_availability', 'no'),
(403, 123, 'etn_avaiilable_tickets', '999999999'),
(404, 123, 'etn_ticket_price', '19.95'),
(405, 123, '_price', '19.95'),
(406, 123, '_regular_price', '19.95'),
(407, 123, '_sale_price', '19.95'),
(408, 123, 'etn_event_socials', ''),
(409, 128, '_edit_lock', '1617045659:1'),
(410, 128, '_edit_last', '5'),
(411, 128, 'event_speaker_name_1', 'jb'),
(412, 128, '_event_speaker_name_1', 'field_6051ae55152c6'),
(413, 128, 'event_speaker_name_2', 'g'),
(414, 128, '_event_speaker_name_2', 'field_6051aeb3e6da1'),
(415, 128, 'event_speaker_name_3', 'n'),
(416, 128, '_event_speaker_name_3', 'field_6051aee5fd774'),
(417, 128, 'date_time', '2021-03-25 00:00:00'),
(418, 128, '_date_time', 'field_6051aef57de4f'),
(419, 128, 'map', ''),
(420, 128, '_map', 'field_6051af3224c67'),
(421, 128, 'gallery', 'a:4:{i:0;s:2:\"71\";i:1;s:2:\"70\";i:2;s:2:\"69\";i:3;s:2:\"30\";}'),
(422, 128, '_gallery', 'field_6051af5f4d15c'),
(423, 128, 'faq_1', ''),
(424, 128, '_faq_1', 'field_6051b01fa6586'),
(425, 128, 'faq_2', ''),
(426, 128, '_faq_2', 'field_6051b080a6587'),
(427, 128, 'faq_3', ''),
(428, 128, '_faq_3', 'field_6051b092a6588'),
(429, 128, 'faq_4', ''),
(430, 128, '_faq_4', 'field_6051b09fa6589'),
(431, 128, 'faq_5', ''),
(432, 128, '_faq_5', 'field_6051b0baa658b'),
(433, 128, 'facebook', ''),
(434, 128, '_facebook', 'field_6051b0da0a7f5'),
(435, 128, 'tweeter_copy', ''),
(436, 128, '_tweeter_copy', 'field_6051b1080a7f6'),
(437, 128, 'instagram', ''),
(438, 128, '_instagram', 'field_6051b11f0a7f7'),
(439, 128, 'linkedin', ''),
(440, 128, '_linkedin', 'field_6051b1470a7f8'),
(441, 128, 'tags', ''),
(442, 128, '_tags', 'field_6051b18021931'),
(443, 128, 'short_deatils', ''),
(444, 128, '_short_deatils', 'field_6051b1adc27c6'),
(445, 128, 'start_date', ''),
(446, 128, '_start_date', 'field_6051b1e2c27c7'),
(447, 128, 'event_menue', ''),
(448, 128, '_event_menue', 'field_6051b1fdc27c8'),
(449, 128, 'event_type', ''),
(450, 128, '_event_type', 'field_6051b20bc27c9'),
(451, 128, 'organizer', ''),
(452, 128, '_organizer', 'field_6051b22ac27ca'),
(453, 128, 'category', ''),
(454, 128, '_category', 'field_6051b23ec27cb'),
(455, 128, 'email', ''),
(456, 128, '_email', 'field_6051b24cc27cc'),
(457, 128, 'image_speaker_1', ''),
(458, 128, '_image_speaker_1', 'field_605596602af0b'),
(459, 128, 'image_speaker_2', ''),
(460, 128, '_image_speaker_2', 'field_605596bf0ef4d'),
(461, 128, 'image_speaker_3', ''),
(462, 128, '_image_speaker_3', 'field_605596d9ec64e'),
(463, 128, 'accordion_repeater', ''),
(464, 128, '_accordion_repeater', 'field_605af42e9a53e'),
(465, 119, 'email', 'jaycharole@gmail.com'),
(466, 119, '_email', 'field_6061e2cd827c2'),
(467, 119, '_', 'field_6061e2d5827c3'),
(468, 119, 'event_start_date_and_time', '2021-04-02 13:00:00'),
(469, 119, '_event_start_date_and_time', 'field_605aef80edd9c'),
(470, 119, 'event_end_date_and_time_copy', '2021-04-04 19:00:00'),
(471, 119, '_event_end_date_and_time_copy', 'field_6061e5733b8dc'),
(472, 119, 'event_end_date_and_time', '2021-04-04 18:30:00'),
(473, 119, '_event_end_date_and_time', 'field_6061e5733b8dc'),
(474, 119, 'twiter', 'https://inblog.in/@girigowd1997'),
(475, 119, '_twiter', 'field_6061ec66f6e38'),
(476, 72, 'start_date_time', '2021-04-04 11:00:00'),
(477, 72, '_start_date_time', 'field_6051aef57de4f'),
(478, 72, 'end_date_time', '2021-04-09 19:00:00'),
(479, 72, '_end_date_time', 'field_606229a423fcb'),
(480, 72, 'tweeter', 'https://www.datacamp.com/'),
(481, 72, '_tweeter', 'field_6051b1080a7f6'),
(482, 72, 'Brocheure', '160'),
(483, 72, '_Brocheure', 'field_6051b18021931'),
(484, 72, 'email_org', 'abcorg@gmail.com'),
(485, 72, '_email_org', 'field_6051b24cc27cc'),
(486, 72, 'event_img', '71'),
(487, 72, '_event_img', 'field_6062337aac1e4'),
(488, 119, 'event_img', '69'),
(489, 119, '_event_img', 'field_60623f70634d1'),
(490, 119, 'faq-1_question', 'Question 1'),
(491, 119, '_faq-1_question', 'field_6062bb5752be7'),
(492, 119, 'faq-1_answer', 'Once we ensure that every element in our list is aligned nicely, we can get to the fun part, the hover effect. We\'re making each of the icons move up 4px on hover. All we need to do is select each list item add a :hover after it and write transform: translateY(-4px).Then, while this is optional, we set the transition to 0.3s to so that when we hover over the icon, it will move up gradually in a smooth way rather than move up abruptly.'),
(493, 119, '_faq-1_answer', 'field_6062bbc452bec'),
(494, 119, 'faq-2_question', 'Question 2'),
(495, 119, '_faq-2_question', 'field_6062bb9052be8'),
(496, 119, 'faq-2_answer', 'Once we ensure that every element in our list is aligned nicely, we can get to the fun part, the hover effect. We\'re making each of the icons move up 4px on hover. All we need to do is select each list item add a :hover after it and write transform: translateY(-4px).Then, while this is optional, we set the transition to 0.3s to so that when we hover over the icon, it will move up gradually in a smooth way rather than move up abruptly.'),
(497, 119, '_faq-2_answer', 'field_6062bbda52bed'),
(498, 119, 'faq-3_question', 'Question 3'),
(499, 119, '_faq-3_question', 'field_6062bb9d52be9'),
(500, 119, 'faq-3_answer', 'Once we ensure that every element in our list is aligned nicely, we can get to the fun part, the hover effect. We\'re making each of the icons move up 4px on hover. All we need to do is select each list item add a :hover after it and write transform: translateY(-4px).Then, while this is optional, we set the transition to 0.3s to so that when we hover over the icon, it will move up gradually in a smooth way rather than move up abruptly.'),
(501, 119, '_faq-3_answer', 'field_6062bbec52bee'),
(502, 119, 'faq-4_question', 'Question 4'),
(503, 119, '_faq-4_question', 'field_6062bba652bea'),
(504, 119, 'faq-4_answer', 'Once we ensure that every element in our list is aligned nicely, we can get to the fun part, the hover effect. We\'re making each of the icons move up 4px on hover. All we need to do is select each list item add a :hover after it and write transform: translateY(-4px).Then, while this is optional, we set the transition to 0.3s to so that when we hover over the icon, it will move up gradually in a smooth way rather than move up abruptly.'),
(505, 119, '_faq-4_answer', 'field_6062bbfe52bef'),
(506, 119, 'faq-5_question', 'Question 5'),
(507, 119, '_faq-5_question', 'field_6062bbb152beb'),
(508, 119, 'faq-5_answer', 'Once we ensure that every element in our list is aligned nicely, we can get to the fun part, the hover effect. We\'re making each of the icons move up 4px on hover. All we need to do is select each list item add a :hover after it and write transform: translateY(-4px).Then, while this is optional, we set the transition to 0.3s to so that when we hover over the icon, it will move up gradually in a smooth way rather than move up abruptly.'),
(509, 119, '_faq-5_answer', 'field_6062bc1352bf0'),
(572, 72, 'faq-1_question', 'Question 1'),
(573, 72, '_faq-1_question', 'field_6062bfd53d812'),
(574, 72, 'faq-1_answer', 'FAQ ANSWER'),
(575, 72, '_faq-1_answer', 'field_6062c00e3d817'),
(576, 72, 'faq-2_question', 'Question 2'),
(577, 72, '_faq-2_question', 'field_6062bfdb3d813'),
(578, 72, 'faq-2_answer', 'FAQ ANSWER'),
(579, 72, '_faq-2_answer', 'field_6062c0343d819'),
(580, 72, 'faq-3_question', 'Question 3'),
(581, 72, '_faq-3_question', 'field_6062bfde3d814'),
(582, 72, 'faq-3_answer', 'FAQ ANSWER'),
(583, 72, '_faq-3_answer', 'field_6062c03a3d81a'),
(584, 72, 'faq-4_question', 'Question 4'),
(585, 72, '_faq-4_question', 'field_6062bfe13d815'),
(586, 72, 'faq-4_answer', 'FAQ ANSWER'),
(587, 72, '_faq-4_answer', 'field_6062c0423d81b'),
(588, 72, 'faq-5_question', 'Question 5'),
(589, 72, '_faq-5_question', 'field_6062bfe63d816'),
(590, 72, 'faq-5_answer', 'FAQ ANSWER'),
(591, 72, '_faq-5_answer', 'field_6062c04b3d81c'),
(593, 160, '_wp_attached_file', '2021/03/Capgemini-Computer-Fundamentals.pdf'),
(594, 160, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:4:\"full\";a:4:{s:4:\"file\";s:39:\"Capgemini-Computer-Fundamentals-pdf.jpg\";s:5:\"width\";i:1088;s:6:\"height\";i:1408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"Capgemini-Computer-Fundamentals-pdf-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"Capgemini-Computer-Fundamentals-pdf-791x1024.jpg\";s:5:\"width\";i:791;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"Capgemini-Computer-Fundamentals-pdf-116x150.jpg\";s:5:\"width\";i:116;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(595, 119, 'Brocheure', '160'),
(596, 119, '_Brocheure', 'field_6062cb4601911'),
(597, 162, 'cust_key', 'ddd'),
(598, 162, '_edit_lock', '1617224266:1'),
(599, 163, 'cust_key', ''),
(600, 163, '_edit_lock', '1617224303:1'),
(601, 164, 'cust_key', 'sdfsfd'),
(602, 164, '_edit_lock', '1617258772:1'),
(603, 165, '_edit_lock', '1617263693:1'),
(604, 68, 'event_img', ''),
(605, 68, '_event_img', 'field_6062337aac1e4'),
(606, 68, 'start_date_time', ''),
(607, 68, '_start_date_time', 'field_6051aef57de4f'),
(608, 68, 'end_date_time', ''),
(609, 68, '_end_date_time', 'field_606229a423fcb'),
(610, 68, 'tweeter', ''),
(611, 68, '_tweeter', 'field_6051b1080a7f6'),
(612, 68, 'Brocheure', ''),
(613, 68, '_Brocheure', 'field_6051b18021931'),
(614, 68, 'email_org', ''),
(615, 68, '_email_org', 'field_6051b24cc27cc'),
(616, 68, 'faq-1_question', ''),
(617, 68, '_faq-1_question', 'field_6062bfd53d812'),
(618, 68, 'faq-1_answer', ''),
(619, 68, '_faq-1_answer', 'field_6062c00e3d817'),
(620, 68, 'faq-2_question', ''),
(621, 68, '_faq-2_question', 'field_6062bfdb3d813'),
(622, 68, 'faq-2_answer', ''),
(623, 68, '_faq-2_answer', 'field_6062c0343d819'),
(624, 68, 'faq-3_question', ''),
(625, 68, '_faq-3_question', 'field_6062bfde3d814'),
(626, 68, 'faq-3_answer', ''),
(627, 68, '_faq-3_answer', 'field_6062c03a3d81a'),
(628, 68, 'faq-4_question', ''),
(629, 68, '_faq-4_question', 'field_6062bfe13d815'),
(630, 68, 'faq-4_answer', ''),
(631, 68, '_faq-4_answer', 'field_6062c0423d81b'),
(632, 68, 'faq-5_question', ''),
(633, 68, '_faq-5_question', 'field_6062bfe63d816'),
(634, 68, 'faq-5_answer', ''),
(635, 68, '_faq-5_answer', 'field_6062c04b3d81c');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-06 06:20:19', '2021-03-06 06:20:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-03-06 06:20:19', '2021-03-06 06:20:19', '', 0, 'http://localhost/meetup/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-06 06:20:19', '2021-03-06 06:20:19', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/meetup/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-03-06 06:20:19', '2021-03-06 06:20:19', '', 0, 'http://localhost/meetup/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-06 06:20:19', '2021-03-06 06:20:19', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/meetup.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-03-06 06:20:19', '2021-03-06 06:20:19', '', 0, 'http://localhost/meetup/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-03-06 06:25:07', '2021-03-06 06:25:07', '', 'event_register', '', 'publish', 'closed', 'closed', '', 'event_register', '', '', '2021-03-06 06:25:07', '2021-03-06 06:25:07', '', 0, 'http://localhost/meetup/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-03-06 06:25:07', '2021-03-06 06:25:07', '', 'event_register', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-03-06 06:25:07', '2021-03-06 06:25:07', '', 5, 'http://localhost/meetup/2021/03/06/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2021-03-06 06:26:15', '2021-03-06 06:26:15', '', 'org_register', '', 'publish', 'closed', 'closed', '', 'org_register', '', '', '2021-03-06 06:26:15', '2021-03-06 06:26:15', '', 0, 'http://localhost/meetup/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-03-06 06:26:15', '2021-03-06 06:26:15', '', 'org_register', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-03-06 06:26:15', '2021-03-06 06:26:15', '', 7, 'http://localhost/meetup/2021/03/06/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2021-03-06 06:26:48', '2021-03-06 06:26:48', '', 'user_register', '', 'publish', 'closed', 'closed', '', 'user_register', '', '', '2021-03-06 06:26:48', '2021-03-06 06:26:48', '', 0, 'http://localhost/meetup/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-03-06 06:26:48', '2021-03-06 06:26:48', '', 'user_register', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-03-06 06:26:48', '2021-03-06 06:26:48', '', 9, 'http://localhost/meetup/2021/03/06/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2021-03-06 06:28:00', '2021-03-06 06:28:00', '', 'registeration', '', 'publish', 'closed', 'closed', '', 'registeration', '', '', '2021-03-06 06:28:00', '2021-03-06 06:28:00', '', 0, 'http://localhost/meetup/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-03-06 06:28:00', '2021-03-06 06:28:00', '', 'registeration', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-03-06 06:28:00', '2021-03-06 06:28:00', '', 11, 'http://localhost/meetup/2021/03/06/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2021-03-06 20:11:28', '2021-03-06 20:11:28', '', 'Admin Area', '', 'publish', 'closed', 'closed', '', 'admin-area', '', '', '2021-03-06 20:11:28', '2021-03-06 20:11:28', '', 0, 'http://localhost/meetup/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-03-06 20:11:28', '2021-03-06 20:11:28', '', 'Admin Area', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-03-06 20:11:28', '2021-03-06 20:11:28', '', 13, 'http://localhost/meetup/2021/03/06/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2021-03-08 18:39:19', '2021-03-08 18:39:19', '', 'about_us', '', 'publish', 'closed', 'closed', '', 'about_us', '', '', '2021-03-08 18:39:19', '2021-03-08 18:39:19', '', 0, 'http://localhost/meetup/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-03-08 18:39:19', '2021-03-08 18:39:19', '', 'about_us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-08 18:39:19', '2021-03-08 18:39:19', '', 15, 'http://localhost/meetup/2021/03/08/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2021-03-22 07:33:36', '2021-03-08 18:50:30', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-03-22 07:33:36', '2021-03-22 07:33:36', '', 0, 'http://localhost/meetup/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-03-22 07:33:36', '2021-03-08 18:50:30', '', 'ABOUT US', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-03-22 07:33:36', '2021-03-22 07:33:36', '', 0, 'http://localhost/meetup/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2021-03-08 18:47:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-08 18:47:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-03-08 18:47:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-08 18:47:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2021-03-08 18:47:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-08 18:47:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2021-03-08 18:47:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-08 18:47:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2021-03-08 18:47:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-08 18:47:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2021-03-08 18:47:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-08 18:47:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2021-03-22 07:33:36', '2021-03-08 18:50:30', '', 'REGISTERATION', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-03-22 07:33:36', '2021-03-22 07:33:36', '', 0, 'http://localhost/meetup/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2021-03-08 18:51:04', '2021-03-08 18:51:04', '', 'Support/FAQ\'s', '', 'publish', 'closed', 'closed', '', 'support-faqs', '', '', '2021-03-08 18:51:04', '2021-03-08 18:51:04', '', 0, 'http://localhost/meetup/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-03-08 18:51:04', '2021-03-08 18:51:04', '', 'Support/FAQ\'s', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-03-08 18:51:04', '2021-03-08 18:51:04', '', 26, 'http://localhost/meetup/2021/03/08/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2021-03-22 07:33:37', '2021-03-08 18:52:00', '', 'FAQ’s', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2021-03-22 07:33:37', '2021-03-22 07:33:37', '', 0, 'http://localhost/meetup/?p=28', 7, 'nav_menu_item', '', 0),
(30, 1, '2021-03-13 07:41:53', '2021-03-13 07:41:53', '', 'background', '', 'inherit', 'open', 'closed', '', 'background', '', '', '2021-03-18 07:12:55', '2021-03-18 07:12:55', '', 0, 'http://localhost/meetup/wp-content/uploads/2021/03/background.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2021-03-16 18:40:22', '2021-03-16 18:40:22', '', 'assistant', '', 'publish', 'closed', 'closed', '', 'assistant', '', '', '2021-03-16 18:40:22', '2021-03-16 18:40:22', '', 0, 'http://localhost/meetup/?page_id=31', 0, 'page', '', 0),
(32, 1, '2021-03-16 18:40:22', '2021-03-16 18:40:22', '', 'assistant', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-03-16 18:40:22', '2021-03-16 18:40:22', '', 31, 'http://localhost/meetup/2021/03/16/31-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2021-03-17 07:24:26', '2021-03-17 07:24:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"offline_events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Offline Event Details', 'offline-event-details', 'publish', 'closed', 'closed', '', 'group_6051ae363ced7', '', '', '2021-03-30 06:54:45', '2021-03-30 06:54:45', '', 0, 'http://localhost/meetup/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2021-03-17 07:24:26', '2021-03-17 07:24:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Enter speakers name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Event Speaker name 1', 'event_speaker_name_1', 'publish', 'closed', 'closed', '', 'field_6051ae55152c6', '', '', '2021-03-17 07:24:26', '2021-03-17 07:24:26', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2021-03-17 07:25:22', '2021-03-17 07:25:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Enter speakers name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Event Speaker name 2', 'event_speaker_name_2', 'publish', 'closed', 'closed', '', 'field_6051aeb3e6da1', '', '', '2021-03-17 07:25:22', '2021-03-17 07:25:22', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2021-03-17 07:25:30', '2021-03-17 07:25:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Enter speakers name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Event Speaker name 3', 'event_speaker_name_3', 'publish', 'closed', 'closed', '', 'field_6051aee5fd774', '', '', '2021-03-17 07:25:30', '2021-03-17 07:25:30', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=38', 2, 'acf-field', '', 0),
(39, 1, '2021-03-17 07:26:35', '2021-03-17 07:26:35', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"d/m/Y g:i a\";s:9:\"first_day\";i:1;}', 'Start Date and Time', 'start_date_time', 'publish', 'closed', 'closed', '', 'field_6051aef57de4f', '', '', '2021-03-29 20:07:54', '2021-03-29 20:07:54', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=39', 4, 'acf-field', '', 0),
(40, 1, '2021-03-17 07:27:08', '2021-03-17 07:27:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_6051af3224c67', '', '', '2021-03-29 20:07:54', '2021-03-29 20:07:54', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=40', 6, 'acf-field', '', 0),
(41, 1, '2021-03-17 07:28:09', '2021-03-17 07:28:09', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";i:4;s:3:\"max\";i:8;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_6051af5f4d15c', '', '', '2021-03-29 20:07:54', '2021-03-29 20:07:54', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=41', 7, 'acf-field', '', 0),
(47, 1, '2021-03-17 07:36:12', '2021-03-17 07:36:12', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_6051b0da0a7f5', '', '', '2021-03-29 20:07:54', '2021-03-29 20:07:54', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=47', 8, 'acf-field', '', 0),
(48, 1, '2021-03-17 07:36:12', '2021-03-17 07:36:12', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Tweeter', 'tweeter', 'publish', 'closed', 'closed', '', 'field_6051b1080a7f6', '', '', '2021-03-29 20:07:54', '2021-03-29 20:07:54', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=48', 9, 'acf-field', '', 0),
(49, 1, '2021-03-17 07:36:12', '2021-03-17 07:36:12', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_6051b11f0a7f7', '', '', '2021-03-29 20:07:55', '2021-03-29 20:07:55', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=49', 10, 'acf-field', '', 0),
(50, 1, '2021-03-17 07:36:12', '2021-03-17 07:36:12', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Linked In', 'linkedin', 'publish', 'closed', 'closed', '', 'field_6051b1470a7f8', '', '', '2021-03-29 20:07:55', '2021-03-29 20:07:55', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=50', 11, 'acf-field', '', 0),
(51, 1, '2021-03-17 07:36:57', '2021-03-17 07:36:57', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Brocheure', 'Brocheure', 'publish', 'closed', 'closed', '', 'field_6051b18021931', '', '', '2021-03-30 06:54:45', '2021-03-30 06:54:45', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=51', 12, 'acf-field', '', 0),
(52, 1, '2021-03-17 07:40:26', '2021-03-17 07:40:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Short Deatils', 'short_deatils', 'publish', 'closed', 'closed', '', 'field_6051b1adc27c6', '', '', '2021-03-29 20:07:55', '2021-03-29 20:07:55', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=52', 13, 'acf-field', '', 0),
(55, 1, '2021-03-17 07:40:26', '2021-03-17 07:40:26', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"Online\";s:6:\"Online\";s:7:\"Offline\";s:7:\"Offline\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Event Type', 'event_type', 'publish', 'closed', 'closed', '', 'field_6051b20bc27c9', '', '', '2021-03-29 20:07:56', '2021-03-29 20:07:56', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=55', 14, 'acf-field', '', 0),
(56, 1, '2021-03-17 07:40:26', '2021-03-17 07:40:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Organizer', 'organizer', 'publish', 'closed', 'closed', '', 'field_6051b22ac27ca', '', '', '2021-03-29 20:07:56', '2021-03-29 20:07:56', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=56', 15, 'acf-field', '', 0),
(57, 1, '2021-03-17 07:40:26', '2021-03-17 07:40:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'field_6051b23ec27cb', '', '', '2021-03-29 20:07:56', '2021-03-29 20:07:56', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=57', 16, 'acf-field', '', 0),
(58, 1, '2021-03-17 07:40:26', '2021-03-17 07:40:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email', 'email_org', 'publish', 'closed', 'closed', '', 'field_6051b24cc27cc', '', '', '2021-03-29 20:07:56', '2021-03-29 20:07:56', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=58', 17, 'acf-field', '', 0),
(60, 1, '2021-03-17 07:41:51', '2021-03-17 07:41:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Online Events', 'online-events', 'trash', 'closed', 'closed', '', 'group_6051b2ad2ef1c__trashed', '', '', '2021-03-17 07:45:28', '2021-03-17 07:45:28', '', 0, 'http://localhost/meetup/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2021-03-17 07:46:11', '2021-03-17 07:46:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"online_events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Online Event Details', 'online-event-details', 'publish', 'closed', 'closed', '', 'group_6051b39d80beb', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 0, 'http://localhost/meetup/?post_type=acf-field-group&#038;p=61', 0, 'acf-field-group', '', 0),
(64, 1, '2021-03-18 06:22:10', '2021-03-18 06:22:10', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2021-03-18 06:22:10', '2021-03-18 06:22:10', '', 0, 'http://localhost/meetup/?page_id=64', 0, 'page', '', 0),
(65, 1, '2021-03-18 06:22:10', '2021-03-18 06:22:10', '', 'Events', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-03-18 06:22:10', '2021-03-18 06:22:10', '', 64, 'http://localhost/meetup/2021/03/18/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2021-03-18 06:36:26', '2021-03-18 06:36:26', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"offline_event_cat\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"online_event_cat\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Category Details', 'category-details', 'publish', 'closed', 'closed', '', 'group_6052f4bc1e886', '', '', '2021-03-18 07:05:21', '2021-03-18 07:05:21', '', 0, 'http://localhost/meetup/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2021-03-18 06:36:26', '2021-03-18 06:36:26', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Category Image', 'category_image', 'publish', 'closed', 'closed', '', 'field_6052f4c32cc23', '', '', '2021-03-18 07:05:21', '2021-03-18 07:05:21', '', 66, 'http://localhost/meetup/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(68, 1, '2021-03-18 07:13:51', '2021-03-18 07:13:51', '', 'SEO experts', '', 'publish', 'open', 'open', '', 'hello-bolo', '', '', '2021-04-06 07:16:54', '2021-04-06 07:16:54', '', 0, 'http://localhost/meetup/?post_type=offline_events&#038;p=68', 0, 'offline_events', '', 1),
(69, 1, '2021-03-18 07:13:35', '2021-03-18 07:13:35', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2021-03-25 06:31:36', '2021-03-25 06:31:36', '', 68, 'http://localhost/meetup/wp-content/uploads/2021/03/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2021-03-18 07:13:39', '2021-03-18 07:13:39', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2021-03-18 07:19:17', '2021-03-18 07:19:17', '', 68, 'http://localhost/meetup/wp-content/uploads/2021/03/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2021-03-18 07:13:41', '2021-03-18 07:13:41', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2021-03-18 07:13:41', '2021-03-18 07:13:41', '', 68, 'http://localhost/meetup/wp-content/uploads/2021/03/7.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2021-03-18 07:19:21', '2021-03-18 07:19:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'html css', '', 'publish', 'closed', 'closed', '', 'html-css', '', '', '2021-03-30 06:27:45', '2021-03-30 06:27:45', '', 0, 'http://localhost/meetup/?post_type=offline_events&#038;p=72', 0, 'offline_events', '', 0),
(74, 1, '2021-03-20 06:31:23', '2021-03-20 06:31:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Speaker 1', 'image_speaker_1', 'publish', 'closed', 'closed', '', 'field_605596602af0b', '', '', '2021-03-29 20:07:56', '2021-03-29 20:07:56', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=74', 18, 'acf-field', '', 0),
(75, 1, '2021-03-20 06:31:37', '2021-03-20 06:31:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Speaker 2', 'image_speaker_2', 'publish', 'closed', 'closed', '', 'field_605596bf0ef4d', '', '', '2021-03-29 20:07:56', '2021-03-29 20:07:56', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=75', 19, 'acf-field', '', 0),
(77, 1, '2021-03-20 06:31:56', '2021-03-20 06:31:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Speaker 3', 'image_speaker_3', 'publish', 'closed', 'closed', '', 'field_605596d9ec64e', '', '', '2021-03-29 20:07:56', '2021-03-29 20:07:56', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=77', 20, 'acf-field', '', 0),
(78, 1, '2021-03-20 06:42:36', '2021-03-20 06:42:36', '', 'SEO experts', '', 'inherit', 'closed', 'closed', '', '68-autosave-v1', '', '', '2021-03-20 06:42:36', '2021-03-20 06:42:36', '', 68, 'http://localhost/meetup/?p=78', 0, 'revision', '', 0),
(79, 1, '2021-03-22 07:26:41', '2021-03-22 07:26:41', '', 'Offline Events', '', 'publish', 'closed', 'closed', '', 'offline-events', '', '', '2021-03-22 07:26:41', '2021-03-22 07:26:41', '', 0, 'http://localhost/meetup/?page_id=79', 0, 'page', '', 0),
(80, 1, '2021-03-22 07:26:41', '2021-03-22 07:26:41', '', 'Offline Events', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2021-03-22 07:26:41', '2021-03-22 07:26:41', '', 79, 'http://localhost/meetup/?p=80', 0, 'revision', '', 0),
(81, 1, '2021-03-22 07:27:05', '2021-03-22 07:27:05', '', 'Online Events', '', 'publish', 'closed', 'closed', '', 'online-events', '', '', '2021-03-22 07:27:05', '2021-03-22 07:27:05', '', 0, 'http://localhost/meetup/?page_id=81', 0, 'page', '', 0),
(82, 1, '2021-03-22 07:27:05', '2021-03-22 07:27:05', '', 'Online Events', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2021-03-22 07:27:05', '2021-03-22 07:27:05', '', 81, 'http://localhost/meetup/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-03-22 07:33:36', '2021-03-22 07:27:33', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2021-03-22 07:33:36', '2021-03-22 07:33:36', '', 0, 'http://localhost/meetup/?p=83', 5, 'nav_menu_item', '', 0),
(84, 1, '2021-03-22 07:33:36', '2021-03-22 07:27:33', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2021-03-22 07:33:37', '2021-03-22 07:33:37', '', 0, 'http://localhost/meetup/?p=84', 6, 'nav_menu_item', '', 0),
(85, 1, '2021-03-22 07:33:36', '2021-03-22 07:33:36', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2021-03-22 07:33:36', '2021-03-22 07:33:36', '', 0, 'http://localhost/meetup/?p=85', 4, 'nav_menu_item', '', 0),
(87, 1, '2021-03-24 06:42:59', '2021-03-24 06:42:59', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'html css', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2021-03-24 06:42:59', '2021-03-24 06:42:59', '', 72, 'http://localhost/meetup/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-03-24 06:45:47', '2021-03-24 06:45:47', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'a097251d096e88008a49bbd4dd8ecb8e', '', '', '2021-03-24 06:45:47', '2021-03-24 06:45:47', '', 0, 'http://localhost/meetup/2021/03/24/a097251d096e88008a49bbd4dd8ecb8e/', 0, 'oembed_cache', '', 0),
(89, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Enter the name of the event you want to show on your event page\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:16:\"Enter event name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name of the event', 'name_of_the_event', 'publish', 'closed', 'closed', '', 'field_605aef20edd9a', '', '', '2021-03-25 06:58:21', '2021-03-25 06:58:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=89', 0, 'acf-field', '', 0),
(90, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"Enter the description of the event\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:26:\"Enter the description here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_605aef55edd9b', '', '', '2021-03-25 06:17:32', '2021-03-25 06:17:32', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=90', 1, 'acf-field', '', 0),
(91, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:36:\"Pick the Date and time for you event\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"d/m/Y g:i a\";s:9:\"first_day\";i:1;}', 'Event Start Date and Time', 'event_start_date_and_time', 'publish', 'closed', 'closed', '', 'field_605aef80edd9c', '', '', '2021-03-29 20:58:56', '2021-03-29 20:58:56', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=91', 3, 'acf-field', '', 0),
(93, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Enter Speaker name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Speaker Name 1', 'speaker_name_1', 'publish', 'closed', 'closed', '', 'field_605aefd6edd9e', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=93', 7, 'acf-field', '', 0),
(94, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Enter Speaker name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Speaker Name 2', 'speaker_name_2', 'publish', 'closed', 'closed', '', 'field_605af001edd9f', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=94', 8, 'acf-field', '', 0),
(95, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Enter Speaker name\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Speaker Name 3', 'speaker_name_3', 'publish', 'closed', 'closed', '', 'field_605af004edda0', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=95', 9, 'acf-field', '', 0),
(96, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Event Speaker 1 Image', 'event_speaker_1_image', 'publish', 'closed', 'closed', '', 'field_605af026edda2', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=96', 10, 'acf-field', '', 0),
(97, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Event Speaker 2 Image', 'event_speaker_2_image', 'publish', 'closed', 'closed', '', 'field_605af043edda4', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=97', 11, 'acf-field', '', 0),
(98, 1, '2021-03-24 07:56:03', '2021-03-24 07:56:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Event Speaker 3 Image', 'event_speaker_3_image', 'publish', 'closed', 'closed', '', 'field_605af05bedda5', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=98', 12, 'acf-field', '', 0),
(106, 1, '2021-03-25 06:28:34', '0000-00-00 00:00:00', '', 'Wordpr', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-03-25 06:28:34', '2021-03-25 06:28:34', '', 0, 'http://localhost/meetup/?post_type=offline_events&#038;p=106', 0, 'offline_events', '', 0),
(107, 1, '2021-03-25 06:13:30', '2021-03-25 06:13:30', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";i:3;s:3:\"max\";i:6;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_605c28e10a8d9', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=107', 13, 'acf-field', '', 0),
(108, 1, '2021-03-25 06:13:30', '2021-03-25 06:13:30', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_605c28ff0a8da', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=108', 14, 'acf-field', '', 0),
(109, 1, '2021-03-25 06:13:30', '2021-03-25 06:13:30', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Linked IN', 'linked_in', 'publish', 'closed', 'closed', '', 'field_605c292a0a8db', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=109', 15, 'acf-field', '', 0),
(110, 1, '2021-03-25 06:13:30', '2021-03-25 06:13:30', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_605c293d0a8dc', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=110', 16, 'acf-field', '', 0),
(111, 1, '2021-03-25 06:13:30', '2021-03-25 06:13:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Short Details', 'short_details', 'publish', 'closed', 'closed', '', 'field_605c294e0a8dd', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=111', 18, 'acf-field', '', 0),
(112, 1, '2021-03-25 06:13:30', '2021-03-25 06:13:30', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"Online\";s:6:\"Online\";s:7:\"Offline\";s:7:\"Offline\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Event Type', 'event_type', 'publish', 'closed', 'closed', '', 'field_605c29a70a8de', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=112', 19, 'acf-field', '', 0),
(113, 1, '2021-03-25 06:13:30', '2021-03-25 06:13:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Organizer', 'organizer', 'publish', 'closed', 'closed', '', 'field_605c29d00a8df', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=113', 20, 'acf-field', '', 0),
(116, 1, '2021-03-25 06:15:14', '2021-03-25 06:15:14', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Event Link', 'event_link', 'publish', 'closed', 'closed', '', 'field_605c2a5a4ad34', '', '', '2021-03-29 20:58:57', '2021-03-29 20:58:57', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=116', 5, 'acf-field', '', 0),
(119, 1, '2021-03-25 06:33:05', '2021-03-25 06:33:05', 'In order to put the icons in a circular border background, we need to give a specific value to the icon <code>font-size</code>, <code>line-height</code>, and the circle <code>width</code> and <code>height</code>. First, we make the border circle by giving setting its radius as 50%. The icon font size is up to you. Just make sure that the <code>line-height</code>, <code>width</code>, and <code>height</code> values are about as twice as big as the <code>font-size</code>. That way your icon will be well placed in the center, both horizontally and vertically.\r\n\r\nOnce we ensure that every element in our list is aligned nicely, we can get to the fun part, the hover effect. We\'re making each of the icons move up 4px on hover. All we need to do is select each list item add a <code>:hover</code> after it and write <code>transform: translateY(-4px)</code>.Then, while this is optional, we set the <code>transition</code> to 0.3s to so that when we hover over the icon, it will move up gradually in a smooth way rather than move up abruptly.', 'Data analytics', '', 'publish', 'open', 'open', '', 'data-analytics', '', '', '2021-04-01 07:57:12', '2021-04-01 07:57:12', '', 0, 'http://localhost/meetup/?post_type=online_events&#038;p=119', 0, 'online_events', '', 10),
(123, 1, '2021-03-28 09:17:46', '2021-03-28 09:17:46', 'xxz', 'test..........', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2021-03-28 09:17:46', '2021-03-28 09:17:46', '', 0, 'http://localhost/meetup/?post_type=etn&#038;p=123', 0, 'etn', '', 0),
(128, 5, '2021-03-28 09:24:04', '2021-03-28 09:24:04', 'bm', 'tiy', '', 'publish', 'closed', 'closed', '', 'tiy', '', '', '2021-03-28 09:24:04', '2021-03-28 09:24:04', '', 0, 'http://localhost/meetup/?post_type=offline_events&#038;p=128', 0, 'offline_events', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(131, 1, '2021-03-29 14:23:22', '2021-03-29 14:23:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_6061e2cd827c2', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=131', 21, 'acf-field', '', 0),
(133, 1, '2021-03-29 14:36:04', '2021-03-29 14:36:04', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:36:\"Pick the Date and time for you event\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"d/m/Y g:i a\";s:9:\"first_day\";i:1;}', 'Event End Date and Time', 'event_end_date_and_time', 'publish', 'closed', 'closed', '', 'field_6061e5733b8dc', '', '', '2021-03-29 20:58:57', '2021-03-29 20:58:57', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=133', 4, 'acf-field', '', 0),
(134, 1, '2021-03-29 15:04:28', '2021-03-29 15:04:28', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twiter', 'twiter', 'publish', 'closed', 'closed', '', 'field_6061ec66f6e38', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=134', 17, 'acf-field', '', 0),
(135, 1, '2021-03-29 19:27:13', '2021-03-29 19:27:13', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"d/m/Y g:i a\";s:9:\"first_day\";i:1;}', 'End Date and Time', 'end_date_time', 'publish', 'closed', 'closed', '', 'field_606229a423fcb', '', '', '2021-03-29 20:07:54', '2021-03-29 20:07:54', '', 35, 'http://localhost/meetup/?post_type=acf-field&#038;p=135', 5, 'acf-field', '', 0),
(136, 1, '2021-03-29 20:07:54', '2021-03-29 20:07:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Event Image', 'event_img', 'publish', 'closed', 'closed', '', 'field_6062337aac1e4', '', '', '2021-03-29 20:07:54', '2021-03-29 20:07:54', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=136', 3, 'acf-field', '', 0),
(137, 1, '2021-03-29 20:58:56', '2021-03-29 20:58:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:34:\"Enter the description of the event\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'event_img', 'publish', 'closed', 'closed', '', 'field_60623f70634d1', '', '', '2021-03-29 20:58:56', '2021-03-29 20:58:56', '', 61, 'http://localhost/meetup/?post_type=acf-field&p=137', 2, 'acf-field', '', 0),
(138, 1, '2021-03-30 05:51:02', '2021-03-30 05:51:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-1 (Question)', 'faq-1_question', 'publish', 'closed', 'closed', '', 'field_6062bb5752be7', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=138', 22, 'acf-field', '', 0),
(139, 1, '2021-03-30 05:51:02', '2021-03-30 05:51:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-1 (Answer)', 'faq-1_answer', 'publish', 'closed', 'closed', '', 'field_6062bbc452bec', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=139', 23, 'acf-field', '', 0),
(140, 1, '2021-03-30 05:51:02', '2021-03-30 05:51:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-2 (Question)', 'faq-2_question', 'publish', 'closed', 'closed', '', 'field_6062bb9052be8', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=140', 24, 'acf-field', '', 0),
(141, 1, '2021-03-30 05:51:02', '2021-03-30 05:51:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-2 (Answer)', 'faq-2_answer', 'publish', 'closed', 'closed', '', 'field_6062bbda52bed', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=141', 25, 'acf-field', '', 0),
(142, 1, '2021-03-30 05:51:02', '2021-03-30 05:51:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-3 (Question)', 'faq-3_question', 'publish', 'closed', 'closed', '', 'field_6062bb9d52be9', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=142', 26, 'acf-field', '', 0),
(143, 1, '2021-03-30 05:51:02', '2021-03-30 05:51:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-3 (Answer)', 'faq-3_answer', 'publish', 'closed', 'closed', '', 'field_6062bbec52bee', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=143', 27, 'acf-field', '', 0),
(144, 1, '2021-03-30 05:51:03', '2021-03-30 05:51:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-4 (Question)', 'faq-4_question', 'publish', 'closed', 'closed', '', 'field_6062bba652bea', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=144', 28, 'acf-field', '', 0),
(145, 1, '2021-03-30 05:51:03', '2021-03-30 05:51:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-4 (Answer)', 'faq-4_answer', 'publish', 'closed', 'closed', '', 'field_6062bbfe52bef', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=145', 29, 'acf-field', '', 0),
(146, 1, '2021-03-30 05:51:03', '2021-03-30 05:51:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-5 (Question)', 'faq-5_question', 'publish', 'closed', 'closed', '', 'field_6062bbb152beb', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=146', 30, 'acf-field', '', 0),
(147, 1, '2021-03-30 05:51:03', '2021-03-30 05:51:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-5 (Answer)', 'faq-5_answer', 'publish', 'closed', 'closed', '', 'field_6062bc1352bf0', '', '', '2021-03-30 06:55:22', '2021-03-30 06:55:22', '', 61, 'http://localhost/meetup/?post_type=acf-field&#038;p=147', 31, 'acf-field', '', 0),
(149, 1, '2021-03-30 06:09:11', '2021-03-30 06:09:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-1 (Question)', 'faq-1_question', 'publish', 'closed', 'closed', '', 'field_6062bfd53d812', '', '', '2021-03-30 06:09:11', '2021-03-30 06:09:11', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=149', 21, 'acf-field', '', 0),
(150, 1, '2021-03-30 06:09:11', '2021-03-30 06:09:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-1 (Answer)', 'faq-1_answer', 'publish', 'closed', 'closed', '', 'field_6062c00e3d817', '', '', '2021-03-30 06:09:11', '2021-03-30 06:09:11', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=150', 22, 'acf-field', '', 0),
(151, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-2 (Question)', 'faq-2_question', 'publish', 'closed', 'closed', '', 'field_6062bfdb3d813', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=151', 23, 'acf-field', '', 0),
(152, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-2 (Answer)', 'faq-2_answer', 'publish', 'closed', 'closed', '', 'field_6062c0343d819', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=152', 24, 'acf-field', '', 0),
(153, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-3 (Question)', 'faq-3_question', 'publish', 'closed', 'closed', '', 'field_6062bfde3d814', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=153', 25, 'acf-field', '', 0),
(154, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-3 (Answer)', 'faq-3_answer', 'publish', 'closed', 'closed', '', 'field_6062c03a3d81a', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=154', 26, 'acf-field', '', 0),
(155, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-4 (Question)', 'faq-4_question', 'publish', 'closed', 'closed', '', 'field_6062bfe13d815', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=155', 27, 'acf-field', '', 0),
(156, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-4 (Answer)', 'faq-4_answer', 'publish', 'closed', 'closed', '', 'field_6062c0423d81b', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=156', 28, 'acf-field', '', 0),
(157, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-5 (Question)', 'faq-5_question', 'publish', 'closed', 'closed', '', 'field_6062bfe63d816', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=157', 29, 'acf-field', '', 0),
(158, 1, '2021-03-30 06:09:12', '2021-03-30 06:09:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'FAQ-5 (Answer)', 'faq-5_answer', 'publish', 'closed', 'closed', '', 'field_6062c04b3d81c', '', '', '2021-03-30 06:09:12', '2021-03-30 06:09:12', '', 35, 'http://localhost/meetup/?post_type=acf-field&p=158', 30, 'acf-field', '', 0),
(160, 1, '2021-03-30 06:26:48', '2021-03-30 06:26:48', '', 'Capgemini Computer Fundamentals', '', 'inherit', 'open', 'closed', '', 'capgemini-computer-fundamentals', '', '', '2021-03-30 06:26:48', '2021-03-30 06:26:48', '', 72, 'http://localhost/meetup/wp-content/uploads/2021/03/Capgemini-Computer-Fundamentals.pdf', 0, 'attachment', 'application/pdf', 0),
(161, 1, '2021-03-30 06:55:21', '2021-03-30 06:55:21', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Brocheure', 'Brocheure', 'publish', 'closed', 'closed', '', 'field_6062cb4601911', '', '', '2021-03-30 06:55:21', '2021-03-30 06:55:21', '', 61, 'http://localhost/meetup/?post_type=acf-field&p=161', 6, 'acf-field', '', 0),
(162, 1, '2021-03-31 20:59:45', '2021-03-31 20:59:45', 'dfhhsdsdf', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2021-03-31 20:59:45', '2021-03-31 20:59:45', '', 0, 'http://localhost/meetup/online_events/test/', 0, 'online_events', '', 0),
(163, 1, '2021-03-31 21:00:19', '2021-03-31 21:00:19', 'sdjsfskd', 'bibda', '', 'publish', 'closed', 'closed', '', 'bibda', '', '', '2021-03-31 21:00:19', '2021-03-31 21:00:19', '', 0, 'http://localhost/meetup/online_events/bibda/', 0, 'online_events', '', 0),
(164, 1, '2021-04-01 06:34:37', '2021-04-01 06:34:37', 'kdjffds', 'new test', '', 'publish', 'closed', 'closed', '', 'new-test', '', '', '2021-04-01 06:34:37', '2021-04-01 06:34:37', '', 0, 'http://localhost/meetup/online_events/new-test/', 0, 'online_events', '', 0),
(165, 1, '2021-04-01 06:38:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-01 06:38:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?post_type=etn&p=165', 0, 'etn', '', 0),
(166, 1, '2021-04-04 21:58:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-04 21:58:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/meetup/?p=166', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rsvpcustomquestionanswers`
--

CREATE TABLE `wp_rsvpcustomquestionanswers` (
  `id` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `answer` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rsvpcustomquestionattendees`
--

CREATE TABLE `wp_rsvpcustomquestionattendees` (
  `id` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `attendeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rsvpcustomquestions`
--

CREATE TABLE `wp_rsvpcustomquestions` (
  `id` int(11) NOT NULL,
  `question` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `questionTypeID` int(11) NOT NULL,
  `sortOrder` int(11) NOT NULL DEFAULT '99',
  `permissionLevel` enum('public','private') NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rsvpquestiontypes`
--

CREATE TABLE `wp_rsvpquestiontypes` (
  `id` int(11) NOT NULL,
  `questionType` varchar(100) NOT NULL,
  `friendlyName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_rsvpquestiontypes`
--

INSERT INTO `wp_rsvpquestiontypes` (`id`, `questionType`, `friendlyName`) VALUES
(1, 'shortAnswer', 'Short Answer'),
(2, 'multipleChoice', 'Multiple Choice'),
(3, 'longAnswer', 'Long Answer'),
(4, 'dropdown', 'Drop Down'),
(5, 'radio', 'Radio');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'category_image', '30'),
(2, 3, '_category_image', 'field_6052f4c32cc23'),
(3, 4, 'category_image', '30'),
(4, 4, '_category_image', 'field_6052f4c32cc23'),
(5, 5, 'category_image', '30'),
(6, 5, '_category_image', 'field_6052f4c32cc23'),
(7, 6, 'category_image', '70'),
(8, 6, '_category_image', 'field_6052f4c32cc23'),
(9, 7, 'category_image', '71'),
(10, 7, '_category_image', 'field_6052f4c32cc23'),
(11, 8, 'category_image', '71'),
(12, 8, '_category_image', 'field_6052f4c32cc23');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Test 1', 'test-1', 0),
(4, 'tets', 'tets', 0),
(5, 'jjjhx', 'jjjhx', 0),
(6, 'web dev', 'web-dev', 0),
(7, 'Data Science', 'data-science', 0),
(8, 'Data Science', 'data-science', 0),
(9, 'Organizer', 'organizer', 0),
(10, 'Speaker', 'speaker', 0),
(11, 'ghfhg', 'ghfhg', 0),
(12, 'true', 'true', 0),
(13, 'ghhfg', 'ghhfg', 0),
(14, '1', '1', 0),
(15, 'sasdffdsf', 'sasdffdsf', 0),
(16, 'asdsfddsf', 'asdsfddsf', 0),
(17, 'sassasa', 'sassasa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(25, 2, 0),
(28, 2, 0),
(68, 3, 0),
(68, 5, 0),
(68, 6, 0),
(72, 6, 0),
(83, 2, 0),
(84, 2, 0),
(85, 2, 0),
(119, 8, 0),
(119, 14, 0),
(119, 15, 0),
(119, 17, 0),
(164, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'offline_event_cat', '', 0, 1),
(4, 4, 'online_event_cat', '', 0, 0),
(5, 5, 'offline_event_cat', '', 0, 1),
(6, 6, 'offline_event_cat', '', 0, 2),
(7, 7, 'offline_event_cat', '', 0, 0),
(8, 8, 'online_event_cat', '', 0, 1),
(9, 9, 'etn_speaker_category', 'Organizer of event', 0, 0),
(10, 10, 'etn_speaker_category', 'Speaker of schedule', 0, 0),
(11, 11, 'post_tag', '', 0, 0),
(12, 12, 'post_tag', '', 0, 0),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jay004'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"1baf75353a944b3ceae24d83e8548a3557ec076fba0d43901161fb00e56d1dd2\";a:4:{s:10:\"expiration\";i:1617746330;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0\";s:5:\"login\";i:1617573530;}s:64:\"bbdbbb005d013f8bc3c29cea555bea6594eb5f01c8984c066c579f4aacd91bb6\";a:4:{s:10:\"expiration\";i:1617775801;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0\";s:5:\"login\";i:1617603001;}s:64:\"0ffd6a2605a7582a9a976d20fa62131d59a7f12098c52850703d90d6c49f7fde\";a:4:{s:10:\"expiration\";i:1617860548;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0\";s:5:\"login\";i:1617687748;}s:64:\"5880a46bf1f822af775e02ec78a7def6ede7bc43a528cf7879ce20aa6a8e5c9b\";a:4:{s:10:\"expiration\";i:1617866281;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617693481;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=tinymce&posts_list_mode=list'),
(18, 1, 'wp_user-settings-time', '1617693505'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '166'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 2, 'nickname', 'hello'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(36, 2, 'wp_user_level', '0'),
(37, 2, 'default_password_nag', '1'),
(38, 3, 'nickname', 'jaycharole004'),
(39, 3, 'first_name', ''),
(40, 3, 'last_name', ''),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'syntax_highlighting', 'true'),
(44, 3, 'comment_shortcuts', 'false'),
(45, 3, 'admin_color', 'fresh'),
(46, 3, 'use_ssl', '0'),
(47, 3, 'show_admin_bar_front', 'true'),
(48, 3, 'locale', ''),
(49, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(50, 3, 'wp_user_level', '0'),
(51, 3, 'default_password_nag', ''),
(52, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-options,acf-field-group-locations,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(53, 1, 'screen_layout_acf-field-group', '2'),
(54, 1, 'closedpostboxes_dashboard', 'a:6:{i:0;s:17:\"dashboard_php_nag\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(55, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:17:\"dashboard_php_nag\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(56, 4, 'nickname', 'archanabide'),
(57, 4, 'first_name', ''),
(58, 4, 'last_name', ''),
(59, 4, 'description', ''),
(60, 4, 'rich_editing', 'true'),
(61, 4, 'syntax_highlighting', 'true'),
(62, 4, 'comment_shortcuts', 'false'),
(63, 4, 'admin_color', 'fresh'),
(64, 4, 'use_ssl', '0'),
(65, 4, 'show_admin_bar_front', 'true'),
(66, 4, 'locale', ''),
(67, 4, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(68, 4, 'wp_user_level', '2'),
(69, 4, 'default_password_nag', ''),
(70, 1, 'meta-box-order_etn', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:50:\"submitdiv,etn_categorydiv,etn_tagsdiv,postimagediv\";s:6:\"normal\";s:79:\"acf-group_6052f4bc1e886,acf-group_6051ae363ced7,acf-group_6051b39d80beb,slugdiv\";s:8:\"advanced\";s:29:\"etn-report,etn_event_settings\";}'),
(71, 1, 'screen_layout_etn', '2'),
(72, 5, 'nickname', 'prsiima624'),
(73, 5, 'first_name', 'Prabhu'),
(74, 5, 'last_name', 'sharma'),
(75, 5, 'description', ''),
(76, 5, 'rich_editing', 'true'),
(77, 5, 'syntax_highlighting', 'true'),
(78, 5, 'comment_shortcuts', 'false'),
(79, 5, 'admin_color', 'fresh'),
(80, 5, 'use_ssl', '0'),
(81, 5, 'show_admin_bar_front', 'true'),
(82, 5, 'locale', ''),
(83, 5, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(84, 5, 'wp_user_level', '2'),
(85, 5, 'dismissed_wp_pointers', ''),
(87, 5, 'wp_dashboard_quick_press_last_post_id', '127'),
(88, 5, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(89, 5, 'wp_user-settings', 'libraryContent=browse'),
(90, 5, 'wp_user-settings-time', '1616923442'),
(92, 4, 'wp_dashboard_quick_press_last_post_id', '129'),
(93, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(94, 1, 'closedpostboxes_online_events', 'a:0:{}'),
(95, 1, 'metaboxhidden_online_events', 'a:3:{i:0;s:23:\"acf-group_6052f4bc1e886\";i:1;s:23:\"acf-group_6051ae363ced7\";i:2;s:7:\"slugdiv\";}'),
(96, 1, 'closedpostboxes_offline_events', 'a:1:{i:0;s:16:\"commentstatusdiv\";}'),
(97, 1, 'metaboxhidden_offline_events', 'a:3:{i:0;s:23:\"acf-group_6052f4bc1e886\";i:1;s:23:\"acf-group_6051b39d80beb\";i:2;s:7:\"slugdiv\";}'),
(98, 1, 'meta-box-order_offline_events', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:43:\"submitdiv,offline_event_catdiv,postimagediv\";s:6:\"normal\";s:108:\"acf-group_6052f4bc1e886,commentstatusdiv,acf-group_6051ae363ced7,acf-group_6051b39d80beb,commentsdiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(99, 1, 'screen_layout_offline_events', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jay004', '$P$BjDAsuDbIjewkLzBygsbZlqRQzDa5u1', 'jay004', 'jaycharole@gmail.com', 'http://localhost/meetup', '2021-03-06 06:20:18', '', 0, 'jay004'),
(2, 'hello', '$P$B4jwjWEeBA04BVPEfNalmCBqWYyE5e/', 'hello', 'hello@hello.com', '', '2021-03-10 06:58:23', '1615359505:$P$BXjq6Lg0nHSD/Fv9v0AZlbqn7KMTnd1', 0, 'hello'),
(3, 'jaycharole004', '$P$BYp7MQV2WoIegEf8G1C7QY2ob4NtDc/', 'jaycharole004', 'jaycharole004@gmail.com', '', '2021-03-10 07:01:53', '', 0, 'jaycharole004'),
(4, 'archanabide', '$P$Bb6k63H56jeDFZ691ALOnaRNf9M8hx.', 'archanabide', 'itrjcollege@gmail.com', '', '2021-03-17 11:22:34', '', 0, 'archanabide'),
(5, 'prsiima624', '$P$BJycl7VzFRbapfWHlHNDv4269xhfPJ0', 'prsiima624', 'prs@gmail.com', '', '2021-03-28 09:20:56', '', 0, 'Prabhu sharma');

-- --------------------------------------------------------

--
-- Table structure for table `wp_user_reg`
--

CREATE TABLE `wp_user_reg` (
  `id` int(11) NOT NULL,
  `user_first_name` varchar(250) NOT NULL,
  `user_last_name` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_city` varchar(250) NOT NULL,
  `user_state` varchar(250) NOT NULL,
  `user_country` varchar(250) NOT NULL,
  `user_address` varchar(250) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_maratial_status` varchar(10) NOT NULL,
  `user_contact_no` int(20) NOT NULL,
  `user_experience_level` varchar(20) NOT NULL,
  `user_passwd` varchar(50) NOT NULL,
  `user_conf_passwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_user_reg`
--

INSERT INTO `wp_user_reg` (`id`, `user_first_name`, `user_last_name`, `user_email`, `user_city`, `user_state`, `user_country`, `user_address`, `user_gender`, `user_maratial_status`, `user_contact_no`, `user_experience_level`, `user_passwd`, `user_conf_passwd`) VALUES
(1, 'hais', '', '', '', '', '', '', '', '', 0, '', '', ''),
(2, 'Jay', 'Charole', '', '', '', '', '', '', '', 0, '', '', ''),
(3, 'hksdh', 'ksad', 'ksjak', '', '', '', '', '', '', 0, '', '', ''),
(4, 'Jay', 'Charole', 'ksjak', 'Shimla', '', '', '', '', '', 0, '', '', ''),
(5, 'hksdh', 'ksad', 'ksjak', 'Shimla', 'lajd', '', '', '', '', 0, '', '', ''),
(7, 'Jay', 'Charole', 'ksjak', 'Shimla', 'kashmir', 'usa', 'guh', '', '', 0, '', '', ''),
(8, 'Jay', 'Charole', 'uigh', 'g', 'gj', 'g', 'g', 'Female', '', 0, '', '', ''),
(9, 'Jay', 'Charole', 'ksjak', 'Shimla', 'kashmir', 'usa', 'fyj', 'Male', 'Married', 0, '', '', ''),
(10, 'hksdh', 'Charole', 'jaycharole@gmail.com', 'g', 'hi', 'gh', 'test', 'Male', 'Single', 789097647, '', '', ''),
(11, 'test name', 'test', 'test', 'test', 'test', 'test', 'test', 'Male', 'Single', 789097647, 'Fresher', 'tyui', 'tyui'),
(12, 'aarya', 'Charole', 'aarya@gmail', 'mumbai', 'mumbai', 'Ghatkopar', 'yiyiyi', 'Female', 'Single', 789097647, 'Student', 'aarya123', 'aarya124'),
(13, 'Mihir', 'Matkar', 'mihirmatkar@gmail.com', 'hwai', 'Maharashtra', 'India', 'Kanjurmarg', 'Male', 'Single', 789097647, 'Student', 'mihir', 'mihir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_associatedattendees`
--
ALTER TABLE `wp_associatedattendees`
  ADD KEY `attendeeID` (`attendeeID`),
  ADD KEY `associatedAttendeeID` (`associatedAttendeeID`);

--
-- Indexes for table `wp_attendeeanswers`
--
ALTER TABLE `wp_attendeeanswers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_attendees`
--
ALTER TABLE `wp_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_eo_events`
--
ALTER TABLE `wp_eo_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `StartDate` (`StartDate`),
  ADD KEY `EndDate` (`EndDate`);

--
-- Indexes for table `wp_eo_venuemeta`
--
ALTER TABLE `wp_eo_venuemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `eo_venue_id` (`eo_venue_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_etn_events`
--
ALTER TABLE `wp_etn_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `wp_etn_trans_meta`
--
ALTER TABLE `wp_etn_trans_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_org_reg`
--
ALTER TABLE `wp_org_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_rsvpcustomquestionanswers`
--
ALTER TABLE `wp_rsvpcustomquestionanswers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rsvpcustomquestionattendees`
--
ALTER TABLE `wp_rsvpcustomquestionattendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rsvpcustomquestions`
--
ALTER TABLE `wp_rsvpcustomquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rsvpquestiontypes`
--
ALTER TABLE `wp_rsvpquestiontypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_user_reg`
--
ALTER TABLE `wp_user_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_attendeeanswers`
--
ALTER TABLE `wp_attendeeanswers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_attendees`
--
ALTER TABLE `wp_attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `wp_eo_events`
--
ALTER TABLE `wp_eo_events`
  MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_eo_venuemeta`
--
ALTER TABLE `wp_eo_venuemeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_etn_events`
--
ALTER TABLE `wp_etn_events`
  MODIFY `event_id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_etn_trans_meta`
--
ALTER TABLE `wp_etn_trans_meta`
  MODIFY `meta_id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;
--
-- AUTO_INCREMENT for table `wp_org_reg`
--
ALTER TABLE `wp_org_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `wp_rsvpcustomquestionanswers`
--
ALTER TABLE `wp_rsvpcustomquestionanswers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rsvpcustomquestionattendees`
--
ALTER TABLE `wp_rsvpcustomquestionattendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rsvpcustomquestions`
--
ALTER TABLE `wp_rsvpcustomquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_rsvpquestiontypes`
--
ALTER TABLE `wp_rsvpquestiontypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_user_reg`
--
ALTER TABLE `wp_user_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
