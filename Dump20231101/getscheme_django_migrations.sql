-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: getscheme
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-26 07:16:32.695264'),(2,'auth','0001_initial','2023-10-26 07:16:33.098337'),(3,'AdminUI','0001_initial','2023-10-26 07:16:33.170336'),(4,'admin','0001_initial','2023-10-26 07:16:33.264327'),(5,'admin','0002_logentry_remove_auto_add','2023-10-26 07:16:33.275159'),(6,'admin','0003_logentry_add_action_flag_choices','2023-10-26 07:16:33.285457'),(7,'contenttypes','0002_remove_content_type_name','2023-10-26 07:16:33.347418'),(8,'auth','0002_alter_permission_name_max_length','2023-10-26 07:16:33.399725'),(9,'auth','0003_alter_user_email_max_length','2023-10-26 07:16:33.457514'),(10,'auth','0004_alter_user_username_opts','2023-10-26 07:16:33.473740'),(11,'auth','0005_alter_user_last_login_null','2023-10-26 07:16:33.567071'),(12,'auth','0006_require_contenttypes_0002','2023-10-26 07:16:33.579009'),(13,'auth','0007_alter_validators_add_error_messages','2023-10-26 07:16:33.602133'),(14,'auth','0008_alter_user_username_max_length','2023-10-26 07:16:33.716741'),(15,'auth','0009_alter_user_last_name_max_length','2023-10-26 07:16:33.808829'),(16,'auth','0010_alter_group_name_max_length','2023-10-26 07:16:33.834604'),(17,'auth','0011_update_proxy_permissions','2023-10-26 07:16:33.844758'),(18,'auth','0012_alter_user_first_name_max_length','2023-10-26 07:16:33.974753'),(19,'sessions','0001_initial','2023-10-26 07:16:34.014862'),(20,'AdminUI','0002_profiledb_profession','2023-10-26 08:33:45.228948'),(21,'Scheme','0001_initial','2023-10-26 09:11:38.820851'),(22,'authtoken','0001_initial','2023-10-26 09:30:46.786359'),(23,'authtoken','0002_auto_20160226_1747','2023-10-26 09:30:46.809063'),(24,'authtoken','0003_tokenproxy','2023-10-26 09:30:46.816200'),(25,'Scheme','0002_rename_type_schemesdb_type1_schemesdb_type2_and_more','2023-10-27 05:58:41.319479'),(26,'Scheme','0003_schemesdb_link','2023-10-27 06:00:00.258492');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-01 11:05:13
