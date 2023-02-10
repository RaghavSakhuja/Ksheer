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
-- Table structure for table `retailer_warehouse`
--

DROP TABLE IF EXISTS `retailer_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retailer_warehouse` (
  `store_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  KEY `store_id` (`store_id`),
  KEY `warehouse_id` (`warehouse_id`),
  CONSTRAINT `retailer_warehouse_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `retailer` (`store_id`),
  CONSTRAINT `retailer_warehouse_ibfk_2` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_warehouse`
--

LOCK TABLES `retailer_warehouse` WRITE;
/*!40000 ALTER TABLE `retailer_warehouse` DISABLE KEYS */;
INSERT INTO `retailer_warehouse` VALUES (1,141),(2,142),(3,143),(4,144),(5,145),(6,146),(7,147),(8,148),(9,149),(10,150),(11,151),(12,152),(13,153),(14,154),(15,155),(16,156),(17,157),(18,158),(19,159),(20,160),(21,161),(22,162),(23,163),(24,164),(25,165),(26,166),(27,167),(28,168),(29,169),(30,170),(31,171),(32,172),(33,173),(34,174),(35,175),(36,176),(37,177),(38,178),(39,179),(40,180),(41,181),(42,182),(43,183),(44,184),(45,185),(46,186),(47,187),(48,188),(49,189),(50,190),(51,191),(52,192),(53,193),(54,194),(55,195),(56,196),(57,197),(58,198),(59,199),(60,200),(61,201),(62,202),(63,203),(64,204),(65,205),(66,206),(67,207),(68,208),(69,209),(70,210),(71,211),(72,212),(73,213),(74,214),(75,215),(76,216),(77,217),(78,218),(79,219),(80,220),(81,221),(82,222),(83,223),(84,224),(85,225),(86,226),(87,227),(88,228),(89,229),(90,230),(91,231),(92,232),(93,233),(94,234),(95,235),(96,236),(97,237);
/*!40000 ALTER TABLE `retailer_warehouse` ENABLE KEYS */;
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
