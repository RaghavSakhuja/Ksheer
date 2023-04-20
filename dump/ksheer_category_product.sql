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
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `cat_id` varchar(5) NOT NULL,
  `product_id` varchar(5) NOT NULL,
  KEY `cat_id` (`cat_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  CONSTRAINT `category_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES ('mi','mi01'),('mi','mi02'),('mi','mi03'),('mi','mi04'),('pa','pa01'),('bu','bu01'),('bu','bu02'),('bu','bu03'),('mi','mi05'),('mi','mi06'),('mi','mi07'),('mi','mi08'),('mi','mi09'),('mi','mi10'),('mi','mi11'),('bu','bu04'),('sp','sp01'),('sp','sp02'),('ce','ce01'),('ce','ce02'),('ce','ce03'),('ce','ce04'),('ce','ce05'),('ce','ce06'),('ce','ce07'),('ce','ce08'),('pa','pa02'),('da','da01'),('da','da02'),('ict','ict01'),('ict','ict02'),('ict','ict03'),('ict','ict04'),('icm','icm01'),('icm','icm02'),('icm','icm03'),('icm','icm04'),('icc','icc01'),('icc','icc02'),('icc','icc03'),('icc','icc04'),('da','da03'),('da','da04'),('da','da05'),('da','da06'),('mp','mp01'),('mp','mp02'),('mp','mp03'),('ce','ce09'),('co','co01'),('co','co02'),('co','co03'),('mt','mt01'),('mt','mt02'),('mt','mt03'),('mt','mt04'),('mt','mt05'),('mt','mt06'),('co','co04'),('co','co05'),('co','co06'),('co','co13'),('co','co07'),('co','co08'),('ob','ob01'),('ob','ob02'),('ob','ob03'),('ob','ob04'),('ob','ob05'),('ob','ob06'),('ob','ob07'),('ob','ob08'),('co','co09'),('sp','sp03'),('ob','ob09'),('co','co10'),('co','co11'),('co','co12'),('cr','cr01'),('cr','cr02'),('gh','gh01'),('gh','gh02'),('gh','gh03'),('gh','gh04'),('icm','icm05'),('icc','icc05'),('ict','ict05'),('icc','icc06'),('gh','gh05'),('gh','gh06');
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
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
