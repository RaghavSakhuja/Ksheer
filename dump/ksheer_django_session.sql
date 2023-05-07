-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ksheer
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
INSERT INTO `django_session` VALUES ('30zse0lo3it4n06g3swp0p8uatpuy4fp','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pko0I:q7Mbd6HR_3r8e2rApV16kMugUsU1StAfXxnBixgm8aE','2023-04-21 15:27:54.725281'),('bpob99yfibahq6dp5ujxtlo9lkejtyap','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pkmsW:0tCTLawkliFcMRkQNY6Eo5LfCpyjfLMhnC-QZFzXqXs','2023-04-21 14:15:48.070343'),('fjcnxhzxo28sddpc7i1vfsydv6cmbro3','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIiwic3RvcmVpZCI6NDIsIm51bWJlciI6MX0:1pkmqQ:0Fs7XIZGAQ3fFGgbdk7KbvD-WIQWbBfoGEzxYWL27LA','2023-04-21 14:13:38.804087'),('gvbhrpaxc1t9d8b4q8lnolz8c15v29lx','.eJyrVsorzU1KLVKyMtRRKi7JL0rNTFGyMrLQUUrOz8lJTS7JLEsFy5UWpxaBpJQcE4sSy-KNlCBCJZUFQHmlVKVaAIyCGA4:1ppQg6:ggWhjhmxW1SnzNPDvf81K0pIk2gKfrD27wvE6gdnfEU','2023-05-04 09:34:10.162191'),('s9i6ajt3734f8b7nos157irfdqla394k','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pko9G:wbDa60WbR6GABYrAyO4JH08AjTcc-P-Vgjvi9eB2d3w','2023-04-21 15:37:10.186792');
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

-- Dump completed on 2023-04-20 15:52:28
