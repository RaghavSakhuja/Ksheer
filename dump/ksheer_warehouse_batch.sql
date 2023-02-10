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
-- Table structure for table `warehouse_batch`
--

DROP TABLE IF EXISTS `warehouse_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_batch` (
  `warehouse_id` int NOT NULL,
  `batch_id` int NOT NULL,
  KEY `warehouse_id` (`warehouse_id`),
  KEY `batch_id` (`batch_id`),
  CONSTRAINT `warehouse_batch_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`),
  CONSTRAINT `warehouse_batch_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_batch`
--

LOCK TABLES `warehouse_batch` WRITE;
/*!40000 ALTER TABLE `warehouse_batch` DISABLE KEYS */;
INSERT INTO `warehouse_batch` VALUES (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(3,12),(2,13),(3,14),(3,15),(3,16),(2,17),(4,18),(4,19),(4,20),(4,21),(3,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(5,30),(5,31),(5,32),(5,33),(5,34),(3,35),(5,36),(5,37),(5,38),(5,39),(5,40),(5,41),(5,42),(5,43),(5,44),(5,45),(5,46),(6,47),(5,48),(5,49),(6,50),(6,51),(6,52),(6,53),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(6,60),(6,61),(6,62),(7,63),(6,64),(7,65),(7,66),(7,67),(7,68),(7,69),(7,70),(7,71),(7,72),(7,73),(7,74),(7,75),(7,76),(7,77),(7,78),(8,79),(8,80),(8,81),(8,82),(8,83),(8,84),(8,85),(8,86),(8,87),(9,88),(9,89),(9,90),(8,91),(10,92),(10,93),(8,94),(10,95),(10,96),(11,97),(11,98),(11,99),(11,100),(9,101),(11,102),(11,103),(11,104),(11,105),(11,106),(11,107),(11,108),(12,109),(12,110),(10,111),(11,112),(14,113),(14,114),(14,115),(14,116),(14,117),(12,118),(14,119),(14,120),(14,121),(14,122),(14,123),(14,124),(14,125),(15,126),(15,127),(15,128),(15,129),(15,130),(15,131),(15,132),(14,133),(15,134),(15,135),(17,136),(15,137),(17,138),(18,139),(18,140),(18,141),(18,142),(18,143),(18,144),(18,145),(17,146),(17,147),(18,148),(18,149),(18,150),(18,151),(18,152),(20,153),(20,154),(20,155),(18,156),(18,157),(19,158),(20,159),(20,160),(20,161),(20,162),(20,163),(20,164),(20,165),(20,166),(20,167),(20,168),(20,169),(22,170),(21,171),(22,172),(22,173),(22,174),(22,175),(22,176),(22,177),(22,178),(22,179),(22,180),(18,181),(22,182),(22,183),(23,184),(23,185),(23,186),(22,187),(23,188),(23,189),(23,190),(19,191),(23,192),(23,193),(23,194),(23,195),(23,196),(23,197),(23,198),(20,199),(23,200),(23,201),(24,202),(23,203),(24,204),(24,205),(24,206),(21,207),(24,208),(24,209),(24,210),(24,211),(24,212),(24,213),(24,214),(23,215),(24,216),(25,217),(24,218),(25,219),(24,220),(25,221),(25,222),(26,223),(26,224),(26,225),(26,226),(26,227),(26,228),(26,229),(26,230),(26,231),(25,232),(26,233),(26,234),(27,235),(27,236),(27,237),(27,238),(27,239),(28,240),(28,241),(28,242),(28,243),(28,244),(28,245),(28,246),(28,247),(28,248),(29,249),(29,250),(27,251),(28,252),(29,253),(29,254),(24,255),(29,256),(29,257),(29,258),(29,259),(29,260),(29,261),(29,262),(29,263),(30,264),(29,265),(30,266),(29,267),(30,268),(30,269),(30,270),(30,271),(30,272),(30,273),(30,274),(30,275),(30,276),(30,277),(31,278),(30,279),(30,280),(31,281),(31,282),(31,283),(31,284),(31,285),(31,286),(31,287),(31,288),(31,289),(31,290),(31,291),(31,292),(31,293),(31,294),(32,295),(32,296),(32,297),(32,298),(32,299),(32,300);
/*!40000 ALTER TABLE `warehouse_batch` ENABLE KEYS */;
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
