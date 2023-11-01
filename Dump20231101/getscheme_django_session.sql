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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('aer69lh8i5lsva8k1te4dmt551ksg3jy','.eJxVjDkOwjAUBe_iGlnxEi-U9DmD9RcbB1AixUmFuDuJlALaNzPvLRJsa01by0saWVyFEpffDYGeeToAP2C6z5LmaV1GlIciT9rkMHN-3U7376BCq3ttHWEx6MF70CWqPkYMxpEmilozG1Cws4I-hM5m6rJiYxVa7skFNuLzBfEkODM:1qy38q:KX-Z_BSGSdv3W3WXd1VACUkW-PGrCSmqZIQ4wvwtye8','2023-11-15 04:47:44.949598'),('i8ikat1bce9vc8a7xw9p0fpfba4atkrb','.eJxVjDkOwjAUBe_iGlnxEi-U9DmD9RcbB1AixUmFuDuJlALaNzPvLRJsa01by0saWVyFEpffDYGeeToAP2C6z5LmaV1GlIciT9rkMHN-3U7376BCq3ttHWEx6MF70CWqPkYMxpEmilozG1Cws4I-hM5m6rJiYxVa7skFNuLzBfEkODM:1qwFRW:bgGBI9ZAzpFCl0ljbhwpFTrU3zsdqcQsOrcZTGSdF1I','2023-11-10 05:31:34.831653'),('oxax5d9hl30ha3skab3ch85g24cbjmj1','.eJxVjDkOwjAUBe_iGlnxEi-U9DmD9RcbB1AixUmFuDuJlALaNzPvLRJsa01by0saWVyFEpffDYGeeToAP2C6z5LmaV1GlIciT9rkMHN-3U7376BCq3ttHWEx6MF70CWqPkYMxpEmilozG1Cws4I-hM5m6rJiYxVa7skFNuLzBfEkODM:1qvw2y:lmr9P3eNw2zJu4kV5e0Nm3kfAfbR82EFwasCgjkx-50','2023-11-09 08:48:56.427650');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
