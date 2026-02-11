# Migration de base de données MySQL WordPress
#
# Généré : Wednesday 11. February 2026 20:48 UTC
# Nom d’hôte : 185.98.131.161
# Base de données : `belle2744346`
# URL: //belleolive.fr
# Path: /htdocs
# Tables: wp_commentmeta, wp_comments, wp_e_events, wp_links, wp_lws_cl_ignore, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_yoast_indexable, wp_yoast_indexable_hierarchy, wp_yoast_migrations, wp_yoast_primary_term, wp_yoast_seo_links
# Table Prefix: wp_
# Post Types: revision, attachment, customize_changeset, elementor_library, nav_menu_item, page, post, wp_navigation, wpcf7_contact_form
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2025-09-05 10:30:40', '2025-09-05 08:30:40', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://fr.gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_e_events`
#

DROP TABLE IF EXISTS `wp_e_events`;


#
# Table structure of table `wp_e_events`
#

CREATE TABLE `wp_e_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_data` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_e_events`
#
INSERT INTO `wp_e_events` ( `id`, `event_data`, `created_at`) VALUES
(1, '{"event":"modal load","version":"","details":"{\\"placement\\":\\"Onboarding wizard\\",\\"step\\":\\"account\\",\\"user_state\\":\\"anon\\"}","ts":"2026-02-08T23:24:19.119-01:00"}', '2026-02-08 23:24:19'),
(2, '{"event":"modal load","version":"","details":"{\\"placement\\":\\"Onboarding wizard\\",\\"step\\":\\"account\\",\\"user_state\\":\\"anon\\"}","ts":"2026-02-08T23:24:19.129-01:00"}', '2026-02-08 23:24:19') ;

#
# End of data contents of table `wp_e_events`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_lws_cl_ignore`
#

DROP TABLE IF EXISTS `wp_lws_cl_ignore`;


#
# Table structure of table `wp_lws_cl_ignore`
#

CREATE TABLE `wp_lws_cl_ignore` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `IDmedia` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_lws_cl_ignore`
#

#
# End of data contents of table `wp_lws_cl_ignore`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=986 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:14:{i:1770845439;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1770845440;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1770846925;a:1:{s:31:"wpseo_permalink_structure_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1770846992;a:1:{s:13:"wpseo-reindex";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1770847020;a:2:{s:29:"wpseo_detect_default_seo_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:41:"googlesitekit_cron_update_remote_features";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1770847239;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1770849039;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1770885040;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1770885055;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1770885060;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1771057840;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1771192503;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1801691729;a:1:{s:39:"lws_optimize_clear_filebased_cache_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"lws_yearly";s:4:"args";a:0:{}s:8:"interval";i:31556926;}}}s:7:"version";i:2;}', 'on'),
(2, 'siteurl', 'https://belleolive.fr', 'on'),
(3, 'home', 'https://belleolive.fr', 'on'),
(4, 'blogname', 'Les Belles Olives De Ners', 'on'),
(5, 'blogdescription', 'Huile d&#039;Olive Vierge Naturelle', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'inkos.showcase@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F Y', 'on'),
(25, 'time_format', 'G\\hi', 'on'),
(26, 'links_updated_date_format', 'd F Y G\\hi', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:98:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:23:"index.php?sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=725&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:9:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:35:"google-site-kit/google-site-kit.php";i:2;s:27:"lws-cleaner/lws-cleaner.php";i:3;s:33:"lws-hide-login/lws-hide-login.php";i:4;s:29:"lws-optimize/lws-optimize.php";i:5;s:23:"lws-tools/lws-tools.php";i:6;s:41:"wordpress-importer/wordpress-importer.php";i:7;s:24:"wordpress-seo/wp-seo.php";i:8;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:2:{i:0;s:53:"/htdocs/wp-content/themes/eco-greenest-lite/style.css";i:2;s:0:"";}', 'off'),
(41, 'template', 'eco-greenest-lite', 'on'),
(42, 'stylesheet', 'eco-greenest-lite', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60717', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:6:{s:23:"lws-tools/lws-tools.php";s:26:"lws_tk_uninstalling_plugin";s:27:"lws-cleaner/lws-cleaner.php";s:16:"lws_cl_on_delete";s:29:"lws-optimize/lws-optimize.php";s:31:"lws_optimize_uninstall_callback";s:33:"lws-hide-login/lws-hide-login.php";s:19:"lws_hl_on_uninstall";s:24:"wordpress-seo/wp-seo.php";s:14:"__return_false";s:23:"elementor/elementor.php";a:2:{i:0;s:21:"Elementor\\Maintenance";i:1;s:9:"uninstall";}}', 'off'),
(81, 'timezone_string', 'Europe/Paris', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '725', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '1913', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1772613039', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'initial_db_version', '60421', 'on'),
(102, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"wpseo_manage_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:38:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;s:23:"view_site_health_checks";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'fr_FR', 'auto'),
(105, 'user_count', '2', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:159:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:233:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:151:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1770587732;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
(128, 'recovery_keys', 'a:0:{}', 'off'),
(155, 'recently_activated', 'a:2:{s:37:"deployer-for-git/deployer-for-git.php";i:1770748206;s:23:"elementor/elementor.php";i:1770590112;}', 'off'),
(160, 'finished_updating_comment_type', '1', 'auto'),
(169, 'wp_notes_notify', '1', 'on'),
(170, 'db_upgraded', '', 'on'),
(182, 'lws_optimize_config_array', 'a:27:{s:13:"personnalized";s:5:"false";s:14:"autosetup_type";s:9:"essential";s:15:"filebased_cache";a:6:{s:5:"state";s:4:"true";s:7:"preload";s:5:"false";s:14:"preload_amount";s:1:"2";s:5:"timer";s:10:"lws_yearly";s:12:"preload_done";i:0;s:15:"preload_ongoing";s:4:"true";}s:11:"combine_css";a:1:{s:5:"state";s:5:"false";}s:10:"combine_js";a:1:{s:5:"state";s:5:"false";}s:10:"minify_css";a:1:{s:5:"state";s:4:"true";}s:9:"minify_js";a:1:{s:5:"state";s:4:"true";}s:8:"defer_js";a:1:{s:5:"state";s:5:"false";}s:8:"delay_js";a:1:{s:5:"state";s:5:"false";}s:11:"minify_html";a:1:{s:5:"state";s:5:"false";}s:9:"autopurge";a:1:{s:5:"state";s:4:"true";}s:9:"memcached";a:1:{s:5:"state";s:5:"false";}s:16:"gzip_compression";a:1:{s:5:"state";s:4:"true";}s:14:"image_lazyload";a:1:{s:5:"state";s:4:"true";}s:21:"iframe_video_lazyload";a:1:{s:5:"state";s:4:"true";}s:14:"maintenance_db";a:2:{s:5:"state";s:5:"false";s:7:"options";a:0:{}}s:11:"preload_css";a:1:{s:5:"state";s:5:"false";}s:12:"preload_font";a:1:{s:5:"state";s:5:"false";}s:16:"deactivate_emoji";a:1:{s:5:"state";s:5:"false";}s:18:"eliminate_requests";a:1:{s:5:"state";s:5:"false";}s:17:"cache_mobile_user";a:1:{s:5:"state";s:5:"false";}s:17:"cache_logged_user";a:1:{s:5:"state";s:5:"false";}s:13:"dynamic_cache";a:1:{s:5:"state";s:4:"true";}s:14:"htaccess_rules";a:1:{s:5:"state";s:4:"true";}s:15:"image_add_sizes";a:1:{s:5:"state";s:5:"false";}s:10:"remove_css";a:1:{s:5:"state";s:5:"false";}s:12:"critical_css";a:1:{s:5:"state";s:5:"false";}}', 'auto'),
(188, 'yoast_migrations_free', 'a:1:{s:7:"version";s:4:"26.9";}', 'auto'),
(189, 'wpseo', 'a:122:{s:8:"tracking";b:0;s:16:"toggled_tracking";b:0;s:22:"license_server_version";b:0;s:15:"ms_defaults_set";b:0;s:40:"ignore_search_engines_discouraged_notice";b:0;s:19:"indexing_first_time";b:1;s:16:"indexing_started";b:0;s:15:"indexing_reason";s:21:"post_type_made_public";s:29:"indexables_indexing_completed";b:1;s:13:"index_now_key";s:0:"";s:7:"version";s:4:"26.9";s:16:"previous_version";s:0:"";s:20:"disableadvanced_meta";b:1;s:30:"enable_headless_rest_endpoints";b:1;s:17:"ryte_indexability";b:0;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:12:"ahrefsverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:34:"inclusive_language_analysis_active";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:16:"enable_index_now";b:1;s:19:"enable_ai_generator";b:1;s:22:"ai_enabled_pre_default";b:0;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1770587725;s:13:"myyoast-oauth";b:0;s:26:"semrush_integration_active";b:1;s:14:"semrush_tokens";a:0:{}s:20:"semrush_country_code";s:2:"us";s:19:"permalink_structure";s:36:"/%year%/%monthnum%/%day%/%postname%/";s:8:"home_url";s:21:"https://belleolive.fr";s:18:"dynamic_permalinks";b:0;s:17:"category_base_url";s:0:"";s:12:"tag_base_url";s:0:"";s:21:"custom_taxonomy_slugs";a:0:{}s:29:"enable_enhanced_slack_sharing";b:1;s:23:"enable_metabox_insights";b:1;s:23:"enable_link_suggestions";b:1;s:26:"algolia_integration_active";b:0;s:14:"import_cursors";a:0:{}s:13:"workouts_data";a:1:{s:13:"configuration";a:1:{s:13:"finishedSteps";a:0:{}}}s:28:"configuration_finished_steps";a:0:{}s:36:"dismiss_configuration_workout_notice";b:0;s:34:"dismiss_premium_deactivated_notice";b:0;s:19:"importing_completed";a:0:{}s:26:"wincher_integration_active";b:1;s:14:"wincher_tokens";a:0:{}s:36:"wincher_automatically_add_keyphrases";b:0;s:18:"wincher_website_id";s:0:"";s:18:"first_time_install";b:1;s:34:"should_redirect_after_install_free";b:0;s:34:"activation_redirect_timestamp_free";i:1770587725;s:18:"remove_feed_global";b:0;s:27:"remove_feed_global_comments";b:0;s:25:"remove_feed_post_comments";b:0;s:19:"remove_feed_authors";b:0;s:22:"remove_feed_categories";b:0;s:16:"remove_feed_tags";b:0;s:29:"remove_feed_custom_taxonomies";b:0;s:22:"remove_feed_post_types";b:0;s:18:"remove_feed_search";b:0;s:21:"remove_atom_rdf_feeds";b:0;s:17:"remove_shortlinks";b:0;s:21:"remove_rest_api_links";b:0;s:20:"remove_rsd_wlw_links";b:0;s:19:"remove_oembed_links";b:0;s:16:"remove_generator";b:0;s:20:"remove_emoji_scripts";b:0;s:24:"remove_powered_by_header";b:0;s:22:"remove_pingback_header";b:0;s:28:"clean_campaign_tracking_urls";b:0;s:16:"clean_permalinks";b:0;s:32:"clean_permalinks_extra_variables";s:0:"";s:14:"search_cleanup";b:0;s:20:"search_cleanup_emoji";b:0;s:23:"search_cleanup_patterns";b:0;s:22:"search_character_limit";i:50;s:20:"deny_search_crawling";b:0;s:21:"deny_wp_json_crawling";b:0;s:20:"deny_adsbot_crawling";b:0;s:19:"deny_ccbot_crawling";b:0;s:29:"deny_google_extended_crawling";b:0;s:20:"deny_gptbot_crawling";b:0;s:27:"redirect_search_pretty_urls";b:0;s:29:"least_readability_ignore_list";a:0:{}s:27:"least_seo_score_ignore_list";a:0:{}s:23:"most_linked_ignore_list";a:0:{}s:24:"least_linked_ignore_list";a:0:{}s:28:"indexables_page_reading_list";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:"indexables_overview_state";s:21:"dashboard-not-visited";s:28:"last_known_public_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:28:"last_known_public_taxonomies";a:3:{i:0;s:8:"category";i:1;s:8:"post_tag";i:2;s:11:"post_format";}s:23:"last_known_no_unindexed";a:6:{s:40:"wpseo_total_unindexed_post_type_archives";i:1770794398;s:31:"wpseo_unindexed_post_link_count";i:1770794768;s:31:"wpseo_unindexed_term_link_count";i:1770794768;s:35:"wpseo_total_unindexed_general_items";i:1770794768;s:27:"wpseo_total_unindexed_posts";i:1770748417;s:27:"wpseo_total_unindexed_terms";i:1770748417;}s:14:"new_post_types";a:0:{}s:14:"new_taxonomies";a:0:{}s:34:"show_new_content_type_notification";b:0;s:44:"site_kit_configuration_permanently_dismissed";b:0;s:18:"site_kit_connected";b:0;s:37:"site_kit_tracking_setup_widget_loaded";s:3:"yes";s:41:"site_kit_tracking_first_interaction_stage";s:5:"setup";s:40:"site_kit_tracking_last_interaction_stage";s:5:"setup";s:52:"site_kit_tracking_setup_widget_temporarily_dismissed";s:2:"no";s:52:"site_kit_tracking_setup_widget_permanently_dismissed";s:2:"no";s:31:"google_site_kit_feature_enabled";b:0;s:25:"ai_free_sparks_started_on";N;s:15:"enable_llms_txt";b:0;s:15:"last_updated_on";b:0;s:17:"default_seo_title";a:5:{i:0;i:1;i:1;i:1768;i:2;i:1766;i:3;i:1440;i:4;i:1438;}s:21:"default_seo_meta_desc";a:5:{i:0;i:1;i:1;i:1768;i:2;i:1766;i:3;i:1440;i:4;i:1438;}s:18:"first_activated_by";i:0;s:16:"enable_task_list";b:1;s:13:"enable_schema";b:1;}', 'auto'),
(190, 'wpseo_titles', 'a:129:{s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:25:"social-title-author-wpseo";s:8:"%%name%%";s:26:"social-title-archive-wpseo";s:8:"%%date%%";s:31:"social-description-author-wpseo";s:0:"";s:32:"social-description-archive-wpseo";s:0:"";s:29:"social-image-url-author-wpseo";s:0:"";s:30:"social-image-url-archive-wpseo";s:0:"";s:28:"social-image-id-author-wpseo";i:0;s:29:"social-image-id-archive-wpseo";i:0;s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:2:"»";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:11:"person_logo";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:22:"company_alternate_name";s:0:"";s:17:"company_or_person";s:7:"company";s:25:"company_or_person_user_id";b:0;s:17:"stripcategorybase";b:0;s:26:"open_graph_frontpage_title";s:12:"%%sitename%%";s:25:"open_graph_frontpage_desc";s:0:"";s:26:"open_graph_frontpage_image";s:0:"";s:24:"publishing_principles_id";i:0;s:25:"ownership_funding_info_id";i:0;s:29:"actionable_feedback_policy_id";i:0;s:21:"corrections_policy_id";i:0;s:16:"ethics_policy_id";i:0;s:19:"diversity_policy_id";i:0;s:28:"diversity_staffing_report_id";i:0;s:15:"org-description";s:0:"";s:9:"org-email";s:0:"";s:9:"org-phone";s:0:"";s:14:"org-legal-name";s:0:"";s:17:"org-founding-date";s:0:"";s:20:"org-number-employees";s:0:"";s:10:"org-vat-id";s:0:"";s:10:"org-tax-id";s:0:"";s:7:"org-iso";s:0:"";s:8:"org-duns";s:0:"";s:11:"org-leicode";s:0:"";s:9:"org-naics";s:0:"";s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:21:"schema-page-type-post";s:7:"WebPage";s:24:"schema-article-type-post";s:7:"Article";s:17:"social-title-post";s:9:"%%title%%";s:23:"social-description-post";s:0:"";s:21:"social-image-url-post";s:0:"";s:20:"social-image-id-post";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:21:"schema-page-type-page";s:7:"WebPage";s:24:"schema-article-type-page";s:4:"None";s:17:"social-title-page";s:9:"%%title%%";s:23:"social-description-page";s:0:"";s:21:"social-image-url-page";s:0:"";s:20:"social-image-id-page";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:27:"schema-page-type-attachment";s:7:"WebPage";s:30:"schema-article-type-attachment";s:4:"None";s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:25:"social-title-tax-category";s:23:"%%term_title%% Archives";s:31:"social-description-tax-category";s:0:"";s:29:"social-image-url-tax-category";s:0:"";s:28:"social-image-id-tax-category";i:0;s:26:"taxonomy-category-ptparent";i:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:25:"social-title-tax-post_tag";s:23:"%%term_title%% Archives";s:31:"social-description-tax-post_tag";s:0:"";s:29:"social-image-url-tax-post_tag";s:0:"";s:28:"social-image-id-tax-post_tag";i:0;s:26:"taxonomy-post_tag-ptparent";i:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:28:"social-title-tax-post_format";s:23:"%%term_title%% Archives";s:34:"social-description-tax-post_format";s:0:"";s:32:"social-image-url-tax-post_format";s:0:"";s:31:"social-image-id-tax-post_format";i:0;s:29:"taxonomy-post_format-ptparent";i:0;s:14:"person_logo_id";i:0;s:15:"company_logo_id";i:0;s:17:"company_logo_meta";b:0;s:16:"person_logo_meta";b:0;s:29:"open_graph_frontpage_image_id";i:0;}', 'auto'),
(191, 'wpseo_social', 'a:20:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:13:"wikipedia_url";s:0:"";s:17:"other_social_urls";a:0:{}s:12:"mastodon_url";s:0:"";}', 'auto'),
(192, 'wpseo_llmstxt', 'a:7:{s:23:"llms_txt_selection_mode";s:4:"auto";s:13:"about_us_page";i:0;s:12:"contact_page";i:0;s:10:"terms_page";i:0;s:19:"privacy_policy_page";i:0;s:9:"shop_page";i:0;s:20:"other_included_pages";a:0:{}}', 'auto'),
(193, 'wpseo_tracking_only', 'a:3:{s:25:"task_list_first_opened_on";s:0:"";s:22:"task_first_actioned_on";s:0:"";s:36:"frontend_inspector_first_actioned_on";s:0:"";}', 'auto'),
(199, 'lwsop_plugin_version', '3.3.11', 'auto'),
(202, 'current_theme', 'Eco Greenest Lite', 'auto'),
(203, 'theme_switched', '', 'auto'),
(206, 'theme_mods_eco-greenest-lite', 'a:28:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:10;}s:18:"custom_css_post_id";i:-1;s:35:"eco_greenest_lite_shortdesc_section";s:21:"Vente d\'Huile d\'Olive";s:40:"eco_greenest_lite_show_shortdesc_section";b:1;s:31:"eco_greenest_lite_facebook_link";s:0:"";s:58:"eco_greenest_lite_show_header_footer_social_icons_sections";b:1;s:30:"eco_greenest_lite_welcome_page";i:790;s:35:"eco_greenest_lite_show_welcome_page";b:1;s:33:"eco_greenest_lite_homepageslider1";i:1955;s:33:"eco_greenest_lite_homepageslider2";i:795;s:33:"eco_greenest_lite_homepageslider3";i:1581;s:46:"eco_greenest_lite_show_frontpageslider_section";b:1;s:30:"eco_greenest_lite_twitter_link";s:0:"";s:33:"eco_greenest_lite_googleplus_link";s:38:"https://share.google/pKiPrGLEtwiPnImeu";s:34:"eco_greenest_lite_boxlayoutoptions";b:0;s:29:"eco_greenest_lite_footerphone";s:12:"+33786127822";s:29:"eco_greenest_lite_footeremail";s:18:"oliv@belleolive.fr";s:42:"eco_greenest_lite_show_footerinfo_sections";b:0;s:30:"eco_greenest_lite_donatebutton";s:7:"Acheter";s:44:"eco_greenest_lite_show_donatebutton_sections";b:1;s:11:"custom_logo";i:1923;s:12:"header_image";s:13:"remove-header";s:35:"eco_greenest_lite_donatebutton_link";s:25:"mailto:oliv@belleolive.fr";s:16:"header_textcolor";s:5:"blank";s:26:"eco_greenest_lite_3pagebx1";i:1966;s:39:"eco_greenest_lite_show_3pagebx_sections";b:1;s:26:"eco_greenest_lite_3pagebx2";i:1977;s:26:"eco_greenest_lite_3pagebx3";i:1999;}', 'auto'),
(207, 'lws_from_autoinstall_optimize', 'true', 'on'),
(209, 'auto_update_plugins', 'a:6:{i:0;s:27:"lws-cleaner/lws-cleaner.php";i:1;s:33:"lws-hide-login/lws-hide-login.php";i:2;s:29:"lws-optimize/lws-optimize.php";i:3;s:23:"lws-tools/lws-tools.php";i:4;s:35:"google-site-kit/google-site-kit.php";i:5;s:24:"wordpress-seo/wp-seo.php";}', 'off'),
(210, 'auto_update_themes', 'a:5:{i:0;s:17:"eco-greenest-lite";i:1;s:16:"twentytwentyfive";i:2;s:16:"twentytwentyfour";i:3;s:17:"twentytwentythree";i:4;s:15:"twentytwentytwo";}', 'off'),
(216, 'lws_optimize_cache_statistics', 'a:4:{s:7:"desktop";a:2:{s:6:"amount";i:261;s:4:"size";i:14514935;}s:6:"mobile";a:2:{s:6:"amount";i:7;s:4:"size";i:361734;}s:3:"css";a:2:{s:6:"amount";i:138;s:4:"size";i:1375515;}s:2:"js";a:2:{s:6:"amount";i:92;s:4:"size";i:690115;}}', 'auto'),
(218, 'googlesitekit_db_version', '1.163.0', 'auto'),
(251, 'can_compress_scripts', '0', 'on'),
(252, 'lws_aff_new_login', 'oleiculteur', 'auto'),
(256, 'googlesitekit_has_connected_admins', '0', 'auto'),
(297, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(298, 'category_children', 'a:0:{}', 'auto'),
(300, 'wpcf7', 'a:2:{s:7:"version";s:5:"6.1.5";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1770589451;s:7:"version";s:5:"6.1.5";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'auto'),
(301, 'elementor_active_kit', '1890', 'auto'),
(302, 'elementor_font_display', 'swap', 'auto'),
(306, 'elementor_landing_pages_activation', '0', 'auto'),
(307, 'elementor_checklist', '{"last_opened_timestamp":null,"first_closed_checklist_in_editor":false,"is_popup_minimized":false,"steps":{"add_logo":{"is_marked_completed":false,"is_immutable_completed":false},"set_fonts_and_colors":{"is_marked_completed":false,"is_immutable_completed":false},"create_pages":{"is_marked_completed":false,"is_immutable_completed":false},"setup_header":{"is_marked_completed":false,"is_immutable_completed":false},"assign_homepage":{"is_marked_completed":false,"is_immutable_completed":false}},"should_open_in_editor":false}', 'auto'),
(308, 'elementor_version', '3.35.3', 'auto'),
(309, 'elementor_install_history', 'a:1:{s:6:"3.35.3";i:1770589457;}', 'auto'),
(310, 'elementor_events_db_version', '1.0.0', 'off'),
(311, '_elementor_ab_testing_data', 'a:2:{s:7:"timeout";i:1770596657;s:5:"value";s:273:"[{"coreOnboarding":{"emphasizeConnectBenefits101":false,"embedConnectInOnboarding102":false,"onboardingStartsWithLogin103":false,"offerThemeChoicesHelloBiz201":true,"emphasizeThemeValueAudience202":false,"updateCopyVisuals401":false,"reduceHierarchyBlankOption402":false}}]";}', 'off'),
(312, 'elementor_onboarded', '1', 'auto'),
(313, '_elementor_installed_time', '1770589481', 'auto'),
(314, 'elementor_connect_site_key', '5c48e33511e51ad159a1bfe7d48bdfc2', 'auto'),
(315, 'elementor_remote_info_feed_data', 'a:3:{i:0;a:5:{s:5:"title";s:79:"Introducing Elementor 3.33: Variables Manager, Custom CSS, Blend Modes, & more!";s:7:"excerpt";s:340:"Elementor 3.33 builds on the foundation of Editor V4, continuing our mission to create a faster, more scalable, and more intuitive design experience for Web Creators. With the addition of the Variables Manager, element-level Custom CSS, Background Clipping, and Blend Modes, designers have more creative precision and consistency than ever.";s:7:"created";i:1762944115;s:5:"badge";s:3:"NEW";s:3:"url";s:145:"https://elementor.com/blog/elementor-333-v4-variables-manager-custom-css/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed";}i:1;a:5:{s:5:"title";s:76:"Introducing Elementor 3.32: Transitions, Transform, Size Variables, and More";s:7:"excerpt";s:250:"Elementor 3.32 is here, accelerating Editor V4 Alpha with transform controls and layered transitions, system-wide Size Variables and streamlined class management. This release empowers you to build more consistent, dynamic, and professional websites.";s:7:"created";i:1759243152;s:5:"badge";s:3:"NEW";s:3:"url";s:138:"https://elementor.com/blog/elementor-332-v4-transform-transitions/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed";}i:2;a:5:{s:5:"title";s:70:"Introducing Elementor 3.31: New Editor V4 Variables, Filters, and More";s:7:"excerpt";s:294:"Elementor 3.31 is here, pushing Editor V4 forward with powerful design system enhancements and modern visual styling tools. From Variables and Filters to smarter editing workflows and semantic markup, this version makes it easier than ever to design beautiful, performant, and accessible sites.";s:7:"created";i:1755094220;s:5:"badge";s:3:"NEW";s:3:"url";s:140:"https://elementor.com/blog/elementor-331-v4-alpha-variables-filters/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed";}}', 'off'),
(324, '_elementor_home_screen_data', 'a:2:{s:7:"timeout";i:1770596701;s:5:"value";s:12470:"{"top_with_licences":[{"license":["free"],"title_small":"Hi!","title":"Unleash your imagination with Elementor","description":"Start building your website with Elementor\'s no code drag & drop editor.","button_create_page_title":"Create a Page","button_watch_title":"Watch a guide","button_watch_url":"https:\\/\\/www.youtube.com\\/watch?v=le72grP_Q6k&t=1s","youtube_embed_id":"le72grP_Q6k?si=g2akyWNODL6usu6u"},{"license":["pro"],"title_small":"Hi!","title":"Unleash your imagination with Elementor","description":"Now you\'ve got all the tools to start creating professional, high-performing websites - and that journey begins by creating your first page.","button_create_page_title":"Create a Page","button_watch_title":"Watch a guide","button_watch_url":"https:\\/\\/www.youtube.com\\/watch?v=QdkDGrS8ZZs","youtube_embed_id":"QdkDGrS8ZZs?si=s_VjZCQR6Fh1jgB5"},{"license":["one"],"title_small":"Hi!","title":"Unleash your imagination with Elementor","description":"Now you\'ve got all the tools to start creating professional, high-performing websites - and that journey begins by creating your first page.","button_create_page_title":"Create a Page","button_watch_title":"Watch a guide","button_watch_url":"https:\\/\\/www.youtube.com\\/watch?v=QdkDGrS8ZZs","youtube_embed_id":"QdkDGrS8ZZs?si=s_VjZCQR6Fh1jgB5"}],"get_started":[{"license":["free"],"header":{"title":"Jumpstart your web-creation","description":"These quick actions will get your site airborne with a customized design."},"repeater":[{"title":"Site Settings","title_small":"Customize","url":"","is_relative_url":false,"title_small_color":"text.tertiary","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/site-settings.svg"},{"title":"Site Logo","title_small":"Customize","url":"","is_relative_url":false,"title_small_color":"text.tertiary","tab_id":"settings-site-identity","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/site-logo.svg"},{"title":"Global Colors","title_small":"Customize","url":"","is_relative_url":false,"title_small_color":"text.tertiary","tab_id":"global-colors","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/global-colors.svg"},{"title":"Global Fonts","title_small":"Customize","url":"","is_relative_url":false,"title_small_color":"text.tertiary","tab_id":"global-typography","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/global-fonts.svg"},{"title":"Theme Builder","title_small":"Customize","url":"admin.php?page=elementor-app","is_relative_url":false,"title_small_color":"text.tertiary","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/theme-builder.svg"},{"title":"Popups","title_small":"Customize","url":"edit.php?post_type=elementor_library&page=popup_templates","is_relative_url":true,"title_small_color":"text.tertiary","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/popups.svg"},{"title":"Custom Icons","title_small":"Customize","url":"admin.php?page=elementor_custom_icons","is_relative_url":false,"title_small_color":"text.tertiary","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/custom-icons.svg"},{"title":"Custom Fonts","title_small":"Customize","url":"admin.php?page=elementor_custom_fonts","is_relative_url":true,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/custom-fonts.svg","title_small_color":"text.tertiary"}]},{"license":["pro"],"header":{"title":"Jumpstart your web-creation","description":"These quick actions will get your site airborne with a customized design."},"repeater":[{"title":"Site Settings","title_small":"Customize","url":"","is_relative_url":false,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/site-settings.svg"},{"title":"Site Logo","title_small":"Customize","url":"","is_relative_url":false,"tab_id":"settings-site-identity","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/site-logo.svg"},{"title":"Global Colors","title_small":"Customize","url":"","is_relative_url":false,"tab_id":"global-colors","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/global-colors.svg"},{"title":"Global Fonts","title_small":"Customize","url":"","is_relative_url":false,"tab_id":"global-typography","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/global-fonts.svg"},{"title":"Theme Builder","title_small":"Customize","url":"admin.php?page=elementor-app","is_relative_url":false,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/theme-builder.svg"},{"title":"Popups","title_small":"Customize","url":"edit.php?post_type=elementor_library&tabs_group=popup&elementor_library_type=popup","is_relative_url":true,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/popups.svg"},{"title":"Custom Icons","title_small":"Customize","url":"admin.php?page=elementor_custom_icons","is_relative_url":false,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/custom-icons.svg"},{"title":"Custom Fonts","title_small":"Customize","url":"admin.php?page=elementor_custom_fonts","is_relative_url":true,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/custom-fonts.svg"}]},{"license":["one"],"header":{"title":"Jumpstart your web-creation","description":"These quick actions will get your site airborne with a customized design."},"repeater":[{"title":"Site Settings","title_small":"Customize","url":"","is_relative_url":false,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/site-settings.svg"},{"title":"Site Logo","title_small":"Customize","url":"","is_relative_url":false,"tab_id":"settings-site-identity","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/site-logo.svg"},{"title":"Global Colors","title_small":"Customize","url":"","is_relative_url":false,"tab_id":"global-colors","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/global-colors.svg"},{"title":"Global Fonts","title_small":"Customize","url":"","is_relative_url":false,"tab_id":"global-typography","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/global-fonts.svg"},{"title":"Theme Builder","title_small":"Customize","url":"admin.php?page=elementor-app","is_relative_url":false,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/theme-builder.svg"},{"title":"Popups","title_small":"Customize","url":"edit.php?post_type=elementor_library&tabs_group=popup&elementor_library_type=popup","is_relative_url":true,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/popups.svg"},{"title":"Custom Icons","title_small":"Customize","url":"admin.php?page=elementor_custom_icons","is_relative_url":false,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/custom-icons.svg"},{"title":"Custom Fonts","title_small":"Customize","url":"admin.php?page=elementor_custom_fonts","is_relative_url":true,"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/custom-fonts.svg"}]}],"add_ons":{"hide_section":["free","essential","pro","one"],"header":{"title":"Expand your design toolkit","description":"These plugins, add-ons, and tools, have been selected to streamline your workflow and maximize your creativity."},"repeater":[{"file_path":"pojo-accessibility\\/pojo-accessibility.php","title":"Ally - Web Accessibility. Simplified.","url":"","description":"Make your website more accessible with powerful tools to detect and fix issues, enhance usability, and create a better experience for all visitors.","button_label":"Install","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/ally_logo.svg","type":"wporg"},{"file_path":"site-mailer\\/site-mailer.php","title":"Site Mailer","url":"","description":"Keep your WordPress emails out of the spam folder with improved deliverability and an easy setup\\u2014no need for an SMTP plugin or complicated configurations.","button_label":"Install","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/site-mailer.svg","type":"wporg"},{"file_path":"image-optimization\\/image-optimization.php","title":"Image Optimizer","url":"https:\\/\\/go.elementor.com\\/wp-dash-apps-author-uri-elementor-io\\/","description":"Check out this incredibly useful plugin that will compress and optimize your images, giving you leaner, faster websites.","button_label":"Install","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/image-optimizer.svg","type":"wporg"},{"title":"Elementor AI","url":"https:\\/\\/go.elementor.com\\/wp-dash-apps-author-uri-elementor-ai\\/","description":"Boost creativity with Elementor AI. Craft & enhance copy, create custom CSS & Code, and generate images to elevate your website.","button_label":"Let\'s go","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/elementor.svg","type":"link","condition":{"key":"introduction_meta","value":"ai_get_started"}}],"footer":{"label":"Explore more add-ons","file_path":"wp-admin\\/admin.php?page=elementor-apps"}},"sidebar_promotion_variants":[{"license":["essential"],"is_enabled":"true","type":"banner","data":{"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/essential-upgrade.svg","link":"https:\\/\\/go.elementor.com\\/go-pro-advanced-home-sidebar-upgrade\\/"}},{"license":["free"],"is_enabled":"true","type":"banner","data":{"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/upgrade-free.svg","link":"https:\\/\\/go.elementor.com\\/go-pro-home-sidebar-upgrade\\/"}},{"license":["expired"],"is_enabled":"true","type":"banner","data":{"image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/upgrade-free.svg","link":"https:\\/\\/go.elementor.com\\/go-pro-home-sidebar-expired\\/"}},{"license":["free"],"is_enabled":"false","type":"default","data":{"header":{"title":"Bring your vision to life","description":"Get complete design flexibility for your website with Elementor Pro\'s advanced tools and premium features.","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/update-sidebar.svg"},"cta":{"label":"Upgrade Now","url":"https:\\/\\/go.elementor.com\\/go-pro-home-sidebar-upgrade\\/","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/icon-crown.svg"},"repeater":[{"title":"Popup Builder"},{"title":"Custom Code & CSS"},{"title":"E-commerce Features"},{"title":"Collaborative Notes"},{"title":"Form Submission"},{"title":"Form Integrations"},{"title":"Custom Attributes"},{"title":"Role Manager"}]}},{"license":["pro"],"is_enabled":"false","type":"default","data":{"header":{"title":"Bring your vision to life","description":"Get complete design flexibility for your website with Elementor Pro\'s advanced tools and premium features.","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/update-sidebar.svg"},"cta":{"label":"Upgrade Now","url":"https:\\/\\/go.elementor.com\\/go-pro-home-sidebar-upgrade\\/","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/icon-crown.svg"},"repeater":[{"title":"Popup Builder"},{"title":"Custom Code & CSS"},{"title":"E-commerce Features"},{"title":"Collaborative Notes"},{"title":"Form Submission"},{"title":"Form Integrations"},{"title":"Custom Attributes"},{"title":"Role Manager"}]}},{"license":["one"],"is_enabled":"false","type":"default","data":{"header":{"title":"Bring your vision to life","description":"Get complete design flexibility for your website with Elementor Pro\'s advanced tools and premium features.","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/update-sidebar.svg"},"cta":{"label":"Upgrade Now","url":"https:\\/\\/go.elementor.com\\/go-pro-home-sidebar-upgrade\\/","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/icon-crown.svg"},"repeater":[{"title":"Popup Builder"},{"title":"Custom Code & CSS"},{"title":"E-commerce Features"},{"title":"Collaborative Notes"},{"title":"Form Submission"},{"title":"Form Integrations"},{"title":"Custom Attributes"},{"title":"Role Manager"}]}}],"external_links":[{"label":"Help Center","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/icon-question-mark.svg","url":"https:\\/\\/elementor.com\\/help\\/"},{"label":"Youtube","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/icon-youtube.svg","url":"https:\\/\\/www.youtube.com\\/@Elementor"},{"label":"Facebook Community","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/icon-community.svg","url":"https:\\/\\/www.facebook.com\\/groups\\/Elementors"},{"label":"Blog","image":"https:\\/\\/assets.elementor.com\\/home-screen\\/v1\\/images\\/icon-academic-hat.svg","url":"https:\\/\\/elementor.com\\/blog\\/"}]}";}', 'off'),
(469, 'site_logo', '1923', 'auto'),
(767, 'fs_active_plugins', 'O:8:"stdClass":0:{}', 'auto'),
(768, 'fs_debug_mode', '', 'auto'),
(769, 'fs_accounts', 'a:8:{s:21:"id_slug_type_path_map";a:1:{i:13247;a:3:{s:4:"slug";s:16:"deployer-for-git";s:4:"type";s:6:"plugin";s:4:"path";s:37:"deployer-for-git/deployer-for-git.php";}}s:11:"plugin_data";a:1:{s:16:"deployer-for-git";a:18:{s:19:"last_load_timestamp";i:1770748075;s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:37:"deployer-for-git/deployer-for-git.php";}s:20:"is_network_activated";b:0;s:17:"install_timestamp";i:1770748075;s:17:"was_plugin_loaded";b:1;s:21:"is_plugin_new_install";b:1;s:16:"sdk_last_version";N;s:11:"sdk_version";s:6:"2.13.0";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"1.0.9";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";N;s:4:"host";s:13:"belleolive.fr";s:9:"server_ip";s:9:"127.0.0.1";s:9:"is_active";b:1;s:9:"timestamp";i:1770748075;s:7:"version";s:5:"1.0.9";}s:15:"prev_is_premium";b:0;s:12:"is_anonymous";a:3:{s:2:"is";b:1;s:9:"timestamp";i:1770748094;s:7:"version";s:5:"1.0.9";}s:16:"uninstall_reason";O:8:"stdClass":3:{s:2:"id";s:2:"14";s:4:"info";s:0:"";s:12:"is_anonymous";b:1;}}}s:13:"file_slug_map";a:1:{s:37:"deployer-for-git/deployer-for-git.php";s:16:"deployer-for-git";}s:7:"plugins";a:1:{s:16:"deployer-for-git";O:9:"FS_Plugin":25:{s:2:"id";s:5:"13247";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;s:10:"public_key";s:32:"pk_24e3f32d1fddcf86de310f6883552";s:10:"secret_key";N;s:16:"parent_plugin_id";N;s:5:"title";s:16:"Deployer for Git";s:4:"slug";s:16:"deployer-for-git";s:12:"premium_slug";s:20:"deployer-for-git-pro";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";b:0;s:19:"is_wp_org_compliant";b:1;s:22:"premium_releases_count";N;s:4:"file";s:37:"deployer-for-git/deployer-for-git.php";s:7:"version";s:5:"1.0.9";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:14:"premium_suffix";s:5:"(Pro)";s:7:"is_live";b:1;s:9:"bundle_id";N;s:17:"bundle_public_key";N;s:17:"opt_in_moderation";N;s:11:"_is_updated";b:0;}}s:12:"gc_timestamp";a:0:{}s:10:"theme_data";a:0:{}s:9:"unique_id";s:32:"69e7ff0e18f5198d46ea9c5ab091f10c";s:13:"admin_notices";a:1:{s:16:"deployer-for-git";a:0:{}}}', 'auto'),
(770, 'fs_api_cache', 'a:0:{}', 'off'),
(773, 'deployer_for_git_api_secret', '015f56acf72cb093269a2f8cae6d9dfdb4d42b5e483db56039b6bb1b89c30baf', 'auto'),
(985, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1770842917;}', 'off') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=732 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(13, 9, '_menu_item_type', 'custom'),
(14, 9, '_menu_item_menu_item_parent', '0'),
(15, 9, '_menu_item_object_id', '9'),
(16, 9, '_menu_item_object', 'custom'),
(17, 9, '_menu_item_target', ''),
(18, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 9, '_menu_item_xfn', ''),
(20, 9, '_menu_item_url', 'http://www.gracethemesdemo.com/greenest/'),
(29, 1855, '_wp_attached_file', '2017/07/team1.jpg'),
(30, 1855, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:270;s:6:"height";i:304;s:4:"file";s:17:"2017/07/team1.jpg";s:8:"filesize";i:24867;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:17:"team1-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22765;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"team1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9059;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 1856, '_wp_attached_file', '2017/07/team2.jpg'),
(32, 1856, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:270;s:6:"height";i:304;s:4:"file";s:17:"2017/07/team2.jpg";s:8:"filesize";i:19547;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:17:"team2-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17619;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"team2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7048;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 1857, '_wp_attached_file', '2017/07/team3.jpg'),
(34, 1857, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:270;s:6:"height";i:304;s:4:"file";s:17:"2017/07/team3.jpg";s:8:"filesize";i:23785;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:17:"team3-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21709;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"team3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9027;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 1858, '_wp_attached_file', '2017/07/team4.jpg'),
(36, 1858, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:270;s:6:"height";i:304;s:4:"file";s:17:"2017/07/team4.jpg";s:8:"filesize";i:27738;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:17:"team4-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24895;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"team4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9566;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 1861, '_wp_attached_file', '2019/10/blog_verticle.jpg'),
(38, 1861, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:503;s:6:"height";i:676;s:4:"file";s:25:"2019/10/blog_verticle.jpg";s:8:"filesize";i:167899;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:25:"blog_verticle-223x300.jpg";s:5:"width";i:223;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19017;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"blog_verticle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7394;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 1862, '_wp_attached_file', '2019/10/blogthumb1.jpg'),
(40, 1862, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:366;s:6:"height";i:258;s:4:"file";s:22:"2019/10/blogthumb1.jpg";s:8:"filesize";i:40841;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"blogthumb1-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14725;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blogthumb1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6123;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 1863, '_wp_attached_file', '2019/10/blogthumb2.jpg'),
(42, 1863, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:366;s:6:"height";i:258;s:4:"file";s:22:"2019/10/blogthumb2.jpg";s:8:"filesize";i:50595;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"blogthumb2-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21597;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blogthumb2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9162;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 1864, '_wp_attached_file', '2019/10/blogthumb3.jpg'),
(44, 1864, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:366;s:6:"height";i:258;s:4:"file";s:22:"2019/10/blogthumb3.jpg";s:8:"filesize";i:36447;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"blogthumb3-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15514;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blogthumb3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7139;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 1865, '_wp_attached_file', '2019/10/blogthumb4.jpg'),
(46, 1865, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:366;s:6:"height";i:258;s:4:"file";s:22:"2019/10/blogthumb4.jpg";s:8:"filesize";i:41041;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"blogthumb4-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17676;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blogthumb4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8371;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 1866, '_wp_attached_file', '2019/10/blogthumb5.jpg'),
(48, 1866, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:366;s:6:"height";i:258;s:4:"file";s:22:"2019/10/blogthumb5.jpg";s:8:"filesize";i:48109;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"blogthumb5-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19899;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blogthumb5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8246;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 1867, '_wp_attached_file', '2019/10/blogthumb6.jpg'),
(50, 1867, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:366;s:6:"height";i:258;s:4:"file";s:22:"2019/10/blogthumb6.jpg";s:8:"filesize";i:46851;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"blogthumb6-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19764;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blogthumb6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8343;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 1868, '_wp_attached_file', '2019/10/blogthumb7.jpg'),
(52, 1868, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:366;s:6:"height";i:258;s:4:"file";s:22:"2019/10/blogthumb7.jpg";s:8:"filesize";i:48371;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:22:"blogthumb7-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20463;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blogthumb7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8698;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 1869, '_wp_page_template', 'default'),
(54, 618, '_edit_last', '2'),
(55, 618, '_wp_page_template', 'template-parts/template-full-width.php'),
(56, 725, '_wp_page_template', 'template-full-width.php'),
(57, 725, '_edit_last', '1'),
(58, 732, '_edit_last', '1'),
(59, 732, '_wp_page_template', 'template-full-width.php'),
(60, 741, '_edit_last', '1'),
(61, 741, '_wp_page_template', 'default'),
(62, 790, '_wp_page_template', 'template-full-width.php'),
(63, 790, '_edit_last', '1'),
(64, 1870, '_menu_item_type', 'post_type'),
(65, 1870, '_menu_item_menu_item_parent', '0'),
(66, 1870, '_menu_item_object_id', '732'),
(67, 1870, '_menu_item_object', 'page'),
(68, 1870, '_menu_item_target', ''),
(69, 1870, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 1870, '_menu_item_xfn', ''),
(71, 1870, '_menu_item_url', ''),
(72, 1871, '_menu_item_type', 'post_type'),
(73, 1871, '_menu_item_menu_item_parent', '0'),
(74, 1871, '_menu_item_object_id', '790'),
(75, 1871, '_menu_item_object', 'page'),
(76, 1871, '_menu_item_target', ''),
(77, 1871, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 1871, '_menu_item_xfn', ''),
(79, 1871, '_menu_item_url', ''),
(80, 1872, '_menu_item_type', 'post_type'),
(81, 1872, '_menu_item_menu_item_parent', '0'),
(82, 1872, '_menu_item_object_id', '618'),
(83, 1872, '_menu_item_object', 'page'),
(84, 1872, '_menu_item_target', ''),
(85, 1872, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 1872, '_menu_item_xfn', ''),
(87, 1872, '_menu_item_url', ''),
(88, 1873, '_menu_item_type', 'post_type'),
(89, 1873, '_menu_item_menu_item_parent', '1935'),
(90, 1873, '_menu_item_object_id', '725'),
(91, 1873, '_menu_item_object', 'page'),
(92, 1873, '_menu_item_target', ''),
(93, 1873, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 1873, '_menu_item_xfn', ''),
(95, 1873, '_menu_item_url', ''),
(104, 795, '_wp_page_template', 'default'),
(105, 795, '_edit_last', '1'),
(106, 797, '_wp_page_template', 'default'),
(107, 797, '_edit_last', '2'),
(108, 798, '_wp_page_template', 'default'),
(109, 798, '_edit_last', '2'),
(110, 799, '_wp_page_template', 'default'),
(111, 799, '_edit_last', '2'),
(112, 807, '_wp_page_template', 'default'),
(113, 807, '_edit_last', '2'),
(114, 812, '_wp_page_template', 'default'),
(115, 812, '_edit_last', '2'),
(116, 815, '_wp_page_template', 'default'),
(117, 815, '_edit_last', '2'),
(118, 817, '_wp_page_template', 'default'),
(119, 817, '_edit_last', '2'),
(120, 820, '_wp_page_template', 'default'),
(121, 820, '_edit_last', '2'),
(122, 820, '_edit_last', '2'),
(123, 820, '_wp_page_template', 'default'),
(124, 835, '_edit_last', '1'),
(125, 835, '_wp_page_template', 'default'),
(126, 935, '_edit_last', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(127, 935, '_wp_page_template', 'default'),
(128, 1432, '_edit_last', '2'),
(129, 1432, '_wp_old_slug', 'etiam-non-tortor-non-lorem-pulvinar-rhoncus-vitae-a-justo-vivamus-auctor-nisi-massa'),
(130, 1432, '_wp_old_slug', 'etiam-non-tortor-non-lorem-pulvinar-rhoncus-vitaeivamus-auctor-nisi-massa'),
(131, 1432, '_wp_old_slug', 'etiam-non-tortor-non-lorem-pulvinar-rhoncus-auctor-nisi-massa'),
(132, 1432, '_thumbnail_id', '1865'),
(133, 1436, '_edit_last', '2'),
(134, 1436, '_wp_old_slug', 'fusce-faucibus-sed-leo-nec-ultrices-etiam-nec-ex-vitae-ligula-porttitor-imperdiet-imrdiet-eget-leo'),
(135, 1436, '_wp_old_slug', 'fusce-faucibus-sed-leo-nec-ultrices-etiam-imperdiet-imrdiet-eget-leo'),
(136, 1436, '_thumbnail_id', '1867'),
(137, 1438, '_edit_last', '2'),
(138, 1438, '_wp_old_slug', 'fusce-faucibus-sed-leo-nec-ultrices-etiamnec-ex-vitae-ligula-porttitor-imperdiet-imrdiet-eget'),
(139, 1438, '_wp_old_slug', 'fusce-faucibus-sed-leo-nec-ultrices-etiamnec-ex-vitae-ligula-eget'),
(140, 1438, '_thumbnail_id', '1868'),
(141, 1440, '_edit_last', '2'),
(142, 1440, '_wp_old_slug', 'interdum-et-malesuada-fames-ac-ante-ipsum-primis-in-faucibus-vivamus-fring-purante-non-viverra-est-accumsan-quis'),
(143, 1440, '_wp_old_slug', 'interdum-et-malesuada-fames-ac-ante-faucibus-vivamus-fring-purante'),
(144, 1440, '_thumbnail_id', '1863'),
(145, 1766, '_thumbnail_id', '1862'),
(146, 1768, '_thumbnail_id', '1861'),
(147, 1768, '_edit_last', '2'),
(148, 1768, '_wp_old_slug', 'interdum-et-malesuada-fames-ac-ante-ipsum-primis'),
(149, 1768, '_wp_old_slug', 'interdum-et-malesuada-fames-ac-ante-ipsum-primis-ipsum-primis-in-faucibus'),
(174, 1878, '_menu_item_type', 'post_type'),
(175, 1878, '_menu_item_menu_item_parent', '0'),
(176, 1878, '_menu_item_object_id', '732'),
(177, 1878, '_menu_item_object', 'page'),
(178, 1878, '_menu_item_target', ''),
(179, 1878, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(180, 1878, '_menu_item_xfn', ''),
(181, 1878, '_menu_item_url', ''),
(254, 1888, '_menu_item_type', 'post_type'),
(255, 1888, '_menu_item_menu_item_parent', '0'),
(256, 1888, '_menu_item_object_id', '795'),
(257, 1888, '_menu_item_object', 'page'),
(258, 1888, '_menu_item_target', ''),
(259, 1888, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 1888, '_menu_item_xfn', ''),
(261, 1888, '_menu_item_url', ''),
(262, 1889, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit "Submit"]'),
(263, 1889, '_mail', 'a:8:{s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:39:"[_site_title] <wordpress@belleolive.fr>";s:4:"body";s:191:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).";s:9:"recipient";s:19:"[_site_admin_email]";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(264, 1889, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:39:"[_site_title] <wordpress@belleolive.fr>";s:4:"body";s:220:"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(265, 1889, '_messages', 'a:12:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";}'),
(266, 1889, '_additional_settings', ''),
(267, 1889, '_locale', 'en_US'),
(268, 1889, '_hash', '21d892c73e4bce2c2cc42a767d432f77aa2c76667d747b4be6655b53fc900e46'),
(269, 1890, '_elementor_edit_mode', 'builder'),
(270, 1890, '_elementor_template_type', 'kit'),
(272, 1891, '_customize_restore_dismissed', '1'),
(273, 1892, '_edit_lock', '1770590822:1'),
(274, 1892, '_wp_trash_meta_status', 'publish'),
(275, 1892, '_wp_trash_meta_time', '1770590853'),
(276, 1893, '_edit_lock', '1770662936:1'),
(277, 1893, '_wp_trash_meta_status', 'publish'),
(278, 1893, '_wp_trash_meta_time', '1770662958'),
(279, 1894, '_edit_lock', '1770663058:1'),
(280, 1894, '_wp_trash_meta_status', 'publish'),
(281, 1894, '_wp_trash_meta_time', '1770663072'),
(282, 1895, '_edit_lock', '1770672892:1'),
(283, 1895, '_wp_trash_meta_status', 'publish'),
(284, 1895, '_wp_trash_meta_time', '1770672893'),
(285, 1896, '_edit_lock', '1770673252:1'),
(286, 1897, '_wp_attached_file', '2026/02/arbreOlivSolo.png'),
(287, 1897, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1450;s:6:"height";i:1450;s:4:"file";s:25:"2026/02/arbreOlivSolo.png";s:8:"filesize";i:1167036;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:25:"arbreOlivSolo-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:120025;}s:5:"large";a:5:{s:4:"file";s:27:"arbreOlivSolo-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:850951;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"arbreOlivSolo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:36032;}s:12:"medium_large";a:5:{s:4:"file";s:25:"arbreOlivSolo-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:549728;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(288, 1897, '_wp_attachment_image_alt', 'Arbre d\'Olivier'),
(289, 1898, '_wp_attachment_image_alt', 'Arbre d\'Olivier'),
(290, 1898, '_wp_attached_file', '2026/02/cropped-arbreOlivSolo.png'),
(291, 1898, '_wp_attachment_context', 'custom-logo'),
(292, 1898, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:130;s:4:"file";s:33:"2026/02/cropped-arbreOlivSolo.png";s:8:"filesize";i:54648;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:33:"cropped-arbreOlivSolo-150x130.png";s:5:"width";i:150;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:32456;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(293, 1896, '_wp_trash_meta_status', 'publish'),
(294, 1896, '_wp_trash_meta_time', '1770673259'),
(295, 1899, '_wp_attachment_image_alt', 'Arbre d\'Olivier'),
(296, 1899, '_wp_attached_file', '2026/02/cropped-arbreOlivSolo-1.png'),
(297, 1899, '_wp_attachment_context', 'custom-header'),
(298, 1899, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1400;s:6:"height";i:200;s:4:"file";s:35:"2026/02/cropped-arbreOlivSolo-1.png";s:8:"filesize";i:247964;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:34:"cropped-arbreOlivSolo-1-300x43.png";s:5:"width";i:300;s:6:"height";i:43;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:22701;}s:5:"large";a:5:{s:4:"file";s:36:"cropped-arbreOlivSolo-1-1024x146.png";s:5:"width";i:1024;s:6:"height";i:146;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:162035;}s:9:"thumbnail";a:5:{s:4:"file";s:35:"cropped-arbreOlivSolo-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:22972;}s:12:"medium_large";a:5:{s:4:"file";s:35:"cropped-arbreOlivSolo-1-768x110.png";s:5:"width";i:768;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:104020;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:1897;}'),
(299, 1899, '_wp_attachment_custom_header_last_used_eco-greenest-lite', '1770673317'),
(300, 1899, '_wp_attachment_is_custom_header', 'eco-greenest-lite'),
(301, 1900, '_edit_lock', '1770673915:1'),
(302, 1901, '_wp_attached_file', '2026/02/3_arbreOlivDesign.png'),
(303, 1901, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2005;s:6:"height";i:1930;s:4:"file";s:29:"2026/02/3_arbreOlivDesign.png";s:8:"filesize";i:1311786;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:29:"3_arbreOlivDesign-300x289.png";s:5:"width";i:300;s:6:"height";i:289;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:92144;}s:5:"large";a:5:{s:4:"file";s:30:"3_arbreOlivDesign-1024x986.png";s:5:"width";i:1024;s:6:"height";i:986;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:675685;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"3_arbreOlivDesign-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:30042;}s:12:"medium_large";a:5:{s:4:"file";s:29:"3_arbreOlivDesign-768x739.png";s:5:"width";i:768;s:6:"height";i:739;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:434093;}s:9:"1536x1536";a:5:{s:4:"file";s:31:"3_arbreOlivDesign-1536x1479.png";s:5:"width";i:1536;s:6:"height";i:1479;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1220959;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(304, 1901, '_wp_attachment_image_alt', 'Arbre Olivier Logo'),
(305, 1900, '_wp_trash_meta_status', 'publish'),
(306, 1900, '_wp_trash_meta_time', '1770673921'),
(307, 1902, '_wp_attachment_image_alt', 'Arbre Olivier Logo'),
(308, 1902, '_wp_attached_file', '2026/02/cropped-3_arbreOlivDesign.png'),
(309, 1902, '_wp_attachment_context', 'custom-logo'),
(310, 1902, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:240;s:4:"file";s:37:"2026/02/cropped-3_arbreOlivDesign.png";s:8:"filesize";i:67577;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:37:"cropped-3_arbreOlivDesign-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:30357;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(311, 1903, '_edit_lock', '1770675323:1'),
(312, 1904, '_wp_attached_file', '2026/02/4_logoWebsite-scaled.png'),
(313, 1904, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:853;s:4:"file";s:32:"2026/02/4_logoWebsite-scaled.png";s:8:"filesize";i:653773;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:25:"4_logoWebsite-300x100.png";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:21920;}s:5:"large";a:5:{s:4:"file";s:26:"4_logoWebsite-1024x341.png";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:162053;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"4_logoWebsite-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:8450;}s:12:"medium_large";a:5:{s:4:"file";s:25:"4_logoWebsite-768x256.png";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:105664;}s:9:"1536x1536";a:5:{s:4:"file";s:26:"4_logoWebsite-1536x512.png";s:5:"width";i:1536;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:305625;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"4_logoWebsite-2048x683.png";s:5:"width";i:2048;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:475913;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:17:"4_logoWebsite.png";}'),
(314, 1904, '_wp_attachment_image_alt', 'Logo Arbre Olivier'),
(315, 1905, '_wp_attached_file', '2026/02/4_logoWebsite-1-scaled.png'),
(316, 1905, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:853;s:4:"file";s:34:"2026/02/4_logoWebsite-1-scaled.png";s:8:"filesize";i:653722;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:27:"4_logoWebsite-1-300x100.png";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:21873;}s:5:"large";a:5:{s:4:"file";s:28:"4_logoWebsite-1-1024x341.png";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:162100;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"4_logoWebsite-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10103;}s:12:"medium_large";a:5:{s:4:"file";s:27:"4_logoWebsite-1-768x256.png";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:105501;}s:9:"1536x1536";a:5:{s:4:"file";s:28:"4_logoWebsite-1-1536x512.png";s:5:"width";i:1536;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:305378;}s:9:"2048x2048";a:5:{s:4:"file";s:28:"4_logoWebsite-1-2048x683.png";s:5:"width";i:2048;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:475997;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:19:"4_logoWebsite-1.png";}'),
(317, 1905, '_wp_attachment_image_alt', 'Logo Arbre Olivier'),
(318, 1906, '_wp_attachment_image_alt', 'Logo Arbre Olivier'),
(319, 1906, '_wp_attached_file', '2026/02/cropped-4_logoWebsite-1-scaled-1.png'),
(320, 1906, '_wp_attachment_context', 'custom-logo'),
(321, 1906, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:99;s:4:"file";s:44:"2026/02/cropped-4_logoWebsite-1-scaled-1.png";s:8:"filesize";i:25058;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:43:"cropped-4_logoWebsite-1-scaled-1-150x99.png";s:5:"width";i:150;s:6:"height";i:99;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12412;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(322, 1903, '_wp_trash_meta_status', 'publish'),
(323, 1903, '_wp_trash_meta_time', '1770675364') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(324, 1907, '_wp_attachment_image_alt', 'Arbre d\'Olivier'),
(325, 1907, '_wp_attached_file', '2026/02/cropped-arbreOlivSolo-2.png'),
(326, 1907, '_wp_attachment_context', 'site-icon'),
(327, 1907, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:35:"2026/02/cropped-arbreOlivSolo-2.png";s:8:"filesize";i:290057;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:35:"cropped-arbreOlivSolo-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:120861;}s:9:"thumbnail";a:5:{s:4:"file";s:35:"cropped-arbreOlivSolo-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:36048;}s:13:"site_icon-270";a:5:{s:4:"file";s:35:"cropped-arbreOlivSolo-2-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:100894;}s:13:"site_icon-192";a:5:{s:4:"file";s:35:"cropped-arbreOlivSolo-2-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:55631;}s:13:"site_icon-180";a:5:{s:4:"file";s:35:"cropped-arbreOlivSolo-2-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:49734;}s:12:"site_icon-32";a:5:{s:4:"file";s:33:"cropped-arbreOlivSolo-2-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1537;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(328, 1908, '_wp_trash_meta_status', 'publish'),
(329, 1908, '_wp_trash_meta_time', '1770675607'),
(330, 1909, '_wp_attached_file', '2026/02/Black.png'),
(331, 1909, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1450;s:6:"height";i:1450;s:4:"file";s:17:"2026/02/Black.png";s:8:"filesize";i:1283564;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:17:"Black-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:143812;}s:5:"large";a:5:{s:4:"file";s:19:"Black-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1058930;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"Black-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:42507;}s:12:"medium_large";a:5:{s:4:"file";s:17:"Black-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:679603;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(332, 1910, '_wp_attached_file', '2026/02/cropped-Black.png'),
(333, 1910, '_wp_attachment_context', 'site-icon'),
(334, 1910, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:25:"2026/02/cropped-Black.png";s:8:"filesize";i:352686;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:25:"cropped-Black-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:141311;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"cropped-Black-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:41780;}s:13:"site_icon-270";a:5:{s:4:"file";s:25:"cropped-Black-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:117975;}s:13:"site_icon-192";a:5:{s:4:"file";s:25:"cropped-Black-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:64719;}s:13:"site_icon-180";a:5:{s:4:"file";s:25:"cropped-Black-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:57849;}s:12:"site_icon-32";a:5:{s:4:"file";s:23:"cropped-Black-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:2512;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(335, 1911, '_wp_trash_meta_status', 'publish'),
(336, 1911, '_wp_trash_meta_time', '1770675671'),
(337, 1912, '_wp_attached_file', '2026/02/logoSoloTransparent.png'),
(338, 1912, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1450;s:6:"height";i:1450;s:4:"file";s:31:"2026/02/logoSoloTransparent.png";s:8:"filesize";i:798297;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:31:"logoSoloTransparent-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:95731;}s:5:"large";a:5:{s:4:"file";s:33:"logoSoloTransparent-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:712218;}s:9:"thumbnail";a:5:{s:4:"file";s:31:"logoSoloTransparent-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27361;}s:12:"medium_large";a:5:{s:4:"file";s:31:"logoSoloTransparent-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:463795;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(339, 1912, '_wp_attachment_image_alt', 'Logo Arbre d\'Olivier Trans'),
(340, 1913, '_wp_attachment_image_alt', 'Logo Arbre d\'Olivier Trans'),
(341, 1913, '_wp_attached_file', '2026/02/cropped-logoSoloTransparent.png'),
(342, 1913, '_wp_attachment_context', 'site-icon'),
(343, 1913, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:39:"2026/02/cropped-logoSoloTransparent.png";s:8:"filesize";i:241581;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:39:"cropped-logoSoloTransparent-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:92624;}s:9:"thumbnail";a:5:{s:4:"file";s:39:"cropped-logoSoloTransparent-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:26254;}s:13:"site_icon-270";a:5:{s:4:"file";s:39:"cropped-logoSoloTransparent-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:76397;}s:13:"site_icon-192";a:5:{s:4:"file";s:39:"cropped-logoSoloTransparent-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:41089;}s:13:"site_icon-180";a:5:{s:4:"file";s:39:"cropped-logoSoloTransparent-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:36443;}s:12:"site_icon-32";a:5:{s:4:"file";s:37:"cropped-logoSoloTransparent-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1732;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(344, 1914, '_wp_trash_meta_status', 'publish'),
(345, 1914, '_wp_trash_meta_time', '1770675805'),
(346, 1915, '_wp_attached_file', '2026/02/4_logoWebsite-2-scaled.png'),
(347, 1915, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:853;s:4:"file";s:34:"2026/02/4_logoWebsite-2-scaled.png";s:8:"filesize";i:603854;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:27:"4_logoWebsite-2-300x100.png";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:18274;}s:5:"large";a:5:{s:4:"file";s:28:"4_logoWebsite-2-1024x341.png";s:5:"width";i:1024;s:6:"height";i:341;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:141973;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"4_logoWebsite-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5280;}s:12:"medium_large";a:5:{s:4:"file";s:27:"4_logoWebsite-2-768x256.png";s:5:"width";i:768;s:6:"height";i:256;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:89940;}s:9:"1536x1536";a:5:{s:4:"file";s:28:"4_logoWebsite-2-1536x512.png";s:5:"width";i:1536;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:274981;}s:9:"2048x2048";a:5:{s:4:"file";s:28:"4_logoWebsite-2-2048x683.png";s:5:"width";i:2048;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:433683;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:19:"4_logoWebsite-2.png";}'),
(348, 1915, '_wp_attachment_image_alt', 'Logo Banner Arbre Olivier et Titre'),
(349, 1916, '_wp_attachment_image_alt', 'Logo Banner Arbre Olivier et Titre'),
(350, 1916, '_wp_attached_file', '2026/02/cropped-4_logoWebsite-2-scaled-1.png'),
(351, 1916, '_wp_attachment_context', 'custom-logo'),
(352, 1916, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:99;s:4:"file";s:44:"2026/02/cropped-4_logoWebsite-2-scaled-1.png";s:8:"filesize";i:19208;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:43:"cropped-4_logoWebsite-2-scaled-1-150x99.png";s:5:"width";i:150;s:6:"height";i:99;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:9407;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(353, 1917, '_wp_trash_meta_status', 'publish'),
(354, 1917, '_wp_trash_meta_time', '1770676367'),
(355, 1918, '_wp_attached_file', '2026/02/4_logoWebsite-3-scaled.png'),
(356, 1918, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:939;s:4:"file";s:34:"2026/02/4_logoWebsite-3-scaled.png";s:8:"filesize";i:706749;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:27:"4_logoWebsite-3-300x110.png";s:5:"width";i:300;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:24257;}s:5:"large";a:5:{s:4:"file";s:28:"4_logoWebsite-3-1024x376.png";s:5:"width";i:1024;s:6:"height";i:376;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:168522;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"4_logoWebsite-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:6042;}s:12:"medium_large";a:5:{s:4:"file";s:27:"4_logoWebsite-3-768x282.png";s:5:"width";i:768;s:6:"height";i:282;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:106560;}s:9:"1536x1536";a:5:{s:4:"file";s:28:"4_logoWebsite-3-1536x564.png";s:5:"width";i:1536;s:6:"height";i:564;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:324541;}s:9:"2048x2048";a:5:{s:4:"file";s:28:"4_logoWebsite-3-2048x752.png";s:5:"width";i:2048;s:6:"height";i:752;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:507845;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:19:"4_logoWebsite-3.png";}'),
(357, 1918, '_wp_attachment_image_alt', 'Logo Banner Arbre Olivier et Titre'),
(358, 1919, '_wp_attached_file', '2026/02/4_logoWebsite-4-scaled.png'),
(359, 1919, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1004;s:4:"file";s:34:"2026/02/4_logoWebsite-4-scaled.png";s:8:"filesize";i:779286;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:27:"4_logoWebsite-4-300x118.png";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27158;}s:5:"large";a:5:{s:4:"file";s:28:"4_logoWebsite-4-1024x402.png";s:5:"width";i:1024;s:6:"height";i:402;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:187789;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"4_logoWebsite-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7078;}s:12:"medium_large";a:5:{s:4:"file";s:27:"4_logoWebsite-4-768x301.png";s:5:"width";i:768;s:6:"height";i:301;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:117139;}s:9:"1536x1536";a:5:{s:4:"file";s:28:"4_logoWebsite-4-1536x602.png";s:5:"width";i:1536;s:6:"height";i:602;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:354665;}s:9:"2048x2048";a:5:{s:4:"file";s:28:"4_logoWebsite-4-2048x803.png";s:5:"width";i:2048;s:6:"height";i:803;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:561226;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:19:"4_logoWebsite-4.png";}'),
(360, 1919, '_wp_attachment_image_alt', 'Logo Banner Arbre Olivier et Titre'),
(361, 1920, '_wp_attachment_image_alt', 'Logo Banner Arbre Olivier et Titre'),
(362, 1920, '_wp_attached_file', '2026/02/cropped-4_logoWebsite-4-scaled-1.png'),
(363, 1920, '_wp_attachment_context', 'custom-logo'),
(364, 1920, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:99;s:4:"file";s:44:"2026/02/cropped-4_logoWebsite-4-scaled-1.png";s:8:"filesize";i:21056;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:43:"cropped-4_logoWebsite-4-scaled-1-150x99.png";s:5:"width";i:150;s:6:"height";i:99;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10125;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(365, 1921, '_wp_trash_meta_status', 'publish'),
(366, 1921, '_wp_trash_meta_time', '1770676847'),
(367, 1922, '_wp_attached_file', '2026/02/4_logoWebsite-5-scaled.png'),
(368, 1922, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1004;s:4:"file";s:34:"2026/02/4_logoWebsite-5-scaled.png";s:8:"filesize";i:774999;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:27:"4_logoWebsite-5-300x118.png";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27261;}s:5:"large";a:5:{s:4:"file";s:28:"4_logoWebsite-5-1024x402.png";s:5:"width";i:1024;s:6:"height";i:402;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:187534;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"4_logoWebsite-5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7128;}s:12:"medium_large";a:5:{s:4:"file";s:27:"4_logoWebsite-5-768x301.png";s:5:"width";i:768;s:6:"height";i:301;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:116720;}s:9:"1536x1536";a:5:{s:4:"file";s:28:"4_logoWebsite-5-1536x602.png";s:5:"width";i:1536;s:6:"height";i:602;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:353321;}s:9:"2048x2048";a:5:{s:4:"file";s:28:"4_logoWebsite-5-2048x803.png";s:5:"width";i:2048;s:6:"height";i:803;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:558755;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:19:"4_logoWebsite-5.png";}'),
(369, 1922, '_wp_attachment_image_alt', 'Logo Banner Arbre Olivier et Titre'),
(370, 1923, '_wp_attachment_image_alt', 'Logo Banner Arbre Olivier et Titre'),
(371, 1923, '_wp_attached_file', '2026/02/cropped-4_logoWebsite-5-scaled-1.png'),
(372, 1923, '_wp_attachment_context', 'custom-logo'),
(373, 1923, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:250;s:6:"height";i:99;s:4:"file";s:44:"2026/02/cropped-4_logoWebsite-5-scaled-1.png";s:8:"filesize";i:20638;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:43:"cropped-4_logoWebsite-5-scaled-1-150x99.png";s:5:"width";i:150;s:6:"height";i:99;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:9822;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(374, 1924, '_wp_trash_meta_status', 'publish'),
(375, 1924, '_wp_trash_meta_time', '1770676988'),
(376, 1925, '_edit_lock', '1770677145:1'),
(378, 1925, '_wp_trash_meta_status', 'publish'),
(379, 1925, '_wp_trash_meta_time', '1770677147'),
(380, 1926, '_edit_lock', '1770677239:1'),
(382, 1926, '_wp_trash_meta_status', 'publish'),
(383, 1926, '_wp_trash_meta_time', '1770677270'),
(384, 1927, '_edit_lock', '1770709542:1'),
(386, 1870, '_wp_old_date', '2026-02-08'),
(390, 1873, '_wp_old_date', '2026-02-08'),
(392, 1927, '_wp_trash_meta_status', 'publish'),
(393, 1927, '_wp_trash_meta_time', '1770709552'),
(394, 790, '_edit_lock', '1770738495:1'),
(397, 790, '_yoast_wpseo_content_score', '60'),
(398, 790, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(402, 1932, '_wp_attached_file', '2026/02/20251109_163140-1-scaled.jpg'),
(403, 1932, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1205;s:4:"file";s:36:"2026/02/20251109_163140-1-scaled.jpg";s:8:"filesize";i:502585;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:29:"20251109_163140-1-300x141.jpg";s:5:"width";i:300;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11608;}s:5:"large";a:5:{s:4:"file";s:30:"20251109_163140-1-1024x482.jpg";s:5:"width";i:1024;s:6:"height";i:482;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:106978;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"20251109_163140-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6944;}s:12:"medium_large";a:5:{s:4:"file";s:29:"20251109_163140-1-768x362.jpg";s:5:"width";i:768;s:6:"height";i:362;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:63408;}s:9:"1536x1536";a:5:{s:4:"file";s:30:"20251109_163140-1-1536x723.jpg";s:5:"width";i:1536;s:6:"height";i:723;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:218355;}s:9:"2048x2048";a:5:{s:4:"file";s:30:"20251109_163140-1-2048x964.jpg";s:5:"width";i:2048;s:6:"height";i:964;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:351835;}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:10:"Galaxy A16";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1762705900";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.98";s:3:"iso";s:2:"20";s:13:"shutter_speed";s:8:"0.001902";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:21:"20251109_163140-1.jpg";}'),
(404, 1932, '_wp_attachment_image_alt', 'Field Olive Grove Preview'),
(405, 790, '_thumbnail_id', '1960'),
(406, 1933, '_edit_lock', '1770726763:1'),
(407, 1581, '_edit_lock', '1770841077:1'),
(408, 1581, '_edit_last', '1'),
(409, 1581, '_yoast_wpseo_content_score', '60'),
(410, 1581, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(411, 1935, '_menu_item_type', 'post_type'),
(412, 1935, '_menu_item_menu_item_parent', '0'),
(413, 1935, '_menu_item_object_id', '795'),
(414, 1935, '_menu_item_object', 'page'),
(415, 1935, '_menu_item_target', ''),
(416, 1935, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(417, 1935, '_menu_item_xfn', ''),
(418, 1935, '_menu_item_url', ''),
(435, 1933, '_wp_trash_meta_status', 'publish'),
(436, 1933, '_wp_trash_meta_time', '1770726777'),
(437, 1938, '_edit_lock', '1770726882:1'),
(438, 1939, '_menu_item_type', 'post_type'),
(439, 1939, '_menu_item_menu_item_parent', '0'),
(440, 1939, '_menu_item_object_id', '1581'),
(441, 1939, '_menu_item_object', 'page'),
(442, 1939, '_menu_item_target', ''),
(443, 1939, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(444, 1939, '_menu_item_xfn', ''),
(445, 1939, '_menu_item_url', ''),
(446, 1938, '_wp_trash_meta_status', 'publish'),
(447, 1938, '_wp_trash_meta_time', '1770726903'),
(448, 1942, '_edit_lock', '1770728627:1'),
(449, 725, '_edit_lock', '1770841064:1'),
(451, 725, '_thumbnail_id', '1932'),
(452, 725, '_yoast_wpseo_content_score', '90') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(453, 725, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(454, 1942, '_customize_restore_dismissed', '1'),
(455, 1945, '_edit_lock', '1770728695:1'),
(457, 1945, '_wp_trash_meta_status', 'publish'),
(458, 1945, '_wp_trash_meta_time', '1770728709'),
(459, 1948, '_wp_attached_file', '2026/02/image1.jpeg'),
(460, 1948, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2016;s:6:"height";i:1512;s:4:"file";s:19:"2026/02/image1.jpeg";s:8:"filesize";i:1814378;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:19:"image1-300x225.jpeg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53346;}s:5:"large";a:5:{s:4:"file";s:20:"image1-1024x768.jpeg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:312088;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"image1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37882;}s:12:"medium_large";a:5:{s:4:"file";s:19:"image1-768x576.jpeg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:185609;}s:9:"1536x1536";a:5:{s:4:"file";s:21:"image1-1536x1152.jpeg";s:5:"width";i:1536;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:657230;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(461, 1948, '_wp_attachment_image_alt', 'Sal&Oliv'),
(463, 1581, '_thumbnail_id', '2046'),
(464, 1581, '_wp_page_template', 'template-full-width.php'),
(467, 1955, '_edit_lock', '1770742756:1'),
(468, 1955, '_edit_last', '1'),
(469, 1955, '_yoast_wpseo_content_score', '90'),
(470, 1955, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(471, 1957, '_edit_lock', '1770737808:1'),
(472, 1955, '_thumbnail_id', '1932'),
(473, 1957, '_wp_trash_meta_status', 'publish'),
(474, 1957, '_wp_trash_meta_time', '1770737825'),
(476, 1960, '_wp_attached_file', '2026/02/oliveraie-scaled.jpg'),
(477, 1960, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1920;s:4:"file";s:28:"2026/02/oliveraie-scaled.jpg";s:8:"filesize";i:943227;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:21:"oliveraie-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:75897;}s:5:"large";a:5:{s:4:"file";s:22:"oliveraie-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:247725;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"oliveraie-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:62573;}s:12:"medium_large";a:5:{s:4:"file";s:21:"oliveraie-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:170302;}s:9:"1536x1536";a:5:{s:4:"file";s:23:"oliveraie-1536x1152.jpg";s:5:"width";i:1536;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:442576;}s:9:"2048x2048";a:5:{s:4:"file";s:23:"oliveraie-2048x1536.jpg";s:5:"width";i:2048;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:677725;}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:10:"Galaxy A16";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1762705890";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.98";s:3:"iso";s:2:"20";s:13:"shutter_speed";s:8:"0.002646";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:13:"oliveraie.jpg";}'),
(478, 1960, '_wp_attachment_image_alt', 'Welcome Field Olive Grove Preview'),
(481, 1965, '_menu_item_type', 'post_type'),
(482, 1965, '_menu_item_menu_item_parent', '0'),
(483, 1965, '_menu_item_object_id', '1955'),
(484, 1965, '_menu_item_object', 'page'),
(485, 1965, '_menu_item_target', ''),
(486, 1965, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(487, 1965, '_menu_item_xfn', ''),
(488, 1965, '_menu_item_url', ''),
(489, 1964, '_wp_trash_meta_status', 'publish'),
(490, 1964, '_wp_trash_meta_time', '1770738475'),
(491, 835, '_edit_lock', '1770840580:1'),
(492, 935, '_edit_lock', '1770840618:1'),
(493, 797, '_edit_lock', '1770738712:1'),
(494, 798, '_edit_lock', '1770738865:1'),
(495, 1966, '_edit_lock', '1770744725:1'),
(496, 1966, '_edit_last', '1'),
(497, 1966, '_yoast_wpseo_content_score', '90'),
(498, 1966, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(499, 1968, '_wp_attached_file', '2026/02/IMG_20260208_175400-EDIT-scaled.jpg'),
(500, 1968, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1612;s:6:"height";i:2560;s:4:"file";s:43:"2026/02/IMG_20260208_175400-EDIT-scaled.jpg";s:8:"filesize";i:427434;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:36:"IMG_20260208_175400-EDIT-189x300.jpg";s:5:"width";i:189;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12327;}s:5:"large";a:5:{s:4:"file";s:37:"IMG_20260208_175400-EDIT-645x1024.jpg";s:5:"width";i:645;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:82496;}s:9:"thumbnail";a:5:{s:4:"file";s:36:"IMG_20260208_175400-EDIT-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6752;}s:12:"medium_large";a:5:{s:4:"file";s:37:"IMG_20260208_175400-EDIT-768x1219.jpg";s:5:"width";i:768;s:6:"height";i:1219;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:110489;}s:9:"1536x1536";a:5:{s:4:"file";s:37:"IMG_20260208_175400-EDIT-967x1536.jpg";s:5:"width";i:967;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:164959;}s:9:"2048x2048";a:5:{s:4:"file";s:38:"IMG_20260208_175400-EDIT-1290x2048.jpg";s:5:"width";i:1290;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:279035;}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:3:"FP4";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1770573243";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"5.58";s:3:"iso";s:4:"6744";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:28:"IMG_20260208_175400-EDIT.jpg";}'),
(501, 1968, '_wp_attachment_image_alt', 'bouteille paradis'),
(502, 1966, '_thumbnail_id', '1971'),
(503, 1970, '_edit_lock', '1770739921:1'),
(504, 1970, '_wp_trash_meta_status', 'publish'),
(505, 1970, '_wp_trash_meta_time', '1770739931'),
(506, 1971, '_wp_attached_file', '2026/02/IMG_20260208_175400-EDIT-1.jpg'),
(507, 1971, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2251;s:6:"height";i:2251;s:4:"file";s:38:"2026/02/IMG_20260208_175400-EDIT-1.jpg";s:8:"filesize";i:1301512;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:38:"IMG_20260208_175400-EDIT-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17642;}s:5:"large";a:5:{s:4:"file";s:40:"IMG_20260208_175400-EDIT-1-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:130701;}s:9:"thumbnail";a:5:{s:4:"file";s:38:"IMG_20260208_175400-EDIT-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6286;}s:12:"medium_large";a:5:{s:4:"file";s:38:"IMG_20260208_175400-EDIT-1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:79631;}s:9:"1536x1536";a:5:{s:4:"file";s:40:"IMG_20260208_175400-EDIT-1-1536x1536.jpg";s:5:"width";i:1536;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:273161;}s:9:"2048x2048";a:5:{s:4:"file";s:40:"IMG_20260208_175400-EDIT-1-2048x2048.jpg";s:5:"width";i:2048;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:463470;}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:3:"FP4";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1770573243";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"5.58";s:3:"iso";s:4:"6744";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(508, 1971, '_wp_attachment_image_alt', 'Bouteille Huile Olive carrée'),
(510, 1966, '_wp_page_template', 'template-full-width.php'),
(511, 1975, '_wp_attached_file', '2026/02/IMG_20260208_175400-EDIT-2.jpg'),
(512, 1975, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2251;s:6:"height";i:1507;s:4:"file";s:38:"2026/02/IMG_20260208_175400-EDIT-2.jpg";s:8:"filesize";i:832482;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:38:"IMG_20260208_175400-EDIT-2-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12371;}s:5:"large";a:5:{s:4:"file";s:39:"IMG_20260208_175400-EDIT-2-1024x686.jpg";s:5:"width";i:1024;s:6:"height";i:686;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:87999;}s:9:"thumbnail";a:5:{s:4:"file";s:38:"IMG_20260208_175400-EDIT-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6252;}s:12:"medium_large";a:5:{s:4:"file";s:38:"IMG_20260208_175400-EDIT-2-768x514.jpg";s:5:"width";i:768;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:54235;}s:9:"1536x1536";a:5:{s:4:"file";s:40:"IMG_20260208_175400-EDIT-2-1536x1028.jpg";s:5:"width";i:1536;s:6:"height";i:1028;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:181736;}s:9:"2048x2048";a:5:{s:4:"file";s:40:"IMG_20260208_175400-EDIT-2-2048x1371.jpg";s:5:"width";i:2048;s:6:"height";i:1371;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:303467;}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:3:"FP4";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1770573243";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"5.58";s:3:"iso";s:4:"6744";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(513, 1977, '_edit_lock', '1770742518:1'),
(514, 1978, '_wp_attached_file', '2026/02/original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-scaled.jpg'),
(515, 1978, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1268;s:4:"file";s:88:"2026/02/original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-scaled.jpg";s:8:"filesize";i:673641;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:81:"original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-300x149.jpg";s:5:"width";i:300;s:6:"height";i:149;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19265;}s:5:"large";a:5:{s:4:"file";s:82:"original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-1024x507.jpg";s:5:"width";i:1024;s:6:"height";i:507;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:153527;}s:9:"thumbnail";a:5:{s:4:"file";s:81:"original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10172;}s:12:"medium_large";a:5:{s:4:"file";s:81:"original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-768x381.jpg";s:5:"width";i:768;s:6:"height";i:381;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:94513;}s:9:"1536x1536";a:5:{s:4:"file";s:82:"original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-1536x761.jpg";s:5:"width";i:1536;s:6:"height";i:761;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:300841;}s:9:"2048x2048";a:5:{s:4:"file";s:83:"original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-2048x1015.jpg";s:5:"width";i:2048;s:6:"height";i:1015;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:475972;}}s:10:"image_meta";a:12:{s:8:"aperture";s:4:"1.89";s:6:"credit";s:0:"";s:6:"camera";s:12:"Nokia 8.3 5G";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1702044114";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"5.42";s:3:"iso";s:3:"340";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:73:"original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr.jpg";}'),
(516, 1977, '_edit_last', '1'),
(517, 1977, '_yoast_wpseo_content_score', '90'),
(518, 1977, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(519, 1980, '_wp_attached_file', '2026/02/paradislogo.png'),
(520, 1980, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:85;s:6:"height";i:85;s:4:"file";s:23:"2026/02/paradislogo.png";s:8:"filesize";i:6448;s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(521, 1980, '_wp_attachment_image_alt', 'paradis logo'),
(522, 1977, '_thumbnail_id', '1980'),
(523, 1981, '_edit_lock', '1770741568:1'),
(524, 1981, '_wp_trash_meta_status', 'publish'),
(525, 1981, '_wp_trash_meta_time', '1770741620'),
(527, 1977, '_wp_page_template', 'template-full-width.php'),
(528, 1987, '_wp_attached_file', '2026/02/paradis-logo-big.png'),
(529, 1987, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:264;s:6:"height";i:85;s:4:"file";s:28:"2026/02/paradis-logo-big.png";s:8:"filesize";i:6758;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:27:"paradis-logo-big-150x85.png";s:5:"width";i:150;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5250;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(532, 1955, '_wp_page_template', 'template-full-width.php'),
(533, 1996, '_wp_attached_file', '2026/02/oliveraie-wide-scaled.jpg'),
(534, 1996, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1092;s:4:"file";s:33:"2026/02/oliveraie-wide-scaled.jpg";s:8:"filesize";i:869733;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:26:"oliveraie-wide-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12448;}s:5:"large";a:5:{s:4:"file";s:27:"oliveraie-wide-1024x437.jpg";s:5:"width";i:1024;s:6:"height";i:437;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136406;}s:9:"thumbnail";a:5:{s:4:"file";s:26:"oliveraie-wide-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7797;}s:12:"medium_large";a:5:{s:4:"file";s:26:"oliveraie-wide-768x327.jpg";s:5:"width";i:768;s:6:"height";i:327;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:75854;}s:9:"1536x1536";a:5:{s:4:"file";s:27:"oliveraie-wide-1536x655.jpg";s:5:"width";i:1536;s:6:"height";i:655;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:309021;}s:9:"2048x2048";a:5:{s:4:"file";s:27:"oliveraie-wide-2048x873.jpg";s:5:"width";i:2048;s:6:"height";i:873;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:556706;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:18:"oliveraie-wide.jpg";}'),
(536, 1996, '_wp_attachment_image_alt', 'olive wide grove'),
(537, 1999, '_edit_lock', '1770743974:1'),
(538, 2000, '_wp_attached_file', '2026/02/olivNet.jpg'),
(539, 2000, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:768;s:6:"height";i:431;s:4:"file";s:19:"2026/02/olivNet.jpg";s:8:"filesize";i:72485;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:19:"olivNet-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12733;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"olivNet-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5847;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(540, 2000, '_wp_attachment_image_alt', 'olive grove net'),
(541, 1999, '_edit_last', '1'),
(542, 1999, '_yoast_wpseo_content_score', '90'),
(543, 1999, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(545, 2003, '_wp_attached_file', '2026/02/caisse150KG.jpg'),
(546, 2003, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2016;s:6:"height";i:1512;s:4:"file";s:23:"2026/02/caisse150KG.jpg";s:8:"filesize";i:1267378;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:23:"caisse150KG-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:57690;}s:5:"large";a:5:{s:4:"file";s:24:"caisse150KG-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:266185;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"caisse150KG-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40542;}s:12:"medium_large";a:5:{s:4:"file";s:23:"caisse150KG-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:174036;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"caisse150KG-1536x1152.jpg";s:5:"width";i:1536;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:497014;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(547, 2003, '_wp_attachment_image_alt', 'olive case 150KG'),
(548, 2005, '_edit_lock', '1770743921:1'),
(549, 1999, '_thumbnail_id', '1907'),
(550, 2005, '_wp_trash_meta_status', 'publish'),
(551, 2005, '_wp_trash_meta_time', '1770743953'),
(558, 2020, '_wp_attached_file', '2026/02/olivCase.png'),
(559, 2020, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1366;s:6:"height";i:696;s:4:"file";s:20:"2026/02/olivCase.png";s:8:"filesize";i:5911379;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:20:"olivCase-300x153.png";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:290701;}s:5:"large";a:5:{s:4:"file";s:21:"olivCase-1024x522.png";s:5:"width";i:1024;s:6:"height";i:522;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3227989;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"olivCase-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:143249;}s:12:"medium_large";a:5:{s:4:"file";s:20:"olivCase-768x391.png";s:5:"width";i:768;s:6:"height";i:391;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1849325;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(560, 2020, '_wp_attachment_image_alt', 'olive grove with a case'),
(561, 2023, '_wp_attached_file', '2026/02/mas-scaled.jpg'),
(562, 2023, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1444;s:4:"file";s:22:"2026/02/mas-scaled.jpg";s:8:"filesize";i:990217;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:15:"mas-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44479;}s:5:"large";a:5:{s:4:"file";s:16:"mas-1024x578.jpg";s:5:"width";i:1024;s:6:"height";i:578;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:193269;}s:9:"thumbnail";a:5:{s:4:"file";s:15:"mas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36472;}s:12:"medium_large";a:5:{s:4:"file";s:15:"mas-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:121491;}s:9:"1536x1536";a:5:{s:4:"file";s:16:"mas-1536x866.jpg";s:5:"width";i:1536;s:6:"height";i:866;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:394699;}s:9:"2048x2048";a:5:{s:4:"file";s:17:"mas-2048x1155.jpg";s:5:"width";i:2048;s:6:"height";i:1155;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:663911;}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:3:"FP4";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1770638923";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"5.58";s:3:"iso";s:3:"112";s:13:"shutter_speed";s:8:"0.000569";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:7:"mas.jpg";}'),
(563, 2023, '_wp_attachment_image_alt', 'Mas Belles Olives'),
(565, 732, '_edit_lock', '1770760144:1'),
(566, 732, '_yoast_wpseo_content_score', '90'),
(567, 732, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(573, 2039, '_wp_attached_file', '2026/02/circle.png'),
(574, 2039, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:18:"2026/02/circle.png";s:8:"filesize";i:22602;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:18:"circle-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16131;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"circle-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7329;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(575, 2040, '_wp_attached_file', '2026/02/circle-1.png'),
(576, 2040, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:20:"2026/02/circle-1.png";s:8:"filesize";i:22602;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"circle-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16131;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"circle-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7329;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(577, 2041, '_wp_attached_file', '2026/02/call.png') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(578, 2041, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:16;s:6:"height";i:16;s:4:"file";s:16:"2026/02/call.png";s:8:"filesize";i:502;s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(579, 2042, '_wp_attached_file', '2026/02/call-1.png'),
(580, 2042, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:16;s:6:"height";i:16;s:4:"file";s:18:"2026/02/call-1.png";s:8:"filesize";i:502;s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(581, 2043, '_wp_attached_file', '2026/02/circle-2.png'),
(582, 2043, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:20:"2026/02/circle-2.png";s:8:"filesize";i:22602;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"circle-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16131;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"circle-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7329;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(583, 2044, '_wp_attached_file', '2026/02/circle-3.png'),
(584, 2044, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:20:"2026/02/circle-3.png";s:8:"filesize";i:22602;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"circle-3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16131;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"circle-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7329;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(585, 2046, '_wp_attached_file', '2026/02/sal-olivier-wide.jpeg'),
(586, 2046, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2016;s:6:"height";i:960;s:4:"file";s:29:"2026/02/sal-olivier-wide.jpeg";s:8:"filesize";i:1109496;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:29:"sal-olivier-wide-300x143.jpeg";s:5:"width";i:300;s:6:"height";i:143;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45443;}s:5:"large";a:5:{s:4:"file";s:30:"sal-olivier-wide-1024x488.jpeg";s:5:"width";i:1024;s:6:"height";i:488;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:212863;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"sal-olivier-wide-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38185;}s:12:"medium_large";a:5:{s:4:"file";s:29:"sal-olivier-wide-768x366.jpeg";s:5:"width";i:768;s:6:"height";i:366;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:131464;}s:9:"1536x1536";a:5:{s:4:"file";s:30:"sal-olivier-wide-1536x731.jpeg";s:5:"width";i:1536;s:6:"height";i:731;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:435089;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(587, 2046, '_wp_attachment_image_alt', 'Sal&Oliv Wide'),
(593, 2057, '_wp_attached_file', '2026/02/mas-oliviers-scaled.jpg'),
(594, 2057, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1577;s:4:"file";s:31:"2026/02/mas-oliviers-scaled.jpg";s:8:"filesize";i:1065886;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"mas-oliviers-300x185.jpg";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21744;}s:5:"large";a:5:{s:4:"file";s:25:"mas-oliviers-1024x631.jpg";s:5:"width";i:1024;s:6:"height";i:631;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:184853;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"mas-oliviers-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12231;}s:12:"medium_large";a:5:{s:4:"file";s:24:"mas-oliviers-768x473.jpg";s:5:"width";i:768;s:6:"height";i:473;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:105835;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"mas-oliviers-1536x946.jpg";s:5:"width";i:1536;s:6:"height";i:946;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:413635;}s:9:"2048x2048";a:5:{s:4:"file";s:26:"mas-oliviers-2048x1262.jpg";s:5:"width";i:2048;s:6:"height";i:1262;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:712823;}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:3:"FP4";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1770823829";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"5.58";s:3:"iso";s:3:"112";s:13:"shutter_speed";s:7:"0.00109";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:16:"mas-oliviers.jpg";}'),
(595, 2057, '_wp_attachment_image_alt', 'Mas au fond du jardin'),
(602, 812, '_edit_lock', '1770839880:1'),
(609, 2, '_edit_lock', '1770840070:1'),
(613, 795, '_edit_lock', '1770841045:1'),
(620, 835, '_yoast_wpseo_content_score', '90'),
(621, 835, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(625, 935, '_yoast_wpseo_content_score', '90'),
(626, 935, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(630, 807, '_edit_lock', '1770840497:1'),
(634, 741, '_edit_lock', '1770840662:1'),
(638, 741, '_yoast_wpseo_content_score', '90'),
(639, 741, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(643, 835, '_wp_trash_meta_status', 'draft'),
(644, 835, '_wp_trash_meta_time', '1770840956'),
(645, 835, '_wp_desired_post_slug', 'blog-full-width'),
(646, 935, '_wp_trash_meta_status', 'draft'),
(647, 935, '_wp_trash_meta_time', '1770840957'),
(648, 935, '_wp_desired_post_slug', 'blog-grid-layout'),
(649, 797, '_wp_trash_meta_status', 'draft'),
(650, 797, '_wp_trash_meta_time', '1770840957'),
(651, 797, '_wp_desired_post_slug', 'blog-left-sidebar'),
(652, 798, '_wp_trash_meta_status', 'draft'),
(653, 798, '_wp_trash_meta_time', '1770840958'),
(654, 798, '_wp_desired_post_slug', 'blog-no-sidebar'),
(655, 799, '_wp_trash_meta_status', 'draft'),
(656, 799, '_wp_trash_meta_time', '1770840959'),
(657, 799, '_wp_desired_post_slug', 'blog-right-sidebar'),
(658, 807, '_wp_trash_meta_status', 'draft'),
(659, 807, '_wp_trash_meta_time', '1770840959'),
(660, 807, '_wp_desired_post_slug', 'dropdown-level-1'),
(661, 812, '_wp_trash_meta_status', 'draft'),
(662, 812, '_wp_trash_meta_time', '1770840959'),
(663, 812, '_wp_desired_post_slug', 'lavel-2'),
(664, 815, '_wp_trash_meta_status', 'draft'),
(665, 815, '_wp_trash_meta_time', '1770840960'),
(666, 815, '_wp_desired_post_slug', 'lavel-3'),
(667, 741, '_wp_trash_meta_status', 'draft'),
(668, 741, '_wp_trash_meta_time', '1770840961'),
(669, 741, '_wp_desired_post_slug', 'left-sidebar'),
(670, 2, '_wp_trash_meta_status', 'draft'),
(671, 2, '_wp_trash_meta_time', '1770841089'),
(672, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(673, 817, '_wp_trash_meta_status', 'publish'),
(674, 817, '_wp_trash_meta_time', '1770841128'),
(675, 817, '_wp_desired_post_slug', 'no-sidebar'),
(676, 618, '_edit_lock', '1770840993:1'),
(677, 3, '_edit_lock', '1770841155:1'),
(678, 820, '_wp_trash_meta_status', 'publish'),
(679, 820, '_wp_trash_meta_time', '1770841164'),
(680, 820, '_wp_desired_post_slug', 'right-sidebar'),
(681, 2074, '_edit_lock', '1770842837:1'),
(682, 2075, '_wp_attached_file', '2026/02/pickers-scaled.jpg'),
(683, 2075, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1920;s:4:"file";s:26:"2026/02/pickers-scaled.jpg";s:8:"filesize";i:946277;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:19:"pickers-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:68474;}s:5:"large";a:5:{s:4:"file";s:20:"pickers-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:214272;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"pickers-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55528;}s:12:"medium_large";a:5:{s:4:"file";s:19:"pickers-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:151432;}s:9:"1536x1536";a:5:{s:4:"file";s:21:"pickers-1536x1152.jpg";s:5:"width";i:1536;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:389822;}s:9:"2048x2048";a:5:{s:4:"file";s:21:"pickers-2048x1536.jpg";s:5:"width";i:2048;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:638515;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:10:"Galaxy A16";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1762707122";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.56";s:3:"iso";s:2:"50";s:13:"shutter_speed";s:7:"0.00583";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:11:"pickers.jpg";}'),
(684, 2076, '_wp_attached_file', '2026/02/patio-scaled.jpg'),
(685, 2076, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1677;s:4:"file";s:24:"2026/02/patio-scaled.jpg";s:8:"filesize";i:883849;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:17:"patio-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29824;}s:5:"large";a:5:{s:4:"file";s:18:"patio-1024x671.jpg";s:5:"width";i:1024;s:6:"height";i:671;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:181418;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"patio-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17894;}s:12:"medium_large";a:5:{s:4:"file";s:17:"patio-768x503.jpg";s:5:"width";i:768;s:6:"height";i:503;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:113519;}s:9:"1536x1536";a:5:{s:4:"file";s:19:"patio-1536x1006.jpg";s:5:"width";i:1536;s:6:"height";i:1006;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:358843;}s:9:"2048x2048";a:5:{s:4:"file";s:19:"patio-2048x1342.jpg";s:5:"width";i:2048;s:6:"height";i:1342;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:591583;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:9:"Nokia 6.1";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1558526721";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.57";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0037";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:9:"patio.jpg";}'),
(686, 2076, '_wp_attachment_image_alt', 'Patio in Ners with a book'),
(687, 2074, '_edit_last', '1'),
(688, 2074, '_yoast_wpseo_content_score', '90'),
(689, 2074, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(690, 2078, '_edit_lock', '1770841913:1'),
(691, 2078, '_edit_last', '1'),
(692, 2078, '_yoast_wpseo_content_score', '90'),
(693, 2078, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(694, 2080, '_edit_lock', '1770841880:1'),
(695, 2081, '_edit_lock', '1770841912:1'),
(696, 2081, '_edit_last', '1'),
(697, 2081, '_yoast_wpseo_content_score', '90'),
(698, 2081, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(699, 2083, '_menu_item_type', 'post_type'),
(700, 2083, '_menu_item_menu_item_parent', '1935'),
(701, 2083, '_menu_item_object_id', '2078'),
(702, 2083, '_menu_item_object', 'page'),
(703, 2083, '_menu_item_target', ''),
(704, 2083, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(705, 2083, '_menu_item_xfn', ''),
(706, 2083, '_menu_item_url', ''),
(707, 2080, '_wp_trash_meta_status', 'publish'),
(708, 2080, '_wp_trash_meta_time', '1770841925'),
(709, 1965, '_wp_old_date', '2026-02-10'),
(710, 1935, '_wp_old_date', '2026-02-10'),
(711, 1873, '_wp_old_date', '2026-02-10'),
(712, 1939, '_wp_old_date', '2026-02-10'),
(713, 1870, '_wp_old_date', '2026-02-10'),
(714, 2085, '_menu_item_type', 'post_type'),
(715, 2085, '_menu_item_menu_item_parent', '1935'),
(716, 2085, '_menu_item_object_id', '2081'),
(717, 2085, '_menu_item_object', 'page'),
(718, 2085, '_menu_item_target', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(719, 2085, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(720, 2085, '_menu_item_xfn', ''),
(721, 2085, '_menu_item_url', ''),
(722, 2086, '_menu_item_type', 'post_type'),
(723, 2086, '_menu_item_menu_item_parent', '1939'),
(724, 2086, '_menu_item_object_id', '2074'),
(725, 2086, '_menu_item_object', 'page'),
(726, 2086, '_menu_item_target', ''),
(727, 2086, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(728, 2086, '_menu_item_xfn', ''),
(729, 2086, '_menu_item_url', ''),
(730, 2084, '_wp_trash_meta_status', 'publish'),
(731, 2084, '_wp_trash_meta_time', '1770841971') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=2087 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-09-05 10:30:40', '2025-09-05 08:30:40', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2025-09-05 10:30:40', '2025-09-05 08:30:40', '', 0, 'https://belleolive.fr/?p=1', 0, 'post', '', 1),
(2, 1, '2025-09-05 10:30:40', '2025-09-05 08:30:40', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="https://belleolive.fr/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2026-02-11 21:18:09', '2026-02-11 20:18:09', '', 0, 'https://belleolive.fr/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-09-05 10:30:40', '2025-09-05 08:30:40', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>L’adresse de notre site est : https://belleolive.fr.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Commentaires</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Médias</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2025-09-05 10:30:40', '2025-09-05 08:30:40', '', 0, 'https://belleolive.fr/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-09-05 10:30:41', '2025-09-05 08:30:41', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-09-05 10:30:41', '2025-09-05 08:30:41', '', 0, 'https://belleolive.fr/2025/09/05/navigation/', 0, 'wp_navigation', '', 0),
(9, 1, '2026-02-08 23:21:22', '2026-02-08 22:21:22', '', 'Home', '												', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2026-02-08 23:21:22', '2026-02-08 22:21:22', '', 0, 'https://belleolive.fr/2026/02/08/home-2/', 1, 'nav_menu_item', '', 0),
(618, 2, '2018-06-14 18:14:48', '2018-06-14 18:14:48', '[pfhub_portfolio id="2"]\n[space height="50px"]\n<h2>Content Popup Gallery</h2>\n[pfhub_portfolio id="1"]\n[space height="50px"]\n<h2>Toggle Grid Gallery</h2>\n[pfhub_portfolio id="3"]', 'Photo Gallery', '\n				\n								', 'publish', 'closed', 'closed', '', 'photo-gallery', '', '', '2018-06-14 18:14:48', '2018-06-14 18:14:48', '', 0, 'https://gracethemes.com/demo/combine/?page_id=618', 0, 'page', '', 0),
(725, 1, '2018-09-30 09:30:17', '2018-09-30 09:30:17', '', '', '\n				\n								', 'publish', 'closed', 'closed', '', 'home', '', '', '2026-02-11 21:17:43', '2026-02-11 20:17:43', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=725', 0, 'page', '', 0),
(732, 1, '2018-09-30 10:13:44', '2018-09-30 10:13:44', '<!-- wp:shortcode -->\n[contact-form-7 id="1880" title="Contact form 1"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Envoyez nous un sms pour prendre rendez-vous au <a href="https://www.google.com/search?sca_esv=45c182c267c17b0e&amp;hl=en&amp;gl=us&amp;authuser=1&amp;sxsrf=ANbL-n4xEKhjoiyfM3HfwL0GnhndjTnJLQ:1770662934061&amp;kgmid=/g/11yyjf2w_d&amp;q=Les+Belles+Olives+De+Ners&amp;shndl=30&amp;source=sh/x/loc/uni/m1/1&amp;kgs=d1f1145c7ad8a656&amp;shem=shrtsdl&amp;utm_source=shrtsdl,sh/x/loc/uni/m1/1#">+33 7 86 12 78 22</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre Dépôt: 1 Rue Boumba Quiou, 30360 Ners, France</p>\n<!-- /wp:paragraph -->', 'Contact', '\n				\n								', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2026-02-10 22:48:46', '2026-02-10 21:48:46', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=732', 0, 'page', '', 0),
(741, 2, '2018-09-30 18:07:58', '2018-09-30 18:07:58', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Left Sidebar', '\n				\n								', 'trash', 'closed', 'closed', '', 'left-sidebar__trashed', '', '', '2026-02-11 21:16:01', '2026-02-11 20:16:01', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=741', 0, 'page', '', 0),
(790, 1, '2026-02-10 13:19:39', '2026-02-10 12:19:39', '<p>Notre forêt est située dans le village de Ners en plein coeur du Gard. Sur les coteaux du puissant Gardon, nos Oliviers poussent lentement grâce à l\'amour qu\'on leur donne tous les jours et même lorsqu\'ils ont décidé de ne pas produire!</p>\n<p>L\'Oliveraie est composée de 7 champs représentant au total une surface raisonnable et solide de 3 hectares soit 3000 m²</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Bienvenue dans Notre Oliveraie', '\n				\n								', 'publish', 'closed', 'closed', '', 'welcome-oliveraie', '', '', '2026-02-10 16:46:07', '2026-02-10 15:46:07', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=790', 0, 'page', '', 0),
(795, 1, '2018-10-03 11:47:14', '2018-10-03 11:47:14', '\n				\n								', 'Blog', '\n				\n								', 'draft', 'closed', 'closed', '', 'blog', '', '', '2026-02-11 21:17:25', '2026-02-11 20:17:25', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=794', 0, 'page', '', 0),
(797, 2, '2018-10-03 11:48:55', '2018-10-03 11:48:55', '\n				\n								', 'Blog Left Sidebar', '\n				\n								', 'trash', 'closed', 'closed', '', 'blog-left-sidebar__trashed', '', '', '2026-02-11 21:15:57', '2026-02-11 20:15:57', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=797', 0, 'page', '', 0),
(798, 2, '2018-10-03 11:49:24', '2018-10-03 11:49:24', '\n				\n								', 'Blog No Sidebar', '\n				\n								', 'trash', 'closed', 'closed', '', 'blog-no-sidebar__trashed', '', '', '2026-02-11 21:15:58', '2026-02-11 20:15:58', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=798', 0, 'page', '', 0),
(799, 2, '2018-10-03 11:48:36', '2018-10-03 11:48:36', '\n				\n								', 'Blog Right Sidebar', '\n				\n								', 'trash', 'closed', 'closed', '', 'blog-right-sidebar__trashed', '', '', '2026-02-11 21:15:59', '2026-02-11 20:15:59', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=799', 0, 'page', '', 0),
(807, 2, '2018-10-03 11:51:07', '2018-10-03 11:51:07', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Dropdown Level 1', '\n				\n								', 'trash', 'closed', 'closed', '', 'dropdown-level-1__trashed', '', '', '2026-02-11 21:15:59', '2026-02-11 20:15:59', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=807', 0, 'page', '', 0),
(812, 2, '2018-10-03 11:52:27', '2018-10-03 11:52:27', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Lavel 2', '\n				\n								', 'trash', 'closed', 'closed', '', 'lavel-2__trashed', '', '', '2026-02-11 21:15:59', '2026-02-11 20:15:59', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=812', 0, 'page', '', 0),
(815, 2, '2018-10-03 11:52:44', '2018-10-03 11:52:44', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Lavel 3', '\n				\n								', 'trash', 'closed', 'closed', '', 'lavel-3__trashed', '', '', '2026-02-11 21:16:00', '2026-02-11 20:16:00', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=815', 0, 'page', '', 0),
(817, 2, '2018-10-03 11:53:30', '2018-10-03 11:53:30', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'No Sidebar', '\n				\n								', 'trash', 'closed', 'closed', '', 'no-sidebar__trashed', '', '', '2026-02-11 21:18:48', '2026-02-11 20:18:48', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=817', 0, 'page', '', 0),
(820, 2, '2018-10-03 11:54:39', '2018-10-03 11:54:39', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Right Sidebar', '\n				\n								', 'trash', 'closed', 'closed', '', 'right-sidebar__trashed', '', '', '2026-02-11 21:19:24', '2026-02-11 20:19:24', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=820', 0, 'page', '', 0),
(835, 2, '2018-10-03 12:00:16', '2018-10-03 12:00:16', '', 'Blog Full Width', '\n				\n								', 'trash', 'closed', 'closed', '', 'blog-full-width__trashed', '', '', '2026-02-11 21:15:56', '2026-02-11 20:15:56', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=835', 0, 'page', '', 0),
(935, 2, '2018-10-05 09:10:28', '2018-10-05 09:10:28', '\n				\n								', 'Blog Grid Layout', '\n				\n								', 'trash', 'closed', 'closed', '', 'blog-grid-layout__trashed', '', '', '2026-02-11 21:15:57', '2026-02-11 20:15:57', '', 0, 'http://localhost/www/Mythemes/modeling/?page_id=848', 0, 'page', '', 0),
(1432, 2, '2019-04-23 08:55:09', '2019-04-23 08:55:09', '<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.<br>Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.</p>\n<!-- /wp:paragraph -->', 'Etiam non tortor non lorem auctor nisi massa.', '', 'publish', 'open', 'open', '', 'etiam-non-tortor-non-lorem-auctor-nisi-massa', '', '', '2019-04-23 08:55:09', '2019-04-23 08:55:09', '', 0, 'http://localhost/www/mythemes/Fashion/?p=1432', 0, 'post', '', 0),
(1436, 2, '2019-04-23 08:56:32', '2019-04-23 08:56:32', '<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.<br>Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.</p>\n<!-- /wp:paragraph -->', 'Fusce faucibus  etiam  imperdiet imrdiet eget leo.', '', 'publish', 'open', 'open', '', 'fusce-faucibus-etiam-imperdiet-imrdiet-eget-leo', '', '', '2019-04-23 08:56:32', '2019-04-23 08:56:32', '', 0, 'http://localhost/www/mythemes/Fashion/?p=1436', 0, 'post', '', 0),
(1438, 2, '2019-04-23 08:57:40', '2019-04-23 08:57:40', '<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.<br>Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.</p>\n<!-- /wp:paragraph -->', 'Fusce faucibus sed leo nec ultrices vitae ligula eget.', '', 'publish', 'open', 'open', '', 'fusce-faucibus-sed-leo-nec-ultrices-vitae-ligula-eget', '', '', '2019-04-23 08:57:40', '2019-04-23 08:57:40', '', 0, 'http://localhost/www/mythemes/Fashion/?p=1438', 0, 'post', '', 0),
(1440, 2, '2019-04-23 08:58:45', '2019-04-23 08:58:45', '<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, nond viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.<br>Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.</p>\n<!-- /wp:paragraph -->', 'Interdum et malesuada fames ac antering purante', '', 'publish', 'open', 'open', '', 'interdum-et-malesuada-fames-ac-antering-purante', '', '', '2019-04-23 08:58:45', '2019-04-23 08:58:45', '', 0, 'http://localhost/www/mythemes/Fashion/?p=1440', 0, 'post', '', 0),
(1581, 1, '2019-06-14 04:56:10', '2019-06-14 04:56:10', '<!-- wp:image {"id":2057,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-oliviers-1024x631.jpg" alt="Mas au fond du jardin" class="wp-image-2057"/><figcaption class="wp-element-caption">Mas au fond du jardin</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps. Un enfant du pays né en France, déporté aux Etats-Unis pour échapper aux Nazis qui devient un grand professeur de literature, Sal est né. De retour en France, il s\'installe a Ners un petit village pitoresque dans la vallée du Gardon, non loin d\'Ales. Et c\'est la que tout commence...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&amp;Oliv</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Oliv est un entrepreneur du massif central qui a voulu changer de vie. A la crise de la 40aine, il quitte son  confortable bureau de freelance développeur pour jongler avec les olives et jouer de la débrousailleuse. Son instinct naturel et ses appétences pour le Bricol\'Tout autodidacte en fait un atout majeur pour mener à bien la commercialisation et l\'entretien des Oliveraies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oliv de son côté n\'est pas destiné a rencontrer cet homme au départ mais la destinée met Sal sur son chemin lors de son expatriement à Pékin en Chine en 2010. Ces deux hommes que 48ans séparent se retrouvent sur les chemins de Stevenson en 2018. Un Auvergnat associé à un Américain, quel choc des civilisations!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {"mediaId":2023,"mediaType":"image"} -->\n<div class="wp-block-media-text is-stacked-on-mobile"><figure class="wp-block-media-text__media"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023 size-full"/></figure><div class="wp-block-media-text__content"><!-- wp:paragraph {"placeholder":"Content…"} -->\n<p>Le Mazet de l\'oliveraie est au centre de notre activité. Il permet le stockage des outils et la récupération d\'eau de pluie. Il stock aussi quelques jours tout au plus les olives qui seront amenées au Moulin Paradis pour presser les 150kg d\'olives soit 10 caisses remplies le plus rapidement possible</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'L\'histoire du Mas', '', 'publish', 'closed', 'closed', '', 'history-mas', '', '', '2026-02-11 21:17:57', '2026-02-11 20:17:57', '', 0, 'http://localhost/www/mythemes/Online-Consulting/?page_id=1581', 0, 'page', '', 0),
(1766, 2, '2019-10-09 11:40:32', '2019-10-09 11:40:32', 'Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.\n\nFusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.', 'Etiam nec ex vitae ligula porttitor imperdiet imrdiet', '', 'publish', 'open', 'open', '', 'etiam-nec-ex-vitae-ligula-porttitor-imperdiet-imrdiet', '', '', '2019-10-09 11:40:32', '2019-10-09 11:40:32', '', 0, 'http://gracethemesdemo.com/yogic/?p=1766', 0, 'post', '', 0),
(1768, 2, '2019-10-09 11:41:44', '2019-10-09 11:41:44', 'Fusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, nond viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nuncnterdum et malesuada fames ac ante ipsum primis in faucibus.\n\nVivamus fring purante, non viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.\n\nFusce faucibus sed leo nec ultrices. Etiam nec ex vitae ligula porttitor imperdiet imrdiet eget leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fring purante, nond viverra est accumsan quis. Aliquam placerat tellus ac laoreet euismod. Suspisseet magna in nunc placerat varius. Nullam placerat massa et viverra pretium.Proin rutrum turpis nunc.\nInterdum et malesuada fames ac ante ipsum primis in faucibus.', 'Interdum et malesuada fames ac ante ipsum primis ipsum faucibus', '', 'publish', 'open', 'open', '', 'interdum-et-malesuada-fames-ac-ante-ipsum-primis-ipsum-faucibus', '', '', '2019-10-09 11:41:44', '2019-10-09 11:41:44', '', 0, 'http://gracethemesdemo.com/yogic/?p=1768', 0, 'post', '', 0),
(1855, 2, '2021-02-05 17:32:23', '2021-02-05 17:32:23', '', 'team1', '', 'inherit', 'open', 'closed', '', 'team1', '', '', '2021-02-05 17:32:23', '2021-02-05 17:32:23', '', 0, 'https://belleolive.fr/wp-content/uploads/2017/07/team1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1856, 2, '2021-02-05 17:32:24', '2021-02-05 17:32:24', '', 'team2', '', 'inherit', 'open', 'closed', '', 'team2', '', '', '2021-02-05 17:32:24', '2021-02-05 17:32:24', '', 0, 'https://belleolive.fr/wp-content/uploads/2017/07/team2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1857, 2, '2021-02-05 17:32:25', '2021-02-05 17:32:25', '', 'team3', '', 'inherit', 'open', 'closed', '', 'team3', '', '', '2021-02-05 17:32:25', '2021-02-05 17:32:25', '', 0, 'https://belleolive.fr/wp-content/uploads/2017/07/team3.jpg', 0, 'attachment', 'image/jpeg', 0),
(1858, 2, '2021-02-05 17:32:26', '2021-02-05 17:32:26', '', 'team4', '', 'inherit', 'open', 'closed', '', 'team4', '', '', '2021-02-05 17:32:26', '2021-02-05 17:32:26', '', 0, 'https://belleolive.fr/wp-content/uploads/2017/07/team4.jpg', 0, 'attachment', 'image/jpeg', 0),
(1861, 2, '2021-02-05 18:15:16', '2021-02-05 18:15:16', '', 'blog_verticle', '', 'inherit', 'open', 'closed', '', 'blog_verticle', '', '', '2021-02-05 18:15:16', '2021-02-05 18:15:16', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blog_verticle.jpg', 0, 'attachment', 'image/jpeg', 0),
(1862, 2, '2021-02-05 18:15:18', '2021-02-05 18:15:18', '', 'blogthumb1', '', 'inherit', 'open', 'closed', '', 'blogthumb1', '', '', '2021-02-05 18:15:18', '2021-02-05 18:15:18', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blogthumb1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1863, 2, '2021-02-05 18:15:19', '2021-02-05 18:15:19', '', 'blogthumb2', '', 'inherit', 'open', 'closed', '', 'blogthumb2', '', '', '2021-02-05 18:15:19', '2021-02-05 18:15:19', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blogthumb2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1864, 2, '2021-02-05 18:15:21', '2021-02-05 18:15:21', '', 'blogthumb3', '', 'inherit', 'open', 'closed', '', 'blogthumb3', '', '', '2021-02-05 18:15:21', '2021-02-05 18:15:21', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blogthumb3.jpg', 0, 'attachment', 'image/jpeg', 0),
(1865, 2, '2021-02-05 18:15:22', '2021-02-05 18:15:22', '', 'blogthumb4', '', 'inherit', 'open', 'closed', '', 'blogthumb4', '', '', '2021-02-05 18:15:22', '2021-02-05 18:15:22', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blogthumb4.jpg', 0, 'attachment', 'image/jpeg', 0),
(1866, 2, '2021-02-05 18:15:23', '2021-02-05 18:15:23', '', 'blogthumb5', '', 'inherit', 'open', 'closed', '', 'blogthumb5', '', '', '2021-02-05 18:15:23', '2021-02-05 18:15:23', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blogthumb5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1867, 2, '2021-02-05 18:15:24', '2021-02-05 18:15:24', '', 'blogthumb6', '', 'inherit', 'open', 'closed', '', 'blogthumb6', '', '', '2021-02-05 18:15:24', '2021-02-05 18:15:24', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blogthumb6.jpg', 0, 'attachment', 'image/jpeg', 0),
(1868, 2, '2021-02-05 18:15:25', '2021-02-05 18:15:25', '', 'blogthumb7', '', 'inherit', 'open', 'closed', '', 'blogthumb7', '', '', '2021-02-05 18:15:25', '2021-02-05 18:15:25', '', 1768, 'https://belleolive.fr/wp-content/uploads/2019/10/blogthumb7.jpg', 0, 'attachment', 'image/jpeg', 0),
(1869, 2, '2021-02-04 08:15:49', '2021-02-04 08:15:49', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://belleolive.fr.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-02-04 08:15:49', '2021-02-04 08:15:49', '', 0, 'http://www.gracethemesdemo.com/greenest/?page_id=3', 0, 'page', '', 0),
(1870, 1, '2026-02-11 21:32:50', '2026-02-08 22:21:30', '', 'Contacts', '												', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2026-02-11 21:32:50', '2026-02-11 20:32:50', '', 0, 'https://belleolive.fr/2026/02/08/contacts/', 8, 'nav_menu_item', '', 0),
(1871, 1, '2026-02-08 23:21:30', '2026-02-08 22:21:30', ' ', '', '												', 'publish', 'closed', 'closed', '', '1871', '', '', '2026-02-08 23:21:30', '2026-02-08 22:21:30', '', 0, 'https://belleolive.fr/2026/02/08/', 2, 'nav_menu_item', '', 0),
(1872, 1, '2026-02-08 23:21:30', '2026-02-08 22:21:30', ' ', '', '												', 'publish', 'closed', 'closed', '', '1872', '', '', '2026-02-08 23:21:30', '2026-02-08 22:21:30', '', 0, 'https://belleolive.fr/2026/02/08/', 4, 'nav_menu_item', '', 0),
(1873, 1, '2026-02-11 21:32:50', '2026-02-08 22:21:30', '', 'Amendement', '												', 'publish', 'closed', 'closed', '', '1873', '', '', '2026-02-11 21:32:50', '2026-02-11 20:32:50', '', 0, 'https://belleolive.fr/2026/02/08/', 4, 'nav_menu_item', '', 0),
(1878, 1, '2026-02-08 23:21:31', '2026-02-08 22:21:31', ' ', '', '												', 'publish', 'closed', 'closed', '', '1878', '', '', '2026-02-08 23:21:31', '2026-02-08 22:21:31', '', 0, 'https://belleolive.fr/2026/02/08/1878/', 5, 'nav_menu_item', '', 0),
(1888, 1, '2026-02-08 23:21:31', '2026-02-08 22:21:31', ' ', '', '', 'publish', 'closed', 'closed', '', '1888', '', '', '2026-02-08 23:21:31', '2026-02-08 22:21:31', '', 0, 'https://belleolive.fr/2026/02/08/1888/', 3, 'nav_menu_item', '', 0),
(1889, 1, '2026-02-08 23:24:11', '2026-02-08 22:24:11', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit "Submit"]\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@belleolive.fr>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@belleolive.fr>\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2026-02-08 23:24:11', '2026-02-08 22:24:11', '', 0, 'https://belleolive.fr/?post_type=wpcf7_contact_form&p=1889', 0, 'wpcf7_contact_form', '', 0),
(1890, 1, '2026-02-08 23:24:16', '2026-02-08 22:24:16', '', 'Default Kit', '', 'publish', 'closed', 'closed', '', 'default-kit', '', '', '2026-02-08 23:24:16', '2026-02-08 22:24:16', '', 0, 'https://belleolive.fr/?p=1890', 0, 'elementor_library', '', 0),
(1892, 1, '2026-02-08 23:47:33', '2026-02-08 22:47:33', '{"eco-greenest-lite::eco_greenest_lite_shortdesc_section":{"value":"qqsdfsqdfg","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:44:59"},"eco-greenest-lite::eco_greenest_lite_show_shortdesc_section":{"value":false,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:44:59"},"eco-greenest-lite::eco_greenest_lite_facebook_link":{"value":"wdf","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:44:59"},"eco-greenest-lite::eco_greenest_lite_show_header_footer_social_icons_sections":{"value":false,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:44:59"},"eco-greenest-lite::eco_greenest_lite_welcome_page":{"value":"790","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:44:59"},"eco-greenest-lite::eco_greenest_lite_show_welcome_page":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:47:02"},"eco-greenest-lite::eco_greenest_lite_homepageslider1":{"value":"790","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:46:28"},"eco-greenest-lite::eco_greenest_lite_homepageslider2":{"value":"795","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:46:28"},"eco-greenest-lite::eco_greenest_lite_homepageslider3":{"value":"1581","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:46:28"},"eco-greenest-lite::eco_greenest_lite_show_frontpageslider_section":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-08 22:46:28"}}', '', '', 'trash', 'closed', 'closed', '', '9e484ad4-062e-4a09-ac80-5d407f1c5ab3', '', '', '2026-02-08 23:47:33', '2026-02-08 22:47:33', '', 0, 'https://belleolive.fr/?p=1892', 0, 'customize_changeset', '', 0),
(1893, 1, '2026-02-09 19:49:17', '2026-02-09 18:49:17', '{"show_on_front":{"value":"page","type":"option","user_id":1,"date_modified_gmt":"2026-02-09 18:45:19"},"page_for_posts":{"value":"795","type":"option","user_id":1,"date_modified_gmt":"2026-02-09 18:45:19"},"eco-greenest-lite::eco_greenest_lite_show_header_footer_social_icons_sections":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:45:19"},"page_on_front":{"value":"790","type":"option","user_id":1,"date_modified_gmt":"2026-02-09 18:46:20"},"eco-greenest-lite::eco_greenest_lite_facebook_link":{"value":"facebook.com","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:48:32"},"eco-greenest-lite::eco_greenest_lite_twitter_link":{"value":"x.com","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:48:32"},"eco-greenest-lite::eco_greenest_lite_googleplus_link":{"value":"https:\\/\\/share.google\\/pKiPrGLEtwiPnImeu","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:49:17"}}', '', '', 'trash', 'closed', 'closed', '', 'ef2f4203-64bf-42cf-831f-59e59fc532a8', '', '', '2026-02-09 19:49:17', '2026-02-09 18:49:17', '', 0, 'https://belleolive.fr/?p=1893', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1894, 1, '2026-02-09 19:51:12', '2026-02-09 18:51:12', '{"eco-greenest-lite::eco_greenest_lite_boxlayoutoptions":{"value":false,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:49:51"},"eco-greenest-lite::eco_greenest_lite_show_shortdesc_section":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:50:56"}}', '', '', 'trash', 'closed', 'closed', '', 'ab5cbe09-295f-4d2c-8140-0d83d9ede479', '', '', '2026-02-09 19:51:12', '2026-02-09 18:51:12', '', 0, 'https://belleolive.fr/?p=1894', 0, 'customize_changeset', '', 0),
(1895, 1, '2026-02-09 22:34:52', '2026-02-09 21:34:52', '{"eco-greenest-lite::eco_greenest_lite_shortdesc_section":{"value":"Vente d\'Huile d\'Olive","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:52:31"},"eco-greenest-lite::eco_greenest_lite_show_header_footer_social_icons_sections":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:52:31"},"eco-greenest-lite::eco_greenest_lite_footerphone":{"value":"+33786127822","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 18:53:01"},"eco-greenest-lite::eco_greenest_lite_footeremail":{"value":"oliv@belleolive.fr","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:34:30"},"eco-greenest-lite::eco_greenest_lite_show_footerinfo_sections":{"value":false,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:34:30"},"eco-greenest-lite::eco_greenest_lite_facebook_link":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:34:52"},"eco-greenest-lite::eco_greenest_lite_twitter_link":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:34:52"}}', '', '', 'trash', 'closed', 'closed', '', 'cc930c38-b798-4f29-80d2-7804cf11e5e7', '', '', '2026-02-09 22:34:52', '2026-02-09 21:34:52', '', 0, 'https://belleolive.fr/?p=1895', 0, 'customize_changeset', '', 0),
(1896, 1, '2026-02-09 22:40:59', '2026-02-09 21:40:59', '{"eco-greenest-lite::eco_greenest_lite_donatebutton":{"value":"Order","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:38:38"},"eco-greenest-lite::eco_greenest_lite_show_donatebutton_sections":{"value":false,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:39:41"},"eco-greenest-lite::custom_logo":{"value":1898,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:40:46"}}', '', '', 'trash', 'closed', 'closed', '', '125d06bd-7263-4725-a2ae-1b74ba53cc0d', '', '', '2026-02-09 22:40:59', '2026-02-09 21:40:59', '', 0, 'https://belleolive.fr/?p=1896', 0, 'customize_changeset', '', 0),
(1897, 1, '2026-02-09 22:39:52', '2026-02-09 21:39:52', 'Arbre d\'Olivier', 'arbreOlivSolo', 'Arbre d\'Olivier', 'inherit', 'open', 'closed', '', 'arbreolivsolo', '', '', '2026-02-09 22:40:20', '2026-02-09 21:40:20', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/arbreOlivSolo.png', 0, 'attachment', 'image/png', 0),
(1898, 1, '2026-02-09 22:40:42', '2026-02-09 21:40:42', 'Arbre d\'Olivier', 'cropped-arbreOlivSolo.png', 'Arbre d\'Olivier', 'inherit', 'open', 'closed', '', 'cropped-arbreolivsolo-png', '', '', '2026-02-09 22:40:42', '2026-02-09 21:40:42', '', 1897, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-arbreOlivSolo.png', 0, 'attachment', 'image/png', 0),
(1899, 1, '2026-02-09 22:41:57', '2026-02-09 21:41:57', 'Arbre d\'Olivier', 'cropped-arbreOlivSolo-1.png', 'Arbre d\'Olivier', 'inherit', 'open', 'closed', '', 'cropped-arbreolivsolo-1-png', '', '', '2026-02-09 22:41:57', '2026-02-09 21:41:57', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-arbreOlivSolo-1.png', 0, 'attachment', 'image/png', 0),
(1900, 1, '2026-02-09 22:52:01', '2026-02-09 21:52:01', '{"eco-greenest-lite::header_image":{"value":"remove-header","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:43:02"},"eco-greenest-lite::header_image_data":{"value":"remove-header","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:43:02"},"eco-greenest-lite::nav_menu_locations[primary]":{"value":10,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:43:29"},"eco-greenest-lite::eco_greenest_lite_donatebutton":{"value":"Acheter","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:44:28"},"eco-greenest-lite::eco_greenest_lite_show_donatebutton_sections":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:44:28"},"eco-greenest-lite::eco_greenest_lite_donatebutton_link":{"value":"mailto:oliv@belleolive.fr","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:45:35"},"eco-greenest-lite::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:46:47"}}', '', '', 'trash', 'closed', 'closed', '', '06790a26-7f4f-406f-858b-0ef2fc2fd192', '', '', '2026-02-09 22:52:01', '2026-02-09 21:52:01', '', 0, 'https://belleolive.fr/?p=1900', 0, 'customize_changeset', '', 0),
(1901, 1, '2026-02-09 22:46:53', '2026-02-09 21:46:53', 'Arbre Olivier Logo', '3_arbreOlivDesign', 'Arbre Olivier Logo', 'inherit', 'open', 'closed', '', '3_arbreolivdesign', '', '', '2026-02-09 22:47:11', '2026-02-09 21:47:11', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/3_arbreOlivDesign.png', 0, 'attachment', 'image/png', 0),
(1902, 1, '2026-02-09 22:55:12', '2026-02-09 21:55:12', 'Arbre Olivier Logo', 'cropped-3_arbreOlivDesign.png', 'Arbre Olivier Logo', 'inherit', 'open', 'closed', '', 'cropped-3_arbreolivdesign-png', '', '', '2026-02-09 22:55:12', '2026-02-09 21:55:12', '', 1901, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-3_arbreOlivDesign.png', 0, 'attachment', 'image/png', 0),
(1903, 1, '2026-02-09 23:16:04', '2026-02-09 22:16:04', '{"eco-greenest-lite::custom_logo":{"value":1906,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 22:16:04"},"eco-greenest-lite::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 21:55:31"}}', '', '', 'trash', 'closed', 'closed', '', 'f1a82b73-465a-4483-ba80-2aa833ffeebe', '', '', '2026-02-09 23:16:04', '2026-02-09 22:16:04', '', 0, 'https://belleolive.fr/?p=1903', 0, 'customize_changeset', '', 0),
(1904, 1, '2026-02-09 23:12:38', '2026-02-09 22:12:38', 'Logo Arbre Olivier', '4_logoWebsite', 'Logo Arbre Olivier', 'inherit', 'open', 'closed', '', '4_logowebsite', '', '', '2026-02-09 23:12:59', '2026-02-09 22:12:59', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/4_logoWebsite.png', 0, 'attachment', 'image/png', 0),
(1905, 1, '2026-02-09 23:15:25', '2026-02-09 22:15:25', 'Logo Arbre Olivier', '4_logoWebsite', 'Logo Arbre Olivier', 'inherit', 'open', 'closed', '', '4_logowebsite-2', '', '', '2026-02-09 23:15:41', '2026-02-09 22:15:41', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/4_logoWebsite-1.png', 0, 'attachment', 'image/png', 0),
(1906, 1, '2026-02-09 23:15:54', '2026-02-09 22:15:54', 'Logo Arbre Olivier', '4_logoWebsite', 'Logo Arbre Olivier', 'inherit', 'open', 'closed', '', '4_logowebsite-3', '', '', '2026-02-09 23:15:54', '2026-02-09 22:15:54', '', 1905, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-4_logoWebsite-1-scaled-1.png', 0, 'attachment', 'image/png', 0),
(1907, 1, '2026-02-09 23:20:02', '2026-02-09 22:20:02', 'Arbre d\'Olivier', 'cropped-arbreOlivSolo-2.png', 'Arbre d\'Olivier', 'inherit', 'open', 'closed', '', 'cropped-arbreolivsolo-2-png', '', '', '2026-02-09 23:20:02', '2026-02-09 22:20:02', '', 1897, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-arbreOlivSolo-2.png', 0, 'attachment', 'image/png', 0),
(1908, 1, '2026-02-09 23:20:06', '2026-02-09 22:20:06', '{"site_icon":{"value":1907,"type":"option","user_id":1,"date_modified_gmt":"2026-02-09 22:20:06"}}', '', '', 'trash', 'closed', 'closed', '', '245f90b4-e6c4-45b9-b2f9-52aa38791b74', '', '', '2026-02-09 23:20:06', '2026-02-09 22:20:06', '', 0, 'https://belleolive.fr/2026/02/09/245f90b4-e6c4-45b9-b2f9-52aa38791b74/', 0, 'customize_changeset', '', 0),
(1909, 1, '2026-02-09 23:20:39', '2026-02-09 22:20:39', 'Logo Arbre Olivier', 'Black', 'Logo Arbre Olivier Black', 'inherit', 'open', 'closed', '', 'black', '', '', '2026-02-09 23:21:03', '2026-02-09 22:21:03', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/Black.png', 0, 'attachment', 'image/png', 0),
(1910, 1, '2026-02-09 23:21:06', '2026-02-09 22:21:06', 'Logo Arbre Olivier', 'cropped-Black.png', 'Logo Arbre Olivier Black', 'inherit', 'open', 'closed', '', 'cropped-black-png', '', '', '2026-02-09 23:21:06', '2026-02-09 22:21:06', '', 1909, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-Black.png', 0, 'attachment', 'image/png', 0),
(1911, 1, '2026-02-09 23:21:11', '2026-02-09 22:21:11', '{"site_icon":{"value":1910,"type":"option","user_id":1,"date_modified_gmt":"2026-02-09 22:21:11"}}', '', '', 'trash', 'closed', 'closed', '', 'b3fa4233-3142-4991-9742-34e93081c95d', '', '', '2026-02-09 23:21:11', '2026-02-09 22:21:11', '', 0, 'https://belleolive.fr/2026/02/09/b3fa4233-3142-4991-9742-34e93081c95d/', 0, 'customize_changeset', '', 0),
(1912, 1, '2026-02-09 23:22:07', '2026-02-09 22:22:07', 'Arbre d\'Olivier', 'logoSoloTransparent', 'Logo Arbre d\'Olivier', 'inherit', 'open', 'closed', '', 'logosolotransparent', '', '', '2026-02-09 23:23:05', '2026-02-09 22:23:05', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/logoSoloTransparent.png', 0, 'attachment', 'image/png', 0),
(1913, 1, '2026-02-09 23:23:20', '2026-02-09 22:23:20', 'Arbre d\'Olivier', 'cropped-logoSoloTransparent.png', 'Logo Arbre d\'Olivier', 'inherit', 'open', 'closed', '', 'cropped-logosolotransparent-png', '', '', '2026-02-09 23:23:20', '2026-02-09 22:23:20', '', 1912, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-logoSoloTransparent.png', 0, 'attachment', 'image/png', 0),
(1914, 1, '2026-02-09 23:23:25', '2026-02-09 22:23:25', '{"site_icon":{"value":1913,"type":"option","user_id":1,"date_modified_gmt":"2026-02-09 22:23:25"}}', '', '', 'trash', 'closed', 'closed', '', '158e606a-b305-4f95-af98-4cada9836276', '', '', '2026-02-09 23:23:25', '2026-02-09 22:23:25', '', 0, 'https://belleolive.fr/2026/02/09/158e606a-b305-4f95-af98-4cada9836276/', 0, 'customize_changeset', '', 0),
(1915, 1, '2026-02-09 23:32:00', '2026-02-09 22:32:00', 'Logo Banner Arbre Olivier et Titre', '4_logoWebsite', 'Logo Banner Arbre Olivier et Titre', 'inherit', 'open', 'closed', '', '4_logowebsite-4', '', '', '2026-02-09 23:32:35', '2026-02-09 22:32:35', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/4_logoWebsite-2.png', 0, 'attachment', 'image/png', 0),
(1916, 1, '2026-02-09 23:32:42', '2026-02-09 22:32:42', 'Logo Banner Arbre Olivier et Titre', '4_logoWebsite', 'Logo Banner Arbre Olivier et Titre', 'inherit', 'open', 'closed', '', '4_logowebsite-5', '', '', '2026-02-09 23:32:42', '2026-02-09 22:32:42', '', 1915, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-4_logoWebsite-2-scaled-1.png', 0, 'attachment', 'image/png', 0),
(1917, 1, '2026-02-09 23:32:46', '2026-02-09 22:32:46', '{"eco-greenest-lite::custom_logo":{"value":1916,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 22:32:46"}}', '', '', 'trash', 'closed', 'closed', '', '8bec91b0-cb87-4d35-b92b-f6f67e84d7e1', '', '', '2026-02-09 23:32:46', '2026-02-09 22:32:46', '', 0, 'https://belleolive.fr/2026/02/09/8bec91b0-cb87-4d35-b92b-f6f67e84d7e1/', 0, 'customize_changeset', '', 0),
(1918, 1, '2026-02-09 23:37:12', '2026-02-09 22:37:12', 'Logo Banner Arbre Olivier et Titre', '4_logoWebsite', 'Logo Banner Arbre Olivier et Titre', 'inherit', 'open', 'closed', '', '4_logowebsite-6', '', '', '2026-02-09 23:37:24', '2026-02-09 22:37:24', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/4_logoWebsite-3.png', 0, 'attachment', 'image/png', 0),
(1919, 1, '2026-02-09 23:40:29', '2026-02-09 22:40:29', 'Logo Banner Arbre Olivier et Titre', '4_logoWebsite', 'Logo Banner Arbre Olivier et Titre', 'inherit', 'open', 'closed', '', '4_logowebsite-7', '', '', '2026-02-09 23:40:41', '2026-02-09 22:40:41', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/4_logoWebsite-4.png', 0, 'attachment', 'image/png', 0),
(1920, 1, '2026-02-09 23:40:43', '2026-02-09 22:40:43', 'Logo Banner Arbre Olivier et Titre', '4_logoWebsite', 'Logo Banner Arbre Olivier et Titre', 'inherit', 'open', 'closed', '', '4_logowebsite-8', '', '', '2026-02-09 23:40:43', '2026-02-09 22:40:43', '', 1919, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-4_logoWebsite-4-scaled-1.png', 0, 'attachment', 'image/png', 0),
(1921, 1, '2026-02-09 23:40:47', '2026-02-09 22:40:47', '{"eco-greenest-lite::custom_logo":{"value":1920,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 22:40:47"}}', '', '', 'trash', 'closed', 'closed', '', 'fb5fdbc7-a55f-4fbd-a087-67902924f02e', '', '', '2026-02-09 23:40:47', '2026-02-09 22:40:47', '', 0, 'https://belleolive.fr/2026/02/09/fb5fdbc7-a55f-4fbd-a087-67902924f02e/', 0, 'customize_changeset', '', 0),
(1922, 1, '2026-02-09 23:42:48', '2026-02-09 22:42:48', 'Logo Banner Arbre Olivier et Titre', '4_logoWebsite', 'Logo Banner Arbre Olivier et Titre', 'inherit', 'open', 'closed', '', '4_logowebsite-9', '', '', '2026-02-09 23:43:01', '2026-02-09 22:43:01', '', 0, 'https://belleolive.fr/wp-content/uploads/2026/02/4_logoWebsite-5.png', 0, 'attachment', 'image/png', 0),
(1923, 1, '2026-02-09 23:43:04', '2026-02-09 22:43:04', 'Logo Banner Arbre Olivier et Titre', '4_logoWebsite', 'Logo Banner Arbre Olivier et Titre', 'inherit', 'open', 'closed', '', '4_logowebsite-10', '', '', '2026-02-09 23:43:04', '2026-02-09 22:43:04', '', 1922, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-4_logoWebsite-5-scaled-1.png', 0, 'attachment', 'image/png', 0),
(1924, 1, '2026-02-09 23:43:08', '2026-02-09 22:43:08', '{"eco-greenest-lite::custom_logo":{"value":1923,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-09 22:43:08"}}', '', '', 'trash', 'closed', 'closed', '', '97b552ba-5b79-4f8b-a4b5-9d442c315f8f', '', '', '2026-02-09 23:43:08', '2026-02-09 22:43:08', '', 0, 'https://belleolive.fr/2026/02/09/97b552ba-5b79-4f8b-a4b5-9d442c315f8f/', 0, 'customize_changeset', '', 0),
(1925, 1, '2026-02-09 23:45:47', '2026-02-09 22:45:47', '{"nav_menu_item[8]":{"value":{"menu_item_parent":0,"object_id":8,"object":"custom","type":"custom","type_label":"Custom Link","title":"Oliveraie","url":"http:\\/\\/www.belleolive.fr\\/oliveraie\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":1,"status":"publish","_invalid":false,"original_title":""},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-09 22:45:45"}}', '', '', 'trash', 'closed', 'closed', '', '81759fe8-0793-48a4-ac87-4832711fb157', '', '', '2026-02-09 23:45:47', '2026-02-09 22:45:47', '', 0, 'https://belleolive.fr/?p=1925', 0, 'customize_changeset', '', 0),
(1926, 1, '2026-02-09 23:47:49', '2026-02-09 22:47:49', '{"nav_menu_item[1874]":{"value":{"menu_item_parent":0,"object_id":790,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/","title":"Notre mas agricole","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":2,"status":"publish","_invalid":false,"original_title":"About Us"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-09 22:47:19"}}', '', '', 'trash', 'closed', 'closed', '', '30651772-e9bf-427f-98ef-e4bdb95ed8c2', '', '', '2026-02-09 23:47:49', '2026-02-09 22:47:49', '', 0, 'https://belleolive.fr/?p=1926', 0, 'customize_changeset', '', 0),
(1927, 1, '2026-02-10 08:45:49', '2026-02-10 07:45:49', '{"nav_menu_item[1874]":{"value":{"menu_item_parent":0,"object_id":790,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/","title":"L\'histoire du Mas","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":2,"status":"publish","_invalid":false,"original_title":"About Us"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:28:32"},"nav_menu_item[1880]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:41:42"},"nav_menu_item[1887]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:42:41"},"nav_menu_item[1875]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:42:41"},"nav_menu_item[1877]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:42:41"},"nav_menu_item[1886]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:42:41"},"nav_menu_item[1876]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:42:41"},"nav_menu_item[1870]":{"value":{"menu_item_parent":0,"object_id":732,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/contact-us\\/","title":"Contacts","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":22,"status":"publish","_invalid":false,"original_title":"Contact Us"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:41:42"},"nav_menu_item[10]":{"value":{"menu_item_parent":0,"object_id":10,"object":"custom","type":"custom","type_label":"Custom Link","title":"Les Oliviers","url":"#","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":3,"status":"publish","_invalid":false,"original_title":""},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:45:41"},"nav_menu_item[1879]":{"value":{"menu_item_parent":10,"object_id":741,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/left-sidebar\\/","title":"Vari\\u00e9t\\u00e9s","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":4,"status":"publish","_invalid":false,"original_title":"Left Sidebar"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:45:41"},"nav_menu_item[1881]":{"value":{"menu_item_parent":10,"object_id":820,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/right-sidebar\\/","title":"Taille annuelle","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":5,"status":"publish","_invalid":false,"original_title":"Right Sidebar"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:45:41"},"nav_menu_item[1873]":{"value":{"menu_item_parent":10,"object_id":725,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/full-width\\/","title":"Amendement","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":6,"status":"publish","_invalid":false,"original_title":"Full Width"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:45:41"},"nav_menu_item[1882]":{"value":{"menu_item_parent":10,"object_id":817,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/no-sidebar\\/","title":"Irrigation","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":7,"status":"publish","_invalid":false,"original_title":"No Sidebar"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 07:45:49"}}', '', '', 'trash', 'closed', 'closed', '', '5e736fcc-e52b-4050-ac4f-b76dfd0edb52', '', '', '2026-02-10 08:45:49', '2026-02-10 07:45:49', '', 0, 'https://belleolive.fr/?p=1927', 0, 'customize_changeset', '', 0),
(1932, 1, '2026-02-10 13:25:09', '2026-02-10 12:25:09', 'Field Olive Grove Preview', '20251109_163140 (1)', 'Field Olive Grove Preview', 'inherit', 'open', 'closed', '', '20251109_163140-1', '', '', '2026-02-10 13:25:36', '2026-02-10 12:25:36', '', 790, 'https://belleolive.fr/wp-content/uploads/2026/02/20251109_163140-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1933, 1, '2026-02-10 13:32:55', '2026-02-10 12:32:55', '{"nav_menu_item[10]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:29:26"},"nav_menu_item[1879]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:29:26"},"nav_menu_item[1881]":{"value":{"menu_item_parent":-1442761812959853600,"object_id":820,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/right-sidebar\\/","title":"Taille annuelle","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":4,"status":"publish","_invalid":false,"original_title":"Right Sidebar"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:26"},"nav_menu_item[1873]":{"value":{"menu_item_parent":-1442761812959853600,"object_id":725,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/full-width\\/","title":"Amendement","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":5,"status":"publish","_invalid":false,"original_title":"Full Width"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:26"},"nav_menu_item[1882]":{"value":{"menu_item_parent":-1442761812959853600,"object_id":817,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/no-sidebar\\/","title":"Irrigation","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":6,"status":"publish","_invalid":false,"original_title":"No Sidebar"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:26"},"nav_menu_item[1884]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:29:26"},"nav_menu_item[1883]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:29:26"},"nav_menu_item[1870]":{"value":{"menu_item_parent":0,"object_id":732,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/contact-us\\/","title":"Contacts","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":7,"status":"publish","_invalid":false,"original_title":"Contact Us"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:26"},"nav_menu_item[8]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:26"},"nav_menu_item[1885]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:26"},"nav_menu_item[-1442761812959853600]":{"value":{"object_id":795,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"Les Oliviers","url":"https:\\/\\/belleolive.fr\\/blog\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Blog","type_label":"Posts Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:26"},"nav_menu_item[-8269408038437127000]":{"value":{"object_id":790,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"","url":"https:\\/\\/belleolive.fr\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Oliveraie","type_label":"Front Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:54"},"nav_menu_item[1874]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:30:54"},"nav_menu_item[-4675195138410089000]":{"value":{"object_id":1581,"object":"page","menu_item_parent":0,"position":8,"type":"post_type","title":"","url":"https:\\/\\/belleolive.fr\\/clients-testimonials\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Clients Testimonials","type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:32:55"}}', '', '', 'trash', 'closed', 'closed', '', '0e87345c-7b4f-4bf1-bf64-fa53f163b21c', '', '', '2026-02-10 13:32:55', '2026-02-10 12:32:55', '', 0, 'https://belleolive.fr/?p=1933', 0, 'customize_changeset', '', 0),
(1935, 1, '2026-02-11 21:32:49', '2026-02-10 12:32:55', '', 'Les Oliviers', '', 'publish', 'closed', 'closed', '', 'les-oliviers', '', '', '2026-02-11 21:32:49', '2026-02-11 20:32:49', '', 0, 'https://belleolive.fr/2026/02/10/les-oliviers/', 2, 'nav_menu_item', '', 0),
(1938, 1, '2026-02-10 13:35:00', '2026-02-10 12:35:00', '{"nav_menu_item[1937]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:33:09"},"nav_menu_item[1881]":{"value":{"menu_item_parent":1935,"object_id":820,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/right-sidebar\\/","title":"Taille annuelle","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":3,"status":"publish","_invalid":false,"original_title":"Right Sidebar"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:35:00"},"nav_menu_item[1873]":{"value":{"menu_item_parent":1935,"object_id":725,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/full-width\\/","title":"Amendement","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":4,"status":"publish","_invalid":false,"original_title":"Full Width"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:35:00"},"nav_menu_item[1882]":{"value":{"menu_item_parent":1935,"object_id":817,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/no-sidebar\\/","title":"Irrigation","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":5,"status":"publish","_invalid":false,"original_title":"No Sidebar"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:35:00"},"nav_menu_item[1870]":{"value":{"menu_item_parent":0,"object_id":732,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/contact-us\\/","title":"Contacts","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":7,"status":"publish","_invalid":false,"original_title":"Contact Us"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:35:00"},"nav_menu_item[1935]":{"value":{"object_id":795,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Les Oliviers","url":"https:\\/\\/belleolive.fr\\/blog\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Blog","type_label":"Posts Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:35:00"},"nav_menu_item[-4746526710994817000]":{"value":{"object_id":1581,"object":"page","menu_item_parent":0,"position":6,"type":"post_type","title":"L\'histoire du Mas","url":"https:\\/\\/belleolive.fr\\/clients-testimonials\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Clients Testimonials","type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 12:35:00"}}', '', '', 'trash', 'closed', 'closed', '', '3dd19210-6471-4405-a86f-37be56cbb169', '', '', '2026-02-10 13:35:00', '2026-02-10 12:35:00', '', 0, 'https://belleolive.fr/?p=1938', 0, 'customize_changeset', '', 0),
(1939, 1, '2026-02-11 21:32:50', '2026-02-10 12:35:02', ' ', '', '', 'publish', 'closed', 'closed', '', '1939', '', '', '2026-02-11 21:32:50', '2026-02-11 20:32:50', '', 0, 'https://belleolive.fr/2026/02/10/1939/', 6, 'nav_menu_item', '', 0),
(1945, 1, '2026-02-10 14:05:09', '2026-02-10 13:05:09', '{"page_on_front":{"value":"725","type":"option","user_id":1,"date_modified_gmt":"2026-02-10 13:04:30"}}', '', '', 'trash', 'closed', 'closed', '', '5ecddac1-66fb-47ab-b3ef-7dfa8943ae2d', '', '', '2026-02-10 14:05:09', '2026-02-10 13:05:09', '', 0, 'https://belleolive.fr/?p=1945', 0, 'customize_changeset', '', 0),
(1948, 1, '2026-02-10 14:07:49', '2026-02-10 13:07:49', 'Sal&Oliv', 'image1', 'Sal&Oliv', 'inherit', 'open', 'closed', '', 'image1', '', '', '2026-02-10 14:08:11', '2026-02-10 13:08:11', '', 1581, 'https://belleolive.fr/wp-content/uploads/2026/02/image1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1955, 1, '2026-02-10 16:35:01', '2026-02-10 15:35:01', '<!-- wp:image {"id":1932,"sizeSlug":"large","linkDestination":"none","align":"full"} -->\n<figure class="wp-block-image alignfull size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/20251109_163140-1-1024x482.jpg" alt="Field Olive Grove Preview" class="wp-image-1932"/><figcaption class="wp-element-caption">Field Olive Grove Preview</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Notre forêt est située dans le village de Ners en plein coeur du Gard. Sur les coteaux du puissant Gardon, nos Oliviers poussent lentement sous le soleil grâce à l\'amour qu\'on leur donne tous les jours ☀️ Et même, lorsqu\'ils ont décidé de ne pas produire...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>L\'Oliveraie est composée de 7 champs représentant au total une surface raisonnable et solide de 3 hectares soit 3000 m²</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1996,"sizeSlug":"large","linkDestination":"none","align":"wide"} -->\n<figure class="wp-block-image alignwide size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/oliveraie-wide-1024x437.jpg" alt="" class="wp-image-1996"/></figure>\n<!-- /wp:image -->', 'Oliveraie', '', 'publish', 'closed', 'closed', '', 'oliveraie', '', '', '2026-02-10 17:59:01', '2026-02-10 16:59:01', '', 0, 'https://belleolive.fr/?page_id=1955', 0, 'page', '', 0),
(1957, 1, '2026-02-10 16:37:05', '2026-02-10 15:37:05', '{"eco-greenest-lite::eco_greenest_lite_homepageslider1":{"value":"1955","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-10 15:36:45"}}', '', '', 'trash', 'closed', 'closed', '', '8cd9dc3e-0257-4343-a347-96cb8bf30175', '', '', '2026-02-10 16:37:05', '2026-02-10 15:37:05', '', 0, 'https://belleolive.fr/?p=1957', 0, 'customize_changeset', '', 0),
(1960, 1, '2026-02-10 16:43:57', '2026-02-10 15:43:57', 'Welcome Field Olive Grove Preview', 'Bienvenue dans Notre Oliveraie', 'Welcome Field Olive Grove Preview', 'inherit', 'open', 'closed', '', 'oliveraie-2', '', '', '2026-02-10 16:44:37', '2026-02-10 15:44:37', '', 790, 'https://belleolive.fr/wp-content/uploads/2026/02/oliveraie.jpg', 0, 'attachment', 'image/jpeg', 0),
(1964, 1, '2026-02-10 16:47:54', '2026-02-10 15:47:54', '{"nav_menu_item[1936]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 15:47:54"},"nav_menu_item[-1459635687133251600]":{"value":{"object_id":1955,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"","url":"https:\\/\\/belleolive.fr\\/oliveraie\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Oliveraie","type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-10 15:47:54"}}', '', '', 'trash', 'closed', 'closed', '', '1fac6b0a-7e31-40ee-ae74-08fd7ac4db43', '', '', '2026-02-10 16:47:54', '2026-02-10 15:47:54', '', 0, 'https://belleolive.fr/2026/02/10/1fac6b0a-7e31-40ee-ae74-08fd7ac4db43/', 0, 'customize_changeset', '', 0),
(1965, 1, '2026-02-11 21:32:49', '2026-02-10 15:47:54', ' ', '', '', 'publish', 'closed', 'closed', '', '1965', '', '', '2026-02-11 21:32:49', '2026-02-11 20:32:49', '', 0, 'https://belleolive.fr/2026/02/10/1965/', 1, 'nav_menu_item', '', 0),
(1966, 1, '2026-02-10 17:04:36', '2026-02-10 16:04:36', '<!-- wp:paragraph -->\n<p>Notre production est familiale, respectueuse de l\'environnement, naturelle et organique.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":2020,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/olivCase-1024x522.png" alt="olive grove with a case" class="wp-image-2020"/><figcaption class="wp-element-caption">olive grove with a case</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Tous nos procédés sont pour l\'instant mécanique et low tech. Nous mettons du fumier naturel quand c\'est possible, nous n\'irriguons pas les oliviers et les laissons puiser dans le sol les ressources nécessaires. La taille et l\'entretien est faite à la main ainsi que la récolte des précieuses Olives au rateau manuel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1975,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/IMG_20260208_175400-EDIT-2-1024x686.jpg" alt="" class="wp-image-1975"/><figcaption class="wp-element-caption">Bouteille Huile Olive carrée</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'La nature de nos Huiles', '', 'publish', 'closed', 'closed', '', 'la-nature-de-nos-huiles', '', '', '2026-02-10 18:32:04', '2026-02-10 17:32:04', '', 0, 'https://belleolive.fr/?page_id=1966', 0, 'page', '', 0),
(1968, 1, '2026-02-10 17:09:12', '2026-02-10 16:09:12', 'bouteille', 'IMG_20260208_175400-EDIT', 'bouteille', 'inherit', 'open', 'closed', '', 'img_20260208_175400-edit', '', '', '2026-02-10 17:10:22', '2026-02-10 16:10:22', '', 1966, 'https://belleolive.fr/wp-content/uploads/2026/02/IMG_20260208_175400-EDIT.jpg', 0, 'attachment', 'image/jpeg', 0),
(1970, 1, '2026-02-10 17:12:10', '2026-02-10 16:12:10', '{"eco-greenest-lite::eco_greenest_lite_3pagebx1":{"value":"1966","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-10 16:11:53"},"eco-greenest-lite::eco_greenest_lite_show_3pagebx_sections":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-10 16:11:53"}}', '', '', 'trash', 'closed', 'closed', '', '3ab6c2e3-f0db-4848-b2ac-137fe9599d62', '', '', '2026-02-10 17:12:10', '2026-02-10 16:12:10', '', 0, 'https://belleolive.fr/?p=1970', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1971, 1, '2026-02-10 17:14:53', '2026-02-10 16:14:53', 'Bouteille Huile Olive carrée', 'IMG_20260208_175400-EDIT', 'Bouteille Huile Olive carrée', 'inherit', 'open', 'closed', '', 'img_20260208_175400-edit-2', '', '', '2026-02-10 17:15:53', '2026-02-10 16:15:53', '', 1966, 'https://belleolive.fr/wp-content/uploads/2026/02/IMG_20260208_175400-EDIT-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1975, 1, '2026-02-10 17:22:29', '2026-02-10 16:22:29', '', 'IMG_20260208_175400-EDIT', '', 'inherit', 'open', 'closed', '', 'img_20260208_175400-edit-3', '', '', '2026-02-10 17:22:29', '2026-02-10 16:22:29', '', 1966, 'https://belleolive.fr/wp-content/uploads/2026/02/IMG_20260208_175400-EDIT-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1977, 1, '2026-02-10 17:37:41', '2026-02-10 16:37:41', '<!-- wp:paragraph -->\n<p>Notre indéfectible et élitiste pressoir est en réalité notre plus fidèle partenaire. Nous faisons présser nos Olives Negrette, Picholine, Aglandau et Bouteillan dans ce moulin qui a reçu de nombreuses récompenses.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1978,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-1024x507.jpg" alt="" class="wp-image-1978"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Il ont la médaille d\'or Paris 2025 et pas moins de 25 médailles de meilleur huile d\'Olive de France au total à leur palmarès! Allez consulter leur gamme et leur site web <a href="http://huile-olive-paradis.com" target="_blank" rel="noreferrer noopener">huile-olive-paradis.com</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"lightbox":{"enabled":false},"id":1987,"sizeSlug":"full","linkDestination":"custom"} -->\n<figure class="wp-block-image size-full"><a href="http://huile-olive-paradis.com" target="_blank" rel="belleOliveParadis"><img src="https://belleolive.fr/wp-content/uploads/2026/02/paradis-logo-big.png" alt="" class="wp-image-1987"/></a></figure>\n<!-- /wp:image -->', 'Moulin Paradis', '', 'publish', 'closed', 'closed', '', 'moulins-paradis', '', '', '2026-02-10 17:55:17', '2026-02-10 16:55:17', '', 0, 'https://belleolive.fr/?page_id=1977', 0, 'page', '', 0),
(1978, 1, '2026-02-10 17:28:56', '2026-02-10 16:28:56', '', 'original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr', '', 'inherit', 'open', 'closed', '', 'original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_img_20231208_140152_hdr', '', '', '2026-02-10 17:28:56', '2026-02-10 16:28:56', '', 1977, 'https://belleolive.fr/wp-content/uploads/2026/02/original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr.jpg', 0, 'attachment', 'image/jpeg', 0),
(1980, 1, '2026-02-10 17:38:00', '2026-02-10 16:38:00', 'paradis logo', 'paradislogo', 'paradis logo', 'inherit', 'open', 'closed', '', 'paradislogo', '', '', '2026-02-10 17:38:11', '2026-02-10 16:38:11', '', 1977, 'https://belleolive.fr/wp-content/uploads/2026/02/paradislogo.png', 0, 'attachment', 'image/png', 0),
(1981, 1, '2026-02-10 17:40:20', '2026-02-10 16:40:20', '{"eco-greenest-lite::eco_greenest_lite_3pagebx2":{"value":"1977","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-10 16:38:53"}}', '', '', 'trash', 'closed', 'closed', '', 'f3fc1bac-d264-4e5f-859c-75d2f14c884b', '', '', '2026-02-10 17:40:20', '2026-02-10 16:40:20', '', 0, 'https://belleolive.fr/?p=1981', 0, 'customize_changeset', '', 0),
(1987, 1, '2026-02-10 17:52:07', '2026-02-10 16:52:07', '', 'paradis-logo-big', '', 'inherit', 'open', 'closed', '', 'paradis-logo-big', '', '', '2026-02-10 17:52:07', '2026-02-10 16:52:07', '', 1977, 'https://belleolive.fr/wp-content/uploads/2026/02/paradis-logo-big.png', 0, 'attachment', 'image/png', 0),
(1996, 1, '2026-02-10 17:58:47', '2026-02-10 16:58:47', 'olive wide grove', 'oliveraie-wide', 'olive wide grove', 'inherit', 'open', 'closed', '', 'oliveraie-wide', '', '', '2026-02-10 18:00:11', '2026-02-10 17:00:11', '', 1955, 'https://belleolive.fr/wp-content/uploads/2026/02/oliveraie-wide.jpg', 0, 'attachment', 'image/jpeg', 0),
(1999, 1, '2026-02-10 18:16:45', '2026-02-10 17:16:45', '<!-- wp:image {"id":2003,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/caisse150KG-1024x768.jpg" alt="olive case 150KG" class="wp-image-2003"/><figcaption class="wp-element-caption">olive case 150KG</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>Dominance<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>0 ~80 % Négrette (Petite olive noire Cévenols. Douce, fine et poivrée en fin de bouche. Réglisse et fruits secs)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>&lt;20 %<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li> Bouteillan (végétal, fruité vert et herbacé)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Picholine (amertume, arômes fruités pomme et artichaut)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Aglandau (fruité vert et poivre)</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>Caractéristiques<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>Zéro pesticides de synthèse &amp; Zéro engrais chimique</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Huile naturelle</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Récolte mécanique à la main (au peigne)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Moulin Paradis THE presse mécanique à froid</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Non filtré</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:group {"layout":{"type":"constrained"}} -->\n<div class="wp-block-group"><!-- wp:image {"id":2000,"sizeSlug":"full","linkDestination":"none","align":"center"} -->\n<figure class="wp-block-image aligncenter size-full"><img src="https://belleolive.fr/wp-content/uploads/2026/02/olivNet.jpg" alt="olive grove net" class="wp-image-2000"/><figcaption class="wp-element-caption">olive grove net</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Provenance: Ners à côté d\'Ales dans le Gard (30)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Exploitants familiaux</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p class="has-text-align-center">Sal &amp; Olivier 0786127822 (sms)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->', 'Sauvage et racée', '', 'publish', 'closed', 'closed', '', 'sauvage-et-racee', '', '', '2026-02-10 18:19:08', '2026-02-10 17:19:08', '', 0, 'https://belleolive.fr/?page_id=1999', 0, 'page', '', 0),
(2000, 1, '2026-02-10 18:15:11', '2026-02-10 17:15:11', 'olive grove net', 'olivNet', 'olive grove net', 'inherit', 'open', 'closed', '', 'olivnet', '', '', '2026-02-10 18:15:21', '2026-02-10 17:15:21', '', 1999, 'https://belleolive.fr/wp-content/uploads/2026/02/olivNet.jpg', 0, 'attachment', 'image/jpeg', 0),
(2003, 1, '2026-02-10 18:17:20', '2026-02-10 17:17:20', 'olive case 150KG', 'caisse150KG', 'olive case 150KG', 'inherit', 'open', 'closed', '', 'caisse150kg', '', '', '2026-02-10 18:17:37', '2026-02-10 17:17:37', '', 1999, 'https://belleolive.fr/wp-content/uploads/2026/02/caisse150KG.jpg', 0, 'attachment', 'image/jpeg', 0),
(2005, 1, '2026-02-10 18:19:13', '2026-02-10 17:19:13', '{"eco-greenest-lite::eco_greenest_lite_3pagebx3":{"value":"1999","type":"theme_mod","user_id":1,"date_modified_gmt":"2026-02-10 17:18:41"}}', '', '', 'trash', 'closed', 'closed', '', 'd8f4fac3-da41-4370-b531-5f65a3cdc40d', '', '', '2026-02-10 18:19:13', '2026-02-10 17:19:13', '', 0, 'https://belleolive.fr/?p=2005', 0, 'customize_changeset', '', 0),
(2020, 1, '2026-02-10 18:27:56', '2026-02-10 17:27:56', 'olive grove with a case', 'olivCase', 'olive grove with a case', 'inherit', 'open', 'closed', '', 'olivcase', '', '', '2026-02-10 18:30:27', '2026-02-10 17:30:27', '', 1966, 'https://belleolive.fr/wp-content/uploads/2026/02/olivCase.png', 0, 'attachment', 'image/png', 0),
(2023, 1, '2026-02-10 18:34:08', '2026-02-10 17:34:08', 'Mas Belles Olives', 'mas', 'Mas Belles Olives', 'inherit', 'open', 'closed', '', 'mas', '', '', '2026-02-10 18:34:32', '2026-02-10 17:34:32', '', 1581, 'https://belleolive.fr/wp-content/uploads/2026/02/mas.jpg', 0, 'attachment', 'image/jpeg', 0),
(2027, 1, '2026-02-10 22:16:49', '2026-02-10 21:16:49', '[contact-form-7 id="1880" title="Contact form 1"]', 'Contact Us', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:16:49', '2026-02-10 21:16:49', '', 732, 'https://belleolive.fr/?p=2027', 0, 'revision', '', 0),
(2028, 1, '2026-02-10 22:19:14', '2026-02-10 21:19:14', '[contact-form-7 id="1880" title="Contact form 1"]', 'Contact', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:19:14', '2026-02-10 21:19:14', '', 732, 'https://belleolive.fr/?p=2028', 0, 'revision', '', 0),
(2029, 1, '2026-02-10 22:21:52', '2026-02-10 21:21:52', '<!-- wp:group {"layout":{"type":"flex","flexWrap":"nowrap"}} -->\n<div class="wp-block-group"><!-- wp:shortcode -->\n[contact-form-7 id="1880" title="Contact form 1"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Moi</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->', 'Contact', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:21:52', '2026-02-10 21:21:52', '', 732, 'https://belleolive.fr/?p=2029', 0, 'revision', '', 0),
(2031, 1, '2026-02-10 22:23:15', '2026-02-10 21:23:15', '<!-- wp:group {"layout":{"type":"flex","flexWrap":"nowrap"}} -->\n<div class="wp-block-group"><!-- wp:paragraph {"align":"right"} -->\n<p class="has-text-align-right">Moi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id="1880" title="Contact form 1"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:group -->', 'Contact', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:23:15', '2026-02-10 21:23:15', '', 732, 'https://belleolive.fr/?p=2031', 0, 'revision', '', 0),
(2033, 1, '2026-02-10 22:26:58', '2026-02-10 21:26:58', '<!-- wp:shortcode -->\n[contact-form-7 id="1880" title="Contact form 1"]\n<!-- /wp:shortcode -->\n\n<!-- wp:group {"layout":{"type":"flex","flexWrap":"nowrap","justifyContent":"space-between"}} -->\n<div class="wp-block-group"><!-- wp:paragraph {"align":"right"} -->\n<p class="has-text-align-right">Moi</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:26:58', '2026-02-10 21:26:58', '', 732, 'https://belleolive.fr/?p=2033', 0, 'revision', '', 0),
(2035, 1, '2026-02-10 22:30:26', '2026-02-10 21:30:26', '<!-- wp:group {"layout":{"type":"flex","flexWrap":"nowrap","justifyContent":"center"}} -->\n<div class="wp-block-group"><!-- wp:shortcode -->\n[contact-form-7 id="1880" title="Contact form 1"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph {"align":"right"} -->\n<p class="has-text-align-right">Moi</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {"layout":{"type":"flex","flexWrap":"nowrap"}} -->\n<div class="wp-block-group"></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:30:26', '2026-02-10 21:30:26', '', 732, 'https://belleolive.fr/?p=2035', 0, 'revision', '', 0),
(2037, 1, '2026-02-10 22:34:29', '2026-02-10 21:34:29', '<!-- wp:shortcode -->\n[contact-form-7 id="1880" title="Contact form 1"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Notre Dépôt: 1 Rue Boumba Quiou, 30360 Ners, France</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sms de rendez-vous: <a href="https://www.google.com/search?sca_esv=45c182c267c17b0e&amp;hl=en&amp;gl=us&amp;authuser=1&amp;sxsrf=ANbL-n4xEKhjoiyfM3HfwL0GnhndjTnJLQ:1770662934061&amp;kgmid=/g/11yyjf2w_d&amp;q=Les+Belles+Olives+De+Ners&amp;shndl=30&amp;source=sh/x/loc/uni/m1/1&amp;kgs=d1f1145c7ad8a656&amp;shem=shrtsdl&amp;utm_source=shrtsdl,sh/x/loc/uni/m1/1#">+33 7 86 12 78 22</a></p>\n<!-- /wp:paragraph -->', 'Contact', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:34:29', '2026-02-10 21:34:29', '', 732, 'https://belleolive.fr/?p=2037', 0, 'revision', '', 0),
(2039, 1, '2026-02-10 22:41:07', '2026-02-10 21:41:07', '', 'circle', '', 'inherit', 'open', 'closed', '', 'circle', '', '', '2026-02-10 22:41:07', '2026-02-10 21:41:07', '', 732, 'https://belleolive.fr/wp-content/uploads/2026/02/circle.png', 0, 'attachment', 'image/png', 0),
(2040, 1, '2026-02-10 22:41:44', '2026-02-10 21:41:44', '', 'circle', '', 'inherit', 'open', 'closed', '', 'circle-2', '', '', '2026-02-10 22:41:44', '2026-02-10 21:41:44', '', 732, 'https://belleolive.fr/wp-content/uploads/2026/02/circle-1.png', 0, 'attachment', 'image/png', 0),
(2041, 1, '2026-02-10 22:42:56', '2026-02-10 21:42:56', '', 'call', '', 'inherit', 'open', 'closed', '', 'call', '', '', '2026-02-10 22:42:56', '2026-02-10 21:42:56', '', 732, 'https://belleolive.fr/wp-content/uploads/2026/02/call.png', 0, 'attachment', 'image/png', 0),
(2042, 1, '2026-02-10 22:43:53', '2026-02-10 21:43:53', '', 'call', '', 'inherit', 'open', 'closed', '', 'call-2', '', '', '2026-02-10 22:43:53', '2026-02-10 21:43:53', '', 732, 'https://belleolive.fr/wp-content/uploads/2026/02/call-1.png', 0, 'attachment', 'image/png', 0),
(2043, 1, '2026-02-10 22:44:18', '2026-02-10 21:44:18', '', 'circle', '', 'inherit', 'open', 'closed', '', 'circle-3', '', '', '2026-02-10 22:44:18', '2026-02-10 21:44:18', '', 732, 'https://belleolive.fr/wp-content/uploads/2026/02/circle-2.png', 0, 'attachment', 'image/png', 0),
(2044, 1, '2026-02-10 22:47:47', '2026-02-10 21:47:47', '', 'circle', '', 'inherit', 'open', 'closed', '', 'circle-4', '', '', '2026-02-10 22:47:47', '2026-02-10 21:47:47', '', 732, 'https://belleolive.fr/wp-content/uploads/2026/02/circle-3.png', 0, 'attachment', 'image/png', 0),
(2045, 1, '2026-02-10 22:48:44', '2026-02-10 21:48:44', '<!-- wp:shortcode -->\n[contact-form-7 id="1880" title="Contact form 1"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Envoyez nous un sms pour prendre rendez-vous au <a href="https://www.google.com/search?sca_esv=45c182c267c17b0e&amp;hl=en&amp;gl=us&amp;authuser=1&amp;sxsrf=ANbL-n4xEKhjoiyfM3HfwL0GnhndjTnJLQ:1770662934061&amp;kgmid=/g/11yyjf2w_d&amp;q=Les+Belles+Olives+De+Ners&amp;shndl=30&amp;source=sh/x/loc/uni/m1/1&amp;kgs=d1f1145c7ad8a656&amp;shem=shrtsdl&amp;utm_source=shrtsdl,sh/x/loc/uni/m1/1#">+33 7 86 12 78 22</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Notre Dépôt: 1 Rue Boumba Quiou, 30360 Ners, France</p>\n<!-- /wp:paragraph -->', 'Contact', '\n				\n								', 'inherit', 'closed', 'closed', '', '732-revision-v1', '', '', '2026-02-10 22:48:44', '2026-02-10 21:48:44', '', 732, 'https://belleolive.fr/?p=2045', 0, 'revision', '', 0),
(2046, 1, '2026-02-11 08:20:45', '2026-02-11 07:20:45', 'Sal&Oliv Wide', 'sal-olivier-wide', 'Sal&Oliv Wide', 'inherit', 'open', 'closed', '', 'sal-olivier-wide', '', '', '2026-02-11 08:21:01', '2026-02-11 07:21:01', '', 1581, 'https://belleolive.fr/wp-content/uploads/2026/02/sal-olivier-wide.jpeg', 0, 'attachment', 'image/jpeg', 0),
(2047, 1, '2026-02-11 08:21:16', '2026-02-11 07:21:16', '<!-- wp:image {"id":2023,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023"/><figcaption class="wp-element-caption">Mas Belles Olives</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&Oliv</figcaption></figure>\n<!-- /wp:image -->', 'L\'histoire du Mas', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2026-02-11 08:21:16', '2026-02-11 07:21:16', '', 1581, 'https://belleolive.fr/?p=2047', 0, 'revision', '', 0),
(2049, 1, '2026-02-11 08:26:07', '2026-02-11 07:26:07', '<!-- wp:image {"id":2023,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023"/><figcaption class="wp-element-caption">Mas Belles Olives</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps. Un enfant du pays né en France, déporté aux Etats-Unis pour échapper aux Nazis qui devient un grand professeur de literature, Sal est né.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&amp;Oliv</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'L\'histoire du Mas', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2026-02-11 08:26:07', '2026-02-11 07:26:07', '', 1581, 'https://belleolive.fr/?p=2049', 0, 'revision', '', 0),
(2051, 1, '2026-02-11 08:27:46', '2026-02-11 07:27:46', '<!-- wp:image {"id":2023,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023"/><figcaption class="wp-element-caption">Mas Belles Olives</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps. Un enfant du pays né en France, déporté aux Etats-Unis pour échapper aux Nazis qui devient un grand professeur de literature, Sal est né. De retour en France, il s\'installe a Ners un petit village pitoresque dans la vallée du Gardon, non loin d\'Ales. Et c\'est la que tout commence...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&amp;Oliv</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'L\'histoire du Mas', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2026-02-11 08:27:46', '2026-02-11 07:27:46', '', 1581, 'https://belleolive.fr/?p=2051', 0, 'revision', '', 0),
(2053, 1, '2026-02-11 08:33:51', '2026-02-11 07:33:51', '<!-- wp:image {"id":2023,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023"/><figcaption class="wp-element-caption">Mas Belles Olives</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps. Un enfant du pays né en France, déporté aux Etats-Unis pour échapper aux Nazis qui devient un grand professeur de literature, Sal est né. De retour en France, il s\'installe a Ners un petit village pitoresque dans la vallée du Gardon, non loin d\'Ales. Et c\'est la que tout commence...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&amp;Oliv</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Oliv de son côté n\'est pas destiné a rencontrer cet homme au départ mais la destinée met Sal sur son chemin lors de son expatriement à Pékin en Chine. Ces deux hommes que 48ans séparent se retrouvent sur les chemins de Stevenson en 2018.</p>\n<!-- /wp:paragraph -->', 'L\'histoire du Mas', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2026-02-11 08:33:51', '2026-02-11 07:33:51', '', 1581, 'https://belleolive.fr/?p=2053', 0, 'revision', '', 0),
(2055, 1, '2026-02-11 20:46:28', '2026-02-11 19:46:28', '<!-- wp:image {"id":2023,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023"/><figcaption class="wp-element-caption">Mas Belles Olives</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps. Un enfant du pays né en France, déporté aux Etats-Unis pour échapper aux Nazis qui devient un grand professeur de literature, Sal est né. De retour en France, il s\'installe a Ners un petit village pitoresque dans la vallée du Gardon, non loin d\'Ales. Et c\'est la que tout commence...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&amp;Oliv</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Oliv est un entrepreneur du massif central qui a voulu changer de vie. A la crise de la 40aine, il quitte son  confortable bureau de freelance développeur pour jongler avec les olives et jouer de la débrousailleuse. Son instinct naturel et ses appétences pour le Bricol\'Tout autodidacte en fait un atout majeur pour mener à bien la commercialisation et l\'entretien des Oliveraies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oliv de son côté n\'est pas destiné a rencontrer cet homme au départ mais la destinée met Sal sur son chemin lors de son expatriement à Pékin en Chine. Ces deux hommes que 48ans séparent se retrouvent sur les chemins de Stevenson en 2018. Un Auvergnat associé à un Américain, quel choc des civilisations!</p>\n<!-- /wp:paragraph -->', 'L\'histoire du Mas', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2026-02-11 20:46:28', '2026-02-11 19:46:28', '', 1581, 'https://belleolive.fr/?p=2055', 0, 'revision', '', 0),
(2057, 1, '2026-02-11 20:49:36', '2026-02-11 19:49:36', 'Mas au fond du jardin', 'mas-oliviers', 'Mas au fond du jardin', 'inherit', 'open', 'closed', '', 'mas-oliviers', '', '', '2026-02-11 20:50:59', '2026-02-11 19:50:59', '', 1581, 'https://belleolive.fr/wp-content/uploads/2026/02/mas-oliviers.jpg', 0, 'attachment', 'image/jpeg', 0),
(2058, 1, '2026-02-11 20:53:32', '2026-02-11 19:53:32', '<!-- wp:image {"id":2057,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-oliviers-1024x631.jpg" alt="Mas au fond du jardin" class="wp-image-2057"/><figcaption class="wp-element-caption">Mas au fond du jardin</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps. Un enfant du pays né en France, déporté aux Etats-Unis pour échapper aux Nazis qui devient un grand professeur de literature, Sal est né. De retour en France, il s\'installe a Ners un petit village pitoresque dans la vallée du Gardon, non loin d\'Ales. Et c\'est la que tout commence...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&amp;Oliv</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Oliv est un entrepreneur du massif central qui a voulu changer de vie. A la crise de la 40aine, il quitte son  confortable bureau de freelance développeur pour jongler avec les olives et jouer de la débrousailleuse. Son instinct naturel et ses appétences pour le Bricol\'Tout autodidacte en fait un atout majeur pour mener à bien la commercialisation et l\'entretien des Oliveraies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oliv de son côté n\'est pas destiné a rencontrer cet homme au départ mais la destinée met Sal sur son chemin lors de son expatriement à Pékin en Chine. Ces deux hommes que 48ans séparent se retrouvent sur les chemins de Stevenson en 2018. Un Auvergnat associé à un Américain, quel choc des civilisations!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {"mediaId":2023,"mediaType":"image"} -->\n<div class="wp-block-media-text is-stacked-on-mobile"><figure class="wp-block-media-text__media"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023 size-full"/></figure><div class="wp-block-media-text__content"><!-- wp:paragraph {"placeholder":"Content…"} -->\n<p>Le Mazet de l\'oliveraie est au centre de notre activité. Il permet le stockage des outils et la récupération d\'eau de pluie. Il stock aussi quelques jours tout au plus les olives qui seront amenées au Moulin Paradis pour presser les 150kg d\'olives soit 10 caisses remplies le plus rapidement possible</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'L\'histoire du Mas', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2026-02-11 20:53:32', '2026-02-11 19:53:32', '', 1581, 'https://belleolive.fr/?p=2058', 0, 'revision', '', 0),
(2059, 1, '2026-02-11 20:55:34', '2026-02-11 19:55:34', '<!-- wp:image {"id":2057,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-oliviers-1024x631.jpg" alt="Mas au fond du jardin" class="wp-image-2057"/><figcaption class="wp-element-caption">Mas au fond du jardin</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {"align":"left"} -->\n<p class="has-text-align-left">Vous allez entrer dans la merveilleuse épopée des Belles Olives De Ners. Tout d\'abord un histoire hors du temps. Un enfant du pays né en France, déporté aux Etats-Unis pour échapper aux Nazis qui devient un grand professeur de literature, Sal est né. De retour en France, il s\'installe a Ners un petit village pitoresque dans la vallée du Gardon, non loin d\'Ales. Et c\'est la que tout commence...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":1948,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg" alt="Sal&amp;Oliv" class="wp-image-1948"/><figcaption class="wp-element-caption">Sal&amp;Oliv</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Oliv est un entrepreneur du massif central qui a voulu changer de vie. A la crise de la 40aine, il quitte son  confortable bureau de freelance développeur pour jongler avec les olives et jouer de la débrousailleuse. Son instinct naturel et ses appétences pour le Bricol\'Tout autodidacte en fait un atout majeur pour mener à bien la commercialisation et l\'entretien des Oliveraies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oliv de son côté n\'est pas destiné a rencontrer cet homme au départ mais la destinée met Sal sur son chemin lors de son expatriement à Pékin en Chine en 2010. Ces deux hommes que 48ans séparent se retrouvent sur les chemins de Stevenson en 2018. Un Auvergnat associé à un Américain, quel choc des civilisations!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:media-text {"mediaId":2023,"mediaType":"image"} -->\n<div class="wp-block-media-text is-stacked-on-mobile"><figure class="wp-block-media-text__media"><img src="https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg" alt="Mas Belles Olives" class="wp-image-2023 size-full"/></figure><div class="wp-block-media-text__content"><!-- wp:paragraph {"placeholder":"Content…"} -->\n<p>Le Mazet de l\'oliveraie est au centre de notre activité. Il permet le stockage des outils et la récupération d\'eau de pluie. Il stock aussi quelques jours tout au plus les olives qui seront amenées au Moulin Paradis pour presser les 150kg d\'olives soit 10 caisses remplies le plus rapidement possible</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'L\'histoire du Mas', '', 'inherit', 'closed', 'closed', '', '1581-revision-v1', '', '', '2026-02-11 20:55:34', '2026-02-11 19:55:34', '', 1581, 'https://belleolive.fr/?p=2059', 0, 'revision', '', 0),
(2060, 1, '2026-02-11 20:59:57', '2026-02-11 19:59:57', '\n				\n								', 'Blog Left Sidebar', '\n				\n								', 'inherit', 'closed', 'closed', '', '797-revision-v1', '', '', '2026-02-11 20:59:57', '2026-02-11 19:59:57', '', 797, 'https://belleolive.fr/?p=2060', 0, 'revision', '', 0),
(2061, 1, '2026-02-11 21:00:10', '2026-02-11 20:00:10', '\n				\n								', 'Blog Right Sidebar', '\n				\n								', 'inherit', 'closed', 'closed', '', '799-revision-v1', '', '', '2026-02-11 21:00:10', '2026-02-11 20:00:10', '', 799, 'https://belleolive.fr/?p=2061', 0, 'revision', '', 0),
(2062, 1, '2026-02-11 21:00:31', '2026-02-11 20:00:31', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Lavel 2', '\n				\n								', 'inherit', 'closed', 'closed', '', '812-revision-v1', '', '', '2026-02-11 21:00:31', '2026-02-11 20:00:31', '', 812, 'https://belleolive.fr/?p=2062', 0, 'revision', '', 0),
(2063, 1, '2026-02-11 21:00:33', '2026-02-11 20:00:33', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Lavel 3', '\n				\n								', 'inherit', 'closed', 'closed', '', '815-revision-v1', '', '', '2026-02-11 21:00:33', '2026-02-11 20:00:33', '', 815, 'https://belleolive.fr/?p=2063', 0, 'revision', '', 0),
(2064, 1, '2026-02-11 21:01:17', '2026-02-11 20:01:17', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="https://belleolive.fr/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2026-02-11 21:01:17', '2026-02-11 20:01:17', '', 2, 'https://belleolive.fr/?p=2064', 0, 'revision', '', 0),
(2065, 1, '2026-02-11 21:09:08', '2026-02-11 20:09:08', '\n				\n								', 'Blog', '\n				\n								', 'inherit', 'closed', 'closed', '', '795-revision-v1', '', '', '2026-02-11 21:09:08', '2026-02-11 20:09:08', '', 795, 'https://belleolive.fr/?p=2065', 0, 'revision', '', 0),
(2066, 1, '2026-02-11 21:09:36', '2026-02-11 20:09:36', '\n				\n								', 'Blog Full Width', '\n				\n								', 'inherit', 'closed', 'closed', '', '835-revision-v1', '', '', '2026-02-11 21:09:36', '2026-02-11 20:09:36', '', 835, 'https://belleolive.fr/?p=2066', 0, 'revision', '', 0),
(2067, 1, '2026-02-11 21:10:13', '2026-02-11 20:10:13', '\n				\n								', 'Blog Grid Layout', '\n				\n								', 'inherit', 'closed', 'closed', '', '935-revision-v1', '', '', '2026-02-11 21:10:13', '2026-02-11 20:10:13', '', 935, 'https://belleolive.fr/?p=2067', 0, 'revision', '', 0),
(2068, 1, '2026-02-11 21:10:28', '2026-02-11 20:10:28', '\n				\n								', 'Blog No Sidebar', '\n				\n								', 'inherit', 'closed', 'closed', '', '798-revision-v1', '', '', '2026-02-11 21:10:28', '2026-02-11 20:10:28', '', 798, 'https://belleolive.fr/?p=2068', 0, 'revision', '', 0),
(2069, 1, '2026-02-11 21:10:43', '2026-02-11 20:10:43', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Dropdown Level 1', '\n				\n								', 'inherit', 'closed', 'closed', '', '807-revision-v1', '', '', '2026-02-11 21:10:43', '2026-02-11 20:10:43', '', 807, 'https://belleolive.fr/?p=2069', 0, 'revision', '', 0),
(2070, 1, '2026-02-11 21:10:56', '2026-02-11 20:10:56', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Left Sidebar', '\n				\n								', 'inherit', 'closed', 'closed', '', '741-revision-v1', '', '', '2026-02-11 21:10:56', '2026-02-11 20:10:56', '', 741, 'https://belleolive.fr/?p=2070', 0, 'revision', '', 0),
(2071, 1, '2026-02-11 21:17:43', '2026-02-11 20:17:43', '', '', '\n				\n								', 'inherit', 'closed', 'closed', '', '725-revision-v1', '', '', '2026-02-11 21:17:43', '2026-02-11 20:17:43', '', 725, 'https://belleolive.fr/?p=2071', 0, 'revision', '', 0),
(2072, 1, '2026-02-11 21:18:48', '2026-02-11 20:18:48', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'No Sidebar', '\n				\n								', 'inherit', 'closed', 'closed', '', '817-revision-v1', '', '', '2026-02-11 21:18:48', '2026-02-11 20:18:48', '', 817, 'https://belleolive.fr/?p=2072', 0, 'revision', '', 0),
(2073, 1, '2026-02-11 21:19:24', '2026-02-11 20:19:24', '\n				\n				Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.\n\nLorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.Lorem lipsum Dolor nunc vule putateulr ips dol consec.Donec semp ertet laciniate ultricie upien disse comete dolo lectus fgilla itollicil tua ludin dolor. nec met quam accumsan dolore condime netus lullam utlacus adipiscing ipsum molestie euismod estibulum vel.				', 'Right Sidebar', '\n				\n								', 'inherit', 'closed', 'closed', '', '820-revision-v1', '', '', '2026-02-11 21:19:24', '2026-02-11 20:19:24', '', 820, 'https://belleolive.fr/?p=2073', 0, 'revision', '', 0),
(2074, 1, '2026-02-11 21:28:57', '2026-02-11 20:28:57', '<!-- wp:image {"id":2076,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/patio-1024x671.jpg" alt="Patio in Ners with a book" class="wp-image-2076"/><figcaption class="wp-element-caption">Patio in Ners with a book</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Les ramasseurs (pickers) sont des bénévoles saisonniers (en anglais Woofers) qui viennent donner la main lors de la récolte des olives. Les conditions d\'accueil sont les suivantes:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>Gîte et couvert</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Récompense en Huile: 1L/jour pour 6h de travail a son rythme pause déjeuner inclue (~1caisse)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Maison de caractère en pierre en plein centre de Ners à 5min de l\'Oliveraie<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>Billard</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Patio intérieur</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {"id":2075,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/pickers-1024x768.jpg" alt="" class="wp-image-2075"/></figure>\n<!-- /wp:image -->', 'Picker Woofer', '', 'publish', 'closed', 'closed', '', 'picker-woofer', '', '', '2026-02-11 21:31:16', '2026-02-11 20:31:16', '', 0, 'https://belleolive.fr/?page_id=2074', 0, 'page', '', 0),
(2075, 1, '2026-02-11 21:26:53', '2026-02-11 20:26:53', '', 'pickers', '', 'inherit', 'open', 'closed', '', 'pickers', '', '', '2026-02-11 21:26:53', '2026-02-11 20:26:53', '', 2074, 'https://belleolive.fr/wp-content/uploads/2026/02/pickers.jpg', 0, 'attachment', 'image/jpeg', 0),
(2076, 1, '2026-02-11 21:28:23', '2026-02-11 20:28:23', 'Patio in Ners with a book', 'patio', 'Patio in Ners with a book', 'inherit', 'open', 'closed', '', 'patio', '', '', '2026-02-11 21:28:52', '2026-02-11 20:28:52', '', 2074, 'https://belleolive.fr/wp-content/uploads/2026/02/patio.jpg', 0, 'attachment', 'image/jpeg', 0),
(2077, 1, '2026-02-11 21:28:57', '2026-02-11 20:28:57', '<!-- wp:image {"id":2076,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/patio-1024x671.jpg" alt="Patio in Ners with a book" class="wp-image-2076"/><figcaption class="wp-element-caption">Patio in Ners with a book</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Les ramasseurs (pickers) sont des bénévoles saisonniers (en anglais Woofers) qui viennent donner la main lors de la récolte des olives. Les conditions d\'accueil sont les suivantes:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>Gîte et couvert</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Récompense en Huile: 1L/jour pour 6h de travail a son rythme pause déjeuner inclue (~1caisse)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Maison de caractère en pierre en plein centre de Ners à 5min de l\'Oliveraie<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li>Billard</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Patio intérieur</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {"id":2075,"sizeSlug":"large","linkDestination":"none"} -->\n<figure class="wp-block-image size-large"><img src="https://belleolive.fr/wp-content/uploads/2026/02/pickers-1024x768.jpg" alt="" class="wp-image-2075"/></figure>\n<!-- /wp:image -->', 'Picker Woofer', '', 'inherit', 'closed', 'closed', '', '2074-revision-v1', '', '', '2026-02-11 21:28:57', '2026-02-11 20:28:57', '', 2074, 'https://belleolive.fr/?p=2077', 0, 'revision', '', 0),
(2078, 1, '2026-02-11 21:30:15', '2026-02-11 20:30:15', '', 'Taille annuelle', '', 'publish', 'closed', 'closed', '', 'pruning', '', '', '2026-02-11 21:31:09', '2026-02-11 20:31:09', '', 0, 'https://belleolive.fr/?page_id=2078', 0, 'page', '', 0),
(2079, 1, '2026-02-11 21:30:15', '2026-02-11 20:30:15', '', 'Taille annuelle', '', 'inherit', 'closed', 'closed', '', '2078-revision-v1', '', '', '2026-02-11 21:30:15', '2026-02-11 20:30:15', '', 2078, 'https://belleolive.fr/?p=2079', 0, 'revision', '', 0),
(2080, 1, '2026-02-11 21:32:04', '2026-02-11 20:32:04', '{"nav_menu_item[1881]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:30:45"},"nav_menu_item[-8089328191635048000]":{"value":{"object_id":2078,"object":"page","menu_item_parent":1935,"position":3,"type":"post_type","title":"","url":"https:\\/\\/belleolive.fr\\/taille-annuelle\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Taille annuelle","type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:30:45"}}', '', '', 'trash', 'closed', 'closed', '', '1fc6fc09-3098-4e27-81b5-ab2496967d98', '', '', '2026-02-11 21:32:04', '2026-02-11 20:32:04', '', 0, 'https://belleolive.fr/?p=2080', 0, 'customize_changeset', '', 0),
(2081, 1, '2026-02-11 21:31:49', '2026-02-11 20:31:49', '', 'Irrigation', '', 'publish', 'closed', 'closed', '', 'irrigation', '', '', '2026-02-11 21:31:51', '2026-02-11 20:31:51', '', 0, 'https://belleolive.fr/?page_id=2081', 0, 'page', '', 0),
(2082, 1, '2026-02-11 21:31:49', '2026-02-11 20:31:49', '', 'Irrigation', '', 'inherit', 'closed', 'closed', '', '2081-revision-v1', '', '', '2026-02-11 21:31:49', '2026-02-11 20:31:49', '', 2081, 'https://belleolive.fr/?p=2082', 0, 'revision', '', 0),
(2083, 1, '2026-02-11 21:32:49', '2026-02-11 20:32:05', ' ', '', '', 'publish', 'closed', 'closed', '', '2083', '', '', '2026-02-11 21:32:49', '2026-02-11 20:32:49', '', 0, 'https://belleolive.fr/2026/02/11/2083/', 3, 'nav_menu_item', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2084, 1, '2026-02-11 21:32:49', '2026-02-11 20:32:49', '{"nav_menu_item[1965]":{"value":{"menu_item_parent":0,"object_id":1955,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/oliveraie\\/","title":"","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":1,"status":"publish","_invalid":false,"original_title":"Oliveraie"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[1935]":{"value":{"menu_item_parent":0,"object_id":795,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/?page_id=795","title":"Les Oliviers","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":2,"status":"publish","_invalid":false,"original_title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[2083]":{"value":{"menu_item_parent":1935,"object_id":2078,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/pruning\\/","title":"","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":3,"status":"publish","_invalid":false,"original_title":"Taille annuelle"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[1873]":{"value":{"menu_item_parent":1935,"object_id":725,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/","title":"Amendement","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":4,"status":"publish","_invalid":false,"original_title":"#725 (no title)"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[1882]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[1939]":{"value":{"menu_item_parent":0,"object_id":1581,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/history-mas\\/","title":"","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":6,"status":"publish","_invalid":false,"original_title":"L\\u2019histoire du Mas"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[1870]":{"value":{"menu_item_parent":0,"object_id":732,"object":"page","type":"post_type","type_label":"Page","url":"https:\\/\\/belleolive.fr\\/contact-us\\/","title":"Contacts","target":"","attr_title":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","description":"","classes":"","xfn":"","nav_menu_term_id":10,"position":8,"status":"publish","_invalid":false,"original_title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[-1305004247839341600]":{"value":{"object_id":2081,"object":"page","menu_item_parent":1935,"position":5,"type":"post_type","title":"","url":"https:\\/\\/belleolive.fr\\/irrigation\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Irrigation","type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"},"nav_menu_item[-7562415042603282000]":{"value":{"object_id":2074,"object":"page","menu_item_parent":1939,"position":7,"type":"post_type","title":"","url":"https:\\/\\/belleolive.fr\\/picker-woofer\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","nav_menu_term_id":10,"_invalid":false,"original_title":"Picker Woofer","type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2026-02-11 20:32:49"}}', '', '', 'trash', 'closed', 'closed', '', 'e514fe53-6cd0-4cfd-aa0e-7f5a4f7b4a8f', '', '', '2026-02-11 21:32:49', '2026-02-11 20:32:49', '', 0, 'https://belleolive.fr/2026/02/11/e514fe53-6cd0-4cfd-aa0e-7f5a4f7b4a8f/', 0, 'customize_changeset', '', 0),
(2085, 1, '2026-02-11 21:32:50', '2026-02-11 20:32:50', ' ', '', '', 'publish', 'closed', 'closed', '', '2085', '', '', '2026-02-11 21:32:50', '2026-02-11 20:32:50', '', 0, 'https://belleolive.fr/2026/02/11/2085/', 5, 'nav_menu_item', '', 0),
(2086, 1, '2026-02-11 21:32:50', '2026-02-11 20:32:50', ' ', '', '', 'publish', 'closed', 'closed', '', '2086', '', '', '2026-02-11 21:32:50', '2026-02-11 20:32:50', '', 0, 'https://belleolive.fr/2026/02/11/2086/', 7, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 9, 0),
(1432, 2, 0),
(1436, 2, 0),
(1438, 2, 0),
(1440, 2, 0),
(1766, 2, 0),
(1768, 2, 0),
(1870, 10, 0),
(1871, 9, 0),
(1872, 9, 0),
(1873, 10, 0),
(1878, 9, 0),
(1888, 9, 0),
(1935, 10, 0),
(1939, 10, 0),
(1965, 10, 0),
(2083, 10, 0),
(2085, 10, 0),
(2086, 10, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 6),
(3, 3, 'post_tag', '', 0, 0),
(4, 4, 'post_tag', '', 0, 0),
(5, 5, 'post_tag', '', 0, 0),
(6, 6, 'post_tag', '', 0, 0),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'nav_menu', '', 0, 5),
(10, 10, 'nav_menu', '', 0, 8) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Uncategorized', 'uncategorized', 0),
(3, 'Animal WordPress Theme', 'animal-wordpress-theme', 0),
(4, 'Model Agency WordPress Theme', 'model-agency-wordpress-theme', 0),
(5, 'Wild Animal WordPress Theme', 'wild-animal-wordpress-theme', 0),
(6, 'WordPress', 'wordpress', 0),
(7, 'WordPress Template', 'wordpress-template', 0),
(8, 'WP Themes', 'wp-themes', 0),
(9, 'Footer Menu', 'footer-menu', 0),
(10, 'Primary', 'primary', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'en_US'),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list&hidetb=1'),
(18, 1, 'wp_user-settings-time', '1770727766'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '6'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"149.102.245.0";}'),
(21, 1, '_yoast_wpseo_introductions', 'a:1:{s:29:"ai-brand-insights-post-launch";a:2:{s:7:"is_seen";b:1;s:7:"seen_on";i:1770748417;}}'),
(22, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:"message";s:454:"Your recent posts are using default SEO titles and meta descriptions, which can make them easy to overlook in search results. Update them for better visibility or <a href="https://yoa.st/ai-generate-alert-free/?php_version=8.4&#038;platform=wordpress&#038;platform_version=6.9.1&#038;software=free&#038;software_version=26.9&#038;days_active=3&#038;user_language=en_US" target="_blank">try <strong>Yoast AI Generate</strong> for free to do it faster.</a>";s:7:"options";a:11:{s:4:"type";s:7:"warning";s:2:"id";s:22:"wpseo-default-seo-data";s:7:"user_id";i:1;s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:20:"wpseo_manage_options";}s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;s:13:"resolve_nonce";s:0:"";}}}'),
(23, 1, 'session_tokens', 'a:1:{s:64:"af72e7ea56ad1d536a0011d41b64f8dca1d5f18569ab1001400159ee40f7006f";a:4:{s:10:"expiration";i:1771797618;s:2:"ip";s:14:"149.102.245.73";s:2:"ua";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36";s:5:"login";i:1770588018;}}'),
(24, 1, '_yoast_wpseo_profile_updated', '1770588343'),
(25, 1, 'wpseo_metadesc', ''),
(26, 1, 'wpseo_pronouns', ''),
(27, 1, 'wpseo_title', ''),
(28, 1, 'wpseo_content_analysis_disable', ''),
(29, 1, 'wpseo_keyword_analysis_disable', ''),
(30, 1, 'wp_persisted_preferences', 'a:5:{s:17:"core/edit-widgets";a:2:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2026-02-10T16:44:18.068Z";s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:1:{s:12:"welcomeGuide";b:0;}s:17:"core/block-editor";a:1:{s:25:"linkControlSettingsDrawer";b:1;}}'),
(31, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(32, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(33, 2, 'nickname', 'admin123'),
(34, 2, 'first_name', ''),
(35, 2, 'last_name', ''),
(36, 2, 'description', ''),
(37, 2, 'rich_editing', 'true'),
(38, 2, 'syntax_highlighting', 'true'),
(39, 2, 'comment_shortcuts', 'false'),
(40, 2, 'admin_color', 'fresh'),
(41, 2, 'use_ssl', '0'),
(42, 2, 'show_admin_bar_front', 'true'),
(43, 2, 'locale', ''),
(44, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(45, 2, 'wp_user_level', '0'),
(46, 2, '_yoast_wpseo_profile_updated', '1770589401'),
(47, 2, 'dismissed_wp_pointers', ''),
(48, 2, 'wpseo_metadesc', ''),
(49, 2, 'wpseo_pronouns', ''),
(50, 2, 'wpseo_title', ''),
(51, 2, 'wpseo_content_analysis_disable', ''),
(52, 2, 'wpseo_keyword_analysis_disable', ''),
(53, 1, 'elementor_introduction', 'a:1:{s:27:"e-editor-one-notice-pointer";b:1;}'),
(54, 1, 'elementor_admin_notices', 'a:1:{s:21:"site_mailer_promotion";a:2:{s:9:"is_viewed";b:1;s:4:"meta";a:0:{}}}'),
(55, 1, 'nav_menu_recently_edited', '9'),
(56, 1, '_yoast_wpseo_task_list_opt_in_notification_seen', '1') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, '73k05', '$wp$2y$12$Li2p/cOinTW8PmgEKESpLeQEqyWR.jcPlTJoVzGDsBlYt6iSeW03a', '73k05', 'inkos.showcase@gmail.com', 'https://belleolive.fr', '2025-09-05 08:30:40', '', 0, '73k05'),
(2, 'admin123', '$wp$2y$12$/joiiZUKTjaz8.x7ASz3nOvFLE428Esj0am1Yt4LMQbxyJppvww5K', 'admin123', 'test@test.com', '', '2026-02-08 22:21:22', '', 0, 'admin123') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_indexable`
#

DROP TABLE IF EXISTS `wp_yoast_indexable`;


#
# Table structure of table `wp_yoast_indexable`
#

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_indexable`
#
INSERT INTO `wp_yoast_indexable` ( `id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'https://belleolive.fr/', '22:aa227082b7d7204551380b33fbbd0c83', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Huile d&#039;Olive Vierge Naturelle', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2026-02-08 21:56:45', '2026-02-11 20:31:51', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:31:51', '2025-09-05 08:30:40', NULL),
(2, 'https://belleolive.fr/author/73k05/', '35:c07f0de577954c2f2898af9714a7855b', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'https://secure.gravatar.com/avatar/e8cfa3543f66f8fcf3eb3cc42db71ed94463204b9fc2118c3664211f38a7b041?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/e8cfa3543f66f8fcf3eb3cc42db71ed94463204b9fc2118c3664211f38a7b041?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2026-02-08 21:57:03', '2026-02-11 20:31:51', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:31:51', '2025-09-05 08:30:40', NULL),
(3, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-08 21:59:20', '2026-02-08 21:59:20', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(4, 'https://belleolive.fr/?page_id=2', '32:acceb5578b4f4842ef53cb7f257899a8', 2, 'post', 'page', 1, 0, NULL, NULL, 'Page d’exemple', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2026-02-08 21:59:35', '2026-02-11 20:18:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:18:09', '2025-09-05 08:30:40', 0),
(5, 'https://belleolive.fr/2025/09/05/bonjour-tout-le-monde/', '55:ed83e7ead3a32f7c5591be509a56f45c', 1, 'post', 'post', 1, 0, NULL, NULL, 'Bonjour tout le monde !', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:12:15', '2026-02-08 22:57:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-09-05 08:30:40', '2025-09-05 08:30:40', 0),
(6, 'https://belleolive.fr/category/non-classe/', '42:80ac844d240b5cd5192c282a82ad2ad7', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Non classé', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:12:15', '2026-02-08 22:57:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-09-05 08:30:40', '2025-09-05 08:30:40', NULL),
(7, 'https://belleolive.fr/category/uncategorized/', '45:469f67fe3ce3d3c5b4030676af04160c', 2, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:22', '2026-02-08 22:21:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-08 23:21:22', NULL, NULL),
(8, 'https://belleolive.fr/tag/animal-wordpress-theme/', '49:3505359ac370994c1e7fbda2032a624e', 3, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Animal WordPress Theme', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:22', '2026-02-08 22:21:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-08 23:21:22', NULL, NULL),
(9, 'https://belleolive.fr/tag/model-agency-wordpress-theme/', '55:17d5da7604a8274ac1fdfd8d6702b06c', 4, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Model Agency WordPress Theme', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:22', '2026-02-08 22:21:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-08 23:21:22', NULL, NULL),
(10, 'https://belleolive.fr/tag/wild-animal-wordpress-theme/', '54:f70b14288827a152c3960f865bb8028a', 5, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Wild Animal WordPress Theme', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:22', '2026-02-08 22:21:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-08 23:21:22', NULL, NULL),
(11, 'https://belleolive.fr/tag/wordpress/', '36:537dbd787785ae46f6425c9952fb98a3', 6, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'WordPress', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:22', '2026-02-08 22:21:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-08 23:21:22', NULL, NULL),
(12, 'https://belleolive.fr/tag/wordpress-template/', '45:b864234195bee75a43d21179138202f8', 7, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'WordPress Template', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:22', '2026-02-08 22:21:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-08 23:21:22', NULL, NULL),
(13, 'https://belleolive.fr/tag/wp-themes/', '36:97c83ce42818af02e0e4635f28157f2f', 8, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'WP Themes', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:22', '2026-02-08 22:21:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-08 23:21:22', NULL, NULL),
(14, 'https://belleolive.fr/?page_id=1869', '35:7d3063a979235231aea56277ec382c15', 1869, 'post', 'page', 2, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-02-04 08:15:49', '2021-02-04 08:15:49', 0),
(15, 'https://belleolive.fr/photo-gallery/', '36:41057b3d20d214ae45b85ab5da07c981', 618, 'post', 'page', 2, 0, NULL, NULL, 'Photo Gallery', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2018-06-14 18:14:48', '2018-06-14 18:14:48', 0),
(16, 'https://belleolive.fr/', '22:aa227082b7d7204551380b33fbbd0c83', 725, 'post', 'page', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/20251109_163140-1-scaled.jpg', NULL, '1932', 'featured-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/20251109_163140-1-scaled.jpg', '1932', 'featured-image', '{"width":2560,"height":1205,"filesize":502585,"url":"https:\\/\\/belleolive.fr\\/wp-content\\/uploads\\/2026\\/02\\/20251109_163140-1-scaled.jpg","path":"\\/htdocs\\/wp-content\\/uploads\\/2026\\/02\\/20251109_163140-1-scaled.jpg","size":"full","id":1932,"alt":"Field Olive Grove Preview","pixels":3084800,"type":"image\\/jpeg"}', 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:17:44', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-11 20:17:43', '2018-09-30 09:30:17', 0),
(17, 'https://belleolive.fr/contact-us/', '33:fb688c4dd787650a18a737d747ef98ca', 732, 'post', 'page', 1, 0, NULL, NULL, 'Contact', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-10 21:48:46', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-10 21:48:46', '2018-09-30 10:13:44', 0),
(18, 'https://belleolive.fr/?page_id=741', '34:ed632a705991eb8f1eb564d718a3ac33', 741, 'post', 'page', 2, 0, NULL, NULL, 'Left Sidebar', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:16:01', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-11 20:16:01', '2018-09-30 18:07:58', 0),
(19, 'https://belleolive.fr/welcome-oliveraie/', '40:e0a5aec772403296d3ae6eb8234fb3fe', 790, 'post', 'page', 1, 0, NULL, NULL, 'Bienvenue dans Notre Oliveraie', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/oliveraie-scaled.jpg', NULL, '1960', 'featured-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/oliveraie-scaled.jpg', '1960', 'featured-image', '{"width":2560,"height":1920,"filesize":943227,"url":"https:\\/\\/belleolive.fr\\/wp-content\\/uploads\\/2026\\/02\\/oliveraie-scaled.jpg","path":"\\/htdocs\\/wp-content\\/uploads\\/2026\\/02\\/oliveraie-scaled.jpg","size":"full","id":1960,"alt":"Welcome Field Olive Grove Preview","pixels":4915200,"type":"image\\/jpeg"}', 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-10 15:46:07', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-10 15:46:07', '2026-02-10 12:19:39', 0),
(20, 'https://belleolive.fr/?page_id=795', '34:0b311ccdd017104d7d3730baa8254651', 795, 'post', 'page', 1, 0, NULL, NULL, 'Blog', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:17:25', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:17:25', '2018-10-03 11:47:14', 0),
(21, 'https://belleolive.fr/?page_id=797', '34:548f2b5e7981038c1a96475aac119aa5', 797, 'post', 'page', 2, 0, NULL, NULL, 'Blog Left Sidebar', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:15:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:15:57', '2018-10-03 11:48:55', 0),
(22, 'https://belleolive.fr/?page_id=798', '34:01b23e51299fcef3928dc589f73b9888', 798, 'post', 'page', 2, 0, NULL, NULL, 'Blog No Sidebar', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:15:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:15:58', '2018-10-03 11:49:24', 0),
(23, 'https://belleolive.fr/?page_id=799', '34:62d0b164b2fdbfb411c295e2f5301eb2', 799, 'post', 'page', 2, 0, NULL, NULL, 'Blog Right Sidebar', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:15:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:15:59', '2018-10-03 11:48:36', 0),
(24, 'https://belleolive.fr/?page_id=807', '34:dc034da3155f8d0627025cb080fb7dd0', 807, 'post', 'page', 2, 0, NULL, NULL, 'Dropdown Level 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:15:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:15:59', '2018-10-03 11:51:07', 0),
(25, 'https://belleolive.fr/?page_id=812', '34:cfbdb338585462ed87f57f42f9b4216d', 812, 'post', 'page', 2, 0, NULL, NULL, 'Lavel 2', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:16:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:15:59', '2018-10-03 11:52:27', 0),
(26, 'https://belleolive.fr/?page_id=815', '34:5c668542b529a138e9c6c6c2f43a2064', 815, 'post', 'page', 2, 0, NULL, NULL, 'Lavel 3', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:16:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:16:00', '2018-10-03 11:52:44', 0),
(27, 'https://belleolive.fr/?page_id=817', '34:b9e214da2b591cb468c5dd1fb967e538', 817, 'post', 'page', 2, 0, NULL, NULL, 'No Sidebar', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:18:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:18:48', '2018-10-03 11:53:30', 0),
(28, 'https://belleolive.fr/?page_id=820', '34:72c76fc48d10277e8f8ff1527ff70e8a', 820, 'post', 'page', 2, 0, NULL, NULL, 'Right Sidebar', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:19:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 20:19:24', '2018-10-03 11:54:39', 0),
(29, 'https://belleolive.fr/?page_id=835', '34:953119b9305fcdcc43c9fe3c00204862', 835, 'post', 'page', 2, 0, NULL, NULL, 'Blog Full Width', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:15:57', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2026-02-11 20:15:56', '2018-10-03 12:00:16', 0),
(30, 'https://belleolive.fr/?page_id=935', '34:3fbb14ca1ccdc6cf127aa08d386a2861', 935, 'post', 'page', 2, 0, NULL, NULL, 'Blog Grid Layout', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:15:57', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2026-02-11 20:15:57', '2018-10-05 09:10:28', 0),
(31, 'https://belleolive.fr/2019/04/23/etiam-non-tortor-non-lorem-auctor-nisi-massa/', '78:8e5fdbec35c9c00babc15e39d9c8b9ce', 1432, 'post', 'post', 2, 0, NULL, NULL, 'Etiam non tortor non lorem auctor nisi massa.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2019-04-23 08:55:09', '2019-04-23 08:55:09', 0),
(32, 'https://belleolive.fr/author/admin123/', '38:0d0c6febbda01a982b303b8e0431253e', 2, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'https://secure.gravatar.com/avatar/f660ab912ec121d1b1e928a0bb4bc61b15f5ad44d5efdc4e1c92a25e99b8e44a?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/f660ab912ec121d1b1e928a0bb4bc61b15f5ad44d5efdc4e1c92a25e99b8e44a?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:19:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2026-02-11 19:55:35', '2018-06-14 18:14:48', NULL),
(33, 'https://belleolive.fr/2019/04/23/fusce-faucibus-etiam-imperdiet-imrdiet-eget-leo/', '81:a90e058841299ea9f63bdfa69571b440', 1436, 'post', 'post', 2, 0, NULL, NULL, 'Fusce faucibus etiam imperdiet imrdiet eget leo.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2019-04-23 08:56:32', '2019-04-23 08:56:32', 0),
(34, 'https://belleolive.fr/2019/04/23/fusce-faucibus-sed-leo-nec-ultrices-vitae-ligula-eget/', '87:bcc2522c3b6ea46e7858a1825f9b4d4a', 1438, 'post', 'post', 2, 0, NULL, NULL, 'Fusce faucibus sed leo nec ultrices vitae ligula eget.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2019-04-23 08:57:40', '2019-04-23 08:57:40', 0),
(35, 'https://belleolive.fr/2019/04/23/interdum-et-malesuada-fames-ac-antering-purante/', '81:cf6c31c365e35df0612ccd0856bee891', 1440, 'post', 'post', 2, 0, NULL, NULL, 'Interdum et malesuada fames ac antering purante', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2019-04-23 08:58:45', '2019-04-23 08:58:45', 0),
(36, 'https://belleolive.fr/history-mas/', '34:0cfc5c7be9367f2a2455b2cbaf607813', 1581, 'post', 'page', 1, 0, NULL, NULL, 'L&#8217;histoire du Mas', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/sal-olivier-wide.jpeg', NULL, '2046', 'featured-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/sal-olivier-wide.jpeg', '2046', 'featured-image', '{"width":2016,"height":960,"filesize":1109496,"url":"https:\\/\\/belleolive.fr\\/wp-content\\/uploads\\/2026\\/02\\/sal-olivier-wide.jpeg","path":"\\/htdocs\\/wp-content\\/uploads\\/2026\\/02\\/sal-olivier-wide.jpeg","size":"full","id":2046,"alt":"Sal&Oliv Wide","pixels":1935360,"type":"image\\/jpeg"}', 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-11 20:17:57', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2026-02-11 20:17:57', '2019-06-14 04:56:10', 0),
(37, 'https://belleolive.fr/2019/10/09/etiam-nec-ex-vitae-ligula-porttitor-imperdiet-imrdiet/', '87:d35db17d45e411334f7e5d2159828e6e', 1766, 'post', 'post', 2, 0, NULL, NULL, 'Etiam nec ex vitae ligula porttitor imperdiet imrdiet', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2019-10-09 11:40:32', '2019-10-09 11:40:32', 0),
(38, 'https://belleolive.fr/2019/10/09/interdum-et-malesuada-fames-ac-ante-ipsum-primis-ipsum-faucibus/', '97:3d8f8dcfdc41f41d9c23726abb869ce0', 1768, 'post', 'post', 2, 0, NULL, NULL, 'Interdum et malesuada fames ac ante ipsum primis ipsum faucibus', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-08 22:21:30', '2026-02-08 22:21:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2019-10-09 11:41:44', '2019-10-09 11:41:44', 0),
(39, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-08 22:57:27', '2026-02-08 22:57:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(40, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-08 22:57:28', '2026-02-08 22:57:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(41, 'https://belleolive.fr/?page_id=3', '32:c6ffe239122cfe243128eb942cefbcab', 3, 'post', 'page', 1, 0, NULL, NULL, 'Politique de confidentialité', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-08 22:57:28', '2026-02-08 22:57:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-09-05 08:30:40', '2025-09-05 08:30:40', 0),
(42, 'https://belleolive.fr/oliveraie/', '32:fafa0b66dd37d71d5caa93878f8961f7', 1955, 'post', 'page', 1, 0, NULL, NULL, 'Oliveraie', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/20251109_163140-1-scaled.jpg', NULL, '1932', 'featured-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/20251109_163140-1-scaled.jpg', '1932', 'featured-image', '{"width":2560,"height":1205,"filesize":502585,"url":"https:\\/\\/belleolive.fr\\/wp-content\\/uploads\\/2026\\/02\\/20251109_163140-1-scaled.jpg","path":"\\/htdocs\\/wp-content\\/uploads\\/2026\\/02\\/20251109_163140-1-scaled.jpg","size":"full","id":1932,"alt":"Field Olive Grove Preview","pixels":3084800,"type":"image\\/jpeg"}', 0, NULL, NULL, '2026-02-10 15:35:01', '2026-02-10 16:59:02', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-10 16:59:01', '2026-02-10 15:35:01', 0),
(43, 'https://belleolive.fr/la-nature-de-nos-huiles/', '46:6dff60682aa248ff892d686691b476ed', 1966, 'post', 'page', 1, 0, NULL, NULL, 'La nature de nos Huiles', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/IMG_20260208_175400-EDIT-1.jpg', NULL, '1971', 'featured-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/IMG_20260208_175400-EDIT-1.jpg', '1971', 'featured-image', '{"width":2251,"height":2251,"filesize":1301512,"url":"https:\\/\\/belleolive.fr\\/wp-content\\/uploads\\/2026\\/02\\/IMG_20260208_175400-EDIT-1.jpg","path":"\\/htdocs\\/wp-content\\/uploads\\/2026\\/02\\/IMG_20260208_175400-EDIT-1.jpg","size":"full","id":1971,"alt":"Bouteille Huile Olive carr\\u00e9e","pixels":5067001,"type":"image\\/jpeg"}', 0, NULL, NULL, '2026-02-10 15:55:49', '2026-02-10 17:32:04', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-10 17:32:04', '2026-02-10 16:04:36', 0),
(44, 'https://belleolive.fr/moulins-paradis/', '38:46dd21cc345077f5da39018c9db7b3d5', 1977, 'post', 'page', 1, 0, NULL, NULL, 'Moulin Paradis', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/paradislogo.png', NULL, '1980', 'featured-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/paradislogo.png', '1980', 'featured-image', '{"width":85,"height":85,"filesize":6448,"url":"https:\\/\\/belleolive.fr\\/wp-content\\/uploads\\/2026\\/02\\/paradislogo.png","path":"\\/htdocs\\/wp-content\\/uploads\\/2026\\/02\\/paradislogo.png","size":"full","id":1980,"alt":"paradis logo","pixels":7225,"type":"image\\/png"}', 0, NULL, NULL, '2026-02-10 16:24:20', '2026-02-10 16:55:17', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-10 16:55:17', '2026-02-10 16:37:41', 0),
(45, 'https://belleolive.fr/sauvage-et-racee/', '39:154836af318e1162a0db1e589e733c27', 1999, 'post', 'page', 1, 0, NULL, NULL, 'Sauvage et racée', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-arbreOlivSolo-2.png', NULL, '1907', 'featured-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/cropped-arbreOlivSolo-2.png', '1907', 'featured-image', '{"width":512,"height":512,"filesize":290057,"url":"https:\\/\\/belleolive.fr\\/wp-content\\/uploads\\/2026\\/02\\/cropped-arbreOlivSolo-2.png","path":"\\/htdocs\\/wp-content\\/uploads\\/2026\\/02\\/cropped-arbreOlivSolo-2.png","size":"full","id":1907,"alt":"Arbre d\'Olivier","pixels":262144,"type":"image\\/png"}', 0, NULL, NULL, '2026-02-10 17:08:21', '2026-02-10 17:19:08', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2026-02-10 17:19:08', '2026-02-10 17:16:45', 0),
(46, 'https://belleolive.fr/picker-woofer/', '36:0520755c42a7086e71e4bb2a23cb0201', 2074, 'post', 'page', 1, 0, NULL, NULL, 'Picker Woofer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/patio-1024x671.jpg', NULL, '2076', 'first-content-image', NULL, NULL, 'https://belleolive.fr/wp-content/uploads/2026/02/patio-1024x671.jpg', '2076', 'first-content-image', NULL, 0, NULL, NULL, '2026-02-11 20:20:53', '2026-02-11 20:31:17', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2026-02-11 20:31:16', '2026-02-11 20:28:57', 0),
(47, 'https://belleolive.fr/pruning/', '30:0e7e387c8c402fc87d8fdec296a9d070', 2078, 'post', 'page', 1, 0, NULL, NULL, 'Taille annuelle', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-11 20:30:15', '2026-02-11 20:31:09', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2026-02-11 20:31:09', '2026-02-11 20:30:15', 0),
(48, 'https://belleolive.fr/irrigation/', '33:b98700132b70a7f5bd21df6aec4e3e39', 2081, 'post', 'page', 1, 0, NULL, NULL, 'Irrigation', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-02-11 20:31:49', '2026-02-11 20:31:51', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2026-02-11 20:31:51', '2026-02-11 20:31:49', 0) ;

#
# End of data contents of table `wp_yoast_indexable`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_indexable_hierarchy`
#

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;


#
# Table structure of table `wp_yoast_indexable_hierarchy`
#

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_indexable_hierarchy`
#
INSERT INTO `wp_yoast_indexable_hierarchy` ( `indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(27, 0, 0, 1),
(28, 0, 0, 1),
(29, 0, 0, 1),
(30, 0, 0, 1),
(31, 0, 0, 1),
(32, 0, 0, 1),
(33, 0, 0, 1),
(34, 0, 0, 1),
(35, 0, 0, 1),
(36, 0, 0, 1),
(37, 0, 0, 1),
(38, 0, 0, 1),
(40, 0, 0, 1),
(41, 0, 0, 1),
(42, 0, 0, 1),
(43, 0, 0, 1),
(44, 0, 0, 1),
(45, 0, 0, 1),
(46, 0, 0, 1),
(47, 0, 0, 1),
(48, 0, 0, 1) ;

#
# End of data contents of table `wp_yoast_indexable_hierarchy`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_migrations`
#

DROP TABLE IF EXISTS `wp_yoast_migrations`;


#
# Table structure of table `wp_yoast_migrations`
#

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_migrations`
#
INSERT INTO `wp_yoast_migrations` ( `id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836'),
(25, '20260105111111') ;

#
# End of data contents of table `wp_yoast_migrations`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_primary_term`
#

DROP TABLE IF EXISTS `wp_yoast_primary_term`;


#
# Table structure of table `wp_yoast_primary_term`
#

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_primary_term`
#

#
# End of data contents of table `wp_yoast_primary_term`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_seo_links`
#

DROP TABLE IF EXISTS `wp_yoast_seo_links`;


#
# Table structure of table `wp_yoast_seo_links`
#

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`),
  KEY `url_index` (`url`),
  KEY `target_indexable_id_index` (`target_indexable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


#
# Data contents of table `wp_yoast_seo_links`
#
INSERT INTO `wp_yoast_seo_links` ( `id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'https://belleolive.fr/wp-admin/', 2, NULL, 'internal', 4, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'http://huile-olive-paradis.com', 1977, NULL, 'external', 44, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'https://belleolive.fr/wp-content/uploads/2026/02/original_7b02d1e4-00a5-4404-8f63-2256a2ad79d0_IMG_20231208_140152_hdr-1024x507.jpg', 1977, 1978, 'image-in', 44, NULL, 1268, 2560, 673641, NULL, NULL),
(26, 'https://belleolive.fr/wp-content/uploads/2026/02/paradis-logo-big.png', 1977, 1987, 'image-in', 44, NULL, 85, 264, 6758, NULL, NULL),
(29, 'https://belleolive.fr/wp-content/uploads/2026/02/20251109_163140-1-1024x482.jpg', 1955, 1932, 'image-in', 42, NULL, 1205, 2560, 502585, NULL, NULL),
(30, 'https://belleolive.fr/wp-content/uploads/2026/02/oliveraie-wide-1024x437.jpg', 1955, 1996, 'image-in', 42, NULL, 1092, 2560, 869733, NULL, NULL),
(34, 'https://belleolive.fr/wp-content/uploads/2026/02/caisse150KG-1024x768.jpg', 1999, 2003, 'image-in', 45, NULL, 1512, 2016, 1267378, NULL, NULL),
(35, 'https://belleolive.fr/wp-content/uploads/2026/02/olivNet.jpg', 1999, 2000, 'image-in', 45, NULL, 431, 768, 72485, NULL, NULL),
(48, 'https://belleolive.fr/wp-content/uploads/2026/02/olivCase-1024x522.png', 1966, 2020, 'image-in', 43, NULL, 696, 1366, 5911379, NULL, NULL),
(49, 'https://belleolive.fr/wp-content/uploads/2026/02/IMG_20260208_175400-EDIT-2-1024x686.jpg', 1966, 1975, 'image-in', 43, NULL, 1507, 2251, 832482, NULL, NULL),
(56, 'https://www.google.com/search?sca_esv=45c182c267c17b0e&amp;hl=en&amp;gl=us&amp;authuser=1&amp;sxsrf=ANbL-n4xEKhjoiyfM3HfwL0GnhndjTnJLQ:1770662934061&amp;kgmid=/g/11yyjf2w_d&amp;q=Les+Belles+Olives+De+Ners&amp;shndl=30&amp;source=sh/x/loc/uni/m1/1&amp;kgs=', 732, NULL, 'external', 17, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'https://belleolive.fr/wp-content/uploads/2026/02/mas-oliviers-1024x631.jpg', 1581, 2057, 'image-in', 36, NULL, 1577, 2560, 1065886, NULL, NULL),
(71, 'https://belleolive.fr/wp-content/uploads/2026/02/image1-1024x768.jpeg', 1581, 1948, 'image-in', 36, NULL, 1512, 2016, 1814378, NULL, NULL),
(72, 'https://belleolive.fr/wp-content/uploads/2026/02/mas-1024x578.jpg', 1581, 2023, 'image-in', 36, NULL, 1444, 2560, 990217, NULL, NULL),
(75, 'https://belleolive.fr/wp-content/uploads/2026/02/patio-1024x671.jpg', 2074, 2076, 'image-in', 46, NULL, 1677, 2560, 883849, NULL, NULL),
(76, 'https://belleolive.fr/wp-content/uploads/2026/02/pickers-1024x768.jpg', 2074, 2075, 'image-in', 46, NULL, 1920, 2560, 946277, NULL, NULL) ;

#
# End of data contents of table `wp_yoast_seo_links`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

