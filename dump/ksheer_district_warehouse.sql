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
-- Table structure for table `district_warehouse`
--

DROP TABLE IF EXISTS `district_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district_warehouse` (
  `hq_id` int NOT NULL,
  `warehouse_id` int NOT NULL,
  KEY `hq_id` (`hq_id`),
  KEY `warehouse_id` (`warehouse_id`),
  CONSTRAINT `district_warehouse_ibfk_1` FOREIGN KEY (`hq_id`) REFERENCES `district_hq` (`hq_id`),
  CONSTRAINT `district_warehouse_ibfk_2` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_warehouse`
--

LOCK TABLES `district_warehouse` WRITE;
/*!40000 ALTER TABLE `district_warehouse` DISABLE KEYS */;
INSERT INTO `district_warehouse` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(5,29),(5,30),(5,31),(5,32),(5,33),(5,34),(5,35),(6,36),(6,37),(6,38),(6,39),(6,40),(6,41),(6,42),(7,43),(7,44),(7,45),(7,46),(7,47),(7,48),(7,49),(8,50),(8,51),(8,52),(8,53),(8,54),(8,55),(8,56),(9,57),(9,58),(9,59),(9,60),(9,61),(9,62),(9,63),(10,64),(10,65),(10,66),(10,67),(10,68),(10,69),(10,70),(11,71),(11,72),(11,73),(11,74),(11,75),(11,76),(11,77),(12,78),(12,79),(12,80),(12,81),(12,82),(12,83),(12,84),(13,85),(13,86),(13,87),(13,88),(13,89),(13,90),(13,91),(14,92),(14,93),(14,94),(14,95),(14,96),(14,97),(14,98),(15,99),(15,100),(15,101),(15,102),(15,103),(15,104),(15,105),(16,106),(16,107),(16,108),(16,109),(16,110),(16,111),(16,112),(17,113),(17,114),(17,115),(17,116),(17,117),(17,118),(17,119),(18,120),(18,121),(18,122),(18,123),(18,124),(18,125),(18,126),(19,127),(19,128),(19,129),(19,130),(19,131),(19,132),(19,133),(20,134),(20,135),(20,136),(20,137),(20,138),(20,139),(20,140);
/*!40000 ALTER TABLE `district_warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:52:26
