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
-- Table structure for table `preservative`
--

DROP TABLE IF EXISTS `preservative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preservative` (
  `product_id` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` int NOT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `preservative_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preservative`
--

LOCK TABLES `preservative` WRITE;
/*!40000 ALTER TABLE `preservative` DISABLE KEYS */;
INSERT INTO `preservative` VALUES ('mi08','E202',29),('ob08','Sodium citrate',22),('mi04','E202',23),('mt05','IN200',19),('co06','E160C',40),('da04','E202',18),('co13','IN234',12),('ck03','E415',10),('icm02','IN200',18),('mi08','IN200',36),('co12','Sodium citrate',7),('ce08','E415',1),('da03','Sodium citrate',15),('cs02','IN234',39),('gh04','IN200',10),('ob09','E415',30),('mi06','Sodium citrate',24),('co11','E160C',6),('ce04','IN234',33),('ce09','Sodium citrate',5),('cs03','Sodium citrate',15),('co11','E160C',2),('co02','E415',32),('co10','Sodium citrate',4),('icm04','E415',29),('ob07','Sodium citrate',25),('ict04','E202',19),('mt04','E160C',6),('icm05','IN234',30),('ob09','E202',29),('mt03','E415',7),('sp02','IN200',33),('ck05','E160C',19),('ce06','E202',15),('ob02','E202',4),('co04','IN200',16),('ob08','E415',2),('ict02','E415',14),('ce02','IN200',9),('bu04','IN200',25),('mi07','E202',33),('bu04','IN200',23),('ob09','IN234',37),('icm03','E415',18),('icc05','E160C',17),('mi06','E160C',2),('ob04','E415',33),('ce05','E202',33),('ob07','IN200',13),('ce02','Sodium citrate',21),('icc04','IN200',20),('icm01','E415',16),('co11','Sodium citrate',22),('gh01','E160C',39),('sp03','E415',1),('bu04','Sodium citrate',21),('ce09','Sodium citrate',23),('mt06','E160C',36),('icc03','IN200',0),('mp02','IN200',2),('bu01','Sodium citrate',17),('mt02','Sodium citrate',31),('icc03','IN234',21),('icc02','E160C',26),('ob04','IN200',2),('icm03','Sodium citrate',37),('ck02','E202',12),('icc05','IN200',6),('ict05','E415',3),('mt02','E160C',0),('icc01','Sodium citrate',32),('ict02','IN234',11),('ict02','E160C',26),('gh03','Sodium citrate',11),('icc05','IN234',9),('gh05','E202',28),('ck05','IN234',2),('co01','IN234',27),('pa02','IN234',22),('sp03','E202',13),('ck02','E202',9),('icm05','Sodium citrate',10),('mp02','E202',6),('bu03','E160C',18),('cr02','E415',22),('gh01','IN234',8),('ck04','IN234',25),('sp03','E160C',38),('gh01','Sodium citrate',19),('sp01','E415',6),('co04','IN234',31),('mi01','E160C',19),('sp01','IN200',22),('mi01','E160C',10),('ict01','E415',16),('ob05','IN234',17),('cs01','IN200',31),('cs03','E160C',1),('ce01','E202',2),('ce08','IN234',11);
/*!40000 ALTER TABLE `preservative` ENABLE KEYS */;
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
