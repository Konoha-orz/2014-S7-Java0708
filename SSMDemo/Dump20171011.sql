-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: videoproject
-- ------------------------------------------------------
-- Server version	5.6.33-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (0,'匿名账户',NULL),(1,'acc07','1234'),(2,'acc08','4321'),(3,'Konoha','yang');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,1,1),(2,0,1),(3,1,2),(4,2,1);
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `account_name` varchar(45) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_video_idx` (`video_id`),
  CONSTRAINT `comment_video` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function`
--

DROP TABLE IF EXISTS `function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function`
--

LOCK TABLES `function` WRITE;
/*!40000 ALTER TABLE `function` DISABLE KEYS */;
INSERT INTO `function` VALUES (1,'首页','/index','首页地址'),(2,'登录','/login','登录地址'),(3,'登出','/logout','登出地址'),(4,'管理员','/admin','模拟管理员');
/*!40000 ALTER TABLE `function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'基础角色','基础的角色'),(2,'管理员角色','管理员角色'),(3,'TestRole','test role'),(4,'高级角色','高级的用户角色'),(5,'qweqwe','qweqeqe'),(6,'wqeqe','jiojqwonkl'),(8,'Jack','wqjoejqowe'),(11,'发顺丰','打');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_function`
--

DROP TABLE IF EXISTS `role_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_function`
--

LOCK TABLES `role_function` WRITE;
/*!40000 ALTER TABLE `role_function` DISABLE KEYS */;
INSERT INTO `role_function` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4);
/*!40000 ALTER TABLE `role_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `account_id` int(11) NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `preference` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  CONSTRAINT `user_info_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `logtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES (1,'aaa','2017-09-06 02:40:05',1),(2,'用户:null,访问url:/Index','2017-09-06 02:51:40',0),(3,'用户:null,访问url:/login','2017-09-06 02:52:14',0),(4,'用户:null,访问url:/Index','2017-09-06 02:52:14',0),(5,'用户:null,访问url:/login','2017-09-06 02:52:36',0),(6,'用户:acc07,访问url:/Index','2017-09-06 02:52:36',1),(7,'用户:acc07,访问url:/logout','2017-09-06 02:52:50',1),(8,'用户:null,访问url:/Index','2017-09-06 02:52:50',1),(9,'用户:null,访问url:/Index','2017-09-06 06:25:26',0),(10,'用户:null,访问url:/Index','2017-09-06 06:25:28',0),(11,'用户:null,访问url:/Index','2017-09-06 06:25:29',0),(12,'用户:null,访问url:/Index','2017-09-06 06:25:30',0),(13,'用户:null,访问url:/Index','2017-09-06 06:26:38',0),(14,'用户:null,访问url:/Index','2017-09-06 06:26:39',0),(15,'用户:null,访问url:/login','2017-09-06 06:26:57',0),(16,'用户:acc07,访问url:/Index','2017-09-06 06:26:57',1),(17,'用户:acc07,访问url:/Index','2017-09-06 06:27:00',1),(18,'用户:acc07,访问url:/admin','2017-09-06 06:27:02',1),(19,'用户:acc07,访问url:/logout','2017-09-06 06:27:28',1),(20,'用户:null,访问url:/Index','2017-09-06 06:27:28',1),(21,'用户:null,访问url:/login','2017-09-06 06:27:39',1),(22,'用户:null,访问url:/login','2017-09-06 22:17:38',0),(23,'用户:NULL,访问url:/logout','2017-09-06 22:18:16',0),(24,'用户:null,访问url:/login','2017-09-06 22:18:43',0),(25,'用户:NULL,访问url:/logout','2017-09-06 22:18:52',0),(26,'用户:null,访问url:/Index','2017-09-06 22:19:25',0),(27,'用户:null,访问url:/login','2017-09-06 22:19:35',0),(28,'用户:NULL,访问url:/logout','2017-09-06 22:19:37',0),(29,'用户:null,访问url:/login','2017-09-06 22:19:42',0),(30,'用户:null,访问url:/login','2017-09-06 22:22:12',0),(31,'用户:null,访问url:/login','2017-09-06 22:22:19',0),(32,'用户:acc07,访问url:/admin','2017-09-06 22:22:27',1),(33,'用户:acc07,访问url:/login','2017-09-06 22:22:45',1),(34,'用户:acc07,访问url:/Index','2017-09-06 22:27:05',1),(35,'用户:null,访问url:/index','2017-09-06 22:27:39',0),(36,'用户:null,访问url:/login','2017-09-06 22:27:45',0),(37,'用户:acc07,访问url:/index','2017-09-06 22:27:50',1),(38,'用户:acc07,访问url:/admin','2017-09-06 22:27:55',1),(39,'用户:acc07,访问url:/logout','2017-09-06 22:28:30',1),(40,'用户:null,访问url:/index','2017-09-06 22:28:30',1),(41,'用户:null,访问url:/admin','2017-09-06 22:28:35',1),(42,'用户:null,访问url:/index','2017-09-06 22:29:01',1),(43,'用户:null,访问url:/admin','2017-09-06 22:29:06',1),(44,'用户:null,访问url:/admin','2017-09-06 22:29:09',1),(45,'用户:null,访问url:/index','2017-09-06 22:29:17',0),(46,'用户:null,访问url:/login','2017-09-06 22:29:31',0),(47,'用户:acc07,访问url:/admin','2017-09-06 22:29:36',1),(48,'用户:acc07,访问url:/logout','2017-09-06 22:29:39',1),(49,'用户:null,访问url:/index','2017-09-06 22:29:39',1),(50,'用户:null,访问url:/index','2017-09-06 22:29:47',1),(51,'用户:null,访问url:/admin','2017-09-06 22:29:51',1),(52,'用户:null,访问url:/admin','2017-09-06 22:31:26',1),(53,'用户:null,访问url:/admin','2017-09-06 22:31:27',1),(54,'用户:null,访问url:/index','2017-09-06 22:31:44',0),(55,'用户:null,访问url:/index','2017-09-06 22:31:55',0),(56,'用户:null,访问url:/login','2017-09-06 22:32:01',0),(57,'用户:acc07,访问url:/admin','2017-09-06 22:32:11',1),(58,'用户:acc07,访问url:/logout','2017-09-06 22:32:15',1),(59,'用户:null,访问url:/index','2017-09-06 22:32:15',0),(60,'用户:null,访问url:/index','2017-09-06 22:32:34',0),(61,'用户:null,访问url:/login','2017-09-06 22:32:59',0),(62,'用户:null,访问url:/index','2017-09-06 22:34:10',0),(63,'用户:null,访问url:/login','2017-09-06 22:34:11',0),(64,'用户:null,访问url:/login','2017-09-06 22:34:18',0),(65,'用户:acc08,访问url:/login','2017-09-06 22:34:21',2);
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `picpath` varchar(150) DEFAULT NULL,
  `videopath` varchar(150) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `video_account_idx` (`account_id`),
  CONSTRAINT `video_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'videoproject'
--

--
-- Dumping routines for database 'videoproject'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-11 16:39:41
