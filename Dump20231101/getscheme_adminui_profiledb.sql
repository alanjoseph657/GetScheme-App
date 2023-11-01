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
-- Table structure for table `adminui_profiledb`
--

DROP TABLE IF EXISTS `adminui_profiledb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminui_profiledb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State_id` varchar(100) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Income` int DEFAULT NULL,
  `Poverty_line` varchar(100) DEFAULT NULL,
  `Disability` tinyint(1) NOT NULL,
  `Reservation` varchar(100) DEFAULT NULL,
  `Aadhar_Number` int DEFAULT NULL,
  `Contact` int DEFAULT NULL,
  `Profile_Image` varchar(100) DEFAULT NULL,
  `user_id` int NOT NULL,
  `Profession` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AdminUI_profiledb_user_id_3eaea238_fk_auth_user_id` (`user_id`),
  CONSTRAINT `AdminUI_profiledb_user_id_3eaea238_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminui_profiledb`
--

LOCK TABLES `adminui_profiledb` WRITE;
/*!40000 ALTER TABLE `adminui_profiledb` DISABLE KEYS */;
INSERT INTO `adminui_profiledb` VALUES (1,'hp','Kochi','Ernakulam','Kerala',682006,200,'new',0,'new',NULL,1867876567,'users/profile_images/Cadbury-Dairy-Milk-Logo.png',1,NULL);
/*!40000 ALTER TABLE `adminui_profiledb` ENABLE KEYS */;
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
