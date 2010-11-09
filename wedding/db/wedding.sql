-- phpMyAdmin SQL Dump
-- version 2.11.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2010 at 11:28 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wedding`
--

-- --------------------------------------------------------

--
-- Table structure for table `sym_authors`
--

CREATE TABLE `sym_authors` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `username` varchar(20) collate utf8_unicode_ci NOT NULL default '',
  `password` varchar(40) collate utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) collate utf8_unicode_ci default NULL,
  `last_name` varchar(100) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `last_seen` datetime default '0000-00-00 00:00:00',
  `user_type` enum('author','developer') collate utf8_unicode_ci NOT NULL default 'author',
  `primary` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `default_section` int(11) NOT NULL,
  `auth_token_active` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `language` varchar(15) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_authors`
--

INSERT INTO `sym_authors` VALUES(1, 'njmcgee', '07e56214d35388801f46a9c2c6b2d763918bd433', 'Nathan', 'McGinness', 'nathanmcginness@gmail.com', '2010-11-09 23:12:06', 'developer', 'yes', 6, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_cache`
--

CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `hash` varchar(32) collate utf8_unicode_ci NOT NULL default '',
  `creation` int(14) NOT NULL default '0',
  `expiry` int(14) unsigned default NULL,
  `data` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `creation` (`creation`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_cache`
--

INSERT INTO `sym_cache` VALUES(1, '_session_config', 1289296655, NULL, 'eJwzBAAAMgAy');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries`
--

CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `sym_entries`
--

INSERT INTO `sym_entries` VALUES(30, 7, 1, '2010-11-09 22:08:09', '2010-11-09 11:08:09');
INSERT INTO `sym_entries` VALUES(29, 7, 1, '2010-11-09 22:08:06', '2010-11-09 11:08:06');
INSERT INTO `sym_entries` VALUES(13, 7, 1, '2010-11-09 21:50:18', '2010-11-09 10:50:18');
INSERT INTO `sym_entries` VALUES(28, 7, 1, '2010-11-09 22:06:08', '2010-11-09 11:06:08');
INSERT INTO `sym_entries` VALUES(27, 7, 1, '2010-11-09 22:05:37', '2010-11-09 11:05:37');
INSERT INTO `sym_entries` VALUES(26, 7, 1, '2010-11-09 22:05:27', '2010-11-09 11:05:27');
INSERT INTO `sym_entries` VALUES(25, 7, 1, '2010-11-09 22:05:16', '2010-11-09 11:05:16');
INSERT INTO `sym_entries` VALUES(14, 7, 1, '2010-11-09 21:50:41', '2010-11-09 10:50:41');
INSERT INTO `sym_entries` VALUES(15, 7, 1, '2010-11-09 21:56:46', '2010-11-09 10:56:46');
INSERT INTO `sym_entries` VALUES(16, 7, 1, '2010-11-09 21:58:26', '2010-11-09 10:58:26');
INSERT INTO `sym_entries` VALUES(17, 7, 1, '2010-11-09 22:00:26', '2010-11-09 11:00:26');
INSERT INTO `sym_entries` VALUES(18, 7, 1, '2010-11-09 22:01:13', '2010-11-09 11:01:13');
INSERT INTO `sym_entries` VALUES(19, 7, 1, '2010-11-09 22:01:37', '2010-11-09 11:01:37');
INSERT INTO `sym_entries` VALUES(20, 7, 1, '2010-11-09 22:02:10', '2010-11-09 11:02:10');
INSERT INTO `sym_entries` VALUES(21, 7, 1, '2010-11-09 22:02:48', '2010-11-09 11:02:48');
INSERT INTO `sym_entries` VALUES(22, 7, 1, '2010-11-09 22:03:03', '2010-11-09 11:03:03');
INSERT INTO `sym_entries` VALUES(24, 7, 1, '2010-11-09 22:04:49', '2010-11-09 11:04:49');
INSERT INTO `sym_entries` VALUES(31, 8, 1, '2010-11-09 22:42:05', '2010-11-09 11:42:05');
INSERT INTO `sym_entries` VALUES(32, 8, 1, '2010-11-09 22:42:47', '2010-11-09 11:42:47');
INSERT INTO `sym_entries` VALUES(33, 8, 1, '2010-11-09 22:42:52', '2010-11-09 11:42:52');
INSERT INTO `sym_entries` VALUES(34, 7, 1, '2010-11-09 22:43:13', '2010-11-09 11:43:13');
INSERT INTO `sym_entries` VALUES(35, 8, 1, '2010-11-09 22:47:45', '2010-11-09 11:47:45');
INSERT INTO `sym_entries` VALUES(36, 7, 1, '2010-11-09 22:50:39', '2010-11-09 11:50:39');
INSERT INTO `sym_entries` VALUES(37, 7, 1, '2010-11-09 22:53:44', '2010-11-09 11:53:44');
INSERT INTO `sym_entries` VALUES(38, 7, 1, '2010-11-09 22:58:45', '2010-11-09 11:58:45');
INSERT INTO `sym_entries` VALUES(39, 7, 1, '2010-11-09 23:07:45', '2010-11-09 12:07:45');
INSERT INTO `sym_entries` VALUES(40, 7, 1, '2010-11-09 23:09:25', '2010-11-09 12:09:25');
INSERT INTO `sym_entries` VALUES(41, 8, 1, '2010-11-09 23:10:18', '2010-11-09 12:10:18');
INSERT INTO `sym_entries` VALUES(42, 7, 1, '2010-11-09 23:11:26', '2010-11-09 12:11:26');
INSERT INTO `sym_entries` VALUES(43, 7, 1, '2010-11-09 23:11:53', '2010-11-09 12:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_24`
--

CREATE TABLE `sym_entries_data_24` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `sym_entries_data_24`
--

INSERT INTO `sym_entries_data_24` VALUES(18, 24, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(19, 25, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(20, 26, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(21, 27, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(22, 28, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(6, 13, 'no');
INSERT INTO `sym_entries_data_24` VALUES(7, 14, 'no');
INSERT INTO `sym_entries_data_24` VALUES(17, 15, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(9, 16, 'no');
INSERT INTO `sym_entries_data_24` VALUES(10, 17, 'no');
INSERT INTO `sym_entries_data_24` VALUES(11, 18, 'no');
INSERT INTO `sym_entries_data_24` VALUES(12, 19, 'no');
INSERT INTO `sym_entries_data_24` VALUES(13, 20, 'no');
INSERT INTO `sym_entries_data_24` VALUES(14, 21, 'no');
INSERT INTO `sym_entries_data_24` VALUES(15, 22, 'no');
INSERT INTO `sym_entries_data_24` VALUES(23, 29, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(24, 30, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(25, 34, 'yes');
INSERT INTO `sym_entries_data_24` VALUES(26, 36, 'no');
INSERT INTO `sym_entries_data_24` VALUES(27, 37, 'no');
INSERT INTO `sym_entries_data_24` VALUES(28, 38, 'no');
INSERT INTO `sym_entries_data_24` VALUES(29, 39, 'no');
INSERT INTO `sym_entries_data_24` VALUES(30, 40, 'no');
INSERT INTO `sym_entries_data_24` VALUES(31, 42, 'no');
INSERT INTO `sym_entries_data_24` VALUES(32, 43, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_25`
--

CREATE TABLE `sym_entries_data_25` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `sym_entries_data_25`
--

INSERT INTO `sym_entries_data_25` VALUES(18, 24, 'no');
INSERT INTO `sym_entries_data_25` VALUES(19, 25, 'no');
INSERT INTO `sym_entries_data_25` VALUES(20, 26, 'no');
INSERT INTO `sym_entries_data_25` VALUES(21, 27, 'no');
INSERT INTO `sym_entries_data_25` VALUES(22, 28, 'no');
INSERT INTO `sym_entries_data_25` VALUES(6, 13, 'no');
INSERT INTO `sym_entries_data_25` VALUES(7, 14, 'no');
INSERT INTO `sym_entries_data_25` VALUES(17, 15, 'no');
INSERT INTO `sym_entries_data_25` VALUES(9, 16, 'no');
INSERT INTO `sym_entries_data_25` VALUES(10, 17, 'no');
INSERT INTO `sym_entries_data_25` VALUES(11, 18, 'no');
INSERT INTO `sym_entries_data_25` VALUES(12, 19, 'no');
INSERT INTO `sym_entries_data_25` VALUES(13, 20, 'no');
INSERT INTO `sym_entries_data_25` VALUES(14, 21, 'no');
INSERT INTO `sym_entries_data_25` VALUES(15, 22, 'no');
INSERT INTO `sym_entries_data_25` VALUES(23, 29, 'no');
INSERT INTO `sym_entries_data_25` VALUES(24, 30, 'no');
INSERT INTO `sym_entries_data_25` VALUES(25, 34, 'yes');
INSERT INTO `sym_entries_data_25` VALUES(26, 36, 'no');
INSERT INTO `sym_entries_data_25` VALUES(27, 37, 'no');
INSERT INTO `sym_entries_data_25` VALUES(28, 38, 'no');
INSERT INTO `sym_entries_data_25` VALUES(29, 39, 'no');
INSERT INTO `sym_entries_data_25` VALUES(30, 40, 'no');
INSERT INTO `sym_entries_data_25` VALUES(31, 42, 'no');
INSERT INTO `sym_entries_data_25` VALUES(32, 43, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_26`
--

CREATE TABLE `sym_entries_data_26` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text collate utf8_unicode_ci,
  `value_formatted` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `sym_entries_data_26`
--

INSERT INTO `sym_entries_data_26` VALUES(10, 15, 'fdsf\r\nfdsfsd\r\nfdsfds', NULL);
INSERT INTO `sym_entries_data_26` VALUES(2, 16, 'vxcvxcvcx', NULL);
INSERT INTO `sym_entries_data_26` VALUES(3, 17, 'me\r\nyou', '<p>me\nyou</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(4, 18, 'me\r\nyou', '<p>me\nyou</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(5, 19, 'me\r\nyou', '<p>me\nyou</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(6, 20, 'me\r\nyou', '<p>me\nyou</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(7, 21, 'me\r\nyou', '<p>me\nyou</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(8, 22, 'me\r\nyou', '<p>me\nyou</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(11, 24, 'Ted, Bernadette, Jake, Kate', '<p>Ted, Bernadette, Jake, Kate</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(12, 25, 'Ted, Bernadette, Jake, Kate', '<p>Ted, Bernadette, Jake, Kate</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(13, 26, 'Ted, Bernadette, Jake, Kate', '<p>Ted, Bernadette, Jake, Kate</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(14, 27, 'Ted, Bernadette, Jake, Kate', '<p>Ted, Bernadette, Jake, Kate</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(15, 28, 'Ted, Bernadette, Jake, Kate', '<p>Ted, Bernadette, Jake, Kate</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(16, 29, 'Ted, Bernadette, Jake, Kate', '<p>Ted, Bernadette, Jake, Kate</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(17, 30, 'Ted, Bernadette, Jake, Kate', '<p>Ted, Bernadette, Jake, Kate</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(18, 34, 'gfddfgfdsgdfs', '<p>gfddfgfdsgdfs</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(19, 36, 'fds', '<p>fds</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(20, 37, 'fds', '<p>fds</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(21, 38, 'dsadas', '<p>dsadas</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(22, 39, 'fdsfsd', '<p>fdsfsd</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(23, 40, 'fdsfds', '<p>fdsfds</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(24, 42, 'hgfhfg', '<p>hgfhfg</p>\n');
INSERT INTO `sym_entries_data_26` VALUES(25, 43, 'fds', '<p>fds</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_27`
--

CREATE TABLE `sym_entries_data_27` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text collate utf8_unicode_ci,
  `value_formatted` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sym_entries_data_27`
--

INSERT INTO `sym_entries_data_27` VALUES(1, 31, 'tesgfgdf', '<p>tesgfgdf</p>\n');
INSERT INTO `sym_entries_data_27` VALUES(2, 32, 'tesgfgdf', '<p>tesgfgdf</p>\n');
INSERT INTO `sym_entries_data_27` VALUES(3, 33, 'alinta\r\n', '<p>alinta</p>\n');
INSERT INTO `sym_entries_data_27` VALUES(4, 35, 'tstsgfdfds', '<p>tstsgfdfds</p>\n');
INSERT INTO `sym_entries_data_27` VALUES(5, 41, 'fdsfsd', '<p>fdsfsd</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `sym_extensions`
--

CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `status` enum('enabled','disabled') collate utf8_unicode_ci NOT NULL default 'enabled',
  `version` varchar(20) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=137 ;

--
-- Dumping data for table `sym_extensions`
--

INSERT INTO `sym_extensions` VALUES(129, 'debugdevkit', 'enabled', '1.0.8');
INSERT INTO `sym_extensions` VALUES(130, 'export_ensemble', 'enabled', '1.11');
INSERT INTO `sym_extensions` VALUES(131, 'selectbox_link_field', 'enabled', '1.18');
INSERT INTO `sym_extensions` VALUES(132, 'jit_image_manipulation', 'enabled', '1.09');
INSERT INTO `sym_extensions` VALUES(133, 'maintenance_mode', 'enabled', '1.2');
INSERT INTO `sym_extensions` VALUES(134, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `sym_extensions` VALUES(135, 'markdown', 'enabled', '1.12');
INSERT INTO `sym_extensions` VALUES(136, 'xssfilter', 'enabled', '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `sym_extensions_delegates`
--

CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) collate utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) collate utf8_unicode_ci NOT NULL,
  `callback` varchar(100) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=185 ;

--
-- Dumping data for table `sym_extensions_delegates`
--

INSERT INTO `sym_extensions_delegates` VALUES(169, 129, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` VALUES(170, 129, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` VALUES(171, 130, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` VALUES(172, 132, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` VALUES(173, 132, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` VALUES(174, 133, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` VALUES(175, 133, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` VALUES(176, 133, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `sym_extensions_delegates` VALUES(177, 133, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `sym_extensions_delegates` VALUES(178, 133, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `sym_extensions_delegates` VALUES(179, 133, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `sym_extensions_delegates` VALUES(180, 134, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` VALUES(181, 134, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` VALUES(182, 136, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` VALUES(183, 136, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` VALUES(184, 136, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields`
--

CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `label` varchar(255) collate utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `type` varchar(32) collate utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL default '0',
  `required` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'yes',
  `sortorder` int(11) NOT NULL default '1',
  `location` enum('main','sidebar') collate utf8_unicode_ci NOT NULL default 'main',
  `show_column` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `sym_fields`
--

INSERT INTO `sym_fields` VALUES(26, 'Names', 'names', 'textarea', 7, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` VALUES(25, 'Taxi', 'taxi', 'checkbox', 7, 'no', 2, 'main', 'yes');
INSERT INTO `sym_fields` VALUES(24, 'Bus', 'bus', 'checkbox', 7, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` VALUES(27, 'Names', 'names', 'textarea', 8, 'yes', 0, 'main', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_author`
--

CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') collate utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `default_to_current_user` enum('yes','no') collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sym_fields_author`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_checkbox`
--

CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') collate utf8_unicode_ci NOT NULL default 'on',
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `sym_fields_checkbox`
--

INSERT INTO `sym_fields_checkbox` VALUES(17, 24, 'off', NULL);
INSERT INTO `sym_fields_checkbox` VALUES(18, 25, 'off', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_date`
--

CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sym_fields_date`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_input`
--

CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `sym_fields_input`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_select`
--

CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `static_options` text collate utf8_unicode_ci,
  `dynamic_options` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sym_fields_select`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_selectbox_link`
--

CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `related_field_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL default '20',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_fields_selectbox_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_taglist`
--

CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) collate utf8_unicode_ci default NULL,
  `pre_populate_source` varchar(15) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sym_fields_taglist`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_textarea`
--

CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) collate utf8_unicode_ci default NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `sym_fields_textarea`
--

INSERT INTO `sym_fields_textarea` VALUES(13, 27, 'markdown', 5);
INSERT INTO `sym_fields_textarea` VALUES(11, 26, 'markdown', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_upload`
--

CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) collate utf8_unicode_ci NOT NULL,
  `validator` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_fields_upload`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_forgotpass`
--

CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL default '0',
  `token` varchar(6) collate utf8_unicode_ci NOT NULL,
  `expiry` varchar(25) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sym_forgotpass`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_pages`
--

CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `parent` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `path` varchar(255) collate utf8_unicode_ci default NULL,
  `params` varchar(255) collate utf8_unicode_ci default NULL,
  `data_sources` text collate utf8_unicode_ci,
  `events` text collate utf8_unicode_ci,
  `sortorder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=77 ;

--
-- Dumping data for table `sym_pages`
--

INSERT INTO `sym_pages` VALUES(64, NULL, 'Home', 'home', NULL, 'category', NULL, 'login,save_attendee,save_non_attendee', 1);
INSERT INTO `sym_pages` VALUES(66, NULL, 'About', 'about', NULL, NULL, 'navigation,website_owner', 'login,save_message', 5);
INSERT INTO `sym_pages` VALUES(67, NULL, 'RSS', 'rss', NULL, NULL, 'rss_articles', NULL, 9);
INSERT INTO `sym_pages` VALUES(68, NULL, 'Archive', 'archive', NULL, 'year', 'archive,navigation', 'login', 4);
INSERT INTO `sym_pages` VALUES(69, NULL, 'Articles', 'articles', NULL, 'entry/cat', 'article,article_images,comments,navigation', 'login,save_comment', 2);
INSERT INTO `sym_pages` VALUES(70, NULL, 'Drafts', 'drafts', NULL, 'entry', 'article_images,drafts,navigation', 'login,publish_article', 3);
INSERT INTO `sym_pages` VALUES(75, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 10);
INSERT INTO `sym_pages` VALUES(76, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sym_pages_types`
--

CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=682 ;

--
-- Dumping data for table `sym_pages_types`
--

INSERT INTO `sym_pages_types` VALUES(659, 76, 'hidden');
INSERT INTO `sym_pages_types` VALUES(655, 70, 'admin');
INSERT INTO `sym_pages_types` VALUES(656, 75, 'hidden');
INSERT INTO `sym_pages_types` VALUES(680, 64, 'hidden');
INSERT INTO `sym_pages_types` VALUES(654, 69, 'hidden');
INSERT INTO `sym_pages_types` VALUES(463, 67, 'XML');
INSERT INTO `sym_pages_types` VALUES(462, 67, 'hidden');
INSERT INTO `sym_pages_types` VALUES(681, 64, 'index');
INSERT INTO `sym_pages_types` VALUES(657, 75, 'maintenance');
INSERT INTO `sym_pages_types` VALUES(658, 76, '404');

-- --------------------------------------------------------

--
-- Table structure for table `sym_sections`
--

CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `handle` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL default '0',
  `entry_order` varchar(7) collate utf8_unicode_ci default NULL,
  `entry_order_direction` enum('asc','desc') collate utf8_unicode_ci default 'asc',
  `hidden` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `navigation_group` varchar(255) collate utf8_unicode_ci NOT NULL default 'Content',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sym_sections`
--

INSERT INTO `sym_sections` VALUES(8, 'Non-attendee', 'non-attendee', 2, NULL, 'asc', 'no', 'Content');
INSERT INTO `sym_sections` VALUES(7, 'Attendee', 'attendee', 1, NULL, 'asc', 'no', 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `sym_sections_association`
--

CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned default NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `cascading_deletion` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_sections_association`
--


-- --------------------------------------------------------

--
-- Table structure for table `sym_sessions`
--

CREATE TABLE `sym_sessions` (
  `session` varchar(255) collate utf8_unicode_ci NOT NULL,
  `session_expires` int(10) unsigned NOT NULL default '0',
  `session_data` text collate utf8_unicode_ci,
  PRIMARY KEY  (`session`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sym_sessions`
--

INSERT INTO `sym_sessions` VALUES('c22725e525d46bb40df254a150669e29', 1289304727, 'sym-|a:2:{s:8:"username";s:7:"njmcgee";s:4:"pass";s:40:"07e56214d35388801f46a9c2c6b2d763918bd433";}');
