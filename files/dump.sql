/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nextcloud
-- ------------------------------------------------------
-- Server version	10.6.27-MariaDB-ubu2204-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oc_accounts`
--

DROP TABLE IF EXISTS `oc_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_accounts` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts`
--

LOCK TABLES `oc_accounts` WRITE;
/*!40000 ALTER TABLE `oc_accounts` DISABLE KEYS */;
INSERT INTO `oc_accounts` VALUES ('admin','{\"displayname\":{\"value\":\"admin\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}'),('alice','{\"displayname\":{\"value\":\"Alice\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"1\"},\"avatar\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"profile_enabled\":{\"value\":\"1\",\"scope\":\"v2-local\",\"verified\":\"0\"}}'),('bob','{\"displayname\":{\"value\":\"Bob\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"1\"},\"avatar\":{\"value\":\"\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"profile_enabled\":{\"value\":\"1\",\"scope\":\"v2-local\",\"verified\":\"0\"}}');
/*!40000 ALTER TABLE `oc_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_accounts_data`
--

DROP TABLE IF EXISTS `oc_accounts_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_accounts_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `accounts_data_uid` (`uid`),
  KEY `accounts_data_name` (`name`),
  KEY `accounts_data_value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts_data`
--

LOCK TABLES `oc_accounts_data` WRITE;
/*!40000 ALTER TABLE `oc_accounts_data` DISABLE KEYS */;
INSERT INTO `oc_accounts_data` VALUES (1,'admin','displayname','admin'),(2,'admin','address',''),(3,'admin','website',''),(4,'admin','email',''),(5,'admin','phone',''),(6,'admin','twitter',''),(7,'admin','organisation',''),(8,'admin','role',''),(9,'admin','headline',''),(10,'admin','biography',''),(11,'admin','profile_enabled','1'),(23,'alice','displayname','Alice'),(24,'alice','address',''),(25,'alice','website',''),(26,'alice','email',''),(27,'alice','phone',''),(28,'alice','twitter',''),(29,'alice','organisation',''),(30,'alice','role',''),(31,'alice','headline',''),(32,'alice','biography',''),(33,'alice','profile_enabled','1'),(45,'bob','displayname','Bob'),(46,'bob','address',''),(47,'bob','website',''),(48,'bob','email',''),(49,'bob','phone',''),(50,'bob','twitter',''),(51,'bob','organisation',''),(52,'bob','role',''),(53,'bob','headline',''),(54,'bob','biography',''),(55,'bob','profile_enabled','1');
/*!40000 ALTER TABLE `oc_accounts_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity`
--

DROP TABLE IF EXISTS `oc_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_activity` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `user` varchar(64) DEFAULT NULL,
  `affecteduser` varchar(64) NOT NULL,
  `app` varchar(32) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `subjectparams` longtext NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `messageparams` longtext DEFAULT NULL,
  `file` varchar(4000) DEFAULT NULL,
  `link` varchar(4000) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`activity_id`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  KEY `activity_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity`
--

LOCK TABLES `oc_activity` WRITE;
/*!40000 ALTER TABLE `oc_activity` DISABLE KEYS */;
INSERT INTO `oc_activity` VALUES (1,1746537191,30,'file_created','admin','admin','files','created_self','[{\"3\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://localhost/index.php/apps/files/?dir=/','files',3),(2,1746537191,30,'file_created','admin','admin','files','created_self','[{\"4\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://localhost/index.php/apps/files/?dir=/','files',4),(3,1746537191,30,'file_created','admin','admin','files','created_self','[{\"5\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://localhost/index.php/apps/files/?dir=/','files',5),(4,1746537191,30,'file_created','admin','admin','files','created_self','[{\"6\":\"\\/Templates\"}]','','[]','/Templates','http://localhost/index.php/apps/files/?dir=/','files',6),(5,1746537191,30,'file_created','admin','admin','files','created_self','[{\"7\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://localhost/index.php/apps/files/?dir=/Templates','files',7),(6,1746537191,30,'file_created','admin','admin','files','created_self','[{\"8\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://localhost/index.php/apps/files/?dir=/Templates','files',8),(7,1746537191,30,'file_created','admin','admin','files','created_self','[{\"9\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',9),(8,1746537191,30,'file_created','admin','admin','files','created_self','[{\"10\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',10),(9,1746537191,30,'file_created','admin','admin','files','created_self','[{\"11\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://localhost/index.php/apps/files/?dir=/Templates','files',11),(10,1746537191,30,'file_created','admin','admin','files','created_self','[{\"12\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://localhost/index.php/apps/files/?dir=/Templates','files',12),(11,1746537191,30,'file_created','admin','admin','files','created_self','[{\"13\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://localhost/index.php/apps/files/?dir=/Templates','files',13),(12,1746537191,30,'file_created','admin','admin','files','created_self','[{\"14\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',14),(13,1746537191,30,'file_created','admin','admin','files','created_self','[{\"15\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://localhost/index.php/apps/files/?dir=/Templates','files',15),(14,1746537191,30,'file_created','admin','admin','files','created_self','[{\"16\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://localhost/index.php/apps/files/?dir=/Templates','files',16),(15,1746537191,30,'file_created','admin','admin','files','created_self','[{\"17\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://localhost/index.php/apps/files/?dir=/Templates','files',17),(16,1746537191,30,'file_created','admin','admin','files','created_self','[{\"18\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://localhost/index.php/apps/files/?dir=/Templates','files',18),(17,1746537192,30,'file_created','admin','admin','files','created_self','[{\"19\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://localhost/index.php/apps/files/?dir=/Templates','files',19),(18,1746537192,30,'file_created','admin','admin','files','created_self','[{\"20\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://localhost/index.php/apps/files/?dir=/Templates','files',20),(19,1746537192,30,'file_created','admin','admin','files','created_self','[{\"21\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://localhost/index.php/apps/files/?dir=/Templates','files',21),(20,1746537192,30,'file_created','admin','admin','files','created_self','[{\"22\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://localhost/index.php/apps/files/?dir=/','files',22),(21,1746537192,30,'file_created','admin','admin','files','created_self','[{\"23\":\"\\/Documents\"}]','','[]','/Documents','http://localhost/index.php/apps/files/?dir=/','files',23),(22,1746537192,30,'file_created','admin','admin','files','created_self','[{\"24\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://localhost/index.php/apps/files/?dir=/Documents','files',24),(23,1746537192,30,'file_created','admin','admin','files','created_self','[{\"25\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://localhost/index.php/apps/files/?dir=/Documents','files',25),(24,1746537192,30,'file_created','admin','admin','files','created_self','[{\"26\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://localhost/index.php/apps/files/?dir=/Documents','files',26),(25,1746537192,30,'file_created','admin','admin','files','created_self','[{\"27\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://localhost/index.php/apps/files/?dir=/Documents','files',27),(26,1746537192,30,'file_created','admin','admin','files','created_self','[{\"28\":\"\\/Photos\"}]','','[]','/Photos','http://localhost/index.php/apps/files/?dir=/','files',28),(27,1746537192,30,'file_created','admin','admin','files','created_self','[{\"29\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',29),(28,1746537192,30,'file_created','admin','admin','files','created_self','[{\"30\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://localhost/index.php/apps/files/?dir=/Photos','files',30),(29,1746537192,30,'file_created','admin','admin','files','created_self','[{\"31\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',31),(30,1746537192,30,'file_created','admin','admin','files','created_self','[{\"32\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',32),(31,1746537192,30,'file_created','admin','admin','files','created_self','[{\"33\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',33),(32,1746537192,30,'file_created','admin','admin','files','created_self','[{\"34\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',34),(33,1746537192,30,'file_created','admin','admin','files','created_self','[{\"35\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',35),(34,1746537192,30,'file_created','admin','admin','files','created_self','[{\"36\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',36),(35,1746537192,30,'file_created','admin','admin','files','created_self','[{\"37\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',37),(36,1746537193,30,'calendar','admin','admin','dav','calendar_add_self','{\"actor\":\"admin\",\"calendar\":{\"id\":1,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',1),(37,1746537193,30,'contacts','admin','admin','dav','addressbook_add_self','{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',1),(38,1746537244,30,'contacts','admin','system','dav','addressbook_add','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"}}','','[]','','','addressbook',2),(39,1746537244,30,'contacts','admin','system','dav','card_add','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"alice\",\"name\":\"alice\"}}','','[]','','','addressbook',2),(40,1746537244,30,'calendar','admin','system','dav','calendar_add','{\"actor\":\"admin\",\"calendar\":{\"id\":2,\"uri\":\"contact_birthdays\",\"name\":\"Contact birthdays\"}}','','[]','','','calendar',2),(41,1746537244,30,'contacts','admin','system','dav','card_update','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"alice\",\"name\":\"Alice\"}}','','[]','','','addressbook',2),(42,1746537260,30,'contacts','admin','system','dav','card_add','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"bob\",\"name\":\"bob\"}}','','[]','','','addressbook',2),(43,1746537260,30,'contacts','admin','system','dav','card_update','{\"actor\":\"admin\",\"addressbook\":{\"id\":2,\"uri\":\"system\",\"name\":\"system\"},\"card\":{\"id\":\"bob\",\"name\":\"Bob\"}}','','[]','','','addressbook',2),(44,1785838688,30,'file_created','bob','bob','files','created_self','[{\"176\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://localhost:18080/apps/files/?dir=/','files',176),(45,1785838688,30,'file_created','bob','bob','files','created_self','[{\"177\":\"\\/Templates\"}]','','[]','/Templates','http://localhost:18080/apps/files/?dir=/','files',177),(46,1785838688,30,'file_created','bob','bob','files','created_self','[{\"178\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://localhost:18080/apps/files/?dir=/Templates','files',178),(47,1785838688,30,'file_created','bob','bob','files','created_self','[{\"179\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://localhost:18080/apps/files/?dir=/Templates','files',179),(48,1785838688,30,'file_created','bob','bob','files','created_self','[{\"180\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://localhost:18080/apps/files/?dir=/Templates','files',180),(49,1785838688,30,'file_created','bob','bob','files','created_self','[{\"181\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://localhost:18080/apps/files/?dir=/Templates','files',181),(50,1785838688,30,'file_created','bob','bob','files','created_self','[{\"182\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://localhost:18080/apps/files/?dir=/Templates','files',182),(51,1785838688,30,'file_created','bob','bob','files','created_self','[{\"183\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://localhost:18080/apps/files/?dir=/Templates','files',183),(52,1785838688,30,'file_created','bob','bob','files','created_self','[{\"184\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://localhost:18080/apps/files/?dir=/Templates','files',184),(53,1785838688,30,'file_created','bob','bob','files','created_self','[{\"185\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://localhost:18080/apps/files/?dir=/Templates','files',185),(54,1785838688,30,'file_created','bob','bob','files','created_self','[{\"186\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://localhost:18080/apps/files/?dir=/Templates','files',186),(55,1785838688,30,'file_created','bob','bob','files','created_self','[{\"187\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://localhost:18080/apps/files/?dir=/Templates','files',187),(56,1785838688,30,'file_created','bob','bob','files','created_self','[{\"188\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://localhost:18080/apps/files/?dir=/Templates','files',188),(57,1785838688,30,'file_created','bob','bob','files','created_self','[{\"189\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://localhost:18080/apps/files/?dir=/Templates','files',189),(58,1785838688,30,'file_created','bob','bob','files','created_self','[{\"190\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://localhost:18080/apps/files/?dir=/Templates','files',190),(59,1785838688,30,'file_created','bob','bob','files','created_self','[{\"191\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://localhost:18080/apps/files/?dir=/Templates','files',191),(60,1785838688,30,'file_created','bob','bob','files','created_self','[{\"192\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://localhost:18080/apps/files/?dir=/Templates','files',192),(61,1785838688,30,'file_created','bob','bob','files','created_self','[{\"193\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://localhost:18080/apps/files/?dir=/','files',193),(62,1785838688,30,'file_created','bob','bob','files','created_self','[{\"194\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://localhost:18080/apps/files/?dir=/','files',194),(63,1785838688,30,'file_created','bob','bob','files','created_self','[{\"195\":\"\\/Photos\"}]','','[]','/Photos','http://localhost:18080/apps/files/?dir=/','files',195),(64,1785838688,30,'file_created','bob','bob','files','created_self','[{\"196\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',196),(65,1785838688,30,'file_created','bob','bob','files','created_self','[{\"197\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',197),(66,1785838688,30,'file_created','bob','bob','files','created_self','[{\"198\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',198),(67,1785838688,30,'file_created','bob','bob','files','created_self','[{\"199\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',199),(68,1785838688,30,'file_created','bob','bob','files','created_self','[{\"200\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://localhost:18080/apps/files/?dir=/Photos','files',200),(69,1785838688,30,'file_created','bob','bob','files','created_self','[{\"201\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',201),(70,1785838688,30,'file_created','bob','bob','files','created_self','[{\"202\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',202),(71,1785838688,30,'file_created','bob','bob','files','created_self','[{\"203\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',203),(72,1785838689,30,'file_created','bob','bob','files','created_self','[{\"204\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',204),(73,1785838689,30,'file_created','bob','bob','files','created_self','[{\"205\":\"\\/Documents\"}]','','[]','/Documents','http://localhost:18080/apps/files/?dir=/','files',205),(74,1785838689,30,'file_created','bob','bob','files','created_self','[{\"206\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://localhost:18080/apps/files/?dir=/Documents','files',206),(75,1785838689,30,'file_created','bob','bob','files','created_self','[{\"207\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://localhost:18080/apps/files/?dir=/Documents','files',207),(76,1785838689,30,'file_created','bob','bob','files','created_self','[{\"208\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://localhost:18080/apps/files/?dir=/Documents','files',208),(77,1785838689,30,'file_created','bob','bob','files','created_self','[{\"209\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://localhost:18080/apps/files/?dir=/Documents','files',209),(78,1785838689,30,'file_created','bob','bob','files','created_self','[{\"210\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://localhost:18080/apps/files/?dir=/','files',210),(79,1785838689,30,'calendar','bob','bob','dav','calendar_add_self','{\"actor\":\"bob\",\"calendar\":{\"id\":3,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',3),(80,1785838689,30,'contacts','bob','bob','dav','addressbook_add_self','{\"actor\":\"bob\",\"addressbook\":{\"id\":3,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',3),(81,1785838870,30,'file_created','alice','alice','files','created_self','[{\"329\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://localhost:18080/apps/files/?dir=/','files',329),(82,1785838870,30,'file_created','alice','alice','files','created_self','[{\"330\":\"\\/Templates\"}]','','[]','/Templates','http://localhost:18080/apps/files/?dir=/','files',330),(83,1785838870,30,'file_created','alice','alice','files','created_self','[{\"331\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://localhost:18080/apps/files/?dir=/Templates','files',331),(84,1785838870,30,'file_created','alice','alice','files','created_self','[{\"332\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://localhost:18080/apps/files/?dir=/Templates','files',332),(85,1785838870,30,'file_created','alice','alice','files','created_self','[{\"333\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://localhost:18080/apps/files/?dir=/Templates','files',333),(86,1785838870,30,'file_created','alice','alice','files','created_self','[{\"334\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://localhost:18080/apps/files/?dir=/Templates','files',334),(87,1785838870,30,'file_created','alice','alice','files','created_self','[{\"335\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://localhost:18080/apps/files/?dir=/Templates','files',335),(88,1785838870,30,'file_created','alice','alice','files','created_self','[{\"336\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://localhost:18080/apps/files/?dir=/Templates','files',336),(89,1785838870,30,'file_created','alice','alice','files','created_self','[{\"337\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://localhost:18080/apps/files/?dir=/Templates','files',337),(90,1785838870,30,'file_created','alice','alice','files','created_self','[{\"338\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://localhost:18080/apps/files/?dir=/Templates','files',338),(91,1785838870,30,'file_created','alice','alice','files','created_self','[{\"339\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://localhost:18080/apps/files/?dir=/Templates','files',339),(92,1785838870,30,'file_created','alice','alice','files','created_self','[{\"340\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://localhost:18080/apps/files/?dir=/Templates','files',340),(93,1785838870,30,'file_created','alice','alice','files','created_self','[{\"341\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://localhost:18080/apps/files/?dir=/Templates','files',341),(94,1785838870,30,'file_created','alice','alice','files','created_self','[{\"342\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://localhost:18080/apps/files/?dir=/Templates','files',342),(95,1785838871,30,'file_created','alice','alice','files','created_self','[{\"343\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://localhost:18080/apps/files/?dir=/Templates','files',343),(96,1785838871,30,'file_created','alice','alice','files','created_self','[{\"344\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://localhost:18080/apps/files/?dir=/Templates','files',344),(97,1785838871,30,'file_created','alice','alice','files','created_self','[{\"345\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://localhost:18080/apps/files/?dir=/Templates','files',345),(98,1785838871,30,'file_created','alice','alice','files','created_self','[{\"346\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://localhost:18080/apps/files/?dir=/','files',346),(99,1785838871,30,'file_created','alice','alice','files','created_self','[{\"347\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://localhost:18080/apps/files/?dir=/','files',347),(100,1785838871,30,'file_created','alice','alice','files','created_self','[{\"348\":\"\\/Photos\"}]','','[]','/Photos','http://localhost:18080/apps/files/?dir=/','files',348),(101,1785838871,30,'file_created','alice','alice','files','created_self','[{\"349\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',349),(102,1785838871,30,'file_created','alice','alice','files','created_self','[{\"350\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',350),(103,1785838871,30,'file_created','alice','alice','files','created_self','[{\"351\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',351),(104,1785838871,30,'file_created','alice','alice','files','created_self','[{\"352\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',352),(105,1785838871,30,'file_created','alice','alice','files','created_self','[{\"353\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://localhost:18080/apps/files/?dir=/Photos','files',353),(106,1785838871,30,'file_created','alice','alice','files','created_self','[{\"354\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',354),(107,1785838871,30,'file_created','alice','alice','files','created_self','[{\"355\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',355),(108,1785838871,30,'file_created','alice','alice','files','created_self','[{\"356\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',356),(109,1785838871,30,'file_created','alice','alice','files','created_self','[{\"357\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://localhost:18080/apps/files/?dir=/Photos','files',357),(110,1785838871,30,'file_created','alice','alice','files','created_self','[{\"358\":\"\\/Documents\"}]','','[]','/Documents','http://localhost:18080/apps/files/?dir=/','files',358),(111,1785838871,30,'file_created','alice','alice','files','created_self','[{\"359\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://localhost:18080/apps/files/?dir=/Documents','files',359),(112,1785838871,30,'file_created','alice','alice','files','created_self','[{\"360\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://localhost:18080/apps/files/?dir=/Documents','files',360),(113,1785838871,30,'file_created','alice','alice','files','created_self','[{\"361\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://localhost:18080/apps/files/?dir=/Documents','files',361),(114,1785838871,30,'file_created','alice','alice','files','created_self','[{\"362\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://localhost:18080/apps/files/?dir=/Documents','files',362),(115,1785838871,30,'file_created','alice','alice','files','created_self','[{\"363\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://localhost:18080/apps/files/?dir=/','files',363),(116,1785838871,30,'calendar','alice','alice','dav','calendar_add_self','{\"actor\":\"alice\",\"calendar\":{\"id\":4,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',4),(117,1785838871,30,'contacts','alice','alice','dav','addressbook_add_self','{\"actor\":\"alice\",\"addressbook\":{\"id\":4,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',4);
/*!40000 ALTER TABLE `oc_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity_mq`
--

DROP TABLE IF EXISTS `oc_activity_mq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_activity_mq` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amq_timestamp` int(11) NOT NULL DEFAULT 0,
  `amq_latest_send` int(11) NOT NULL DEFAULT 0,
  `amq_type` varchar(255) NOT NULL,
  `amq_affecteduser` varchar(64) NOT NULL,
  `amq_appid` varchar(32) NOT NULL,
  `amq_subject` varchar(255) NOT NULL,
  `amq_subjectparams` longtext DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mail_id`),
  KEY `amp_user` (`amq_affecteduser`),
  KEY `amp_latest_send_time` (`amq_latest_send`),
  KEY `amp_timestamp_time` (`amq_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity_mq`
--

LOCK TABLES `oc_activity_mq` WRITE;
/*!40000 ALTER TABLE `oc_activity_mq` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_activity_mq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbookchanges`
--

DROP TABLE IF EXISTS `oc_addressbookchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_addressbookchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `addressbookid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbookchanges`
--

LOCK TABLES `oc_addressbookchanges` WRITE;
/*!40000 ALTER TABLE `oc_addressbookchanges` DISABLE KEYS */;
INSERT INTO `oc_addressbookchanges` VALUES (1,'Database:alice.vcf',1,2,1),(2,'Database:alice.vcf',2,2,2),(3,'Database:bob.vcf',3,2,1),(4,'Database:bob.vcf',4,2,2);
/*!40000 ALTER TABLE `oc_addressbookchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbooks`
--

DROP TABLE IF EXISTS `oc_addressbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_addressbooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `addressbook_index` (`principaluri`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbooks`
--

LOCK TABLES `oc_addressbooks` WRITE;
/*!40000 ALTER TABLE `oc_addressbooks` DISABLE KEYS */;
INSERT INTO `oc_addressbooks` VALUES (1,'principals/users/admin','Contacts','contacts',NULL,1),(2,'principals/system/system','system','system','System addressbook which holds all users of this instance',5),(3,'principals/users/bob','Contacts','contacts',NULL,1),(4,'principals/users/alice','Contacts','contacts',NULL,1);
/*!40000 ALTER TABLE `oc_addressbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_appconfig`
--

DROP TABLE IF EXISTS `oc_appconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_appconfig` (
  `appid` varchar(32) NOT NULL DEFAULT '',
  `configkey` varchar(64) NOT NULL DEFAULT '',
  `configvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_appconfig`
--

LOCK TABLES `oc_appconfig` WRITE;
/*!40000 ALTER TABLE `oc_appconfig` DISABLE KEYS */;
INSERT INTO `oc_appconfig` VALUES ('accessibility','enabled','yes'),('accessibility','installed_version','1.10.0'),('accessibility','types',''),('activity','enabled','yes'),('activity','installed_version','2.16.0'),('activity','types','filesystem'),('admin_audit','enabled','yes'),('admin_audit','installed_version','1.14.0'),('admin_audit','types','logging'),('backgroundjob','lastjob','6'),('calendar','enabled','yes'),('calendar','installed_version','3.5.9'),('calendar','types',''),('circles','enabled','yes'),('circles','installed_version','24.0.1'),('circles','loopback_tmp_scheme','http'),('circles','types','filesystem,dav'),('cloud_federation_api','enabled','yes'),('cloud_federation_api','installed_version','1.7.0'),('cloud_federation_api','types','filesystem'),('comments','enabled','yes'),('comments','installed_version','1.14.0'),('comments','types','logging'),('contacts','enabled','yes'),('contacts','installed_version','4.2.5'),('contacts','types','dav'),('contactsinteraction','enabled','yes'),('contactsinteraction','installed_version','1.5.0'),('contactsinteraction','types','dav'),('core','backgroundjobs_mode','cron'),('core','installedat','1746537181.5223'),('core','lastcron','1746537396'),('core','lastupdatedat','1746537181.5287'),('core','public_files','files_sharing/public.php'),('core','public_webdav','dav/appinfo/v1/publicwebdav.php'),('core','theming.variables','b92d206521717ac032f8aa58d3c7ff2f'),('core','vendor','nextcloud'),('dashboard','enabled','yes'),('dashboard','installed_version','7.4.0'),('dashboard','types',''),('dav','enabled','yes'),('dav','installed_version','1.22.0'),('dav','types','filesystem'),('deck','enabled','yes'),('deck','installed_version','1.7.5'),('deck','types','dav'),('external','enabled','yes'),('external','installed_version','4.0.1'),('external','types',''),('federatedfilesharing','enabled','yes'),('federatedfilesharing','installed_version','1.14.0'),('federatedfilesharing','types',''),('federation','enabled','yes'),('federation','installed_version','1.14.0'),('federation','types','authentication'),('files','enabled','yes'),('files','installed_version','1.19.0'),('files','types','filesystem'),('files_external','enabled','yes'),('files_external','installed_version','1.16.1'),('files_external','types','filesystem'),('files_pdfviewer','enabled','yes'),('files_pdfviewer','installed_version','2.5.0'),('files_pdfviewer','types',''),('files_rightclick','enabled','yes'),('files_rightclick','installed_version','1.3.0'),('files_rightclick','types',''),('files_sharing','enabled','yes'),('files_sharing','installed_version','1.16.2'),('files_sharing','types','filesystem'),('files_trashbin','enabled','yes'),('files_trashbin','installed_version','1.14.0'),('files_trashbin','types','filesystem,dav'),('files_versions','enabled','yes'),('files_versions','installed_version','1.17.0'),('files_versions','types','filesystem,dav'),('files_videoplayer','enabled','yes'),('files_videoplayer','installed_version','1.13.0'),('files_videoplayer','types',''),('firstrunwizard','enabled','yes'),('firstrunwizard','installed_version','2.13.0'),('firstrunwizard','types','logging'),('forms','enabled','yes'),('forms','installed_version','2.5.2'),('forms','types',''),('logreader','enabled','yes'),('logreader','installed_version','2.9.0'),('logreader','types',''),('lookup_server_connector','enabled','yes'),('lookup_server_connector','installed_version','1.12.0'),('lookup_server_connector','types','authentication'),('mail','enabled','yes'),('mail','installed_version','1.15.4'),('mail','types',''),('nextcloud_announcements','enabled','yes'),('nextcloud_announcements','installed_version','1.13.0'),('nextcloud_announcements','types','logging'),('notifications','enabled','yes'),('notifications','installed_version','2.12.1'),('notifications','types','logging'),('oauth2','enabled','yes'),('oauth2','installed_version','1.12.0'),('oauth2','types','authentication'),('password_policy','enabled','yes'),('password_policy','installed_version','1.14.0'),('password_policy','types','authentication'),('photos','enabled','yes'),('photos','installed_version','1.6.0'),('photos','types',''),('privacy','enabled','yes'),('privacy','installed_version','1.8.0'),('privacy','types',''),('provisioning_api','enabled','yes'),('provisioning_api','installed_version','1.14.0'),('provisioning_api','types','prevent_group_restriction'),('recommendations','enabled','yes'),('recommendations','installed_version','1.3.0'),('recommendations','types',''),('serverinfo','enabled','yes'),('serverinfo','installed_version','1.14.0'),('serverinfo','types',''),('settings','enabled','yes'),('settings','installed_version','1.6.0'),('settings','types',''),('sharebymail','enabled','yes'),('sharebymail','installed_version','1.14.0'),('sharebymail','types','filesystem'),('support','enabled','yes'),('support','installed_version','1.7.0'),('support','types','session'),('survey_client','enabled','yes'),('survey_client','installed_version','1.12.0'),('survey_client','types',''),('systemtags','enabled','yes'),('systemtags','installed_version','1.14.0'),('systemtags','types','logging'),('text','enabled','yes'),('text','installed_version','3.5.1'),('text','types','dav'),('theming','enabled','yes'),('theming','installed_version','1.15.0'),('theming','types','logging'),('twofactor_backupcodes','enabled','yes'),('twofactor_backupcodes','installed_version','1.13.0'),('twofactor_backupcodes','types',''),('updatenotification','enabled','yes'),('updatenotification','installed_version','1.14.0'),('updatenotification','types',''),('user_status','enabled','yes'),('user_status','installed_version','1.4.0'),('user_status','types',''),('viewer','enabled','yes'),('viewer','installed_version','1.8.0'),('viewer','types',''),('weather_status','enabled','yes'),('weather_status','installed_version','1.4.0'),('weather_status','types',''),('webhooks','enabled','yes'),('webhooks','installed_version','0.4.3'),('webhooks','types',''),('workflow_pdf_converter','enabled','yes'),('workflow_pdf_converter','installed_version','1.9.1'),('workflow_pdf_converter','types','filesystem'),('workflow_script','enabled','yes'),('workflow_script','installed_version','1.9.0'),('workflow_script','types','filesystem'),('workflowengine','enabled','yes'),('workflowengine','installed_version','2.6.0'),('workflowengine','types','filesystem');
/*!40000 ALTER TABLE `oc_appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authorized_groups`
--

DROP TABLE IF EXISTS `oc_authorized_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_authorized_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admindel_groupid_idx` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authorized_groups`
--

LOCK TABLES `oc_authorized_groups` WRITE;
/*!40000 ALTER TABLE `oc_authorized_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_authorized_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authtoken`
--

DROP TABLE IF EXISTS `oc_authtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_authtoken` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT '',
  `login_name` varchar(255) NOT NULL DEFAULT '',
  `password` longtext DEFAULT NULL,
  `name` longtext NOT NULL,
  `token` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(5) unsigned DEFAULT 0,
  `remember` smallint(5) unsigned DEFAULT 0,
  `last_activity` int(10) unsigned DEFAULT 0,
  `last_check` int(10) unsigned DEFAULT 0,
  `scope` longtext DEFAULT NULL,
  `expires` int(10) unsigned DEFAULT NULL,
  `private_key` longtext DEFAULT NULL,
  `public_key` longtext DEFAULT NULL,
  `version` smallint(5) unsigned NOT NULL DEFAULT 1,
  `password_invalid` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authtoken_token_index` (`token`),
  KEY `authtoken_last_activity_idx` (`last_activity`),
  KEY `authtoken_uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authtoken`
--

LOCK TABLES `oc_authtoken` WRITE;
/*!40000 ALTER TABLE `oc_authtoken` DISABLE KEYS */;
INSERT INTO `oc_authtoken` VALUES (1,'admin','admin','gGPn1cmJjnN1e/o24mninYNBVpz/DRpz2IzFN9Z/aMoSmcMFCIi0mezPuk+o4Kd0JsVaa8mskhksZVUk9JXb671xJThnk8dfSskd1BrIqvMbNl0Qf5uhoDzyzaQPd7gAAKSZl9LmYcTxLrsftS5O+F/sqDqaNo7c4CWqa3YVWKOQsxci9ghlL/glhGLbVpKurLSl5/ZFC6dKZslP2MgFSxg2T4KvX2IOLtG0BdaP6QYRaELrVf6YKXX2fyH3FjloRsBgZGPs0BvzLLSAewFhdopGkeVADLvuFVWwsXvLhtolxqBA4RgTXKvJD4hiOU+c9O9HJjuOFvElNZYDwEEyGg==','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:138.0) Gecko/20100101 Firefox/138.0','4d08d8ff30231574f73bf5fe71fb677e2b64884bb61186d21b93c4af1972ead2308b2694d6cf88369aaa5dcd52e5f5f2dc6b6cdc0ea14d3014e9a8815434899f',0,1,1746537606,1746537516,NULL,NULL,'00dbc7e1fc3e405997256a9f3e25febc2adc5d65334e5b3ec508e940b1ef6daa159de166744a54da6405bf0018b7289305af87b7a7cfe263883457232f2b46b137a884e0da2671afef72082346643720760f6973e173fd19a1413530c7f297c47f2dbbc0a7ff9a9f43f54eabf954a4f0762774ec819760406cdf6c033b611cbac65bb0c6b295fd221ae904e3b6c67030c23feea6b6347c049c49c5dfada11ad2e7556d3205698caacaab7863e4eccfc0fd9a8bac823f9742a9cc350bc850c44afd76e90a1e1242460214dd002cc39b7d61eabcb52f37eda0366d4c1a1d0f2a99dbd1bbf309c94cb562ac5213e126c196a47d03a1d7d55b8508b767b882d631edd31661a7ec23a9b5f9cfe69c20945f759e7745aba021b45ddda6cd51654a271b70ee18ce3252028c0b84398869d1ff41246af7afbd6796e014e8004de593f00a16409548d68c99e133672ac4a1ec86d7fa24dfaaa99c1ad753718b7fd9583ecb3b340e390d81449302db394896699413d3f1a4a1a7673131289abf5123a69bb6d875b606dce5c785b77cd377047cd506ab287cfca34885bf0d1f8ac72807b1efed3a5abd76af2e42d6b0d3f36f734ed0757a9c5208d8c458b49a10acf9b36836c2304dea28aca64887429c74fd1b2082f51f483aab09aa5f4e90252b6c4a50bfab5cac865459640a6e75228c0d3e31be697820f2774e7964d13293ae27ad3a98ca76bb6210f3a87997a546260bb7356909c62aaa3e08cb271076ed76d1d4c01535feecfa56ef2386013c7ac9ae199ccef1ba5b58dfe55d72b8bc6920479b98db8433790bfa074c1fed9d9ba6de96f8377d0af8f0115eced1a4e85ed073089feabf23bc1e11f9f35460028321400f085ad3e76b3fb226200356c7de4fdf90c9442a2f1dbbaaff33b95fdba9a9908ebc0df11d65c98a347ac1642c02038c3408930da7ae3ec2e1537a289299c6ff8fcfab713819dc11e4b1a2697eb6953e71443d42ce73bbb6c8719ef05d2092470cf956339bed18003203c2f1b22429416a4cc0813de7068204dab2e4cc9d801b6f4b0143eeebea475028229e17f7ba3c6c85391573841216dfb7602a386f71f6ddbff0cd82c68fee5d26c026979781b658bb4ade53e30a590b96d39d0a837744e62cf7213f72e1a8daf8dd9a6574ffbfdd8c854696dbeab814d41a1dfac8186769548e614186763913c20f527405d0299ace490e6147493386a3fdb65e585cc5d10b0eecd9605e7b2c9528930e2b3827da3f25f0a65ad36ae1707f2e984f91e444cbf501eb23c1feb1945a19dd93f6521554bb2ebb8b44f73d2e4e7383ded694b3d9772cd3d8cd5130dbe05b410175a158904dcf9bfba31316be2c3b1064fc08355cfa03ae0017288cbaa17a02514dfee610bf799e1b6cf0059be5733a5287c6c2721348f4b2ef79b24c4ebefeffbaa0c2aa04b479e0c0b6b825af686cb61bc1bc20d6a5d80e5ba506766c8253445887e5aaa10417e36bbddd686ce3ba272cb9a55659bddc940c348ebd78e3d0098f5c225d9493a42b5dccc9b7618da520a8456c53b768c486b47d84d993b3d942e5522d538832b3f3bb75b3d9eb77466c7a643ff8bae13bb80f0f85e28ce19549c86353c3dbc9b7446ff70571a3a6f6acb4b4c55b15c23c3d6133eae4a6eee2bde99057fbaecc1bc0b0ce0eee306d9a784b05f4b9293d02b323207f5f521d7d4c8bcd1164b495af695ccbc424084da08f1f5a9a6a4e4859548c2877954944075e034d05af9b3f1a2ea0f882d7e69f115853872fa52fbf1a7ad166eb823a871b83e8c05d35d0d34dadd2c2a354895fe6651a4e2b68f80d0f0c375f3921b1a94899b9808e0eaf7a30819ce34a9808bf4312972cfd03bde607880e6b15c73f98caa5655ba8aad7c10264cd1f83b9974316fa4aee3c497280bc8171e9270b62e95b52e39713b6e8de1725d119cf6454f1c5a655d8f6bd2f9c16186c00ce8fc554eab3846d3ce761159ae192624c6b9548ef339187d55b0d6dda0c74839ead317ce9811c45377e0ca382b3de2fb4392c62be8a0b796c8d6efc32205b255840959b9d2bc9e65c8c83b2d8fbc4953f2ccfd693d3e4098920b83967a2d92de3ae072b33919e3435d41cf432fbec2b431680e73d9a0e3393ef852762c66c31d270061c76265a6979de0243782ca3e680306b6daf7391c123136f23623eb54a7b47da54e51975ab17f3ad78623b11388c5edd3d4ec59401132bda73f4e58e58e852da9bb0558e25e7e85728f449443e73969f35df18605b67aa3b0fc83370eba5169e73004255e1d91debbd235b8c55d43262d971a5bc29b72701e35e20b656ee759abca3ce758c0a63c5ac46890276ce98c483927c2f9334b7be4297db5d08072c31e9294286ace318c1890fef0229afe9c2e07616178b155ffd|fcb48399070af8ec22edaed48b2f1b04|238a55f1607d43a334e9e3d742c740f38615b565796876cdbdc8885e4c26a86bc4333f6cbf83cd69042867dc0d44a5573ae96caa28ba329ca14011795883f83c|3','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwVpeIw5UdptIw4mrxhef\n/WGetVBjCzyFMTWebF8ZcylhfNvXoxc9uUC1YgZxTtL3sjUAFcISr19q+V8wT/qd\nz0p0qNLnmyn3ADj6M7X/xdMAG2J1CbjcLZyuFJ+QQSWTlzTsqZOXa+Vrvr93r0FR\ntdaKYH0Mm2IW8inNzCg4g3z9ZtuFBX4DFMxdbuIfgAkOwSY1tNDMhd0MUrG86xc4\nhZJ3TtgVMsirouBHcSe2HHWy1Ly4LqM1ZXv3rL8xqh9yNnOtQ0VLHIH+AnMW3/bW\nFV7DBQj8hK0PxZn0QDN6P9ExF26JEzsUhO0869WjF2OEAxopDl00k7qa7sYo0a4A\nXwIDAQAB\n-----END PUBLIC KEY-----\n',2,0),(3,'alice','alice','Aem9G/xmdvOq690vPQ488cRn/LGsCYqZKOTqvSxwYlGHqE2HZxMw/3dfbKMDyZw2fBI17oAlrI3N92aeBWNHGxSzyDqvtJMSrp6MoXxzfW+bNh7gi3eNLA58iq6e5FQlyXTa2b+e+CHqK4VYHE2fz0KM9zMmjfnrhPaboPj7GBCtKv21yTtZV8VAajB12YwRy+oysxN7f7Kry13QdkTZqDs3B4lWIHeor10ajJemYgkuoeLfNZQJsQV2PCOEsl1dXd7wBzHtL6uWv4Wp6DqG6NzKpVaUUtAxf57Dzi043wWYgEDWCwk3r5WoCYLd/9evzcu1qqndbeBMtToDG8XaPA==','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:153.0) Gecko/20100101 Firefox/153.0','7d863c7d4accc413bd068b57db1d47e63721270b53fce8c019c7330735d172649d95c667087dba1915cc8f62f50fc2750438bf6159769e9bdb9e3872e09113c5',0,1,1785838871,1785838871,NULL,NULL,'080d9be39da4c6c802ce61f5480b2b3ddbcbfbe1d50762fd02c794a288e0d26e25c40ac960580197889cdef06e0be2a53711c0363350f14591df309d22b69c1893326052ce6a0edf09489887e140e7e4e618d7707c63b822a7eea2680ca1871fbf03c52f42ef6645247e4dc944f3cad33fa7b811f93097a0ce66c61a1ac6157e56b4df880a018945db4011869b982cfd183d6a5bb6e06ba424971d8bd84a028d82b7eb89fd3d8e1c41477828a74d3b5f2ca321deb23c26aedc61c203bbe857bae28623027447f6dcc90efeadcbc62c8fec889ff65d775348cb609d29bfa8c3799a7465b8863f1c46d1fa4610ec2fe43d12951023b72f761dc17b8acb1a5428fd3102a87da1df4ba8aa81d7ac948ffc2d6f192f41ee5a65f53d94ce4090d1ee7c236b284705c7ef9fc72356827c1afb111b4bd90348180818b14235109396d16c9aeec8702d6b939a14e1aa60707883b4c1f30eb0e3f684710047ff63250959a4c1ef208b28ee5298096a447454e6371cd2bd48231268a2e1f879d8ae6db8684d37c18e75eb53393b84b84bf84e6702c0dec365813df46c2469d4cda8218b5d616d07816d2a245007deae19be2446f3722f0622f25a05491a916f8ae885d566a9bca17aedce54a36f080217af49d6cd95363fd7fd1190c1f390946d51c49cf6284e2954731e8d847eb567e12f5b3361da55d086c445a205b6abc477d1cfa5574fed278609adc0953b0bfd4277029a61af1bd2a224a899e52d115aea20062df2ddd5f752726b1f120923e8c0f9f7a5ea5e8d26db0873132233c0ca4b4064a7f401585b6c04872f60bff2122e2cadd40ddff850cdc93d34d9ecd6d03aa46b5ce7db4b3fe63d2e4cea044b601587ea6ff7c3e5757b4e63b5a010329972d1900806b2ec31ff664a96ce87b98bd7ca0b5d8dbf7d14a868398add9619b4e76915f3b0a75a5c8a10635a9c34f5ce80515716008498f8adf16f95aac797ed2b574b8c34e1e058c303e5858f56020eaaa4b013ad7fd3e69969e9ef23b5b1b939b8ebfff6ca5db0d8725a191a03829e21c6330058b12e05117d3f32b0bec5f86eb03021577f7fb20cdc2304364bffbfdeb1909f4ffb7779cabaa86e523864939eb6a2a1d42829d7158b9fd4ed2538ee961b68f22aaf9ec0f820e3cbb206958e6b82c5d9aa2f8ee3bd51861e5d0e101e77f460a7563ff42a101b12e1bdb3fe19f723db184c42b5e9f23653213a93fdb81da893bc392e101617a8a850448d24448f05e5bf01330b488a39801aebc68a595d64ee831a102b88dd1d995cb495b414cf54c97a56bc85302068b6d7f5d1e38c455ee2bc607238b852dc8620699df043f92d37e5b80567e896180f407f3897788039bf5ae71c6547f61de948474e59b6d17b9b6399fa1e60134eb8e825ad8547dfe077524fd626222cb3bf7507cf4e9f0f90f5edf5ed7dfc188fa9a748c7a88549d12cba663ea1ee0b40b5f485d428cf55f3366a89edb74fba54918b6f18cb3e50759c1a7e8e01e073136dfdde62c6c361fe42e974dc2ef23eb48abacf25445f005b4233f579f1e4f2f2de1e2dce1546b77fab4017b017d3d8b578de9b552c389bfe43338f4fb24040cae78cdd16c6d7a3a50b27bee8248ddd7e84bae5c312f2a6da7f5e803d25a7326fe725997fa94a98f4c9e090efad2815206910efb1e907edd2d2f7e07cc9326d981b6f316f2ae461690cea580315c5d0523aaa239edca3d7804ac0afef0f053f61ee6c46df4ba0cb04c7832c9b194190935a39ce72d87f1d50bfbbf49005ab75fdd8dbf73780f0ac86822aa8b6ab17dc04e77ff05de58e5c789d795275556addd0d3877df84c5337f797e1d210aae381b41ea801b156146c5511a06f6fb7b4ab149a55ebcfb0843d1f93021c03c3104d5c747ed947599d3f277b06ecedb85605a0d27d3a7b05263f525b1aac7cae97bf83c268ca41a2a9bbc3dba6c0650217219d54e723e903fc3f1d2889a6879172f191fdc7717693e98e217a39966a869d3965cb446ccfa08539cc33d161e4b8b86714c012c1fc5d810d2680bd619bb2112c85e1b0a8180a7b9ca46d3c36a452a6c9f9daa48cdf7da7eae211cc380f5427c654881410af505ddca18985f4a8fc3de7f53aa3c20c64af4df2ac814d43ae7fde8b8586315164b6103ace7535ac4fd24577823b75cfc88b2f4123bc444f5f3e2470d07fbdcbe5004900a45de026e712dda2ac2df8bd30ae2fc45ca75032692c8e383a0a7c05736ede26c0a99382b0393fb20924a5265d2453998eb022669a348b6ca074b624133e828f9c57d3d604b770af1e3931c118da7b4e70603a37f55df4353fac10c79b5ae13e727cc23766805e4199e1e1bcbb1ce27a7ed9211a0b72cf139998737564d9049ffc77f81f54e3c5150bbf855b1ebe1db16f3a51b6|2554628ea57a329c011d478935358b8d|183b659221d3a27a0b70cd46b5f505cc3734911d93e72d40e088173410050e708c3b5bff7b74d95156a3f2ebf6ec2571d39170c69dfc13fc3cb5ca861c5bc3d1|3','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3QFJzjge34wEJAQ2/LhM\nupvLWlDbtZ0Pp8tClno98+peS1kouR4Bz4jWxpUHGDSp9+ADuUnXUv2ulo4xpB6K\n43upDNEcgl2D9qEALFAIsIqAyebFeSuk3oxrno+YctOcVVdWVOCGKbrY2Z+RGvTn\nCi28OKs8ZU5YiHoL7YLXKm8c545Zb9C3A1W84kGTgxO/ex6cAYcjPfXaOjgJ1dyF\npBylkAXuSamTgLmmgDrP/8cNlx8WWq/GXxTociP22lsiVDXm/9l98wiFFgzgbqR/\no17L8wUSJHUBZLNWjj8zwJwtfCchNtVI/YgMxJtQ62qynvv7iScvzSMTqcLp9pKN\ntwIDAQAB\n-----END PUBLIC KEY-----\n',2,0);
/*!40000 ALTER TABLE `oc_authtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_bruteforce_attempts`
--

DROP TABLE IF EXISTS `oc_bruteforce_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_bruteforce_attempts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `occurred` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `subnet` varchar(255) NOT NULL DEFAULT '',
  `metadata` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bruteforce_attempts_ip` (`ip`),
  KEY `bruteforce_attempts_subnet` (`subnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_bruteforce_attempts`
--

LOCK TABLES `oc_bruteforce_attempts` WRITE;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_bookings`
--

DROP TABLE IF EXISTS `oc_calendar_appt_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_appt_bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appt_config_id` bigint(20) unsigned NOT NULL,
  `created_at` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `display_name` varchar(128) NOT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `timezone` varchar(32) NOT NULL,
  `confirmed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_bk_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_bookings`
--

LOCK TABLES `oc_calendar_appt_bookings` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_configs`
--

DROP TABLE IF EXISTS `oc_calendar_appt_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_appt_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` longtext DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `visibility` varchar(10) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `target_calendar_uri` varchar(255) NOT NULL,
  `calendar_freebusy_uris` longtext DEFAULT NULL,
  `availability` longtext DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `increment` int(11) NOT NULL,
  `preparation_duration` int(11) NOT NULL DEFAULT 0,
  `followup_duration` int(11) NOT NULL DEFAULT 0,
  `time_before_next_slot` int(11) DEFAULT NULL,
  `daily_max` int(11) DEFAULT NULL,
  `future_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_configs`
--

LOCK TABLES `oc_calendar_appt_configs` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_invitations`
--

DROP TABLE IF EXISTS `oc_calendar_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `recurrenceid` varchar(255) DEFAULT NULL,
  `attendee` varchar(255) NOT NULL,
  `organizer` varchar(255) NOT NULL,
  `sequence` bigint(20) unsigned DEFAULT NULL,
  `token` varchar(60) NOT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_invitation_tokens` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_invitations`
--

LOCK TABLES `oc_calendar_invitations` WRITE;
/*!40000 ALTER TABLE `oc_calendar_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_reminders`
--

DROP TABLE IF EXISTS `oc_calendar_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_reminders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `is_recurring` smallint(6) DEFAULT NULL,
  `uid` varchar(255) NOT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `is_recurrence_exception` smallint(6) NOT NULL,
  `event_hash` varchar(255) NOT NULL,
  `alarm_hash` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `is_relative` smallint(6) NOT NULL,
  `notification_date` bigint(20) unsigned NOT NULL,
  `is_repeat_based` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_reminder_objid` (`object_id`),
  KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_reminders`
--

LOCK TABLES `oc_calendar_reminders` WRITE;
/*!40000 ALTER TABLE `oc_calendar_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources`
--

DROP TABLE IF EXISTS `oc_calendar_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) DEFAULT NULL,
  `resource_id` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `group_restrictions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_resources_email` (`email`),
  KEY `calendar_resources_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources`
--

LOCK TABLES `oc_calendar_resources` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources_md`
--

DROP TABLE IF EXISTS `oc_calendar_resources_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_resources_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_md_idk` (`resource_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources_md`
--

LOCK TABLES `oc_calendar_resources_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms`
--

DROP TABLE IF EXISTS `oc_calendar_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) DEFAULT NULL,
  `resource_id` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `group_restrictions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_rooms_email` (`email`),
  KEY `calendar_rooms_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms`
--

LOCK TABLES `oc_calendar_rooms` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms_md`
--

DROP TABLE IF EXISTS `oc_calendar_rooms_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_rooms_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_md_idk` (`room_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms_md`
--

LOCK TABLES `oc_calendar_rooms_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarchanges`
--

DROP TABLE IF EXISTS `oc_calendarchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `calendarid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarchanges`
--

LOCK TABLES `oc_calendarchanges` WRITE;
/*!40000 ALTER TABLE `oc_calendarchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects`
--

DROP TABLE IF EXISTS `oc_calendarobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `calendarid` bigint(20) unsigned NOT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `componenttype` varchar(8) DEFAULT NULL,
  `firstoccurence` bigint(20) unsigned DEFAULT NULL,
  `lastoccurence` bigint(20) unsigned DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `classification` int(11) DEFAULT 0,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects`
--

LOCK TABLES `oc_calendarobjects` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects_props`
--

DROP TABLE IF EXISTS `oc_calendarobjects_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarobjects_props` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` bigint(20) NOT NULL DEFAULT 0,
  `objectid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `parameter` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `calendartype` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `calendarobject_index` (`objectid`,`calendartype`),
  KEY `calendarobject_name_index` (`name`,`calendartype`),
  KEY `calendarobject_value_index` (`value`,`calendartype`),
  KEY `calendarobject_calid_index` (`calendarid`,`calendartype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects_props`
--

LOCK TABLES `oc_calendarobjects_props` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendars`
--

DROP TABLE IF EXISTS `oc_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `description` varchar(255) DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) DEFAULT NULL,
  `timezone` longtext DEFAULT NULL,
  `components` varchar(64) DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT 0,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calendars_index` (`principaluri`,`uri`),
  KEY `cals_princ_del_idx` (`principaluri`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendars`
--

LOCK TABLES `oc_calendars` WRITE;
/*!40000 ALTER TABLE `oc_calendars` DISABLE KEYS */;
INSERT INTO `oc_calendars` VALUES (1,'principals/users/admin','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL),(2,'principals/system/system','Contact birthdays','contact_birthdays',1,NULL,0,'#E9D859',NULL,'VEVENT',0,NULL),(3,'principals/users/bob','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL),(4,'principals/users/alice','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL);
/*!40000 ALTER TABLE `oc_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarsubscriptions`
--

DROP TABLE IF EXISTS `oc_calendarsubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarsubscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `principaluri` varchar(255) DEFAULT NULL,
  `displayname` varchar(100) DEFAULT NULL,
  `refreshrate` varchar(10) DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarcolor` varchar(255) DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT 1,
  `source` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calsub_index` (`principaluri`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarsubscriptions`
--

LOCK TABLES `oc_calendarsubscriptions` WRITE;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards`
--

DROP TABLE IF EXISTS `oc_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `carddata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `lastmodified` bigint(20) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_abid` (`addressbookid`),
  KEY `cards_abiduri` (`addressbookid`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards`
--

LOCK TABLES `oc_cards` WRITE;
/*!40000 ALTER TABLE `oc_cards` DISABLE KEYS */;
INSERT INTO `oc_cards` VALUES (1,2,'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.4.3//EN\r\nUID:alice\r\nFN:Alice\r\nN:Alice;;;;\r\nCLOUD:alice@192.168.233.64:8080\r\nEND:VCARD\r\n','Database:alice.vcf',1746537244,'cb24062427f071ab92898a138a3a5d62',146,'alice'),(2,2,'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.4.3//EN\r\nUID:bob\r\nFN:Bob\r\nN:Bob;;;;\r\nCLOUD:bob@192.168.233.64:8080\r\nEND:VCARD\r\n','Database:bob.vcf',1746537260,'69f37b167a80c8fb2ef13f59df521bad',138,'bob');
/*!40000 ALTER TABLE `oc_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards_properties`
--

DROP TABLE IF EXISTS `oc_cards_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_cards_properties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT 0,
  `cardid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `card_contactid_index` (`cardid`),
  KEY `card_name_index` (`name`),
  KEY `card_value_index` (`value`),
  KEY `cards_prop_abid` (`addressbookid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards_properties`
--

LOCK TABLES `oc_cards_properties` WRITE;
/*!40000 ALTER TABLE `oc_cards_properties` DISABLE KEYS */;
INSERT INTO `oc_cards_properties` VALUES (5,2,1,'UID','alice',0),(6,2,1,'FN','Alice',0),(7,2,1,'N','Alice;;;;',0),(8,2,1,'CLOUD','alice@192.168.233.64:8080',0),(13,2,2,'UID','bob',0),(14,2,2,'FN','Bob',0),(15,2,2,'N','Bob;;;;',0),(16,2,2,'CLOUD','bob@192.168.233.64:8080',0);
/*!40000 ALTER TABLE `oc_cards_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_circle`
--

DROP TABLE IF EXISTS `oc_circles_circle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_circle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(31) NOT NULL,
  `name` varchar(127) NOT NULL,
  `display_name` varchar(255) DEFAULT '',
  `sanitized_name` varchar(127) DEFAULT '',
  `instance` varchar(255) DEFAULT '',
  `config` int(10) unsigned DEFAULT NULL,
  `source` int(10) unsigned DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `contact_addressbook` int(10) unsigned DEFAULT NULL,
  `contact_groupname` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8195F548E3C68343` (`unique_id`),
  KEY `IDX_8195F548D48A2F7C` (`config`),
  KEY `IDX_8195F5484230B1DE` (`instance`),
  KEY `IDX_8195F5485F8A7F73` (`source`),
  KEY `IDX_8195F548C317B362` (`sanitized_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_circle`
--

LOCK TABLES `oc_circles_circle` WRITE;
/*!40000 ALTER TABLE `oc_circles_circle` DISABLE KEYS */;
INSERT INTO `oc_circles_circle` VALUES (1,'fr6EGanM2uppAyArxzF8gJLGc4jBUkO','user:admin:fr6EGanM2uppAyArxzF8gJLGc4jBUkO','admin','','',1,1,'[]','','2025-05-06 13:13:10',0,''),(2,'DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','app:circles:DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','Circles','','',8193,10001,'[]','','2025-05-06 13:13:11',0,''),(3,'fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','user:alice:fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','Alice','','',1,1,'[]','','2025-05-06 13:14:04',0,''),(4,'w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','user:bob:w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','Bob','','',1,1,'[]','','2025-05-06 13:14:20',0,'');
/*!40000 ALTER TABLE `oc_circles_circle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_event`
--

DROP TABLE IF EXISTS `oc_circles_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_event` (
  `token` varchar(63) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `event` longtext DEFAULT NULL,
  `result` longtext DEFAULT NULL,
  `interface` int(11) NOT NULL DEFAULT 0,
  `severity` int(11) DEFAULT NULL,
  `retry` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `creation` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`token`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_event`
--

LOCK TABLES `oc_circles_event` WRITE;
/*!40000 ALTER TABLE `oc_circles_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_member`
--

DROP TABLE IF EXISTS `oc_circles_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `single_id` varchar(31) DEFAULT NULL,
  `circle_id` varchar(31) NOT NULL,
  `member_id` varchar(31) DEFAULT NULL,
  `user_id` varchar(127) NOT NULL,
  `user_type` smallint(6) NOT NULL DEFAULT 1,
  `instance` varchar(255) DEFAULT '',
  `invited_by` varchar(31) DEFAULT NULL,
  `level` smallint(6) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `cached_name` varchar(255) DEFAULT '',
  `cached_update` datetime DEFAULT NULL,
  `contact_id` varchar(127) DEFAULT NULL,
  `contact_meta` longtext DEFAULT NULL,
  `joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_member_cisiuiutil` (`circle_id`,`single_id`,`user_id`,`user_type`,`instance`,`level`),
  KEY `circles_member_cisi` (`circle_id`,`single_id`),
  KEY `IDX_25C66A49E7A1254A` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_member`
--

LOCK TABLES `oc_circles_member` WRITE;
/*!40000 ALTER TABLE `oc_circles_member` DISABLE KEYS */;
INSERT INTO `oc_circles_member` VALUES (1,'DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','circles',10000,'',NULL,9,'Member','[]','Circles','2025-05-06 13:13:11','',NULL,'2025-05-06 13:13:11'),(2,'fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO','admin',1,'','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'Member','[]','admin','2025-05-06 13:13:11','',NULL,'2025-05-06 13:13:11'),(3,'fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','alice',1,'','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'Member','[]','alice','2025-05-06 13:14:04','',NULL,'2025-05-06 13:14:04'),(4,'w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','bob',1,'','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'Member','[]','bob','2025-05-06 13:14:20','',NULL,'2025-05-06 13:14:20');
/*!40000 ALTER TABLE `oc_circles_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_membership`
--

DROP TABLE IF EXISTS `oc_circles_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_membership` (
  `circle_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `inheritance_first` varchar(31) NOT NULL,
  `inheritance_last` varchar(31) NOT NULL,
  `inheritance_depth` int(10) unsigned NOT NULL,
  `inheritance_path` longtext NOT NULL,
  PRIMARY KEY (`single_id`,`circle_id`),
  KEY `IDX_8FC816EAE7C1D92B` (`single_id`),
  KEY `circles_membership_ifilci` (`inheritance_first`,`inheritance_last`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_membership`
--

LOCK TABLES `oc_circles_membership` WRITE;
/*!40000 ALTER TABLE `oc_circles_membership` DISABLE KEYS */;
INSERT INTO `oc_circles_membership` VALUES ('DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',9,'DNx2epvw8ilwQWJnofrgnwfA23O4Fqn','DNx2epvw8ilwQWJnofrgnwfA23O4Fqn',1,'[\"DNx2epvw8ilwQWJnofrgnwfA23O4Fqn\"]'),('fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ',9,'fgskkoxDJI9nIy84NwDAjVh75pQd6fQ','fgskkoxDJI9nIy84NwDAjVh75pQd6fQ',1,'[\"fgskkoxDJI9nIy84NwDAjVh75pQd6fQ\"]'),('fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO',9,'fr6EGanM2uppAyArxzF8gJLGc4jBUkO','fr6EGanM2uppAyArxzF8gJLGc4jBUkO',1,'[\"fr6EGanM2uppAyArxzF8gJLGc4jBUkO\"]'),('w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze',9,'w5hmA5jhoYxeK3yrAwjeupXmkbhEvze','w5hmA5jhoYxeK3yrAwjeupXmkbhEvze',1,'[\"w5hmA5jhoYxeK3yrAwjeupXmkbhEvze\"]');
/*!40000 ALTER TABLE `oc_circles_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mount`
--

DROP TABLE IF EXISTS `oc_circles_mount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_mount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) NOT NULL,
  `circle_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `token` varchar(63) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `mountpoint` longtext DEFAULT NULL,
  `mountpoint_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mount_cimipt` (`circle_id`,`mount_id`,`parent`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mount`
--

LOCK TABLES `oc_circles_mount` WRITE;
/*!40000 ALTER TABLE `oc_circles_mount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mountpoint`
--

DROP TABLE IF EXISTS `oc_circles_mountpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_mountpoint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) NOT NULL,
  `single_id` varchar(31) NOT NULL,
  `mountpoint` longtext DEFAULT NULL,
  `mountpoint_hash` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mountpoint_ms` (`mount_id`,`single_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mountpoint`
--

LOCK TABLES `oc_circles_mountpoint` WRITE;
/*!40000 ALTER TABLE `oc_circles_mountpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mountpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_remote`
--

DROP TABLE IF EXISTS `oc_circles_remote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_remote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT 'Unknown',
  `interface` int(11) NOT NULL DEFAULT 0,
  `uid` varchar(20) DEFAULT NULL,
  `instance` varchar(127) DEFAULT NULL,
  `href` varchar(254) DEFAULT NULL,
  `item` longtext DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F94EF834230B1DE` (`instance`),
  KEY `IDX_F94EF83539B0606` (`uid`),
  KEY `IDX_F94EF8334F8E741` (`href`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_remote`
--

LOCK TABLES `oc_circles_remote` WRITE;
/*!40000 ALTER TABLE `oc_circles_remote` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_remote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_share_lock`
--

DROP TABLE IF EXISTS `oc_circles_share_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_share_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(31) NOT NULL,
  `circle_id` varchar(31) NOT NULL,
  `instance` varchar(127) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_337F52F8126F525E70EE2FF6` (`item_id`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_share_lock`
--

LOCK TABLES `oc_circles_share_lock` WRITE;
/*!40000 ALTER TABLE `oc_circles_share_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_share_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_token`
--

DROP TABLE IF EXISTS `oc_circles_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `share_id` int(11) DEFAULT NULL,
  `circle_id` varchar(31) DEFAULT NULL,
  `single_id` varchar(31) DEFAULT NULL,
  `member_id` varchar(31) DEFAULT NULL,
  `token` varchar(31) DEFAULT NULL,
  `password` varchar(127) DEFAULT NULL,
  `accepted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sicisimit` (`share_id`,`circle_id`,`single_id`,`member_id`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_token`
--

LOCK TABLES `oc_circles_token` WRITE;
/*!40000 ALTER TABLE `oc_circles_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_accesscache`
--

DROP TABLE IF EXISTS `oc_collres_accesscache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_accesscache` (
  `user_id` varchar(64) NOT NULL,
  `collection_id` bigint(20) NOT NULL DEFAULT 0,
  `resource_type` varchar(64) NOT NULL DEFAULT '',
  `resource_id` varchar(64) NOT NULL DEFAULT '',
  `access` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_accesscache`
--

LOCK TABLES `oc_collres_accesscache` WRITE;
/*!40000 ALTER TABLE `oc_collres_accesscache` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_accesscache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_collections`
--

DROP TABLE IF EXISTS `oc_collres_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_collections`
--

LOCK TABLES `oc_collres_collections` WRITE;
/*!40000 ALTER TABLE `oc_collres_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_resources`
--

DROP TABLE IF EXISTS `oc_collres_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_resources` (
  `collection_id` bigint(20) NOT NULL,
  `resource_type` varchar(64) NOT NULL,
  `resource_id` varchar(64) NOT NULL,
  PRIMARY KEY (`collection_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_resources`
--

LOCK TABLES `oc_collres_resources` WRITE;
/*!40000 ALTER TABLE `oc_collres_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments`
--

DROP TABLE IF EXISTS `oc_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `topmost_parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `children_count` int(10) unsigned NOT NULL DEFAULT 0,
  `actor_type` varchar(64) NOT NULL DEFAULT '',
  `actor_id` varchar(64) NOT NULL DEFAULT '',
  `message` longtext DEFAULT NULL,
  `verb` varchar(64) DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) NOT NULL DEFAULT '',
  `object_id` varchar(64) NOT NULL DEFAULT '',
  `reference_id` varchar(64) DEFAULT NULL,
  `reactions` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  KEY `comments_actor_index` (`actor_type`,`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments`
--

LOCK TABLES `oc_comments` WRITE;
/*!40000 ALTER TABLE `oc_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments_read_markers`
--

DROP TABLE IF EXISTS `oc_comments_read_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_comments_read_markers` (
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `object_type` varchar(64) NOT NULL DEFAULT '',
  `object_id` varchar(64) NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`object_type`,`object_id`),
  KEY `comments_marker_object_index` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments_read_markers`
--

LOCK TABLES `oc_comments_read_markers` WRITE;
/*!40000 ALTER TABLE `oc_comments_read_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments_read_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_cal_proxy`
--

DROP TABLE IF EXISTS `oc_dav_cal_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_dav_cal_proxy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(64) NOT NULL,
  `proxy_id` varchar(64) NOT NULL,
  `permissions` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  KEY `dav_cal_proxy_ipid` (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_cal_proxy`
--

LOCK TABLES `oc_dav_cal_proxy` WRITE;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_shares`
--

DROP TABLE IF EXISTS `oc_dav_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_dav_shares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` bigint(20) unsigned NOT NULL,
  `publicuri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_shares`
--

LOCK TABLES `oc_dav_shares` WRITE;
/*!40000 ALTER TABLE `oc_dav_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_assigned_labels`
--

DROP TABLE IF EXISTS `oc_deck_assigned_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_assigned_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL DEFAULT 0,
  `card_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_assigned_labels_idx_i` (`label_id`),
  KEY `deck_assigned_labels_idx_c` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_assigned_labels`
--

LOCK TABLES `oc_deck_assigned_labels` WRITE;
/*!40000 ALTER TABLE `oc_deck_assigned_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_assigned_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_assigned_users`
--

DROP TABLE IF EXISTS `oc_deck_assigned_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_assigned_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant` varchar(64) NOT NULL,
  `card_id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_assigned_users_idx_p` (`participant`),
  KEY `deck_assigned_users_idx_c` (`card_id`),
  KEY `deck_assigned_users_idx_ty` (`type`),
  KEY `idx_card_participant` (`card_id`,`participant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_assigned_users`
--

LOCK TABLES `oc_deck_assigned_users` WRITE;
/*!40000 ALTER TABLE `oc_deck_assigned_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_assigned_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_attachment`
--

DROP TABLE IF EXISTS `oc_deck_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  `last_modified` bigint(20) unsigned DEFAULT 0,
  `created_at` bigint(20) unsigned DEFAULT 0,
  `created_by` varchar(64) NOT NULL,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_cardid_deletedat` (`card_id`,`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_attachment`
--

LOCK TABLES `oc_deck_attachment` WRITE;
/*!40000 ALTER TABLE `oc_deck_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_board_acl`
--

DROP TABLE IF EXISTS `oc_deck_board_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_board_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `participant` varchar(64) NOT NULL,
  `permission_edit` tinyint(1) DEFAULT 0,
  `permission_share` tinyint(1) DEFAULT 0,
  `permission_manage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deck_board_acl_uq_i` (`board_id`,`type`,`participant`),
  KEY `deck_board_acl_idx_i` (`board_id`),
  KEY `idx_participant_type` (`participant`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_board_acl`
--

LOCK TABLES `oc_deck_board_acl` WRITE;
/*!40000 ALTER TABLE `oc_deck_board_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_board_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_boards`
--

DROP TABLE IF EXISTS `oc_deck_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `color` varchar(6) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  `last_modified` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_owner_modified` (`owner`,`last_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_boards`
--

LOCK TABLES `oc_deck_boards` WRITE;
/*!40000 ALTER TABLE `oc_deck_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_cards`
--

DROP TABLE IF EXISTS `oc_deck_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `description_prev` longtext DEFAULT NULL,
  `stack_id` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL DEFAULT 'plain',
  `last_modified` int(10) unsigned DEFAULT 0,
  `last_editor` varchar(64) DEFAULT NULL,
  `created_at` int(10) unsigned DEFAULT 0,
  `owner` varchar(64) NOT NULL,
  `order` bigint(20) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `duedate` datetime DEFAULT NULL,
  `notified` tinyint(1) DEFAULT 0,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_cards_stack_id_index` (`stack_id`),
  KEY `deck_cards_order_index` (`order`),
  KEY `deck_cards_archived_index` (`archived`),
  KEY `idx_due_notified_archived_deleted` (`duedate`,`notified`,`archived`,`deleted_at`),
  KEY `idx_last_editor` (`last_editor`,`description_prev`(1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_cards`
--

LOCK TABLES `oc_deck_cards` WRITE;
/*!40000 ALTER TABLE `oc_deck_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_labels`
--

DROP TABLE IF EXISTS `oc_deck_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `board_id` bigint(20) NOT NULL,
  `last_modified` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_labels_board_id_index` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_labels`
--

LOCK TABLES `oc_deck_labels` WRITE;
/*!40000 ALTER TABLE `oc_deck_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_deck_stacks`
--

DROP TABLE IF EXISTS `oc_deck_stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_deck_stacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `board_id` bigint(20) NOT NULL,
  `order` bigint(20) DEFAULT NULL,
  `deleted_at` bigint(20) unsigned DEFAULT 0,
  `last_modified` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deck_stacks_board_id_index` (`board_id`),
  KEY `deck_stacks_order_index` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_deck_stacks`
--

LOCK TABLES `oc_deck_stacks` WRITE;
/*!40000 ALTER TABLE `oc_deck_stacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_deck_stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_direct_edit`
--

DROP TABLE IF EXISTS `oc_direct_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_direct_edit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `editor_id` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `share_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `accessed` tinyint(1) DEFAULT 0,
  `file_path` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4D5AFECA5F37A13B` (`token`),
  KEY `direct_edit_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_direct_edit`
--

LOCK TABLES `oc_direct_edit` WRITE;
/*!40000 ALTER TABLE `oc_direct_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_direct_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_directlink`
--

DROP TABLE IF EXISTS `oc_directlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_directlink` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) DEFAULT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `token` varchar(60) DEFAULT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `directlink_token_idx` (`token`),
  KEY `directlink_expiration_idx` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_directlink`
--

LOCK TABLES `oc_directlink` WRITE;
/*!40000 ALTER TABLE `oc_directlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_directlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_applicable`
--

DROP TABLE IF EXISTS `oc_external_applicable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_applicable` (
  `applicable_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`applicable_id`),
  UNIQUE KEY `applicable_type_value_mount` (`type`,`value`,`mount_id`),
  KEY `applicable_mount` (`mount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_applicable`
--

LOCK TABLES `oc_external_applicable` WRITE;
/*!40000 ALTER TABLE `oc_external_applicable` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_applicable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_config`
--

DROP TABLE IF EXISTS `oc_external_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_id` bigint(20) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `config_mount_key` (`mount_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_config`
--

LOCK TABLES `oc_external_config` WRITE;
/*!40000 ALTER TABLE `oc_external_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_mounts`
--

DROP TABLE IF EXISTS `oc_external_mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_mounts` (
  `mount_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_point` varchar(128) NOT NULL,
  `storage_backend` varchar(64) NOT NULL,
  `auth_backend` varchar(64) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 100,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`mount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_mounts`
--

LOCK TABLES `oc_external_mounts` WRITE;
/*!40000 ALTER TABLE `oc_external_mounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_external_options`
--

DROP TABLE IF EXISTS `oc_external_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_external_options` (
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mount_id` bigint(20) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_mount_key` (`mount_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_external_options`
--

LOCK TABLES `oc_external_options` WRITE;
/*!40000 ALTER TABLE `oc_external_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_external_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_federated_reshares`
--

DROP TABLE IF EXISTS `oc_federated_reshares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_federated_reshares` (
  `share_id` bigint(20) NOT NULL,
  `remote_id` varchar(255) DEFAULT '',
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_federated_reshares`
--

LOCK TABLES `oc_federated_reshares` WRITE;
/*!40000 ALTER TABLE `oc_federated_reshares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_federated_reshares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_locks`
--

DROP TABLE IF EXISTS `oc_file_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_file_locks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lock` int(11) NOT NULL DEFAULT 0,
  `key` varchar(64) NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lock_key_index` (`key`),
  KEY `lock_ttl_index` (`ttl`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_locks`
--

LOCK TABLES `oc_file_locks` WRITE;
/*!40000 ALTER TABLE `oc_file_locks` DISABLE KEYS */;
INSERT INTO `oc_file_locks` VALUES (1,0,'files/38d3fc13a505a341da34815c5ccc8b3d',1746540843),(2,0,'files/71635d113240eaa56b640071e3a65010',1746540810),(3,0,'files/f1a212d2a89a447259f0aa32d5026b6b',1746540810),(5,0,'files/618b97176d84eb528b6ec76481f5ca4a',1746540810),(6,0,'files/e764eba954170638109bccadecfa6a77',1746540810),(7,0,'files/c517f830927298d8f2edc9648c77e52c',1746540810),(8,0,'files/5bb4eaf221e735b1b25010e0ab550a56',1746540810),(10,0,'files/7dd1141c24ef8353588d69dbb398ef24',1746540810),(11,0,'files/bb9007df3828e9d8694c3e5f643e003a',1746540810),(12,0,'files/dd30b390114b8d291e9e362a47ab9556',1746540810),(13,0,'files/2cbc7ca147a73d522c3d38349d23f8d2',1746540810),(14,0,'files/bd4cb034cfd2bec33e727681e5439c74',1746540810),(15,0,'files/327513eb26fb2c4c49b3ac59ae5f9f13',1746540810),(16,0,'files/b24f8a247760dc8356a6d0763198355c',1746540810),(17,0,'files/6a2a0fe5f58ccfa29ef48371f098303e',1746540810),(18,0,'files/9f76a0b0d90056febb3e98f79dc3ce25',1746540810),(19,0,'files/5d66cc968f3041e6b6db17c6bf29d506',1746540810),(20,0,'files/6493c474d39c9cb1caad3d5625173bbe',1746540810),(21,0,'files/94ed24c3ace8fcfcd3f378f1961eeaba',1746540810),(22,0,'files/b24fee3b385e6ec892de5e20ae9f214b',1746540810),(23,0,'files/11015605023f1da9859f1a9f4fc63ebd',1746540810),(24,0,'files/0a3b5e23e460ec83c308cf8d359a28e1',1746540810),(25,0,'files/c8fc151f762d335f44ab05ccb9c633ae',1746540810),(26,0,'files/35293403fe54cec5640601bf5fd827b2',1746540810),(27,0,'files/4b977525704b2c2c406e0b06dc93d3e8',1746540810),(28,0,'files/37af0a250fc202ce3520fc42f4cedd49',1746540810),(29,0,'files/f3c7dc27745c89ce90edde2cccc5305a',1746540810),(30,0,'files/5218127401afc046c73208080fd97103',1746540810),(31,0,'files/b1ddde4b0027ac99ab50ca8039b01753',1746540810),(32,0,'files/0a3d9837fcab8376a5fc0cd39021aadc',1746540810),(33,0,'files/e89e38a2e6aec8788f9c2acb0c6394d9',1746540810),(34,0,'files/d7f93e169178cf12e2d72f9d6f2f7631',1746540810),(35,0,'files/ed67ddd54c8c5e073856084bb9448e12',1746540810),(37,0,'files/76f4c73b545e08cea45d806526415381',1746540810),(39,0,'files/b6ef755cfc70b5eb94f5d3aad8ba833d',1746540810),(40,0,'files/2b7e5de9afe8b3f7b056c0ba2a04af46',1746540810),(46,0,'files/bf37f95f1699b3984e9340cc9910c910',1746540810),(50,0,'files/0bcf776322b017bc4dd9e9ec9c78aa73',1746540843),(52,0,'files/a2e44df3165a9dc76712cd27b1d99ccd',1746540844),(53,0,'files/ceba78de00757eda1ec2ef8d34fbf9a6',1746540844),(55,0,'files/72b3c000ec9974f132606e5a1b0dc5fb',1785842471),(56,0,'files/19d073cd82a9d3590dfa0e3567ed8a51',1785842475),(57,0,'files/4f85cb0adafd6245e5cff8b35f1d00db',1746540860),(58,0,'files/fb2b505fcdd5b0d6de9c01f0ac6d5de4',1746540860),(60,0,'files/44d0288ec059c59ca3eddb541acb80f1',1785842289),(61,0,'files/9fc6377206cab0d6095c64d99d90a597',1785842294),(62,0,'files/4554716f065c1cba34b8667dc7c28d54',1785842277),(63,0,'files/af2f5af10e5d3b224f8a27a4e8b2bb66',1785842277),(64,0,'files/e0b3aef0cf8e8cab17e9ce663cd6e9d5',1785842277),(65,0,'files/e74d8cec699b75d029301bafb5ddbb94',1785842277),(66,0,'files/00d303f083a0e12e22aeedf18cfea27a',1785842475),(67,0,'files/9769efc5fcf140cad0029915b9469f61',1785842277),(68,0,'files/ed168414a40d789d87540371310fdb94',1785842277),(69,0,'files/6d10f65f24683999a8e5c8922281a4c4',1785842277),(70,0,'files/fb4c4da26fb6a6065f29da40b4faafdc',1785842289),(73,0,'files/c65292eabfca57a71e4cecd364cb9643',1785842288),(74,0,'files/41cf301eac955552d1cfe8247bf8847f',1785842289),(75,0,'files/2d218e69d0740e4dad2bfcf91ae5eae3',1785842289),(76,0,'files/32aa07c54001b7c7d60acaefdb0092aa',1785842289),(77,0,'files/2fdd7159081f19dc75fe9a7c29451463',1785842289),(78,0,'files/e4330b9c2cac302b5db5aa52d4feb07b',1785842289),(79,0,'files/759d7edc8c91c3dc0e8132a65a577242',1785842289),(80,0,'files/ffc4fcdc9dc66e583214bb1f7b85ff25',1785842289),(81,0,'files/483c8f695bad170cfa33da5fb3a7e813',1785842289),(82,0,'files/699f44400b26d3b04eb45eb0094df683',1785842289),(83,0,'files/4aea9f833ce7d55532655c18b1acfa19',1785842289),(84,0,'files/f21839b70d1520a61853a671d3b4af2d',1785842289),(85,0,'files/318f96ee4cf4a0efcc0ac9fdb2e26a94',1785842289),(86,0,'files/15713c6ea9c7347b84c8bcc59713299e',1785842289),(87,0,'files/ead6c1b97da17459440ba8a7878f518d',1785842289),(88,0,'files/aac3d8e1ddd3d0c291fb48c1832f1a87',1785842289),(89,0,'files/27c4adc8b92af338939c17145a3223eb',1785842289),(90,0,'files/b4389b2bbe5ff2dbdca95e14dc1821f5',1785842289),(91,0,'files/445269bcf5e8a2b98bd7a67f699c5568',1785842288),(92,0,'files/37e1c280bf07ffbf247e9f0dd5a9fa18',1785842289),(93,0,'files/e7688550596c858789b6370d9a79ca26',1785842289),(94,0,'files/b93b1a9954ec8b9528d8ad224ce38545',1785842289),(95,0,'files/42a12b442266d1a6f8f3da00cd068160',1785842289),(96,0,'files/b16b4302165d81e8481755f153b375e1',1785842289),(97,0,'files/8840ca691b2f3880eb749d17ef2d7bcd',1785842289),(98,0,'files/5f714fb7194805f9181f90fb11b988a3',1785842289),(99,0,'files/638875e993aa98fc1eeba02aa2259b81',1785842289),(100,0,'files/31e0f554585eae8b445fbbaae4e3ac87',1785842289),(101,0,'files/a4144274528d0238fb39a9cf74d885c3',1785842294),(102,0,'files/2a3a4844540efd3ece259a51d3b5261e',1785842289),(103,0,'files/3b2f3e80966659c834e8c9715bd7237f',1785842293),(104,0,'files/4e7f1dac2fd755a90ed6e95a5576b5a9',1785842294),(105,0,'files/3f10fe599f706c1ffa614e5d917cf975',1785842289),(106,0,'files/b60fe3417e4146cc72353e58d875a3c8',1785842289),(108,0,'files/cac8a755aaf8c4f9221af0352828d7db',1785842289),(109,0,'files/4888658e4d9eb819bd726399b1616607',1785842289),(142,0,'files/b3f2d63125ba6e3a5b04f0c6aa84a281',1785842289),(143,0,'files/2cee3f87022ed79fc12182546abe29d0',1785842461),(144,0,'files/f87629d75e460ba327d27be3259c46ac',1785842461),(145,0,'files/643aa10371a91df8f4590793b6829155',1785842289),(146,0,'files/ffe4fd4c748c4948d058cd9a08e46adc',1785842289),(147,0,'files/27af711ea6dffb394e61bf87aeda2543',1785842289),(148,0,'files/3a8cf2d60390930ef7dfde9ca84decf0',1785842461),(149,0,'files/ad7cd70a294a0310eea92e73d724307a',1785842289),(150,0,'files/8a2ad5644a642b84179a245a6a3b3fd3',1785842289),(151,0,'files/95de5518ab292e49bbaabd15fc95a337',1785842289),(152,0,'files/54f6853471359ed62e9f092a0e0232a8',1785842289),(153,0,'files/91b068203b894d9d9904f0a29bfa5aa1',1785842289),(154,0,'files/70cfc1940b76e4018e0c16101d7d6968',1785842289),(155,0,'files/d79a27b9ef1a58f2e7981b7e4cfc5139',1785842290),(156,0,'files/6b4f83fce77794f0abd1300242d6c0a5',1785842461),(157,0,'files/69a9c00b8821271a26ff7ed9041f40c0',1785842290),(158,0,'files/4bb3ce2c5a5365fd5ec8116ea256ff85',1785842290),(159,0,'files/8dd674c9169934bf641af6dabb548420',1785842290),(160,0,'files/96982fbf36953ee5467f9500bb3f881b',1785842290),(161,0,'files/e56098ffd29f370d3804b5d9197ba2bc',1785842461),(162,0,'files/5a1c2afb30eceff6b0237afebbb9a4a7',1785842290),(163,0,'files/90038021a52cb95553c3b976b1fc3acc',1785842290),(164,0,'files/51a844d1387facdea0658a01f3a87152',1785842290),(165,0,'files/8e173c7ca8c40c507dff55d9d6c82a15',1785842290),(166,0,'files/5eda49fd0387f5f92c90dd00c9329862',1785842461),(167,0,'files/f12ff006bca60ef0600d076d31f1ed21',1785842290),(168,0,'files/8e07733e06383043da4f7450c72c1942',1785842290),(169,0,'files/5b8057ca9e9520005a655dec57625d12',1785842290),(170,0,'files/c1ec42b948b023b378a8631699e95932',1785842290),(171,0,'files/7e1a8351c704ee5bcbc1ddce18b4d0c1',1785842461),(172,0,'files/28a6ebf80d9c2e28b44a905eee544d12',1785842290),(173,0,'files/a0b2d9a6c758a92952000560fb8705c3',1785842290),(174,0,'files/a321da68cb46bb83b59c8695e8e81581',1785842290),(175,0,'files/c5f8eae6ec8cfaedd761c207eeb9b251',1785842290),(176,0,'files/ead2a4cca46670e1892d25041b553d48',1785842461),(177,0,'files/e796522a92ccca2a1b92345bd8cb1d7f',1785842290),(178,0,'files/b4e495d49361d585375efc4242da75e7',1785842290),(179,0,'files/d0314e64f9234292337f960be176d979',1785842290),(180,0,'files/a4ea0b781d55e3537c4142d2d5893e9e',1785842290),(181,0,'files/39f5771b3543c428f405f28cfb9cd893',1785842461),(182,0,'files/bf5ccc9a818999a93a4a9d4032374f7e',1785842290),(183,0,'files/7163af70b15432fc488b98a85f7ee003',1785842290),(184,0,'files/91ff555de1bec659f21b5aa2f37c7834',1785842290),(185,0,'files/34f7e2cbac56590781b97fa6cf3c1414',1785842475),(186,0,'files/c1275c8e65876f22366bed735c715f33',1785842475),(187,0,'files/7b8f925a0ddb7c04225ffe464333f617',1785842475),(188,0,'files/5ab7903581fe3dd61dceafbf613a42c6',1785842475),(189,0,'files/0e23c10a654ea6b84df600d53ce7e2a9',1785842475),(190,0,'files/8bb990c70c451454ff965b7b2e0524e3',1785842475),(191,0,'files/21daa0ce05b4ce033040fc1f60e483a5',1785842293),(192,0,'files/f8e1c638c7bf2192600f70df0cf05f1c',1785842293),(193,0,'files/64b9cf4da41d6977e6dad5e8e6b589e9',1785842293),(194,0,'files/8a4bb0f566825d4e3e878e26b95631f7',1785842293),(195,0,'files/3eb009bb306655fbb87e362aaace7dee',1785842293),(196,0,'files/09a828f8d7f42dc27b750fb767184479',1785842293),(197,0,'files/544225299a1edf2b962c53fc0b980bbf',1785842475),(198,0,'files/8e5857b6946e5328d721aec339544763',1785842293),(199,0,'files/8453c034b4497472ad97b3fd507c5d72',1785842293),(200,0,'files/941f76cebb1a09addee35cc57a99d68b',1785842293),(201,0,'files/44546cd592ec6d71220ea82f82d9e8ff',1785842293),(202,0,'files/07983f0a19f6529a656cea5aa2f4c160',1785842293),(210,0,'files/db6c33f253760a44ebe717c3ae72390c',1785842293),(211,0,'files/06173f3ccfcaf1d70d543cbb4c44c6a9',1785842293),(212,0,'files/b3fb86e6b9c072492576bd592ddfa60c',1785842293),(213,0,'files/90048e011fb9bd02e2f84bd85c20ab62',1785842293),(214,0,'files/d203e6c7c977ffd4046536f3c68fbeb8',1785842293),(215,0,'files/8a34060299d11cb0cfc4f0986d84f2b4',1785842293),(216,0,'files/880411fd40cd0b4d33c4eafced1d69fb',1785842475),(225,0,'files/94f407ff213b1919653f69aac59b7ac5',1785842293),(226,0,'files/c5721bdf82df9f70a22b0b7f3a5d6ac2',1785842293),(227,0,'files/838d7e36a0a3b5094c55b86953be1730',1785842293),(228,0,'files/fbad408b6a3024e939e7e59511d52586',1785842293),(229,0,'files/f74536674f0c6a9ba7ff411ef0203550',1785842293),(230,0,'files/0e4b667ffb34a96b551b0ff0ba775e6e',1785842293),(243,0,'files/d482ab3b95b1cb66054a9d0219f0958d',1785842293),(244,0,'files/0b5211b5edb1f09b461b349328a87baf',1785842293),(245,0,'files/0683a8cb002f0d38fdfa15ea58f581d3',1785842293),(246,0,'files/de321eb3544d71ee5e4e19b1ce26a6a4',1785842293),(247,0,'files/c4a0e261e7dc2d16823c05a19843958a',1785842293),(248,0,'files/140cf3fca2188d606e6bc014f515ca64',1785842293),(249,0,'files/99639b614d03e792ad974ddec3127f33',1785842475),(254,0,'files/9cc5797ee0a8cf2a4ec2a52aa43b7e1a',1785842461),(257,0,'files/5bdec11ffc0467bec31e83802d6d6da8',1785842461),(260,0,'files/fd50096a4238111b9244d0da652a3e89',1785842461),(264,0,'files/184700c092db1acd721afffd86cfffc1',1785842461),(267,0,'files/abb11aad622e0db0f930163453a285e3',1785842461),(268,0,'files/592bd0a4f410d8c2a33192646c124476',1785842471),(271,0,'files/69f1747c3ff72b0ae4401edff33178c0',1785842475),(272,0,'files/b826b7dfed379a3230b30762b2d9480a',1785842471),(273,0,'files/b05738c5ab3f2b88cefaa0eb4155b7f9',1785842471),(274,0,'files/750952e36bea3bd68971e1163e40be84',1785842471),(275,0,'files/b6644508bc0a11c8bcd5011370300a73',1785842471),(276,0,'files/9d6c4b3dae98dc19bd7dcf02fb39be6c',1785842471),(277,0,'files/0308bb2484e04dc731cb6159055c82b7',1785842471),(278,0,'files/7048a4f27fb83bc4776de5dc22180d3d',1785842471),(279,0,'files/9b8cfc99758511303ca9d0d8d2d9ff2e',1785842471),(280,0,'files/293dbf53281e80c83d15f643909e4414',1785842471),(281,0,'files/4b3c67d2d623a6056f20c4f8a13f79e9',1785842471),(282,0,'files/7bee307e9efcd5397c060ccc91d83697',1785842471),(283,0,'files/689fbab702f430b15e2e31fac8b561fe',1785842471),(284,0,'files/2b6d00cbe2b5e386043c7c129532f92d',1785842474),(285,0,'files/6c535c90dce7bed274b60e6396d9d22a',1785842475),(286,0,'files/7b23459751b23d32dd1549581f06f397',1785842475),(287,0,'files/932fd21528a6073e3a20f24196baa531',1785842471),(288,0,'files/6c0362ede1722d3fd8915595c82c8260',1785842471),(289,0,'files/653b3a7147803a99aed470909cfa39ba',1785842471),(290,0,'files/a45f2abf1b95da89a7d4cac4d81801ae',1785842471),(291,0,'files/e98f37b1a4f0bc4b76abd09fd2eec72f',1785842471),(292,0,'files/aaad9f3f686196617b2a4fb5ea42f0ec',1785842471),(293,0,'files/994332bdb3cbd1fe9294278440b1d443',1785842471),(294,0,'files/ee37d3f57743e19e29fde2324f903a9b',1785842471),(295,0,'files/76133fabb104f73d6d81f1ed216c9d99',1785842471),(296,0,'files/2f339fef7547d4ffea4f5bff4ca550bc',1785842471),(297,0,'files/1d78ebf51fe0ba8a4986183d561afe83',1785842471),(298,0,'files/a5910aca8856ba993d542a98b03b6744',1785842471),(299,0,'files/5ea80984b9d29a76136c41d84738571f',1785842471),(300,0,'files/798e9fe9fc3c05605382c1caef8bc906',1785842471),(301,0,'files/d6d7f50c24be1e4242727558c9c13a7f',1785842471),(302,0,'files/695044d579a3b37504cb6e23b0f70773',1785842471),(303,0,'files/9a8ad683af8297c45081ed4d8a754e26',1785842471),(304,0,'files/5949933921333ebc6a4a09ccbddcf324',1785842471),(306,0,'files/a308372da41699ab0544af891e4627ae',1785842471),(307,0,'files/4eeae1b35316163cc26c91492b34bd41',1785842471),(340,0,'files/a807a5197d94d2ffeee5f5361c5a5b15',1785842473),(341,0,'files/a3afdbe468b0958bf3725135018069f1',1785842473),(342,0,'files/b46f3fc7ef779bd2c0459f5d7c1f0979',1785842473),(343,0,'files/2c32cc569f5d17d9ddab207af0f147d8',1785842473),(344,0,'files/c4f025e267c85aa7d0828508a6ffdcb8',1785842473),(354,0,'files/e324b4e54f2be06912a029b3ba193ca6',1785842474),(355,0,'files/ca27f55fd72457796ece77c6fcaa40b4',1785842474),(356,0,'files/66471eb54edfec46c7f71c1bc9c36632',1785842474),(357,0,'files/f603ec77b5d2c3dc9ea6d0178bbad4b1',1785842474),(358,0,'files/40e23a66a2479a0ea270fc1ac9e681c3',1785842474),(360,0,'files/e693cc24ad693589976400965a83bdec',1785842474),(370,0,'files/8c281bc308ff5358678a8b1af5bd4556',1785842474),(371,0,'files/214b82bff585633ee93da4650ea517e7',1785842474),(372,0,'files/c9093c8104465d93f34dd91a963f777a',1785842474),(373,0,'files/cb5f4813fe0ad31a3323e8bb824d67a5',1785842474),(374,0,'files/51f83fdfbbb42d0e3c52a9ab14f4f336',1785842474),(375,0,'files/84d39ab401d9fdf173205d6303111e1e',1785842475),(376,0,'files/52e33a529179eda5c013645c5f0f5019',1785842475),(391,0,'files/8b55547a93c45732b36417d288de263b',1785842475),(392,0,'files/09edbae55574684f6ca1a6a76a4e17b6',1785842475),(393,0,'files/2ede12d1d518c3d9cf1665a2eb0e4853',1785842475),(394,0,'files/72852c3874d58491e4b68c306e3fc89e',1785842475),(395,0,'files/6aa3ae663d08cffd61708d1c07f742bb',1785842475),(396,0,'files/0d89b1cacacfeb4c2e3cf41396d53c3f',1785842475),(397,0,'files/cd2d8829e25579a3e4c77f755b30d482',1785842475),(412,0,'files/aa520edffde786390bdba978fa2f0efa',1785842475),(413,0,'files/7cd995c52f3659db57bfcb10df6933d6',1785842475),(414,0,'files/eb6288f2576d7b82be891fb2ff829cc3',1785842475),(415,0,'files/f164aa5b5da318bd01e26856045619ee',1785842475),(416,0,'files/1b6a11b7a7d2d38e238006a2978cb640',1785842475),(417,0,'files/a9763d5a7864983e6536837fcb954c47',1785842475),(429,0,'files/992758f842485cd5d0e1fb5c23279f10',1785842475),(430,0,'files/e0bc5c7782a293e094a348f47ebebcce',1785842475),(431,0,'files/4da61ecc89a287c3aed4041be246942d',1785842475),(432,0,'files/ef7b3ccc5ec2aeba0efd1d3b2b25c461',1785842475),(433,0,'files/a04d1dd32e843c114c465c9aa4039b4a',1785842475),(434,0,'files/510ca0226e6a361451ada9e3a9302eca',1785842475),(446,0,'files/d1d9fedbde037ef65ccabc4d977bf60f',1785842475),(447,0,'files/2834a787eadfff75eb01cd7b8c7fccf7',1785842475),(448,0,'files/e9b4c7e43dfc80bde1720872be19131f',1785842475),(449,0,'files/eb1b321a6485d5abd7d2cf174970a3ab',1785842475),(450,0,'files/e5bf0994fdde8667d1cee478ca2b178c',1785842475),(451,0,'files/42f2180db2d97269badab4ac9e6108c9',1785842475);
/*!40000 ALTER TABLE `oc_file_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_metadata`
--

DROP TABLE IF EXISTS `oc_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_file_metadata` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `metadata` longtext NOT NULL COMMENT '(DC2Type:json)',
  PRIMARY KEY (`id`,`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_metadata`
--

LOCK TABLES `oc_file_metadata` WRITE;
/*!40000 ALTER TABLE `oc_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache`
--

DROP TABLE IF EXISTS `oc_filecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_filecache` (
  `fileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage` bigint(20) NOT NULL DEFAULT 0,
  `path` varchar(4000) DEFAULT NULL,
  `path_hash` varchar(32) NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(250) DEFAULT NULL,
  `mimetype` bigint(20) NOT NULL DEFAULT 0,
  `mimepart` bigint(20) NOT NULL DEFAULT 0,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `mtime` bigint(20) NOT NULL DEFAULT 0,
  `storage_mtime` bigint(20) NOT NULL DEFAULT 0,
  `encrypted` int(11) NOT NULL DEFAULT 0,
  `unencrypted_size` bigint(20) NOT NULL DEFAULT 0,
  `etag` varchar(40) DEFAULT NULL,
  `permissions` int(11) DEFAULT 0,
  `checksum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  KEY `fs_id_storage_size` (`fileid`,`storage`,`size`),
  KEY `fs_mtime` (`mtime`),
  KEY `fs_size` (`size`),
  KEY `fs_storage_path_prefix` (`storage`,`path`(64))
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache`
--

LOCK TABLES `oc_filecache` WRITE;
/*!40000 ALTER TABLE `oc_filecache` DISABLE KEYS */;
INSERT INTO `oc_filecache` VALUES (1,1,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,24049432,1746537208,1746537208,0,0,'681a0af88b2f8',23,''),(2,1,'files','45b963397aa40d4a0063e0d85e4fe7a1',1,'files',2,1,24049432,1746537192,1746537192,0,0,'681a0ae8cc71b',31,''),(3,1,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',2,'Nextcloud Manual.pdf',4,3,12764907,1746537191,1746537191,0,0,'a6248f9f221c236218daac9b789c8996',27,''),(4,1,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',2,'Nextcloud intro.mp4',6,5,3963036,1746537191,1746537191,0,0,'97b86d29268d2635b309c683272080b5',27,''),(5,1,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',2,'Nextcloud.png',8,7,50598,1746537191,1746537191,0,0,'41d147ca13a203d1344cfa02969eadde',27,''),(6,1,'files/Templates','530b342d0b8164ff3b4754c2273a453e',2,'Templates',2,1,238269,1746537192,1746537192,0,0,'681a0ae817cd3',31,''),(7,1,'files/Templates/SWOT analysis.whiteboard','3fd0e44b3e6f0e7144442ef6fc71a663',6,'SWOT analysis.whiteboard',9,3,38605,1746537191,1746537191,0,0,'cc0cffa31d39c548aabdf27aa980b435',27,''),(8,1,'files/Templates/Product plan.md','a9fbf58bf31cebb8143f7ad3a5205633',6,'Product plan.md',11,10,573,1746537191,1746537191,0,0,'b7903a03ac50a7224a3e540614c578f5',27,''),(9,1,'files/Templates/Org chart.odg','fd846bc062b158abb99a75a5b33b53e7',6,'Org chart.odg',12,3,13878,1746537191,1746537191,0,0,'10d4baae9e7a1114ad76407f548ef54d',27,''),(10,1,'files/Templates/Business model canvas.odg','6a8f3e02bdf45c8b0671967969393bcb',6,'Business model canvas.odg',12,3,16988,1746537191,1746537191,0,0,'1dc31338be6685e4d3bce1cb6b89967e',27,''),(11,1,'files/Templates/Diagram & table.ods','0a89f154655f6d4a0098bc4e6ca87367',6,'Diagram & table.ods',13,3,13378,1746537191,1746537191,0,0,'b95531ea66c007ff07e69c3217945479',27,''),(12,1,'files/Templates/Simple.odp','a2c90ff606d31419d699b0b437969c61',6,'Simple.odp',14,3,14810,1746537191,1746537191,0,0,'c65fd23cee4a9a59e5451d5aebf63fa9',27,''),(13,1,'files/Templates/Readme.md','71fa2e74ab30f39eed525572ccc3bbec',6,'Readme.md',11,10,554,1746537191,1746537191,0,0,'dd55ba005700ef7cf3db696cb6dd6f5e',27,''),(14,1,'files/Templates/Mindmap.odg','74cff798fc1b9634ee45380599b2a6da',6,'Mindmap.odg',12,3,13653,1746537191,1746537191,0,0,'6d393768b496b208bc45f7876e5f844b',27,''),(15,1,'files/Templates/Impact effort matrix.whiteboard','c5e3b589ec8f9dd6afdebe0ac6feeac8',6,'Impact effort matrix.whiteboard',9,3,52674,1746537191,1746537191,0,0,'a79aaa0e9c9aebc1db307046d4c09cfa',27,''),(16,1,'files/Templates/Invoice.odt','40fdccb51b6c3e3cf20532e06ed5016e',6,'Invoice.odt',15,3,17276,1746537191,1746537191,0,0,'ac74aa37fc737f2a33ae5e06981afab8',27,''),(17,1,'files/Templates/Elegant.odp','f3ec70ed694c0ca215f094b98eb046a7',6,'Elegant.odp',14,3,14316,1746537191,1746537191,0,0,'63f17a204b1ef7d5e6ec6a689b719eaf',27,''),(18,1,'files/Templates/Meeting notes.md','c0279758bb570afdcdbc2471b2f16285',6,'Meeting notes.md',11,10,326,1746537192,1746537192,0,0,'6ec36901cf114ec2b9b25ea52e33cee3',27,''),(19,1,'files/Templates/Expense report.ods','d0a4025621279b95d2f94ff4ec09eab3',6,'Expense report.ods',13,3,13441,1746537192,1746537192,0,0,'35d5ff2e1d29a906adb87df00bf810f9',27,''),(20,1,'files/Templates/Letter.odt','15545ade0e9863c98f3a5cc0fbf2836a',6,'Letter.odt',15,3,15961,1746537192,1746537192,0,0,'022ce854f92378ae2db9fed41de70b14',27,''),(21,1,'files/Templates/Flowchart.odg','832942849155883ceddc6f3cede21867',6,'Flowchart.odg',12,3,11836,1746537192,1746537192,0,0,'b6aafc5e3f2832e0073b918231b7b08d',27,''),(22,1,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',2,'Reasons to use Nextcloud.pdf',4,3,976625,1746537192,1746537192,0,0,'dfc1ff507300b6b139d86b9730201c25',27,''),(23,1,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',2,'Documents',2,1,399534,1746537192,1746537192,0,0,'681a0ae869973',31,''),(24,1,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',23,'Readme.md',11,10,136,1746537192,1746537192,0,0,'53a16d05d9433280b07b84fab63f3e44',27,''),(25,1,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',23,'Nextcloud flyer.pdf',4,3,374008,1746537192,1746537192,0,0,'f28776fee4d563155ec92ec1f10dd2c3',27,''),(26,1,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',23,'Welcome to Nextcloud Hub.docx',16,3,24295,1746537192,1746537192,0,0,'013c271fbf5876a388ea11a315303e84',27,''),(27,1,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',23,'Example.md',11,10,1095,1746537192,1746537192,0,0,'761ab6947756e2f6893e629b90d3029e',27,''),(28,1,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',2,'Photos',2,1,5656463,1746537192,1746537192,0,0,'681a0ae8cc71b',31,''),(29,1,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',28,'Nextcloud community.jpg',17,7,797325,1746537192,1746537192,0,0,'0f684b22f11c06a64f1b90c2de0d3622',27,''),(30,1,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',28,'Readme.md',11,10,150,1746537192,1746537192,0,0,'995420ebb7ee58a3b3726ed7dc339037',27,''),(31,1,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',28,'Frog.jpg',17,7,457744,1746537192,1746537192,0,0,'6ff94394f290bdddd7ab756b01feb605',27,''),(32,1,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',28,'Gorilla.jpg',17,7,474653,1746537192,1746537192,0,0,'0a057d2534bccb6389ffb97cecf0cd92',27,''),(33,1,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',28,'Toucan.jpg',17,7,167989,1746537192,1746537192,0,0,'87db72bae479594f028991269f6270c3',27,''),(34,1,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',28,'Steps.jpg',17,7,567689,1746537192,1746537192,0,0,'be950582b575782e5845b539130bb109',27,''),(35,1,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',28,'Vineyard.jpg',17,7,427030,1746537192,1746537192,0,0,'d1f764ff11cee3b89b926dfeb16b399a',27,''),(36,1,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',28,'Birdie.jpg',17,7,593508,1746537192,1746537192,0,0,'32b2cbf4069e1d439253f95999747bf4',27,''),(37,1,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',28,'Library.jpg',17,7,2170375,1746537192,1746537192,0,0,'3e06483e891bbb4394cea16fb146e0f6',27,''),(38,2,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1746537243,1746537243,0,0,'681a0b1b77a06',23,''),(39,2,'appdata_oc2g02diujsz','52ef96f2dc6c00ad51ea5a099eb19876',38,'appdata_oc2g02diujsz',2,1,0,1746537379,1746537379,0,0,'681a0aea96b51',31,''),(40,2,'appdata_oc2g02diujsz/js','22d915831b4d2d46a7d49c17f50f38e3',39,'js',2,1,0,1746537305,1746537305,0,0,'681a0aea9eada',31,''),(41,2,'appdata_oc2g02diujsz/js/core','4a9195ed34c2a6d16d675cc671c5189c',40,'core',2,1,0,1746537194,1746537194,0,0,'681a0aeaa2a17',31,''),(42,2,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js','48c513b9f9a78a43ea9079e202ff53b3',41,'merged-template-prepend.js',18,3,11942,1746537194,1746537194,0,0,'4dad45f3c60f5ae67d3d5cec225e5c78',27,''),(43,2,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js.deps','e6f77688a738052365033db2281f1a66',41,'merged-template-prepend.js.deps',9,3,246,1746537194,1746537194,0,0,'c21224b32358674d66b31558631e304e',27,''),(44,2,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js.gzip','7f7e74ed1e6c8624b128f91009507927',41,'merged-template-prepend.js.gzip',19,3,3054,1746537194,1746537194,0,0,'ccc4a1fd26f3efdda9fda01ef8f7ef51',27,''),(45,1,'cache','0fea6a13c52b4d4725368f24b045ca84',1,'cache',2,1,0,1746537208,1746537208,0,0,'681a0af884e7d',31,''),(46,2,'appdata_oc2g02diujsz/css','071abe9537111f64b26bb65b0c0e6d4c',39,'css',2,1,0,1746537352,1746537352,0,0,'681a0af8bda63',31,''),(47,2,'appdata_oc2g02diujsz/css/icons','7b4bde147dba4ee23fd1f2619ab4cfcb',46,'icons',2,1,0,1746537209,1746537209,0,0,'681a0af8c4cf3',31,''),(48,2,'appdata_oc2g02diujsz/css/core','c5d8d00270b0ff902bd68b43a778d78d',46,'core',2,1,0,1746537209,1746537209,0,0,'681a0af8d54a9',31,''),(49,2,'appdata_oc2g02diujsz/css/icons/icons-vars.css','1f08b8bb4a6bfa4ae9e7eb2cc5023765',47,'icons-vars.css',20,10,226434,1746537352,1746537352,0,0,'049d4853fa72970886f2b9cda23a3a8a',27,''),(50,2,'appdata_oc2g02diujsz/css/icons/icons-list.template','7c373332246e16b28e6ecd4a072d83ab',47,'icons-list.template',9,3,20393,1746537352,1746537352,0,0,'529f1104cd5984b97af19700a1d01b86',27,''),(51,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css','912cc167ee8d0996a3f4e1f8c77964ae',48,'7fcc-235b-server.css',20,10,139049,1746537209,1746537209,0,0,'aa9de8348967fb5f28c6c377340629a0',27,''),(52,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css.deps','a14887ddc50ea9780d7dddf7235dfd91',48,'7fcc-235b-server.css.deps',9,3,759,1746537209,1746537209,0,0,'e116b69c48b7eea59173ad075810eba2',27,''),(53,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css.gzip','5c9d54f0d732602047ccb0e84978e90c',48,'7fcc-235b-server.css.gzip',19,3,19855,1746537209,1746537209,0,0,'6414c1b84fc753f4426fc834e55b57f2',27,''),(54,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css','6cf5f09bece8170e2831eef981a8a054',48,'7fcc-235b-css-variables.css',20,10,1820,1746537209,1746537209,0,0,'88d5ee0b8490e9ae6f0787e930d83bf3',27,''),(55,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css.deps','e0e1c54ccb751bc4413dbb183aec26d5',48,'7fcc-235b-css-variables.css.deps',9,3,176,1746537209,1746537209,0,0,'5f99b3e214953dd04a40dee7d2399c0e',27,''),(56,2,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css.gzip','9f373de7b62668096e541519a260e007',48,'7fcc-235b-css-variables.css.gzip',19,3,692,1746537209,1746537209,0,0,'66f5694d0d44c198fd7d3cb53359345a',27,''),(57,2,'appdata_oc2g02diujsz/css/dashboard','58bbac5519a8dcea8407561ad093648d',46,'dashboard',2,1,0,1746537209,1746537209,0,0,'681a0af9209ae',31,''),(58,2,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css','6eaca6edcb43bcd9eea351b9a67dc6c7',57,'1c83-235b-dashboard.css',20,10,2050,1746537209,1746537209,0,0,'b48ca3f051e85fd2c7b54a832ce7cab3',27,''),(59,2,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css.deps','75b76e724179e178c6a0895f11c00f79',57,'1c83-235b-dashboard.css.deps',9,3,183,1746537209,1746537209,0,0,'0a130e9d574518d72022204c912869e8',27,''),(60,2,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css.gzip','cff4420e83db4edb5e52a1d07c2e273d',57,'1c83-235b-dashboard.css.gzip',19,3,594,1746537209,1746537209,0,0,'98be0d32ad0a5ba6458688f8a82e5ba7',27,''),(61,2,'appdata_oc2g02diujsz/css/activity','1325e6e4ecea1a8cb7627331f8a3d48a',46,'activity',2,1,0,1746537209,1746537209,0,0,'681a0af92fd15',31,''),(62,2,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css','f03ed3e6f682557b473ea613e0a5463f',61,'6e52-235b-style.css',20,10,3353,1746537209,1746537209,0,0,'7385f575dad7e97590d5260b349d845f',27,''),(63,2,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css.deps','569cfd50fffcb57465adea1711210015',61,'6e52-235b-style.css.deps',9,3,178,1746537209,1746537209,0,0,'318a3573782b30e40aa3e18dc5f777ba',27,''),(64,2,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css.gzip','f5f9e84274afdceea22b41f31e2cf867',61,'6e52-235b-style.css.gzip',19,3,1108,1746537209,1746537209,0,0,'abfbb6895474534bdf9c99d360a72d06',27,''),(65,2,'appdata_oc2g02diujsz/css/text','d42a199a746c39cd47cf8ff369fd3a76',46,'text',2,1,0,1746537209,1746537209,0,0,'681a0af9489df',31,''),(66,2,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css','8dd37c5c485d5488a5afb7ed0d2ddff3',65,'8931-235b-icons.css',20,10,5861,1746537209,1746537209,0,0,'b5477a1893b4c9e485ad50c6c8601fa2',27,''),(67,2,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css.deps','ee79003bd2647c31c2548f89cf7063af',65,'8931-235b-icons.css.deps',9,3,174,1746537209,1746537209,0,0,'2370f4e1dc95fec8e3fdd3abe166f884',27,''),(68,2,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css.gzip','e76f3dbd7fc63c13909cb4a5615e7865',65,'8931-235b-icons.css.gzip',19,3,832,1746537209,1746537209,0,0,'66d57fa02b85abcc87a381ebf3dfc432',27,''),(69,2,'appdata_oc2g02diujsz/css/notifications','adc1801912516e34d43026c931c0104e',46,'notifications',2,1,0,1746537209,1746537209,0,0,'681a0af960a89',31,''),(70,2,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css','e50259b82be56d65c0c44bd4940747bb',69,'ae3e-235b-styles.css',20,10,5377,1746537209,1746537209,0,0,'ddfb43ccbd34a180ebdd4e4d38fe5160',27,''),(71,2,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css.deps','f113f46878f2db70a5414759fe56a586',69,'ae3e-235b-styles.css.deps',9,3,184,1746537209,1746537209,0,0,'214a85efd82d7238c34ffd8da4ce8c23',27,''),(72,2,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css.gzip','aed41b7bff5b15981df76c230e1e4ad1',69,'ae3e-235b-styles.css.gzip',19,3,1176,1746537209,1746537209,0,0,'69a569beb8775909d3840b992498d8d6',27,''),(73,2,'appdata_oc2g02diujsz/css/user_status','0484e40e3d96eb90993c62a1daca2715',46,'user_status',2,1,0,1746537209,1746537209,0,0,'681a0af9804c3',31,''),(74,2,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css','692204ec154b4a996e861f03f6ecca72',73,'1bf6-235b-user-status-menu.css',20,10,999,1746537209,1746537209,0,0,'ea08f01ae97bae63062e1618eff692c4',27,''),(75,2,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css.deps','fa5fdd60583d18d61238d4df8b7091a5',73,'1bf6-235b-user-status-menu.css.deps',9,3,192,1746537209,1746537209,0,0,'34100a3de9af45a405c0fade56e4bb8e',27,''),(76,2,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css.gzip','3a290aa7aa228ca4412462089644cbef',73,'1bf6-235b-user-status-menu.css.gzip',19,3,232,1746537209,1746537209,0,0,'df3fa74187d72f027c8a40e50c11d028',27,''),(77,2,'appdata_oc2g02diujsz/preview','0163211e22d3a82aa32fc48c2d5211c7',39,'preview',2,1,-1,1746537210,1746537210,0,0,'681a0afa7aeff',31,''),(78,2,'appdata_oc2g02diujsz/preview/1','b2b571c70cb7cc9380217f3c53478871',77,'1',2,1,-1,1746537210,1746537210,0,0,'681a0afa81c83',31,''),(79,2,'appdata_oc2g02diujsz/theming','763ca9db6b9a2dcb82c8c44e98b9eec1',39,'theming',2,1,0,1746537210,1746537210,0,0,'681a0afa89aeb',31,''),(80,2,'appdata_oc2g02diujsz/theming/0','ad1db720282b3fc29928da40b1f8bde3',79,'0',2,1,0,1746537210,1746537210,0,0,'681a0afa8ffc1',31,''),(81,2,'appdata_oc2g02diujsz/preview/1/f','94de0e456cc46bbe76482c17d437414c',78,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa961d5',31,''),(82,2,'appdata_oc2g02diujsz/preview/1/f/0','bc8238b7271f4fd1b1d5d06314702c0f',81,'0',2,1,-1,1746537210,1746537210,0,0,'681a0afa93940',31,''),(83,2,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_application-pdf.svg','2e7afe9769ad52ff7af49e7715474634',80,'icon-core-filetypes_application-pdf.svg',21,7,1054,1746537210,1746537210,0,0,'f785f7059194a30729acb8aa7a9ce1b5',27,''),(84,2,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_x-office-drawing.svg','1e180f71137928f4fc60137b2831e497',80,'icon-core-filetypes_x-office-drawing.svg',21,7,271,1746537210,1746537210,0,0,'7622bedab5af040df2102d5a1ca67140',27,''),(85,2,'appdata_oc2g02diujsz/preview/1/f/0/e','b2fcb1aadd854ded6758970ff7d92b8c',82,'e',2,1,-1,1746537210,1746537210,0,0,'681a0afa8df0a',31,''),(86,2,'appdata_oc2g02diujsz/preview/6','f9f95644f807a45436a82e3fc7f66fb0',77,'6',2,1,-1,1746537210,1746537210,0,0,'681a0afa9e42f',31,''),(87,2,'appdata_oc2g02diujsz/preview/9','025a211aa8eaf4359bda11684e33b4d2',77,'9',2,1,-1,1746537210,1746537210,0,0,'681a0afa9fddf',31,''),(88,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3','26d9d783cbadb2c8ee8d569339fa4dd8',85,'3',2,1,-1,1746537210,1746537210,0,0,'681a0afa8a116',31,''),(89,2,'appdata_oc2g02diujsz/preview/6/f','13b13aa885a19097e5f9a2a63793f3b2',86,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa99b4b',31,''),(90,2,'appdata_oc2g02diujsz/preview/9/8','fffbb94e0b1af26ce0ca170b871ff6ad',87,'8',2,1,-1,1746537210,1746537210,0,0,'681a0afa9b61e',31,''),(91,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d','8a3107329bdb45ecea88249680c0a166',88,'d',2,1,-1,1746537210,1746537210,0,0,'681a0afa87741',31,''),(92,2,'appdata_oc2g02diujsz/preview/3','1a3aa98256a2d9d744e716ed0198b216',77,'3',2,1,-1,1746537210,1746537210,0,0,'681a0afaa3793',31,''),(93,2,'appdata_oc2g02diujsz/preview/6/f/4','7644e951a39211ef1ef86ee21626ee4b',89,'4',2,1,-1,1746537210,1746537210,0,0,'681a0afa96acb',31,''),(94,2,'appdata_oc2g02diujsz/preview/9/8/f','f94c63cd02dfdb550877a171f0d899c0',90,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa98b81',31,''),(95,2,'appdata_oc2g02diujsz/preview/3/c','e9bd4a636e821ba8542ab23dfdf7d8a6',92,'c',2,1,-1,1746537210,1746537210,0,0,'681a0afaa0223',31,''),(96,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a','22a4bbc4f69c9b7bb43697a0105ee9ec',91,'a',2,1,-1,1746537210,1746537210,0,0,'681a0afa8312f',31,''),(97,2,'appdata_oc2g02diujsz/preview/6/f/4/9','aeebcf02d06c325de9245b816ab5f68c',93,'9',2,1,-1,1746537210,1746537210,0,0,'681a0afa9059f',31,''),(98,2,'appdata_oc2g02diujsz/preview/9/8/f/1','791a75adf5f75d39e7216411c5182716',94,'1',2,1,-1,1746537210,1746537210,0,0,'681a0afa957c5',31,''),(99,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2','b9db7339b82c5f1913f8c9dacf209efc',97,'2',2,1,-1,1746537210,1746537210,0,0,'681a0afa8c5e5',31,''),(100,2,'appdata_oc2g02diujsz/preview/3/c/5','4ad4bbe4efa1f0f39650e405ca488ac2',95,'5',2,1,-1,1746537210,1746537210,0,0,'681a0afa9b3ee',31,''),(101,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3','76360024f44cc115bb50f15b100de142',98,'3',2,1,-1,1746537210,1746537210,0,0,'681a0afa905ab',31,''),(102,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a/19','5d67ae79a819649e42b2c146c4934ce1',96,'19',2,1,0,1746537210,1746537210,0,0,'681a0afa81d2a',31,''),(103,2,'appdata_oc2g02diujsz/preview/3/c/5/9','0ec1543a369d3bd8329b2f48365eceac',100,'9',2,1,-1,1746537210,1746537210,0,0,'681a0afa98c84',31,''),(104,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2','6106a2820bd20f50a924eb1f1009789d',99,'2',2,1,-1,1746537210,1746537210,0,0,'681a0afa89129',31,''),(105,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7','aff5aa3aeb9f7af49c3394037592adab',101,'7',2,1,-1,1746537210,1746537210,0,0,'681a0afa8c709',31,''),(106,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0','1637c033f0ac14b5c6f5a43dea40530a',105,'0',2,1,-1,1746537210,1746537210,0,0,'681a0afa8843d',31,''),(107,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d','9d3359349463e6229b4546d0a32e1e2f',103,'d',2,1,-1,1746537210,1746537210,0,0,'681a0afa961dc',31,''),(108,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f','f51cee41163c1ad1279220ef6c8c4b47',104,'f',2,1,-1,1746537210,1746537210,0,0,'681a0afa86c34',31,''),(109,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0/20','191061539b8d63bc46e857853d3bca92',106,'20',2,1,0,1746537210,1746537210,0,0,'681a0afa8718a',31,''),(110,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c','442512c283235d120dfebd0101bfa0df',107,'c',2,1,-1,1746537210,1746537210,0,0,'681a0afa905a7',31,''),(111,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f/18','7e3591222fdc9318aa33d6735e6a0d2f',108,'18',2,1,0,1746537211,1746537211,0,0,'681a0afa83640',31,''),(112,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0','96cd94a3f5173fb62df8721b14d9faae',110,'0',2,1,-1,1746537210,1746537210,0,0,'681a0afa8d8a6',31,''),(113,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0/21','e20cb0fc79d58072a98e8c6a684963ef',112,'21',2,1,0,1746537210,1746537210,0,0,'681a0afa8b1c3',31,''),(114,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0/20/181-256-max.png','663300af3ead3e9cb323bfc201d74444',109,'181-256-max.png',8,7,4052,1746537210,1746537210,0,0,'0776a75a81c9683b611c8a29bed32523',27,''),(115,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a/19/236-255-max.png','ed45488941049640fac4552f1f86f6a1',102,'236-255-max.png',8,7,4699,1746537210,1746537210,0,0,'0601c8bf5013c4180efaa0b6acc354d3',27,''),(116,2,'appdata_oc2g02diujsz/preview/9/8/f/1/3/7/0/20/181-181-crop.png','c58423571b9b45506ad9e84c0a74f201',109,'181-181-crop.png',8,7,8626,1746537210,1746537210,0,0,'26208aedc446a74959475448a1190c4c',27,''),(117,2,'appdata_oc2g02diujsz/preview/1/f/0/e/3/d/a/19/236-236-crop.png','618122c1cd8ddaa828957b4f6e1e8b6e',102,'236-236-crop.png',8,7,14704,1746537210,1746537210,0,0,'14bda03273d7d5a7f23dc34027b673e6',27,''),(118,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0/21/181-256-max.png','bebfe567c997e6ad3f9bf1160c853a47',113,'181-256-max.png',8,7,2564,1746537210,1746537210,0,0,'7342349890e542d614cef958fa4f5128',27,''),(119,2,'appdata_oc2g02diujsz/preview/3/c/5/9/d/c/0/21/181-181-crop.png','30e6bea2ea6c9bdefb3a2e80c0242a93',113,'181-181-crop.png',8,7,5219,1746537210,1746537210,0,0,'cc9bfab3d980342d3db60f6d09fb0bb5',27,''),(120,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f/18/4096-4096-max.png','16b093b52606c449dfedd6441cb78855',111,'4096-4096-max.png',8,7,69461,1746537210,1746537210,0,0,'6013d45433fa0a6742f838d5b999947a',27,''),(121,2,'appdata_oc2g02diujsz/preview/6/f/4/9/2/2/f/18/256-256-crop.png','7660a59fa5378b26ba59930f45d21320',111,'256-256-crop.png',8,7,12242,1746537211,1746537211,0,0,'87291d80a626719bc8101a6c88171b0e',27,''),(122,2,'appdata_oc2g02diujsz/css/settings','c072d18480f5e488c98f7c9c385b4d43',46,'settings',2,1,0,1746537227,1746537227,0,0,'681a0b0b48fd8',31,''),(123,2,'appdata_oc2g02diujsz/css/settings/ca9f-235b-settings.css','b891f6f7d0edcde62c044d0dcb64f34b',122,'ca9f-235b-settings.css',20,10,33292,1746537227,1746537227,0,0,'9f7c93dbaf27a4d169faec36afb7ecfa',27,''),(124,2,'appdata_oc2g02diujsz/css/settings/ca9f-235b-settings.css.deps','9e7a0feb8b7e0c92b288e1a4a9f8665f',122,'ca9f-235b-settings.css.deps',9,3,181,1746537227,1746537227,0,0,'ac684b4406d655bddef17d9f3c88ba4e',27,''),(125,2,'appdata_oc2g02diujsz/css/settings/ca9f-235b-settings.css.gzip','72236520aaa3787f1213f58fe5b7e284',122,'ca9f-235b-settings.css.gzip',19,3,6136,1746537227,1746537227,0,0,'52c00a999ee12ab8a4175653e5835b92',27,''),(126,2,'appdata_oc2g02diujsz/avatar','b663f67947cabc895a0fbd40f4c72a89',39,'avatar',2,1,0,1746537260,1746537260,0,0,'681a0b1c1dced',31,''),(127,2,'appdata_oc2g02diujsz/avatar/alice','c5a7b19f435e8b73e552073d2d1dd871',126,'alice',2,1,0,1746537244,1746537244,0,0,'681a0b1c27049',31,''),(130,2,'appdata_oc2g02diujsz/avatar/alice/avatar.png','596d73d769d6ecf2c4896b517ce89e6d',127,'avatar.png',8,7,15884,1746537244,1746537244,0,0,'594d2ca5d73f4cd6d2df36079e8857a4',27,''),(131,2,'appdata_oc2g02diujsz/avatar/alice/generated','7a990bf2e4d1db4902ea32e37d171fcb',127,'generated',9,3,0,1746537244,1746537244,0,0,'ecfea3385a57a9ac14e216dbe5104a2b',27,''),(132,3,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,24049432,1785838871,1785838870,0,0,'6a71bd178552c',23,''),(133,2,'appdata_oc2g02diujsz/avatar/bob','78ea10a20d5c38d936f68953191ed0c3',126,'bob',2,1,0,1746537260,1746537260,0,0,'681a0b2c66dee',31,''),(136,2,'appdata_oc2g02diujsz/avatar/bob/avatar.png','24036d5719ecbd30e1ee434ad8b5cee3',133,'avatar.png',8,7,13943,1746537260,1746537260,0,0,'a767d886c2b000c58ff0a5773e37f2d9',27,''),(137,2,'appdata_oc2g02diujsz/avatar/bob/generated','5fa22c1dbaa9ba8e54ce7e977583fdb2',133,'generated',9,3,0,1746537260,1746537260,0,0,'74c5a001eb23b5aed322d1339e5da16e',27,''),(138,4,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,24049432,1785838689,1785838688,0,0,'6a71bc612c57d',23,''),(139,2,'appdata_oc2g02diujsz/appstore','58a0c6bb85894944b6601ecc08b730ca',39,'appstore',2,1,0,1746537294,1746537294,0,0,'681a0b4c99d9c',31,''),(140,2,'appdata_oc2g02diujsz/appstore/apps.json','4bd243d6f4647b525fbe407f77d6a861',139,'apps.json',23,3,2234154,1746537293,1746537293,0,0,'3bee5fd945a150abb208593f0405f556',27,''),(141,2,'appdata_oc2g02diujsz/appstore/categories.json','0a1c3fb56872190ae0fe4ca4bc540c20',139,'categories.json',23,3,164215,1746537294,1746537294,0,0,'ca1f8e27ac9688cfeaae1494c49427d4',27,''),(142,2,'appdata_oc2g02diujsz/js/files','aff6601e13325877edd96bba26d41dc2',40,'files',2,1,0,1746537305,1746537305,0,0,'681a0b5912c2c',31,''),(143,2,'appdata_oc2g02diujsz/js/files/merged-index.js','4bfac9394ff7e158f9a90a68c68366a3',142,'merged-index.js',18,3,421868,1746537305,1746537305,0,0,'40289ae7913f4cd34d5436ea7ac89c8b',27,''),(144,2,'appdata_oc2g02diujsz/js/files/merged-index.js.deps','4dd4fa14024df7db46fb4655d01e6b05',142,'merged-index.js.deps',9,3,2024,1746537305,1746537305,0,0,'9e2e361f00d11d5ba66e2ee79aa34bba',27,''),(145,2,'appdata_oc2g02diujsz/js/files/merged-index.js.gzip','54ea325bdf9aca9f45cb0ba8255deb0f',142,'merged-index.js.gzip',19,3,95539,1746537305,1746537305,0,0,'b88e017609c3a02109a033b88d95a89d',27,''),(146,2,'appdata_oc2g02diujsz/css/files','bdd7faab635688b26a80ceae5577db70',46,'files',2,1,0,1746537305,1746537305,0,0,'681a0b5925bff',31,''),(147,2,'appdata_oc2g02diujsz/css/files/f244-235b-merged.css','542521f10ea5c0c16eb73c6cab8f05d6',146,'f244-235b-merged.css',20,10,30015,1746537305,1746537305,0,0,'38b48ec563078d72d2a5689013475970',27,''),(148,2,'appdata_oc2g02diujsz/css/files/f244-235b-merged.css.deps','b0d47a22409e02b2bf5c31a2fdfb66b0',146,'f244-235b-merged.css.deps',9,3,480,1746537305,1746537305,0,0,'d46882fb8656cca3f78b62e8faa7d06b',27,''),(149,2,'appdata_oc2g02diujsz/css/files/f244-235b-merged.css.gzip','912880bbb982991f339c23e089e20666',146,'f244-235b-merged.css.gzip',19,3,5872,1746537305,1746537305,0,0,'802628e223ed33cc4c76b72f0108cf01',27,''),(150,2,'appdata_oc2g02diujsz/css/files_sharing','c0bb5cd52df41f3bed1ad106854382dc',46,'files_sharing',2,1,0,1746537305,1746537305,0,0,'681a0b5941f63',31,''),(151,2,'appdata_oc2g02diujsz/css/files_sharing/9b08-235b-icons.css','0b8ad615b354421230386dc0da0510dc',150,'9b08-235b-icons.css',20,10,174,1746537305,1746537305,0,0,'8af87aa098ff4e488068dc43ff228119',27,''),(152,2,'appdata_oc2g02diujsz/css/files_sharing/9b08-235b-icons.css.deps','ebed97c6fbdb238663c88f3ec5d05ba7',150,'9b08-235b-icons.css.deps',9,3,183,1746537305,1746537305,0,0,'6db7e30b474fb0f55d3efe1377897ae4',27,''),(153,2,'appdata_oc2g02diujsz/css/files_sharing/9b08-235b-icons.css.gzip','a232788388d59c9454b85f68851667b1',150,'9b08-235b-icons.css.gzip',19,3,102,1746537305,1746537305,0,0,'df03864bc07e52a4bfb34b810f3355e8',27,''),(154,2,'appdata_oc2g02diujsz/css/contacts','598887234d72fc1d2c6ba6a11d1bf858',46,'contacts',2,1,0,1746537352,1746537352,0,0,'681a0b88754c3',31,''),(155,2,'appdata_oc2g02diujsz/css/contacts/5441-235b-icons.css','ea08672252804ade4cea5760edcf5a35',154,'5441-235b-icons.css',20,10,3672,1746537352,1746537352,0,0,'0db44ae1eb458708698dd06d388fbf94',27,''),(156,2,'appdata_oc2g02diujsz/css/contacts/5441-235b-icons.css.deps','1f91b92adc7915fc35bf97b8c28ecc58',154,'5441-235b-icons.css.deps',9,3,185,1746537352,1746537352,0,0,'f16b61e9d6e042baca7b6adc53e997a1',27,''),(157,2,'appdata_oc2g02diujsz/css/contacts/5441-235b-icons.css.gzip','4fd1230909d23d1b3398aa401830b930',154,'5441-235b-icons.css.gzip',19,3,542,1746537352,1746537352,0,0,'c362629c1da9a6279df29cc28fbbed95',27,''),(158,2,'appdata_oc2g02diujsz/css/deck','667d45d49f5b5d255bcbb3ab7cedfc40',46,'deck',2,1,0,1746537352,1746537352,0,0,'681a0b888df0a',31,''),(159,2,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css','7270b47478801aeb9f228b6ba76e1b7d',158,'5c34-235b-deck.css',20,10,136,1746537352,1746537352,0,0,'a5669e85fdc8bdd66b3fbf9bdd2f538a',27,''),(160,2,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css.deps','2a4300e416be9bcbb51be4bc53f51004',158,'5c34-235b-deck.css.deps',9,3,180,1746537352,1746537352,0,0,'8afdc821907627303a4e1c50e12d5e67',27,''),(161,2,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css.gzip','b58466197ae987ee63528efb50174125',158,'5c34-235b-deck.css.gzip',19,3,84,1746537352,1746537352,0,0,'533b0fee7bb431f0e2cda6e949647173',27,''),(162,2,'appdata_oc2g02diujsz/external','b524cc2fb6fc17a7d0ecf42e267bd32e',39,'external',2,1,0,1746537379,1746537379,0,0,'681a0ba394c08',31,''),(163,2,'appdata_oc2g02diujsz/external/icons','45662671132104e65a3d9667e9d23aac',162,'icons',2,1,0,1746537379,1746537379,0,0,'681a0ba39c750',31,''),(164,2,'appdata_oc2g02diujsz/external/icons/external.svg','0fa6d8b7eb01c4401baf90e278ee7fef',163,'external.svg',21,7,1992,1746537379,1746537379,0,0,'439990e2d0395a8532d34a37983fe030',27,''),(165,2,'appdata_oc2g02diujsz/external/icons/external-dark.svg','3703a6334c03ee98c9924a03f40d7e39',163,'external-dark.svg',21,7,1992,1746537379,1746537379,0,0,'efb182b5fe5332eb5692841c43ddbac1',27,''),(166,2,'appdata_oc2g02diujsz/external/icons/settings.svg','0a3b27bbe04325b84337b120f02149e6',163,'settings.svg',21,7,1992,1746537379,1746537379,0,0,'7cc5c72f214b340ae177db2f32ffe926',27,''),(167,5,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,-1,1746537371,1746537371,0,0,'6a71bc55d7738',23,''),(168,5,'appdata_oc2g02diujsz','52ef96f2dc6c00ad51ea5a099eb19876',167,'appdata_oc2g02diujsz',2,1,-1,1746537379,1746537379,0,0,'6a71bc55d7131',31,''),(169,5,'appdata_oc2g02diujsz/js','22d915831b4d2d46a7d49c17f50f38e3',168,'js',2,1,-1,1746537305,1746537305,0,0,'6a71bc55d6ae6',31,''),(170,5,'appdata_oc2g02diujsz/js/core','4a9195ed34c2a6d16d675cc671c5189c',169,'core',2,1,15242,1746537194,1746537194,0,0,'6a71bc55d63fc',31,''),(171,5,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js.gzip','7f7e74ed1e6c8624b128f91009507927',170,'merged-template-prepend.js.gzip',19,3,3054,1785838677,1785838677,0,0,'3ec7eefdcc63902abfba25669f1ca6fe',27,''),(172,5,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js.deps','e6f77688a738052365033db2281f1a66',170,'merged-template-prepend.js.deps',9,3,266,1785838677,1785838677,0,0,'1a4ff6826afa51b98be510b6c70cd53b',27,''),(173,5,'appdata_oc2g02diujsz/js/core/merged-template-prepend.js','48c513b9f9a78a43ea9079e202ff53b3',170,'merged-template-prepend.js',18,3,11942,1785838677,1785838677,0,0,'d182ad5b72edcac1a448541abf221005',27,''),(174,4,'cache','0fea6a13c52b4d4725368f24b045ca84',138,'cache',2,1,0,1785838688,1785838688,0,0,'6a71bc6019573',31,''),(175,4,'files','45b963397aa40d4a0063e0d85e4fe7a1',138,'files',2,1,24049432,1785838689,1785838689,0,0,'6a71bc612c57d',31,''),(176,4,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',175,'Nextcloud intro.mp4',6,5,3963036,1785838688,1785838688,0,0,'97980938f3b76cf121c47e78c6d5bd6e',27,''),(177,4,'files/Templates','530b342d0b8164ff3b4754c2273a453e',175,'Templates',2,1,238269,1785838688,1785838688,0,0,'6a71bc60a595e',31,''),(178,4,'files/Templates/Flowchart.odg','832942849155883ceddc6f3cede21867',177,'Flowchart.odg',12,3,11836,1785838688,1785838688,0,0,'06e485e9710d44c864bbdc249193b0b8',27,''),(179,4,'files/Templates/Mindmap.odg','74cff798fc1b9634ee45380599b2a6da',177,'Mindmap.odg',12,3,13653,1785838688,1785838688,0,0,'97252c1d3ddf5882bc69e3791213e05a',27,''),(180,4,'files/Templates/Org chart.odg','fd846bc062b158abb99a75a5b33b53e7',177,'Org chart.odg',12,3,13878,1785838688,1785838688,0,0,'eb5fa33801e5e1c5fe50e4660997c95e',27,''),(181,4,'files/Templates/Letter.odt','15545ade0e9863c98f3a5cc0fbf2836a',177,'Letter.odt',15,3,15961,1785838688,1785838688,0,0,'3af4f2440d915c177499a60a8be3a575',27,''),(182,4,'files/Templates/SWOT analysis.whiteboard','3fd0e44b3e6f0e7144442ef6fc71a663',177,'SWOT analysis.whiteboard',9,3,38605,1785838688,1785838688,0,0,'23b78fccf6e7aee39f3f62b569bb92ae',27,''),(183,4,'files/Templates/Elegant.odp','f3ec70ed694c0ca215f094b98eb046a7',177,'Elegant.odp',14,3,14316,1785838688,1785838688,0,0,'62d9d2f46997c5960570fc2103a7d21c',27,''),(184,4,'files/Templates/Simple.odp','a2c90ff606d31419d699b0b437969c61',177,'Simple.odp',14,3,14810,1785838688,1785838688,0,0,'f79363466572ba90dce9ee307ec1221e',27,''),(185,4,'files/Templates/Readme.md','71fa2e74ab30f39eed525572ccc3bbec',177,'Readme.md',11,10,554,1785838688,1785838688,0,0,'07dae037848f347eb1ce866810eb99cf',27,''),(186,4,'files/Templates/Business model canvas.odg','6a8f3e02bdf45c8b0671967969393bcb',177,'Business model canvas.odg',12,3,16988,1785838688,1785838688,0,0,'a62744ce81519a9c8d095402c7990596',27,''),(187,4,'files/Templates/Expense report.ods','d0a4025621279b95d2f94ff4ec09eab3',177,'Expense report.ods',13,3,13441,1785838688,1785838688,0,0,'32e0908e7dc8f1fb2eadd508b5796fff',27,''),(188,4,'files/Templates/Impact effort matrix.whiteboard','c5e3b589ec8f9dd6afdebe0ac6feeac8',177,'Impact effort matrix.whiteboard',9,3,52674,1785838688,1785838688,0,0,'4289b4cc8d5d6c4edd7eab6106683d24',27,''),(189,4,'files/Templates/Diagram & table.ods','0a89f154655f6d4a0098bc4e6ca87367',177,'Diagram & table.ods',13,3,13378,1785838688,1785838688,0,0,'790086e9797d12456e402429a0d49de4',27,''),(190,4,'files/Templates/Meeting notes.md','c0279758bb570afdcdbc2471b2f16285',177,'Meeting notes.md',11,10,326,1785838688,1785838688,0,0,'45b2534a11e9ddc1b09d7a14c701cbe7',27,''),(191,4,'files/Templates/Invoice.odt','40fdccb51b6c3e3cf20532e06ed5016e',177,'Invoice.odt',15,3,17276,1785838688,1785838688,0,0,'0ef040d2f6e5a33e74af068855b7d4c4',27,''),(192,4,'files/Templates/Product plan.md','a9fbf58bf31cebb8143f7ad3a5205633',177,'Product plan.md',11,10,573,1785838688,1785838688,0,0,'a8d0e270c45c208cdae957359fd0f004',27,''),(193,4,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',175,'Nextcloud.png',8,7,50598,1785838688,1785838688,0,0,'a22313c1d3029b5c4003b0ede4aded4d',27,''),(194,4,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',175,'Reasons to use Nextcloud.pdf',4,3,976625,1785838688,1785838688,0,0,'6b718e707fbe76b9d5f040e40259b2bf',27,''),(195,4,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',175,'Photos',2,1,5656463,1785838689,1785838689,0,0,'6a71bc6102e7f',31,''),(196,4,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',195,'Gorilla.jpg',17,7,474653,1785838688,1785838688,0,0,'8bf4c2e8e10fa9eb072dffcca527c3a2',27,''),(197,4,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',195,'Nextcloud community.jpg',17,7,797325,1785838688,1785838688,0,0,'cf8ff6d6bfa42655f7f16c531b822f36',27,''),(198,4,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',195,'Library.jpg',17,7,2170375,1785838688,1785838688,0,0,'44e107b0f64aa16a9483a0a490632303',27,''),(199,4,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',195,'Toucan.jpg',17,7,167989,1785838688,1785838688,0,0,'e7c175efcae6186183ecb3110c64aaba',27,''),(200,4,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',195,'Readme.md',11,10,150,1785838688,1785838688,0,0,'bc7ff06aa56301623cac7c42ed3f4e3e',27,''),(201,4,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',195,'Birdie.jpg',17,7,593508,1785838688,1785838688,0,0,'1ed3e71167432b6bcc56985ea12b04c7',27,''),(202,4,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',195,'Vineyard.jpg',17,7,427030,1785838688,1785838688,0,0,'074a0f371cb74663788311df5a0191bc',27,''),(203,4,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',195,'Frog.jpg',17,7,457744,1785838689,1785838689,0,0,'1b3ac9bf32306aaab635a57efddc6416',27,''),(204,4,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',195,'Steps.jpg',17,7,567689,1785838689,1785838689,0,0,'98e4c9474978f0102a4f0e6ca295abec',27,''),(205,4,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',175,'Documents',2,1,399534,1785838689,1785838689,0,0,'6a71bc6124501',31,''),(206,4,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',205,'Welcome to Nextcloud Hub.docx',16,3,24295,1785838689,1785838689,0,0,'dd89a58700dc73feb46955250acd2b72',27,''),(207,4,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',205,'Example.md',11,10,1095,1785838689,1785838689,0,0,'e822b34103859322a5808d70521ebd41',27,''),(208,4,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',205,'Readme.md',11,10,136,1785838689,1785838689,0,0,'380dc40cdef9e5b8d5be0332b154d9f5',27,''),(209,4,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',205,'Nextcloud flyer.pdf',4,3,374008,1785838689,1785838689,0,0,'84ff10fc21f0a401eb93040621253142',27,''),(210,4,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',175,'Nextcloud Manual.pdf',4,3,12764907,1785838689,1785838689,0,0,'87b99879f2f7f3224a3008bf187870b7',27,''),(211,5,'appdata_oc2g02diujsz/css','071abe9537111f64b26bb65b0c0e6d4c',168,'css',2,1,-1,1785838861,1785838861,0,0,'6a71bc61bb3dd',31,''),(212,5,'appdata_oc2g02diujsz/css/icons','7b4bde147dba4ee23fd1f2619ab4cfcb',211,'icons',2,1,246827,1746537209,1746537209,0,0,'6a71bc61bad7a',31,''),(213,5,'appdata_oc2g02diujsz/css/icons/icons-list.template','7c373332246e16b28e6ecd4a072d83ab',212,'icons-list.template',9,3,20393,1785838861,1785838861,0,0,'24c5c8df1f03628946904cea412d72eb',27,''),(214,5,'appdata_oc2g02diujsz/css/icons/icons-vars.css','1f08b8bb4a6bfa4ae9e7eb2cc5023765',212,'icons-vars.css',20,10,226434,1785838861,1785838861,0,0,'ac0ee222e3045e588aa74248cded1875',27,''),(215,5,'appdata_oc2g02diujsz/css/core','c5d8d00270b0ff902bd68b43a778d78d',211,'core',2,1,162351,1785838690,1785838690,0,0,'6a71bc61bebd4',31,''),(216,5,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css.gzip','9f373de7b62668096e541519a260e007',215,'7fcc-235b-css-variables.css.gzip',19,3,692,1746537209,1746537209,0,0,'e125cf5be5afad31b213580973af0e20',27,''),(217,5,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css','912cc167ee8d0996a3f4e1f8c77964ae',215,'7fcc-235b-server.css',20,10,139049,1746537209,1746537209,0,0,'b32aab781b43f71ec1d58e8a652fced0',27,''),(218,5,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css.gzip','5c9d54f0d732602047ccb0e84978e90c',215,'7fcc-235b-server.css.gzip',19,3,19855,1746537209,1746537209,0,0,'4780fd20de2239693f6418cceebd30d2',27,''),(219,5,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css.deps','e0e1c54ccb751bc4413dbb183aec26d5',215,'7fcc-235b-css-variables.css.deps',9,3,176,1746537209,1746537209,0,0,'0df19eeb1ddeddc187861ff9daa96731',27,''),(220,5,'appdata_oc2g02diujsz/css/core/7fcc-235b-css-variables.css','6cf5f09bece8170e2831eef981a8a054',215,'7fcc-235b-css-variables.css',20,10,1820,1746537209,1746537209,0,0,'a2ffd0bdb4b5979e617dea095725ec4d',27,''),(221,5,'appdata_oc2g02diujsz/css/core/7fcc-235b-server.css.deps','a14887ddc50ea9780d7dddf7235dfd91',215,'7fcc-235b-server.css.deps',9,3,759,1746537209,1746537209,0,0,'235b5954714e11cf762ebd690e5d33c7',27,''),(222,5,'appdata_oc2g02diujsz/css/core/7fcc-41ae-server.css','5c08a268cd03850c648006dc5db206e7',215,'7fcc-41ae-server.css',20,10,139049,1785838690,1785838690,0,0,'a0f91df648b3c23f14178dc81dade98d',27,''),(223,5,'appdata_oc2g02diujsz/css/core/7fcc-41ae-server.css.deps','d6aba23493335fe49c4be6dfe0e94969',215,'7fcc-41ae-server.css.deps',9,3,829,1785838690,1785838690,0,0,'4ed2101c9e2848467b4eeb159c842d28',27,''),(224,5,'appdata_oc2g02diujsz/css/core/7fcc-41ae-server.css.gzip','720ded16010bbcd24c09e910d90e0ca2',215,'7fcc-41ae-server.css.gzip',19,3,19855,1785838690,1785838690,0,0,'02142423da1f85a11002343fbe8ef3df',27,''),(225,5,'appdata_oc2g02diujsz/css/core/7fcc-41ae-css-variables.css','6be86cc78d7b3f16ff02030943712176',215,'7fcc-41ae-css-variables.css',20,10,1820,1785838690,1785838690,0,0,'7aaf5e952eacc785aad360fc4ccec458',27,''),(226,5,'appdata_oc2g02diujsz/css/core/7fcc-41ae-css-variables.css.deps','8bc3527f17d41f075ca09cb4ebb7b41a',215,'7fcc-41ae-css-variables.css.deps',9,3,191,1785838690,1785838690,0,0,'be4f6637c63ea1dc1d143234baba436b',27,''),(227,5,'appdata_oc2g02diujsz/css/core/7fcc-41ae-css-variables.css.gzip','e462433d2f456893fcc622ec7cf031df',215,'7fcc-41ae-css-variables.css.gzip',19,3,692,1785838690,1785838690,0,0,'468a1cff2e4fa2706b72c65d0971ccd3',27,''),(228,5,'appdata_oc2g02diujsz/css/dashboard','58bbac5519a8dcea8407561ad093648d',211,'dashboard',2,1,2827,1785838690,1785838690,0,0,'6a71bc625aed1',31,''),(229,5,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css','6eaca6edcb43bcd9eea351b9a67dc6c7',228,'1c83-235b-dashboard.css',20,10,2050,1746537209,1746537209,0,0,'9102933819eafb7ff1ef1c355697d61b',27,''),(230,5,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css.gzip','cff4420e83db4edb5e52a1d07c2e273d',228,'1c83-235b-dashboard.css.gzip',19,3,594,1746537209,1746537209,0,0,'77f2a4415c708e2ef624f2806fe36451',27,''),(231,5,'appdata_oc2g02diujsz/css/dashboard/1c83-235b-dashboard.css.deps','75b76e724179e178c6a0895f11c00f79',228,'1c83-235b-dashboard.css.deps',9,3,183,1746537209,1746537209,0,0,'979c186f81c8641afe2d29355580295a',27,''),(232,5,'appdata_oc2g02diujsz/css/dashboard/1c83-41ae-dashboard.css','aa449453ddd0a95974fa94a545536146',228,'1c83-41ae-dashboard.css',20,10,2050,1785838690,1785838690,0,0,'338449e74edc67fb0b29dc5b5a96e97f',27,''),(233,5,'appdata_oc2g02diujsz/css/dashboard/1c83-41ae-dashboard.css.deps','45058b40a2c822e447f2c4afaa206fb3',228,'1c83-41ae-dashboard.css.deps',9,3,198,1785838690,1785838690,0,0,'2d6c2aa307a33e235bd0b33349012f52',27,''),(234,5,'appdata_oc2g02diujsz/css/dashboard/1c83-41ae-dashboard.css.gzip','ca4b236b8ac9ec762d134539155e4986',228,'1c83-41ae-dashboard.css.gzip',19,3,594,1785838690,1785838690,0,0,'4b67a49dc5b50e3bac30e3f2b0fda5c6',27,''),(235,5,'appdata_oc2g02diujsz/css/activity','1325e6e4ecea1a8cb7627331f8a3d48a',211,'activity',2,1,4639,1785838690,1785838690,0,0,'6a71bc626cfd6',31,''),(236,5,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css','f03ed3e6f682557b473ea613e0a5463f',235,'6e52-235b-style.css',20,10,3353,1746537209,1746537209,0,0,'55a8c16bfdfe3551c7327984f53b2498',27,''),(237,5,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css.gzip','f5f9e84274afdceea22b41f31e2cf867',235,'6e52-235b-style.css.gzip',19,3,1108,1746537209,1746537209,0,0,'34359635a9df737307af93b4408b0139',27,''),(238,5,'appdata_oc2g02diujsz/css/activity/6e52-235b-style.css.deps','569cfd50fffcb57465adea1711210015',235,'6e52-235b-style.css.deps',9,3,178,1746537209,1746537209,0,0,'b79ae021f93e2ac39e6b42cf76ec79cf',27,''),(239,5,'appdata_oc2g02diujsz/css/activity/6e52-41ae-style.css','514cd33a83cd5c5fc9e99dcc23ed844a',235,'6e52-41ae-style.css',20,10,3353,1785838690,1785838690,0,0,'b40b2d5a5a47aa0224c5e7841265bc1e',27,''),(240,5,'appdata_oc2g02diujsz/css/activity/6e52-41ae-style.css.deps','60dc78fd3d0ba0abeffd35a4bd077840',235,'6e52-41ae-style.css.deps',9,3,193,1785838690,1785838690,0,0,'3e794a427720fb5410cbdf0cd2a4af7f',27,''),(241,5,'appdata_oc2g02diujsz/css/activity/6e52-41ae-style.css.gzip','15cd371dd0a247614db4d25696337c27',235,'6e52-41ae-style.css.gzip',19,3,1108,1785838690,1785838690,0,0,'685ecbac8e0ddc358fbf2393bbcca89a',27,''),(242,5,'appdata_oc2g02diujsz/css/text','d42a199a746c39cd47cf8ff369fd3a76',211,'text',2,1,6867,1785838690,1785838690,0,0,'6a71bc6281c3a',31,''),(243,5,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css.gzip','e76f3dbd7fc63c13909cb4a5615e7865',242,'8931-235b-icons.css.gzip',19,3,832,1746537209,1746537209,0,0,'2b1f5267b7583591414594e9298ab19a',27,''),(244,5,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css','8dd37c5c485d5488a5afb7ed0d2ddff3',242,'8931-235b-icons.css',20,10,5861,1746537209,1746537209,0,0,'92872f085c1831f3bd24fde7f7ae8760',27,''),(245,5,'appdata_oc2g02diujsz/css/text/8931-235b-icons.css.deps','ee79003bd2647c31c2548f89cf7063af',242,'8931-235b-icons.css.deps',9,3,174,1746537209,1746537209,0,0,'396958a1f250405835bac6485f845abe',27,''),(246,5,'appdata_oc2g02diujsz/css/text/8931-41ae-icons.css','401ee74ee894a53739d9b49c74a37aae',242,'8931-41ae-icons.css',20,10,5861,1785838690,1785838690,0,0,'a91b058d9b535f0956233064bb76f489',27,''),(247,5,'appdata_oc2g02diujsz/css/text/8931-41ae-icons.css.deps','0bf4a4136f9ec7119193610eebb9fd3c',242,'8931-41ae-icons.css.deps',9,3,189,1785838690,1785838690,0,0,'8812e11580648e7fe5ba8188fbc83709',27,''),(248,5,'appdata_oc2g02diujsz/css/text/8931-41ae-icons.css.gzip','af346c13b8ab2a7b738bad14af2de9d4',242,'8931-41ae-icons.css.gzip',19,3,832,1785838690,1785838690,0,0,'3d28a5acedfc781a9de875a140c4bc79',27,''),(249,5,'appdata_oc2g02diujsz/css/deck','667d45d49f5b5d255bcbb3ab7cedfc40',211,'deck',2,1,400,1785838690,1785838690,0,0,'6a71bc629aac2',31,''),(250,5,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css','7270b47478801aeb9f228b6ba76e1b7d',249,'5c34-235b-deck.css',20,10,136,1746537352,1746537352,0,0,'3096c53e5b2bbb520945b2b511eed900',27,''),(251,5,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css.deps','2a4300e416be9bcbb51be4bc53f51004',249,'5c34-235b-deck.css.deps',9,3,180,1746537352,1746537352,0,0,'20aa386da83362ebdd979ef46125f52b',27,''),(252,5,'appdata_oc2g02diujsz/css/deck/5c34-235b-deck.css.gzip','b58466197ae987ee63528efb50174125',249,'5c34-235b-deck.css.gzip',19,3,84,1746537352,1746537352,0,0,'0bc1c49dc04c05ac51e50b0251eaf3b3',27,''),(253,5,'appdata_oc2g02diujsz/css/deck/5c34-41ae-deck.css','dcb0a9a3d1a7461101748ad8a73f76ea',249,'5c34-41ae-deck.css',20,10,136,1785838690,1785838690,0,0,'9c8f236d54855079cd3ee20b44fa93c3',27,''),(254,5,'appdata_oc2g02diujsz/css/deck/5c34-41ae-deck.css.deps','c7aa52965180389a9eaa5e2a1c9641a3',249,'5c34-41ae-deck.css.deps',9,3,195,1785838690,1785838690,0,0,'b4ed4e734c258afbfaffcc0267f187f3',27,''),(255,5,'appdata_oc2g02diujsz/css/deck/5c34-41ae-deck.css.gzip','a0d4e6b26efbb05db9916d89713341db',249,'5c34-41ae-deck.css.gzip',19,3,84,1785838690,1785838690,0,0,'f9d73736f5bb750d81230a4295f612fd',27,''),(256,5,'appdata_oc2g02diujsz/css/notifications','adc1801912516e34d43026c931c0104e',211,'notifications',2,1,6737,1785838690,1785838690,0,0,'6a71bc62a98fe',31,''),(257,5,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css.gzip','aed41b7bff5b15981df76c230e1e4ad1',256,'ae3e-235b-styles.css.gzip',19,3,1176,1746537209,1746537209,0,0,'f5f660e7fef627638bf929362874ed0e',27,''),(258,5,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css.deps','f113f46878f2db70a5414759fe56a586',256,'ae3e-235b-styles.css.deps',9,3,184,1746537209,1746537209,0,0,'0f6929f066d0c3c9012204ec96a7ca75',27,''),(259,5,'appdata_oc2g02diujsz/css/notifications/ae3e-235b-styles.css','e50259b82be56d65c0c44bd4940747bb',256,'ae3e-235b-styles.css',20,10,5377,1746537209,1746537209,0,0,'6bbadc48b8031e9182f9269ef0c3e0f9',27,''),(260,5,'appdata_oc2g02diujsz/css/notifications/ae3e-41ae-styles.css','3c4ce1a71f46a8a8fc62fcbc00b82673',256,'ae3e-41ae-styles.css',20,10,5377,1785838690,1785838690,0,0,'3073243d981f7b79813d8f4e89d25c3f',27,''),(261,5,'appdata_oc2g02diujsz/css/notifications/ae3e-41ae-styles.css.deps','8b962eaba8e9a21859881bf54f34d6b1',256,'ae3e-41ae-styles.css.deps',9,3,199,1785838690,1785838690,0,0,'bcc1cfb028c0b18717bd761516c7ed3d',27,''),(262,5,'appdata_oc2g02diujsz/css/notifications/ae3e-41ae-styles.css.gzip','cba58118937a2864cb94cf7f17b099fe',256,'ae3e-41ae-styles.css.gzip',19,3,1176,1785838690,1785838690,0,0,'4713bfeb3ba5ba2d5d20099695d036d0',27,''),(263,5,'appdata_oc2g02diujsz/css/user_status','0484e40e3d96eb90993c62a1daca2715',211,'user_status',2,1,1423,1785838690,1785838690,0,0,'6a71bc62bd19f',31,''),(264,5,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css.deps','fa5fdd60583d18d61238d4df8b7091a5',263,'1bf6-235b-user-status-menu.css.deps',9,3,192,1746537209,1746537209,0,0,'e2c9b01c42454451615d44eda0d5b6aa',27,''),(265,5,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css','692204ec154b4a996e861f03f6ecca72',263,'1bf6-235b-user-status-menu.css',20,10,999,1746537209,1746537209,0,0,'a67f0fea98bf2ed9b5f236cd11a3f6c9',27,''),(266,5,'appdata_oc2g02diujsz/css/user_status/1bf6-235b-user-status-menu.css.gzip','3a290aa7aa228ca4412462089644cbef',263,'1bf6-235b-user-status-menu.css.gzip',19,3,232,1746537209,1746537209,0,0,'36058524bf177d493f0f482b1d0a4a6c',27,''),(267,5,'appdata_oc2g02diujsz/css/user_status/1bf6-41ae-user-status-menu.css','c744d912e1ed1c30e3d9fd9f72677150',263,'1bf6-41ae-user-status-menu.css',20,10,999,1785838690,1785838690,0,0,'590279a3b401989524518b59911734aa',27,''),(268,5,'appdata_oc2g02diujsz/css/user_status/1bf6-41ae-user-status-menu.css.deps','163a4e47d52a30c486894ecf7f757c9b',263,'1bf6-41ae-user-status-menu.css.deps',9,3,207,1785838690,1785838690,0,0,'766c1883df6010f25bb2548aed3b18e1',27,''),(269,5,'appdata_oc2g02diujsz/css/user_status/1bf6-41ae-user-status-menu.css.gzip','f85f0ca3c8dadff1e7e265a9e9c58cfc',263,'1bf6-41ae-user-status-menu.css.gzip',19,3,232,1785838690,1785838690,0,0,'d7b08c108113b118fb962151c6db5000',27,''),(270,5,'appdata_oc2g02diujsz/preview','0163211e22d3a82aa32fc48c2d5211c7',168,'preview',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b2bf74',31,''),(271,5,'appdata_oc2g02diujsz/preview/1','b2b571c70cb7cc9380217f3c53478871',270,'1',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b5befc',31,''),(272,5,'appdata_oc2g02diujsz/preview/6','f9f95644f807a45436a82e3fc7f66fb0',270,'6',2,1,-1,1785838693,1785838693,0,0,'6a71bc65d911a',31,''),(273,5,'appdata_oc2g02diujsz/preview/3','1a3aa98256a2d9d744e716ed0198b216',270,'3',2,1,-1,1785838874,1785838874,0,0,'6a71bd1ae5eaa',31,''),(274,5,'appdata_oc2g02diujsz/preview/9','025a211aa8eaf4359bda11684e33b4d2',270,'9',2,1,-1,1746537210,1746537210,0,0,'6a71bc6517c10',31,''),(275,5,'appdata_oc2g02diujsz/preview/e','f4dc878c769a90eb356ed1b135555056',270,'e',2,1,-1,1785838693,1785838693,0,0,'6a71bc65279b0',31,''),(276,5,'appdata_oc2g02diujsz/preview/e/2','0928b87667f94b4702e1fc250e2f1583',275,'2',2,1,-1,1785838693,1785838693,0,0,'6a71bc6527045',31,''),(277,5,'appdata_oc2g02diujsz/preview/e/2/c','f3ad4933002bc1c3d3b8466ef72eebe8',276,'c',2,1,-1,1785838693,1785838693,0,0,'6a71bc6525748',31,''),(278,5,'appdata_oc2g02diujsz/preview/e/2/c/0','38f98decfad66a369568c0318108485a',277,'0',2,1,-1,1785838693,1785838693,0,0,'6a71bc6524646',31,''),(279,5,'appdata_oc2g02diujsz/preview/e/2/c/0/b','755ebc068ec8efe57587b8cb6b803a5d',278,'b',2,1,-1,1785838693,1785838693,0,0,'6a71bc6522ceb',31,''),(280,5,'appdata_oc2g02diujsz/preview/e/2/c/0/b/e','704629a6ca793e26bad0b3fc47e0542d',279,'e',2,1,-1,1785838693,1785838693,0,0,'6a71bc6522602',31,''),(281,5,'appdata_oc2g02diujsz/theming','763ca9db6b9a2dcb82c8c44e98b9eec1',168,'theming',2,1,-1,1746537210,1746537210,0,0,'6a71bc652c94e',31,''),(282,5,'appdata_oc2g02diujsz/preview/e/2/c/0/b/e/2','c54fd4ae47b998c2ea2c9d1114a78e5a',280,'2',2,1,-1,1785838693,1785838693,0,0,'6a71bc652136b',31,''),(283,5,'appdata_oc2g02diujsz/theming/0','ad1db720282b3fc29928da40b1f8bde3',281,'0',2,1,1325,1785838874,1785838874,0,0,'6a71bc652ba3c',31,''),(284,5,'appdata_oc2g02diujsz/preview/e/2/c/0/b/e/2/203','76a64e494bd6c0d71ae896e3a9757fe5',282,'203',2,1,0,1785838694,1785838694,0,0,'6a71bc6520792',31,''),(285,5,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_application-pdf.svg','2e7afe9769ad52ff7af49e7715474634',283,'icon-core-filetypes_application-pdf.svg',21,7,1054,1746537210,1746537210,0,0,'dc55dec11f5b9712a37a4eb798d39912',27,''),(286,5,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_x-office-drawing.svg','1e180f71137928f4fc60137b2831e497',283,'icon-core-filetypes_x-office-drawing.svg',21,7,271,1746537210,1746537210,0,0,'802e52df98ecb775104e78e8dc08ba7f',27,''),(287,5,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_x-office-document.svg','80836666cfa869a1bee6171eb3bc5725',283,'icon-core-filetypes_x-office-document.svg',21,7,295,1785838693,1785838693,0,0,'701c35aa43d3c3ceda43972fedb1b295',27,''),(288,5,'appdata_oc2g02diujsz/preview/2','0a2be01f7122bcd96cb9d8c2bc79f15c',270,'2',2,1,-1,1785838693,1785838693,0,0,'6a71bc65667e9',31,''),(289,5,'appdata_oc2g02diujsz/preview/2/7','548572a8a617bf2185e244bd23315ea0',288,'7',2,1,-1,1785838693,1785838693,0,0,'6a71bc656512a',31,''),(290,5,'appdata_oc2g02diujsz/preview/2/7/4','fa9776ce3dd2fd84450269a01bd104fa',289,'4',2,1,-1,1785838693,1785838693,0,0,'6a71bc65644b4',31,''),(291,5,'appdata_oc2g02diujsz/preview/2/7/4/a','de2564b2b24d71755d97af550286a386',290,'a',2,1,-1,1785838693,1785838693,0,0,'6a71bc6563521',31,''),(292,5,'appdata_oc2g02diujsz/preview/2/7/4/a/d','c7dc623c8f5a39986257ccfb14e118bb',291,'d',2,1,-1,1785838693,1785838693,0,0,'6a71bc6562283',31,''),(293,5,'appdata_oc2g02diujsz/preview/2/7/4/a/d/4','1d9a4e4ef5fe149e203286f6187d38a2',292,'4',2,1,-1,1785838693,1785838693,0,0,'6a71bc655ff4f',31,''),(294,5,'appdata_oc2g02diujsz/preview/2/7/4/a/d/4/7','fc0cc8147d79796a79cbab5736231b97',293,'7',2,1,-1,1785838693,1785838693,0,0,'6a71bc655f2ba',31,''),(295,5,'appdata_oc2g02diujsz/preview/2/7/4/a/d/4/7/204','8f1935b06980276e38b11a45da68522c',294,'204',2,1,0,1785838694,1785838694,0,0,'6a71bc655e2c4',31,''),(296,5,'appdata_oc2g02diujsz/preview/e/2/c/0/b/e/2/203/1600-1067-max.jpg','d75ea5e51f58171fc0ec240ed38876be',284,'1600-1067-max.jpg',17,7,349624,1785838693,1785838693,0,0,'3532eb9965563b66671df1172a8aac1a',27,''),(297,5,'appdata_oc2g02diujsz/preview/6/9','ad5739ee3dd8957fd23a559e970e4f9a',272,'9',2,1,-1,1785838693,1785838693,0,0,'6a71bc6599884',31,''),(298,5,'appdata_oc2g02diujsz/preview/6/9/a','ee581b87a8e601d83c08c98ef12abef3',297,'a',2,1,-1,1785838693,1785838693,0,0,'6a71bc65988f5',31,''),(299,5,'appdata_oc2g02diujsz/preview/6/9/a/d','e032bcd632bc40678ad7cbc8ee73948b',298,'d',2,1,-1,1785838693,1785838693,0,0,'6a71bc6597237',31,''),(300,5,'appdata_oc2g02diujsz/preview/6/9/a/d/c','7235436263dd1e5b8c2df236c375d61b',299,'c',2,1,-1,1785838693,1785838693,0,0,'6a71bc6595b2d',31,''),(301,5,'appdata_oc2g02diujsz/preview/6/9/a/d/c/1','66bdbdf6bca104cc7a53f5a1d75bcb09',300,'1',2,1,-1,1785838693,1785838693,0,0,'6a71bc6594e04',31,''),(302,5,'appdata_oc2g02diujsz/preview/6/9/a/d/c/1/e','33f5c3b5aee933a6c49610e063e4cb79',301,'e',2,1,-1,1785838693,1785838693,0,0,'6a71bc65936c4',31,''),(303,5,'appdata_oc2g02diujsz/preview/6/9/a/d/c/1/e/207','35ae2e6048465e4a437cafdac3a7fec1',302,'207',2,1,0,1785838696,1785838696,0,0,'6a71bc658f6a3',31,''),(304,5,'appdata_oc2g02diujsz/preview/0','0a5dbe0fd24b90df8c87c42502b8433e',270,'0',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b86978',31,''),(305,5,'appdata_oc2g02diujsz/preview/0/9','adde349397215538fbefcce80d42aeab',304,'9',2,1,-1,1785838693,1785838693,0,0,'6a71bc65e9651',31,''),(306,5,'appdata_oc2g02diujsz/preview/0/9/1','8ca1785e185df60e4f76eff89063a22f',305,'1',2,1,-1,1785838693,1785838693,0,0,'6a71bc65e8230',31,''),(307,5,'appdata_oc2g02diujsz/preview/0/9/1/d','c660cd82e61d37e89f8b854ddfd1a0c6',306,'d',2,1,-1,1785838693,1785838693,0,0,'6a71bc65e6e7e',31,''),(308,5,'appdata_oc2g02diujsz/preview/0/9/1/d/5','cc096249a87ffa528c51ddd9b2852a38',307,'5',2,1,-1,1785838693,1785838693,0,0,'6a71bc65e5870',31,''),(309,5,'appdata_oc2g02diujsz/preview/0/9/1/d/5/8','3567a852c10021bef794bc5b74044d31',308,'8',2,1,-1,1785838693,1785838693,0,0,'6a71bc65e488f',31,''),(310,5,'appdata_oc2g02diujsz/preview/0/9/1/d/5/8/4','99f6772648eed68f2ae70cc1d4d920d1',309,'4',2,1,-1,1785838693,1785838693,0,0,'6a71bc65e3491',31,''),(311,5,'appdata_oc2g02diujsz/preview/0/9/1/d/5/8/4/208','194630800b8cf6c4a656d7c0e0ebe239',310,'208',2,1,0,1785838696,1785838696,0,0,'6a71bc65e0bae',31,''),(312,5,'appdata_oc2g02diujsz/preview/e/2/c/0/b/e/2/203/256-256-crop.jpg','4b65548124c23255659d6346019103df',284,'256-256-crop.jpg',17,7,13226,1785838694,1785838694,0,0,'f0b48373d19c3743807c73d3e8e59bba',27,''),(313,5,'appdata_oc2g02diujsz/preview/2/7/4/a/d/4/7/204/1200-1800-max.jpg','05c4aa40dfc57e3277a4413ba8010158',295,'1200-1800-max.jpg',17,7,425594,1785838694,1785838694,0,0,'d608606d12baed93752d9b21f6c79b73',27,''),(314,5,'appdata_oc2g02diujsz/preview/2/7/4/a/d/4/7/204/256-256-crop.jpg','3ac57ab715049c613e853d707a094f57',295,'256-256-crop.jpg',17,7,13676,1785838694,1785838694,0,0,'38a295f5ff1af2d45b9d6e787e85aa08',27,''),(315,5,'appdata_oc2g02diujsz/preview/6/9/a/d/c/1/e/207/4096-4096-max.png','86bee552c34d03e3fd95e61e0a4f679e',303,'4096-4096-max.png',8,7,192851,1785838695,1785838695,0,0,'0193f491ae9932bd54a4cdbf7d3c5780',27,''),(316,5,'appdata_oc2g02diujsz/preview/0/9/1/d/5/8/4/208/4096-4096-max.png','536a5a0e4810e6f83654739b9535f10b',311,'4096-4096-max.png',8,7,36685,1785838695,1785838695,0,0,'6a3677f2e67498dcc2b86dfe656be03f',27,''),(317,5,'appdata_oc2g02diujsz/preview/6/9/a/d/c/1/e/207/256-256-crop.png','3f091a4916e2501bdd6113ec36c5cf3c',303,'256-256-crop.png',8,7,34097,1785838696,1785838696,0,0,'68030aedab19302180359834d8f686fb',27,''),(318,5,'appdata_oc2g02diujsz/preview/0/9/1/d/5/8/4/208/256-256-crop.png','8f4cdbb9472d213b2a2b5ed59ed570ad',311,'256-256-crop.png',8,7,6399,1785838696,1785838696,0,0,'9415da96cbb994403c6a4ee01aef5980',27,''),(319,5,'appdata_oc2g02diujsz/css/settings','c072d18480f5e488c98f7c9c385b4d43',211,'settings',2,1,-1,1746537227,1746537227,0,0,'6a71bd0d9c1d4',31,''),(320,5,'appdata_oc2g02diujsz/css/contacts','598887234d72fc1d2c6ba6a11d1bf858',211,'contacts',2,1,-1,1746537352,1746537352,0,0,'6a71bd0d9c282',31,''),(321,5,'appdata_oc2g02diujsz/css/files_sharing','c0bb5cd52df41f3bed1ad106854382dc',211,'files_sharing',2,1,-1,1746537305,1746537305,0,0,'6a71bd0d9c3c6',31,''),(322,5,'appdata_oc2g02diujsz/css/files','bdd7faab635688b26a80ceae5577db70',211,'files',2,1,-1,1746537305,1746537305,0,0,'6a71bd0d9c4de',31,''),(323,5,'appdata_oc2g02diujsz/css/theming','7cc1299238e27c649f87fb2a785ba149',211,'theming',2,1,0,1785838861,1785838861,0,0,'6a71bd0da58d5',31,''),(324,5,'appdata_oc2g02diujsz/css/theming/d71e-41ae-theming.css','998d9715e3ea858824f2429b27bc7637',323,'d71e-41ae-theming.css',20,10,1764,1785838861,1785838861,0,0,'8d1f0d3e0cd147c1d0e84a5776ddd024',27,''),(325,5,'appdata_oc2g02diujsz/css/theming/d71e-41ae-theming.css.deps','27788825a5c0d30aae26e3ffaee26d06',323,'d71e-41ae-theming.css.deps',9,3,194,1785838861,1785838861,0,0,'c07ea90478efd59866a2c82ea2be4219',27,''),(326,5,'appdata_oc2g02diujsz/css/theming/d71e-41ae-theming.css.gzip','7c0ac6cc77bc8ae5aff6c1a59416412f',323,'d71e-41ae-theming.css.gzip',19,3,527,1785838861,1785838861,0,0,'6482939f7194b73b81e201301eb94100',27,''),(327,3,'cache','0fea6a13c52b4d4725368f24b045ca84',132,'cache',2,1,0,1785838870,1785838870,0,0,'6a71bd1687365',31,''),(328,3,'files','45b963397aa40d4a0063e0d85e4fe7a1',132,'files',2,1,24049432,1785838871,1785838871,0,0,'6a71bd178552c',31,''),(329,3,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',328,'Nextcloud intro.mp4',6,5,3963036,1785838870,1785838870,0,0,'31cfdb5a754abf6a1ac02641f7f0004c',27,''),(330,3,'files/Templates','530b342d0b8164ff3b4754c2273a453e',328,'Templates',2,1,238269,1785838871,1785838871,0,0,'6a71bd170db30',31,''),(331,3,'files/Templates/Flowchart.odg','832942849155883ceddc6f3cede21867',330,'Flowchart.odg',12,3,11836,1785838870,1785838870,0,0,'8772cdc9a7b8f776d8c889ce86775f13',27,''),(332,3,'files/Templates/Mindmap.odg','74cff798fc1b9634ee45380599b2a6da',330,'Mindmap.odg',12,3,13653,1785838870,1785838870,0,0,'aacccd3018baf033bfcca8bd8ff16448',27,''),(333,3,'files/Templates/Org chart.odg','fd846bc062b158abb99a75a5b33b53e7',330,'Org chart.odg',12,3,13878,1785838870,1785838870,0,0,'73c6fc610e087cd191e579b7bed80faa',27,''),(334,3,'files/Templates/Letter.odt','15545ade0e9863c98f3a5cc0fbf2836a',330,'Letter.odt',15,3,15961,1785838870,1785838870,0,0,'21680073d0c43c1b64f2de56930b8ec2',27,''),(335,3,'files/Templates/SWOT analysis.whiteboard','3fd0e44b3e6f0e7144442ef6fc71a663',330,'SWOT analysis.whiteboard',9,3,38605,1785838870,1785838870,0,0,'db3a41b03899bc5568e80cf5e9d81949',27,''),(336,3,'files/Templates/Elegant.odp','f3ec70ed694c0ca215f094b98eb046a7',330,'Elegant.odp',14,3,14316,1785838870,1785838870,0,0,'f1743fa97e40e404aca5e79813cef3e5',27,''),(337,3,'files/Templates/Simple.odp','a2c90ff606d31419d699b0b437969c61',330,'Simple.odp',14,3,14810,1785838870,1785838870,0,0,'853c62ecc1c9da0c41f86412bd4e069e',27,''),(338,3,'files/Templates/Readme.md','71fa2e74ab30f39eed525572ccc3bbec',330,'Readme.md',11,10,554,1785838870,1785838870,0,0,'c31717b147f8b06fd870b0f9989aa42a',27,''),(339,3,'files/Templates/Business model canvas.odg','6a8f3e02bdf45c8b0671967969393bcb',330,'Business model canvas.odg',12,3,16988,1785838870,1785838870,0,0,'515f80c1aad13b6d4e2c40b1fbb44353',27,''),(340,3,'files/Templates/Expense report.ods','d0a4025621279b95d2f94ff4ec09eab3',330,'Expense report.ods',13,3,13441,1785838870,1785838870,0,0,'9f84aa1db5696e1ee9f8fd3832543552',27,''),(341,3,'files/Templates/Impact effort matrix.whiteboard','c5e3b589ec8f9dd6afdebe0ac6feeac8',330,'Impact effort matrix.whiteboard',9,3,52674,1785838870,1785838870,0,0,'054382e04b168d4be3dbce98ae3aed38',27,''),(342,3,'files/Templates/Diagram & table.ods','0a89f154655f6d4a0098bc4e6ca87367',330,'Diagram & table.ods',13,3,13378,1785838870,1785838870,0,0,'63df3f91c31e2d18b54a2b7452b50ce4',27,''),(343,3,'files/Templates/Meeting notes.md','c0279758bb570afdcdbc2471b2f16285',330,'Meeting notes.md',11,10,326,1785838871,1785838871,0,0,'ebcde31480856eddeca7c82066a4982e',27,''),(344,3,'files/Templates/Invoice.odt','40fdccb51b6c3e3cf20532e06ed5016e',330,'Invoice.odt',15,3,17276,1785838871,1785838871,0,0,'583a1b19ea6719ae531dd0e97de4e776',27,''),(345,3,'files/Templates/Product plan.md','a9fbf58bf31cebb8143f7ad3a5205633',330,'Product plan.md',11,10,573,1785838871,1785838871,0,0,'6e3ed71f4874ab2281c376913023ec68',27,''),(346,3,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',328,'Nextcloud.png',8,7,50598,1785838871,1785838871,0,0,'e6062405c567ed6bb54a68185a89c647',27,''),(347,3,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',328,'Reasons to use Nextcloud.pdf',4,3,976625,1785838871,1785838871,0,0,'513cf3192f019cebce558ff61a6c081a',27,''),(348,3,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',328,'Photos',2,1,5656463,1785838871,1785838871,0,0,'6a71bd1760c0d',31,''),(349,3,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',348,'Gorilla.jpg',17,7,474653,1785838871,1785838871,0,0,'7f1c796fa93da227f33e8c18900589aa',27,''),(350,3,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',348,'Nextcloud community.jpg',17,7,797325,1785838871,1785838871,0,0,'1612149a7a46ff570f02fe493a83fbbf',27,''),(351,3,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',348,'Library.jpg',17,7,2170375,1785838871,1785838871,0,0,'d149de7faf39fdd8387c32191ef8cb88',27,''),(352,3,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',348,'Toucan.jpg',17,7,167989,1785838871,1785838871,0,0,'8e78f9bd8878c88baebf27d0a74eda33',27,''),(353,3,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',348,'Readme.md',11,10,150,1785838871,1785838871,0,0,'43362ac93defe2f6be9409f6a9b40e29',27,''),(354,3,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',348,'Birdie.jpg',17,7,593508,1785838871,1785838871,0,0,'2bdeba97173e0729863e1d7393e5f2d1',27,''),(355,3,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',348,'Vineyard.jpg',17,7,427030,1785838871,1785838871,0,0,'db1509290274f0f62a487c0e8ee8e052',27,''),(356,3,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',348,'Frog.jpg',17,7,457744,1785838871,1785838871,0,0,'8771acf0d7e54c513c0aee6f1871918c',27,''),(357,3,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',348,'Steps.jpg',17,7,567689,1785838871,1785838871,0,0,'8635cefc104487a3031a291cfcef9d43',27,''),(358,3,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',328,'Documents',2,1,399534,1785838871,1785838871,0,0,'6a71bd177ed9c',31,''),(359,3,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',358,'Welcome to Nextcloud Hub.docx',16,3,24295,1785838871,1785838871,0,0,'ce4123e7bbbccb175766298bec7a7acb',27,''),(360,3,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',358,'Example.md',11,10,1095,1785838871,1785838871,0,0,'6310a858016270b780a23b4d2bab7456',27,''),(361,3,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',358,'Readme.md',11,10,136,1785838871,1785838871,0,0,'63141501142fd70651a83b10eaccfb29',27,''),(362,3,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',358,'Nextcloud flyer.pdf',4,3,374008,1785838871,1785838871,0,0,'bf1cd7442345c44074a393fb996229e6',27,''),(363,3,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',328,'Nextcloud Manual.pdf',4,3,12764907,1785838871,1785838871,0,0,'3856d8117f264dfaab04526816f6d231',27,''),(364,5,'appdata_oc2g02diujsz/avatar','b663f67947cabc895a0fbd40f4c72a89',168,'avatar',2,1,-1,1746537260,1746537260,0,0,'6a71bd198ade4',31,''),(365,5,'appdata_oc2g02diujsz/avatar/alice','c5a7b19f435e8b73e552073d2d1dd871',364,'alice',2,1,15884,1785838873,1785838873,0,0,'6a71bd1989a73',31,''),(366,5,'appdata_oc2g02diujsz/avatar/alice/avatar.png','596d73d769d6ecf2c4896b517ce89e6d',365,'avatar.png',8,7,15884,1746537244,1746537244,0,0,'66812616e0700ec66ccf17563febde50',27,''),(367,5,'appdata_oc2g02diujsz/avatar/alice/generated','7a990bf2e4d1db4902ea32e37d171fcb',365,'generated',9,3,0,1746537244,1746537244,0,0,'4218d1e6a08fd24c620f9233aa60db1b',27,''),(368,5,'appdata_oc2g02diujsz/avatar/alice/avatar.64.png','47bd51ffca8c44ff3e8d720e48fbb4cf',365,'avatar.64.png',8,7,822,1785838873,1785838873,0,0,'6955cc9b592838c65db83b4f41dc014b',27,''),(369,5,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_image.svg','c92705b1560185229b14b8a6f5ff59f0',283,'icon-core-filetypes_image.svg',21,7,352,1785838874,1785838874,0,0,'ddf2ae66e47f6b69d3ad5c14388cf171',27,''),(370,5,'appdata_oc2g02diujsz/theming/0/icon-core-filetypes_text.svg','bc66975f2654a8de44644a4c774cf8c9',283,'icon-core-filetypes_text.svg',21,7,295,1785838874,1785838874,0,0,'c7aa26ea31d08e3b9841a5afbfa1fa76',27,''),(371,5,'appdata_oc2g02diujsz/preview/3/a','ec704565dfce42dc9adad6d66b288956',273,'a',2,1,-1,1785838874,1785838874,0,0,'6a71bd1ae2359',31,''),(372,5,'appdata_oc2g02diujsz/preview/3/a/d','416bf4dfae44fa4d899a8635a46883b5',371,'d',2,1,-1,1785838874,1785838874,0,0,'6a71bd1ae0de0',31,''),(373,5,'appdata_oc2g02diujsz/preview/3/a/d/7','b352bdc9ea3dbb5b6c6484052e9cb952',372,'7',2,1,-1,1785838874,1785838874,0,0,'6a71bd1ae0007',31,''),(374,5,'appdata_oc2g02diujsz/preview/3/a/d/7/c','0b2c586d1c4dc0e30ea320d0dcc23813',373,'c',2,1,-1,1785838874,1785838874,0,0,'6a71bd1adf12a',31,''),(375,5,'appdata_oc2g02diujsz/preview/3/a/d/7/c/2','1847475c5c79fea81124ebe880edc8f2',374,'2',2,1,-1,1785838874,1785838874,0,0,'6a71bd1add658',31,''),(376,5,'appdata_oc2g02diujsz/preview/3/a/d/7/c/2/e','9048294764fe89fc9b1abdc1cca54f13',375,'e',2,1,-1,1785838874,1785838874,0,0,'6a71bd1adb7de',31,''),(377,5,'appdata_oc2g02diujsz/preview/3/a/d/7/c/2/e/343','7df5b98c2735c43093c32801430fa073',376,'343',2,1,0,1785838878,1785838878,0,0,'6a71bd1ad9491',31,''),(378,5,'appdata_oc2g02diujsz/preview/b','42ebee9b5af05d7aa3e21e9258411e84',270,'b',2,1,-1,1785838874,1785838874,0,0,'6a71bd1b0224f',31,''),(379,5,'appdata_oc2g02diujsz/preview/b/3','9a16274687fcc73b35bb20b87f6e10f5',378,'3',2,1,-1,1785838874,1785838874,0,0,'6a71bd1b012bd',31,''),(380,5,'appdata_oc2g02diujsz/preview/b/3/9','fb33515cfa678e4bf7351fd88cbdf309',379,'9',2,1,-1,1785838874,1785838874,0,0,'6a71bd1b003c4',31,''),(381,5,'appdata_oc2g02diujsz/preview/b/3/9/6','ee552a18e59b1c0b6bd2144ae215704d',380,'6',2,1,-1,1785838874,1785838874,0,0,'6a71bd1af3d78',31,''),(382,5,'appdata_oc2g02diujsz/preview/b/3/9/6/7','00811a4aa9e06cfcdf91483938d5392d',381,'7',2,1,-1,1785838874,1785838874,0,0,'6a71bd1af2de8',31,''),(383,5,'appdata_oc2g02diujsz/preview/b/3/9/6/7/a','832abda05e0cbeecbb23a14b4f7bd0b9',382,'a',2,1,-1,1785838874,1785838874,0,0,'6a71bd1af19fd',31,''),(384,5,'appdata_oc2g02diujsz/preview/b/3/9/6/7/a/0','6c83b3c2cefd8e8751bfd447e776299e',383,'0',2,1,-1,1785838874,1785838874,0,0,'6a71bd1af12ef',31,''),(385,5,'appdata_oc2g02diujsz/preview/b/3/9/6/7/a/0/344','a52f83fef2140fa3f8605688249df288',384,'344',2,1,0,1785838875,1785838875,0,0,'6a71bd1aefc62',31,''),(386,5,'appdata_oc2g02diujsz/preview/d','d945e2c15314422bc5a7e2180701c431',270,'d',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b1fd61',31,''),(387,5,'appdata_oc2g02diujsz/preview/d/8','471cba0d16fe3b6bcea0d296db7b00c1',386,'8',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b1e875',31,''),(388,5,'appdata_oc2g02diujsz/preview/d/8/1','a47a9a4018a2198f3d6ab043f610955f',387,'1',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b1c827',31,''),(389,5,'appdata_oc2g02diujsz/preview/d/8/1/f','17351678e263d0f2d4f79dace7ed38e9',388,'f',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b1c03f',31,''),(390,5,'appdata_oc2g02diujsz/preview/d/8/1/f/9','e2e537bf462d168018b9466411a19e9b',389,'9',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b1ac68',31,''),(391,5,'appdata_oc2g02diujsz/preview/d/8/1/f/9/c','148d12ccd4ab9edb43a2cbe94712f556',390,'c',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b19192',31,''),(392,5,'appdata_oc2g02diujsz/preview/d/8/1/f/9/c/1','bacaa3e44cf0050e36b1f0f70ffd8b9c',391,'1',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b17a29',31,''),(393,5,'appdata_oc2g02diujsz/preview/d/8/1/f/9/c/1/345','94658c626734c75dc7f54837f3cadc20',392,'345',2,1,0,1785838878,1785838878,0,0,'6a71bd1b167f1',31,''),(394,5,'appdata_oc2g02diujsz/preview/b/3/9/6/7/a/0/344/181-256-max.png','1667d103279bbdf0a1949b43b121e4a8',385,'181-256-max.png',8,7,3547,1785838875,1785838875,0,0,'8935a97bf95f7ea1287f5abcaa752c17',27,''),(395,5,'appdata_oc2g02diujsz/preview/1/3','0a6ad26810957569ee3633ec49bf860c',271,'3',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b4a6da',31,''),(396,5,'appdata_oc2g02diujsz/preview/1/3/f','4c41daf316a645103e92c1c4ac345d8d',395,'f',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b49017',31,''),(397,5,'appdata_oc2g02diujsz/preview/b/3/9/6/7/a/0/344/181-181-crop.png','27c358b9ab25b7b78f8c2a2468ab9eea',385,'181-181-crop.png',8,7,7478,1785838875,1785838875,0,0,'58a62d6d8a6475c71d3b002b1bee989c',27,''),(398,5,'appdata_oc2g02diujsz/preview/1/3/f/9','8f540028c58ccafd484b366faa13ff50',396,'9',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b47f9c',31,''),(399,5,'appdata_oc2g02diujsz/preview/1/3/f/9/8','1ee85aeb7150ce6753b5e91865cae6a4',398,'8',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b46c1d',31,''),(400,5,'appdata_oc2g02diujsz/preview/1/3/f/9/8/9','aedf66efe1c89581b80982f3d5ad262d',399,'9',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b454cb',31,''),(401,5,'appdata_oc2g02diujsz/preview/1/3/f/9/8/9/6','63e86669e0e40912cabbf4c3acf6430f',400,'6',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b43e37',31,''),(402,5,'appdata_oc2g02diujsz/preview/1/3/f/9/8/9/6/346','a0b32772872ed13f8d107d110708120c',401,'346',2,1,0,1785838876,1785838876,0,0,'6a71bd1b42022',31,''),(403,5,'appdata_oc2g02diujsz/preview/0/b','cf8e8970827309cf96034e2187297ef0',304,'b',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b71de0',31,''),(404,5,'appdata_oc2g02diujsz/preview/0/b/b','6a2c993c4b103fd9d603697788b6fb45',403,'b',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b7081a',31,''),(405,5,'appdata_oc2g02diujsz/preview/0/b/b/4','5d88ec1533004f6c9e05223fa2a76503',404,'4',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b6f435',31,''),(406,5,'appdata_oc2g02diujsz/preview/0/b/b/4/a','0d3e2abb43cb8812fc548978e0e3e728',405,'a',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b6e40e',31,''),(407,5,'appdata_oc2g02diujsz/preview/0/b/b/4/a/e','da89d3f6de8575af09ef6614ada74479',406,'e',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b6d935',31,''),(408,5,'appdata_oc2g02diujsz/preview/0/b/b/4/a/e/c','faf7fa64eff81e25c14598614711ee82',407,'c',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b6c5a0',31,''),(409,5,'appdata_oc2g02diujsz/preview/0/b/b/4/a/e/c/349','1868b8023c76f633b3484f6782a020a6',408,'349',2,1,0,1785838876,1785838876,0,0,'6a71bd1b6a889',31,''),(410,5,'appdata_oc2g02diujsz/preview/1/3/f/9/8/9/6/346/500-500-max.png','9ca49092b5a7a0f704d8b4d2d3e0c04b',402,'500-500-max.png',8,7,50545,1785838875,1785838875,0,0,'61a7de737456a96defcd2fadb57e538d',27,''),(411,5,'appdata_oc2g02diujsz/preview/9/d','426e9376e9384ac0f3f155516899986e',274,'d',2,1,-1,1785838875,1785838875,0,0,'6a71bd1bbb36a',31,''),(412,5,'appdata_oc2g02diujsz/preview/9/d/e','f600c56d286a7fbb011faf6b789c93e8',411,'e',2,1,-1,1785838875,1785838875,0,0,'6a71bd1bb794a',31,''),(413,5,'appdata_oc2g02diujsz/preview/9/d/e/6','08f98132a846d3e295ea3d99a1428111',412,'6',2,1,-1,1785838875,1785838875,0,0,'6a71bd1baec6a',31,''),(414,5,'appdata_oc2g02diujsz/preview/9/d/e/6/d','dd22b215d62b33896dc5560c3adee89f',413,'d',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b9cc06',31,''),(415,5,'appdata_oc2g02diujsz/preview/9/d/e/6/d/1','c5903c6efa7de1a9d373ebad445f7f6f',414,'1',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b9b78d',31,''),(416,5,'appdata_oc2g02diujsz/preview/9/d/e/6/d/1/4','f39fbd3d3a42abe408e67a884b11f919',415,'4',2,1,-1,1785838875,1785838875,0,0,'6a71bd1b9a042',31,''),(417,5,'appdata_oc2g02diujsz/preview/9/d/e/6/d/1/4/350','d93cf8fe7d9005c6cdfefcc74ca0495c',416,'350',2,1,0,1785838878,1785838878,0,0,'6a71bd1b97784',31,''),(418,5,'appdata_oc2g02diujsz/preview/3/a/d/7/c/2/e/343/4096-4096-max.png','40b84b0932815e7324be59ab5dbaa7df',377,'4096-4096-max.png',8,7,69461,1785838876,1785838876,0,0,'58eddcc9bfcecb1e31285d8db9b35144',27,''),(419,5,'appdata_oc2g02diujsz/preview/1/3/f/9/8/9/6/346/256-256-crop.png','238064d5f7ea5414870ddf1f0e2d4e80',402,'256-256-crop.png',8,7,24388,1785838876,1785838876,0,0,'f7eb1464ac34bd80fe5ef6ebdf1aad8b',27,''),(420,5,'appdata_oc2g02diujsz/preview/0/b/b/4/a/e/c/349/1600-1067-max.jpg','2ee7a7b075ce1a3c081dd0f952ad1276',409,'1600-1067-max.jpg',17,7,427204,1785838876,1785838876,0,0,'3a5c153ebceb014408aa159cbbb4f47c',27,''),(421,5,'appdata_oc2g02diujsz/preview/0/b/b/4/a/e/c/349/256-256-crop.jpg','15ee663c84281dde4c2176d01f840580',409,'256-256-crop.jpg',17,7,21517,1785838876,1785838876,0,0,'2eedceeb725abf504c365572ec4b2787',27,''),(422,5,'appdata_oc2g02diujsz/preview/d/8/1/f/9/c/1/345/4096-4096-max.png','98df3b2c5671743b02e05e7c75ed2272',393,'4096-4096-max.png',8,7,68696,1785838876,1785838876,0,0,'bb7afedadcdc0f5f371b79d260a986b9',27,''),(423,5,'appdata_oc2g02diujsz/preview/9/d/e/6/d/1/4/350/3000-2000-max.jpg','de87945867bee4d0eabbdec9305596a6',417,'3000-2000-max.jpg',17,7,1203830,1785838877,1785838877,0,0,'1fcf1a8159797ab29668e8a173549e0e',27,''),(424,5,'appdata_oc2g02diujsz/preview/3/a/d/7/c/2/e/343/256-256-crop.png','881dc6e3ebd7157a2b80965bd38b1719',377,'256-256-crop.png',8,7,12242,1785838878,1785838878,0,0,'041c4292fb32f84858491021ad361a06',27,''),(425,5,'appdata_oc2g02diujsz/preview/9/d/e/6/d/1/4/350/256-256-crop.jpg','25f8b75df6a006492933bd622a1bd784',417,'256-256-crop.jpg',17,7,32340,1785838878,1785838878,0,0,'59ba258aad7fcba7febf4af2546f0487',27,''),(426,5,'appdata_oc2g02diujsz/preview/d/8/1/f/9/c/1/345/256-256-crop.png','9fdf8bd042ad1f4f7536caf9289de169',393,'256-256-crop.png',8,7,12062,1785838878,1785838878,0,0,'958864df1f4a7d6a07fcbd57696dcfeb',27,'');
/*!40000 ALTER TABLE `oc_filecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache_extended`
--

DROP TABLE IF EXISTS `oc_filecache_extended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_filecache_extended` (
  `fileid` bigint(20) unsigned NOT NULL,
  `metadata_etag` varchar(40) DEFAULT NULL,
  `creation_time` bigint(20) NOT NULL DEFAULT 0,
  `upload_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fileid`),
  KEY `fce_ctime_idx` (`creation_time`),
  KEY `fce_utime_idx` (`upload_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache_extended`
--

LOCK TABLES `oc_filecache_extended` WRITE;
/*!40000 ALTER TABLE `oc_filecache_extended` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filecache_extended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_files_trash`
--

DROP TABLE IF EXISTS `oc_files_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_files_trash` (
  `auto_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(250) NOT NULL DEFAULT '',
  `user` varchar(64) NOT NULL DEFAULT '',
  `timestamp` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(512) NOT NULL DEFAULT '',
  `type` varchar(4) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_files_trash`
--

LOCK TABLES `oc_files_trash` WRITE;
/*!40000 ALTER TABLE `oc_files_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_files_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_checks`
--

DROP TABLE IF EXISTS `oc_flow_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) NOT NULL DEFAULT '',
  `operator` varchar(16) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_checks`
--

LOCK TABLES `oc_flow_checks` WRITE;
/*!40000 ALTER TABLE `oc_flow_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations`
--

DROP TABLE IF EXISTS `oc_flow_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) NOT NULL DEFAULT '',
  `name` varchar(256) DEFAULT '',
  `checks` longtext DEFAULT NULL,
  `operation` longtext DEFAULT NULL,
  `entity` varchar(256) NOT NULL DEFAULT 'OCA\\WorkflowEngine\\Entity\\File',
  `events` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations`
--

LOCK TABLES `oc_flow_operations` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations_scope`
--

DROP TABLE IF EXISTS `oc_flow_operations_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_operations_scope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_id` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `value` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_scope` (`operation_id`,`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations_scope`
--

LOCK TABLES `oc_flow_operations_scope` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_answers`
--

DROP TABLE IF EXISTS `oc_forms_v2_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_answers_submission` (`submission_id`),
  KEY `forms_answers_question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_answers`
--

LOCK TABLES `oc_forms_v2_answers` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_forms`
--

DROP TABLE IF EXISTS `oc_forms_v2_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(64) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text DEFAULT NULL,
  `owner_id` varchar(64) NOT NULL,
  `access_json` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `created` int(11) DEFAULT NULL COMMENT 'unix-timestamp',
  `expires` int(11) DEFAULT 0 COMMENT 'unix-timestamp',
  `is_anonymous` tinyint(1) DEFAULT 0,
  `submit_once` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueHash` (`hash`),
  KEY `forms_forms_owner` (`owner_id`),
  KEY `forms_forms_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_forms`
--

LOCK TABLES `oc_forms_v2_forms` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_options`
--

DROP TABLE IF EXISTS `oc_forms_v2_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_options_question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_options`
--

LOCK TABLES `oc_forms_v2_options` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_questions`
--

DROP TABLE IF EXISTS `oc_forms_v2_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `type` varchar(256) NOT NULL,
  `text` varchar(2048) NOT NULL,
  `is_required` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `forms_questions_form_order` (`form_id`,`order`),
  KEY `forms_questions_form` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_questions`
--

LOCK TABLES `oc_forms_v2_questions` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_forms_v2_submissions`
--

DROP TABLE IF EXISTS `oc_forms_v2_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_forms_v2_submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `timestamp` int(11) DEFAULT NULL COMMENT 'unix-timestamp',
  PRIMARY KEY (`id`),
  KEY `forms_submissions_form` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_forms_v2_submissions`
--

LOCK TABLES `oc_forms_v2_submissions` WRITE;
/*!40000 ALTER TABLE `oc_forms_v2_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_forms_v2_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_admin`
--

DROP TABLE IF EXISTS `oc_group_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_group_admin` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `uid` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `group_admin_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_admin`
--

LOCK TABLES `oc_group_admin` WRITE;
/*!40000 ALTER TABLE `oc_group_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_group_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_user`
--

DROP TABLE IF EXISTS `oc_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_group_user` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `uid` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `gu_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_user`
--

LOCK TABLES `oc_group_user` WRITE;
/*!40000 ALTER TABLE `oc_group_user` DISABLE KEYS */;
INSERT INTO `oc_group_user` VALUES ('admin','admin');
/*!40000 ALTER TABLE `oc_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_groups`
--

DROP TABLE IF EXISTS `oc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_groups` (
  `gid` varchar(64) NOT NULL DEFAULT '',
  `displayname` varchar(255) NOT NULL DEFAULT 'name',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_groups`
--

LOCK TABLES `oc_groups` WRITE;
/*!40000 ALTER TABLE `oc_groups` DISABLE KEYS */;
INSERT INTO `oc_groups` VALUES ('admin','admin');
/*!40000 ALTER TABLE `oc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_jobs`
--

DROP TABLE IF EXISTS `oc_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL DEFAULT '',
  `argument` varchar(4000) NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT 0,
  `last_checked` int(11) DEFAULT 0,
  `reserved_at` int(11) DEFAULT 0,
  `execution_duration` int(11) DEFAULT 0,
  `argument_hash` varchar(32) DEFAULT NULL,
  `time_sensitive` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `job_class_index` (`class`),
  KEY `job_lastcheck_reserved` (`last_checked`,`reserved_at`),
  KEY `job_argument_hash` (`class`,`argument_hash`),
  KEY `jobs_time_sensitive` (`time_sensitive`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_jobs`
--

LOCK TABLES `oc_jobs` WRITE;
/*!40000 ALTER TABLE `oc_jobs` DISABLE KEYS */;
INSERT INTO `oc_jobs` VALUES (1,'OCA\\Activity\\BackgroundJob\\EmailNotification','null',1746537195,1746537195,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(2,'OCA\\Activity\\BackgroundJob\\ExpireActivities','null',1746537210,1746537210,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(3,'OCA\\Activity\\BackgroundJob\\DigestMail','null',1746537227,1746537227,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(4,'OCA\\Files_Sharing\\DeleteOrphanedSharesJob','null',1746537293,1746537293,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(5,'OCA\\Files_Sharing\\ExpireSharesJob','null',1746537394,1746537394,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(6,'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob','null',1746537396,1746537396,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(7,'OCA\\UserStatus\\BackgroundJob\\ClearOldStatusesBackgroundJob','null',0,1746537182,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(8,'OCA\\UpdateNotification\\Notification\\BackgroundJob','null',0,1746537182,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(9,'OCA\\Text\\Cron\\Cleanup','null',0,1746537183,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(10,'OCA\\NextcloudAnnouncements\\Cron\\Crawler','null',0,1746537183,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(11,'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions','null',0,1746537184,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(12,'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(13,'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(14,'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(15,'OCA\\DAV\\BackgroundJob\\EventReminderJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(16,'OCA\\DAV\\BackgroundJob\\CalendarRetentionJob','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(17,'OCA\\ServerInfo\\Jobs\\UpdateStorageStats','null',0,1746537185,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(18,'OCA\\Federation\\SyncJob','null',0,1746537186,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(19,'OCA\\Notifications\\BackgroundJob\\GenerateUserSettings','null',0,1746537186,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(20,'OCA\\Notifications\\BackgroundJob\\SendNotificationMails','null',0,1746537186,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(21,'OCA\\ContactsInteraction\\BackgroundJob\\CleanupJob','null',0,1746537187,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(22,'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash','null',0,1746537187,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(23,'OCA\\Circles\\Cron\\Maintenance','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(24,'OCA\\Files\\BackgroundJob\\ScanFiles','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(25,'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(26,'OCA\\Files\\BackgroundJob\\CleanupFileLocks','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(27,'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens','null',0,1746537189,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(28,'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(29,'OCA\\Support\\BackgroundJobs\\CheckSubscription','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(30,'OC\\Authentication\\Token\\TokenCleanupJob','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(31,'OC\\Log\\Rotate','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(32,'OC\\Preview\\BackgroundCleanupJob','null',0,1746537190,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(33,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"admin\"}',0,1746537208,0,0,'b974bbc90ef800c3b1539ac4f2aeddb7',1),(34,'OCA\\Settings\\BackgroundJobs\\VerifyUserData','{\"verificationCode\":\"\",\"data\":\"\",\"type\":\"email\",\"uid\":\"alice\",\"try\":0,\"lastRun\":1746537244}',0,1746537244,0,0,'4b762008611200e52a663f32e4b729c6',1),(35,'OCA\\LookupServerConnector\\BackgroundJobs\\RetryJob','{\"userId\":\"alice\"}',0,1746537244,0,0,'877f54aa7d0f0e2f7ffbe419cd483926',1),(36,'OCA\\Settings\\BackgroundJobs\\VerifyUserData','{\"verificationCode\":\"\",\"data\":\"\",\"type\":\"email\",\"uid\":\"bob\",\"try\":0,\"lastRun\":1746537260}',0,1746537260,0,0,'7921eb39b694caf9cf51f8ee829e8db8',1),(37,'OCA\\LookupServerConnector\\BackgroundJobs\\RetryJob','{\"userId\":\"bob\"}',0,1746537260,0,0,'8d73e62cbe64348c3c47f92078fc643c',1),(38,'OCA\\Calendar\\BackgroundJob\\CleanUpOutdatedBookingsJob','null',0,1746537343,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(39,'OCA\\Contacts\\Cron\\SocialUpdateRegistration','null',0,1746537344,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(40,'OCA\\Deck\\Cron\\DeleteCron','null',0,1746537347,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(41,'OCA\\Deck\\Cron\\ScheduledNotifications','null',0,1746537347,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(42,'OCA\\Deck\\Cron\\CardDescriptionActivity','null',0,1746537347,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(43,'OCA\\Mail\\BackgroundJob\\CleanupJob','null',0,1746537352,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(44,'OCA\\Mail\\BackgroundJob\\OutboxWorkerJob','null',0,1746537352,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(45,'OCA\\AdminAudit\\BackgroundJobs\\Rotate','null',0,1746537371,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(46,'OCA\\Files_External\\BackgroundJob\\CredentialsCleanup','null',0,1746537382,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(47,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"bob\"}',0,1785838694,0,0,'b536451b584fd7a03b9d752a8184287a',1),(48,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"alice\"}',0,1785838871,0,0,'d7c37cbc15137b22074de20ab278b1e8',1),(49,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":1}',0,1785840799,0,0,'562423afc287d53e27bc1d34fbc41ce5',1),(50,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":1}',0,1785840799,0,0,'562423afc287d53e27bc1d34fbc41ce5',1),(51,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":2}',0,1785840799,0,0,'ef33fafb0b9077ce575d122c006ecdfe',1),(52,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":2}',0,1785840799,0,0,'ef33fafb0b9077ce575d122c006ecdfe',1),(53,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":3}',0,1785840800,0,0,'377f64949c338b756bd9ce4d6e1db80b',1),(54,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":3}',0,1785840800,0,0,'377f64949c338b756bd9ce4d6e1db80b',1);
/*!40000 ALTER TABLE `oc_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_known_users`
--

DROP TABLE IF EXISTS `oc_known_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_known_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `known_to` varchar(255) NOT NULL,
  `known_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ku_known_to` (`known_to`),
  KEY `ku_known_user` (`known_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_known_users`
--

LOCK TABLES `oc_known_users` WRITE;
/*!40000 ALTER TABLE `oc_known_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_known_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_login_flow_v2`
--

DROP TABLE IF EXISTS `oc_login_flow_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_login_flow_v2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) unsigned NOT NULL,
  `started` smallint(5) unsigned NOT NULL DEFAULT 0,
  `poll_token` varchar(255) NOT NULL,
  `login_token` varchar(255) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `app_password` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_token` (`poll_token`),
  UNIQUE KEY `login_token` (`login_token`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_login_flow_v2`
--

LOCK TABLES `oc_login_flow_v2` WRITE;
/*!40000 ALTER TABLE `oc_login_flow_v2` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_login_flow_v2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_accounts`
--

DROP TABLE IF EXISTS `oc_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `inbound_host` varchar(64) NOT NULL DEFAULT '',
  `inbound_port` varchar(6) NOT NULL DEFAULT '',
  `inbound_ssl_mode` varchar(10) NOT NULL DEFAULT '',
  `inbound_user` varchar(64) NOT NULL DEFAULT '',
  `inbound_password` varchar(2048) DEFAULT NULL,
  `outbound_host` varchar(64) DEFAULT NULL,
  `outbound_port` varchar(6) DEFAULT NULL,
  `outbound_ssl_mode` varchar(10) DEFAULT NULL,
  `outbound_user` varchar(64) DEFAULT NULL,
  `outbound_password` varchar(2048) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `last_mailbox_sync` int(11) NOT NULL DEFAULT 0,
  `editor_mode` varchar(64) NOT NULL DEFAULT 'plaintext',
  `order` int(11) NOT NULL DEFAULT 1,
  `show_subscribed_only` tinyint(1) DEFAULT 0,
  `personal_namespace` varchar(255) DEFAULT NULL,
  `drafts_mailbox_id` int(11) DEFAULT NULL,
  `sent_mailbox_id` int(11) DEFAULT NULL,
  `trash_mailbox_id` int(11) DEFAULT NULL,
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_host` varchar(64) DEFAULT NULL,
  `sieve_port` varchar(6) DEFAULT NULL,
  `sieve_ssl_mode` varchar(10) DEFAULT NULL,
  `sieve_user` varchar(64) DEFAULT NULL,
  `sieve_password` varchar(2048) DEFAULT NULL,
  `provisioning_id` int(11) DEFAULT NULL,
  `signature_above_quote` tinyint(1) DEFAULT 0,
  `auth_method` varchar(255) NOT NULL DEFAULT 'password',
  PRIMARY KEY (`id`),
  KEY `mail_userid_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_accounts`
--

LOCK TABLES `oc_mail_accounts` WRITE;
/*!40000 ALTER TABLE `oc_mail_accounts` DISABLE KEYS */;
INSERT INTO `oc_mail_accounts` VALUES (1,'admin','Administrator','admin@attackbed.com','nextcloud-mail-1','143','none','admin','8445d57041777a85d61c254006d01e0239a5fb996ffb487deb629df1cdbda133|070a85a841016699d57ddd34d8f5c693|94c7cc2599c52bb61b8644ccce111078750cf2c3876396ebc7d2b52e68b8b98c1ae970b3b6e821d746e1c5793ac32c7d09695c91467d5a627b8db4d031af0f20|3','nextcloud-mail-1','25','none','admin','5a5db8b7cd0925b45162b9189edd90bab9392eded403f8ae52b0e8609c23a630|ffed381ac213d5dd5118877d28571178|6e7729568bd752c5c43c2af92e742cfb57e8c472737c4522dcb3cf4660ba2c332e1d223c2bd9e118cbbc718758d44cd9581d7f62fc287e27e2b5727f3b813b35|3',NULL,1785840805,'plaintext',1,0,'',1,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'password'),(2,'bob','Bob','bob@attackbed.com','nextcloud-mail-1','143','none','bob','73ceafa4be74d5f288a8f930dc07ff69|98271210944b1814034fe39ad60f5938|17b3c1534626174fe97480aba125d142bda9f89073cbbe5cca257dbe779cc7fa246147d9ac67ae3a58243a282252fce629548014feca1d336b861a2c4520759f|3','nextcloud-mail-1','25','none','bob','c5b8934f4e0a8a9a31e4fa8365477033|55e97de50fd7fee554ae7cac292bfa9a|6948aefaeffad14fec9208df97173d86289167a926ea094ac47bb219b593f2a20a7215b068ba03bdc3ccc31119a6e178cca5df9b8c609ad048f79c46d9cd985a|3',NULL,1785840806,'plaintext',1,0,'',5,6,7,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'password'),(3,'alice','Alice','alice@attackbed.com','nextcloud-mail-1','143','none','alice','b8c8a05b2d3d132cdf3d4647658fdbe8|08a6ffff9146d82ec6d7a03efdf625f6|6466297ad929dc969cbfc18ddf38ff8c5ebcabfe5d0aea4b10076a2b8eca09c3566ab695405be4bd1d5a94da76d0a76215351bc867eb93a8573a76b08e0b17c6|3','nextcloud-mail-1','25','none','alice','adfcab4f4106a1706c05406e7d6b1e8a|541ff4bc63ac856c36fc8478ce29ec72|c5fd048617e281ac4abcbf21700341c74510ebfa71cbf49cd51a285cdbc0dab072aa0d9c185854528ce8ce591de6205ddd433ad59ee6da052b030f49dcc4a6df|3',NULL,1785840807,'plaintext',1,0,'',9,10,11,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'Password');
/*!40000 ALTER TABLE `oc_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_aliases`
--

DROP TABLE IF EXISTS `oc_mail_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `signature` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_aliases`
--

LOCK TABLES `oc_mail_aliases` WRITE;
/*!40000 ALTER TABLE `oc_mail_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_attachments`
--

DROP TABLE IF EXISTS `oc_mail_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_message_id` int(11) DEFAULT NULL,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT 0,
  `mime_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_attach_userid_index` (`user_id`),
  KEY `IDX_6C63D3AD31594979` (`local_message_id`),
  CONSTRAINT `attachment_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_attachments`
--

LOCK TABLES `oc_mail_attachments` WRITE;
/*!40000 ALTER TABLE `oc_mail_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_classifiers`
--

DROP TABLE IF EXISTS `oc_mail_classifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_classifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `estimator` varchar(255) NOT NULL,
  `app_version` varchar(31) NOT NULL,
  `training_set_size` int(11) NOT NULL,
  `validation_set_size` int(11) NOT NULL,
  `recall_important` decimal(10,5) NOT NULL,
  `precision_important` decimal(10,5) NOT NULL,
  `f1_score_important` decimal(10,5) NOT NULL,
  `duration` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_clssfr_accnt_id_type` (`account_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_classifiers`
--

LOCK TABLES `oc_mail_classifiers` WRITE;
/*!40000 ALTER TABLE `oc_mail_classifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_classifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_coll_addresses`
--

DROP TABLE IF EXISTS `oc_mail_coll_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_coll_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_coll_addr_userid_index` (`user_id`),
  KEY `mail_coll_addr_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_coll_addresses`
--

LOCK TABLES `oc_mail_coll_addresses` WRITE;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_local_messages`
--

DROP TABLE IF EXISTS `oc_mail_local_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_local_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  `account_id` int(11) NOT NULL,
  `alias_id` int(11) DEFAULT NULL,
  `send_at` int(11) DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `body` longtext NOT NULL,
  `html` tinyint(1) DEFAULT 0,
  `in_reply_to_message_id` text DEFAULT NULL,
  `failed` tinyint(1) DEFAULT 0,
  `editor_body` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_local_messages`
--

LOCK TABLES `oc_mail_local_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_local_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_local_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_mailboxes`
--

DROP TABLE IF EXISTS `oc_mail_mailboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_mailboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `attributes` varchar(255) NOT NULL DEFAULT '[]',
  `delimiter` varchar(1) DEFAULT NULL,
  `messages` int(11) NOT NULL,
  `unseen` int(11) NOT NULL,
  `selectable` tinyint(1) DEFAULT 0,
  `special_use` varchar(255) NOT NULL DEFAULT '[]',
  `sync_new_lock` int(11) DEFAULT NULL,
  `sync_changed_lock` int(11) DEFAULT NULL,
  `sync_vanished_lock` int(11) DEFAULT NULL,
  `sync_new_token` varchar(255) DEFAULT NULL,
  `sync_changed_token` varchar(255) DEFAULT NULL,
  `sync_vanished_token` varchar(255) DEFAULT NULL,
  `sync_in_background` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_22DEBD839B6B5FBA5E237E06` (`account_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_mailboxes`
--

LOCK TABLES `oc_mail_mailboxes` WRITE;
/*!40000 ALTER TABLE `oc_mail_mailboxes` DISABLE KEYS */;
INSERT INTO `oc_mail_mailboxes` VALUES (1,'Drafts',1,'[\"\\\\subscribed\",\"\\\\drafts\"]','.',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'Sent',1,'[\"\\\\subscribed\",\"\\\\sent\"]','.',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(3,'Trash',1,'[\"\\\\subscribed\",\"\\\\trash\"]','.',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(4,'INBOX',1,'[\"\\\\subscribed\"]','.',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTEsVjE3ODU4NDA4MDYsSDE=','VTEsVjE3ODU4NDA4MDYsSDE=','VTEsVjE3ODU4NDA4MDYsSDE=',0),(5,'Drafts',2,'[\"\\\\subscribed\",\"\\\\drafts\"]','.',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(6,'Sent',2,'[\"\\\\subscribed\",\"\\\\sent\"]','.',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(7,'Trash',2,'[\"\\\\subscribed\",\"\\\\trash\"]','.',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(8,'INBOX',2,'[\"\\\\subscribed\"]','.',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTEsVjE3ODU4NDA4MDgsSDE=','VTEsVjE3ODU4NDA4MDgsSDE=','VTEsVjE3ODU4NDA4MDgsSDE=',0),(9,'Drafts',3,'[\"\\\\subscribed\",\"\\\\drafts\"]','.',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(10,'Sent',3,'[\"\\\\subscribed\",\"\\\\sent\"]','.',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(11,'Trash',3,'[\"\\\\subscribed\",\"\\\\trash\"]','.',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(12,'INBOX',3,'[\"\\\\subscribed\"]','.',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTEsVjE3ODU4NDA4MDksSDE=','VTEsVjE3ODU4NDA4MDksSDE=','VTEsVjE3ODU4NDA4MDksSDE=',0);
/*!40000 ALTER TABLE `oc_mail_mailboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_message_tags`
--

DROP TABLE IF EXISTS `oc_mail_message_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_message_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imap_message_id` varchar(1023) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_msg_imap_id_idx` (`imap_message_id`(128))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_message_tags`
--

LOCK TABLES `oc_mail_message_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_message_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_message_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_messages`
--

DROP TABLE IF EXISTS `oc_mail_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message_id` varchar(1023) DEFAULT NULL,
  `mailbox_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `sent_at` int(11) NOT NULL,
  `flag_answered` tinyint(1) DEFAULT 0,
  `flag_deleted` tinyint(1) DEFAULT 0,
  `flag_draft` tinyint(1) DEFAULT 0,
  `flag_flagged` tinyint(1) DEFAULT 0,
  `flag_seen` tinyint(1) DEFAULT 0,
  `flag_forwarded` tinyint(1) DEFAULT 0,
  `flag_junk` tinyint(1) DEFAULT 0,
  `flag_notjunk` tinyint(1) DEFAULT 0,
  `flag_attachments` tinyint(1) DEFAULT 0,
  `flag_important` tinyint(1) DEFAULT 0,
  `structure_analyzed` tinyint(1) DEFAULT 0,
  `preview_text` varchar(255) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `references` longtext DEFAULT NULL,
  `in_reply_to` varchar(1023) DEFAULT NULL,
  `thread_root_id` varchar(1023) DEFAULT NULL,
  `flag_mdnsent` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mail_messages_id_flags` (`mailbox_id`,`flag_important`,`flag_deleted`,`flag_seen`),
  KEY `mail_messages_id_flags2` (`mailbox_id`,`flag_deleted`,`flag_flagged`),
  KEY `mail_messages_mailbox_id` (`mailbox_id`),
  KEY `mail_msg_thrd_root_snt_idx` (`mailbox_id`,`thread_root_id`(64),`sent_at`),
  KEY `mail_messages_mb_id_uid` (`mailbox_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_messages`
--

LOCK TABLES `oc_mail_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_provisionings`
--

DROP TABLE IF EXISTS `oc_mail_provisionings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_provisionings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provisioning_domain` varchar(63) NOT NULL DEFAULT '',
  `email_template` varchar(255) NOT NULL DEFAULT '',
  `imap_user` varchar(128) NOT NULL DEFAULT '',
  `imap_host` varchar(255) NOT NULL DEFAULT '',
  `imap_port` smallint(5) unsigned NOT NULL,
  `imap_ssl_mode` varchar(64) NOT NULL DEFAULT '',
  `smtp_user` varchar(128) NOT NULL DEFAULT '',
  `smtp_host` varchar(255) NOT NULL DEFAULT '',
  `smtp_port` smallint(5) unsigned NOT NULL,
  `smtp_ssl_mode` varchar(64) NOT NULL DEFAULT '',
  `sieve_enabled` tinyint(1) DEFAULT 0,
  `sieve_user` varchar(128) DEFAULT NULL,
  `sieve_host` varchar(128) DEFAULT NULL,
  `sieve_port` smallint(5) unsigned DEFAULT NULL,
  `sieve_ssl_mode` varchar(64) DEFAULT NULL,
  `ldap_aliases_provisioning` tinyint(1) DEFAULT 0,
  `ldap_aliases_attribute` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_provsng_dm_idx` (`provisioning_domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_provisionings`
--

LOCK TABLES `oc_mail_provisionings` WRITE;
/*!40000 ALTER TABLE `oc_mail_provisionings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_provisionings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_recipients`
--

DROP TABLE IF EXISTS `oc_mail_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_recipients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `local_message_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_recipient_msg_id_idx` (`message_id`),
  KEY `mail_recipient_email_idx` (`email`),
  KEY `IDX_715DB7E31594979` (`local_message_id`),
  CONSTRAINT `recipient_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_recipients`
--

LOCK TABLES `oc_mail_recipients` WRITE;
/*!40000 ALTER TABLE `oc_mail_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_tags`
--

DROP TABLE IF EXISTS `oc_mail_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `imap_label` varchar(64) NOT NULL,
  `display_name` varchar(128) NOT NULL,
  `color` varchar(9) DEFAULT '#fff',
  `is_default_tag` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_tags_usr_lbl_idx` (`user_id`,`imap_label`),
  KEY `mail_msg_tags_usr_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_tags`
--

LOCK TABLES `oc_mail_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_trusted_senders`
--

DROP TABLE IF EXISTS `oc_mail_trusted_senders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_trusted_senders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'individual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_trusted_sender_uniq` (`email`,`user_id`),
  KEY `mail_trusted_senders_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_trusted_senders`
--

LOCK TABLES `oc_mail_trusted_senders` WRITE;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_migrations`
--

DROP TABLE IF EXISTS `oc_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_migrations` (
  `app` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`app`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_migrations`
--

LOCK TABLES `oc_migrations` WRITE;
/*!40000 ALTER TABLE `oc_migrations` DISABLE KEYS */;
INSERT INTO `oc_migrations` VALUES ('activity','2006Date20170808154933'),('activity','2006Date20170808155040'),('activity','2006Date20170919095939'),('activity','2007Date20181107114613'),('activity','2008Date20181011095117'),('activity','2010Date20190416112817'),('activity','2011Date20201006132544'),('activity','2011Date20201006132545'),('activity','2011Date20201006132546'),('activity','2011Date20201006132547'),('activity','2011Date20201207091915'),('calendar','2040Date20210908101001'),('calendar','3000Date20211109132439'),('calendar','3010Date20220111090252'),('circles','0022Date20220526111723'),('circles','0022Date20220526113601'),('circles','0022Date20220703115023'),('circles','0023Date20211216113101'),('circles','0024Date20220203123901'),('circles','0024Date20220203123902'),('circles','0024Date20220317190331'),('contactsinteraction','010000Date20200304152605'),('core','13000Date20170705121758'),('core','13000Date20170718121200'),('core','13000Date20170814074715'),('core','13000Date20170919121250'),('core','13000Date20170926101637'),('core','14000Date20180129121024'),('core','14000Date20180404140050'),('core','14000Date20180516101403'),('core','14000Date20180518120534'),('core','14000Date20180522074438'),('core','14000Date20180626223656'),('core','14000Date20180710092004'),('core','14000Date20180712153140'),('core','15000Date20180926101451'),('core','15000Date20181015062942'),('core','15000Date20181029084625'),('core','16000Date20190207141427'),('core','16000Date20190212081545'),('core','16000Date20190427105638'),('core','16000Date20190428150708'),('core','17000Date20190514105811'),('core','18000Date20190920085628'),('core','18000Date20191014105105'),('core','18000Date20191204114856'),('core','19000Date20200211083441'),('core','20000Date20201109081915'),('core','20000Date20201109081918'),('core','20000Date20201109081919'),('core','20000Date20201111081915'),('core','21000Date20201120141228'),('core','21000Date20201202095923'),('core','21000Date20210119195004'),('core','21000Date20210309185126'),('core','21000Date20210309185127'),('core','22000Date20210216080825'),('core','23000Date20210721100600'),('core','23000Date20210906132259'),('core','23000Date20210930122352'),('core','23000Date20211203110726'),('core','23000Date20211213203940'),('core','24000Date20211210141942'),('core','24000Date20211213081506'),('core','24000Date20211213081604'),('core','24000Date20211222112246'),('core','24000Date20211230140012'),('core','24000Date20220131153041'),('core','24000Date20220202150027'),('core','24000Date20220404230027'),('core','24000Date20220425072957'),('core','25000Date20220515204012'),('dav','1004Date20170825134824'),('dav','1004Date20170919104507'),('dav','1004Date20170924124212'),('dav','1004Date20170926103422'),('dav','1005Date20180413093149'),('dav','1005Date20180530124431'),('dav','1006Date20180619154313'),('dav','1006Date20180628111625'),('dav','1008Date20181030113700'),('dav','1008Date20181105104826'),('dav','1008Date20181105104833'),('dav','1008Date20181105110300'),('dav','1008Date20181105112049'),('dav','1008Date20181114084440'),('dav','1011Date20190725113607'),('dav','1011Date20190806104428'),('dav','1012Date20190808122342'),('dav','1016Date20201109085907'),('dav','1017Date20210216083742'),('dav','1018Date20210312100735'),('deck','1000Date20200306161713'),('deck','1000Date20200308073933'),('deck','10200Date20201111150114'),('deck','10800Date20220422061816'),('federatedfilesharing','1010Date20200630191755'),('federatedfilesharing','1011Date20201120125158'),('federation','1010Date20200630191302'),('files','11301Date20191205150729'),('files_external','1011Date20200630192246'),('files_external','1015Date20211104103506'),('files_external','1016Date20220324154536'),('files_external','22000Date20210216084416'),('files_sharing','11300Date20201120141438'),('files_sharing','21000Date20201223143245'),('files_sharing','22000Date20210216084241'),('files_sharing','24000Date20220208195521'),('files_sharing','24000Date20220404142216'),('files_trashbin','1010Date20200630192639'),('forms','0010Date20190000000007'),('forms','010102Date20200323120846'),('forms','010200Date20200323141300'),('forms','020002Date20200729205932'),('forms','020200Date20210120082018'),('forms','020202Date20210311150843'),('forms','020300Date20210403214012'),('forms','020300Date20210406114130'),('forms','020300Date20210406133704'),('forms','030000Date20220402100057'),('mail','0100Date20180825194217'),('mail','0110Date20180825195812'),('mail','0110Date20180825201241'),('mail','0130Date20190408134101'),('mail','0156Date20190828140357'),('mail','0161Date20190902103559'),('mail','0161Date20190902103701'),('mail','0161Date20190902114635'),('mail','0180Date20190927124207'),('mail','0190Date20191118160843'),('mail','0210Date20191212144925'),('mail','1020Date20191002091034'),('mail','1020Date20191002091035'),('mail','1020Date20200206134751'),('mail','1030Date20200228105714'),('mail','1040Date20200422130220'),('mail','1040Date20200422142920'),('mail','1040Date20200506111214'),('mail','1040Date20200515080614'),('mail','1040Date20200529124657'),('mail','1050Date20200624101359'),('mail','1050Date20200831124954'),('mail','1050Date20200921141700'),('mail','1050Date20200923180030'),('mail','1060Date20201015084952'),('mail','1080Date20201119084820'),('mail','1080Date20210108093802'),('mail','1090Date20210127160127'),('mail','1090Date20210216154409'),('mail','1096Date20210407150016'),('mail','1100Date20210304143008'),('mail','1100Date20210317164707'),('mail','1100Date20210326103929'),('mail','1100Date20210409091311'),('mail','1100Date20210419080523'),('mail','1100Date20210419121734'),('mail','1100Date20210421113423'),('mail','1100Date20210512142306'),('mail','1101Date20210616141806'),('mail','1105Date20210922104324'),('mail','1110Date20210908114229'),('mail','1115Date20211216144446'),('mail','1120Date20220223094709'),('mail','1124Date20220531094751'),('mail','1124Date20220601084530'),('mail','1130Date20220412111833'),('mail','1130Date20220520062301'),('mail','1140Date20220701103556'),('mail','1140Date20220808203258'),('mail','1140Date20221027171138'),('mail','1140Date20221113205737'),('mail','1140Date20221206162029'),('notifications','2004Date20190107135757'),('notifications','2010Date20210218082811'),('notifications','2010Date20210218082855'),('notifications','2011Date20210930134607'),('notifications','2011Date20220826074907'),('oauth2','010401Date20181207190718'),('oauth2','010402Date20190107124745'),('privacy','100Date20190217131943'),('text','010000Date20190617184535'),('text','030001Date20200402075029'),('text','030201Date20201116110353'),('text','030201Date20201116123153'),('text','030501Date20220202101853'),('twofactor_backupcodes','1002Date20170607104347'),('twofactor_backupcodes','1002Date20170607113030'),('twofactor_backupcodes','1002Date20170919123342'),('twofactor_backupcodes','1002Date20170926101419'),('twofactor_backupcodes','1002Date20180821043638'),('user_status','0001Date20200602134824'),('user_status','0002Date20200902144824'),('user_status','1000Date20201111130204'),('user_status','2301Date20210809144824'),('workflowengine','2000Date20190808074233'),('workflowengine','2200Date20210805101925');
/*!40000 ALTER TABLE `oc_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mimetypes`
--

DROP TABLE IF EXISTS `oc_mimetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mimetypes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mimetypes`
--

LOCK TABLES `oc_mimetypes` WRITE;
/*!40000 ALTER TABLE `oc_mimetypes` DISABLE KEYS */;
INSERT INTO `oc_mimetypes` VALUES (3,'application'),(18,'application/javascript'),(23,'application/json'),(9,'application/octet-stream'),(4,'application/pdf'),(12,'application/vnd.oasis.opendocument.graphics'),(14,'application/vnd.oasis.opendocument.presentation'),(13,'application/vnd.oasis.opendocument.spreadsheet'),(15,'application/vnd.oasis.opendocument.text'),(16,'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(19,'application/x-gzip'),(1,'httpd'),(2,'httpd/unix-directory'),(7,'image'),(17,'image/jpeg'),(8,'image/png'),(21,'image/svg+xml'),(10,'text'),(20,'text/css'),(11,'text/markdown'),(5,'video'),(6,'video/mp4');
/*!40000 ALTER TABLE `oc_mimetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mounts`
--

DROP TABLE IF EXISTS `oc_mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage_id` bigint(20) NOT NULL,
  `root_id` bigint(20) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `mount_point` varchar(4000) NOT NULL,
  `mount_id` bigint(20) DEFAULT NULL,
  `mount_provider_class` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  KEY `mounts_storage_index` (`storage_id`),
  KEY `mounts_root_index` (`root_id`),
  KEY `mounts_mount_id_index` (`mount_id`),
  KEY `mount_user_storage` (`storage_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mounts`
--

LOCK TABLES `oc_mounts` WRITE;
/*!40000 ALTER TABLE `oc_mounts` DISABLE KEYS */;
INSERT INTO `oc_mounts` VALUES (1,1,1,'admin','/admin/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider'),(2,3,132,'alice','/alice/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider'),(3,4,138,'bob','/bob/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider');
/*!40000 ALTER TABLE `oc_mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications`
--

DROP TABLE IF EXISTS `oc_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(32) NOT NULL,
  `user` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `object_type` varchar(64) NOT NULL,
  `object_id` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `subject_parameters` longtext DEFAULT NULL,
  `message` varchar(64) DEFAULT NULL,
  `message_parameters` longtext DEFAULT NULL,
  `link` varchar(4000) DEFAULT NULL,
  `icon` varchar(4000) DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `oc_notifications_app` (`app`),
  KEY `oc_notifications_user` (`user`),
  KEY `oc_notifications_timestamp` (`timestamp`),
  KEY `oc_notifications_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications`
--

LOCK TABLES `oc_notifications` WRITE;
/*!40000 ALTER TABLE `oc_notifications` DISABLE KEYS */;
INSERT INTO `oc_notifications` VALUES (1,'firstrunwizard','admin',1746537208,'app','groupfolders','apphint-groupfolders','[]','','[]','','','[]'),(2,'firstrunwizard','admin',1746537208,'app','notes','apphint-notes','[]','','[]','','','[]'),(4,'firstrunwizard','admin',1746537208,'app','tasks','apphint-tasks','[]','','[]','','','[]');
/*!40000 ALTER TABLE `oc_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_pushhash`
--

DROP TABLE IF EXISTS `oc_notifications_pushhash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications_pushhash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `token` int(11) NOT NULL DEFAULT 0,
  `deviceidentifier` varchar(128) NOT NULL,
  `devicepublickey` varchar(512) NOT NULL,
  `devicepublickeyhash` varchar(128) NOT NULL,
  `pushtokenhash` varchar(128) NOT NULL,
  `proxyserver` varchar(256) NOT NULL,
  `apptype` varchar(32) NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oc_npushhash_uid` (`uid`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_pushhash`
--

LOCK TABLES `oc_notifications_pushhash` WRITE;
/*!40000 ALTER TABLE `oc_notifications_pushhash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_pushhash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_settings`
--

DROP TABLE IF EXISTS `oc_notifications_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `batch_time` int(11) NOT NULL DEFAULT 0,
  `last_send_id` bigint(20) NOT NULL DEFAULT 0,
  `next_send_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notset_user` (`user_id`),
  KEY `notset_nextsend` (`next_send_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_settings`
--

LOCK TABLES `oc_notifications_settings` WRITE;
/*!40000 ALTER TABLE `oc_notifications_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_access_tokens`
--

DROP TABLE IF EXISTS `oc_oauth2_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_oauth2_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hashed_code` varchar(128) NOT NULL,
  `encrypted_token` varchar(786) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  KEY `oauth2_access_client_id_idx` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_access_tokens`
--

LOCK TABLES `oc_oauth2_access_tokens` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_clients`
--

DROP TABLE IF EXISTS `oc_oauth2_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_oauth2_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `client_identifier` varchar(64) NOT NULL,
  `secret` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_clients`
--

LOCK TABLES `oc_oauth2_clients` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_preferences`
--

DROP TABLE IF EXISTS `oc_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_preferences` (
  `userid` varchar(64) NOT NULL DEFAULT '',
  `appid` varchar(32) NOT NULL DEFAULT '',
  `configkey` varchar(64) NOT NULL DEFAULT '',
  `configvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`userid`,`appid`,`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_preferences`
--

LOCK TABLES `oc_preferences` WRITE;
/*!40000 ALTER TABLE `oc_preferences` DISABLE KEYS */;
INSERT INTO `oc_preferences` VALUES ('admin','activity','configured','yes'),('admin','core','lang','en'),('admin','core','templateDirectory','Templates/'),('admin','core','timezone','Europe/Vienna'),('admin','dashboard','firstRun','0'),('admin','firstrunwizard','apphint','18'),('admin','firstrunwizard','show','0'),('admin','login','lastLogin','1746537208'),('admin','login_token','79S+tisMZYQzF6mnvilhJVqsPkvrEkPp','1746537208'),('admin','password_policy','failedLoginAttempts','0'),('alice','activity','configured','yes'),('alice','avatar','generated','true'),('alice','avatar','version','1'),('alice','core','lang','en'),('alice','core','templateDirectory','Templates/'),('alice','core','timezone','Europe/Berlin'),('alice','dashboard','firstRun','0'),('alice','files','quota','default'),('alice','firstrunwizard','show','0'),('alice','login','lastLogin','1785838870'),('alice','login_token','YWFVxlULDVGRZaMKU7rbqb7zJQ/BMjsk','1785838871'),('alice','password_policy','failedLoginAttempts','0'),('bob','activity','configured','yes'),('bob','avatar','generated','true'),('bob','avatar','version','1'),('bob','core','lang','en'),('bob','core','templateDirectory','Templates/'),('bob','core','timezone','Europe/Berlin'),('bob','dashboard','firstRun','0'),('bob','files','quota','default'),('bob','firstrunwizard','show','0'),('bob','login','lastLogin','1785838687'),('bob','password_policy','failedLoginAttempts','0');
/*!40000 ALTER TABLE `oc_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_privacy_admins`
--

DROP TABLE IF EXISTS `oc_privacy_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_privacy_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_privacy_admins`
--

LOCK TABLES `oc_privacy_admins` WRITE;
/*!40000 ALTER TABLE `oc_privacy_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_privacy_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_profile_config`
--

DROP TABLE IF EXISTS `oc_profile_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_profile_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `config` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_config_user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_profile_config`
--

LOCK TABLES `oc_profile_config` WRITE;
/*!40000 ALTER TABLE `oc_profile_config` DISABLE KEYS */;
INSERT INTO `oc_profile_config` VALUES (1,'admin','{\"address\":{\"visibility\":\"show_users_only\"},\"avatar\":{\"visibility\":\"show\"},\"biography\":{\"visibility\":\"show\"},\"displayname\":{\"visibility\":\"show\"},\"headline\":{\"visibility\":\"show\"},\"organisation\":{\"visibility\":\"show\"},\"role\":{\"visibility\":\"show\"},\"email\":{\"visibility\":\"show_users_only\"},\"phone\":{\"visibility\":\"show_users_only\"},\"twitter\":{\"visibility\":\"show\"},\"website\":{\"visibility\":\"show\"}}');
/*!40000 ALTER TABLE `oc_profile_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_properties`
--

DROP TABLE IF EXISTS `oc_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) NOT NULL DEFAULT '',
  `propertypath` varchar(255) NOT NULL DEFAULT '',
  `propertyname` varchar(255) NOT NULL DEFAULT '',
  `propertyvalue` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_index` (`userid`),
  KEY `properties_path_index` (`userid`,`propertypath`),
  KEY `properties_pathonly_index` (`propertypath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_properties`
--

LOCK TABLES `oc_properties` WRITE;
/*!40000 ALTER TABLE `oc_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ratelimit_entries`
--

DROP TABLE IF EXISTS `oc_ratelimit_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_ratelimit_entries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hash` varchar(128) NOT NULL,
  `delete_after` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ratelimit_hash` (`hash`),
  KEY `ratelimit_delete_after` (`delete_after`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ratelimit_entries`
--

LOCK TABLES `oc_ratelimit_entries` WRITE;
/*!40000 ALTER TABLE `oc_ratelimit_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ratelimit_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_reactions`
--

DROP TABLE IF EXISTS `oc_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_reactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(64) NOT NULL DEFAULT '',
  `actor_id` varchar(64) NOT NULL DEFAULT '',
  `reaction` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_reaction_unique` (`parent_id`,`actor_type`,`actor_id`,`reaction`),
  KEY `comment_reaction` (`reaction`),
  KEY `comment_reaction_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_reactions`
--

LOCK TABLES `oc_reactions` WRITE;
/*!40000 ALTER TABLE `oc_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recent_contact`
--

DROP TABLE IF EXISTS `oc_recent_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_recent_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_uid` varchar(64) NOT NULL,
  `uid` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `federated_cloud_id` varchar(255) DEFAULT NULL,
  `card` longblob NOT NULL,
  `last_contact` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recent_contact_actor_uid` (`actor_uid`),
  KEY `recent_contact_id_uid` (`id`,`actor_uid`),
  KEY `recent_contact_uid` (`uid`),
  KEY `recent_contact_email` (`email`),
  KEY `recent_contact_fed_id` (`federated_cloud_id`),
  KEY `recent_contact_last_contact` (`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recent_contact`
--

LOCK TABLES `oc_recent_contact` WRITE;
/*!40000 ALTER TABLE `oc_recent_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recent_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_schedulingobjects`
--

DROP TABLE IF EXISTS `oc_schedulingobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_schedulingobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) DEFAULT NULL,
  `calendardata` longblob DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedulobj_principuri_index` (`principaluri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_schedulingobjects`
--

LOCK TABLES `oc_schedulingobjects` WRITE;
/*!40000 ALTER TABLE `oc_schedulingobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_schedulingobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share`
--

DROP TABLE IF EXISTS `oc_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_share` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `share_type` smallint(6) NOT NULL DEFAULT 0,
  `share_with` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uid_owner` varchar(64) NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `item_type` varchar(64) NOT NULL DEFAULT '',
  `item_source` varchar(255) DEFAULT NULL,
  `item_target` varchar(255) DEFAULT NULL,
  `file_source` bigint(20) DEFAULT NULL,
  `file_target` varchar(512) DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT 0,
  `stime` bigint(20) NOT NULL DEFAULT 0,
  `accepted` smallint(6) NOT NULL DEFAULT 0,
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT 0,
  `share_name` varchar(64) DEFAULT NULL,
  `password_by_talk` tinyint(1) DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `hide_download` smallint(6) DEFAULT 0,
  `label` varchar(255) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `password_expiration_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_share_type_index` (`item_type`,`share_type`),
  KEY `file_source_index` (`file_source`),
  KEY `token_index` (`token`),
  KEY `share_with_index` (`share_with`),
  KEY `parent_index` (`parent`),
  KEY `owner_index` (`uid_owner`),
  KEY `initiator_index` (`uid_initiator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share`
--

LOCK TABLES `oc_share` WRITE;
/*!40000 ALTER TABLE `oc_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share_external`
--

DROP TABLE IF EXISTS `oc_share_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_share_external` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) DEFAULT -1,
  `share_type` int(11) DEFAULT NULL,
  `remote` varchar(512) NOT NULL,
  `remote_id` varchar(255) DEFAULT '',
  `share_token` varchar(64) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `name` varchar(4000) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `user` varchar(64) NOT NULL,
  `mountpoint` varchar(4000) NOT NULL,
  `mountpoint_hash` varchar(32) NOT NULL,
  `accepted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share_external`
--

LOCK TABLES `oc_share_external` WRITE;
/*!40000 ALTER TABLE `oc_share_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages`
--

DROP TABLE IF EXISTS `oc_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_storages` (
  `numeric_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(64) DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `last_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages`
--

LOCK TABLES `oc_storages` WRITE;
/*!40000 ALTER TABLE `oc_storages` DISABLE KEYS */;
INSERT INTO `oc_storages` VALUES (1,'home::admin',1,NULL),(2,'local::/var/www/html/data/',1,NULL),(3,'home::alice',1,NULL),(4,'home::bob',1,NULL),(5,'local::/var/www/nextcloud/data/',1,NULL);
/*!40000 ALTER TABLE `oc_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages_credentials`
--

DROP TABLE IF EXISTS `oc_storages_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_storages_credentials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) DEFAULT NULL,
  `identifier` varchar(64) NOT NULL,
  `credentials` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stocred_ui` (`user`,`identifier`),
  KEY `stocred_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages_credentials`
--

LOCK TABLES `oc_storages_credentials` WRITE;
/*!40000 ALTER TABLE `oc_storages_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_storages_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag`
--

DROP TABLE IF EXISTS `oc_systemtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT 1,
  `editable` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag`
--

LOCK TABLES `oc_systemtag` WRITE;
/*!40000 ALTER TABLE `oc_systemtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_group`
--

DROP TABLE IF EXISTS `oc_systemtag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag_group` (
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `gid` varchar(255) NOT NULL,
  PRIMARY KEY (`gid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_group`
--

LOCK TABLES `oc_systemtag_group` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_object_mapping`
--

DROP TABLE IF EXISTS `oc_systemtag_object_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag_object_mapping` (
  `objectid` varchar(64) NOT NULL DEFAULT '',
  `objecttype` varchar(64) NOT NULL DEFAULT '',
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`objecttype`,`objectid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_object_mapping`
--

LOCK TABLES `oc_systemtag_object_mapping` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_documents`
--

DROP TABLE IF EXISTS `oc_text_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_documents` (
  `id` bigint(20) unsigned NOT NULL,
  `current_version` bigint(20) unsigned DEFAULT 0,
  `last_saved_version` bigint(20) unsigned DEFAULT 0,
  `last_saved_version_time` bigint(20) unsigned NOT NULL,
  `last_saved_version_etag` varchar(64) DEFAULT '',
  `base_version_etag` varchar(64) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_documents`
--

LOCK TABLES `oc_text_documents` WRITE;
/*!40000 ALTER TABLE `oc_text_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_sessions`
--

DROP TABLE IF EXISTS `oc_text_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) DEFAULT NULL,
  `guest_name` varchar(64) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `token` varchar(64) NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `last_contact` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rd_session_token_idx` (`token`),
  KEY `ts_lastcontact` (`last_contact`),
  KEY `ts_docid_lastcontact` (`document_id`,`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_sessions`
--

LOCK TABLES `oc_text_sessions` WRITE;
/*!40000 ALTER TABLE `oc_text_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_steps`
--

DROP TABLE IF EXISTS `oc_text_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) unsigned NOT NULL,
  `session_id` bigint(20) unsigned NOT NULL,
  `data` longtext NOT NULL,
  `version` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rd_steps_did_idx` (`document_id`),
  KEY `rd_steps_version_idx` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_steps`
--

LOCK TABLES `oc_text_steps` WRITE;
/*!40000 ALTER TABLE `oc_text_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_trusted_servers`
--

DROP TABLE IF EXISTS `oc_trusted_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_trusted_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL,
  `url_hash` varchar(255) NOT NULL DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `shared_secret` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `sync_token` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_hash` (`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_trusted_servers`
--

LOCK TABLES `oc_trusted_servers` WRITE;
/*!40000 ALTER TABLE `oc_trusted_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_trusted_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_backupcodes`
--

DROP TABLE IF EXISTS `oc_twofactor_backupcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_twofactor_backupcodes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL DEFAULT '',
  `code` varchar(128) NOT NULL,
  `used` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `twofactor_backupcodes_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_backupcodes`
--

LOCK TABLES `oc_twofactor_backupcodes` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_providers`
--

DROP TABLE IF EXISTS `oc_twofactor_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_twofactor_providers` (
  `provider_id` varchar(32) NOT NULL,
  `uid` varchar(64) NOT NULL,
  `enabled` smallint(6) NOT NULL,
  PRIMARY KEY (`provider_id`,`uid`),
  KEY `twofactor_providers_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_providers`
--

LOCK TABLES `oc_twofactor_providers` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_providers` DISABLE KEYS */;
INSERT INTO `oc_twofactor_providers` VALUES ('backup_codes','admin',0),('backup_codes','alice',0),('backup_codes','bob',0);
/*!40000 ALTER TABLE `oc_twofactor_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_status`
--

DROP TABLE IF EXISTS `oc_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_user_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_timestamp` int(10) unsigned NOT NULL,
  `is_user_defined` tinyint(1) DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `custom_icon` varchar(255) DEFAULT NULL,
  `custom_message` longtext DEFAULT NULL,
  `clear_at` int(10) unsigned DEFAULT NULL,
  `is_backup` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_status_uid_ix` (`user_id`),
  KEY `user_status_clr_ix` (`clear_at`),
  KEY `user_status_tstmp_ix` (`status_timestamp`),
  KEY `user_status_iud_ix` (`is_user_defined`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_status`
--

LOCK TABLES `oc_user_status` WRITE;
/*!40000 ALTER TABLE `oc_user_status` DISABLE KEYS */;
INSERT INTO `oc_user_status` VALUES (1,'admin','online',1746537210,0,NULL,NULL,NULL,NULL,0),(2,'bob','online',1785838692,0,NULL,NULL,NULL,NULL,0),(3,'alice','online',1785838874,0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_transfer_owner`
--

DROP TABLE IF EXISTS `oc_user_transfer_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_user_transfer_owner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_user` varchar(64) NOT NULL,
  `target_user` varchar(64) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `node_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_transfer_owner`
--

LOCK TABLES `oc_user_transfer_owner` WRITE;
/*!40000 ALTER TABLE `oc_user_transfer_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_user_transfer_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_users`
--

DROP TABLE IF EXISTS `oc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_users` (
  `uid` varchar(64) NOT NULL DEFAULT '',
  `displayname` varchar(64) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `uid_lower` varchar(64) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `user_uid_lower` (`uid_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_users`
--

LOCK TABLES `oc_users` WRITE;
/*!40000 ALTER TABLE `oc_users` DISABLE KEYS */;
INSERT INTO `oc_users` VALUES ('admin',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$eHcxNVNIbjlTbThKSHlsNQ$RX1I0+gCcyiEJynxex0y2vKilrWzpNJO4ES2AG8Kf+c','admin'),('alice','Alice','3|$argon2id$v=19$m=65536,t=4,p=1$YWczLjVVZmR6b2JDQzlpYQ$Wmf4prXhd+oqGxyj/+41DJmrJd9Ky5JV9UTgF0zjrQE','alice'),('bob','Bob','3|$argon2id$v=19$m=65536,t=4,p=1$cWYzQ2wuR0RSRGVMOEZFLg$IYTJNQPuSy9UIjhqb+hEoSn30Lb8dZ5dgSMFPxGtR3U','bob');
/*!40000 ALTER TABLE `oc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory`
--

DROP TABLE IF EXISTS `oc_vcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_vcategory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory`
--

LOCK TABLES `oc_vcategory` WRITE;
/*!40000 ALTER TABLE `oc_vcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory_to_object`
--

DROP TABLE IF EXISTS `oc_vcategory_to_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_vcategory_to_object` (
  `objid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `categoryid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objid`,`type`),
  KEY `vcategory_objectd_index` (`objid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory_to_object`
--

LOCK TABLES `oc_vcategory_to_object` WRITE;
/*!40000 ALTER TABLE `oc_vcategory_to_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory_to_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_webauthn`
--

DROP TABLE IF EXISTS `oc_webauthn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_webauthn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `public_key_credential_id` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webauthn_uid` (`uid`),
  KEY `webauthn_publicKeyCredentialId` (`public_key_credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_webauthn`
--

LOCK TABLES `oc_webauthn` WRITE;
/*!40000 ALTER TABLE `oc_webauthn` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_webauthn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_whats_new`
--

DROP TABLE IF EXISTS `oc_whats_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_whats_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(64) NOT NULL DEFAULT '11',
  `etag` varchar(64) NOT NULL DEFAULT '',
  `last_check` int(10) unsigned NOT NULL DEFAULT 0,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`),
  KEY `version_etag_idx` (`version`,`etag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_whats_new`
--

LOCK TABLES `oc_whats_new` WRITE;
/*!40000 ALTER TABLE `oc_whats_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_whats_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'nextcloud'
--

--
-- Dumping routines for database 'nextcloud'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-04 10:55:58
