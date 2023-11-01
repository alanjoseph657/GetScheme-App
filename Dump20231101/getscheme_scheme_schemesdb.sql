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
-- Table structure for table `scheme_schemesdb`
--

DROP TABLE IF EXISTS `scheme_schemesdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheme_schemesdb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Scheme_Name` varchar(500) DEFAULT NULL,
  `Type1` varchar(50) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Type2` varchar(50) DEFAULT NULL,
  `Type3` varchar(50) DEFAULT NULL,
  `Link` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme_schemesdb`
--

LOCK TABLES `scheme_schemesdb` WRITE;
/*!40000 ALTER TABLE `scheme_schemesdb` DISABLE KEYS */;
INSERT INTO `scheme_schemesdb` VALUES (1,'Ayushman Bharat Yojana','General','Ayushman Bharat Pradhan Mantri Jan Arogya Yojana is a national public health insurance scheme of the Government of India that aims to provide free access to health insurance coverage for low income earners in the country. Roughly, the bottom 50% of the country qualifies for this scheme.','Insurance','Reservation','https://abdm.gov.in/'),(2,'Atal Pension Yojana','General','Ayushman Bharat Yojana  Atal Pension Yojana Atal Pension Yojana image of Atal Pension Yojana en.wikipedia.org Atal Pension Yojana, formerly known as Swavalamban Yojana is a government-backed pension scheme in India, primarily targeted at the unorganised sector. It was mentioned in the year 2015 Budget speech by the Finance Minister Arun Jaitley. It was launched by Prime Minister Narendra Modi on 9 May 2015 in Kolkata.','Reservation','Profession','https://financialservices.gov.in/pension-reforms-divisions/Atal-Pension-Yojana'),(3,'Pradhan Mantri Jan Dhan Yojana','General','Pradhan Mantri Jan Dhan Yojana is a financial inclusion program of the Government of India open to Indian citizens, that aims to expand affordable access to financial services such as bank accounts, remittances, credit, insurance and pensions.','Reservation','State','https://pmjdy.gov.in/'),(4,'Pradhan Mantri Suraksha Bima Yojana','General','The Pradhan Mantri Fasal Bima Yojana provides funding, and farmers who have experienced crop loss or damage will receive financial assistance.','Insurance','State','https://financialservices.gov.in/insurance-divisions/Government-Sponsored-Socially-Oriented-Insurance-Schemes/Pradhan-Mantri-Suraksha-Bima-Yojana(PMSBY)'),(5,'Age Relaxation for Motorized Tricycle ADIP Scheme','Disabilty','Age Relaxation for Motorized Tricycle ADIP Scheme. people with disable cirtifcate can apply for it.','General',NULL,'https://www.swavlambancard.gov.in/schemes/search'),(6,'Nishashkt Vivah','General','people who is blind can apply for nishashkt vivah scheme and upto 5 lakh ruppees can withdraw','Disabilty',NULL,'https://www.swavlambancard.gov.in/schemes/search'),(7,'GRANT OF SCHOLARSHIP TO DIFFERENTLY ABLED STUDENTS','Disabilty','Acid Attack Victim, Autism Spectrum Disorder, Blindness, Cerebral Palsy, Chronic Neurological Conditions, Hearing Impairment, Hemophilia, Intellectual Disability, Leprosy cured, Locomotor Disability, Low Vision, Mental Illness,','General',NULL,'https://www.swavlambancard.gov.in/schemes/search'),(8,'India Young Professionals Scheme visa','Profession','graduate can apply loan without intrest for 5.only SC,ST, OBC can applyyears. students who are willing to migrate.','General','Reservation','https://www.gov.uk/india-young-professionals-scheme-visa/apply');
/*!40000 ALTER TABLE `scheme_schemesdb` ENABLE KEYS */;
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
