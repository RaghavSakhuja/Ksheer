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
-- Table structure for table `executive`
--

DROP TABLE IF EXISTS `executive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `executive` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `hq_id` int NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `username` (`username`),
  KEY `hq_id` (`hq_id`),
  CONSTRAINT `executive_ibfk_1` FOREIGN KEY (`hq_id`) REFERENCES `district_hq` (`hq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `executive`
--

LOCK TABLES `executive` WRITE;
/*!40000 ALTER TABLE `executive` DISABLE KEYS */;
INSERT INTO `executive` VALUES (1,'Aarav_2','Aarav','Aarav_2','HR',2),(2,'Advait_3','Advait','Advait_3','Manufacturing',10),(3,'Aryan_4',' Aryan',' Aryan_4','Manufacturing',20),(4,'Avni_5',' Avni',' Avni_5','Supply Chain Management',7),(5,'Aisha_6',' Aisha',' Aisha_6','Manufacturing',10),(6,'Anaya_7',' Anaya',' Anaya_7','Business Development',2),(7,'Arjun_8',' Arjun',' Arjun_8','Health and Safety',2),(8,'Arnav_9',' Arnav',' Arnav_9','HR',2),(9,'Atharva_10',' Atharva',' Atharva_10','Finance and Accounting',10),(10,'Aniket_11',' Aniket',' Aniket_11','IT',14),(11,'Aaradhya_12',' Aaradhya',' Aaradhya_12','Finance and Accounting',18),(12,'Aditi_13',' Aditi',' Aditi_13','Procurement',20),(13,'Aditya_14',' Aditya',' Aditya_14','Manufacturing',13),(14,'Alia_15',' Alia',' Alia_15','Security',18),(15,'Amrita_16',' Amrita',' Amrita_16','Security',8),(16,'Anand_17',' Anand',' Anand_17','RnD',14),(17,'Anika_18',' Anika',' Anika_18','Health and Safety',14),(18,'Anjali_19',' Anjali',' Anjali_19','HR',20),(19,'Aryan_20',' Aryan',' Aryan_20','Business Development',15),(20,'Avikar_21',' Avikar',' Avikar_21','Health and Safety',20),(21,'Anushka_22',' Anushka',' Anushka_22','RnD',13),(22,'Apoorva_23',' Apoorva',' Apoorva_23','Procurement',18),(23,'Aruna_24',' Aruna',' Aruna_24','Security',15),(24,'Ashwin_25',' Ashwin',' Ashwin_25','Procurement',9),(25,'Avantika_26',' Avantika',' Avantika_26','Business Development',6),(26,'Bala_27',' Bala',' Bala_27','Business Development',19),(27,'Chaitanya_28',' Chaitanya',' Chaitanya_28','Business Development',19),(28,'Devanshi_29',' Devanshi',' Devanshi_29','Finance and Accounting',5),(29,'Dhruv_30',' Dhruv',' Dhruv_30','Facilities Management',4),(30,'Diya_31',' Diya',' Diya_31','Business Development',18),(31,'Disha_32',' Disha',' Disha_32','Supply Chain Management',5),(32,'Divya_33',' Divya',' Divya_33','Procurement',13),(33,'Esha_34',' Esha',' Esha_34','Supply Chain Management',17),(34,'Gaurav_35',' Gaurav',' Gaurav_35','Supply Chain Management',11),(35,'Hrithik_36',' Hrithik',' Hrithik_36','Legal',20),(36,'Ishaan_37',' Ishaan',' Ishaan_37','Finance and Accounting',16),(37,'Isha_38',' Isha',' Isha_38','RnD',10),(38,'Jhanvi_39',' Jhanvi',' Jhanvi_39','Health and Safety',18),(39,'Jai_40',' Jai',' Jai_40','Facilities Management',2),(40,'Jaya_41',' Jaya',' Jaya_41','Health and Safety',6),(41,'Kavya_42',' Kavya',' Kavya_42','Supply Chain Management',12),(42,'Kritika_43',' Kritika',' Kritika_43','Security',6),(43,'Karthik_44',' Karthik',' Karthik_44','Supply Chain Management',9),(44,'Kavyanjali_45',' Kavyanjali',' Kavyanjali_45','Design',13),(45,'Keerthi_46',' Keerthi',' Keerthi_46','Facilities Management',13),(46,'Lakshmi_47',' Lakshmi',' Lakshmi_47','Security',20),(47,'Maitreyi_48',' Maitreyi',' Maitreyi_48','HR',1),(48,'Meera_49',' Meera',' Meera_49','HR',17),(49,'Mukesh_50',' Mukesh',' Mukesh_50','Manufacturing',13),(50,'Naina_51',' Naina',' Naina_51','Design',19),(51,'Nandini_52',' Nandini',' Nandini_52','Legal',10),(52,'Neha_53',' Neha',' Neha_53','Health and Safety',9),(53,'Nishant_54',' Nishant',' Nishant_54','Manufacturing',9),(54,'Nithya_55',' Nithya',' Nithya_55','IT',5),(55,'Pallavi_56',' Pallavi',' Pallavi_56','Supply Chain Management',14),(56,'Parth_57',' Parth',' Parth_57','RnD',5),(57,'Pranav_58',' Pranav',' Pranav_58','Supply Chain Management',2),(58,'Priya_59',' Priya',' Priya_59','Security',16),(59,'Raghav_60',' Raghav',' Raghav_60','Health and Safety',11),(60,'Ramesh_61',' Ramesh',' Ramesh_61','Manufacturing',8),(61,'Rishabh_62',' Rishabh',' Rishabh_62','Manufacturing',18),(62,'Rohit_63',' Rohit',' Rohit_63','Manufacturing',9),(63,'Saina_64',' Saina',' Saina_64','HR',5),(64,'Samarth_65',' Samarth',' Samarth_65','Operations',7),(65,'Sanjana_66',' Sanjana',' Sanjana_66','HR',11),(66,'Sarika_67',' Sarika',' Sarika_67','Procurement',19),(67,'Shikha_68',' Shikha',' Shikha_68','HR',17),(68,'Shreya_69',' Shreya',' Shreya_69','Manufacturing',15),(69,'Shubham_70',' Shubham',' Shubham_70','Facilities Management',19),(70,'Siddharth_71',' Siddharth',' Siddharth_71','Business Development',19),(71,'Smriti_72',' Smriti',' Smriti_72','Procurement',16),(72,'Sonali_73',' Sonali',' Sonali_73','Security',20),(73,'Srinivas_74',' Srinivas',' Srinivas_74','IT',9),(74,'Suraj_75',' Suraj',' Suraj_75','IT',18),(75,'Tanuja_76',' Tanuja',' Tanuja_76','Manufacturing',16),(76,'Trisha_77',' Trisha',' Trisha_77','Security',19),(77,'Usha_78',' Usha',' Usha_78','IT',1),(78,'Varsha_79',' Varsha',' Varsha_79','Security',2),(79,'Vasudev_80',' Vasudev',' Vasudev_80','Facilities Management',11),(80,'Vedika_81',' Vedika',' Vedika_81','HR',16),(81,'Vidhi_82',' Vidhi',' Vidhi_82','Finance and Accounting',2),(82,'Vivaan_83',' Vivaan',' Vivaan_83','RnD',1),(83,'Vivek_84',' Vivek',' Vivek_84','Security',6),(84,'Yash_85',' Yash',' Yash_85','HR',11),(85,'Yashika_86',' Yashika',' Yashika_86','Business Development',19),(86,'Yogesh_87',' Yogesh',' Yogesh_87','Security',7),(87,'Abhinav_88',' Abhinav',' Abhinav_88','RnD',13),(88,'Aditi_89',' Aditi',' Aditi_89','Supply Chain Management',1),(89,'Aditya_90',' Aditya',' Aditya_90','RnD',13),(90,'Akash_91',' Akash',' Akash_91','Legal',15),(91,'Akshat_92',' Akshat',' Akshat_92','HR',12),(92,'Alok_93',' Alok',' Alok_93','Health and Safety',17),(93,'Amol_94',' Amol',' Amol_94','Procurement',3),(94,'Anant_95',' Anant',' Anant_95','Finance and Accounting',4),(95,'Anmol_96',' Anmol',' Anmol_96','Finance and Accounting',18),(96,'Arjun_97',' Arjun',' Arjun_97','HR',12),(97,'Arnav_98',' Arnav',' Arnav_98','Security',11),(98,'Arun_99',' Arun',' Arun_99','Design',2),(99,'Ashish_100',' Ashish',' Ashish_100','Procurement',20),(100,'Karan_101','Karan','Karan_101','IT',2);
/*!40000 ALTER TABLE `executive` ENABLE KEYS */;
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
