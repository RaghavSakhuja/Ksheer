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
INSERT INTO `collective_rawmaterial` VALUES (65,'gma','2022-01-12',4439),(51,'gmb','2022-02-01',3071),(69,'gmc','2022-02-11',2632),(100,'gmd','2022-02-12',4056),(97,'gme','2022-04-17',4576),(58,'cma','2022-01-15',2012),(24,'cmb','2022-02-20',3801),(32,'cmc','2022-04-07',2245),(20,'cmd','2022-04-03',4389),(16,'cme','2022-01-13',1815),(58,'bma','2022-04-13',3208),(95,'bmb','2022-02-04',3974),(33,'bmc','2022-04-27',3197),(81,'bmd','2022-03-06',3863),(69,'bme','2022-01-22',1151),(40,'ama','2022-03-07',4351),(85,'amb','2022-01-09',2501),(14,'amc','2022-03-26',1010),(90,'amd','2022-05-01',2645),(34,'ame','2022-02-07',2111),(21,'sc','2022-02-15',1714),(33,'gma','2022-03-28',3373),(12,'gmb','2022-02-07',4157),(98,'gmc','2022-02-03',2938),(42,'gmd','2022-03-09',2688),(74,'gme','2022-04-23',2905),(66,'cma','2022-01-28',3256),(17,'cmb','2022-01-07',4700),(3,'cmc','2022-03-06',1857),(26,'cmd','2022-01-09',2118),(22,'cme','2022-01-31',2110),(86,'bma','2022-04-06',2309),(19,'bmb','2022-02-05',1917),(24,'bmc','2022-03-19',1412),(64,'bmd','2022-03-27',2995),(23,'bme','2022-03-20',3313),(7,'ama','2022-03-24',5000),(14,'amb','2022-04-22',1879),(33,'amc','2022-01-30',2530),(65,'amd','2022-02-19',1674),(60,'ame','2022-04-26',2660),(39,'sc','2022-04-19',2203),(75,'gma','2022-03-24',1024),(44,'gmb','2022-01-29',3333),(16,'gmc','2022-03-08',1424),(6,'gmd','2022-03-28',3811),(18,'gme','2022-04-20',2655),(49,'cma','2022-03-13',3324),(70,'cmb','2022-03-26',4447),(35,'cmc','2022-01-15',1798),(83,'cmd','2022-03-02',3455),(25,'cme','2022-04-15',3754),(40,'bma','2022-02-26',4487),(95,'bmb','2022-04-16',3193),(74,'bmc','2022-03-27',3904),(21,'bmd','2022-04-26',2284),(90,'bme','2022-01-05',2025),(80,'ama','2022-01-15',1804),(58,'amb','2022-02-11',3892),(21,'amc','2022-04-13',1686),(91,'amd','2022-01-18',4975),(5,'ame','2022-03-27',2833),(34,'sc','2022-01-01',3083),(53,'gma','2022-02-23',1798),(20,'gmb','2022-04-06',3872),(27,'gmc','2022-05-01',2557),(22,'gmd','2022-04-06',3579),(7,'gme','2022-04-02',1220),(38,'cma','2022-02-26',3312),(46,'cmb','2022-04-30',1362),(56,'cmc','2022-03-31',4085),(65,'cmd','2022-01-07',1134),(79,'cme','2022-01-13',2234),(28,'bma','2022-01-21',1122),(2,'bmb','2022-03-17',4847),(73,'bmc','2022-03-16',3821),(71,'bmd','2022-02-19',2234),(97,'bme','2022-02-19',2206),(78,'ama','2022-01-11',3699),(15,'amb','2022-02-26',4438),(77,'amc','2022-05-01',2259),(46,'amd','2022-03-04',2677),(87,'ame','2022-01-17',3502),(20,'gma','2022-01-03',1844),(28,'gmb','2022-02-20',3823),(30,'gmc','2022-03-07',3062),(76,'gmd','2022-04-20',1342),(24,'gme','2022-01-04',4973),(12,'cma','2022-02-18',4738),(59,'cmb','2022-04-06',1271),(69,'cmc','2022-04-18',3286),(8,'cmd','2022-04-29',1910),(41,'cme','2022-02-03',2871),(49,'bma','2022-03-03',2151),(97,'bmb','2022-04-02',2729),(52,'bmc','2022-03-12',4994),(37,'bmd','2022-03-29',4428),(36,'bme','2022-03-14',4803),(94,'ama','2022-04-02',3161),(70,'amb','2022-02-10',4557);
/*!40000 ALTER TABLE `collective_rawmaterial` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_rawmaterial_and_collective_balance` AFTER INSERT ON `collective_rawmaterial` FOR EACH ROW BEGIN
  
  UPDATE raw_material
  SET amount = amount + NEW.quantity
  WHERE raw_id = NEW.raw_id;

  
  UPDATE collective,raw_material 
  SET balance = balance + (NEW.quantity * rate)
  WHERE collective_id = NEW.collective_id and NEW.raw_id=raw_material.raw_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:52:27
