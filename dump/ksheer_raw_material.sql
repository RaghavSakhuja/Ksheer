CREATE DATABASE  IF NOT EXISTS `ksheer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ksheer`;
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
  `raw_id` varchar(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fat_percent` int NOT NULL,
  `protein_percent` int NOT NULL,
  `amount` int NOT NULL,
  `rate` int NOT NULL,
  PRIMARY KEY (`raw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material`
--

LOCK TABLES `raw_material` WRITE;
/*!40000 ALTER TABLE `raw_material` DISABLE KEYS */;
INSERT INTO `raw_material` VALUES ('1','camel milk',5,6,2770,14),('10','goat milk',7,9,5542,11),('100','goat milk',6,4,9253,14),('11','goat milk',2,3,8404,12),('12','goat milk',6,2,6815,12),('13','goat milk',5,5,7793,12),('14','buffalo milk',1,1,8864,11),('15','sugarcane',3,3,5174,12),('16','camel milk',9,10,8368,14),('17','sugarcane',3,6,9272,13),('18','goat milk',9,4,7923,15),('19','sugarcane',4,6,6068,14),('2','sugarcane',4,1,4111,14),('20','sugarcane',5,4,5111,13),('21','sugarcane',2,4,9101,13),('22','buffalo milk',5,3,4055,14),('23','goat milk',7,2,2595,12),('24','goat milk',4,1,7417,12),('25','camel milk',1,8,4968,10),('26','camel milk',3,5,2227,13),('27','sugarcane',1,5,9115,10),('28','goat milk',7,9,7608,13),('29','buffalo milk',10,2,4868,15),('3','camel milk',9,8,5337,11),('30','buffalo milk',8,1,7242,15),('31','buffalo milk',1,8,2670,10),('32','buffalo milk',4,2,1532,14),('33','buffalo milk',7,7,5012,11),('34','camel milk',8,5,7693,14),('35','sugarcane',3,5,8583,13),('36','buffalo milk',1,10,8832,14),('37','camel milk',6,1,4800,10),('38','buffalo milk',10,0,9906,13),('39','goat milk',4,1,8940,13),('4','sugarcane',5,3,8110,10),('40','sugarcane',6,2,6632,13),('41','buffalo milk',3,7,6670,15),('42','sugarcane',1,0,6231,10),('43','camel milk',4,9,1195,10),('44','buffalo milk',6,0,1820,11),('45','camel milk',9,10,9928,13),('46','sugarcane',7,6,7445,13),('47','camel milk',0,0,5545,14),('48','sugarcane',7,10,8329,10),('49','camel milk',6,1,6649,11),('5','goat milk',3,6,1210,11),('50','buffalo milk',6,4,9529,15),('51','goat milk',9,3,8213,15),('52','sugarcane',6,4,7692,13),('53','goat milk',0,2,9240,11),('54','camel milk',6,6,9751,14),('55','camel milk',8,6,6768,12),('56','buffalo milk',1,2,3888,14),('57','camel milk',8,7,6225,10),('58','buffalo milk',8,7,9585,10),('59','buffalo milk',8,8,9845,14),('6','camel milk',6,3,1717,14),('60','camel milk',3,10,9363,14),('61','buffalo milk',8,8,8965,11),('62','goat milk',10,8,5596,11),('63','camel milk',4,6,6680,11),('64','buffalo milk',1,3,4151,13),('65','buffalo milk',2,2,7218,10),('66','goat milk',2,5,7338,12),('67','camel milk',8,2,4329,12),('68','goat milk',7,5,1814,11),('69','sugarcane',7,4,9696,11),('7','buffalo milk',2,3,7271,12),('70','buffalo milk',9,6,9078,11),('71','buffalo milk',4,2,1641,12),('72','buffalo milk',6,8,2276,13),('73','camel milk',1,7,8803,15),('74','goat milk',9,5,4854,15),('75','camel milk',1,8,2450,15),('76','camel milk',7,6,6357,10),('77','camel milk',10,5,6677,12),('78','goat milk',10,9,9711,15),('79','goat milk',4,9,3517,12),('8','camel milk',1,4,6617,13),('80','buffalo milk',10,2,1041,12),('81','camel milk',1,1,9060,10),('82','buffalo milk',0,9,3884,11),('83','buffalo milk',9,2,8013,15),('84','camel milk',4,5,5209,10),('85','camel milk',5,9,2853,13),('86','camel milk',4,2,6567,12),('87','goat milk',8,1,2639,10),('88','sugarcane',2,10,2962,12),('89','goat milk',10,10,9575,14),('9','goat milk',7,9,7513,10),('90','camel milk',2,10,8922,12),('91','sugarcane',8,3,6480,10),('92','goat milk',6,3,7102,11),('93','camel milk',2,9,8813,15),('94','sugarcane',10,7,6634,12),('95','goat milk',5,9,4030,15),('96','sugarcane',6,3,2622,13),('97','goat milk',1,1,7591,14),('98','buffalo milk',0,1,5013,10),('99','goat milk',9,7,8600,14);
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

-- Dump completed on 2023-02-10 21:14:55
