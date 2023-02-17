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
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `batch_id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(5) NOT NULL,
  `quantity` int NOT NULL,
  `production_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `batch_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES (1,'mi01',8000,'2022-12-26','2023-10-18'),(2,'mi02',10000,'2022-01-22','2022-11-10'),(3,'mi03',5000,'2022-09-17','2024-12-11'),(4,'mi04',5000,'2022-12-15','2024-11-11'),(5,'cs01',2000,'2022-09-13','2024-04-28'),(6,'cs02',7000,'2022-10-08','2024-12-21'),(7,'cs03',1000,'2022-11-09','2024-04-15'),(8,'cs04',2000,'2022-07-02','2023-09-11'),(9,'pa01',8000,'2022-11-30','2024-09-13'),(10,'bu01',3000,'2022-09-22','2023-04-27'),(11,'bu02',8000,'2022-04-19','2023-03-11'),(12,'bu03',7000,'2022-04-07','2022-01-27'),(13,'mi05',2000,'2022-10-04','2024-10-15'),(14,'mi06',8000,'2022-06-03','2022-01-28'),(15,'mi07',4000,'2022-01-24','2022-12-30'),(16,'mi08',9000,'2022-09-02','2022-12-05'),(17,'mi09',2000,'2022-08-28','2024-03-08'),(18,'mi10',6000,'2022-11-28','2022-06-11'),(19,'mi11',9000,'2022-09-24','2025-06-27'),(20,'bu04',4000,'2022-12-11','2025-11-29'),(21,'sp01',10000,'2022-04-01','2022-04-05'),(22,'sp02',2000,'2022-04-07','2022-11-13'),(23,'ce01',7000,'2022-07-26','2024-10-08'),(24,'ce02',9000,'2022-07-13','2025-04-12'),(25,'ce03',8000,'2022-08-13','2025-08-27'),(26,'ce04',7000,'2022-02-08','2023-12-24'),(27,'ce05',6000,'2022-12-02','2022-08-22'),(28,'ce06',4000,'2022-05-24','2024-04-24'),(29,'ce07',2000,'2022-06-05','2023-12-02'),(30,'ce08',10000,'2022-11-05','2024-09-05'),(31,'pa02',3000,'2022-02-16','2022-03-26'),(32,'da01',7000,'2022-07-01','2024-12-03'),(33,'da02',7000,'2022-06-23','2023-03-21'),(34,'ict01',7000,'2022-10-16','2025-04-06'),(35,'ict02',1000,'2022-05-21','2022-10-12'),(36,'ict03',6000,'2022-02-01','2024-10-01'),(37,'ict04',8000,'2022-03-24','2023-03-20'),(38,'icm01',8000,'2022-11-06','2023-05-05'),(39,'icm02',4000,'2022-01-11','2022-03-29'),(40,'icm03',6000,'2022-09-22','2024-10-28'),(41,'icm04',3000,'2022-05-30','2023-11-20'),(42,'icc01',2000,'2022-09-26','2025-03-03'),(43,'icc02',10000,'2022-11-10','2024-03-20'),(44,'icc03',1000,'2022-09-12','2023-01-09'),(45,'icc04',1000,'2023-01-04','2023-01-26'),(46,'da03',2000,'2023-01-10','2023-07-07'),(47,'da04',9000,'2022-09-02','2023-06-16'),(48,'da05',5000,'2022-05-11','2022-04-19'),(49,'da06',1000,'2022-08-25','2022-07-23'),(50,'mp01',5000,'2022-08-02','2024-09-23'),(51,'mp02',1000,'2022-03-13','2022-08-17'),(52,'mp03',8000,'2023-01-28','2025-02-03'),(53,'ce09',5000,'2022-03-15','2024-12-29'),(54,'ck01',5000,'2022-09-18','2023-07-21'),(55,'ck02',1000,'2022-11-18','2023-12-11'),(56,'ck03',5000,'2022-05-11','2025-02-10'),(57,'ck04',2000,'2022-03-19','2025-05-01'),(58,'ck05',8000,'2022-08-08','2024-06-19'),(59,'ck06',7000,'2022-07-10','2024-07-03'),(60,'co01',3000,'2022-06-02','2022-06-13'),(61,'co02',9000,'2022-06-02','2024-09-17'),(62,'co03',10000,'2022-02-01','2022-10-14'),(63,'mt01',5000,'2022-07-02','2024-12-21'),(64,'mt02',1000,'2023-01-28','2022-11-15'),(65,'mt03',1000,'2022-10-17','2025-11-23'),(66,'mt04',10000,'2022-08-19','2023-07-21'),(67,'mt05',9000,'2022-10-02','2024-09-04'),(68,'mt06',9000,'2022-08-24','2022-01-24'),(69,'co04',6000,'2022-12-14','2025-08-01'),(70,'co05',7000,'2022-09-08','2025-03-19'),(71,'co06',10000,'2022-05-02','2025-09-18'),(72,'co13',8000,'2022-12-12','2023-06-03'),(73,'co07',6000,'2022-01-25','2023-04-20'),(74,'co08',3000,'2022-01-12','2023-07-28'),(75,'ob01',1000,'2022-09-15','2024-11-25'),(76,'ob02',2000,'2022-05-03','2023-08-01'),(77,'ob03',9000,'2022-10-15','2024-02-25'),(78,'ob04',9000,'2022-12-25','2025-11-30'),(79,'ob05',8000,'2023-01-24','2025-10-14'),(80,'ob06',2000,'2022-03-18','2023-04-12'),(81,'ob07',9000,'2023-01-24','2022-04-30'),(82,'ob08',7000,'2022-07-13','2022-01-23'),(83,'co09',7000,'2022-02-23','2023-12-09'),(84,'sp03',9000,'2022-09-04','2022-09-23'),(85,'ob09',10000,'2022-03-20','2022-05-22'),(86,'co10',10000,'2023-01-06','2024-03-07'),(87,'co11',3000,'2022-05-25','2025-07-31'),(88,'co12',5000,'2022-04-09','2022-10-29'),(89,'cr01',4000,'2022-01-22','2022-08-11'),(90,'cr02',7000,'2022-03-02','2022-07-29'),(91,'gh01',2000,'2022-02-02','2025-08-13'),(92,'gh02',6000,'2022-12-20','2024-04-13'),(93,'gh03',5000,'2022-01-14','2024-01-11'),(94,'gh04',1000,'2022-09-18','2024-08-04'),(95,'icm05',6000,'2023-01-26','2022-03-12'),(96,'icc05',9000,'2022-08-01','2025-01-16'),(97,'ict05',4000,'2022-08-24','2022-11-17'),(98,'icc06',8000,'2022-03-19','2025-05-15'),(99,'gh05',8000,'2022-08-25','2023-10-24'),(100,'gh06',6000,'2022-08-07','2022-05-21'),(101,'mi01',2000,'2022-04-18','2023-03-23'),(102,'mi02',2000,'2022-08-07','2022-04-06'),(103,'mi03',8000,'2023-01-05','2023-09-15'),(104,'mi04',5000,'2022-08-28','2024-02-16'),(105,'cs01',9000,'2022-12-01','2022-11-01'),(106,'cs02',3000,'2022-10-25','2022-11-04'),(107,'cs03',9000,'2022-03-16','2022-01-01'),(108,'cs04',5000,'2022-05-31','2023-09-30'),(109,'pa01',6000,'2022-09-02','2024-08-07'),(110,'bu01',8000,'2022-01-19','2023-04-02'),(111,'bu02',1000,'2022-09-04','2023-04-10'),(112,'bu03',1000,'2022-11-28','2022-05-10'),(113,'mi05',3000,'2022-09-06','2025-12-01'),(114,'mi06',8000,'2022-07-29','2024-09-11'),(115,'mi07',8000,'2022-01-29','2024-04-17'),(116,'mi08',6000,'2022-02-20','2023-11-09'),(117,'mi09',6000,'2022-05-11','2024-06-12'),(118,'mi10',1000,'2022-12-21','2025-08-16'),(119,'mi11',5000,'2022-03-20','2023-11-03'),(120,'bu04',1000,'2022-02-23','2023-02-15'),(121,'sp01',3000,'2022-10-02','2023-09-22'),(122,'sp02',7000,'2022-01-20','2025-07-21'),(123,'ce01',8000,'2022-08-23','2024-07-20'),(124,'ce02',5000,'2022-02-05','2023-06-14'),(125,'ce03',9000,'2022-11-05','2024-08-10'),(126,'ce04',3000,'2022-04-10','2023-06-01'),(127,'ce05',6000,'2022-08-28','2023-08-15'),(128,'ce06',10000,'2022-09-19','2022-05-13'),(129,'ce07',10000,'2022-01-10','2022-07-28'),(130,'ce08',7000,'2022-07-11','2023-09-24'),(131,'pa02',4000,'2022-04-12','2023-12-03'),(132,'da01',8000,'2022-07-03','2025-02-22'),(133,'da02',1000,'2022-08-20','2025-06-20'),(134,'ict01',3000,'2023-01-13','2025-04-30'),(135,'ict02',5000,'2022-06-03','2023-05-09'),(136,'ict03',10000,'2022-11-13','2023-08-20'),(137,'ict04',7000,'2022-01-18','2025-10-28'),(138,'icm01',7000,'2022-04-26','2023-03-09'),(139,'icm02',10000,'2023-01-01','2024-02-23'),(140,'icm03',7000,'2022-09-18','2023-09-01'),(141,'icm04',4000,'2023-01-11','2025-03-02'),(142,'icc01',10000,'2022-01-04','2024-12-21'),(143,'icc02',6000,'2022-05-20','2022-11-10'),(144,'icc03',7000,'2022-08-06','2024-09-02'),(145,'icc04',7000,'2022-07-08','2024-04-03'),(146,'da03',1000,'2022-03-26','2023-02-18'),(147,'da04',1000,'2022-01-29','2023-04-29'),(148,'da05',2000,'2022-03-19','2025-01-26'),(149,'da06',9000,'2022-08-01','2025-12-19'),(150,'mp01',6000,'2022-05-07','2023-02-04'),(151,'mp02',10000,'2022-08-30','2023-03-03'),(152,'mp03',5000,'2022-04-02','2022-02-16'),(153,'ce09',5000,'2022-05-23','2024-12-20'),(154,'ck01',10000,'2022-12-29','2024-06-07'),(155,'ck02',7000,'2022-03-13','2025-10-03'),(156,'ck03',1000,'2022-12-04','2024-07-06'),(157,'ck04',2000,'2022-08-16','2022-10-20'),(158,'ck05',3000,'2022-07-22','2023-11-17'),(159,'ck06',8000,'2022-12-04','2024-02-20'),(160,'co01',7000,'2022-09-28','2024-11-19'),(161,'co02',7000,'2022-12-08','2024-05-03'),(162,'co03',8000,'2022-09-16','2025-03-25'),(163,'mt01',3000,'2022-11-29','2022-01-18'),(164,'mt02',4000,'2022-11-10','2025-03-01'),(165,'mt03',10000,'2022-02-28','2023-12-14'),(166,'mt04',3000,'2022-09-11','2022-07-29'),(167,'mt05',6000,'2022-05-03','2025-08-28'),(168,'mt06',6000,'2023-01-23','2024-04-24'),(169,'co04',10000,'2023-01-16','2023-07-31'),(170,'co05',10000,'2022-03-10','2022-10-17'),(171,'co06',5000,'2022-09-10','2025-12-23'),(172,'co13',7000,'2022-09-27','2024-10-16'),(173,'co07',2000,'2022-08-28','2022-12-19'),(174,'co08',3000,'2022-12-10','2025-03-12'),(175,'ob01',6000,'2023-01-10','2025-04-13'),(176,'ob02',2000,'2022-03-27','2025-02-17'),(177,'ob03',6000,'2022-07-25','2022-06-16'),(178,'ob04',10000,'2022-12-18','2025-03-12'),(179,'ob05',10000,'2022-03-19','2025-03-30'),(180,'ob06',3000,'2022-06-02','2023-01-14'),(181,'ob07',1000,'2022-08-28','2023-01-01'),(182,'ob08',5000,'2022-09-13','2024-08-08'),(183,'co09',8000,'2022-09-19','2024-09-27'),(184,'sp03',9000,'2022-07-19','2024-12-07'),(185,'ob09',4000,'2022-10-19','2023-02-03'),(186,'co10',9000,'2022-05-02','2022-02-27'),(187,'co11',3000,'2022-03-19','2022-09-21'),(188,'co12',2000,'2022-01-12','2025-11-18'),(189,'cr01',3000,'2022-03-29','2022-02-26'),(190,'cr02',7000,'2022-10-28','2025-05-04'),(191,'gh01',1000,'2022-03-20','2023-11-20'),(192,'gh02',6000,'2022-10-27','2024-11-27'),(193,'gh03',6000,'2022-06-29','2024-01-24'),(194,'gh04',3000,'2022-11-21','2023-02-01'),(195,'icm05',8000,'2022-12-06','2025-09-05'),(196,'icc05',6000,'2022-12-29','2024-05-09'),(197,'ict05',8000,'2022-03-14','2025-10-12'),(198,'icc06',8000,'2022-01-01','2023-04-14'),(199,'gh05',1000,'2022-09-30','2024-02-21'),(200,'gh06',4000,'2022-11-10','2022-02-10'),(201,'mi01',9000,'2022-05-19','2024-01-26'),(202,'mi02',9000,'2022-07-19','2022-11-07'),(203,'mi03',2000,'2022-11-04','2023-05-12'),(204,'mi04',4000,'2022-09-10','2025-06-06'),(205,'cs01',3000,'2022-07-12','2025-06-25'),(206,'cs02',10000,'2022-03-04','2024-11-08'),(207,'cs03',1000,'2022-07-03','2023-10-09'),(208,'cs04',4000,'2022-07-02','2025-11-07'),(209,'pa01',3000,'2022-06-18','2025-10-05'),(210,'bu01',7000,'2022-11-13','2024-04-22'),(211,'bu02',7000,'2022-12-22','2022-08-24'),(212,'bu03',9000,'2022-02-17','2023-08-28'),(213,'mi05',9000,'2022-08-12','2024-12-19'),(214,'mi06',5000,'2022-11-23','2023-01-14'),(215,'mi07',2000,'2022-04-14','2023-08-10'),(216,'mi08',6000,'2022-06-10','2023-08-06'),(217,'mi09',9000,'2022-04-21','2023-09-05'),(218,'mi10',1000,'2022-07-07','2023-12-26'),(219,'mi11',4000,'2022-07-16','2024-06-11'),(220,'bu04',1000,'2022-03-22','2022-12-11'),(221,'sp01',3000,'2022-10-28','2025-07-13'),(222,'sp02',10000,'2022-11-09','2022-06-26'),(223,'ce01',4000,'2022-04-07','2022-02-11'),(224,'ce02',8000,'2022-06-02','2025-10-10'),(225,'ce03',5000,'2022-09-09','2022-08-03'),(226,'ce04',9000,'2022-12-04','2024-04-30'),(227,'ce05',4000,'2022-05-02','2025-06-15'),(228,'ce06',7000,'2022-10-20','2022-05-25'),(229,'ce07',8000,'2022-05-20','2025-01-28'),(230,'ce08',7000,'2022-02-04','2025-07-06'),(231,'pa02',7000,'2023-01-30','2023-07-07'),(232,'da01',2000,'2022-08-05','2025-07-11'),(233,'da02',8000,'2022-10-01','2023-05-27'),(234,'ict01',6000,'2022-02-26','2025-06-01'),(235,'ict02',7000,'2022-10-10','2023-12-06'),(236,'ict03',5000,'2022-06-25','2023-05-21'),(237,'ict04',7000,'2022-01-02','2024-05-16'),(238,'icm01',5000,'2022-08-02','2023-10-03'),(239,'icm02',8000,'2022-10-03','2024-04-11'),(240,'icm03',5000,'2022-11-16','2022-03-31'),(241,'icm04',8000,'2022-11-14','2022-07-22'),(242,'icc01',7000,'2022-08-28','2023-12-07'),(243,'icc02',10000,'2022-03-06','2025-07-27'),(244,'icc03',10000,'2022-12-12','2024-06-14'),(245,'icc04',3000,'2022-11-29','2022-01-02'),(246,'da03',3000,'2022-02-05','2022-10-09'),(247,'da04',6000,'2022-02-23','2022-01-30'),(248,'da05',6000,'2022-07-17','2024-12-20'),(249,'da06',7000,'2022-03-11','2023-07-08'),(250,'mp01',8000,'2023-01-25','2022-01-04'),(251,'mp02',2000,'2022-10-29','2025-07-25'),(252,'mp03',6000,'2022-01-19','2024-12-11'),(253,'ce09',2000,'2023-01-11','2025-12-31'),(254,'ck01',3000,'2022-06-09','2023-04-17'),(255,'ck02',1000,'2022-08-21','2024-11-10'),(256,'ck03',5000,'2022-10-31','2025-04-17'),(257,'ck04',4000,'2022-01-26','2025-07-16'),(258,'ck05',8000,'2022-02-07','2022-04-16'),(259,'ck06',4000,'2022-11-11','2024-12-15'),(260,'co01',10000,'2022-07-19','2024-05-26'),(261,'co02',6000,'2022-12-15','2023-09-02'),(262,'co03',2000,'2022-05-01','2025-04-20'),(263,'mt01',7000,'2022-08-19','2024-04-06'),(264,'mt02',10000,'2022-11-20','2022-08-01'),(265,'mt03',4000,'2022-01-20','2024-04-13'),(266,'mt04',8000,'2022-05-11','2024-04-29'),(267,'mt05',4000,'2022-05-11','2024-11-14'),(268,'mt06',4000,'2022-08-05','2022-05-04'),(269,'co04',2000,'2023-01-22','2022-06-13'),(270,'co05',5000,'2022-11-25','2023-05-07'),(271,'co06',3000,'2022-01-01','2023-04-06'),(272,'co13',6000,'2022-07-19','2025-09-12'),(273,'co07',10000,'2022-08-22','2024-05-30'),(274,'co08',6000,'2022-04-15','2022-05-06'),(275,'ob01',2000,'2022-04-11','2025-07-16'),(276,'ob02',2000,'2022-06-26','2024-09-17'),(277,'ob03',9000,'2022-07-19','2022-10-26'),(278,'ob04',10000,'2022-04-08','2023-10-01'),(279,'ob05',2000,'2022-01-21','2022-07-12'),(280,'ob06',1000,'2022-03-28','2025-08-22'),(281,'ob07',8000,'2022-04-18','2022-07-06'),(282,'ob08',8000,'2022-04-02','2023-02-07'),(283,'co09',10000,'2022-08-03','2023-05-13'),(284,'sp03',4000,'2022-03-28','2025-11-10'),(285,'ob09',1000,'2022-08-28','2023-11-12'),(286,'co10',2000,'2022-07-22','2023-03-29'),(287,'co11',4000,'2022-11-20','2023-10-21'),(288,'co12',1000,'2022-12-25','2023-07-28'),(289,'cr01',5000,'2022-06-12','2022-03-13'),(290,'cr02',3000,'2022-04-15','2024-02-04'),(291,'gh01',3000,'2022-02-13','2025-04-30'),(292,'gh02',7000,'2022-12-25','2024-04-13'),(293,'gh03',8000,'2022-08-30','2025-01-09'),(294,'gh04',10000,'2022-03-09','2025-07-22'),(295,'icm05',3000,'2022-09-28','2025-12-21'),(296,'icc05',8000,'2022-05-03','2023-11-09'),(297,'ict05',7000,'2022-05-21','2024-03-16'),(298,'icc06',6000,'2022-08-01','2022-08-08'),(299,'gh05',2000,'2022-01-15','2024-03-17'),(300,'gh06',7000,'2022-05-18','2023-07-02');
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 21:14:56