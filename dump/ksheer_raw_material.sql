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
-- Table structure for table `raw_material`
--

DROP TABLE IF EXISTS `raw_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material` (
  `raw_id` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fat_percent` int NOT NULL,
  `protein_percent` int NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `rate` int NOT NULL,
  PRIMARY KEY (`raw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material`
--

LOCK TABLES `raw_material` WRITE;
/*!40000 ALTER TABLE `raw_material` DISABLE KEYS */;
INSERT INTO `raw_material` VALUES ('ama','camel milk A',4,4,18015,30),('amb','camel milk B',4,2,17267,28),('amc','camel milk C',6,1,7485,27),('amd','camel milk D',5,3,11971,28),('ame','camel milk E',6,4,11106,26),('bma','buffalo milk A',2,5,13277,22),('bmb','buffalo milk B',2,4,16660,22),('bmc','buffalo milk C',4,5,17328,20),('bmd','buffalo milk D',5,6,15804,19),('bme','buffalo milk E',6,8,13498,19),('che','cheers',1,1,100000,1),('cma','cow milk A',4,6,16642,25),('cmb','cow milk B',5,4,15581,22),('cmc','cow milk C',8,4,13271,22),('cmd','cow milk D',9,2,13006,20),('cme','cow milk E',9,5,12784,20),('gma','goat milk A',3,5,12478,20),('gmb','goat milk B',4,3,18256,19),('gmc','goat milk C',4,4,12613,18),('gmd','goat milk D',4,4,15476,17),('gme','goat milk E',5,2,16329,16),('sc','sugarcane',10,2,7000,40);
/*!40000 ALTER TABLE `raw_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:52:27
