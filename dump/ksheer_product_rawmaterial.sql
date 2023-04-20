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
-- Table structure for table `product_rawmaterial`
--

DROP TABLE IF EXISTS `product_rawmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_rawmaterial` (
  `product_id` varchar(10) DEFAULT NULL,
  `raw_id` varchar(10) DEFAULT NULL,
  `quantity_perpiece` float DEFAULT NULL,
  KEY `product_id` (`product_id`),
  KEY `raw_id` (`raw_id`),
  CONSTRAINT `product_rawmaterial_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `product_rawmaterial_ibfk_2` FOREIGN KEY (`raw_id`) REFERENCES `raw_material` (`raw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_rawmaterial`
--

LOCK TABLES `product_rawmaterial` WRITE;
/*!40000 ALTER TABLE `product_rawmaterial` DISABLE KEYS */;
INSERT INTO `product_rawmaterial` VALUES ('bu01','bmd',2),('bu02','cmc',2),('bu03','cmd',2),('bu04','bme',2),('ce01','ame',2),('ce02','ame',2),('ce03','ame',2),('ce04','ame',2),('ce05','ame',2),('ce06','ame',2),('ce07','ame',2),('ce08','ame',2),('ck01','ama',1),('ck02','amc',1),('ck03','gma',1),('ck04','gmb',1),('ck05','cmb',1),('ck06','gma',1),('co01','ama',0.5),('co02','amc',0.5),('co03','gmc',0.5),('co04','gmd',0.5),('co05','gme',0.5),('co06','cma',0.5),('co07','bma',0.5),('co08','cmb',0.5),('co09','bmc',0.5),('co10','cmc',1),('co11','amd',1),('co12','gma',1),('co13','gme',1),('cr01','bme',1),('cr02','cme',1),('cs01','che',1),('cs02','che',1),('cs03','che',1),('cs04','che',1),('da01','cma',1),('da02','cmb',1),('da03','bmb',1),('da04','bma',1),('da05','amd',1),('da06','gmb',1),('gh01','bmc',3),('gh02','cme',3),('gh03','cmd',3),('gh04','bme',3),('gh05','amd',3),('gh06','sc',3),('icc01','ama',1),('icc02','amb',1),('icc03','amc',1),('icc04','gma',1),('icc05','gmb',1),('icc06','gmc',1),('icm01','cma',1),('icm02','cmc',1),('icm03','cmb',1),('icm04','bma',1),('icm05','bmb',1),('ict01','cma',1),('ict02','ama',1),('ict03','gmb',1),('ict04','gmd',1),('ict05','gmc',1),('ll69','che',1),('mi01','gma',1),('mi02','che',1),('mi03','cmd',1),('mi04','cme',1),('mi05','amd',1),('mi06','cme',1),('mi07','bme',1),('mi08','gma',1),('mi09','bmb',1),('mi10','bme',1),('mi11','che',1),('mp01','gme',1),('mp02','cme',1),('mp03','bme',1),('mt01','sc',1),('mt02','sc',1),('mt03','sc',1),('mt04','sc',1),('mt05','sc',1),('mt06','sc',1),('ob01','ama',1),('ob02','bma',1),('ob03','cma',1),('ob04','gma',1),('ob05','gmb',1),('ob06','bmb',1),('ob08','amb',1),('ob09','amc',1),('pa01','cmd',1),('pa02','cmc',1),('sp01','bmc',1),('sp02','bmd',1),('sp03','sc',1),('icc01','sc',1),('icc02','sc',1),('icc03','sc',1),('icc04','sc',1),('icc05','sc',1),('icc06','sc',1),('icm01','sc',1),('icm02','sc',1),('icm03','sc',1),('icm04','sc',1),('icm05','sc',1),('ict01','sc',1),('ict02','sc',1),('ict03','sc',1),('ict04','sc',1),('ict05','sc',1),('ce09','cmc',2),('ob07','bmb',1);
/*!40000 ALTER TABLE `product_rawmaterial` ENABLE KEYS */;
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
