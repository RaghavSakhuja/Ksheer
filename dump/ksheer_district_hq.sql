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
-- Table structure for table `district_hq`
--

DROP TABLE IF EXISTS `district_hq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district_hq` (
  `hq_id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int NOT NULL,
  PRIMARY KEY (`hq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_hq`
--

LOCK TABLES `district_hq` WRITE;
/*!40000 ALTER TABLE `district_hq` DISABLE KEYS */;
INSERT INTO `district_hq` VALUES (1,'581 Phase 5, Udyog Vihar','New Delhi',122016),(2,'A Gali Anjaney Tmple St, Byatarayanapura, Mysore Road','Bangalore',560026),(3,'Vatva Station Road, Vatva','Ahemdabad',382445),(4,'Ballygunge Place, Ballygunj','Kolkata',700019),(5,'road:6, Balanagar','Hyderabad',500042),(6,'42, Ground Floor, M K M Chambers, K H Road','Chennai',600034),(7,'206 Bajson Ind Est, A Chakala, Sahar','Mumbai',400099),(8,'Banjari, Kolar Rd, Shri Ram Plaza','Bhopal',462036),(9,'Katra Sher Singh Hall Bazar','Amritsar',143001),(10,'Main Road, Cit Nagar East, Nandanam','Chennai',600035),(11,'Nr. Cash-n-carry, Ellora Park','Vadodra',390023),(12,'Rajindra Jaina Tower, Wazirpur','Delhi',110052),(13,'Basheerbagh','Andhra Pradesh',500001),(14,'Mount Road','Chennai',600002),(15,'Gandhipuram','Coimbatore',123456),(16,'Block Road Rosera','Rosera',848210),(17,'Azheekkal rd','Azheekal',690547),(18,'ITPL Main Rd, Whitefield','Bangalore',560048),(19,'Mahatma Gandhi Rd, Shivaji Nagar, Thane West','Thane',400602),(20,'Krishnapur Road, Near Damoria Pull, Near Railway Station','Kishanpur',144001);
/*!40000 ALTER TABLE `district_hq` ENABLE KEYS */;
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
