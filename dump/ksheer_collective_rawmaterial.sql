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
-- Table structure for table `collective_rawmaterial`
--

DROP TABLE IF EXISTS `collective_rawmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collective_rawmaterial` (
  `collective_id` int NOT NULL,
  `raw_id` varchar(5) NOT NULL,
  `supply_date` date NOT NULL,
  `quantity` int NOT NULL,
  KEY `collective_id` (`collective_id`),
  KEY `raw_id` (`raw_id`),
  CONSTRAINT `collective_rawmaterial_ibfk_1` FOREIGN KEY (`collective_id`) REFERENCES `collective` (`collective_id`),
  CONSTRAINT `collective_rawmaterial_ibfk_2` FOREIGN KEY (`raw_id`) REFERENCES `raw_material` (`raw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collective_rawmaterial`
--

LOCK TABLES `collective_rawmaterial` WRITE;
/*!40000 ALTER TABLE `collective_rawmaterial` DISABLE KEYS */;
INSERT INTO `collective_rawmaterial` VALUES (65,'100','2022-01-12',4439),(51,'1','2022-02-01',3071),(69,'2','2022-02-11',2632),(100,'3','2022-02-12',4056),(97,'4','2022-04-17',4576),(58,'5','2022-01-15',2012),(24,'6','2022-02-20',3801),(32,'7','2022-04-07',2245),(20,'8','2022-04-03',4389),(16,'9','2022-01-13',1815),(58,'10','2022-04-13',3208),(95,'11','2022-02-04',3974),(33,'12','2022-04-27',3197),(81,'13','2022-03-06',3863),(69,'14','2022-01-22',1151),(40,'15','2022-03-07',4351),(85,'16','2022-01-09',2501),(14,'17','2022-03-26',1010),(90,'18','2022-05-01',2645),(34,'19','2022-02-07',2111),(21,'20','2022-02-15',1714),(33,'21','2022-03-28',3373),(12,'22','2022-02-07',4157),(98,'23','2022-02-03',2938),(42,'24','2022-03-09',2688),(74,'25','2022-04-23',2905),(66,'26','2022-01-28',3256),(17,'27','2022-01-07',4700),(3,'28','2022-03-06',1857),(26,'29','2022-01-09',2118),(22,'30','2022-01-31',2110),(86,'31','2022-04-06',2309),(19,'32','2022-02-05',1917),(24,'33','2022-03-19',1412),(64,'34','2022-03-27',2995),(23,'35','2022-03-20',3313),(7,'36','2022-03-24',5000),(14,'37','2022-04-22',1879),(33,'38','2022-01-30',2530),(65,'39','2022-02-19',1674),(60,'40','2022-04-26',2660),(39,'41','2022-04-19',2203),(75,'42','2022-03-24',1024),(44,'43','2022-01-29',3333),(16,'44','2022-03-08',1424),(6,'45','2022-03-28',3811),(18,'46','2022-04-20',2655),(49,'47','2022-03-13',3324),(70,'48','2022-03-26',4447),(35,'49','2022-01-15',1798),(83,'50','2022-03-02',3455),(25,'51','2022-04-15',3754),(40,'52','2022-02-26',4487),(95,'53','2022-04-16',3193),(74,'54','2022-03-27',3904),(21,'55','2022-04-26',2284),(90,'56','2022-01-05',2025),(80,'57','2022-01-15',1804),(58,'58','2022-02-11',3892),(21,'59','2022-04-13',1686),(91,'60','2022-01-18',4975),(5,'61','2022-03-27',2833),(34,'62','2022-01-01',3083),(53,'63','2022-02-23',1798),(20,'64','2022-04-06',3872),(27,'65','2022-05-01',2557),(22,'66','2022-04-06',3579),(7,'67','2022-04-02',1220),(38,'68','2022-02-26',3312),(46,'69','2022-04-30',1362),(56,'70','2022-03-31',4085),(65,'71','2022-01-07',1134),(79,'72','2022-01-13',2234),(28,'73','2022-01-21',1122),(2,'74','2022-03-17',4847),(73,'75','2022-03-16',3821),(71,'76','2022-02-19',2234),(97,'77','2022-02-19',2206),(78,'78','2022-01-11',3699),(15,'79','2022-02-26',4438),(77,'80','2022-05-01',2259),(46,'81','2022-03-04',2677),(87,'82','2022-01-17',3502),(20,'83','2022-01-03',1844),(28,'84','2022-02-20',3823),(30,'85','2022-03-07',3062),(76,'86','2022-04-20',1342),(24,'87','2022-01-04',4973),(12,'88','2022-02-18',4738),(59,'89','2022-04-06',1271),(69,'90','2022-04-18',3286),(8,'91','2022-04-29',1910),(41,'92','2022-02-03',2871),(49,'93','2022-03-03',2151),(97,'94','2022-04-02',2729),(52,'95','2022-03-12',4994),(37,'96','2022-03-29',4428),(36,'97','2022-03-14',4803),(94,'98','2022-04-02',3161),(70,'99','2022-02-10',4557);
/*!40000 ALTER TABLE `collective_rawmaterial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 21:14:57
