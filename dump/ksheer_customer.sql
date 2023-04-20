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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Aarav',27,'male','9313839988'),(2,'Advait',41,'male','9366288521'),(3,'Aryan',34,'male','9243095235'),(4,'Avni',45,'female','9677243737'),(5,'Aisha',26,'female','9295892408'),(6,'Anaya',31,'female','9050287982'),(7,'Arjun',40,'male','9647827476'),(8,'Arnav',50,'male','9998544162'),(9,'Atharva',31,'male','9922805522'),(10,'Aniket',33,'male','9520346742'),(11,'Aaradhya',27,'female','9967682924'),(12,'Aditi',43,'female','9351557943'),(13,'Aditya',46,'male','9208963982'),(14,'Alia',40,'female','9689066739'),(15,'Amrita',50,'female','9566866207'),(16,'Anand',45,'male','9281550207'),(17,'Anika',35,'female','9777853700'),(18,'Anjali',25,'female','9790525607'),(19,'Aryan',45,'male','9622462761'),(20,'Avikar',42,'male','9320482338'),(21,'Anushka',50,'female','9321978811'),(22,'Apoorva',39,'female','9435800348'),(23,'Aruna',43,'female','9139045298'),(24,'Ashwin',30,'male','9851579095'),(25,'Avantika',48,'female','9441068854'),(26,'Bala',44,'male','9623701274'),(27,'Chaitanya',36,'male','9173029945'),(28,'Devanshi',30,'female','9878266846'),(29,'Dhruv',34,'male','9992032681'),(30,'Diya',43,'female','9019953840'),(31,'Disha',20,'female','9553726229'),(32,'Divya',44,'female','9189255860'),(33,'Esha',23,'female','9802291035'),(34,'Gaurav',34,'male','9966819051'),(35,'Hrithik',32,'male','9433166590'),(36,'Ishaan',36,'male','9179669447'),(37,'Isha',34,'female','9308138926'),(38,'Jhanvi',26,'female','9353973987'),(39,'Jai',48,'male','9400476160'),(40,'Jaya',40,'female','9840407071'),(41,'Kavya',38,'female','9439561382'),(42,'Kritika',28,'female','9317625838'),(43,'Karthik',49,'male','9885116133'),(44,'Kavyanjali',50,'female','9329522471'),(45,'Keerthi',27,'female','9237983693'),(46,'Lakshmi',46,'female','9543607283'),(47,'Maitreyi',42,'male','9050807094'),(48,'Meera',34,'female','9750417316'),(49,'Mukesh',50,'male','9159540504'),(50,'Naina',29,'female','9653556550'),(51,'Nandini',50,'female','9597307476'),(52,'Neha',30,'female','9481783541'),(53,'Nishant',25,'male','9801383967'),(54,'Nithya',24,'female','9077974793'),(55,'Pallavi',22,'female','9262810982'),(56,'Parth',42,'male','9448212330'),(57,'Pranav',26,'male','9064282272'),(58,'Priya',29,'female','9273433874'),(59,'Raghav',41,'male','9487696223'),(60,'Ramesh',20,'male','9804478152'),(61,'Rishabh',32,'male','9985708558'),(62,'Rohit',26,'male','9561701795'),(63,'Saina',36,'female','9605021249'),(64,'Samarth',48,'male','9091105171'),(65,'Sanjana',48,'female','9461947228'),(66,'Sarika',28,'female','9515061008'),(67,'Shikha',22,'female','9035020725'),(68,'Shreya',20,'female','9301782953'),(69,'Shubham',49,'male','9179827669'),(70,'Siddharth',20,'male','9688440270'),(71,'Smriti',38,'female','9347926013'),(72,'Sonali',44,'female','9803446088'),(73,'Srinivas',26,'male','9815465817'),(74,'Suraj',20,'male','9848261649'),(75,'Tanuja',25,'male','9454084106'),(76,'Trisha',30,'female','9931839527'),(77,'Usha',47,'female','9269534913'),(78,'Varsha',44,'female','9647150514'),(79,'Vasudev',39,'male','9304933066'),(80,'Vedika',33,'female','9495809779'),(81,'Vidhi',23,'female','9303828453'),(82,'Vivaan',48,'male','9485432706'),(83,'Vivek',29,'male','9522514121'),(84,'Yash',41,'male','9460874911'),(85,'Yashika',22,'female','9135510868'),(86,'Yogesh',34,'male','9945223170'),(87,'Abhinav',34,'male','9791690953'),(88,'Aditi',32,'female','9674482737'),(89,'Aditya',24,'female','9961152961'),(90,'Akash',38,'male','9785206481'),(91,'Akshat',27,'male','9471447691'),(92,'Alok',42,'male','9861520602'),(93,'Amol',30,'male','9324361682'),(94,'Anant',48,'male','9967366805'),(95,'Anmol',28,'male','9793232946'),(96,'Arjun',48,'male','9422523239'),(97,'Arnav',32,'male','9749035474'),(98,'Arun',26,'male','9611881684'),(99,'Ashish',32,'male','9578443378'),(100,'Karan',22,'male','9798054301'),(102,'abc',32,'male','921234567'),(103,'check1',23,'femboy','12121212'),(104,'aa',12,'male','8800661555');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
