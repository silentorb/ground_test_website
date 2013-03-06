-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2013 at 10:13 AM
-- Server version: 5.5.22
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ground_drupal`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE IF NOT EXISTS `actions` (
  `aid` varchar(255) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `callback` varchar(255) NOT NULL DEFAULT '',
  `parameters` longtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`aid`, `type`, `callback`, `parameters`, `description`) VALUES
('comment_publish_action', 'comment', 'comment_publish_action', '', 'Publish comment'),
('comment_unpublish_action', 'comment', 'comment_unpublish_action', '', 'Unpublish comment'),
('node_make_sticky_action', 'node', 'node_make_sticky_action', '', 'Make post sticky'),
('node_make_unsticky_action', 'node', 'node_make_unsticky_action', '', 'Make post unsticky'),
('node_promote_action', 'node', 'node_promote_action', '', 'Promote post to front page'),
('node_publish_action', 'node', 'node_publish_action', '', 'Publish post'),
('node_save_action', 'node', 'node_save_action', '', 'Save post'),
('node_unpromote_action', 'node', 'node_unpromote_action', '', 'Remove post from front page'),
('node_unpublish_action', 'node', 'node_unpublish_action', '', 'Unpublish post'),
('user_block_ip_action', 'user', 'user_block_ip_action', '', 'Ban IP address of current user'),
('user_block_user_action', 'user', 'user_block_user_action', '', 'Block current user');

-- --------------------------------------------------------

--
-- Table structure for table `actions_aid`
--

CREATE TABLE IF NOT EXISTS `actions_aid` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `authmap`
--

CREATE TABLE IF NOT EXISTS `authmap` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `authname` varchar(128) NOT NULL DEFAULT '',
  `module` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `authname` (`authname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `autoload_registry`
--

CREATE TABLE IF NOT EXISTS `autoload_registry` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(9) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`type`),
  KEY `hook` (`type`,`weight`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autoload_registry`
--

INSERT INTO `autoload_registry` (`name`, `type`, `filename`, `module`, `weight`) VALUES
('Bloom_Property', 'class', 'sites/all/modules/custom/ground_php/inc/Trellis.inc', 'ground_php', 0),
('CCK', 'class', 'sites/all/modules/custom/ground_php/modules/ground_drupal/inc/CCK.inc', 'ground_drupal', 0),
('CCK_Link', 'class', 'sites/all/modules/custom/ground_php/modules/ground_drupal/inc/CCK_Link.inc', 'ground_drupal', 0),
('Content_Query', 'class', 'sites/all/modules/custom/ground_php/modules/ground_drupal/inc/Content_Query.inc', 'ground_drupal', 0),
('Delete', 'class', 'sites/all/modules/custom/ground_php/inc/Delete.inc', 'ground_php', 0),
('Dynamic_Query', 'class', 'sites/all/modules/custom/ground_php/inc/Dynamic_Query.inc', 'ground_php', 0),
('Fixture', 'class', 'sites/all/modules/custom/ground_php/test/Fixture.inc', 'ground_php', 0),
('Ground', 'class', 'sites/all/modules/custom/ground_php/inc/Ground.inc', 'ground_php', 0),
('Ground_Database', 'class', 'sites/all/modules/custom/ground_php/modules/ground_db/inc/Ground_Database.inc', 'ground_db', 0),
('Ground_Drupal', 'class', 'sites/all/modules/custom/ground_php/modules/ground_drupal/inc/Ground_Drupal.inc', 'ground_drupal', 0),
('Ground_Module', 'class', 'sites/all/modules/custom/ground_php/inc/Ground_Module.inc', 'ground_php', 0),
('History', 'class', 'sites/all/modules/custom/ground_php/modules/ground_history/inc/History.inc', 'ground_history', 0),
('History_Commit', 'class', 'sites/all/modules/custom/ground_php/modules/ground_history/inc/History_Commit.inc', 'ground_history', 0),
('History_Object', 'class', 'sites/all/modules/custom/ground_php/modules/ground_history/inc/History_Object.inc', 'ground_history', 0),
('History_Update', 'class', 'sites/all/modules/custom/ground_php/modules/ground_history/inc/History_Update.inc', 'ground_history', 0),
('Integrity', 'class', 'sites/all/modules/custom/ground_php/modules/integrity/inc/Integrity.inc', 'integrity', 0),
('Link_Trellis', 'class', 'sites/all/modules/custom/ground_php/inc/Link_Trellis.inc', 'ground_php', 0),
('MetaHub', 'class', 'sites/all/modules/custom/metahub/inc/Meta_Object.inc', 'metahub', 0),
('Meta_Array', 'class', 'sites/all/modules/custom/metahub/inc/Meta_Object.inc', 'metahub', 0),
('Meta_Connection', 'class', 'sites/all/modules/custom/metahub/inc/Meta_Object.inc', 'metahub', 0),
('Meta_Object', 'class', 'sites/all/modules/custom/metahub/inc/Meta_Object.inc', 'metahub', 0),
('Node_Query', 'class', 'sites/all/modules/custom/ground_php/inc/Node_Query.inc', 'ground_php', 0),
('Object_Field', 'class', 'sites/all/modules/custom/ground_php/inc/Object_Map.inc', 'ground_php', 0),
('Object_Map', 'class', 'sites/all/modules/custom/ground_php/inc/Object_Map.inc', 'ground_php', 0),
('Property_Type', 'class', 'sites/all/modules/custom/ground_php/inc/Ground.inc', 'ground_php', 0),
('Query', 'class', 'sites/all/modules/custom/ground_php/inc/Query.inc', 'ground_php', 0),
('Table', 'class', 'sites/all/modules/custom/ground_php/modules/ground_db/inc/Table.inc', 'ground_db', 0),
('Trellis', 'class', 'sites/all/modules/custom/ground_php/inc/Trellis.inc', 'ground_php', 0),
('Update', 'class', 'sites/all/modules/custom/ground_php/inc/Update.inc', 'ground_php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `autoload_registry_file`
--

CREATE TABLE IF NOT EXISTS `autoload_registry_file` (
  `filename` varchar(255) NOT NULL,
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autoload_registry_file`
--

INSERT INTO `autoload_registry_file` (`filename`, `hash`) VALUES
('sites/all/modules/custom/ground_php/inc/Delete.inc', '445c3a2fe8a96234e9198e3b5b6d1338725878b9d338f0a4c19800803dd0b7cf'),
('sites/all/modules/custom/ground_php/inc/Dynamic_Query.inc', '0c4efeb976b370a701ed24ba7f5348b2c1685828b18200e019b86e3f3018dc33'),
('sites/all/modules/custom/ground_php/inc/Ground.inc', '1c7c730107e996201b3de412dc33ea62a7bb84285b8411b105e3becb10ccbcac'),
('sites/all/modules/custom/ground_php/inc/Ground_Module.inc', '821e9a759e558530746dc2e4ca61d5e566fcdffd16ce22567f8ce6b3facfedd5'),
('sites/all/modules/custom/ground_php/inc/Link_Trellis.inc', 'a654c40a73cab09111687cc6dcfde46fb6938b829241a97d3dc0e3893c96132a'),
('sites/all/modules/custom/ground_php/inc/Node_Query.inc', '1075696c594b5fc84642316dd10d04ccdb3b63b1c635a60fef34ae3f3bfd0968'),
('sites/all/modules/custom/ground_php/inc/Object_Map.inc', 'c9c1124453867599ce5406f3a486c3ced7f7c19dd0dd326ff1e0f65e5a6f70b3'),
('sites/all/modules/custom/ground_php/inc/Query.inc', 'fd770ac8a7e906ad80010316deb2b5b290ffb150330a7942be01f759cb949765'),
('sites/all/modules/custom/ground_php/inc/Trellis.inc', 'f55edb0be1495e6aad9e91500d848a36d6f63d3719d48b53cda19a4d92db1626'),
('sites/all/modules/custom/ground_php/inc/Update.inc', '9095d542c74d875948ff859d8fcaac89364c2003d3b41bf2bf6ef212ab91aab0'),
('sites/all/modules/custom/ground_php/modules/ground_db/inc/Ground_Database.inc', 'b90e42ef7d3f746fff0717016ca255d77f1e236d1f9765842c7939435395014a'),
('sites/all/modules/custom/ground_php/modules/ground_db/inc/Table.inc', '607e2be5e4a4bd1696dfcfcb0c16195226ed1e73bdd54aa8fd8aad27b83b6d23'),
('sites/all/modules/custom/ground_php/modules/ground_drupal/inc/CCK.inc', '397e45d3261ef3a4645e06778d62f32f057260756cb59d9dec4b5cd9a4044705'),
('sites/all/modules/custom/ground_php/modules/ground_drupal/inc/CCK_Link.inc', '4117866abc9d704cc695aaee1b7f427523560684367749f3955698e1ef2b451b'),
('sites/all/modules/custom/ground_php/modules/ground_drupal/inc/Content_Query.inc', 'f42ce16e8caca737625a3de782005a45037127257ff54c7fb842c6f09a004c13'),
('sites/all/modules/custom/ground_php/modules/ground_drupal/inc/Ground_Drupal.inc', '53b4cd5a1839d2125e036f33929074af01a5c8e93f0d848e078ff865704e6e3b'),
('sites/all/modules/custom/ground_php/modules/ground_history/inc/History.inc', '11f914d959528a74a8a2a78ca934808f15af3d371d67e0dbf85c772fbefd3a11'),
('sites/all/modules/custom/ground_php/modules/ground_history/inc/History_Commit.inc', 'b978db646f0d8f8a29e7fd24948fe7ac0433c65d6c89d786851cdbc1f31411ef'),
('sites/all/modules/custom/ground_php/modules/ground_history/inc/History_Object.inc', '6493ca303950f6c517899d19d0cb188b2c2608b8c93569e6abc6bc51eccec7af'),
('sites/all/modules/custom/ground_php/modules/ground_history/inc/History_Update.inc', 'd4992477ce3203fc06083a8f607aeaa2e28af3de8ac3b82cd9a9fb5debf97525'),
('sites/all/modules/custom/ground_php/modules/integrity/inc/Integrity.inc', 'b86cef6d335dd5e63d9c94b1454198c932addb18d38595787e49e61fb7dd0489'),
('sites/all/modules/custom/ground_php/test/Fixture.inc', '69bb7752550d5ed8ebaf688fdbcdb002a8cb8a2fd2559dc4d9e87a103dd8fecd'),
('sites/all/modules/custom/metahub/inc/Meta_Object.inc', '770ff91df6e2a57fd92dc83ffb96ed29ba43db2a43cf701cf0b0d456e522d3d2');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `batch` longtext,
  PRIMARY KEY (`bid`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(64) NOT NULL DEFAULT '',
  `delta` varchar(32) NOT NULL DEFAULT '0',
  `theme` varchar(64) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `region` varchar(64) NOT NULL DEFAULT '',
  `custom` tinyint(4) NOT NULL DEFAULT '0',
  `throttle` tinyint(4) NOT NULL DEFAULT '0',
  `visibility` tinyint(4) NOT NULL DEFAULT '0',
  `pages` text NOT NULL,
  `title` varchar(64) NOT NULL DEFAULT '',
  `cache` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `tmd` (`theme`,`module`,`delta`),
  KEY `list` (`theme`,`status`,`region`,`weight`,`module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`bid`, `module`, `delta`, `theme`, `status`, `weight`, `region`, `custom`, `throttle`, `visibility`, `pages`, `title`, `cache`) VALUES
(1, 'user', '0', 'garland', 1, 0, 'left', 0, 0, 0, '', '', -1),
(2, 'user', '1', 'garland', 1, 0, 'left', 0, 0, 0, '', '', -1),
(3, 'system', '0', 'garland', 1, 10, 'footer', 0, 0, 0, '', '', -1);

-- --------------------------------------------------------

--
-- Table structure for table `blocks_roles`
--

CREATE TABLE IF NOT EXISTS `blocks_roles` (
  `module` varchar(64) NOT NULL,
  `delta` varchar(32) NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`module`,`delta`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `boxes`
--

CREATE TABLE IF NOT EXISTS `boxes` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext,
  `info` varchar(128) NOT NULL DEFAULT '',
  `format` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `info` (`info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE IF NOT EXISTS `cache` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_block`
--

CREATE TABLE IF NOT EXISTS `cache_block` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_content`
--

CREATE TABLE IF NOT EXISTS `cache_content` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_filter`
--

CREATE TABLE IF NOT EXISTS `cache_filter` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_form`
--

CREATE TABLE IF NOT EXISTS `cache_form` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_location`
--

CREATE TABLE IF NOT EXISTS `cache_location` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_menu`
--

CREATE TABLE IF NOT EXISTS `cache_menu` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_page`
--

CREATE TABLE IF NOT EXISTS `cache_page` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `headers` text,
  `serialized` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `nid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(64) NOT NULL DEFAULT '',
  `comment` longtext NOT NULL,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `format` smallint(6) NOT NULL DEFAULT '0',
  `thread` varchar(255) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `mail` varchar(64) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`),
  KEY `nid` (`nid`),
  KEY `comment_uid` (`uid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_field_images`
--

CREATE TABLE IF NOT EXISTS `content_field_images` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_images_fid` int(11) DEFAULT NULL,
  `field_images_list` tinyint(4) DEFAULT NULL,
  `field_images_data` text,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_images`
--

INSERT INTO `content_field_images` (`vid`, `nid`, `delta`, `field_images_fid`, `field_images_list`, `field_images_data`) VALUES
(1, 1, 0, 4, 1, 'a:2:{s:3:"alt";s:0:"";s:5:"title";s:0:"";}'),
(1, 1, 1, 5, 1, 'a:2:{s:3:"alt";s:0:"";s:5:"title";s:0:"";}'),
(1, 1, 2, 6, 1, 'a:2:{s:3:"alt";s:0:"";s:5:"title";s:0:"";}'),
(2, 2, 0, 3, 1, 'a:2:{s:3:"alt";s:0:"";s:5:"title";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `content_field_victims`
--

CREATE TABLE IF NOT EXISTS `content_field_victims` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_victims_uid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_victims_uid` (`field_victims_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_victims`
--

INSERT INTO `content_field_victims` (`vid`, `nid`, `delta`, `field_victims_uid`) VALUES
(1, 1, 0, NULL),
(2, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_node_field`
--

CREATE TABLE IF NOT EXISTS `content_node_field` (
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(127) NOT NULL DEFAULT '',
  `global_settings` mediumtext NOT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `multiple` tinyint(4) NOT NULL DEFAULT '0',
  `db_storage` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(127) NOT NULL DEFAULT '',
  `db_columns` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_node_field`
--

INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES
('field_atmosphere', 'text', 'a:4:{s:15:"text_processing";s:0:"";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_doc', 'filefield', 'a:3:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";}', 0, 0, 1, 'filefield', 'a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}', 1, 0),
('field_image', 'filefield', 'a:3:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";}', 0, 0, 1, 'filefield', 'a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}', 1, 0),
('field_images', 'filefield', 'a:3:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";}', 0, 1, 0, 'filefield', 'a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}', 1, 0),
('field_lair', 'nodereference', 'a:1:{s:19:"referenceable_types";a:4:{s:4:"lair";s:4:"lair";s:7:"monster";i:0;s:4:"page";i:0;s:5:"story";i:0;}}', 0, 0, 1, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_location', 'location', 'a:3:{s:17:"location_settings";a:2:{s:4:"form";a:1:{s:6:"fields";a:8:{s:4:"name";a:3:{s:7:"collect";s:1:"1";s:7:"default";s:0:"";s:6:"weight";s:1:"2";}s:6:"street";a:3:{s:7:"collect";s:1:"1";s:7:"default";s:0:"";s:6:"weight";s:1:"4";}s:10:"additional";a:3:{s:7:"collect";s:1:"1";s:7:"default";s:0:"";s:6:"weight";s:1:"6";}s:4:"city";a:3:{s:7:"collect";s:1:"0";s:7:"default";s:0:"";s:6:"weight";s:1:"8";}s:8:"province";a:4:{s:7:"collect";s:1:"0";s:6:"widget";s:12:"autocomplete";s:7:"default";s:0:"";s:6:"weight";s:2:"10";}s:11:"postal_code";a:3:{s:7:"collect";s:1:"0";s:7:"default";s:0:"";s:6:"weight";s:2:"12";}s:7:"country";a:3:{s:7:"collect";s:1:"1";s:7:"default";s:2:"us";s:6:"weight";s:2:"14";}s:7:"locpick";a:2:{s:7:"collect";s:1:"1";s:6:"weight";s:2:"20";}}}s:7:"display";a:1:{s:4:"hide";a:12:{s:4:"name";i:0;s:6:"street";i:0;s:10:"additional";i:0;s:4:"city";i:0;s:8:"province";i:0;s:11:"postal_code";i:0;s:7:"country";i:0;s:7:"locpick";i:0;s:13:"province_name";i:0;s:12:"country_name";i:0;s:8:"map_link";i:0;s:6:"coords";i:0;}}}s:10:"gmap_macro";s:7:"[gmap ]";s:11:"gmap_marker";s:6:"drupal";}', 0, 0, 1, 'location_cck', 'a:1:{s:3:"lid";a:3:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;}}', 1, 0),
('field_teeth', 'number_integer', 'a:6:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_victims', 'userreference', 'a:2:{s:19:"referenceable_roles";a:1:{i:2;i:0;}s:20:"referenceable_status";s:0:"";}', 0, 1, 0, 'userreference', 'a:1:{s:3:"uid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_node_field_instance`
--

CREATE TABLE IF NOT EXISTS `content_node_field_instance` (
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `widget_type` varchar(32) NOT NULL DEFAULT '',
  `widget_settings` mediumtext NOT NULL,
  `display_settings` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `widget_module` varchar(127) NOT NULL DEFAULT '',
  `widget_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_name`,`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_node_field_instance`
--

INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES
('field_atmosphere', 'lair', 31, 'Atmosphere', 'text_textfield', 'a:2:{s:4:"rows";N;s:4:"size";N;}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_doc', 'monster', 35, 'Doc', 'filefield_widget', 'a:5:{s:15:"file_extensions";s:3:"txt";s:9:"file_path";s:0:"";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'filefield', 1),
('field_image', 'lair', 32, 'Image', 'imagefield_widget', 'a:14:{s:15:"file_extensions";s:16:"png gif jpg jpeg";s:9:"file_path";s:0:"";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";s:14:"max_resolution";s:1:"0";s:14:"min_resolution";s:1:"0";s:3:"alt";s:0:"";s:10:"custom_alt";i:0;s:5:"title";s:0:"";s:12:"custom_title";i:0;s:10:"title_type";s:9:"textfield";s:13:"default_image";N;s:17:"use_default_image";i:0;}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}}', '', 'imagefield', 1),
('field_images', 'monster', 34, 'Images', 'imagefield_widget', 'a:14:{s:15:"file_extensions";s:16:"png gif jpg jpeg";s:9:"file_path";s:0:"";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";s:14:"max_resolution";s:1:"0";s:14:"min_resolution";s:1:"0";s:3:"alt";s:0:"";s:10:"custom_alt";i:0;s:5:"title";s:0:"";s:12:"custom_title";i:0;s:10:"title_type";s:9:"textfield";s:13:"default_image";N;s:17:"use_default_image";i:0;}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}}', '', 'imagefield', 1),
('field_lair', 'monster', 32, 'Lair', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_location', 'lair', 33, 'Location', 'location', 'a:2:{s:13:"default_value";a:1:{i:0;a:7:{s:4:"name";s:0:"";s:6:"street";s:0:"";s:10:"additional";s:0:"";s:7:"country";s:2:"us";s:7:"locpick";a:2:{s:13:"user_latitude";s:0:"";s:14:"user_longitude";s:0:"";}s:23:"cck_preview_in_progress";b:1;s:17:"location_settings";a:1:{s:4:"form";a:1:{s:6:"fields";a:14:{s:3:"lid";a:1:{s:7:"default";b:0;}s:4:"name";a:3:{s:7:"default";s:0:"";s:7:"collect";i:1;s:6:"weight";i:2;}s:6:"street";a:3:{s:7:"default";s:0:"";s:7:"collect";i:1;s:6:"weight";i:4;}s:10:"additional";a:3:{s:7:"default";s:0:"";s:7:"collect";i:1;s:6:"weight";i:6;}s:4:"city";a:3:{s:7:"default";s:0:"";s:7:"collect";i:0;s:6:"weight";i:8;}s:8:"province";a:4:{s:7:"default";s:0:"";s:7:"collect";i:0;s:6:"weight";i:10;s:6:"widget";s:12:"autocomplete";}s:11:"postal_code";a:3:{s:7:"default";s:0:"";s:7:"collect";i:0;s:6:"weight";i:12;}s:7:"country";a:3:{s:7:"default";s:2:"us";s:7:"collect";i:1;s:6:"weight";i:14;}s:7:"locpick";a:4:{s:7:"default";b:0;s:7:"collect";i:1;s:6:"weight";i:20;s:6:"nodiff";b:1;}s:8:"latitude";a:1:{s:7:"default";i:0;}s:9:"longitude";a:1:{s:7:"default";i:0;}s:6:"source";a:1:{s:7:"default";i:0;}s:10:"is_primary";a:1:{s:7:"default";i:0;}s:15:"delete_location";a:2:{s:7:"default";b:0;s:6:"nodiff";b:1;}}}}}}s:17:"default_value_php";N;}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'location_cck', 1),
('field_teeth', 'monster', 31, 'Teeth', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_teeth][0][value";}}s:17:"default_value_php";N;}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_victims', 'monster', 33, 'Victims', 'userreference_select', 'a:5:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";i:60;s:12:"reverse_link";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:3:"uid";s:0:"";}}s:17:"default_value_php";N;}', 'a:4:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'userreference', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_type_lair`
--

CREATE TABLE IF NOT EXISTS `content_type_lair` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_atmosphere_value` longtext,
  `field_image_fid` int(11) DEFAULT NULL,
  `field_image_list` tinyint(4) DEFAULT NULL,
  `field_image_data` text,
  `field_location_lid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_lair`
--

INSERT INTO `content_type_lair` (`vid`, `nid`, `field_atmosphere_value`, `field_image_fid`, `field_image_list`, `field_image_data`, `field_location_lid`) VALUES
(3, 3, 'dark', 7, 1, 'a:2:{s:3:"alt";s:0:"";s:5:"title";s:0:"";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_type_monster`
--

CREATE TABLE IF NOT EXISTS `content_type_monster` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_teeth_value` int(11) DEFAULT NULL,
  `field_lair_nid` int(10) unsigned DEFAULT NULL,
  `field_doc_fid` int(11) DEFAULT NULL,
  `field_doc_list` tinyint(4) DEFAULT NULL,
  `field_doc_data` text,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`),
  KEY `field_lair_nid` (`field_lair_nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_monster`
--

INSERT INTO `content_type_monster` (`vid`, `nid`, `field_teeth_value`, `field_lair_nid`, `field_doc_fid`, `field_doc_list`, `field_doc_data`) VALUES
(1, 1, 32, 3, NULL, NULL, NULL),
(2, 2, 24, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `devel_queries`
--

CREATE TABLE IF NOT EXISTS `devel_queries` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `devel_times`
--

CREATE TABLE IF NOT EXISTS `devel_times` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL DEFAULT '0',
  `time` float DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filemime` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fid`, `uid`, `filename`, `filepath`, `filemime`, `filesize`, `status`, `timestamp`) VALUES
(3, 1, 'FileOgre1.png', 'sites/default/files/FileOgre1.png', 'image/png', 378977, 1, 1362589129),
(4, 1, 'Red-Dragon.jpg', 'sites/default/files/Red-Dragon.jpg', 'image/jpeg', 26145, 1, 1362589280),
(5, 1, 'black-dragon.jpg', 'sites/default/files/black-dragon.jpg', 'image/jpeg', 47500, 1, 1362589281),
(6, 1, 'stupid dragon.jpg', 'sites/default/files/stupid dragon.jpg', 'image/jpeg', 75384, 1, 1362589382),
(7, 1, '1292276253_D&D6.jpg', 'sites/default/files/1292276253_D&D6.jpg', 'image/jpeg', 271097, 1, 1362589519);

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE IF NOT EXISTS `filters` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `format` int(11) NOT NULL DEFAULT '0',
  `module` varchar(64) NOT NULL DEFAULT '',
  `delta` tinyint(4) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fmd` (`format`,`module`,`delta`),
  KEY `list` (`format`,`weight`,`module`,`delta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`fid`, `format`, `module`, `delta`, `weight`) VALUES
(1, 1, 'filter', 2, 0),
(2, 1, 'filter', 0, 1),
(3, 1, 'filter', 1, 2),
(4, 1, 'filter', 3, 10),
(5, 2, 'filter', 2, 0),
(6, 2, 'filter', 1, 1),
(7, 2, 'filter', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `filter_formats`
--

CREATE TABLE IF NOT EXISTS `filter_formats` (
  `format` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `roles` varchar(255) NOT NULL DEFAULT '',
  `cache` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`format`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `filter_formats`
--

INSERT INTO `filter_formats` (`format`, `name`, `roles`, `cache`) VALUES
(1, 'Filtered HTML', ',1,2,', 1),
(2, 'Full HTML', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flood`
--

CREATE TABLE IF NOT EXISTS `flood` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(64) NOT NULL DEFAULT '',
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `allow` (`event`,`hostname`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `nid` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`nid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`uid`, `nid`, `timestamp`) VALUES
(1, 1, 1362589397),
(1, 2, 1362589330),
(1, 3, 1362589522);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `additional` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(16) NOT NULL DEFAULT '',
  `postal_code` varchar(16) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `latitude` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `longitude` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `source` tinyint(4) NOT NULL DEFAULT '0',
  `is_primary` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`lid`, `name`, `street`, `additional`, `city`, `province`, `postal_code`, `country`, `latitude`, `longitude`, `source`, `is_primary`) VALUES
(1, 'Mountain Depths', 'No Street', '', '', '', '', 'uk', '52.165509', '0.508118', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `location_instance`
--

CREATE TABLE IF NOT EXISTS `location_instance` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `genid` varchar(255) NOT NULL DEFAULT '',
  `lid` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `nid` (`nid`),
  KEY `vid` (`vid`),
  KEY `uid` (`uid`),
  KEY `genid` (`genid`),
  KEY `lid` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_instance`
--

INSERT INTO `location_instance` (`nid`, `vid`, `uid`, `genid`, `lid`) VALUES
(3, 3, 0, 'cck:field_location:3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_custom`
--

CREATE TABLE IF NOT EXISTS `menu_custom` (
  `menu_name` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`menu_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_custom`
--

INSERT INTO `menu_custom` (`menu_name`, `title`, `description`) VALUES
('admin', 'Admin', 'Administrative links.'),
('devel', 'Development', 'Development links.'),
('navigation', 'Navigation', 'The navigation menu is provided by Drupal and is the main interactive menu for any site. It is usually the only menu that contains personalized links for authenticated users, and is often not even visible to anonymous users.'),
('primary-links', 'Primary links', 'Primary links are often used at the theme layer to show the major sections of a site. A typical representation for primary links would be tabs along the top.'),
('secondary-links', 'Secondary links', 'Secondary links are often used for pages like legal notices, contact details, and other secondary navigation items that play a lesser role than primary links');

-- --------------------------------------------------------

--
-- Table structure for table `menu_links`
--

CREATE TABLE IF NOT EXISTS `menu_links` (
  `menu_name` varchar(32) NOT NULL DEFAULT '',
  `mlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plid` int(10) unsigned NOT NULL DEFAULT '0',
  `link_path` varchar(255) NOT NULL DEFAULT '',
  `router_path` varchar(255) NOT NULL DEFAULT '',
  `link_title` varchar(255) NOT NULL DEFAULT '',
  `options` text,
  `module` varchar(255) NOT NULL DEFAULT 'system',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `external` smallint(6) NOT NULL DEFAULT '0',
  `has_children` smallint(6) NOT NULL DEFAULT '0',
  `expanded` smallint(6) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `depth` smallint(6) NOT NULL DEFAULT '0',
  `customized` smallint(6) NOT NULL DEFAULT '0',
  `p1` int(10) unsigned NOT NULL DEFAULT '0',
  `p2` int(10) unsigned NOT NULL DEFAULT '0',
  `p3` int(10) unsigned NOT NULL DEFAULT '0',
  `p4` int(10) unsigned NOT NULL DEFAULT '0',
  `p5` int(10) unsigned NOT NULL DEFAULT '0',
  `p6` int(10) unsigned NOT NULL DEFAULT '0',
  `p7` int(10) unsigned NOT NULL DEFAULT '0',
  `p8` int(10) unsigned NOT NULL DEFAULT '0',
  `p9` int(10) unsigned NOT NULL DEFAULT '0',
  `updated` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mlid`),
  KEY `path_menu` (`link_path`(128),`menu_name`),
  KEY `menu_plid_expand_child` (`menu_name`,`plid`,`expanded`,`has_children`),
  KEY `menu_parents` (`menu_name`,`p1`,`p2`,`p3`,`p4`,`p5`,`p6`,`p7`,`p8`,`p9`),
  KEY `router_path` (`router_path`(128))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=251 ;

--
-- Dumping data for table `menu_links`
--

INSERT INTO `menu_links` (`menu_name`, `mlid`, `plid`, `link_path`, `router_path`, `link_title`, `options`, `module`, `hidden`, `external`, `has_children`, `expanded`, `weight`, `depth`, `customized`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `updated`) VALUES
('navigation', 1, 0, 'batch', 'batch', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 3, 0, 'node', 'node', 'Content', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 4, 0, 'logout', 'logout', 'Log out', 'a:0:{}', 'system', 0, 0, 0, 0, 10, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 5, 0, 'rss.xml', 'rss.xml', 'RSS feed', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 6, 0, 'user', 'user', 'User account', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 7, 0, 'node/%', 'node/%', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 9, 0, 'filter/tips', 'filter/tips', 'Compose tips', 'a:0:{}', 'system', 1, 0, 0, 0, 0, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 11, 0, 'node/add', 'node/add', 'Create content', 'a:0:{}', 'system', 0, 0, 1, 0, 1, 1, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 12, 0, 'comment/delete', 'comment/delete', 'Delete comment', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 13, 0, 'comment/edit', 'comment/edit', 'Edit comment', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 14, 0, 'system/files', 'system/files', 'File download', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 19, 0, 'user/autocomplete', 'user/autocomplete', 'User autocomplete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 21, 0, 'user/%', 'user/%', 'My account', 'a:0:{}', 'system', 0, 0, 0, 0, 0, 1, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 31, 0, 'node/%/delete', 'node/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, 1, 1, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 32, 21, 'user/%/delete', 'user/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 2, 0, 21, 32, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 44, 0, 'comment/reply/%', 'comment/reply/%', 'Reply to comment', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 81, 0, 'user/reset/%/%/%', 'user/reset/%/%/%', 'Reset password', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 83, 0, 'node/%/revisions/%/delete', 'node/%/revisions/%/delete', 'Delete earlier revision', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 84, 0, 'node/%/revisions/%/revert', 'node/%/revisions/%/revert', 'Revert to earlier revision', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 85, 0, 'node/%/revisions/%/view', 'node/%/revisions/%/view', 'Revisions', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 92, 0, 'taxonomy/autocomplete', 'taxonomy/autocomplete', 'Autocomplete taxonomy', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 95, 0, 'taxonomy/term/%', 'taxonomy/term/%', 'Taxonomy term', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 105, 11, 'node/add/page', 'node/add/page', 'Page', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:296:"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site''s initial home page.";}}', 'system', 0, 0, 0, 0, 0, 2, 0, 11, 105, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 106, 11, 'node/add/story', 'node/add/story', 'Story', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:392:"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site''s initial home page, and provides the ability to post comments.";}}', 'system', 0, 0, 0, 0, 0, 2, 0, 11, 106, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 113, 0, 'admin', 'admin', 'Administer', 'a:0:{}', 'system', 0, 0, 1, 0, 9, 1, 0, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 114, 0, 'content/js_add_more', 'content/js_add_more', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 115, 0, 'autoload/flush-cache', 'autoload/flush-cache', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 116, 113, 'admin/compact', 'admin/compact', 'Compact mode', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 2, 0, 113, 116, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 117, 113, 'admin/content', 'admin/content', 'Content management', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:27:"Manage your site''s content.";}}', 'system', 0, 0, 1, 0, -10, 2, 0, 113, 117, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 118, 0, 'devel/queries', 'devel/queries', 'Database queries', 'a:0:{}', 'system', 0, 0, 1, 0, 0, 1, 0, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 119, 0, 'devel/php', 'devel/php', 'Execute PHP Code', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:21:"Execute some PHP code";}}', 'system', 0, 0, 0, 0, 0, 1, 0, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 120, 0, 'devel/reference', 'devel/reference', 'Function reference', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:73:"View a list of currently defined user functions with documentation links.";}}', 'system', 0, 0, 0, 0, 0, 1, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 121, 113, 'admin/help', 'admin/help', 'Help', 'a:0:{}', 'system', 0, 0, 0, 0, 9, 2, 0, 113, 121, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 122, 0, 'devel/elements', 'devel/elements', 'Hook_elements()', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:51:"View the active form/render elements for this site.";}}', 'system', 0, 0, 0, 0, 0, 1, 0, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 124, 0, 'nodereference/autocomplete', 'nodereference/autocomplete', 'Nodereference autocomplete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 125, 0, 'devel/phpinfo', 'devel/phpinfo', 'PHPinfo()', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"View your server''s PHP configuration";}}', 'system', 0, 0, 0, 0, 0, 1, 0, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 126, 0, 'devel/reinstall', 'devel/reinstall', 'Reinstall modules', 'a:2:{s:10:"attributes";a:1:{s:5:"title";s:64:"Run hook_uninstall() and then hook_install() for a given module.";}s:5:"alter";b:1;}', 'system', 0, 0, 0, 0, 0, 1, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 127, 113, 'admin/reports', 'admin/reports', 'Reports', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:59:"View reports from system logs and other status information.";}}', 'system', 0, 0, 1, 0, 5, 2, 0, 113, 127, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 128, 0, 'devel/session', 'devel/session', 'Session viewer', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:31:"List the contents of $_SESSION.";}}', 'system', 0, 0, 0, 0, 0, 1, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 129, 113, 'admin/build', 'admin/build', 'Site building', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Control how your site looks and feels.";}}', 'system', 0, 0, 1, 0, -10, 2, 0, 113, 129, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 130, 113, 'admin/settings', 'admin/settings', 'Site configuration', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:40:"Adjust basic site configuration options.";}}', 'system', 0, 0, 1, 0, -5, 2, 0, 113, 130, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 131, 0, 'devel/switch', 'devel/switch', 'Switch user', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 132, 113, 'admin/user', 'admin/user', 'User management', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:61:"Manage your site''s users, groups and access to site features.";}}', 'system', 0, 0, 1, 0, 0, 2, 0, 113, 132, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 133, 0, 'userreference/autocomplete', 'userreference/autocomplete', 'Userreference autocomplete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 134, 0, 'devel/variable', 'devel/variable', 'Variable editor', 'a:2:{s:10:"attributes";a:1:{s:5:"title";s:31:"Edit and delete site variables.";}s:5:"alter";b:1;}', 'system', 0, 0, 0, 0, 0, 1, 0, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 135, 132, 'admin/user/rules', 'admin/user/rules', 'Access rules', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:80:"List and create rules to disallow usernames, e-mail addresses, and IP addresses.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 132, 135, 0, 0, 0, 0, 0, 0, 0),
('admin', 136, 130, 'admin/settings/actions', 'admin/settings/actions', 'Actions', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:41:"Manage the actions defined for your site.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 136, 0, 0, 0, 0, 0, 0, 0),
('admin', 137, 130, 'admin/settings/admin', 'admin/settings/admin', 'Administration tools', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:39:"Settings for site administration tools.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 137, 0, 0, 0, 0, 0, 0, 0),
('admin', 138, 129, 'admin/build/block', 'admin/build/block', 'Blocks', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Configure what block content appears in your site''s sidebars and other regions.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 129, 138, 0, 0, 0, 0, 0, 0, 0),
('admin', 139, 130, 'admin/settings/clean-urls', 'admin/settings/clean-urls', 'Clean URLs', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Enable or disable clean URLs for your site.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 139, 0, 0, 0, 0, 0, 0, 0),
('admin', 140, 117, 'admin/content/comment', 'admin/content/comment', 'Comments', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:61:"List and edit site comments and the comment moderation queue.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 117, 140, 0, 0, 0, 0, 0, 0, 0),
('admin', 141, 117, 'admin/content/node', 'admin/content/node', 'Content', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"View, edit, and delete your site''s content.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 117, 141, 0, 0, 0, 0, 0, 0, 0),
('admin', 142, 117, 'admin/content/types', 'admin/content/types', 'Content types', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:82:"Manage posts by content type, including default status, front page promotion, etc.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 117, 142, 0, 0, 0, 0, 0, 0, 0),
('admin', 143, 130, 'admin/settings/date-time', 'admin/settings/date-time', 'Date and time', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:89:"Settings for how Drupal displays date and time, as well as the system''s default timezone.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 143, 0, 0, 0, 0, 0, 0, 0),
('admin', 144, 130, 'admin/settings/devel', 'admin/settings/devel', 'Devel settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:164:"Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/build/block">block administration</a> page.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 144, 0, 0, 0, 0, 0, 0, 0),
('devel', 145, 0, 'devel/cache/clear', 'devel/cache/clear', 'Empty cache', 'a:2:{s:10:"attributes";a:1:{s:5:"title";s:100:"Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.";}s:5:"alter";b:1;}', 'system', 0, 0, 0, 0, 0, 1, 0, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('devel', 146, 118, 'devel/queries/empty', 'devel/queries/empty', 'Empty database queries', 'a:0:{}', 'system', 0, 0, 0, 0, 0, 2, 0, 118, 146, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 147, 130, 'admin/settings/error-reporting', 'admin/settings/error-reporting', 'Error reporting', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:93:"Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 147, 0, 0, 0, 0, 0, 0, 0),
('admin', 148, 130, 'admin/settings/file-system', 'admin/settings/file-system', 'File system', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:68:"Tell Drupal where to store uploaded files and how they are accessed.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 148, 0, 0, 0, 0, 0, 0, 0),
('admin', 149, 130, 'admin/settings/image-toolkit', 'admin/settings/image-toolkit', 'Image toolkit', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Choose which image toolkit to use if you have installed optional toolkits.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 149, 0, 0, 0, 0, 0, 0, 0),
('admin', 150, 130, 'admin/settings/filters', 'admin/settings/filters', 'Input formats', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:127:"Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 150, 0, 0, 0, 0, 0, 0, 0),
('admin', 151, 130, 'admin/settings/logging', 'admin/settings/logging', 'Logging and alerts', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:156:"Settings for logging and alerts modules. Various modules can route Drupal''s system events to different destination, such as syslog, database, email, ...etc.";}}', 'system', 0, 0, 1, 0, 0, 3, 0, 113, 130, 151, 0, 0, 0, 0, 0, 0, 0),
('admin', 152, 129, 'admin/build/menu', 'admin/build/menu', 'Menus', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:116:"Control your site''s navigation menu, primary links and secondary links, as well as rename and reorganize menu items.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 129, 152, 0, 0, 0, 0, 0, 0, 0),
('admin', 153, 129, 'admin/build/modules', 'admin/build/modules', 'Modules', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:47:"Enable or disable add-on modules for your site.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 129, 153, 0, 0, 0, 0, 0, 0, 0),
('admin', 154, 130, 'admin/settings/performance', 'admin/settings/performance', 'Performance', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:101:"Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 154, 0, 0, 0, 0, 0, 0, 0),
('admin', 155, 132, 'admin/user/permissions', 'admin/user/permissions', 'Permissions', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:64:"Determine access to features by selecting permissions for roles.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 132, 155, 0, 0, 0, 0, 0, 0, 0),
('admin', 156, 117, 'admin/content/node-settings', 'admin/content/node-settings', 'Post settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:126:"Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 117, 156, 0, 0, 0, 0, 0, 0, 0),
('admin', 157, 117, 'admin/content/rss-publishing', 'admin/content/rss-publishing', 'RSS publishing', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:92:"Configure the number of items per feed and whether feeds should be titles/teasers/full-text.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 117, 157, 0, 0, 0, 0, 0, 0, 0),
('devel', 158, 0, 'devel/menu/reset', 'devel/menu/reset', 'Rebuild menus', 'a:2:{s:10:"attributes";a:1:{s:5:"title";s:113:"Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.";}s:5:"alter";b:1;}', 'system', 0, 0, 0, 0, 0, 1, 0, 158, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 159, 127, 'admin/reports/dblog', 'admin/reports/dblog', 'Recent log entries', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"View events that have recently been logged.";}}', 'system', 0, 0, 0, 0, -1, 3, 0, 113, 127, 159, 0, 0, 0, 0, 0, 0, 0),
('admin', 160, 132, 'admin/user/roles', 'admin/user/roles', 'Roles', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"List, edit, or add user roles.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 132, 160, 0, 0, 0, 0, 0, 0, 0),
('admin', 161, 130, 'admin/settings/site-information', 'admin/settings/site-information', 'Site information', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:107:"Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 161, 0, 0, 0, 0, 0, 0, 0),
('admin', 162, 130, 'admin/settings/site-maintenance', 'admin/settings/site-maintenance', 'Site maintenance', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:63:"Take the site off-line for maintenance or bring it back online.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 162, 0, 0, 0, 0, 0, 0, 0),
('admin', 163, 127, 'admin/reports/status', 'admin/reports/status', 'Status report', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Get a status report about your site''s operation and any detected problems.";}}', 'system', 0, 0, 0, 0, 10, 3, 0, 113, 127, 163, 0, 0, 0, 0, 0, 0, 0),
('admin', 164, 117, 'admin/content/taxonomy', 'admin/content/taxonomy', 'Taxonomy', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:67:"Manage tagging, categorization, and classification of your content.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 117, 164, 0, 0, 0, 0, 0, 0, 0),
('devel', 165, 0, 'devel/theme/registry', 'devel/theme/registry', 'Theme registry', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:63:"View a list of available theme functions across the whole site.";}}', 'system', 0, 0, 0, 0, 0, 1, 0, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 166, 129, 'admin/build/themes', 'admin/build/themes', 'Themes', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:57:"Change which theme your site uses or allows users to set.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 129, 166, 0, 0, 0, 0, 0, 0, 0),
('admin', 167, 127, 'admin/reports/access-denied', 'admin/reports/access-denied', 'Top ''access denied'' errors', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:35:"View ''access denied'' errors (403s).";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 127, 167, 0, 0, 0, 0, 0, 0, 0),
('admin', 168, 127, 'admin/reports/page-not-found', 'admin/reports/page-not-found', 'Top ''page not found'' errors', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"View ''page not found'' errors (404s).";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 127, 168, 0, 0, 0, 0, 0, 0, 0),
('admin', 169, 132, 'admin/user/settings', 'admin/user/settings', 'User settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:101:"Configure default behavior of users, including registration requirements, e-mails, and user pictures.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 132, 169, 0, 0, 0, 0, 0, 0, 0),
('admin', 170, 132, 'admin/user/user', 'admin/user/user', 'Users', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"List, add, and edit users.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 132, 170, 0, 0, 0, 0, 0, 0, 0),
('admin', 171, 121, 'admin/help/block', 'admin/help/block', 'block', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 171, 0, 0, 0, 0, 0, 0, 0),
('admin', 172, 121, 'admin/help/color', 'admin/help/color', 'color', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 172, 0, 0, 0, 0, 0, 0, 0),
('admin', 173, 121, 'admin/help/comment', 'admin/help/comment', 'comment', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 173, 0, 0, 0, 0, 0, 0, 0),
('admin', 174, 121, 'admin/help/content', 'admin/help/content', 'content', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 174, 0, 0, 0, 0, 0, 0, 0),
('admin', 175, 121, 'admin/help/dblog', 'admin/help/dblog', 'dblog', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 175, 0, 0, 0, 0, 0, 0, 0),
('admin', 176, 121, 'admin/help/devel', 'admin/help/devel', 'devel', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 176, 0, 0, 0, 0, 0, 0, 0),
('admin', 177, 121, 'admin/help/filter', 'admin/help/filter', 'filter', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 177, 0, 0, 0, 0, 0, 0, 0),
('admin', 178, 121, 'admin/help/help', 'admin/help/help', 'help', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 178, 0, 0, 0, 0, 0, 0, 0),
('admin', 179, 121, 'admin/help/menu', 'admin/help/menu', 'menu', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 179, 0, 0, 0, 0, 0, 0, 0),
('admin', 180, 121, 'admin/help/node', 'admin/help/node', 'node', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 180, 0, 0, 0, 0, 0, 0, 0),
('admin', 181, 121, 'admin/help/system', 'admin/help/system', 'system', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 181, 0, 0, 0, 0, 0, 0, 0),
('admin', 182, 121, 'admin/help/taxonomy', 'admin/help/taxonomy', 'taxonomy', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 182, 0, 0, 0, 0, 0, 0, 0),
('admin', 183, 121, 'admin/help/user', 'admin/help/user', 'user', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 183, 0, 0, 0, 0, 0, 0, 0),
('admin', 184, 150, 'admin/settings/filters/%', 'admin/settings/filters/%', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 150, 184, 0, 0, 0, 0, 0, 0),
('admin', 185, 139, 'admin/settings/clean-urls/check', 'admin/settings/clean-urls/check', 'Clean URL check', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 139, 185, 0, 0, 0, 0, 0, 0),
('admin', 186, 136, 'admin/settings/actions/configure', 'admin/settings/actions/configure', 'Configure an advanced action', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 136, 186, 0, 0, 0, 0, 0, 0),
('admin', 187, 138, 'admin/build/block/configure', 'admin/build/block/configure', 'Configure block', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 138, 187, 0, 0, 0, 0, 0, 0),
('admin', 188, 129, 'admin/build/menu-customize/%', 'admin/build/menu-customize/%', 'Customize menu', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 129, 188, 0, 0, 0, 0, 0, 0, 0),
('admin', 189, 151, 'admin/settings/logging/dblog', 'admin/settings/logging/dblog', 'Database logging', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:169:"Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.";}}', 'system', 0, 0, 0, 0, 0, 4, 0, 113, 130, 151, 189, 0, 0, 0, 0, 0, 0),
('admin', 190, 143, 'admin/settings/date-time/lookup', 'admin/settings/date-time/lookup', 'Date and time lookup', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 143, 190, 0, 0, 0, 0, 0, 0),
('admin', 191, 138, 'admin/build/block/delete', 'admin/build/block/delete', 'Delete block', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 138, 191, 0, 0, 0, 0, 0, 0),
('admin', 192, 150, 'admin/settings/filters/delete', 'admin/settings/filters/delete', 'Delete input format', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 150, 192, 0, 0, 0, 0, 0, 0),
('admin', 193, 135, 'admin/user/rules/delete', 'admin/user/rules/delete', 'Delete rule', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 132, 135, 193, 0, 0, 0, 0, 0, 0),
('admin', 194, 127, 'admin/reports/event/%', 'admin/reports/event/%', 'Details', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 127, 194, 0, 0, 0, 0, 0, 0, 0),
('admin', 195, 160, 'admin/user/roles/edit', 'admin/user/roles/edit', 'Edit role', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 132, 160, 195, 0, 0, 0, 0, 0, 0),
('admin', 196, 135, 'admin/user/rules/edit', 'admin/user/rules/edit', 'Edit rule', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 132, 135, 196, 0, 0, 0, 0, 0, 0),
('admin', 197, 164, 'admin/content/taxonomy/%', 'admin/content/taxonomy/%', 'List terms', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 117, 164, 197, 0, 0, 0, 0, 0, 0),
('admin', 198, 163, 'admin/reports/status/php', 'admin/reports/status/php', 'PHP', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 127, 163, 198, 0, 0, 0, 0, 0, 0),
('admin', 199, 117, 'admin/content/node-type/page', 'admin/content/node-type/page', 'Page', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 117, 199, 0, 0, 0, 0, 0, 0, 0),
('admin', 200, 156, 'admin/content/node-settings/rebuild', 'admin/content/node-settings/rebuild', 'Rebuild permissions', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 117, 156, 200, 0, 0, 0, 0, 0, 0),
('admin', 201, 136, 'admin/settings/actions/orphan', 'admin/settings/actions/orphan', 'Remove orphans', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 136, 201, 0, 0, 0, 0, 0, 0),
('admin', 202, 163, 'admin/reports/status/run-cron', 'admin/reports/status/run-cron', 'Run cron', 'a:1:{s:5:"alter";b:1;}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 127, 163, 202, 0, 0, 0, 0, 0, 0),
('admin', 203, 163, 'admin/reports/status/sql', 'admin/reports/status/sql', 'SQL', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 127, 163, 203, 0, 0, 0, 0, 0, 0),
('admin', 204, 117, 'admin/content/node-type/story', 'admin/content/node-type/story', 'Story', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 117, 204, 0, 0, 0, 0, 0, 0, 0),
('devel', 205, 134, 'devel/variable/edit/%', 'devel/variable/edit/%', 'Variable editor', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 2, 0, 134, 205, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 206, 0, 'admin/content/node-type/page/delete', 'admin/content/node-type/page/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 207, 0, 'admin/content/node-type/story/delete', 'admin/content/node-type/story/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 208, 136, 'admin/settings/actions/delete/%', 'admin/settings/actions/delete/%', 'Delete action', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:17:"Delete an action.";}}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 136, 208, 0, 0, 0, 0, 0, 0),
('admin', 209, 0, 'admin/build/menu-customize/%/delete', 'admin/build/menu-customize/%/delete', 'Delete menu', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 210, 164, 'admin/content/taxonomy/edit/term', 'admin/content/taxonomy/edit/term', 'Edit term', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 117, 164, 210, 0, 0, 0, 0, 0, 0),
('admin', 211, 138, 'admin/build/block/list/js', 'admin/build/block/list/js', 'JavaScript List Form', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 138, 211, 0, 0, 0, 0, 0, 0),
('admin', 212, 153, 'admin/build/modules/list/confirm', 'admin/build/modules/list/confirm', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 153, 212, 0, 0, 0, 0, 0, 0),
('admin', 213, 153, 'admin/build/modules/uninstall/confirm', 'admin/build/modules/uninstall/confirm', 'Uninstall', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 153, 213, 0, 0, 0, 0, 0, 0),
('admin', 214, 152, 'admin/build/menu/item/%/delete', 'admin/build/menu/item/%/delete', 'Delete menu item', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 152, 214, 0, 0, 0, 0, 0, 0),
('admin', 215, 152, 'admin/build/menu/item/%/edit', 'admin/build/menu/item/%/edit', 'Edit menu item', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 152, 215, 0, 0, 0, 0, 0, 0),
('admin', 216, 164, 'admin/content/taxonomy/edit/vocabulary/%', 'admin/content/taxonomy/edit/vocabulary/%', 'Edit vocabulary', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 117, 164, 216, 0, 0, 0, 0, 0, 0),
('admin', 217, 152, 'admin/build/menu/item/%/reset', 'admin/build/menu/item/%/reset', 'Reset menu item', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 129, 152, 217, 0, 0, 0, 0, 0, 0),
('navigation', 218, 11, 'node/add/monster', 'node/add/monster', 'Monster', 'a:0:{}', 'system', 0, 0, 0, 0, 0, 2, 0, 11, 218, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 219, 117, 'admin/content/node-type/monster', 'admin/content/node-type/monster', 'Monster', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 117, 219, 0, 0, 0, 0, 0, 0, 0),
('admin', 220, 0, 'admin/content/node-type/monster/delete', 'admin/content/node-type/monster/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 221, 0, 'admin/content/node-type/monster/fields/field_teeth/remove', 'admin/content/node-type/monster/fields/field_teeth/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 222, 11, 'node/add/lair', 'node/add/lair', 'Lair', 'a:0:{}', 'system', 0, 0, 0, 0, 0, 2, 0, 11, 222, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 223, 117, 'admin/content/node-type/lair', 'admin/content/node-type/lair', 'Lair', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 117, 223, 0, 0, 0, 0, 0, 0, 0),
('admin', 224, 0, 'admin/content/node-type/lair/delete', 'admin/content/node-type/lair/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 225, 0, 'admin/content/node-type/monster/fields/field_lair/remove', 'admin/content/node-type/monster/fields/field_lair/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 226, 0, 'admin/content/node-type/lair/fields/field_atmosphere/remove', 'admin/content/node-type/lair/fields/field_atmosphere/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 226, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 227, 0, 'admin/content/node-type/monster/fields/field_victims/remove', 'admin/content/node-type/monster/fields/field_victims/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 228, 0, 'vineyard', 'vineyard', 'Ground Get', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 229, 0, 'vineyard/update', 'vineyard/update', 'Ground Update', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 230, 0, 'vineyard/model.json', 'vineyard/model.json', 'Vineyard Model', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 231, 0, 'integrity/tables/create', 'integrity/tables/create', 'Create Missing Vineyard Tables', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 235, 0, 'filefield/progress', 'filefield/progress', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 236, 0, 'upload/js', 'upload/js', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 237, 130, 'admin/settings/uploads', 'admin/settings/uploads', 'File uploads', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Control how files may be attached to content.";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 237, 0, 0, 0, 0, 0, 0, 0),
('admin', 238, 121, 'admin/help/upload', 'admin/help/upload', 'upload', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 238, 0, 0, 0, 0, 0, 0, 0),
('navigation', 239, 0, 'filefield/ahah/%/%/%', 'filefield/ahah/%/%/%', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 239, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 241, 0, 'location/autocomplete', 'location/autocomplete', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('navigation', 242, 0, 'location/fetch_provinces', 'location/fetch_provinces', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 243, 130, 'admin/settings/location', 'admin/settings/location', 'Location', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:28:"Settings for Location module";}}', 'system', 0, 0, 0, 0, 0, 3, 0, 113, 130, 243, 0, 0, 0, 0, 0, 0, 0),
('admin', 244, 121, 'admin/help/location', 'admin/help/location', 'location', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 3, 0, 113, 121, 244, 0, 0, 0, 0, 0, 0, 0),
('admin', 245, 243, 'admin/settings/location/geocoding/%/%', 'admin/settings/location/geocoding/%/%', '', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 4, 0, 113, 130, 243, 245, 0, 0, 0, 0, 0, 0),
('admin', 247, 0, 'admin/content/node-type/monster/fields/field_images/remove', 'admin/content/node-type/monster/fields/field_images/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 248, 0, 'admin/content/node-type/monster/fields/field_doc/remove', 'admin/content/node-type/monster/fields/field_doc/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 249, 0, 'admin/content/node-type/lair/fields/field_image/remove', 'admin/content/node-type/lair/fields/field_image/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('admin', 250, 0, 'admin/content/node-type/lair/fields/field_location/remove', 'admin/content/node-type/lair/fields/field_location/remove', 'Remove field', 'a:0:{}', 'system', -1, 0, 0, 0, 0, 1, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_router`
--

CREATE TABLE IF NOT EXISTS `menu_router` (
  `path` varchar(255) NOT NULL DEFAULT '',
  `load_functions` text NOT NULL,
  `to_arg_functions` text NOT NULL,
  `access_callback` varchar(255) NOT NULL DEFAULT '',
  `access_arguments` text,
  `page_callback` varchar(255) NOT NULL DEFAULT '',
  `page_arguments` text,
  `fit` int(11) NOT NULL DEFAULT '0',
  `number_parts` smallint(6) NOT NULL DEFAULT '0',
  `tab_parent` varchar(255) NOT NULL DEFAULT '',
  `tab_root` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_callback` varchar(255) NOT NULL DEFAULT '',
  `title_arguments` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `block_callback` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `position` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  `file` mediumtext,
  PRIMARY KEY (`path`),
  KEY `fit` (`fit`),
  KEY `tab_parent` (`tab_parent`),
  KEY `tab_root_weight_title` (`tab_root`(64),`weight`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_router`
--

INSERT INTO `menu_router` (`path`, `load_functions`, `to_arg_functions`, `access_callback`, `access_arguments`, `page_callback`, `page_arguments`, `fit`, `number_parts`, `tab_parent`, `tab_root`, `title`, `title_callback`, `title_arguments`, `type`, `block_callback`, `description`, `position`, `weight`, `file`) VALUES
('admin', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_main_admin_page', 'a:0:{}', 1, 1, '', 'admin', 'Administer', 't', '', 6, '', '', '', 9, 'modules/system/system.admin.inc'),
('admin/build', '', '', 'admin_landing_page_access', 'a:1:{i:0;s:11:"admin/build";}', 'system_admin_menu_block_page', 'a:0:{}', 3, 2, '', 'admin/build', 'Site building', 't', '', 6, '', 'Control how your site looks and feels.', 'right', -10, 'modules/system/system.admin.inc'),
('admin/build/block', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'block_admin_display', 'a:0:{}', 7, 3, '', 'admin/build/block', 'Blocks', 't', '', 6, '', 'Configure what block content appears in your site''s sidebars and other regions.', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/add', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:20:"block_add_block_form";}', 15, 4, 'admin/build/block', 'admin/build/block', 'Add block', 't', '', 128, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/configure', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:21:"block_admin_configure";}', 15, 4, '', 'admin/build/block/configure', 'Configure block', 't', '', 4, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/delete', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:16:"block_box_delete";}', 15, 4, '', 'admin/build/block/delete', 'Delete block', 't', '', 4, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/list', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'block_admin_display', 'a:0:{}', 15, 4, 'admin/build/block', 'admin/build/block', 'List', 't', '', 136, '', '', '', -10, 'modules/block/block.admin.inc'),
('admin/build/block/list/bluemarine', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:33:"themes/bluemarine/bluemarine.info";s:4:"name";s:10:"bluemarine";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:10:"Bluemarine";s:11:"description";s:66:"Table-based multi-column theme with a marine and ash color scheme.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/bluemarine/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:27:"themes/bluemarine/script.js";}s:10:"screenshot";s:32:"themes/bluemarine/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/bluemarine/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:10:"bluemarine";}', 31, 5, 'admin/build/block/list', 'admin/build/block', 'Bluemarine', 't', '', 128, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/list/chameleon', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":11:{s:8:"filename";s:31:"themes/chameleon/chameleon.info";s:4:"name";s:9:"chameleon";s:4:"type";s:5:"theme";s:5:"owner";s:32:"themes/chameleon/chameleon.theme";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:12:{s:4:"name";s:9:"Chameleon";s:11:"description";s:42:"Minimalist tabled theme with light colors.";s:7:"regions";a:2:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";}s:8:"features";a:4:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";}s:11:"stylesheets";a:1:{s:3:"all";a:2:{s:9:"style.css";s:26:"themes/chameleon/style.css";s:10:"common.css";s:27:"themes/chameleon/common.css";}}s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"scripts";a:1:{s:9:"script.js";s:26:"themes/chameleon/script.js";}s:10:"screenshot";s:31:"themes/chameleon/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:2:{s:9:"style.css";s:26:"themes/chameleon/style.css";s:10:"common.css";s:27:"themes/chameleon/common.css";}}}}', 'block_admin_display', 'a:1:{i:0;s:9:"chameleon";}', 31, 5, 'admin/build/block/list', 'admin/build/block', 'Chameleon', 't', '', 128, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/list/garland', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:7:"Garland";s:11:"description";s:66:"Tableless, recolorable, multi-column, fluid width theme (default).";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:7:"scripts";a:1:{s:9:"script.js";s:24:"themes/garland/script.js";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:7:"garland";}', 31, 5, 'admin/build/block/list', 'admin/build/block', 'Garland', 't', '', 136, '', '', '', -10, 'modules/block/block.admin.inc'),
('admin/build/block/list/js', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'block_admin_display_js', 'a:0:{}', 31, 5, '', 'admin/build/block/list/js', 'JavaScript List Form', 't', '', 4, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/list/marvin', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:35:"themes/chameleon/marvin/marvin.info";s:4:"name";s:6:"marvin";s:4:"type";s:5:"theme";s:5:"owner";s:0:"";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:6:"Marvin";s:11:"description";s:31:"Boxy tabled theme in all grays.";s:7:"regions";a:2:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";}s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:10:"base theme";s:9:"chameleon";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:33:"themes/chameleon/marvin/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:33:"themes/chameleon/marvin/script.js";}s:10:"screenshot";s:38:"themes/chameleon/marvin/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:33:"themes/chameleon/marvin/style.css";}}s:10:"base_theme";s:9:"chameleon";}}', 'block_admin_display', 'a:1:{i:0;s:6:"marvin";}', 31, 5, 'admin/build/block/list', 'admin/build/block', 'Marvin', 't', '', 128, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/list/minnelli', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":13:{s:8:"filename";s:37:"themes/garland/minnelli/minnelli.info";s:4:"name";s:8:"minnelli";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:14:{s:4:"name";s:8:"Minnelli";s:11:"description";s:56:"Tableless, recolorable, multi-column, fixed width theme.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:10:"base theme";s:7:"garland";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:12:"minnelli.css";s:36:"themes/garland/minnelli/minnelli.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:7:"scripts";a:1:{s:9:"script.js";s:33:"themes/garland/minnelli/script.js";}s:10:"screenshot";s:38:"themes/garland/minnelli/screenshot.png";s:3:"php";s:5:"4.3.5";s:6:"engine";s:11:"phptemplate";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:12:"minnelli.css";s:36:"themes/garland/minnelli/minnelli.css";}}s:6:"engine";s:11:"phptemplate";s:10:"base_theme";s:7:"garland";}}', 'block_admin_display', 'a:1:{i:0;s:8:"minnelli";}', 31, 5, 'admin/build/block/list', 'admin/build/block', 'Minnelli', 't', '', 128, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/block/list/pushbutton', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:33:"themes/pushbutton/pushbutton.info";s:4:"name";s:10:"pushbutton";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:10:"Pushbutton";s:11:"description";s:52:"Tabled, multi-column theme in blue and orange tones.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/pushbutton/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:27:"themes/pushbutton/script.js";}s:10:"screenshot";s:32:"themes/pushbutton/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/pushbutton/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:10:"pushbutton";}', 31, 5, 'admin/build/block/list', 'admin/build/block', 'Pushbutton', 't', '', 128, '', '', '', 0, 'modules/block/block.admin.inc'),
('admin/build/menu', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_overview_page', 'a:0:{}', 7, 3, '', 'admin/build/menu', 'Menus', 't', '', 6, '', 'Control your site''s navigation menu, primary links and secondary links, as well as rename and reorganize menu items.', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu-customize/%', 'a:1:{i:3;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:18:"menu_overview_form";i:1;i:3;}', 14, 4, '', 'admin/build/menu-customize/%', 'Customize menu', 'menu_overview_title', 'a:1:{i:0;i:3;}', 4, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu-customize/%/add', 'a:1:{i:3;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:4:{i:0;s:14:"menu_edit_item";i:1;s:3:"add";i:2;N;i:3;i:3;}', 29, 5, 'admin/build/menu-customize/%', 'admin/build/menu-customize/%', 'Add item', 't', '', 128, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu-customize/%/delete', 'a:1:{i:3;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_delete_menu_page', 'a:1:{i:0;i:3;}', 29, 5, '', 'admin/build/menu-customize/%/delete', 'Delete menu', 't', '', 4, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu-customize/%/edit', 'a:1:{i:3;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:3:{i:0;s:14:"menu_edit_menu";i:1;s:4:"edit";i:2;i:3;}', 29, 5, 'admin/build/menu-customize/%', 'admin/build/menu-customize/%', 'Edit menu', 't', '', 128, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu-customize/%/list', 'a:1:{i:3;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:18:"menu_overview_form";i:1;i:3;}', 29, 5, 'admin/build/menu-customize/%', 'admin/build/menu-customize/%', 'List items', 't', '', 136, '', '', '', -10, 'modules/menu/menu.admin.inc'),
('admin/build/menu/add', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:14:"menu_edit_menu";i:1;s:3:"add";}', 15, 4, 'admin/build/menu', 'admin/build/menu', 'Add menu', 't', '', 128, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu/item/%/delete', 'a:1:{i:4;s:14:"menu_link_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_item_delete_page', 'a:1:{i:0;i:4;}', 61, 6, '', 'admin/build/menu/item/%/delete', 'Delete menu item', 't', '', 4, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu/item/%/edit', 'a:1:{i:4;s:14:"menu_link_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:4:{i:0;s:14:"menu_edit_item";i:1;s:4:"edit";i:2;i:4;i:3;N;}', 61, 6, '', 'admin/build/menu/item/%/edit', 'Edit menu item', 't', '', 4, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu/item/%/reset', 'a:1:{i:4;s:14:"menu_link_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:23:"menu_reset_item_confirm";i:1;i:4;}', 61, 6, '', 'admin/build/menu/item/%/reset', 'Reset menu item', 't', '', 4, '', '', '', 0, 'modules/menu/menu.admin.inc'),
('admin/build/menu/list', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_overview_page', 'a:0:{}', 15, 4, 'admin/build/menu', 'admin/build/menu', 'List menus', 't', '', 136, '', '', '', -10, 'modules/menu/menu.admin.inc'),
('admin/build/menu/settings', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:1:{i:0;s:14:"menu_configure";}', 15, 4, 'admin/build/menu', 'admin/build/menu', 'Settings', 't', '', 128, '', '', '', 5, 'modules/menu/menu.admin.inc'),
('admin/build/modules', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:14:"system_modules";}', 7, 3, '', 'admin/build/modules', 'Modules', 't', '', 6, '', 'Enable or disable add-on modules for your site.', '', 0, 'modules/system/system.admin.inc'),
('admin/build/modules/list', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:14:"system_modules";}', 15, 4, 'admin/build/modules', 'admin/build/modules', 'List', 't', '', 136, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/modules/list/confirm', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:14:"system_modules";}', 31, 5, '', 'admin/build/modules/list/confirm', 'List', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/modules/uninstall', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:24:"system_modules_uninstall";}', 15, 4, 'admin/build/modules', 'admin/build/modules', 'Uninstall', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/modules/uninstall/confirm', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:24:"system_modules_uninstall";}', 31, 5, '', 'admin/build/modules/uninstall/confirm', 'Uninstall', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:2:{i:0;s:18:"system_themes_form";i:1;N;}', 7, 3, '', 'admin/build/themes', 'Themes', 't', '', 6, '', 'Change which theme your site uses or allows users to set.', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes/select', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:2:{i:0;s:18:"system_themes_form";i:1;N;}', 15, 4, 'admin/build/themes', 'admin/build/themes', 'List', 't', '', 136, '', 'Select the default theme.', '', -1, 'modules/system/system.admin.inc'),
('admin/build/themes/settings', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:21:"system_theme_settings";}', 15, 4, 'admin/build/themes', 'admin/build/themes', 'Configure', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes/settings/bluemarine', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:33:"themes/bluemarine/bluemarine.info";s:4:"name";s:10:"bluemarine";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:10:"Bluemarine";s:11:"description";s:66:"Table-based multi-column theme with a marine and ash color scheme.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/bluemarine/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:27:"themes/bluemarine/script.js";}s:10:"screenshot";s:32:"themes/bluemarine/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/bluemarine/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:10:"bluemarine";}', 31, 5, 'admin/build/themes/settings', 'admin/build/themes', 'Bluemarine', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes/settings/chameleon', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":11:{s:8:"filename";s:31:"themes/chameleon/chameleon.info";s:4:"name";s:9:"chameleon";s:4:"type";s:5:"theme";s:5:"owner";s:32:"themes/chameleon/chameleon.theme";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:12:{s:4:"name";s:9:"Chameleon";s:11:"description";s:42:"Minimalist tabled theme with light colors.";s:7:"regions";a:2:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";}s:8:"features";a:4:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";}s:11:"stylesheets";a:1:{s:3:"all";a:2:{s:9:"style.css";s:26:"themes/chameleon/style.css";s:10:"common.css";s:27:"themes/chameleon/common.css";}}s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"scripts";a:1:{s:9:"script.js";s:26:"themes/chameleon/script.js";}s:10:"screenshot";s:31:"themes/chameleon/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:2:{s:9:"style.css";s:26:"themes/chameleon/style.css";s:10:"common.css";s:27:"themes/chameleon/common.css";}}}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:9:"chameleon";}', 31, 5, 'admin/build/themes/settings', 'admin/build/themes', 'Chameleon', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes/settings/garland', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:7:"Garland";s:11:"description";s:66:"Tableless, recolorable, multi-column, fluid width theme (default).";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:7:"scripts";a:1:{s:9:"script.js";s:24:"themes/garland/script.js";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:7:"garland";}', 31, 5, 'admin/build/themes/settings', 'admin/build/themes', 'Garland', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes/settings/global', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:21:"system_theme_settings";}', 31, 5, 'admin/build/themes/settings', 'admin/build/themes', 'Global settings', 't', '', 136, '', '', '', -1, 'modules/system/system.admin.inc'),
('admin/build/themes/settings/marvin', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:35:"themes/chameleon/marvin/marvin.info";s:4:"name";s:6:"marvin";s:4:"type";s:5:"theme";s:5:"owner";s:0:"";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:6:"Marvin";s:11:"description";s:31:"Boxy tabled theme in all grays.";s:7:"regions";a:2:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";}s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:10:"base theme";s:9:"chameleon";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:33:"themes/chameleon/marvin/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:33:"themes/chameleon/marvin/script.js";}s:10:"screenshot";s:38:"themes/chameleon/marvin/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:33:"themes/chameleon/marvin/style.css";}}s:10:"base_theme";s:9:"chameleon";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:6:"marvin";}', 31, 5, 'admin/build/themes/settings', 'admin/build/themes', 'Marvin', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes/settings/minnelli', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":13:{s:8:"filename";s:37:"themes/garland/minnelli/minnelli.info";s:4:"name";s:8:"minnelli";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:14:{s:4:"name";s:8:"Minnelli";s:11:"description";s:56:"Tableless, recolorable, multi-column, fixed width theme.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:10:"base theme";s:7:"garland";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:12:"minnelli.css";s:36:"themes/garland/minnelli/minnelli.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:7:"scripts";a:1:{s:9:"script.js";s:33:"themes/garland/minnelli/script.js";}s:10:"screenshot";s:38:"themes/garland/minnelli/screenshot.png";s:3:"php";s:5:"4.3.5";s:6:"engine";s:11:"phptemplate";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:12:"minnelli.css";s:36:"themes/garland/minnelli/minnelli.css";}}s:6:"engine";s:11:"phptemplate";s:10:"base_theme";s:7:"garland";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:8:"minnelli";}', 31, 5, 'admin/build/themes/settings', 'admin/build/themes', 'Minnelli', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/build/themes/settings/pushbutton', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:33:"themes/pushbutton/pushbutton.info";s:4:"name";s:10:"pushbutton";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:8:"throttle";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:13:{s:4:"name";s:10:"Pushbutton";s:11:"description";s:52:"Tabled, multi-column theme in blue and orange tones.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/pushbutton/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:27:"themes/pushbutton/script.js";}s:10:"screenshot";s:32:"themes/pushbutton/screenshot.png";s:3:"php";s:5:"4.3.5";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/pushbutton/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:10:"pushbutton";}', 31, 5, 'admin/build/themes/settings', 'admin/build/themes', 'Pushbutton', 't', '', 128, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/by-module', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_by_module', 'a:0:{}', 3, 2, 'admin', 'admin', 'By module', 't', '', 128, '', '', '', 2, 'modules/system/system.admin.inc'),
('admin/by-task', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_main_admin_page', 'a:0:{}', 3, 2, 'admin', 'admin', 'By task', 't', '', 136, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/compact', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_compact_page', 'a:0:{}', 3, 2, '', 'admin/compact', 'Compact mode', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/content', '', '', 'admin_landing_page_access', 'a:1:{i:0;s:13:"admin/content";}', 'system_admin_menu_block_page', 'a:0:{}', 3, 2, '', 'admin/content', 'Content management', 't', '', 6, '', 'Manage your site''s content.', 'left', -10, 'modules/system/system.admin.inc'),
('admin/content/comment', '', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'comment_admin', 'a:0:{}', 7, 3, '', 'admin/content/comment', 'Comments', 't', '', 6, '', 'List and edit site comments and the comment moderation queue.', '', 0, 'modules/comment/comment.admin.inc'),
('admin/content/comment/approval', '', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'comment_admin', 'a:1:{i:0;s:8:"approval";}', 15, 4, 'admin/content/comment', 'admin/content/comment', 'Approval queue', 't', '', 128, '', '', '', 0, 'modules/comment/comment.admin.inc'),
('admin/content/comment/new', '', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'comment_admin', 'a:0:{}', 15, 4, 'admin/content/comment', 'admin/content/comment', 'Published comments', 't', '', 136, '', '', '', -10, 'modules/comment/comment.admin.inc'),
('admin/content/node', '', '', 'user_access', 'a:1:{i:0;s:16:"administer nodes";}', 'drupal_get_form', 'a:1:{i:0;s:18:"node_admin_content";}', 7, 3, '', 'admin/content/node', 'Content', 't', '', 6, '', 'View, edit, and delete your site''s content.', '', 0, 'modules/node/node.admin.inc'),
('admin/content/node-settings', '', '', 'user_access', 'a:1:{i:0;s:16:"administer nodes";}', 'drupal_get_form', 'a:1:{i:0;s:14:"node_configure";}', 7, 3, '', 'admin/content/node-settings', 'Post settings', 't', '', 6, '', 'Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.', '', 0, 'modules/node/node.admin.inc'),
('admin/content/node-settings/rebuild', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'drupal_get_form', 'a:1:{i:0;s:30:"node_configure_rebuild_confirm";}', 15, 4, '', 'admin/content/node-settings/rebuild', 'Rebuild permissions', 't', '', 4, '', '', '', 0, 'modules/node/node.admin.inc'),
('admin/content/node-type/lair', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:4:"lair";s:4:"name";s:4:"Lair";s:6:"module";s:4:"node";s:11:"description";s:0:"";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:0:"";}}', 15, 4, '', 'admin/content/node-type/lair', 'Lair', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/lair/delete', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"node_type_delete_confirm";i:1;O:8:"stdClass":14:{s:4:"type";s:4:"lair";s:4:"name";s:4:"Lair";s:6:"module";s:4:"node";s:11:"description";s:0:"";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:0:"";}}', 31, 5, '', 'admin/content/node-type/lair/delete', 'Delete', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/lair/display', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:29:"content_display_overview_form";i:1;s:4:"lair";}', 31, 5, 'admin/content/node-type/lair', 'admin/content/node-type/lair', 'Display fields', 't', '', 128, '', '', '', 2, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/display/basic', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:4:"lair";i:2;s:5:"basic";}', 63, 6, 'admin/content/node-type/lair/display', 'admin/content/node-type/lair', 'Basic', 't', '', 136, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/display/rss', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:4:"lair";i:2;s:3:"rss";}', 63, 6, 'admin/content/node-type/lair/display', 'admin/content/node-type/lair', 'RSS', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/edit', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:4:"lair";s:4:"name";s:4:"Lair";s:6:"module";s:4:"node";s:11:"description";s:0:"";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:0:"";}}', 31, 5, 'admin/content/node-type/lair', 'admin/content/node-type/lair', 'Edit', 't', '', 136, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/lair/fields', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:27:"content_field_overview_form";i:1;s:4:"lair";}', 31, 5, 'admin/content/node-type/lair', 'admin/content/node-type/lair', 'Manage fields', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/fields/field_atmosphere', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:4:"lair";i:2;s:16:"field_atmosphere";}', 63, 6, 'admin/content/node-type/lair/fields', 'admin/content/node-type/lair', 'Atmosphere', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/fields/field_atmosphere/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:4:"lair";i:2;s:16:"field_atmosphere";}', 127, 7, '', 'admin/content/node-type/lair/fields/field_atmosphere/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/fields/field_image', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:4:"lair";i:2;s:11:"field_image";}', 63, 6, 'admin/content/node-type/lair/fields', 'admin/content/node-type/lair', 'Image', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/fields/field_image/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:4:"lair";i:2;s:11:"field_image";}', 127, 7, '', 'admin/content/node-type/lair/fields/field_image/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/fields/field_location', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:4:"lair";i:2;s:14:"field_location";}', 63, 6, 'admin/content/node-type/lair/fields', 'admin/content/node-type/lair', 'Location', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/lair/fields/field_location/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:4:"lair";i:2;s:14:"field_location";}', 127, 7, '', 'admin/content/node-type/lair/fields/field_location/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:7:"monster";s:4:"name";s:7:"Monster";s:6:"module";s:4:"node";s:11:"description";s:0:"";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:0:"";}}', 15, 4, '', 'admin/content/node-type/monster', 'Monster', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/monster/delete', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"node_type_delete_confirm";i:1;O:8:"stdClass":14:{s:4:"type";s:7:"monster";s:4:"name";s:7:"Monster";s:6:"module";s:4:"node";s:11:"description";s:0:"";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:0:"";}}', 31, 5, '', 'admin/content/node-type/monster/delete', 'Delete', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/monster/display', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:29:"content_display_overview_form";i:1;s:7:"monster";}', 31, 5, 'admin/content/node-type/monster', 'admin/content/node-type/monster', 'Display fields', 't', '', 128, '', '', '', 2, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/display/basic', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:7:"monster";i:2;s:5:"basic";}', 63, 6, 'admin/content/node-type/monster/display', 'admin/content/node-type/monster', 'Basic', 't', '', 136, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/display/rss', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:7:"monster";i:2;s:3:"rss";}', 63, 6, 'admin/content/node-type/monster/display', 'admin/content/node-type/monster', 'RSS', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/edit', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:7:"monster";s:4:"name";s:7:"Monster";s:6:"module";s:4:"node";s:11:"description";s:0:"";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:0:"";}}', 31, 5, 'admin/content/node-type/monster', 'admin/content/node-type/monster', 'Edit', 't', '', 136, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/monster/fields', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:27:"content_field_overview_form";i:1;s:7:"monster";}', 31, 5, 'admin/content/node-type/monster', 'admin/content/node-type/monster', 'Manage fields', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_doc', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:7:"monster";i:2;s:9:"field_doc";}', 63, 6, 'admin/content/node-type/monster/fields', 'admin/content/node-type/monster', 'Doc', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_doc/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:7:"monster";i:2;s:9:"field_doc";}', 127, 7, '', 'admin/content/node-type/monster/fields/field_doc/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_images', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:7:"monster";i:2;s:12:"field_images";}', 63, 6, 'admin/content/node-type/monster/fields', 'admin/content/node-type/monster', 'Images', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_images/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:7:"monster";i:2;s:12:"field_images";}', 127, 7, '', 'admin/content/node-type/monster/fields/field_images/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_lair', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:7:"monster";i:2;s:10:"field_lair";}', 63, 6, 'admin/content/node-type/monster/fields', 'admin/content/node-type/monster', 'Lair', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_lair/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:7:"monster";i:2;s:10:"field_lair";}', 127, 7, '', 'admin/content/node-type/monster/fields/field_lair/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_teeth', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:7:"monster";i:2;s:11:"field_teeth";}', 63, 6, 'admin/content/node-type/monster/fields', 'admin/content/node-type/monster', 'Teeth', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_teeth/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:7:"monster";i:2;s:11:"field_teeth";}', 127, 7, '', 'admin/content/node-type/monster/fields/field_teeth/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_victims', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:23:"content_field_edit_form";i:1;s:7:"monster";i:2;s:13:"field_victims";}', 63, 6, 'admin/content/node-type/monster/fields', 'admin/content/node-type/monster', 'Victims', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/monster/fields/field_victims/remove', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:25:"content_field_remove_form";i:1;s:7:"monster";i:2;s:13:"field_victims";}', 127, 7, '', 'admin/content/node-type/monster/fields/field_victims/remove', 'Remove field', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/page', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:4:"page";s:4:"name";s:4:"Page";s:6:"module";s:4:"node";s:11:"description";s:296:"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site''s initial home page.";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:4:"page";}}', 15, 4, '', 'admin/content/node-type/page', 'Page', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/page/delete', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"node_type_delete_confirm";i:1;O:8:"stdClass":14:{s:4:"type";s:4:"page";s:4:"name";s:4:"Page";s:6:"module";s:4:"node";s:11:"description";s:296:"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site''s initial home page.";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:4:"page";}}', 31, 5, '', 'admin/content/node-type/page/delete', 'Delete', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/page/display', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:29:"content_display_overview_form";i:1;s:4:"page";}', 31, 5, 'admin/content/node-type/page', 'admin/content/node-type/page', 'Display fields', 't', '', 128, '', '', '', 2, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/page/display/basic', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:4:"page";i:2;s:5:"basic";}', 63, 6, 'admin/content/node-type/page/display', 'admin/content/node-type/page', 'Basic', 't', '', 136, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/page/display/rss', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:4:"page";i:2;s:3:"rss";}', 63, 6, 'admin/content/node-type/page/display', 'admin/content/node-type/page', 'RSS', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/page/edit', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:4:"page";s:4:"name";s:4:"Page";s:6:"module";s:4:"node";s:11:"description";s:296:"A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site''s initial home page.";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:4:"page";}}', 31, 5, 'admin/content/node-type/page', 'admin/content/node-type/page', 'Edit', 't', '', 136, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/page/fields', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:27:"content_field_overview_form";i:1;s:4:"page";}', 31, 5, 'admin/content/node-type/page', 'admin/content/node-type/page', 'Manage fields', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/story', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:5:"story";s:4:"name";s:5:"Story";s:6:"module";s:4:"node";s:11:"description";s:392:"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site''s initial home page, and provides the ability to post comments.";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:5:"story";}}', 15, 4, '', 'admin/content/node-type/story', 'Story', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc');
INSERT INTO `menu_router` (`path`, `load_functions`, `to_arg_functions`, `access_callback`, `access_arguments`, `page_callback`, `page_arguments`, `fit`, `number_parts`, `tab_parent`, `tab_root`, `title`, `title_callback`, `title_arguments`, `type`, `block_callback`, `description`, `position`, `weight`, `file`) VALUES
('admin/content/node-type/story/delete', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"node_type_delete_confirm";i:1;O:8:"stdClass":14:{s:4:"type";s:5:"story";s:4:"name";s:5:"Story";s:6:"module";s:4:"node";s:11:"description";s:392:"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site''s initial home page, and provides the ability to post comments.";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:5:"story";}}', 31, 5, '', 'admin/content/node-type/story/delete', 'Delete', 't', '', 4, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/story/display', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:29:"content_display_overview_form";i:1;s:5:"story";}', 31, 5, 'admin/content/node-type/story', 'admin/content/node-type/story', 'Display fields', 't', '', 128, '', '', '', 2, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/story/display/basic', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:5:"story";i:2;s:5:"basic";}', 63, 6, 'admin/content/node-type/story/display', 'admin/content/node-type/story', 'Basic', 't', '', 136, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/story/display/rss', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:29:"content_display_overview_form";i:1;s:5:"story";i:2;s:3:"rss";}', 63, 6, 'admin/content/node-type/story/display', 'admin/content/node-type/story', 'RSS', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node-type/story/edit', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;O:8:"stdClass":14:{s:4:"type";s:5:"story";s:4:"name";s:5:"Story";s:6:"module";s:4:"node";s:11:"description";s:392:"A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site''s initial home page, and provides the ability to post comments.";s:4:"help";s:0:"";s:9:"has_title";s:1:"1";s:11:"title_label";s:5:"Title";s:8:"has_body";s:1:"1";s:10:"body_label";s:4:"Body";s:14:"min_word_count";s:1:"0";s:6:"custom";s:1:"1";s:8:"modified";s:1:"1";s:6:"locked";s:1:"0";s:9:"orig_type";s:5:"story";}}', 31, 5, 'admin/content/node-type/story', 'admin/content/node-type/story', 'Edit', 't', '', 136, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/node-type/story/fields', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:27:"content_field_overview_form";i:1;s:5:"story";}', 31, 5, 'admin/content/node-type/story', 'admin/content/node-type/story', 'Manage fields', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/node/overview', '', '', 'user_access', 'a:1:{i:0;s:16:"administer nodes";}', 'drupal_get_form', 'a:1:{i:0;s:18:"node_admin_content";}', 15, 4, 'admin/content/node', 'admin/content/node', 'List', 't', '', 136, '', '', '', -10, 'modules/node/node.admin.inc'),
('admin/content/rss-publishing', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:25:"system_rss_feeds_settings";}', 7, 3, '', 'admin/content/rss-publishing', 'RSS publishing', 't', '', 6, '', 'Configure the number of items per feed and whether feeds should be titles/teasers/full-text.', '', 0, 'modules/system/system.admin.inc'),
('admin/content/taxonomy', '', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:1:{i:0;s:30:"taxonomy_overview_vocabularies";}', 7, 3, '', 'admin/content/taxonomy', 'Taxonomy', 't', '', 6, '', 'Manage tagging, categorization, and classification of your content.', '', 0, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/taxonomy/%', 'a:1:{i:3;s:24:"taxonomy_vocabulary_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:23:"taxonomy_overview_terms";i:1;i:3;}', 14, 4, '', 'admin/content/taxonomy/%', 'List terms', 't', '', 4, '', '', '', 0, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/taxonomy/%/add/term', 'a:1:{i:3;s:24:"taxonomy_vocabulary_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'taxonomy_add_term_page', 'a:1:{i:0;i:3;}', 59, 6, 'admin/content/taxonomy/%', 'admin/content/taxonomy/%', 'Add term', 't', '', 128, '', '', '', 0, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/taxonomy/%/list', 'a:1:{i:3;s:24:"taxonomy_vocabulary_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:23:"taxonomy_overview_terms";i:1;i:3;}', 29, 5, 'admin/content/taxonomy/%', 'admin/content/taxonomy/%', 'List', 't', '', 136, '', '', '', -10, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/taxonomy/add/vocabulary', '', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:1:{i:0;s:24:"taxonomy_form_vocabulary";}', 31, 5, 'admin/content/taxonomy', 'admin/content/taxonomy', 'Add vocabulary', 't', '', 128, '', '', '', 0, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/taxonomy/edit/term', '', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'taxonomy_admin_term_edit', 'a:0:{}', 31, 5, '', 'admin/content/taxonomy/edit/term', 'Edit term', 't', '', 4, '', '', '', 0, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/taxonomy/edit/vocabulary/%', 'a:1:{i:5;s:24:"taxonomy_vocabulary_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'taxonomy_admin_vocabulary_edit', 'a:1:{i:0;i:5;}', 62, 6, '', 'admin/content/taxonomy/edit/vocabulary/%', 'Edit vocabulary', 't', '', 4, '', '', '', 0, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/taxonomy/list', '', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:1:{i:0;s:30:"taxonomy_overview_vocabularies";}', 15, 4, 'admin/content/taxonomy', 'admin/content/taxonomy', 'List', 't', '', 136, '', '', '', -10, 'modules/taxonomy/taxonomy.admin.inc'),
('admin/content/types', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'content_types_overview', 'a:0:{}', 7, 3, '', 'admin/content/types', 'Content types', 't', '', 6, '', 'Manage posts by content type, including default status, front page promotion, etc.', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/types/add', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:1:{i:0;s:14:"node_type_form";}', 15, 4, 'admin/content/types', 'admin/content/types', 'Add content type', 't', '', 128, '', '', '', 0, 'modules/node/content_types.inc'),
('admin/content/types/fields', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'content_fields_list', 'a:0:{}', 15, 4, 'admin/content/types', 'admin/content/types', 'Fields', 't', '', 128, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/content/types/list', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'content_types_overview', 'a:0:{}', 15, 4, 'admin/content/types', 'admin/content/types', 'List', 't', '', 136, '', '', '', -10, 'sites/all/modules/contrib/cck/includes/content.admin.inc'),
('admin/help', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_main', 'a:0:{}', 3, 2, '', 'admin/help', 'Help', 't', '', 6, '', '', '', 9, 'modules/help/help.admin.inc'),
('admin/help/block', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/block', 'block', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/color', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/color', 'color', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/comment', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/comment', 'comment', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/content', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/content', 'content', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/dblog', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/dblog', 'dblog', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/devel', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/devel', 'devel', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/filter', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/filter', 'filter', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/help', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/help', 'help', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/location', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/location', 'location', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/menu', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/menu', 'menu', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/node', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/node', 'node', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/system', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/system', 'system', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/taxonomy', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/taxonomy', 'taxonomy', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/upload', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/upload', 'upload', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/help/user', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', 7, 3, '', 'admin/help/user', 'user', 't', '', 4, '', '', '', 0, 'modules/help/help.admin.inc'),
('admin/reports', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'system_admin_menu_block_page', 'a:0:{}', 3, 2, '', 'admin/reports', 'Reports', 't', '', 6, '', 'View reports from system logs and other status information.', 'left', 5, 'modules/system/system.admin.inc'),
('admin/reports/access-denied', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_top', 'a:1:{i:0;s:13:"access denied";}', 7, 3, '', 'admin/reports/access-denied', 'Top ''access denied'' errors', 't', '', 6, '', 'View ''access denied'' errors (403s).', '', 0, 'modules/dblog/dblog.admin.inc'),
('admin/reports/dblog', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_overview', 'a:0:{}', 7, 3, '', 'admin/reports/dblog', 'Recent log entries', 't', '', 6, '', 'View events that have recently been logged.', '', -1, 'modules/dblog/dblog.admin.inc'),
('admin/reports/event/%', 'a:1:{i:3;N;}', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_event', 'a:1:{i:0;i:3;}', 14, 4, '', 'admin/reports/event/%', 'Details', 't', '', 4, '', '', '', 0, 'modules/dblog/dblog.admin.inc'),
('admin/reports/page-not-found', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_top', 'a:1:{i:0;s:14:"page not found";}', 7, 3, '', 'admin/reports/page-not-found', 'Top ''page not found'' errors', 't', '', 6, '', 'View ''page not found'' errors (404s).', '', 0, 'modules/dblog/dblog.admin.inc'),
('admin/reports/status', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_status', 'a:0:{}', 7, 3, '', 'admin/reports/status', 'Status report', 't', '', 6, '', 'Get a status report about your site''s operation and any detected problems.', '', 10, 'modules/system/system.admin.inc'),
('admin/reports/status/php', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_php', 'a:0:{}', 15, 4, '', 'admin/reports/status/php', 'PHP', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/reports/status/run-cron', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_run_cron', 'a:0:{}', 15, 4, '', 'admin/reports/status/run-cron', 'Run cron', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/reports/status/sql', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_sql', 'a:0:{}', 15, 4, '', 'admin/reports/status/sql', 'SQL', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/settings', '', '', 'admin_landing_page_access', 'a:1:{i:0;s:14:"admin/settings";}', 'system_settings_overview', 'a:0:{}', 3, 2, '', 'admin/settings', 'Site configuration', 't', '', 6, '', 'Adjust basic site configuration options.', 'right', -5, 'modules/system/system.admin.inc'),
('admin/settings/actions', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'system_actions_manage', 'a:0:{}', 7, 3, '', 'admin/settings/actions', 'Actions', 't', '', 6, '', 'Manage the actions defined for your site.', '', 0, ''),
('admin/settings/actions/configure', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'drupal_get_form', 'a:1:{i:0;s:24:"system_actions_configure";}', 15, 4, '', 'admin/settings/actions/configure', 'Configure an advanced action', 't', '', 4, '', '', '', 0, ''),
('admin/settings/actions/delete/%', 'a:1:{i:4;s:12:"actions_load";}', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'drupal_get_form', 'a:2:{i:0;s:26:"system_actions_delete_form";i:1;i:4;}', 30, 5, '', 'admin/settings/actions/delete/%', 'Delete action', 't', '', 4, '', 'Delete an action.', '', 0, ''),
('admin/settings/actions/manage', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'system_actions_manage', 'a:0:{}', 15, 4, 'admin/settings/actions', 'admin/settings/actions', 'Manage actions', 't', '', 136, '', 'Manage the actions defined for your site.', '', -2, ''),
('admin/settings/actions/orphan', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'system_actions_remove_orphans', 'a:0:{}', 15, 4, '', 'admin/settings/actions/orphan', 'Remove orphans', 't', '', 4, '', '', '', 0, ''),
('admin/settings/admin', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:19:"admin_settings_form";}', 7, 3, '', 'admin/settings/admin', 'Administration tools', 't', '', 6, '', 'Settings for site administration tools.', '', 0, 'sites/all/modules/custom/admin/admin.admin.inc'),
('admin/settings/admin/rebuild', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:22:"admin_settings_rebuild";}', 15, 4, 'admin/settings/admin', 'admin/settings/admin', 'Rebuild', 't', '', 128, '', 'Wipe and rebuild the administrative menu.', '', 10, 'sites/all/modules/custom/admin/admin.admin.inc'),
('admin/settings/admin/settings', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:19:"admin_settings_form";}', 15, 4, 'admin/settings/admin', 'admin/settings/admin', 'Settings', 't', '', 136, '', 'Settings for site administration tools.', '', 0, 'sites/all/modules/custom/admin/admin.admin.inc'),
('admin/settings/admin/theme', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:27:"system_admin_theme_settings";}', 15, 4, 'admin/settings/admin', 'admin/settings/admin', 'Administration theme', 't', '', 128, 'system_admin_theme_settings', 'Settings for how your administrative pages should look.', 'left', 10, 'modules/system/system.admin.inc'),
('admin/settings/clean-urls', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:25:"system_clean_url_settings";}', 7, 3, '', 'admin/settings/clean-urls', 'Clean URLs', 't', '', 6, '', 'Enable or disable clean URLs for your site.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/clean-urls/check', '', '', '1', 'a:0:{}', 'drupal_json', 'a:1:{i:0;a:1:{s:6:"status";b:1;}}', 15, 4, '', 'admin/settings/clean-urls/check', 'Clean URL check', 't', '', 4, '', '', '', 0, ''),
('admin/settings/date-time', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:25:"system_date_time_settings";}', 7, 3, '', 'admin/settings/date-time', 'Date and time', 't', '', 6, '', 'Settings for how Drupal displays date and time, as well as the system''s default timezone.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/date-time/lookup', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_date_time_lookup', 'a:0:{}', 15, 4, '', 'admin/settings/date-time/lookup', 'Date and time lookup', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/devel', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:20:"devel_admin_settings";}', 7, 3, '', 'admin/settings/devel', 'Devel settings', 't', '', 6, '', 'Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/build/block">block administration</a> page.', '', 0, ''),
('admin/settings/error-reporting', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:31:"system_error_reporting_settings";}', 7, 3, '', 'admin/settings/error-reporting', 'Error reporting', 't', '', 6, '', 'Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/file-system', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:27:"system_file_system_settings";}', 7, 3, '', 'admin/settings/file-system', 'File system', 't', '', 6, '', 'Tell Drupal where to store uploaded files and how they are accessed.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/filters', '', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'drupal_get_form', 'a:1:{i:0;s:21:"filter_admin_overview";}', 7, 3, '', 'admin/settings/filters', 'Input formats', 't', '', 6, '', 'Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.', '', 0, 'modules/filter/filter.admin.inc'),
('admin/settings/filters/%', 'a:1:{i:3;s:18:"filter_format_load";}', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'filter_admin_format_page', 'a:1:{i:0;i:3;}', 14, 4, '', 'admin/settings/filters/%', '', 'filter_admin_format_title', 'a:1:{i:0;i:3;}', 4, '', '', '', 0, 'modules/filter/filter.admin.inc'),
('admin/settings/filters/%/configure', 'a:1:{i:3;s:18:"filter_format_load";}', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'filter_admin_configure_page', 'a:1:{i:0;i:3;}', 29, 5, 'admin/settings/filters/%', 'admin/settings/filters/%', 'Configure', 't', '', 128, '', '', '', 1, 'modules/filter/filter.admin.inc'),
('admin/settings/filters/%/edit', 'a:1:{i:3;s:18:"filter_format_load";}', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'filter_admin_format_page', 'a:1:{i:0;i:3;}', 29, 5, 'admin/settings/filters/%', 'admin/settings/filters/%', 'Edit', 't', '', 136, '', '', '', 0, 'modules/filter/filter.admin.inc'),
('admin/settings/filters/%/order', 'a:1:{i:3;s:18:"filter_format_load";}', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'filter_admin_order_page', 'a:1:{i:0;i:3;}', 29, 5, 'admin/settings/filters/%', 'admin/settings/filters/%', 'Rearrange', 't', '', 128, '', '', '', 2, 'modules/filter/filter.admin.inc'),
('admin/settings/filters/add', '', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'filter_admin_format_page', 'a:0:{}', 15, 4, 'admin/settings/filters', 'admin/settings/filters', 'Add input format', 't', '', 128, '', '', '', 1, 'modules/filter/filter.admin.inc'),
('admin/settings/filters/delete', '', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'drupal_get_form', 'a:1:{i:0;s:19:"filter_admin_delete";}', 15, 4, '', 'admin/settings/filters/delete', 'Delete input format', 't', '', 4, '', '', '', 0, 'modules/filter/filter.admin.inc'),
('admin/settings/filters/list', '', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'drupal_get_form', 'a:1:{i:0;s:21:"filter_admin_overview";}', 15, 4, 'admin/settings/filters', 'admin/settings/filters', 'List', 't', '', 136, '', '', '', 0, 'modules/filter/filter.admin.inc'),
('admin/settings/image-toolkit', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:29:"system_image_toolkit_settings";}', 7, 3, '', 'admin/settings/image-toolkit', 'Image toolkit', 't', '', 6, '', 'Choose which image toolkit to use if you have installed optional toolkits.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/location', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:23:"location_admin_settings";}', 7, 3, '', 'admin/settings/location', 'Location', 't', '', 6, '', 'Settings for Location module', '', 0, 'sites/all/modules/contrib/location/location.admin.inc'),
('admin/settings/location/geocoding', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:31:"location_geocoding_options_form";}', 15, 4, 'admin/settings/location', 'admin/settings/location', 'Geocoding options', 't', '', 128, '', '', '', 2, 'sites/all/modules/contrib/location/location.admin.inc'),
('admin/settings/location/geocoding/%/%', 'a:2:{i:4;N;i:5;N;}', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'location_geocoding_parameters_page', 'a:2:{i:0;i:4;i:1;i:5;}', 60, 6, '', 'admin/settings/location/geocoding/%/%', '', 't', '', 4, '', '', '', 0, ''),
('admin/settings/location/main', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:23:"location_admin_settings";}', 15, 4, 'admin/settings/location', 'admin/settings/location', 'Main settings', 't', '', 136, '', '', '', 0, 'sites/all/modules/contrib/location/location.admin.inc'),
('admin/settings/location/maplinking', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:30:"location_map_link_options_form";}', 15, 4, 'admin/settings/location', 'admin/settings/location', 'Map links', 't', '', 128, '', '', '', 1, 'sites/all/modules/contrib/location/location.admin.inc'),
('admin/settings/location/util', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:18:"location_util_form";}', 15, 4, 'admin/settings/location', 'admin/settings/location', 'Location utilities', 't', '', 128, '', '', '', 3, 'sites/all/modules/contrib/location/location.admin.inc'),
('admin/settings/logging', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_logging_overview', 'a:0:{}', 7, 3, '', 'admin/settings/logging', 'Logging and alerts', 't', '', 6, '', 'Settings for logging and alerts modules. Various modules can route Drupal''s system events to different destination, such as syslog, database, email, ...etc.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/logging/dblog', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:20:"dblog_admin_settings";}', 15, 4, '', 'admin/settings/logging/dblog', 'Database logging', 't', '', 6, '', 'Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.', '', 0, 'modules/dblog/dblog.admin.inc'),
('admin/settings/performance', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:27:"system_performance_settings";}', 7, 3, '', 'admin/settings/performance', 'Performance', 't', '', 6, '', 'Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/site-information', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:32:"system_site_information_settings";}', 7, 3, '', 'admin/settings/site-information', 'Site information', 't', '', 6, '', 'Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/site-maintenance', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:32:"system_site_maintenance_settings";}', 7, 3, '', 'admin/settings/site-maintenance', 'Site maintenance', 't', '', 6, '', 'Take the site off-line for maintenance or bring it back online.', '', 0, 'modules/system/system.admin.inc'),
('admin/settings/uploads', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:21:"upload_admin_settings";}', 7, 3, '', 'admin/settings/uploads', 'File uploads', 't', '', 6, '', 'Control how files may be attached to content.', '', 0, 'modules/upload/upload.admin.inc'),
('admin/user', '', '', 'admin_landing_page_access', 'a:1:{i:0;s:10:"admin/user";}', 'system_admin_menu_block_page', 'a:0:{}', 3, 2, '', 'admin/user', 'User management', 't', '', 6, '', 'Manage your site''s users, groups and access to site features.', 'left', 0, 'modules/system/system.admin.inc'),
('admin/user/permissions', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'drupal_get_form', 'a:1:{i:0;s:15:"user_admin_perm";}', 7, 3, '', 'admin/user/permissions', 'Permissions', 't', '', 6, '', 'Determine access to features by selecting permissions for roles.', '', 0, 'modules/user/user.admin.inc'),
('admin/user/roles', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'drupal_get_form', 'a:1:{i:0;s:19:"user_admin_new_role";}', 7, 3, '', 'admin/user/roles', 'Roles', 't', '', 6, '', 'List, edit, or add user roles.', '', 0, 'modules/user/user.admin.inc'),
('admin/user/roles/edit', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'drupal_get_form', 'a:1:{i:0;s:15:"user_admin_role";}', 15, 4, '', 'admin/user/roles/edit', 'Edit role', 't', '', 4, '', '', '', 0, 'modules/user/user.admin.inc'),
('admin/user/rules', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'user_admin_access', 'a:0:{}', 7, 3, '', 'admin/user/rules', 'Access rules', 't', '', 6, '', 'List and create rules to disallow usernames, e-mail addresses, and IP addresses.', '', 0, 'modules/user/user.admin.inc'),
('admin/user/rules/add', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'user_admin_access_add', 'a:0:{}', 15, 4, 'admin/user/rules', 'admin/user/rules', 'Add rule', 't', '', 128, '', '', '', 0, 'modules/user/user.admin.inc'),
('admin/user/rules/check', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'user_admin_access_check', 'a:0:{}', 15, 4, 'admin/user/rules', 'admin/user/rules', 'Check rules', 't', '', 128, '', '', '', 0, 'modules/user/user.admin.inc'),
('admin/user/rules/delete', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'drupal_get_form', 'a:1:{i:0;s:32:"user_admin_access_delete_confirm";}', 15, 4, '', 'admin/user/rules/delete', 'Delete rule', 't', '', 4, '', '', '', 0, 'modules/user/user.admin.inc'),
('admin/user/rules/edit', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'user_admin_access_edit', 'a:0:{}', 15, 4, '', 'admin/user/rules/edit', 'Edit rule', 't', '', 4, '', '', '', 0, 'modules/user/user.admin.inc'),
('admin/user/rules/list', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'user_admin_access', 'a:0:{}', 15, 4, 'admin/user/rules', 'admin/user/rules', 'List', 't', '', 136, '', '', '', -10, 'modules/user/user.admin.inc'),
('admin/user/settings', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:1:{i:0;s:19:"user_admin_settings";}', 7, 3, '', 'admin/user/settings', 'User settings', 't', '', 6, '', 'Configure default behavior of users, including registration requirements, e-mails, and user pictures.', '', 0, 'modules/user/user.admin.inc'),
('admin/user/user', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'user_admin', 'a:1:{i:0;s:4:"list";}', 7, 3, '', 'admin/user/user', 'Users', 't', '', 6, '', 'List, add, and edit users.', '', 0, 'modules/user/user.admin.inc'),
('admin/user/user/create', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'user_admin', 'a:1:{i:0;s:6:"create";}', 15, 4, 'admin/user/user', 'admin/user/user', 'Add user', 't', '', 128, '', '', '', 0, 'modules/user/user.admin.inc'),
('admin/user/user/list', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'user_admin', 'a:1:{i:0;s:4:"list";}', 15, 4, 'admin/user/user', 'admin/user/user', 'List', 't', '', 136, '', '', '', -10, 'modules/user/user.admin.inc'),
('autoload/flush-cache', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'autoload_adminmenu_flush_cache', 'a:0:{}', 3, 2, '', 'autoload/flush-cache', '', 't', '', 4, '', '', '', 0, ''),
('batch', '', '', '1', 'a:0:{}', 'system_batch_page', 'a:0:{}', 1, 1, '', 'batch', '', 't', '', 4, '', '', '', 0, 'modules/system/system.admin.inc'),
('comment/delete', '', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'comment_delete', 'a:0:{}', 3, 2, '', 'comment/delete', 'Delete comment', 't', '', 4, '', '', '', 0, 'modules/comment/comment.admin.inc'),
('comment/edit', '', '', 'user_access', 'a:1:{i:0;s:13:"post comments";}', 'comment_edit', 'a:0:{}', 3, 2, '', 'comment/edit', 'Edit comment', 't', '', 4, '', '', '', 0, 'modules/comment/comment.pages.inc'),
('comment/reply/%', 'a:1:{i:2;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:4:"view";i:1;i:2;}', 'comment_reply', 'a:1:{i:0;i:2;}', 6, 3, '', 'comment/reply/%', 'Reply to comment', 't', '', 4, '', '', '', 0, 'modules/comment/comment.pages.inc'),
('content/js_add_more', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'content_add_more_js', 'a:0:{}', 3, 2, '', 'content/js_add_more', '', 't', '', 4, '', '', '', 0, 'sites/all/modules/contrib/cck/includes/content.node_form.inc'),
('devel/cache/clear', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_cache_clear', 'a:0:{}', 7, 3, '', 'devel/cache/clear', 'Empty cache', 't', '', 6, '', 'Clear the CSS cache and all database cache tables which store page, node, theme and variable caches.', '', 0, ''),
('devel/elements', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_elements_page', 'a:0:{}', 3, 2, '', 'devel/elements', 'Hook_elements()', 't', '', 6, '', 'View the active form/render elements for this site.', '', 0, ''),
('devel/menu/reset', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'drupal_get_form', 'a:1:{i:0;s:18:"devel_menu_rebuild";}', 7, 3, '', 'devel/menu/reset', 'Rebuild menus', 't', '', 6, '', 'Rebuild menu based on hook_menu() and revert any custom changes. All menu items return to their default settings.', '', 0, ''),
('devel/php', '', '', 'user_access', 'a:1:{i:0;s:16:"execute php code";}', 'drupal_get_form', 'a:1:{i:0;s:18:"devel_execute_form";}', 3, 2, '', 'devel/php', 'Execute PHP Code', 't', '', 6, '', 'Execute some PHP code', '', 0, ''),
('devel/phpinfo', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_phpinfo', 'a:0:{}', 3, 2, '', 'devel/phpinfo', 'PHPinfo()', 't', '', 6, '', 'View your server''s PHP configuration', '', 0, ''),
('devel/queries', '', '', 'devel_menu_access_store_queries', 'a:0:{}', 'devel_queries', 'a:0:{}', 3, 2, '', 'devel/queries', 'Database queries', 't', '', 6, '', '', '', 0, ''),
('devel/queries/empty', '', '', 'devel_menu_access_store_queries', 'a:0:{}', 'devel_queries_empty', 'a:0:{}', 7, 3, '', 'devel/queries/empty', 'Empty database queries', 't', '', 6, '', '', '', 0, ''),
('devel/reference', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_function_reference', 'a:0:{}', 3, 2, '', 'devel/reference', 'Function reference', 't', '', 6, '', 'View a list of currently defined user functions with documentation links.', '', 0, ''),
('devel/reinstall', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'drupal_get_form', 'a:1:{i:0;s:15:"devel_reinstall";}', 3, 2, '', 'devel/reinstall', 'Reinstall modules', 't', '', 6, '', 'Run hook_uninstall() and then hook_install() for a given module.', '', 0, ''),
('devel/session', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_session', 'a:0:{}', 3, 2, '', 'devel/session', 'Session viewer', 't', '', 6, '', 'List the contents of $_SESSION.', '', 0, ''),
('devel/switch', '', '', '_devel_switch_user_access', 'a:1:{i:0;i:2;}', 'devel_switch_user', 'a:0:{}', 3, 2, '', 'devel/switch', 'Switch user', 't', '', 4, '', '', '', 0, ''),
('devel/theme/registry', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_theme_registry', 'a:0:{}', 7, 3, '', 'devel/theme/registry', 'Theme registry', 't', '', 6, '', 'View a list of available theme functions across the whole site.', '', 0, ''),
('devel/variable', '', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_variable_page', 'a:0:{}', 3, 2, '', 'devel/variable', 'Variable editor', 't', '', 6, '', 'Edit and delete site variables.', '', 0, ''),
('devel/variable/edit/%', 'a:1:{i:3;N;}', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'drupal_get_form', 'a:2:{i:0;s:19:"devel_variable_edit";i:1;i:3;}', 14, 4, '', 'devel/variable/edit/%', 'Variable editor', 't', '', 4, '', '', '', 0, ''),
('filefield/ahah/%/%/%', 'a:3:{i:2;N;i:3;N;i:4;N;}', '', 'filefield_edit_access', 'a:2:{i:0;i:2;i:1;i:3;}', 'filefield_js', 'a:3:{i:0;i:2;i:1;i:3;i:2;i:4;}', 24, 5, '', 'filefield/ahah/%/%/%', '', 't', '', 4, '', '', '', 0, ''),
('filefield/progress', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'filefield_progress', 'a:0:{}', 3, 2, '', 'filefield/progress', '', 't', '', 4, '', '', '', 0, ''),
('filter/tips', '', '', '1', 'a:0:{}', 'filter_tips_long', 'a:0:{}', 3, 2, '', 'filter/tips', 'Compose tips', 't', '', 20, '', '', '', 0, 'modules/filter/filter.pages.inc'),
('integrity/tables/create', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'integrity_create_tables', 'a:0:{}', 7, 3, '', 'integrity/tables/create', 'Create Missing Vineyard Tables', 't', '', 4, '', '', '', 0, ''),
('location/autocomplete', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', '_location_autocomplete', 'a:0:{}', 3, 2, '', 'location/autocomplete', '', 't', '', 4, '', '', '', 0, ''),
('location/fetch_provinces', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', '_location_fetch_provinces', 'a:0:{}', 3, 2, '', 'location/fetch_provinces', '', 't', '', 4, '', '', '', 0, ''),
('logout', '', '', 'user_is_logged_in', 'a:0:{}', 'user_logout', 'a:0:{}', 1, 1, '', 'logout', 'Log out', 't', '', 6, '', '', '', 10, 'modules/user/user.pages.inc'),
('node', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'node_page_default', 'a:0:{}', 1, 1, '', 'node', 'Content', 't', '', 4, '', '', '', 0, ''),
('node/%', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:4:"view";i:1;i:1;}', 'node_page_view', 'a:1:{i:0;i:1;}', 2, 2, '', 'node/%', '', 'node_page_title', 'a:1:{i:0;i:1;}', 4, '', '', '', 0, ''),
('node/%/delete', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:6:"delete";i:1;i:1;}', 'drupal_get_form', 'a:2:{i:0;s:19:"node_delete_confirm";i:1;i:1;}', 5, 3, '', 'node/%/delete', 'Delete', 't', '', 4, '', '', '', 1, 'modules/node/node.pages.inc'),
('node/%/devel', 'a:1:{i:1;s:9:"node_load";}', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_load_object', 'a:2:{i:0;i:1;i:1;s:4:"node";}', 5, 3, 'node/%', 'node/%', 'Devel', 't', '', 128, '', '', '', 100, ''),
('node/%/devel/load', 'a:1:{i:1;s:9:"node_load";}', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_load_object', 'a:2:{i:0;i:1;i:1;s:4:"node";}', 11, 4, 'node/%/devel', 'node/%', 'Dev load', 't', '', 136, '', '', '', 0, ''),
('node/%/devel/render', 'a:1:{i:1;s:9:"node_load";}', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_render_object', 'a:2:{i:0;s:4:"node";i:1;i:1;}', 11, 4, 'node/%/devel', 'node/%', 'Dev render', 't', '', 128, '', '', '', 10, ''),
('node/%/edit', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:6:"update";i:1;i:1;}', 'node_page_edit', 'a:1:{i:0;i:1;}', 5, 3, 'node/%', 'node/%', 'Edit', 't', '', 128, '', '', '', 1, 'modules/node/node.pages.inc'),
('node/%/revisions', 'a:1:{i:1;s:9:"node_load";}', '', '_node_revision_access', 'a:1:{i:0;i:1;}', 'node_revision_overview', 'a:1:{i:0;i:1;}', 5, 3, 'node/%', 'node/%', 'Revisions', 't', '', 128, '', '', '', 2, 'modules/node/node.pages.inc'),
('node/%/revisions/%/delete', 'a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}', '', '_node_revision_access', 'a:2:{i:0;i:1;i:1;s:6:"delete";}', 'drupal_get_form', 'a:2:{i:0;s:28:"node_revision_delete_confirm";i:1;i:1;}', 21, 5, '', 'node/%/revisions/%/delete', 'Delete earlier revision', 't', '', 4, '', '', '', 0, 'modules/node/node.pages.inc'),
('node/%/revisions/%/revert', 'a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}', '', '_node_revision_access', 'a:2:{i:0;i:1;i:1;s:6:"update";}', 'drupal_get_form', 'a:2:{i:0;s:28:"node_revision_revert_confirm";i:1;i:1;}', 21, 5, '', 'node/%/revisions/%/revert', 'Revert to earlier revision', 't', '', 4, '', '', '', 0, 'modules/node/node.pages.inc'),
('node/%/revisions/%/view', 'a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}', '', '_node_revision_access', 'a:1:{i:0;i:1;}', 'node_show', 'a:3:{i:0;i:1;i:1;N;i:2;b:1;}', 21, 5, '', 'node/%/revisions/%/view', 'Revisions', 't', '', 4, '', '', '', 0, ''),
('node/%/view', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:4:"view";i:1;i:1;}', 'node_page_view', 'a:1:{i:0;i:1;}', 5, 3, 'node/%', 'node/%', 'View', 't', '', 136, '', '', '', -10, ''),
('node/add', '', '', '_node_add_access', 'a:0:{}', 'node_add_page', 'a:0:{}', 3, 2, '', 'node/add', 'Create content', 't', '', 6, '', '', '', 1, 'modules/node/node.pages.inc'),
('node/add/lair', '', '', 'node_access', 'a:2:{i:0;s:6:"create";i:1;s:4:"lair";}', 'node_add', 'a:1:{i:0;i:2;}', 7, 3, '', 'node/add/lair', 'Lair', 'check_plain', '', 6, '', '', '', 0, 'modules/node/node.pages.inc'),
('node/add/monster', '', '', 'node_access', 'a:2:{i:0;s:6:"create";i:1;s:7:"monster";}', 'node_add', 'a:1:{i:0;i:2;}', 7, 3, '', 'node/add/monster', 'Monster', 'check_plain', '', 6, '', '', '', 0, 'modules/node/node.pages.inc'),
('node/add/page', '', '', 'node_access', 'a:2:{i:0;s:6:"create";i:1;s:4:"page";}', 'node_add', 'a:1:{i:0;i:2;}', 7, 3, '', 'node/add/page', 'Page', 'check_plain', '', 6, '', 'A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site''s initial home page.', '', 0, 'modules/node/node.pages.inc'),
('node/add/story', '', '', 'node_access', 'a:2:{i:0;s:6:"create";i:1;s:5:"story";}', 'node_add', 'a:1:{i:0;i:2;}', 7, 3, '', 'node/add/story', 'Story', 'check_plain', '', 6, '', 'A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site''s initial home page, and provides the ability to post comments.', '', 0, 'modules/node/node.pages.inc'),
('nodereference/autocomplete', '', '', 'nodereference_autocomplete_access', 'a:1:{i:0;i:2;}', 'nodereference_autocomplete', 'a:0:{}', 3, 2, '', 'nodereference/autocomplete', 'Nodereference autocomplete', 't', '', 4, '', '', '', 0, ''),
('rss.xml', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'node_feed', 'a:0:{}', 1, 1, '', 'rss.xml', 'RSS feed', 't', '', 4, '', '', '', 0, ''),
('system/files', '', '', '1', 'a:1:{i:0;s:19:"view uploaded files";}', 'file_download', 'a:0:{}', 3, 2, '', 'system/files', 'File download', 't', '', 4, '', '', '', 0, ''),
('taxonomy/autocomplete', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'taxonomy_autocomplete', 'a:0:{}', 3, 2, '', 'taxonomy/autocomplete', 'Autocomplete taxonomy', 't', '', 4, '', '', '', 0, 'modules/taxonomy/taxonomy.pages.inc'),
('taxonomy/term/%', 'a:1:{i:2;N;}', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'taxonomy_term_page', 'a:1:{i:0;i:2;}', 6, 3, '', 'taxonomy/term/%', 'Taxonomy term', 't', '', 4, '', '', '', 0, 'modules/taxonomy/taxonomy.pages.inc'),
('upload/js', '', '', 'user_access', 'a:1:{i:0;s:12:"upload files";}', 'upload_js', 'a:0:{}', 3, 2, '', 'upload/js', '', 't', '', 4, '', '', '', 0, ''),
('user', '', '', '1', 'a:0:{}', 'user_page', 'a:0:{}', 1, 1, '', 'user', 'User account', 't', '', 4, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/%', 'a:1:{i:1;s:22:"user_uid_optional_load";}', 'a:1:{i:1;s:24:"user_uid_optional_to_arg";}', 'user_view_access', 'a:1:{i:0;i:1;}', 'user_view', 'a:1:{i:0;i:1;}', 2, 2, '', 'user/%', 'My account', 'user_page_title', 'a:1:{i:0;i:1;}', 6, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/%/delete', 'a:1:{i:1;s:9:"user_load";}', '', 'user_delete_access', 'a:1:{i:0;i:1;}', 'drupal_get_form', 'a:2:{i:0;s:19:"user_confirm_delete";i:1;i:1;}', 5, 3, '', 'user/%/delete', 'Delete', 't', '', 4, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/%/devel', 'a:1:{i:1;s:9:"user_load";}', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_load_object', 'a:2:{i:0;i:1;i:1;s:4:"user";}', 5, 3, 'user/%', 'user/%', 'Devel', 't', '', 128, '', '', '', 100, ''),
('user/%/devel/load', 'a:1:{i:1;s:9:"user_load";}', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_load_object', 'a:2:{i:0;i:1;i:1;s:4:"user";}', 11, 4, 'user/%/devel', 'user/%', 'Dev load', 't', '', 136, '', '', '', 0, ''),
('user/%/devel/render', 'a:1:{i:1;s:9:"user_load";}', '', 'user_access', 'a:1:{i:0;s:24:"access devel information";}', 'devel_render_object', 'a:2:{i:0;s:4:"user";i:1;i:1;}', 11, 4, 'user/%/devel', 'user/%', 'Dev render', 't', '', 128, '', '', '', 10, ''),
('user/%/edit', 'a:1:{i:1;a:1:{s:18:"user_category_load";a:2:{i:0;s:4:"%map";i:1;s:6:"%index";}}}', '', 'user_edit_access', 'a:1:{i:0;i:1;}', 'user_edit', 'a:1:{i:0;i:1;}', 5, 3, 'user/%', 'user/%', 'Edit', 't', '', 128, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/%/edit/account', 'a:1:{i:1;a:1:{s:18:"user_category_load";a:2:{i:0;s:4:"%map";i:1;s:6:"%index";}}}', '', 'user_edit_access', 'a:1:{i:0;i:1;}', 'user_edit', 'a:1:{i:0;i:1;}', 11, 4, 'user/%/edit', 'user/%', 'Account', 't', '', 136, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/%/view', 'a:1:{i:1;s:9:"user_load";}', '', 'user_view_access', 'a:1:{i:0;i:1;}', 'user_view', 'a:1:{i:0;i:1;}', 5, 3, 'user/%', 'user/%', 'View', 't', '', 136, '', '', '', -10, 'modules/user/user.pages.inc'),
('user/autocomplete', '', '', 'user_access', 'a:1:{i:0;s:20:"access user profiles";}', 'user_autocomplete', 'a:0:{}', 3, 2, '', 'user/autocomplete', 'User autocomplete', 't', '', 4, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/login', '', '', 'user_is_anonymous', 'a:0:{}', 'user_page', 'a:0:{}', 3, 2, 'user', 'user', 'Log in', 't', '', 136, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/password', '', '', 'user_is_anonymous', 'a:0:{}', 'drupal_get_form', 'a:1:{i:0;s:9:"user_pass";}', 3, 2, 'user', 'user', 'Request new password', 't', '', 128, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/register', '', '', 'user_register_access', 'a:0:{}', 'drupal_get_form', 'a:1:{i:0;s:13:"user_register";}', 3, 2, 'user', 'user', 'Create new account', 't', '', 128, '', '', '', 0, 'modules/user/user.pages.inc'),
('user/reset/%/%/%', 'a:3:{i:2;N;i:3;N;i:4;N;}', '', '1', 'a:0:{}', 'drupal_get_form', 'a:4:{i:0;s:15:"user_pass_reset";i:1;i:2;i:2;i:3;i:3;i:4;}', 24, 5, '', 'user/reset/%/%/%', 'Reset password', 't', '', 4, '', '', '', 0, 'modules/user/user.pages.inc'),
('userreference/autocomplete', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'userreference_autocomplete', 'a:0:{}', 3, 2, '', 'userreference/autocomplete', 'Userreference autocomplete', 't', '', 4, '', '', '', 0, ''),
('vineyard', '', '', '1', 'a:0:{}', 'ground_php_get', 'a:0:{}', 1, 1, '', 'vineyard', 'Ground Get', 't', '', 4, '', '', '', 0, ''),
('vineyard/model.json', '', '', '1', 'a:0:{}', 'ground_php_model', 'a:0:{}', 3, 2, '', 'vineyard/model.json', 'Vineyard Model', 't', '', 4, '', '', '', 0, ''),
('vineyard/update', '', '', 'user_is_logged_in', 'a:0:{}', 'ground_php_update', 'a:0:{}', 3, 2, '', 'vineyard/update', 'Ground Update', 't', '', 4, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE IF NOT EXISTS `node` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(12) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created` int(11) NOT NULL DEFAULT '0',
  `changed` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL DEFAULT '0',
  `promote` int(11) NOT NULL DEFAULT '0',
  `moderate` int(11) NOT NULL DEFAULT '0',
  `sticky` int(11) NOT NULL DEFAULT '0',
  `tnid` int(10) unsigned NOT NULL DEFAULT '0',
  `translate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`),
  UNIQUE KEY `vid` (`vid`),
  KEY `node_changed` (`changed`),
  KEY `node_created` (`created`),
  KEY `node_moderate` (`moderate`),
  KEY `node_promote_status` (`promote`,`status`),
  KEY `node_status_type` (`status`,`type`,`nid`),
  KEY `node_title_type` (`title`,`type`(4)),
  KEY `node_type` (`type`(4)),
  KEY `uid` (`uid`),
  KEY `tnid` (`tnid`),
  KEY `translate` (`translate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `node`
--

INSERT INTO `node` (`nid`, `vid`, `type`, `language`, `title`, `uid`, `status`, `created`, `changed`, `comment`, `promote`, `moderate`, `sticky`, `tnid`, `translate`) VALUES
(1, 1, 'monster', '', 'Dragon', 1, 1, 1362434958, 1362589550, 2, 1, 0, 0, 0, 0),
(2, 2, 'monster', '', 'Ogre', 1, 1, 1362435140, 1362589330, 2, 1, 0, 0, 0, 0),
(3, 3, 'lair', '', 'Treasure Cave', 1, 1, 1362589469, 1362589997, 2, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `node_access`
--

CREATE TABLE IF NOT EXISTS `node_access` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `gid` int(10) unsigned NOT NULL DEFAULT '0',
  `realm` varchar(255) NOT NULL DEFAULT '',
  `grant_view` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_update` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_delete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`,`gid`,`realm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_access`
--

INSERT INTO `node_access` (`nid`, `gid`, `realm`, `grant_view`, `grant_update`, `grant_delete`) VALUES
(0, 0, 'all', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `node_comment_statistics`
--

CREATE TABLE IF NOT EXISTS `node_comment_statistics` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_timestamp` int(11) NOT NULL DEFAULT '0',
  `last_comment_name` varchar(60) DEFAULT NULL,
  `last_comment_uid` int(11) NOT NULL DEFAULT '0',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`),
  KEY `node_comment_timestamp` (`last_comment_timestamp`),
  KEY `comment_count` (`comment_count`),
  KEY `last_comment_uid` (`last_comment_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_comment_statistics`
--

INSERT INTO `node_comment_statistics` (`nid`, `last_comment_timestamp`, `last_comment_name`, `last_comment_uid`, `comment_count`) VALUES
(1, 1362434958, NULL, 1, 0),
(2, 1362435140, NULL, 1, 0),
(3, 1362589469, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `node_counter`
--

CREATE TABLE IF NOT EXISTS `node_counter` (
  `nid` int(11) NOT NULL DEFAULT '0',
  `totalcount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `daycount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_revisions`
--

CREATE TABLE IF NOT EXISTS `node_revisions` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `teaser` longtext NOT NULL,
  `log` longtext NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `format` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `node_revisions`
--

INSERT INTO `node_revisions` (`nid`, `vid`, `uid`, `title`, `body`, `teaser`, `log`, `timestamp`, `format`) VALUES
(1, 1, 1, 'Dragon', '', '', '', 1362589550, 1),
(2, 2, 1, 'Ogre', '', '', '', 1362589330, 1),
(3, 3, 1, 'Treasure Cave', '', '', '', 1362589997, 1);

-- --------------------------------------------------------

--
-- Table structure for table `node_type`
--

CREATE TABLE IF NOT EXISTS `node_type` (
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `help` mediumtext NOT NULL,
  `has_title` tinyint(3) unsigned NOT NULL,
  `title_label` varchar(255) NOT NULL DEFAULT '',
  `has_body` tinyint(3) unsigned NOT NULL,
  `body_label` varchar(255) NOT NULL DEFAULT '',
  `min_word_count` smallint(5) unsigned NOT NULL,
  `custom` tinyint(4) NOT NULL DEFAULT '0',
  `modified` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `orig_type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `node_type`
--

INSERT INTO `node_type` (`type`, `name`, `module`, `description`, `help`, `has_title`, `title_label`, `has_body`, `body_label`, `min_word_count`, `custom`, `modified`, `locked`, `orig_type`) VALUES
('lair', 'Lair', 'node', '', '', 1, 'Title', 1, 'Body', 0, 1, 1, 0, ''),
('monster', 'Monster', 'node', '', '', 1, 'Title', 1, 'Body', 0, 1, 1, 0, ''),
('page', 'Page', 'node', 'A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site''s initial home page.', '', 1, 'Title', 1, 'Body', 0, 1, 1, 0, 'page'),
('story', 'Story', 'node', 'A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site''s initial home page, and provides the ability to post comments.', '', 1, 'Title', 1, 'Body', 0, 1, 1, 0, 'story');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `perm` longtext,
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`pid`, `rid`, `perm`, `tid`) VALUES
(1, 1, 'access content', 0),
(2, 2, 'access comments, access content, post comments, post comments without approval', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`rid`, `name`) VALUES
(1, 'anonymous user'),
(2, 'authenticated user');

-- --------------------------------------------------------

--
-- Table structure for table `semaphore`
--

CREATE TABLE IF NOT EXISTS `semaphore` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `expire` double NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `uid` int(10) unsigned NOT NULL,
  `sid` varchar(64) NOT NULL DEFAULT '',
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `cache` int(11) NOT NULL DEFAULT '0',
  `session` longtext,
  PRIMARY KEY (`sid`),
  KEY `timestamp` (`timestamp`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`uid`, `sid`, `hostname`, `timestamp`, `cache`, `session`) VALUES
(0, '0aeph3grps8s6b6h8ttolpgip0', '127.0.0.1', 1362348524, 0, 'messages|a:1:{s:5:"error";a:42:{i:0;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:1;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:2;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:3;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:4;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:5;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:6;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:7;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:8;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:9;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:10;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:11;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:12;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:13;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:14;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:15;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:16;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:17;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:18;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:19;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:20;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:21;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:22;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:23;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:24;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:25;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:26;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:27;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:28;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:29;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:30;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:31;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:32;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:33;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:34;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:35;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:36;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:37;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:38;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:39;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:40;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:41;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";}}'),
(0, '1c5fd82pgpskkkhpg5bqal4mp1', '127.0.0.1', 1362261349, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:259:"warning: Missing argument 2 for Delete::run(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\tests\\Delete_Test.php on line 11 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 8.";}}'),
(0, '2c72joovdngsr1v0jt2l4q9q70', '127.0.0.1', 1362351606, 0, 'messages|a:1:{s:5:"error";a:7:{i:0;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 116.";i:1;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 116.";i:2;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 116.";i:3;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 116.";i:4;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 116.";i:5;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 116.";i:6;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 116.";}}'),
(0, '34r01euj5588jf1s4j2lp2bmn1', '127.0.0.1', 1362348542, 0, 'messages|a:1:{s:5:"error";a:12:{i:0;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:1;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:2;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:3;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:4;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:5;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:6;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:7;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:8;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:9;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:10;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:11;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";}}'),
(0, '453eb0t84elqdi1gda8etapi84', '127.0.0.1', 1362505956, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, '4phmdsf34fp5vl613kioknget5', '127.0.0.1', 1362247646, 0, 'messages|a:1:{s:5:"error";a:7:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:5;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:6;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, '581glrbml7k1akc9c6fvjc5cq6', '127.0.0.1', 1362348764, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, '5ade9omf0f1ac20udv8qq942a4', '127.0.0.1', 1362247208, 0, 'messages|a:1:{s:5:"error";a:3:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, '68adbsmcv8jckjkta30bcrrt12', '127.0.0.1', 1362267963, 0, 'messages|a:1:{s:5:"error";a:3:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";i:1;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";i:2;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, '6pfstacs1snlnd62g9vrdtthc2', '127.0.0.1', 1362532331, 0, 'messages|a:1:{s:5:"error";a:6:{i:0;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:1;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:2;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:3;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:4;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:5;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";}}'),
(1, '716877dfefb4tb3gs96a8g8sg5', '127.0.0.1', 1362589998, 0, 'dblog_overview_filter|a:0:{}node_overview_filter|a:0:{}'),
(0, '7f71kotm31eahspkf4ekmei8k4', '127.0.0.1', 1362254967, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, '7vd66ft4aba5bi4udsdsrgf4d7', '127.0.0.1', 1362247795, 0, 'messages|a:1:{s:5:"error";a:9:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:5;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:6;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:7;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:8;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, '8ib9mtqivkr55ohvepp92g17h0', '127.0.0.1', 1362547189, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, '8qkbq065src0pkf2a2n0jltmj7', '127.0.0.1', 1362508227, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, '8s13jepnc9cb2q3n25g3uboof6', '127.0.0.1', 1362247613, 0, 'messages|a:1:{s:5:"error";a:4:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, '9s0i400fnirdus1npr491vp5u3', '127.0.0.1', 1362351753, 0, 'messages|a:1:{s:5:"error";a:7:{i:0;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:1;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:2;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:3;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:4;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:5;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:6;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";}}'),
(0, 'afh1b3ojk7jnbkv4c3sg58o1f6', '127.0.0.1', 1362508143, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'am1buvp2ktu1pq7n21n5mpsuk0', '127.0.0.1', 1362247493, 0, 'messages|a:1:{s:5:"error";a:5:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'c0929ugkco80b7sbc4s3glaao5', '127.0.0.1', 1362546844, 0, 'messages|a:1:{s:5:"error";a:9:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";i:1;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:2;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:3;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:4;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:5;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:6;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:7;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:8;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";}}'),
(0, 'd1147ud9ogf4qamclf211vq6f3', '127.0.0.1', 1362247748, 0, 'messages|a:1:{s:5:"error";a:9:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:5;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:6;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:7;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:8;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'ei2ej248gve3eqppm4kgm0no10', '127.0.0.1', 1362248027, 0, 'messages|a:1:{s:5:"error";a:9:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:5;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:6;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:7;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:8;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'f153dj9rkj6qp9f5tvvk4jal81', '127.0.0.1', 1362286939, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'fblf1nei2c7v9fr7sb32c21bo2', '127.0.0.1', 1362532343, 0, 'messages|a:1:{s:5:"error";a:6:{i:0;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:1;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:2;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:3;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:4;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:5;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";}}'),
(0, 'fim3vsuj21ks14c068fiqoljt7', '127.0.0.1', 1362261359, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:259:"warning: Missing argument 2 for Delete::run(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\tests\\Delete_Test.php on line 11 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 8.";}}'),
(0, 'g00bo3cpra52ro75sck5vvpgd3', '127.0.0.1', 1362268609, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'h8hma8gnl602gsgrspq70uafd2', '127.0.0.1', 1362247421, 0, 'messages|a:1:{s:5:"error";a:5:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'h9u33703bsccoh6vlbot25h7m3', '127.0.0.1', 1362348394, 0, 'messages|a:1:{s:5:"error";a:42:{i:0;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:1;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:2;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:3;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:4;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:5;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:6;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:7;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:8;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:9;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:10;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:11;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:12;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:13;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:14;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:15;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:16;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:17;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:18;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:19;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:20;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:21;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:22;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:23;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:24;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:25;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:26;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:27;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:28;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:29;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:30;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:31;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:32;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:33;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:34;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:35;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:36;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:37;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:38;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:39;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:40;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:41;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";}}'),
(0, 'jm4evugtmbksmsptchrjonh836', '127.0.0.1', 1362348164, 0, 'messages|a:1:{s:5:"error";a:6:{i:0;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:1;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:2;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:3;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";i:4;s:191:"warning: file_get_contents(/property_types.json): failed to open stream: No such file or directory in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 155.";i:5;s:141:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Ground.inc on line 158.";}}'),
(0, 'kdj3ucalkrl6ulolpojmmb8rb0', '127.0.0.1', 1362268525, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'ld9m6kdipm528cuj4en48u1404', '127.0.0.1', 1362268754, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'mb63e0t9icdrcilp4pn6jckr45', '127.0.0.1', 1362268707, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'mg34hjgvg4224rgn1pjihah1v5', '127.0.0.1', 1362261318, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:259:"warning: Missing argument 2 for Delete::run(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\tests\\Delete_Test.php on line 11 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 8.";}}'),
(0, 'mn5ht0h7bbe6f3ph6pjt720pt1', '127.0.0.1', 1362351783, 0, 'messages|a:1:{s:5:"error";a:7:{i:0;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:1;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:2;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:3;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:4;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:5;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:6;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";}}'),
(0, 'n342olg69n4606l1ive7e5l5b7', '127.0.0.1', 1362247172, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'n54kk56pshcnv0bc1qmh0mgnb1', '127.0.0.1', 1362247551, 0, 'messages|a:1:{s:5:"error";a:7:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:5;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:6;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'n9t8hdssgb74e7oi8ufgnb0re0', '127.0.0.1', 1362351690, 0, 'messages|a:1:{s:5:"error";a:14:{i:0;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:1;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 117.";i:2;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:3;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 117.";i:4;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:5;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 117.";i:6;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:7;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 117.";i:8;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:9;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 117.";i:10;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:11;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 117.";i:12;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";i:13;s:183:"warning: mysql_num_rows() expects parameter 1 to be resource, array given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 117.";}}'),
(0, 'np6pa3scujuldrvfg11vbaakm4', '127.0.0.1', 1362348696, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'nt2scr1mabsokjog3847su6dp6', '127.0.0.1', 1362506043, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'ogshk6irf8k70v8a6918u3kff6', '127.0.0.1', 1362247239, 0, 'messages|a:1:{s:5:"error";a:3:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(1, 'p7pd3dpcac9f7nrphkv09rua64', '127.0.0.1', 1362436973, 0, '');
INSERT INTO `sessions` (`uid`, `sid`, `hostname`, `timestamp`, `cache`, `session`) VALUES
(0, 'pppurh4m03tkr93a0k0mha8q64', '127.0.0.1', 1362268550, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'qg16nmdolv08rsr0o7e0hqb154', '127.0.0.1', 1362546504, 0, 'messages|a:1:{s:5:"error";a:6:{i:0;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:1;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:2;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:3;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:4;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:5;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";}}'),
(0, 'r6pmmkqtd9d90q76bi4fv5beh1', '127.0.0.1', 1362349100, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'sblbjgn9kl471skk2u6bvkeji7', '127.0.0.1', 1362546669, 0, 'messages|a:1:{s:5:"error";a:6:{i:0;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:1;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:2;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:3;s:265:"warning: Missing argument 2 for Trellis::__construct(), called in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Link_Trellis.inc on line 17 and defined in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 175.";i:4;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";i:5;s:165:"warning: array_key_exists() expects parameter 2 to be array, null given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Trellis.inc on line 125.";}}'),
(0, 'sd83376d16khl9j2dqb5acfov3', '127.0.0.1', 1362247275, 0, 'messages|a:1:{s:5:"error";a:5:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 't3uvm3nr79qq1kdld1qgtfp914', '127.0.0.1', 1362268781, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 't41fedbk6qud4cc8urkjf4nhp0', '127.0.0.1', 1362351737, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:208:"warning: preg_replace(): Compilation failed: missing terminating ] for character class at offset 4 in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Table.inc on line 115.";}}'),
(0, 't7jtd2fe4a898n6hsmaiq2p6d1', '127.0.0.1', 1362348826, 0, 'messages|a:1:{s:5:"error";a:1:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'td5nqo71c9mdrbfkfft79rj3o3', '127.0.0.1', 1362261827, 0, 'messages|a:1:{s:5:"error";a:2:{i:0;s:197:"warning: PDOStatement::execute() expects parameter 1 to be array, string given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Ground_Database.inc on line 77.";i:1;s:197:"warning: PDOStatement::execute() expects parameter 1 to be array, string given in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\modules\\ground_db\\inc\\Ground_Database.inc on line 77.";}}'),
(0, 'thlfpqkgcmu5ea3b7uub8rh7g3', '127.0.0.1', 1362247949, 0, 'messages|a:1:{s:5:"error";a:2:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'tp1722th2nucknrpgsfhcde901', '127.0.0.1', 1362268165, 0, 'messages|a:1:{s:5:"error";a:3:{i:0;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";i:1;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";i:2;s:140:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\inc\\Delete.inc on line 20.";}}'),
(0, 'tpqgdtnem3uej956ga52svk856', '127.0.0.1', 1362247968, 0, 'messages|a:1:{s:5:"error";a:9:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:5;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:6;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:7;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:8;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}'),
(0, 'vv8g3dm9dlg4ddg5igih6gvf10', '127.0.0.1', 1362247695, 0, 'messages|a:1:{s:5:"error";a:9:{i:0;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:1;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:2;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:3;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:4;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:5;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:6;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:7;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";i:8;s:148:"warning: Invalid argument supplied for foreach() in E:\\Websites\\ground_drupal\\sites\\all\\modules\\custom\\ground_php\\test\\Ground_Fixture.inc on line 6.";}}');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE IF NOT EXISTS `system` (
  `filename` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `owner` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `throttle` tinyint(4) NOT NULL DEFAULT '0',
  `bootstrap` int(11) NOT NULL DEFAULT '0',
  `schema_version` smallint(6) NOT NULL DEFAULT '-1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `info` text,
  PRIMARY KEY (`filename`),
  KEY `modules` (`type`(12),`status`,`weight`,`filename`),
  KEY `bootstrap` (`type`(12),`status`,`bootstrap`,`weight`,`filename`),
  KEY `type_name` (`type`(12),`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`filename`, `name`, `type`, `owner`, `status`, `throttle`, `bootstrap`, `schema_version`, `weight`, `info`) VALUES
('modules/aggregator/aggregator.module', 'aggregator', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:10:"Aggregator";s:11:"description";s:57:"Aggregates syndicated content (RSS, RDF, and Atom feeds).";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/block/block.module', 'block', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:5:"Block";s:11:"description";s:62:"Controls the boxes that are displayed around the main content.";s:7:"package";s:15:"Core - required";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/blog/blog.module', 'blog', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:4:"Blog";s:11:"description";s:69:"Enables keeping easily and regularly updated user web pages or blogs.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/blogapi/blogapi.module', 'blogapi', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:8:"Blog API";s:11:"description";s:79:"Allows users to post content using applications that support XML-RPC blog APIs.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/book/book.module', 'book', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:4:"Book";s:11:"description";s:63:"Allows users to structure site pages in a hierarchy or outline.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/color/color.module', 'color', 'module', '', 1, 0, 0, 6001, 0, 'a:10:{s:4:"name";s:5:"Color";s:11:"description";s:61:"Allows the user to change the color scheme of certain themes.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/comment/comment.module', 'comment', 'module', '', 1, 0, 0, 6005, 0, 'a:10:{s:4:"name";s:7:"Comment";s:11:"description";s:57:"Allows users to comment on and discuss published content.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/contact/contact.module', 'contact', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:7:"Contact";s:11:"description";s:61:"Enables the use of both personal and site-wide contact forms.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/dblog/dblog.module', 'dblog', 'module', '', 1, 0, 0, 6000, 0, 'a:10:{s:4:"name";s:16:"Database logging";s:11:"description";s:47:"Logs and records system events to the database.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/filter/filter.module', 'filter', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:6:"Filter";s:11:"description";s:60:"Handles the filtering of content in preparation for display.";s:7:"package";s:15:"Core - required";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/forum/forum.module', 'forum', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:5:"Forum";s:11:"description";s:50:"Enables threaded discussions about general topics.";s:12:"dependencies";a:2:{i:0;s:8:"taxonomy";i:1;s:7:"comment";}s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/help/help.module', 'help', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:4:"Help";s:11:"description";s:35:"Manages the display of online help.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/locale/locale.module', 'locale', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:6:"Locale";s:11:"description";s:119:"Adds language handling functionality and enables the translation of the user interface to languages other than English.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/menu/menu.module', 'menu', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:4:"Menu";s:11:"description";s:60:"Allows administrators to customize the site navigation menu.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/node/node.module', 'node', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:4:"Node";s:11:"description";s:66:"Allows content to be submitted to the site and displayed on pages.";s:7:"package";s:15:"Core - required";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/openid/openid.module', 'openid', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:6:"OpenID";s:11:"description";s:48:"Allows users to log into your site using OpenID.";s:7:"version";s:4:"6.28";s:7:"package";s:15:"Core - optional";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/path/path.module', 'path', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:4:"Path";s:11:"description";s:28:"Allows users to rename URLs.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/php/php.module', 'php', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:10:"PHP filter";s:11:"description";s:50:"Allows embedded PHP code/snippets to be evaluated.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/ping/ping.module', 'ping', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:4:"Ping";s:11:"description";s:51:"Alerts other sites when your site has been updated.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/poll/poll.module', 'poll', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:4:"Poll";s:11:"description";s:95:"Allows your site to capture votes on different topics in the form of multiple choice questions.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/profile/profile.module', 'profile', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:7:"Profile";s:11:"description";s:36:"Supports configurable user profiles.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/search/search.module', 'search', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:6:"Search";s:11:"description";s:36:"Enables site-wide keyword searching.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/statistics/statistics.module', 'statistics', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:10:"Statistics";s:11:"description";s:37:"Logs access statistics for your site.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/syslog/syslog.module', 'syslog', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:6:"Syslog";s:11:"description";s:41:"Logs and records system events to syslog.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/system/system.module', 'system', 'module', '', 1, 0, 0, 6055, 0, 'a:10:{s:4:"name";s:6:"System";s:11:"description";s:54:"Handles general site configuration for administrators.";s:7:"package";s:15:"Core - required";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/taxonomy/taxonomy.module', 'taxonomy', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:8:"Taxonomy";s:11:"description";s:38:"Enables the categorization of content.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/throttle/throttle.module', 'throttle', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:8:"Throttle";s:11:"description";s:66:"Handles the auto-throttling mechanism, to control site congestion.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/tracker/tracker.module', 'tracker', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:7:"Tracker";s:11:"description";s:43:"Enables tracking of recent posts for users.";s:12:"dependencies";a:1:{i:0;s:7:"comment";}s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/translation/translation.module', 'translation', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:19:"Content translation";s:11:"description";s:57:"Allows content to be translated into different languages.";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/trigger/trigger.module', 'trigger', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:7:"Trigger";s:11:"description";s:90:"Enables actions to be fired on certain system events, such as when new content is created.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/update/update.module', 'update', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:13:"Update status";s:11:"description";s:88:"Checks the status of available updates for Drupal and your installed modules and themes.";s:7:"version";s:4:"6.28";s:7:"package";s:15:"Core - optional";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/upload/upload.module', 'upload', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:6:"Upload";s:11:"description";s:51:"Allows users to upload and attach files to content.";s:7:"package";s:15:"Core - optional";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('modules/user/user.module', 'user', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:4:"User";s:11:"description";s:47:"Manages the user registration and login system.";s:7:"package";s:15:"Core - required";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/autoload/autoload.module', 'autoload', 'module', '', 1, 0, 1, 6200, -100, 'a:9:{s:4:"name";s:8:"Autoload";s:11:"description";s:46:"Helper module to autoload classes under PHP 5.";s:3:"php";s:5:"5.1.2";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.1";s:7:"project";s:8:"autoload";s:9:"datestamp";s:10:"1303486914";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}}'),
('sites/all/modules/contrib/cck/content.module', 'content', 'module', '', 1, 0, 0, 6010, 0, 'a:10:{s:4:"name";s:7:"Content";s:11:"description";s:50:"Allows administrators to define new content types.";s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/content_copy/content_copy.module', 'content_copy', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:12:"Content Copy";s:11:"description";s:51:"Enables ability to import/export field definitions.";s:12:"dependencies";a:1:{i:0;s:7:"content";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/content_permissions/content_permissions.module', 'content_permissions', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:19:"Content Permissions";s:11:"description";s:43:"Set field-level permissions for CCK fields.";s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:12:"dependencies";a:1:{i:0;s:7:"content";}s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/fieldgroup/fieldgroup.module', 'fieldgroup', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:10:"Fieldgroup";s:11:"description";s:37:"Create display groups for CCK fields.";s:12:"dependencies";a:1:{i:0;s:7:"content";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/nodereference/nodereference.module', 'nodereference', 'module', '', 1, 0, 0, 6001, 0, 'a:10:{s:4:"name";s:14:"Node Reference";s:11:"description";s:59:"Defines a field type for referencing one node from another.";s:12:"dependencies";a:3:{i:0;s:7:"content";i:1;s:4:"text";i:2;s:13:"optionwidgets";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/number/number.module', 'number', 'module', '', 1, 0, 0, 6000, 0, 'a:10:{s:4:"name";s:6:"Number";s:11:"description";s:28:"Defines numeric field types.";s:12:"dependencies";a:1:{i:0;s:7:"content";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/optionwidgets/optionwidgets.module', 'optionwidgets', 'module', '', 1, 0, 0, 6001, 0, 'a:10:{s:4:"name";s:14:"Option Widgets";s:11:"description";s:82:"Defines selection, check box and radio button widgets for text and numeric fields.";s:12:"dependencies";a:1:{i:0;s:7:"content";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/text/text.module', 'text', 'module', '', 1, 0, 0, 6003, 0, 'a:10:{s:4:"name";s:4:"Text";s:11:"description";s:32:"Defines simple text field types.";s:12:"dependencies";a:1:{i:0;s:7:"content";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/cck/modules/userreference/userreference.module', 'userreference', 'module', '', 1, 0, 0, 6002, 0, 'a:10:{s:4:"name";s:14:"User Reference";s:11:"description";s:56:"Defines a field type for referencing a user from a node.";s:12:"dependencies";a:3:{i:0;s:7:"content";i:1;s:4:"text";i:2;s:13:"optionwidgets";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-2.9";s:7:"project";s:3:"cck";s:9:"datestamp";s:10:"1294407979";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/devel/devel.module', 'devel', 'module', '', 1, 0, 1, 6003, 88, 'a:10:{s:4:"name";s:5:"Devel";s:11:"description";s:52:"Various blocks, pages, and functions for developers.";s:7:"package";s:11:"Development";s:12:"dependencies";a:1:{i:0;s:4:"menu";}s:4:"core";s:3:"6.x";s:7:"version";s:8:"6.x-1.27";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1338940278";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/devel/devel_generate.module', 'devel_generate', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:14:"Devel generate";s:11:"description";s:48:"Generate dummy users, nodes, and taxonomy terms.";s:7:"package";s:11:"Development";s:4:"core";s:3:"6.x";s:7:"version";s:8:"6.x-1.27";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1338940278";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/devel/devel_node_access.module', 'devel_node_access', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:17:"Devel node access";s:11:"description";s:67:"Developer block and page illustrating relevant node_access records.";s:7:"package";s:11:"Development";s:4:"core";s:3:"6.x";s:7:"version";s:8:"6.x-1.27";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1338940278";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/filefield/filefield.module', 'filefield', 'module', '', 1, 0, 0, 6104, 0, 'a:10:{s:4:"name";s:9:"FileField";s:11:"description";s:26:"Defines a file field type.";s:12:"dependencies";a:1:{i:0;s:7:"content";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:3:"php";s:3:"5.0";s:7:"version";s:8:"6.x-3.10";s:7:"project";s:9:"filefield";s:9:"datestamp";s:10:"1303970816";s:10:"dependents";a:0:{}}'),
('sites/all/modules/contrib/filefield/filefield_meta/filefield_meta.module', 'filefield_meta', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:14:"FileField Meta";s:11:"description";s:48:"Add metadata gathering and storage to FileField.";s:12:"dependencies";a:2:{i:0;s:9:"filefield";i:1;s:6:"getid3";}s:7:"package";s:3:"CCK";s:4:"core";s:3:"6.x";s:3:"php";s:3:"5.0";s:7:"version";s:8:"6.x-3.10";s:7:"project";s:9:"filefield";s:9:"datestamp";s:10:"1303970816";s:10:"dependents";a:0:{}}'),
('sites/all/modules/contrib/imagefield/imagefield.module', 'imagefield', 'module', '', 1, 0, 0, 6006, 0, 'a:10:{s:4:"name";s:10:"ImageField";s:11:"description";s:28:"Defines an image field type.";s:4:"core";s:3:"6.x";s:12:"dependencies";a:2:{i:0;s:7:"content";i:1;s:9:"filefield";}s:7:"package";s:3:"CCK";s:7:"version";s:8:"6.x-3.10";s:7:"project";s:10:"imagefield";s:9:"datestamp";s:10:"1303971115";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/contrib/location_addanother/location_addanother.module', 'location_addanother', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:20:"Location Add Another";s:11:"description";s:94:"Allows you to quickly add locations directly from a node without having to click ''edit'' first.";s:12:"dependencies";a:2:{i:0;s:8:"location";i:1;s:13:"location_node";}s:7:"package";s:8:"Location";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/contrib/location_cck/location_cck.module', 'location_cck', 'module', '', 1, 0, 0, 6301, 0, 'a:10:{s:4:"name";s:12:"Location CCK";s:11:"description";s:30:"Defines a Location field type.";s:4:"core";s:3:"6.x";s:7:"package";s:3:"CCK";s:12:"dependencies";a:2:{i:0;s:8:"location";i:1;s:7:"content";}s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/contrib/location_fax/location_fax.module', 'location_fax', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:12:"Location Fax";s:7:"package";s:8:"Location";s:11:"description";s:45:"Allows you to add a fax number to a location.";s:12:"dependencies";a:1:{i:0;s:8:"location";}s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/contrib/location_generate/location_generate.module', 'location_generate', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:17:"Location Generate";s:11:"description";s:52:"Bulk assign random latitude and longitudes to nodes.";s:7:"package";s:11:"Development";s:4:"core";s:3:"6.x";s:12:"dependencies";a:2:{i:0;s:14:"devel_generate";i:1;s:8:"location";}s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/contrib/location_phone/location_phone.module', 'location_phone', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:14:"Location Phone";s:7:"package";s:8:"Location";s:11:"description";s:47:"Allows you to add a phone number to a location.";s:12:"dependencies";a:1:{i:0;s:8:"location";}s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/contrib/location_search/location_search.module', 'location_search', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:15:"Location Search";s:7:"package";s:8:"Location";s:11:"description";s:35:"Advanced search page for locations.";s:4:"core";s:3:"6.x";s:12:"dependencies";a:2:{i:0;s:6:"search";i:1;s:8:"location";}s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/contrib/location_taxonomy/location_taxonomy.module', 'location_taxonomy', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:17:"Location Taxonomy";s:11:"description";s:40:"Associate locations with taxonomy terms.";s:12:"dependencies";a:2:{i:0;s:8:"location";i:1;s:8:"taxonomy";}s:7:"package";s:8:"Location";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/location.module', 'location', 'module', '', 1, 0, 0, 6309, 0, 'a:10:{s:4:"name";s:8:"Location";s:7:"package";s:8:"Location";s:11:"description";s:213:"The location module allows you to associate a geographic location with content and users. Users can do proximity searches by postal code.  This is useful for organizing communities that have a geographic presence.";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/location_node.module', 'location_node', 'module', '', 1, 0, 0, 0, 0, 'a:10:{s:4:"name";s:14:"Node Locations";s:11:"description";s:31:"Associate locations with nodes.";s:12:"dependencies";a:1:{i:0;s:8:"location";}s:7:"package";s:8:"Location";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/contrib/location/location_user.module', 'location_user', 'module', '', 0, 0, 0, -1, 0, 'a:10:{s:4:"name";s:14:"User Locations";s:11:"description";s:31:"Associate locations with users.";s:12:"dependencies";a:1:{i:0;s:8:"location";}s:7:"package";s:8:"Location";s:4:"core";s:3:"6.x";s:7:"version";s:7:"6.x-3.2";s:7:"project";s:8:"location";s:9:"datestamp";s:10:"1343220789";s:10:"dependents";a:0:{}s:3:"php";s:5:"4.3.5";}'),
('sites/all/modules/custom/admin/admin.module', 'admin', 'module', '', 1, 0, 0, 6202, 1, 'a:10:{s:4:"name";s:5:"Admin";s:11:"description";s:42:"UI helpers for Drupal admins and managers.";s:7:"package";s:14:"Administration";s:4:"core";s:3:"6.x";s:3:"php";s:5:"5.1.0";s:7:"version";s:11:"6.x-2.x-dev";s:7:"project";s:5:"admin";s:9:"datestamp";s:10:"1305720134";s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}}'),
('sites/all/modules/custom/ground_php/ground_php.module', 'ground_php', 'module', '', 1, 0, 0, 0, 0, 'a:9:{s:4:"name";s:10:"Ground PHP";s:11:"description";s:33:"Lightweight ORM/service for Bloom";s:4:"core";s:3:"6.x";s:7:"package";s:10:"Silent Orb";s:3:"php";s:3:"5.2";s:5:"files";a:11:{i:0;s:18:"inc/Object_Map.inc";i:1;s:14:"inc/Delete.inc";i:2;s:21:"inc/Dynamic_Query.inc";i:3;s:20:"inc/Link_Trellis.inc";i:4;s:13:"inc/Query.inc";i:5;s:14:"inc/Update.inc";i:6;s:15:"inc/Trellis.inc";i:7;s:14:"inc/Ground.inc";i:8;s:21:"inc/Ground_Module.inc";i:9;s:18:"inc/Node_Query.inc";i:10;s:16:"test/Fixture.inc";}s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:7:"version";N;}'),
('sites/all/modules/custom/ground_php/modules/ground_db/ground_db.module', 'ground_db', 'module', '', 1, 0, 0, 0, 0, 'a:9:{s:4:"name";s:9:"Ground DB";s:11:"description";s:31:"General Database Management API";s:4:"core";s:3:"6.x";s:7:"package";s:10:"Silent Orb";s:3:"php";s:3:"5.3";s:5:"files";a:2:{i:0;s:23:"inc/Ground_Database.inc";i:1;s:13:"inc/Table.inc";}s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:7:"version";N;}'),
('sites/all/modules/custom/ground_php/modules/ground_drupal/ground_drupal.module', 'ground_drupal', 'module', '', 1, 0, 0, 0, 0, 'a:9:{s:4:"name";s:13:"Ground Drupal";s:11:"description";s:83:"Integration of Ground with Drupal''s database objects, particularly nodes and users.";s:4:"core";s:3:"6.x";s:7:"package";s:10:"Silent Orb";s:3:"php";s:3:"5.3";s:5:"files";a:4:{i:0;s:21:"inc/Ground_Drupal.inc";i:1;s:11:"inc/CCK.inc";i:2;s:16:"inc/CCK_Link.inc";i:3;s:21:"inc/Content_Query.inc";}s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:7:"version";N;}'),
('sites/all/modules/custom/ground_php/modules/ground_history/ground_history.module', 'ground_history', 'module', '', 1, 0, 0, 0, 0, 'a:9:{s:4:"name";s:14:"Ground History";s:11:"description";s:29:"History Module for Ground PHP";s:4:"core";s:3:"6.x";s:7:"package";s:10:"Silent Orb";s:3:"php";s:3:"5.3";s:5:"files";a:4:{i:0;s:15:"inc/History.inc";i:1;s:22:"inc/History_Commit.inc";i:2;s:22:"inc/History_Update.inc";i:3;s:22:"inc/History_Object.inc";}s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:7:"version";N;}'),
('sites/all/modules/custom/ground_php/modules/integrity/integrity.module', 'integrity', 'module', '', 1, 0, 0, 0, 0, 'a:9:{s:4:"name";s:9:"Integrity";s:11:"description";s:77:"A collection of Ground functions for ensuring the integrity of your database.";s:4:"core";s:3:"6.x";s:7:"package";s:10:"Silent Orb";s:3:"php";s:3:"5.3";s:5:"files";a:1:{i:0;s:17:"inc/Integrity.inc";}s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:7:"version";N;}'),
('sites/all/modules/custom/ground_php/modules/integrity_drupal/integrity_drupal.module', 'integrity_drupal', 'module', '', 0, 0, 0, -1, 0, 'a:9:{s:4:"name";s:9:"Integrity";s:11:"description";s:39:"Drupal specific extensions to Integrity";s:4:"core";s:3:"6.x";s:7:"package";s:10:"Silent Orb";s:3:"php";s:3:"5.3";s:5:"files";a:1:{i:0;s:24:"inc/Integrity_Drupal.inc";}s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:7:"version";N;}'),
('sites/all/modules/custom/metahub/metahub.module', 'metahub', 'module', '', 1, 0, 0, 0, 0, 'a:9:{s:4:"name";s:7:"MetaHub";s:11:"description";s:27:"Relational object framework";s:4:"core";s:3:"6.x";s:7:"package";s:10:"Silent Orb";s:3:"php";s:3:"5.3";s:5:"files";a:1:{i:0;s:19:"inc/Meta_Object.inc";}s:12:"dependencies";a:0:{}s:10:"dependents";a:0:{}s:7:"version";N;}'),
('themes/bluemarine/bluemarine.info', 'bluemarine', 'theme', 'themes/engines/phptemplate/phptemplate.engine', 0, 0, 0, -1, 0, 'a:13:{s:4:"name";s:10:"Bluemarine";s:11:"description";s:66:"Table-based multi-column theme with a marine and ash color scheme.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/bluemarine/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:27:"themes/bluemarine/script.js";}s:10:"screenshot";s:32:"themes/bluemarine/screenshot.png";s:3:"php";s:5:"4.3.5";}'),
('themes/chameleon/chameleon.info', 'chameleon', 'theme', 'themes/chameleon/chameleon.theme', 0, 0, 0, -1, 0, 'a:12:{s:4:"name";s:9:"Chameleon";s:11:"description";s:42:"Minimalist tabled theme with light colors.";s:7:"regions";a:2:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";}s:8:"features";a:4:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";}s:11:"stylesheets";a:1:{s:3:"all";a:2:{s:9:"style.css";s:26:"themes/chameleon/style.css";s:10:"common.css";s:27:"themes/chameleon/common.css";}}s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"scripts";a:1:{s:9:"script.js";s:26:"themes/chameleon/script.js";}s:10:"screenshot";s:31:"themes/chameleon/screenshot.png";s:3:"php";s:5:"4.3.5";}'),
('themes/chameleon/marvin/marvin.info', 'marvin', 'theme', '', 0, 0, 0, -1, 0, 'a:13:{s:4:"name";s:6:"Marvin";s:11:"description";s:31:"Boxy tabled theme in all grays.";s:7:"regions";a:2:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";}s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:10:"base theme";s:9:"chameleon";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:33:"themes/chameleon/marvin/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:33:"themes/chameleon/marvin/script.js";}s:10:"screenshot";s:38:"themes/chameleon/marvin/screenshot.png";s:3:"php";s:5:"4.3.5";}'),
('themes/garland/garland.info', 'garland', 'theme', 'themes/engines/phptemplate/phptemplate.engine', 1, 0, 0, -1, 0, 'a:13:{s:4:"name";s:7:"Garland";s:11:"description";s:66:"Tableless, recolorable, multi-column, fluid width theme (default).";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:7:"scripts";a:1:{s:9:"script.js";s:24:"themes/garland/script.js";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"4.3.5";}'),
('themes/garland/minnelli/minnelli.info', 'minnelli', 'theme', 'themes/engines/phptemplate/phptemplate.engine', 0, 0, 0, -1, 0, 'a:14:{s:4:"name";s:8:"Minnelli";s:11:"description";s:56:"Tableless, recolorable, multi-column, fixed width theme.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:10:"base theme";s:7:"garland";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:12:"minnelli.css";s:36:"themes/garland/minnelli/minnelli.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:7:"scripts";a:1:{s:9:"script.js";s:33:"themes/garland/minnelli/script.js";}s:10:"screenshot";s:38:"themes/garland/minnelli/screenshot.png";s:3:"php";s:5:"4.3.5";s:6:"engine";s:11:"phptemplate";}'),
('themes/pushbutton/pushbutton.info', 'pushbutton', 'theme', 'themes/engines/phptemplate/phptemplate.engine', 0, 0, 0, -1, 0, 'a:13:{s:4:"name";s:10:"Pushbutton";s:11:"description";s:52:"Tabled, multi-column theme in blue and orange tones.";s:7:"version";s:4:"6.28";s:4:"core";s:3:"6.x";s:6:"engine";s:11:"phptemplate";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1358370963";s:7:"regions";a:5:{s:4:"left";s:12:"Left sidebar";s:5:"right";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";}s:8:"features";a:10:{i:0;s:20:"comment_user_picture";i:1;s:7:"favicon";i:2;s:7:"mission";i:3;s:4:"logo";i:4;s:4:"name";i:5;s:17:"node_user_picture";i:6;s:6:"search";i:7;s:6:"slogan";i:8;s:13:"primary_links";i:9;s:15:"secondary_links";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"style.css";s:27:"themes/pushbutton/style.css";}}s:7:"scripts";a:1:{s:9:"script.js";s:27:"themes/pushbutton/script.js";}s:10:"screenshot";s:32:"themes/pushbutton/screenshot.png";s:3:"php";s:5:"4.3.5";}');

-- --------------------------------------------------------

--
-- Table structure for table `term_data`
--

CREATE TABLE IF NOT EXISTS `term_data` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `taxonomy_tree` (`vid`,`weight`,`name`),
  KEY `vid_name` (`vid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `term_hierarchy`
--

CREATE TABLE IF NOT EXISTS `term_hierarchy` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`parent`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `term_node`
--

CREATE TABLE IF NOT EXISTS `term_node` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`vid`),
  KEY `vid` (`vid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `term_relation`
--

CREATE TABLE IF NOT EXISTS `term_relation` (
  `trid` int(11) NOT NULL AUTO_INCREMENT,
  `tid1` int(10) unsigned NOT NULL DEFAULT '0',
  `tid2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`trid`),
  UNIQUE KEY `tid1_tid2` (`tid1`,`tid2`),
  KEY `tid2` (`tid2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `term_synonym`
--

CREATE TABLE IF NOT EXISTS `term_synonym` (
  `tsid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tsid`),
  KEY `tid` (`tid`),
  KEY `name_tid` (`name`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `list` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`,`fid`),
  KEY `fid` (`fid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(128) NOT NULL DEFAULT '',
  `dst` varchar(128) NOT NULL DEFAULT '',
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `dst_language_pid` (`dst`,`language`,`pid`),
  KEY `src_language_pid` (`src`,`language`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `pass` varchar(32) NOT NULL DEFAULT '',
  `mail` varchar(64) DEFAULT '',
  `mode` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) DEFAULT '0',
  `threshold` tinyint(4) DEFAULT '0',
  `theme` varchar(255) NOT NULL DEFAULT '',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `signature_format` smallint(6) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(8) DEFAULT NULL,
  `language` varchar(12) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `init` varchar(64) DEFAULT '',
  `data` longtext,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  KEY `access` (`access`),
  KEY `created` (`created`),
  KEY `mail` (`mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `pass`, `mail`, `mode`, `sort`, `threshold`, `theme`, `signature`, `signature_format`, `created`, `access`, `login`, `status`, `timezone`, `language`, `picture`, `init`, `data`) VALUES
(0, '', '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, NULL, '', '', '', NULL),
(1, 'test', '098f6bcd4621d373cade4e832627b4f6', 'nothing@nowhere.com', 0, 0, 0, '', '', 0, 1358729143, 1362589873, 1362455901, 1, '-25200', '', '', 'christopherwjohnson@gmail.com', 'a:1:{s:13:"form_build_id";s:37:"form-10494efa230d17ec301a329f32252424";}');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `variable`
--

CREATE TABLE IF NOT EXISTS `variable` (
  `name` varchar(128) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variable`
--

INSERT INTO `variable` (`name`, `value`) VALUES
('clean_url', 's:1:"1";'),
('comment_anonymous_lair', 'i:0;'),
('comment_anonymous_monster', 'i:0;'),
('comment_controls_lair', 's:1:"3";'),
('comment_controls_monster', 's:1:"3";'),
('comment_default_mode_lair', 's:1:"4";'),
('comment_default_mode_monster', 's:1:"4";'),
('comment_default_order_lair', 's:1:"1";'),
('comment_default_order_monster', 's:1:"1";'),
('comment_default_per_page_lair', 's:2:"50";'),
('comment_default_per_page_monster', 's:2:"50";'),
('comment_form_location_lair', 's:1:"0";'),
('comment_form_location_monster', 's:1:"0";'),
('comment_lair', 's:1:"2";'),
('comment_monster', 's:1:"2";'),
('comment_page', 'i:0;'),
('comment_preview_lair', 's:1:"1";'),
('comment_preview_monster', 's:1:"1";'),
('comment_subject_field_lair', 's:1:"1";'),
('comment_subject_field_monster', 's:1:"1";'),
('content_extra_weights_lair', 'a:8:{s:5:"title";s:2:"-5";s:10:"body_field";s:1:"0";s:20:"revision_information";s:2:"20";s:6:"author";s:2:"20";s:7:"options";s:2:"25";s:16:"comment_settings";s:2:"30";s:4:"menu";s:2:"-2";s:11:"attachments";s:2:"30";}'),
('content_extra_weights_monster', 'a:8:{s:5:"title";s:2:"-5";s:10:"body_field";s:1:"0";s:20:"revision_information";s:2:"20";s:6:"author";s:2:"20";s:7:"options";s:2:"25";s:16:"comment_settings";s:2:"30";s:4:"menu";s:2:"-2";s:11:"attachments";s:2:"30";}'),
('content_schema_version', 'i:6009;'),
('css_js_query_string', 's:20:"u0000000000000000000";'),
('date_default_timezone', 's:6:"-25200";'),
('drupal_http_request_fails', 'b:0;'),
('drupal_private_key', 's:64:"67d84ca849385d65007a05ea6a43be29542046d1d1c175de9ef12bca0fbb0456";'),
('file_directory_temp', 's:15:"e:/websites/tmp";'),
('filter_html_1', 'i:1;'),
('form_build_id_lair', 's:37:"form-c89bc1506df265f3aa8107cbb7441a05";'),
('form_build_id_monster', 's:37:"form-84cd11b04af24a1db3aa1022b3b66370";'),
('install_profile', 's:7:"default";'),
('install_task', 's:4:"done";'),
('install_time', 'i:1358729224;'),
('javascript_parsed', 'a:0:{}'),
('location_settings_node_lair', 'a:0:{}'),
('location_settings_node_monster', 'a:0:{}'),
('menu_expanded', 'a:0:{}'),
('menu_masks', 'a:20:{i:0;i:127;i:1;i:63;i:2;i:62;i:3;i:61;i:4;i:60;i:5;i:59;i:6;i:31;i:7;i:30;i:8;i:29;i:9;i:24;i:10;i:21;i:11;i:15;i:12;i:14;i:13;i:11;i:14;i:7;i:15;i:6;i:16;i:5;i:17;i:3;i:18;i:2;i:19;i:1;}'),
('node_options_forum', 'a:1:{i:0;s:6:"status";}'),
('node_options_lair', 'a:2:{i:0;s:6:"status";i:1;s:7:"promote";}'),
('node_options_monster', 'a:2:{i:0;s:6:"status";i:1;s:7:"promote";}'),
('node_options_page', 'a:1:{i:0;s:6:"status";}'),
('site_mail', 's:29:"christopherwjohnson@gmail.com";'),
('site_name', 's:13:"ground_drupal";'),
('theme_default', 's:7:"garland";'),
('theme_settings', 'a:1:{s:21:"toggle_node_info_page";b:0;}'),
('user_email_verification', 'b:1;');

-- --------------------------------------------------------

--
-- Table structure for table `vocabulary`
--

CREATE TABLE IF NOT EXISTS `vocabulary` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `help` varchar(255) NOT NULL DEFAULT '',
  `relations` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hierarchy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `multiple` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) NOT NULL DEFAULT '',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `list` (`weight`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vocabulary_node_types`
--

CREATE TABLE IF NOT EXISTS `vocabulary_node_types` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`,`vid`),
  KEY `vid` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `watchdog`
--

CREATE TABLE IF NOT EXISTS `watchdog` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `variables` longtext NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `location` text NOT NULL,
  `referer` text,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zipcodes`
--

CREATE TABLE IF NOT EXISTS `zipcodes` (
  `zip` varchar(16) NOT NULL DEFAULT '0',
  `city` varchar(30) NOT NULL DEFAULT '',
  `state` varchar(30) NOT NULL DEFAULT '',
  `latitude` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `longitude` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `timezone` tinyint(4) NOT NULL DEFAULT '0',
  `dst` tinyint(4) NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT '',
  KEY `pc` (`country`,`zip`),
  KEY `zip` (`zip`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
