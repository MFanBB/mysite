-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blog type',7,'add_blogtype'),(20,'Can change blog type',7,'change_blogtype'),(21,'Can delete blog type',7,'delete_blogtype'),(22,'Can add blog',8,'add_blog'),(23,'Can change blog',8,'change_blog'),(24,'Can delete blog',8,'delete_blog'),(25,'Can add read num',9,'add_readnum'),(26,'Can change read num',9,'change_readnum'),(27,'Can delete read num',9,'delete_readnum'),(28,'Can add read num',10,'add_readnum'),(29,'Can change read num',10,'change_readnum'),(30,'Can delete read num',10,'delete_readnum'),(31,'Can add read detail',11,'add_readdetail'),(32,'Can change read detail',11,'change_readdetail'),(33,'Can delete read detail',11,'delete_readdetail'),(34,'Can add comment',12,'add_comment'),(35,'Can change comment',12,'change_comment'),(36,'Can delete comment',12,'delete_comment'),(37,'Can add like record',13,'add_likerecord'),(38,'Can change like record',13,'change_likerecord'),(39,'Can delete like record',13,'delete_likerecord'),(40,'Can add like count',14,'add_likecount'),(41,'Can change like count',14,'change_likecount'),(42,'Can delete like count',14,'delete_likecount');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$zmC2m11A2u3b$QX6niOdeh7g0ilMyoU4UR31M14ZK7nn4KAA6O/EFPrk=','2018-04-17 17:56:13.344000',1,'ysh','','','',1,1,'2017-12-24 17:49:50.554000'),(2,'pbkdf2_sha256$100000$AZnlmNmK2LnP$mgYr9CtaZo4hLmxbfMAfoAY2z/3qoytF9LcNpEqr2xk=','2018-03-31 10:43:26.190000',0,'ysh1','','','1@qq.com',0,1,'2018-03-31 10:43:25.831000'),(3,'pbkdf2_sha256$100000$oHdbNSPw3xgk$9GTWV5VRdsnNcJVyGjklOdqgc+7LE0oiQ2bQROFVc/8=','2018-07-22 06:45:19.435000',1,'zyc','','','',1,1,'2018-07-12 08:14:00.527000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (3,'长内容的博客','<h2>1、测试</h2>\r\n\r\n<p>阿斯顿房价阿斯顿房价阿斯顿房价阿<strong>斯顿房价阿斯</strong><br />\r\n顿房价阿斯顿房价阿斯顿房</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2018/02/05/lwpbrq.png\" style=\"height:240px\" /></p>\r\n\r\n<p><span style=\"color:#1abc9c\">sdfsdfsdf</span></p>\r\n\r\n<p><span style=\"color:#1abc9c\">sdfsdf<span style=\"background-color:#f39c12\">sdfsdf</span></span></p>','2017-12-28 16:52:41.398000','2018-02-04 18:06:59.335000',1,2),(4,'随笔2','士大夫','2017-12-28 17:14:14.805000','2017-12-28 17:14:14.806000',1,2),(5,'Django1','test','2017-12-28 17:14:29.850000','2017-12-28 17:14:29.850000',1,1),(6,'shell下第1篇','xxxxxxx','2018-01-19 17:53:22.745000','2018-01-19 17:53:22.745000',1,1),(7,'for 1','xxxx:1','2018-01-19 18:00:40.831000','2018-01-19 18:00:40.831000',1,1),(8,'for 2','xxxx:2','2018-01-19 18:00:40.846000','2018-01-19 18:00:40.847000',1,1),(9,'for 3','xxxx:3','2018-01-19 18:00:40.856000','2018-01-19 18:00:40.856000',1,1),(10,'for 4','xxxx:4','2018-01-19 18:00:40.867000','2018-01-19 18:00:40.867000',1,1),(11,'for 5','xxxx:5','2018-01-19 18:00:40.874000','2018-01-19 18:00:40.874000',1,1),(12,'for 6','xxxx:6','2018-01-19 18:00:40.880000','2018-01-19 18:00:40.880000',1,1),(13,'for 7','xxxx:7','2018-01-19 18:00:40.889000','2018-01-19 18:00:40.889000',1,1),(14,'for 8','xxxx:8','2018-01-19 18:00:40.897000','2018-01-19 18:00:40.897000',1,1),(15,'for 9','xxxx:9','2018-01-19 18:00:40.906000','2018-01-19 18:00:40.906000',1,1),(16,'for 10','xxxx:10','2018-01-19 18:00:40.913000','2018-01-19 18:00:40.913000',1,1),(17,'for 11','xxxx:11','2018-01-19 18:00:40.922000','2018-01-19 18:00:40.922000',1,1),(18,'for 12','xxxx:12','2018-01-19 18:00:40.929000','2018-01-19 18:00:40.929000',1,1),(19,'for 13','xxxx:13','2018-01-19 18:00:40.934000','2018-01-19 18:00:40.935000',1,1),(20,'for 14','xxxx:14','2018-01-19 18:00:40.940000','2018-01-19 18:00:40.941000',1,1),(21,'for 15','xxxx:15','2018-01-19 18:00:40.954000','2018-01-19 18:00:40.954000',1,1),(22,'for 16','xxxx:16','2018-01-19 18:00:40.963000','2018-01-19 18:00:40.964000',1,1),(23,'for 17','xxxx:17','2018-01-19 18:00:40.972000','2018-01-19 18:00:40.972000',1,1),(24,'for 18','xxxx:18','2018-01-19 18:00:40.980000','2018-01-19 18:00:40.981000',1,1),(25,'for 19','xxxx:19','2018-01-19 18:00:40.995000','2018-01-19 18:00:40.995000',1,1),(26,'for 20','xxxx:20','2018-01-19 18:00:41.007000','2018-01-19 18:00:41.007000',1,1),(27,'for 21','xxxx:21','2018-01-19 18:00:41.016000','2018-01-19 18:00:41.016000',1,1),(28,'for 22','xxxx:22','2018-01-19 18:00:41.027000','2018-01-19 18:00:41.027000',1,1),(29,'for 23','xxxx:23','2018-01-19 18:00:41.034000','2018-01-19 18:00:41.034000',1,1),(30,'for 24','xxxx:24','2018-01-19 18:00:41.042000','2018-01-19 18:00:41.042000',1,1),(31,'for 25','xxxx:25','2018-01-19 18:00:41.050000','2018-01-19 18:00:41.050000',1,1),(32,'for 26','xxxx:26','2018-01-19 18:00:41.056000','2018-01-19 18:00:41.056000',1,1),(33,'for 27','xxxx:27','2018-01-19 18:00:41.065000','2018-01-19 18:00:41.065000',1,1),(34,'for 28','xxxx:28','2018-01-19 18:00:41.072000','2018-01-19 18:00:41.073000',1,1),(35,'for 29','xxxx:29','2018-01-19 18:00:41.080000','2018-02-07 17:24:16.069000',1,1),(36,'for 30','<p>56675675</p>','2018-01-19 18:00:41.089000','2018-07-12 08:16:18.502000',1,1);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'随笔'),(3,'感悟');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (3,36,'234','2018-03-25 19:03:41.918000',8,NULL,NULL,NULL,1),(4,36,'345','2018-04-08 18:01:12.027000',8,NULL,NULL,NULL,1),(5,36,'456','2018-04-08 18:21:35.579000',8,NULL,NULL,NULL,1),(6,36,'<p>567</p>','2018-04-08 18:32:59.263000',8,NULL,NULL,NULL,1),(7,36,'<p>678</p>','2018-04-08 18:54:55.275000',8,NULL,NULL,NULL,1),(8,36,'<p>789</p>','2018-04-08 18:59:01.475000',8,NULL,NULL,NULL,1),(9,36,'<p>899</p>','2018-04-08 19:03:03.352000',8,NULL,NULL,NULL,1),(10,36,'<p><img alt=\"smiley\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" /></p>','2018-04-08 19:18:32.838000',8,NULL,NULL,NULL,1),(12,36,'<p>1234</p>','2018-04-12 21:26:24.344000',8,10,1,10,1),(13,36,'<p>1234</p>','2018-04-12 21:27:17.276000',8,NULL,NULL,NULL,1),(14,36,'<p>12345</p>','2018-04-12 21:49:49.195000',8,12,1,10,1),(15,36,'<p>2134</p>','2018-04-12 21:49:57.446000',8,13,1,13,1),(16,36,'<p>dfg</p>','2018-04-12 21:51:50.962000',8,13,1,13,1),(17,35,'<p>123</p>','2018-04-17 17:11:49.044000',8,NULL,NULL,NULL,1),(18,35,'<p>第二条</p>','2018-04-17 17:22:18.940000',8,NULL,NULL,NULL,1),(19,35,'<p>似懂非懂是否</p>','2018-04-17 17:22:26.940000',8,18,1,18,1),(20,35,'<p>第三条</p>','2018-04-17 17:28:01.171000',8,NULL,NULL,NULL,1),(21,35,'<p>sdfsdf</p>','2018-04-17 17:36:20.246000',8,20,1,20,1),(22,35,'<p>123</p>','2018-04-17 17:38:39.428000',8,20,1,20,1),(23,36,'<p>111</p>','2018-07-12 08:15:59.734000',8,NULL,NULL,NULL,3),(24,32,'<p>treyure</p>','2018-07-12 08:16:34.286000',8,NULL,NULL,NULL,3),(25,32,'<p>truyt</p>','2018-07-12 08:16:38.764000',8,24,3,24,3),(26,36,'<p>222</p>','2018-07-13 01:56:16.500000',8,NULL,NULL,NULL,3),(27,36,'<p>qqq</p>','2018-07-14 02:01:16.689000',8,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-12-24 17:57:25.871000','1','BlogType object (1)',1,'[{\"added\": {}}]',7,1),(2,'2017-12-24 17:57:34.218000','2','BlogType object (2)',1,'[{\"added\": {}}]',7,1),(3,'2017-12-24 17:57:42.824000','3','BlogType object (3)',1,'[{\"added\": {}}]',7,1),(4,'2017-12-24 17:59:38.608000','1','<Blog: 第一篇博客>',1,'[{\"added\": {}}]',8,1),(5,'2017-12-28 16:45:51.048000','2','<Blog: 第二篇博客>',1,'[{\"added\": {}}]',8,1),(6,'2017-12-28 16:50:53.821000','2','<Blog: 第二篇博客>',3,'',8,1),(7,'2017-12-28 16:50:53.838000','1','<Blog: 第一篇博客>',3,'',8,1),(8,'2017-12-28 16:52:41.400000','3','<Blog: 长内容的博客>',1,'[{\"added\": {}}]',8,1),(9,'2017-12-28 17:14:14.808000','4','<Blog: 随笔2>',1,'[{\"added\": {}}]',8,1),(10,'2017-12-28 17:14:29.852000','5','<Blog: Django1>',1,'[{\"added\": {}}]',8,1),(11,'2018-02-04 17:32:41.794000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(12,'2018-02-04 17:49:46.452000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(13,'2018-02-04 18:06:59.339000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(14,'2018-02-07 17:27:27.225000','36','<Blog: for 30>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(15,'2018-02-23 17:34:48.876000','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),(16,'2018-02-23 18:17:40.854000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(17,'2018-02-28 16:48:58.931000','1','ReadDetail object (1)',1,'[{\"added\": {}}]',11,1),(18,'2018-03-05 18:55:13.053000','5','ReadDetail object (5)',1,'[{\"added\": {}}]',11,1),(19,'2018-03-05 18:55:42.547000','4','ReadNum object (4)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',10,1),(20,'2018-03-25 18:32:56.558000','1','ReadNum object (1)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',10,1),(21,'2018-03-25 18:56:30.855000','1','Comment object (1)',3,'',12,1),(22,'2018-04-12 20:20:07.932000','11','Comment object (11)',1,'[{\"added\": {}}]',12,1),(23,'2018-04-12 20:23:41.856000','11','123123',2,'[{\"changed\": {\"fields\": [\"parent\"]}}]',12,1),(24,'2018-04-12 20:46:06.841000','11','123123',2,'[{\"changed\": {\"fields\": [\"root\", \"reply_to\"]}}]',12,1),(25,'2018-04-17 17:46:32.805000','2','123',3,'',12,1),(26,'2018-04-17 17:53:04.183000','2','123',3,'',12,1),(27,'2018-07-12 08:16:18.504000','36','<Blog: for 30>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,3),(28,'2018-07-12 08:18:44.214000','21','ReadDetail object (21)',1,'[{\"added\": {}}]',11,3),(29,'2018-07-12 08:19:03.713000','20','ReadDetail object (20)',2,'[{\"changed\": {\"fields\": [\"date\", \"read_num\"]}}]',11,3),(30,'2018-07-12 08:21:37.576000','17','ReadDetail object (17)',2,'[{\"changed\": {\"fields\": [\"date\", \"read_num\"]}}]',11,3),(31,'2018-07-12 08:22:15.863000','7','ReadDetail object (7)',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',11,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','blog'),(7,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(14,'likes','likecount'),(13,'likes','likerecord'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-08-05 01:59:02.882401'),(2,'auth','0001_initial','2018-08-05 01:59:05.737401'),(3,'admin','0001_initial','2018-08-05 01:59:06.257401'),(4,'admin','0002_logentry_remove_auto_add','2018-08-05 01:59:06.291401'),(5,'contenttypes','0002_remove_content_type_name','2018-08-05 01:59:06.774401'),(6,'auth','0002_alter_permission_name_max_length','2018-08-05 01:59:07.108401'),(7,'auth','0003_alter_user_email_max_length','2018-08-05 01:59:07.172401'),(8,'auth','0004_alter_user_username_opts','2018-08-05 01:59:07.212401'),(9,'auth','0005_alter_user_last_login_null','2018-08-05 01:59:07.495401'),(10,'auth','0006_require_contenttypes_0002','2018-08-05 01:59:07.504401'),(11,'auth','0007_alter_validators_add_error_messages','2018-08-05 01:59:07.521401'),(12,'auth','0008_alter_user_username_max_length','2018-08-05 01:59:08.264401'),(13,'auth','0009_alter_user_last_name_max_length','2018-08-05 01:59:08.530401'),(14,'blog','0001_initial','2018-08-05 01:59:09.308401'),(15,'comment','0001_initial','2018-08-05 01:59:10.817401'),(16,'likes','0001_initial','2018-08-05 01:59:12.052401'),(17,'read_statistics','0001_initial','2018-08-05 01:59:12.745401'),(18,'sessions','0001_initial','2018-08-05 01:59:12.874401');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1yxmbfojymxplr0akqy57m3lb8ynzrf4','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-03-14 16:48:33.818000'),('2nsxrgbqo9nx2cpw60u4d1e5eklevsql','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-18 17:27:25.844000'),('2qf7m5i4cnn0ln4czsp3xuo2isaoq87r','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-08 16:45:08.096000'),('5rxc9d2xw76dmx1e4go5aemns9oixtoe','OWY5M2QzMTdiMWVlNTUxMGIyMjViYWI1ZjUwMTRkY2Q2ZTc0OWJmMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJjMzk4YWNmOGYyMjA1ZTgxZTU3ZjE4NGYyMDc5OGM0YzMyMzExIn0=','2018-07-26 08:36:22.036000'),('5u0giiqi63ib4q7k252lsuuxwoo83xra','OWY5M2QzMTdiMWVlNTUxMGIyMjViYWI1ZjUwMTRkY2Q2ZTc0OWJmMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJjMzk4YWNmOGYyMjA1ZTgxZTU3ZjE4NGYyMDc5OGM0YzMyMzExIn0=','2018-07-26 08:14:24.524000'),('5zftwnjni6wvfswsg5lio1klneg6h9yt','OWY5M2QzMTdiMWVlNTUxMGIyMjViYWI1ZjUwMTRkY2Q2ZTc0OWJmMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJjMzk4YWNmOGYyMjA1ZTgxZTU3ZjE4NGYyMDc5OGM0YzMyMzExIn0=','2018-07-27 01:56:11.923000'),('60tpad54tedxqyhts7eiwrjlzvj19x0b','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-20 14:32:46.134000'),('751hsr4r5zv9gmtb1surmhfk1ss2425w','YWE2N2VjMWU1ZGZlYzE2N2VhMjY0Yzc1MTllNjJjODBhNGU0Yjk1Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWJkNWZmOGM4MTcwZGJhMDg1MjU4MGZlYmUyNDc4NWY5NGRkMDYwIn0=','2018-04-14 10:43:26.203000'),('8r4b7g9199ceuamnz8yk0n1tkhjd73od','OWY5M2QzMTdiMWVlNTUxMGIyMjViYWI1ZjUwMTRkY2Q2ZTc0OWJmMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJjMzk4YWNmOGYyMjA1ZTgxZTU3ZjE4NGYyMDc5OGM0YzMyMzExIn0=','2018-07-31 18:08:09.452000'),('9vm5q2wvdehumcul1y62lf64f06ym3vo','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-01-07 17:54:43.802000'),('b1qnir8vl580cod6y7i9hbxnpj46ce6i','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-21 17:00:03.358000'),('b5r7fyvi8nfsh5eadohal7yeodg98v6r','OWY5M2QzMTdiMWVlNTUxMGIyMjViYWI1ZjUwMTRkY2Q2ZTc0OWJmMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJjMzk4YWNmOGYyMjA1ZTgxZTU3ZjE4NGYyMDc5OGM0YzMyMzExIn0=','2018-07-26 12:33:02.340000'),('cdph81y6ruv5qohm4zved37yeqng6v0z','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 18:33:21.018000'),('dt02pppm6k4wvp26j03xwltr1ddki4fx','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 18:29:24.971000'),('hku3crkncq6axmze83e2gdzj2xlsy8sd','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-05-01 17:56:13.356000'),('ig4glb9bclhog88twq0ynxawgh4fy3mf','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-18 17:30:44.870000'),('jn6h93agtv1slq3v23v6m1ri7wpolz5r','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-03 19:08:15.069000'),('ksdaeyy8929hgtarw5sp7df4setxrkvx','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-03-09 17:34:33.897000'),('oewma12s1dcynqzommo9h66vqax7renp','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-05-01 17:11:43.976000'),('sputf6isbnmcfy3u81588dam4xyfag5j','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-01-11 16:45:20.525000'),('tykskoa9mvk65jo72b0yetrqwm2i25rv','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-03-19 18:33:41.869000'),('uogzlzd1wx4k2ixd2nnh283phsjsdxtx','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-22 17:53:06.955000'),('v5h02l7n8y230wc23k2zqfia54x189gr','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-02-21 17:26:54.345000'),('vhedcdc4gxpgvprt32hos7pm2j99a7u6','OWY5M2QzMTdiMWVlNTUxMGIyMjViYWI1ZjUwMTRkY2Q2ZTc0OWJmMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJjMzk4YWNmOGYyMjA1ZTgxZTU3ZjE4NGYyMDc5OGM0YzMyMzExIn0=','2018-07-30 01:23:51.007000'),('vm6goinxqkdaop78iddn12oihw6zaqwb','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 19:03:39.175000'),('vzqzikib2b4v9u2xb1a0z26wpockme03','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-26 20:18:23.070000'),('w2aecfgdj4s9d4ddu95g955u5ap47bk6','N2IzMmViYzE3ZTUyYmYxOGI1MmRlNTQzM2E0NDU5NDc2MmVkNGMyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWMyOWQyMWE2ZTQwOGMwNDg3NzQ4ZGNjZWIxNWNkMjlmZGI5NjIxIn0=','2018-04-08 18:39:46.772000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `likes_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,34,1,8),(2,36,1,8),(3,35,0,8),(4,33,0,8),(5,32,0,8),(6,31,0,8),(7,30,0,8),(8,26,0,12),(9,23,0,12),(10,13,0,12),(11,15,0,12),(12,16,0,12),(13,10,0,12),(14,12,0,12),(15,14,0,12),(16,9,0,12),(17,8,0,12),(18,7,0,12),(19,6,0,12),(20,5,0,12),(21,4,0,12),(22,3,0,12),(23,27,0,12),(24,20,0,12),(25,21,0,12),(26,22,0,12),(27,18,0,12),(28,19,0,12),(29,17,0,12),(30,22,0,8),(31,21,0,8),(32,20,0,8),(33,19,0,8),(34,18,0,8),(35,17,0,8),(36,16,0,8),(37,8,0,8),(38,7,0,8),(39,6,0,8),(40,5,0,8),(41,4,0,8),(42,3,0,8),(43,15,0,8),(44,14,0,8),(45,13,0,8),(46,12,0,8),(47,11,0,8),(48,10,0,8),(49,9,0,8),(50,24,0,12),(51,25,0,12),(52,29,0,8),(53,28,0,8),(54,27,0,8),(55,26,0,8),(56,25,0,8),(57,24,0,8),(58,23,0,8);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `likes_likerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likerecord`
--

LOCK TABLES `likes_likerecord` WRITE;
/*!40000 ALTER TABLE `likes_likerecord` DISABLE KEYS */;
INSERT INTO `likes_likerecord` VALUES (1,34,'2018-07-14 01:25:54.440000',8,3),(15,36,'2018-07-14 06:39:53.831000',8,3);
/*!40000 ALTER TABLE `likes_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVKwoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwPX2l0ZXJhYmxlX2NsYXNzlGgAjA5WYWx1ZXNJdGVyYWJsZZSTlIwDX2RilE6MFl9rbm93bl9yZWxhdGVkX29iamVjdHOUfZSMDV9yZXN1bHRfY2FjaGWUXZSMGV9wcmVmZXRjaF9yZWxhdGVkX2xvb2t1cHOUKYwOX3ByZWZldGNoX2RvbmWUiYwHX2ZpZWxkc5SMAmlklIwFdGl0bGWUhpSMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMBl9oaW50c5R9lIwPX2RqYW5nb192ZXJzaW9ulIwDMi4wlIwFcXVlcnmUjBpkamFuZ28uZGIubW9kZWxzLnNxbC5xdWVyeZSMBVF1ZXJ5lJOUKYGUfZQojBBkZWZhdWx0X29yZGVyaW5nlIiMEGZpbHRlcl9pc19zdGlja3mUiYwPZGlzdGluY3RfZmllbGRzlCloFWgYjA1fbG9va3VwX2pvaW5zlF2UKIwJYmxvZ19ibG9nlIwacmVhZF9zdGF0aXN0aWNzX3JlYWRkZXRhaWyUZYwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAlhbGlhc19tYXCUjAtjb2xsZWN0aW9uc5SMC09yZGVyZWREaWN0lJOUKVKUKGgojCNkamFuZ28uZGIubW9kZWxzLnNxbC5kYXRhc3RydWN0dXJlc5SMCUJhc2VUYWJsZZSTlCmBlH2UKIwKdGFibGVfbmFtZZRoKIwLdGFibGVfYWxpYXOUaCh1YmgpaDKMBEpvaW6Uk5QpgZR9lChoN2gpjAhudWxsYWJsZZSIjAxwYXJlbnRfYWxpYXOUaCiMCWpvaW5fY29sc5RoEIwJb2JqZWN0X2lklIaUhZSMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UaDhoKYwKam9pbl9maWVsZJSMImRqYW5nby5jb250cmliLmNvbnRlbnR0eXBlcy5maWVsZHOUjApHZW5lcmljUmVslJOUKYGUfZQojBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiWgVjBZyZWFkX3N0YXRpc3RpY3MubW9kZWxzlIwKUmVhZERldGFpbJSTlIwFZmllbGSUjBdkamFuZ28uZGIubW9kZWxzLmZpZWxkc5SMC19sb2FkX2ZpZWxklJOUjARibG9nlGgXjAxyZWFkX2RldGFpbHOUh5RSlIwLc3ltbWV0cmljYWyUiYwIbXVsdGlwbGWUiIwMcmVsYXRlZF9uYW1llIwBK5SMCW9uX2RlbGV0ZZSMGWRqYW5nby5kYi5tb2RlbHMuZGVsZXRpb26UjApET19OT1RISU5HlJOUdWKMEWZpbHRlcmVkX3JlbGF0aW9ulE51YnWMCHN1YnF1ZXJ5lImME19leHRyYV9zZWxlY3RfY2FjaGWUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SMEXNlbGVjdF9mb3JfdXBkYXRllImMEGV4dGVybmFsX2FsaWFzZXOUj5SMEGNvbWJpbmVkX3F1ZXJpZXOUKYwOc2VsZWN0X3JlbGF0ZWSUiYwIbG93X21hcmuUSwCMGF9hbm5vdGF0aW9uX3NlbGVjdF9jYWNoZZRoMClSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQojBJzb3VyY2VfZXhwcmVzc2lvbnOUXZSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgpaFWMD3JlYWRfc3RhdGlzdGljc5RoUIwIcmVhZF9udW2Uh5RSlIaUfZSGlIwGdGFyZ2V0lGiAjAVhbGlhc5RoKYwSY29udGFpbnNfYWdncmVnYXRllImMDG91dHB1dF9maWVsZJRogIwVX291dHB1dF9maWVsZF9vcl9ub25llGiAdWJhaHyMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUjAppc19zdW1tYXJ5lImMBWV4dHJhlH2UjAZmaWx0ZXKUTmiHaIB1YnOMCW1heF9kZXB0aJRLBYwWYW5ub3RhdGlvbl9zZWxlY3RfbWFza5SPlChob5CMCmNvbWJpbmF0b3KUTowJaGlnaF9tYXJrlEsHjA5jb21iaW5hdG9yX2FsbJSJjAZzZWxlY3SUaHkpgZR9lChofGgoaFVoVmgXaBCHlFKUhpR9lIaUaIRom2iFaChoh2ibdWJoeSmBlH2UKGh8aChoVWhWaBdoEYeUUpSGlH2UhpRohGiiaIVoKGiHaKJ1YoaUjAhncm91cF9ieZRomGifhpSMCXRhYmxlX21hcJR9lChoKV2UaClhaChdlGgoYXWMEXN0YW5kYXJkX29yZGVyaW5nlIiMDHVzZWRfYWxpYXNlc5SPlIwMZGVmYXVsdF9jb2xzlImMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCWNvbm5lY3RvcpSMA0FORJSMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwSR3JlYXRlclRoYW5PckVxdWFslJOUKYGUfZQojANsaHOUaHkpgZR9lChofGgpaFVofWhQjARkYXRllIeUUpSGlH2UhpRohGjFaIVoKWiGiWiHaMV1YowUYmlsYXRlcmFsX3RyYW5zZm9ybXOUXZSMA3Joc5SMCGRhdGV0aW1llIwEZGF0ZZSTlEMEB+IIAZSFlFKUaIaJdWJou4wITGVzc1RoYW6Uk5QpgZR9lChowGjBaMldlGjLaM5DBAfiCAiUhZRSlGiGiXViZWiGiYwHbmVnYXRlZJSJdWKMDmFsaWFzX3JlZmNvdW50lH2UKGgpSwNoKEsEdYwUc2VsZWN0X2Zvcl91cGRhdGVfb2aUKYwdc2VsZWN0X2Zvcl91cGRhdGVfc2tpcF9sb2NrZWSUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjAxleHRyYV90YWJsZXOUKYwOZXh0cmFfb3JkZXJfYnmUKYwLd2hlcmVfY2xhc3OUaLSMDXZhbHVlc19zZWxlY3SUaBBoEYaUjApiYXNlX3RhYmxllGgojAZfZXh0cmGUTowMX2Fubm90YXRpb25zlGgwKVKUaG9oc3OMCGRpc3RpbmN0lImME19maWx0ZXJlZF9yZWxhdGlvbnOUfZR1YnViLg==','2018-08-08 14:31:16.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2018-02-27',4,36,8),(2,'2018-02-28',1,35,8),(3,'2018-02-28',1,36,8),(4,'2018-03-05',1,36,8),(5,'2018-03-04',2,35,8),(6,'2018-03-20',1,36,8),(7,'2018-03-11',4,36,8),(8,'2018-03-31',1,36,8),(9,'2018-04-08',1,36,8),(10,'2018-04-12',1,36,8),(11,'2018-04-17',1,36,8),(12,'2018-04-17',1,35,8),(13,'2018-07-12',1,36,8),(14,'2018-07-12',2,34,8),(15,'2018-07-12',1,32,8),(16,'2018-07-12',2,30,8),(17,'2018-07-10',3,20,8),(18,'2018-07-12',1,18,8),(19,'2018-07-12',1,17,8),(20,'2018-07-07',12,22,8),(21,'2018-07-11',5,30,8),(22,'2018-07-12',1,31,8),(23,'2018-07-12',1,22,8),(24,'2018-07-13',2,35,8),(25,'2018-07-13',1,36,8),(26,'2018-07-13',1,34,8),(27,'2018-07-13',1,30,8),(28,'2018-07-14',1,34,8),(29,'2018-07-14',1,36,8),(30,'2018-07-15',3,35,8),(31,'2018-07-15',1,36,8),(32,'2018-07-15',1,34,8),(33,'2018-07-16',12,35,8),(34,'2018-07-16',2,3,8),(35,'2018-07-16',3,4,8),(36,'2018-07-16',1,15,8),(37,'2018-07-16',4,36,8),(38,'2018-07-16',3,32,8),(39,'2018-07-16',1,34,8),(40,'2018-07-16',2,31,8),(41,'2018-07-16',1,30,8),(42,'2018-07-17',1,4,8),(43,'2018-07-17',1,20,8),(44,'2018-07-17',4,35,8),(45,'2018-07-17',6,31,8),(46,'2018-07-17',1,30,8),(47,'2018-07-17',1,32,8),(48,'2018-07-17',1,36,8),(49,'2018-07-17',1,34,8),(50,'2018-07-19',2,35,8),(51,'2018-07-19',1,36,8),(52,'2018-07-20',1,4,8),(53,'2018-07-20',1,35,8),(54,'2018-07-21',1,3,8),(55,'2018-07-21',1,35,8),(56,'2018-07-21',1,34,8),(57,'2018-07-21',1,36,8),(58,'2018-07-21',1,4,8),(59,'2018-07-22',1,3,8),(60,'2018-07-22',1,35,8),(61,'2018-07-22',1,32,8),(62,'2018-07-22',1,36,8),(63,'2018-07-28',1,3,8),(64,'2018-07-28',1,30,8),(65,'2018-07-28',1,4,8),(66,'2018-08-08',1,35,8);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,34,36,8),(2,10,34,8),(3,3,20,8),(4,32,35,8),(5,1,33,8),(6,7,32,8),(7,6,30,8),(8,1,18,8),(9,1,17,8),(10,2,22,8),(11,9,31,8),(12,5,3,8),(13,7,4,8),(14,1,15,8);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-09  7:39:07
