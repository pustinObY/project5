-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zcom_traveldepot_template_4
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `td_commentmeta`
--

DROP TABLE IF EXISTS `td_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_commentmeta`
--

LOCK TABLES `td_commentmeta` WRITE;
/*!40000 ALTER TABLE `td_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `td_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_comments`
--

DROP TABLE IF EXISTS `td_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_comments`
--

LOCK TABLES `td_comments` WRITE;
/*!40000 ALTER TABLE `td_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `td_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_links`
--

DROP TABLE IF EXISTS `td_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_links`
--

LOCK TABLES `td_links` WRITE;
/*!40000 ALTER TABLE `td_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `td_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_options`
--

DROP TABLE IF EXISTS `td_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_options`
--

LOCK TABLES `td_options` WRITE;
/*!40000 ALTER TABLE `td_options` DISABLE KEYS */;
INSERT INTO `td_options` VALUES (1,'siteurl','http://localhost/zcom_traveldepot_template_4','yes'),(2,'home','http://localhost/zcom_traveldepot_template_4','yes'),(3,'blogname','Travel Depot by Z.com','yes'),(4,'blogdescription','','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','webmaster@traveldepot.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','zcom_default','yes'),(41,'stylesheet','zcom_default','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','0','yes'),(93,'initial_db_version','38590','yes'),(94,'td_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'cron','a:5:{i:1543990150;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544026150;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544069748;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544072802;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(112,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538713839;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543983836;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}','no'),(118,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1543979349;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"5.3.9.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no'),(125,'can_compress_scripts','1','no'),(138,'category_children','a:0:{}','yes'),(143,'recently_activated','a:0:{}','yes'),(144,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543978379;s:7:\"checked\";a:1:{s:12:\"zcom_default\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(145,'current_theme','Z.com Default Template (Travel Depot)','yes'),(146,'theme_mods_zcom_default','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:11:\"footer-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes'),(147,'theme_switched','','yes'),(151,'WPLANG','','yes'),(152,'new_admin_email','webmaster@traveldepot.com','yes'),(210,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(245,'email_address','adhdiqed@email.com','yes'),(246,'contact','+63900 1110 000','yes'),(247,'address','0 Bldg. Street Avenue Brgy Manila','yes'),(248,'facebook','https://www.facebook.com/','yes'),(249,'instagram','https://www.instagram.com/','yes'),(266,'_site_transient_timeout_browser_7c536d82012ce7c421315e5571540a1e','1544583269','no'),(267,'_site_transient_browser_7c536d82012ce7c421315e5571540a1e','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(268,'_transient_timeout_plugin_slugs','1544065753','no'),(269,'_transient_plugin_slugs','a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}','no'),(271,'acf_version','5.3.9.2','yes'),(272,'site_configuration_email_address','albert.gaya@pangalan.com','no'),(273,'_site_configuration_email_address','field_5bee4e446b819','no'),(274,'site_configuration_contact_number','+63900 1110 000','no'),(275,'_site_configuration_contact_number','field_5bee4e836b81a','no'),(276,'site_configuration_address','0 Bldg. Street Avenue Brgy Manila','no'),(277,'_site_configuration_address','field_5bee4e956b81b','no'),(278,'site_configuration_facebook','https://www.facebook.com','no'),(279,'_site_configuration_facebook','field_5bee4f432060a','no'),(280,'site_configuration_instagram','https://www.instagram.com','no'),(281,'_site_configuration_instagram','field_5bee4f4f2060b','no'),(284,'_site_transient_timeout_theme_roots','1543985636','no'),(285,'_site_transient_theme_roots','a:1:{s:12:\"zcom_default\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `td_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_postmeta`
--

DROP TABLE IF EXISTS `td_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_postmeta`
--

LOCK TABLES `td_postmeta` WRITE;
/*!40000 ALTER TABLE `td_postmeta` DISABLE KEYS */;
INSERT INTO `td_postmeta` VALUES (15,9,'_edit_last','1'),(16,9,'_wp_page_template','templates/page-services.tpl.php'),(17,9,'_edit_lock','1540875961:1'),(23,13,'_edit_last','1'),(24,13,'_edit_lock','1540955308:1'),(27,13,'_wp_page_template','templates/page-packages.tpl.php'),(28,16,'_edit_last','1'),(29,16,'_edit_lock','1540972000:1'),(30,16,'_wp_page_template','templates/page-contact.tpl.php'),(31,19,'_menu_item_type','post_type'),(32,19,'_menu_item_menu_item_parent','0'),(33,19,'_menu_item_object_id','16'),(34,19,'_menu_item_object','page'),(35,19,'_menu_item_target',''),(36,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(37,19,'_menu_item_xfn',''),(38,19,'_menu_item_url',''),(40,20,'_menu_item_type','post_type'),(41,20,'_menu_item_menu_item_parent','0'),(42,20,'_menu_item_object_id','13'),(43,20,'_menu_item_object','page'),(44,20,'_menu_item_target',''),(45,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(46,20,'_menu_item_xfn',''),(47,20,'_menu_item_url',''),(49,21,'_menu_item_type','post_type'),(50,21,'_menu_item_menu_item_parent','0'),(51,21,'_menu_item_object_id','9'),(52,21,'_menu_item_object','page'),(53,21,'_menu_item_target',''),(54,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(55,21,'_menu_item_xfn',''),(56,21,'_menu_item_url',''),(58,23,'_menu_item_type','custom'),(59,23,'_menu_item_menu_item_parent','0'),(60,23,'_menu_item_object_id','23'),(61,23,'_menu_item_object','custom'),(62,23,'_menu_item_target',''),(63,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(64,23,'_menu_item_xfn',''),(65,23,'_menu_item_url','http://localhost/zcom_traveldepot_template_4/'),(67,24,'_edit_last','1'),(68,24,'_edit_lock','1543987057:1'),(69,25,'_wp_attached_file','2018/11/packages-island.jpg'),(70,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:27:\"2018/11/packages-island.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"packages-island-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"packages-island-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:28:\"R.M. Nunes - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:89:\"El Nido, Palawan, Philippines, aerial view of beautiful lagoon in the Bacuit archipelago.\";s:17:\"created_timestamp\";s:10:\"1495881869\";s:9:\"copyright\";s:30:\"©R.M. Nunes - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:64:\"Coron, Palawan, Philippines, aerial view of beautiful lagoon and\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:100:{i:0;s:8:\"tropical\";i:1;s:6:\"summer\";i:2;s:3:\"day\";i:3;s:7:\"daytime\";i:4;s:5:\"sunny\";i:5;s:3:\"sky\";i:6;s:6:\"clouds\";i:7;s:4:\"boat\";i:8;s:6:\"nature\";i:9;s:7:\"holiday\";i:10;s:8:\"vacation\";i:11;s:6:\"travel\";i:12;s:7:\"tourism\";i:13;s:7:\"tourist\";i:14;s:12:\"destinations\";i:15;s:8:\"exterior\";i:16;s:7:\"outdoor\";i:17;s:13:\"national park\";i:18;s:6:\"lagoon\";i:19;s:8:\"dramatic\";i:20;s:7:\"natural\";i:21;s:9:\"limestone\";i:22;s:8:\"mountain\";i:23;s:7:\"scenery\";i:24;s:6:\"scenic\";i:25;s:9:\"landscape\";i:26;s:10:\"attraction\";i:27;s:11:\"philippines\";i:28;s:7:\"palawan\";i:29;s:7:\"el nido\";i:30;s:5:\"coron\";i:31;s:6:\"aerial\";i:32;s:4:\"view\";i:33;s:15:\"high angle view\";i:34;s:8:\"paradise\";i:35;s:8:\"pristine\";i:36;s:4:\"rock\";i:37;s:4:\"asia\";i:38;s:5:\"asian\";i:39;s:9:\"southeast\";i:40;s:7:\"idyllic\";i:41;s:8:\"romantic\";i:42;s:9:\"honeymoon\";i:43;s:6:\"bacuit\";i:44;s:11:\"archipelago\";i:45;s:9:\"turquoise\";i:46;s:5:\"water\";i:47;s:6:\"island\";i:48;s:4:\"tour\";i:49;s:14:\"island hopping\";i:50;s:11:\"philippines\";i:51;s:7:\"palawan\";i:52;s:7:\"el nido\";i:53;s:5:\"coron\";i:54;s:6:\"aerial\";i:55;s:6:\"travel\";i:56;s:7:\"tourism\";i:57;s:6:\"nature\";i:58;s:9:\"landscape\";i:59;s:4:\"asia\";i:60;s:6:\"lagoon\";i:61;s:7:\"scenery\";i:62;s:7:\"outdoor\";i:63;s:7:\"natural\";i:64;s:6:\"scenic\";i:65;s:4:\"view\";i:66;s:8:\"paradise\";i:67;s:7:\"idyllic\";i:68;s:8:\"romantic\";i:69;s:9:\"honeymoon\";i:70;s:11:\"archipelago\";i:71;s:6:\"island\";i:72;s:8:\"tropical\";i:73;s:6:\"summer\";i:74;s:3:\"day\";i:75;s:7:\"daytime\";i:76;s:5:\"sunny\";i:77;s:3:\"sky\";i:78;s:6:\"clouds\";i:79;s:4:\"boat\";i:80;s:7:\"holiday\";i:81;s:8:\"vacation\";i:82;s:7:\"tourist\";i:83;s:12:\"destinations\";i:84;s:8:\"exterior\";i:85;s:11:\"marine park\";i:86;s:8:\"dramatic\";i:87;s:9:\"limestone\";i:88;s:8:\"mountain\";i:89;s:10:\"attraction\";i:90;s:15:\"high angle view\";i:91;s:8:\"pristine\";i:92;s:4:\"rock\";i:93;s:5:\"asian\";i:94;s:9:\"southeast\";i:95;s:6:\"bacuit\";i:96;s:9:\"turquoise\";i:97;s:5:\"water\";i:98;s:4:\"tour\";i:99;s:14:\"island hopping\";}}}'),(71,24,'_thumbnail_id','25'),(72,24,'package-price','999'),(73,24,'package-duration',''),(74,27,'_edit_last','1'),(75,27,'_edit_lock','1543987054:1'),(76,27,'_thumbnail_id','25'),(77,27,'package-price','999'),(78,27,'package-duration',''),(79,29,'_edit_last','1'),(80,29,'_edit_lock','1543987050:1'),(81,29,'_thumbnail_id','25'),(82,29,'package-price','999'),(83,29,'package-duration',''),(84,33,'_edit_last','1'),(85,33,'_edit_lock','1541568653:1'),(86,34,'_wp_attached_file','2018/11/services-cable.jpeg'),(87,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:27:\"2018/11/services-cable.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"services-cable-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"services-cable-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:25:\"Sashkin - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:16:\"Computer servers\";s:17:\"created_timestamp\";s:10:\"1335572291\";s:9:\"copyright\";s:27:\"©Sashkin - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:16:\"Computer servers\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:45:{i:0;s:2:\"3d\";i:1;s:8:\"business\";i:2;s:6:\"center\";i:3;s:8:\"commerce\";i:4;s:13:\"communication\";i:5;s:8:\"computer\";i:6;s:12:\"connectivity\";i:7;s:7:\"closeup\";i:8;s:4:\"data\";i:9;s:8:\"database\";i:10;s:10:\"datacenter\";i:11;s:6:\"design\";i:12;s:7:\"digital\";i:13;s:10:\"futuristic\";i:14;s:8:\"hardware\";i:15;s:4:\"high\";i:16;s:8:\"industry\";i:17;s:8:\"internet\";i:18;s:8:\"isolated\";i:19;s:4:\"line\";i:20;s:7:\"manager\";i:21;s:6:\"modern\";i:22;s:7:\"network\";i:23;s:10:\"networking\";i:24;s:6:\"office\";i:25;s:6:\"online\";i:26;s:11:\"performance\";i:27;s:11:\"perspective\";i:28;s:5:\"power\";i:29;s:10:\"processors\";i:30;s:4:\"rack\";i:31;s:6:\"render\";i:32;s:10:\"renderfarm\";i:33;s:4:\"room\";i:34;s:8:\"security\";i:35;s:6:\"server\";i:36;s:7:\"service\";i:37;s:4:\"site\";i:38;s:7:\"stylish\";i:39;s:7:\"success\";i:40;s:7:\"support\";i:41;s:10:\"technology\";i:42;s:5:\"tower\";i:43;s:7:\"traffic\";i:44;s:3:\"web\";}}}'),(88,33,'_thumbnail_id','34'),(89,35,'_edit_last','1'),(90,35,'_edit_lock','1541568672:1'),(91,35,'_thumbnail_id','34'),(92,36,'_edit_last','1'),(93,36,'_edit_lock','1541570256:1'),(94,36,'_thumbnail_id','34'),(95,39,'_edit_lock','1543979313:1'),(96,43,'_edit_lock','1543979525:1'),(97,46,'_edit_lock','1543986893:1'),(98,46,'_edit_last','1'),(99,29,'price','starting at P999'),(100,29,'_price','field_5be414b39cb48'),(101,27,'price','starting at P999'),(102,27,'_price','field_5be414b39cb48'),(103,24,'price','starting at P999'),(104,24,'_price','field_5be414b39cb48');
/*!40000 ALTER TABLE `td_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_posts`
--

DROP TABLE IF EXISTS `td_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_posts`
--

LOCK TABLES `td_posts` WRITE;
/*!40000 ALTER TABLE `td_posts` DISABLE KEYS */;
INSERT INTO `td_posts` VALUES (9,1,'2018-10-30 05:08:16','2018-10-30 05:08:16','','Services','','publish','closed','closed','','services','','','2018-10-30 05:08:16','2018-10-30 05:08:16','',0,'http://localhost/zcom_traveldepot_template_4/?page_id=9',0,'page','',0),(10,1,'2018-10-30 05:08:16','2018-10-30 05:08:16','','Services','','inherit','closed','closed','','9-revision-v1','','','2018-10-30 05:08:16','2018-10-30 05:08:16','',9,'http://localhost/zcom_traveldepot_template_4/2018/10/30/9-revision-v1/',0,'revision','',0),(13,1,'2018-10-31 03:08:27','2018-10-31 03:08:27','','Packages','','publish','closed','closed','','packages','','','2018-10-31 03:08:27','2018-10-31 03:08:27','',0,'http://localhost/zcom_traveldepot_template_4/?page_id=13',0,'page','',0),(15,1,'2018-10-31 03:08:27','2018-10-31 03:08:27','','Packages','','inherit','closed','closed','','13-revision-v1','','','2018-10-31 03:08:27','2018-10-31 03:08:27','',13,'http://localhost/zcom_traveldepot_template_4/2018/10/31/13-revision-v1/',0,'revision','',0),(16,1,'2018-10-31 07:03:37','2018-10-31 07:03:37','','Contact','','publish','closed','closed','','contact','','','2018-10-31 07:03:37','2018-10-31 07:03:37','',0,'http://localhost/zcom_traveldepot_template_4/?page_id=16',0,'page','',0),(18,1,'2018-10-31 07:03:37','2018-10-31 07:03:37','','Contact','','inherit','closed','closed','','16-revision-v1','','','2018-10-31 07:03:37','2018-10-31 07:03:37','',16,'http://localhost/zcom_traveldepot_template_4/2018/10/31/16-revision-v1/',0,'revision','',0),(19,1,'2018-10-31 08:31:14','2018-10-31 08:31:14',' ','','','publish','closed','closed','','19','','','2018-10-31 08:32:04','2018-10-31 08:32:04','',0,'http://localhost/zcom_traveldepot_template_4/?p=19',4,'nav_menu_item','',0),(20,1,'2018-10-31 08:31:14','2018-10-31 08:31:14',' ','','','publish','closed','closed','','20','','','2018-10-31 08:32:04','2018-10-31 08:32:04','',0,'http://localhost/zcom_traveldepot_template_4/?p=20',3,'nav_menu_item','',0),(21,1,'2018-10-31 08:31:14','2018-10-31 08:31:14',' ','','','publish','closed','closed','','21','','','2018-10-31 08:32:04','2018-10-31 08:32:04','',0,'http://localhost/zcom_traveldepot_template_4/?p=21',2,'nav_menu_item','',0),(23,1,'2018-10-31 08:32:04','2018-10-31 08:32:04','','Home','','publish','closed','closed','','home','','','2018-10-31 08:32:04','2018-10-31 08:32:04','',0,'http://localhost/zcom_traveldepot_template_4/?p=23',1,'nav_menu_item','',0),(24,1,'2018-11-07 01:50:32','2018-11-07 01:50:32','','Package 1','Pero esto importa poco a nuestro cuento basta que en la narración dél no se salga un punto de la verdad.','publish','closed','closed','','package-1','','','2018-12-05 05:17:36','2018-12-05 05:17:36','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=package&#038;p=24',0,'package','',0),(25,1,'2018-11-07 01:50:22','2018-11-07 01:50:22','','Coron, Palawan, Philippines, aerial view of beautiful lagoon and','El Nido, Palawan, Philippines, aerial view of beautiful lagoon in the Bacuit archipelago.','inherit','open','closed','','coron-palawan-philippines-aerial-view-of-beautiful-lagoon-and','','','2018-11-07 01:50:22','2018-11-07 01:50:22','',24,'http://localhost/zcom_traveldepot_template_4/wp-content/uploads/2018/11/packages-island.jpg',0,'attachment','image/jpeg',0),(26,1,'2018-11-07 01:50:32','2018-11-07 01:50:32','','Package 1','Pero esto importa poco a nuestro cuento basta que en la narración dél no se salga un punto de la verdad.','inherit','closed','closed','','24-revision-v1','','','2018-11-07 01:50:32','2018-11-07 01:50:32','',24,'http://localhost/zcom_traveldepot_template_4/2018/11/07/24-revision-v1/',0,'revision','',0),(27,1,'2018-11-07 01:51:00','2018-11-07 01:51:00','','Package 2','Pero esto importa poco a nuestro cuento basta que en la narración dél no se salga un punto de la verdad.','publish','closed','closed','','package-2','','','2018-12-05 05:17:33','2018-12-05 05:17:33','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=package&#038;p=27',0,'package','',0),(28,1,'2018-11-07 01:51:00','2018-11-07 01:51:00','','Package 2','Pero esto importa poco a nuestro cuento basta que en la narración dél no se salga un punto de la verdad.','inherit','closed','closed','','27-revision-v1','','','2018-11-07 01:51:00','2018-11-07 01:51:00','',27,'http://localhost/zcom_traveldepot_template_4/2018/11/07/27-revision-v1/',0,'revision','',0),(29,1,'2018-11-07 01:51:29','2018-11-07 01:51:29','','Package 3','Pero esto importa poco a nuestro cuento basta que en la narración dél no se salga un punto de la verdad.','publish','closed','closed','','package-3','','','2018-12-05 05:17:30','2018-12-05 05:17:30','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=package&#038;p=29',0,'package','',0),(30,1,'2018-11-07 01:51:29','2018-11-07 01:51:29','','Package 3','Pero esto importa poco a nuestro cuento basta que en la narración dél no se salga un punto de la verdad.','inherit','closed','closed','','29-revision-v1','','','2018-11-07 01:51:29','2018-11-07 01:51:29','',29,'http://localhost/zcom_traveldepot_template_4/2018/11/07/29-revision-v1/',0,'revision','',0),(33,1,'2018-11-07 05:33:11','2018-11-07 05:33:11','','Service 1','Pero esto importa poco a nuestro cuento: basta que en la narración dél no se salga un punto de la verdad.','publish','closed','closed','','service-1','','','2018-11-07 05:33:11','2018-11-07 05:33:11','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=service&#038;p=33',0,'service','',0),(34,1,'2018-11-07 05:33:01','2018-11-07 05:33:01','','Computer servers','Computer servers','inherit','open','closed','','computer-servers','','','2018-11-07 05:33:01','2018-11-07 05:33:01','',33,'http://localhost/zcom_traveldepot_template_4/wp-content/uploads/2018/11/services-cable.jpeg',0,'attachment','image/jpeg',0),(35,1,'2018-11-07 05:33:30','2018-11-07 05:33:30','','Service 2','Pero esto importa poco a nuestro cuento: basta que en la narración dél no se salga un punto de la verdad.','publish','closed','closed','','service-2','','','2018-11-07 05:33:30','2018-11-07 05:33:30','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=service&#038;p=35',0,'service','',0),(36,1,'2018-11-07 05:34:02','2018-11-07 05:34:02','','Service 3','Pero esto importa poco a nuestro cuento: basta que en la narración dél no se salga un punto de la verdad.','publish','closed','closed','','service-3','','','2018-11-07 05:34:02','2018-11-07 05:34:02','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=service&#038;p=36',0,'service','',0),(38,1,'2018-12-05 02:54:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-12-05 02:54:30','0000-00-00 00:00:00','',0,'http://localhost/zcom_traveldepot_template_4/?p=38',0,'post','',0),(39,1,'2018-12-05 03:10:26','2018-12-05 03:10:26','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"acf-options-site-configuration\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}','Site Configuration : Contact Options','site-configuration-contact-options','publish','closed','closed','','group_5bee4e2727474','','','2018-12-05 03:10:26','2018-12-05 03:10:26','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field-group&p=39',0,'acf-field-group','',0),(40,1,'2018-12-05 03:10:26','2018-12-05 03:10:26','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Email Address','email_address','publish','closed','closed','','field_5bee4e446b819','','','2018-12-05 03:10:26','2018-12-05 03:10:26','',39,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field&p=40',0,'acf-field','',0),(41,1,'2018-12-05 03:10:26','2018-12-05 03:10:26','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Contact Number','contact_number','publish','closed','closed','','field_5bee4e836b81a','','','2018-12-05 03:10:26','2018-12-05 03:10:26','',39,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field&p=41',1,'acf-field','',0),(42,1,'2018-12-05 03:10:26','2018-12-05 03:10:26','a:12:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Address','address','publish','closed','closed','','field_5bee4e956b81b','','','2018-12-05 03:10:26','2018-12-05 03:10:26','',39,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field&p=42',2,'acf-field','',0),(43,1,'2018-12-05 03:10:26','2018-12-05 03:10:26','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"acf-options-site-configuration\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}','Site Configuration : Social Media Options','site-configuration-social-media-options','publish','closed','closed','','group_5bee4f307ccc0','','','2018-12-05 03:10:26','2018-12-05 03:10:26','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field-group&p=43',0,'acf-field-group','',0),(44,1,'2018-12-05 03:10:26','2018-12-05 03:10:26','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Facebook','facebook','publish','closed','closed','','field_5bee4f432060a','','','2018-12-05 03:10:26','2018-12-05 03:10:26','',43,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field&p=44',0,'acf-field','',0),(45,1,'2018-12-05 03:10:26','2018-12-05 03:10:26','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Instagram','instagram','publish','closed','closed','','field_5bee4f4f2060b','','','2018-12-05 03:10:26','2018-12-05 03:10:26','',43,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field&p=45',1,'acf-field','',0),(46,1,'2018-12-05 05:16:50','2018-12-05 05:16:50','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"package\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Package : Details','package-details','publish','closed','closed','','group_5be414914de50','','','2018-12-05 05:17:04','2018-12-05 05:17:04','',0,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field-group&#038;p=46',0,'acf-field-group','',0),(47,1,'2018-12-05 05:16:50','2018-12-05 05:16:50','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Price','price','publish','closed','closed','','field_5be414b39cb48','','','2018-12-05 05:16:50','2018-12-05 05:16:50','',46,'http://localhost/zcom_traveldepot_template_4/?post_type=acf-field&p=47',0,'acf-field','',0),(48,1,'2018-12-05 05:17:24','2018-12-05 05:17:24','','Package 3','Pero esto importa poco a nuestro cuento basta que en la narración dél no se salga un punto de la verdad.','inherit','closed','closed','','29-autosave-v1','','','2018-12-05 05:17:24','2018-12-05 05:17:24','',29,'http://localhost/zcom_traveldepot_template_4/2018/12/05/29-autosave-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `td_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_term_relationships`
--

DROP TABLE IF EXISTS `td_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_term_relationships`
--

LOCK TABLES `td_term_relationships` WRITE;
/*!40000 ALTER TABLE `td_term_relationships` DISABLE KEYS */;
INSERT INTO `td_term_relationships` VALUES (19,2,0),(20,2,0),(21,2,0),(23,2,0);
/*!40000 ALTER TABLE `td_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_term_taxonomy`
--

DROP TABLE IF EXISTS `td_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_term_taxonomy`
--

LOCK TABLES `td_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `td_term_taxonomy` DISABLE KEYS */;
INSERT INTO `td_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'nav_menu','',0,4);
/*!40000 ALTER TABLE `td_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_termmeta`
--

DROP TABLE IF EXISTS `td_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_termmeta`
--

LOCK TABLES `td_termmeta` WRITE;
/*!40000 ALTER TABLE `td_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `td_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_terms`
--

DROP TABLE IF EXISTS `td_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_terms`
--

LOCK TABLES `td_terms` WRITE;
/*!40000 ALTER TABLE `td_terms` DISABLE KEYS */;
INSERT INTO `td_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Main Menu','main-menu',0);
/*!40000 ALTER TABLE `td_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_usermeta`
--

DROP TABLE IF EXISTS `td_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_usermeta`
--

LOCK TABLES `td_usermeta` WRITE;
/*!40000 ALTER TABLE `td_usermeta` DISABLE KEYS */;
INSERT INTO `td_usermeta` VALUES (1,1,'nickname','webmaster'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'td_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'td_user_level','10'),(14,1,'dismissed_wp_pointers','wp496_privacy'),(15,1,'show_welcome_panel','0'),(17,1,'td_dashboard_quick_press_last_post_id','38'),(18,1,'show_try_gutenberg_panel','0'),(19,1,'closedpostboxes_dashboard','a:0:{}'),(20,1,'metaboxhidden_dashboard','a:3:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}'),(21,1,'td_user-settings','mfold=o'),(22,1,'td_user-settings-time','1543978464'),(23,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),(24,1,'session_tokens','a:1:{s:64:\"1a1b8a68f6085709f5ac6ca7dd4517410d4fd3d82529286e7c1b56f0df47e0ad\";a:4:{s:10:\"expiration\";i:1544151268;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1543978468;}}'),(25,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(26,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:16:\"add-package-type\";}'),(27,1,'nav_menu_recently_edited','2'),(28,1,'closedpostboxes_toplevel_page_acf-options-site-configuration','a:0:{}'),(29,1,'metaboxhidden_toplevel_page_acf-options-site-configuration','a:0:{}'),(30,1,'meta-box-order_package','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:38:\"submitdiv,package-typediv,postimagediv\";s:6:\"normal\";s:91:\"acf-group_5bee4e2727474,acf-group_5bee4f307ccc0,postexcerpt,acf-group_5be414914de50,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),(31,1,'screen_layout_package','2');
/*!40000 ALTER TABLE `td_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `td_users`
--

DROP TABLE IF EXISTS `td_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `td_users`
--

LOCK TABLES `td_users` WRITE;
/*!40000 ALTER TABLE `td_users` DISABLE KEYS */;
INSERT INTO `td_users` VALUES (1,'webmaster','$P$BjhvLy4655eJpmFX.xF.uL.Y7kOnKe.','webmaster','webmaster@traveldepot.com','','2018-10-05 04:09:10','',0,'webmaster');
/*!40000 ALTER TABLE `td_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'zcom_traveldepot_template_4'
--

--
-- Dumping routines for database 'zcom_traveldepot_template_4'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 13:19:49
