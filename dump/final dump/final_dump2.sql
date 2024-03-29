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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add batch',1,'add_batch'),(2,'Can change batch',1,'change_batch'),(3,'Can delete batch',1,'delete_batch'),(4,'Can view batch',1,'view_batch'),(5,'Can add bill',2,'add_bill'),(6,'Can change bill',2,'change_bill'),(7,'Can delete bill',2,'delete_bill'),(8,'Can view bill',2,'view_bill'),(9,'Can add bill product',3,'add_billproduct'),(10,'Can change bill product',3,'change_billproduct'),(11,'Can delete bill product',3,'delete_billproduct'),(12,'Can view bill product',3,'view_billproduct'),(13,'Can add collective',4,'add_collective'),(14,'Can change collective',4,'change_collective'),(15,'Can delete collective',4,'delete_collective'),(16,'Can view collective',4,'view_collective'),(17,'Can add collective phone',5,'add_collectivephone'),(18,'Can change collective phone',5,'change_collectivephone'),(19,'Can delete collective phone',5,'delete_collectivephone'),(20,'Can view collective phone',5,'view_collectivephone'),(21,'Can add collective rawmaterial',6,'add_collectiverawmaterial'),(22,'Can change collective rawmaterial',6,'change_collectiverawmaterial'),(23,'Can delete collective rawmaterial',6,'delete_collectiverawmaterial'),(24,'Can view collective rawmaterial',6,'view_collectiverawmaterial'),(25,'Can add customer',7,'add_customer'),(26,'Can change customer',7,'change_customer'),(27,'Can delete customer',7,'delete_customer'),(28,'Can view customer',7,'view_customer'),(29,'Can add district hq',8,'add_districthq'),(30,'Can change district hq',8,'change_districthq'),(31,'Can delete district hq',8,'delete_districthq'),(32,'Can view district hq',8,'view_districthq'),(33,'Can add district warehouse',9,'add_districtwarehouse'),(34,'Can change district warehouse',9,'change_districtwarehouse'),(35,'Can delete district warehouse',9,'delete_districtwarehouse'),(36,'Can view district warehouse',9,'view_districtwarehouse'),(37,'Can add executive',10,'add_executive'),(38,'Can change executive',10,'change_executive'),(39,'Can delete executive',10,'delete_executive'),(40,'Can view executive',10,'view_executive'),(41,'Can add preservative',11,'add_preservative'),(42,'Can change preservative',11,'change_preservative'),(43,'Can delete preservative',11,'delete_preservative'),(44,'Can view preservative',11,'view_preservative'),(45,'Can add product',12,'add_product'),(46,'Can change product',12,'change_product'),(47,'Can delete product',12,'delete_product'),(48,'Can view product',12,'view_product'),(49,'Can add raw material',13,'add_rawmaterial'),(50,'Can change raw material',13,'change_rawmaterial'),(51,'Can delete raw material',13,'delete_rawmaterial'),(52,'Can view raw material',13,'view_rawmaterial'),(53,'Can add rawmaterial used',14,'add_rawmaterialused'),(54,'Can change rawmaterial used',14,'change_rawmaterialused'),(55,'Can delete rawmaterial used',14,'delete_rawmaterialused'),(56,'Can view rawmaterial used',14,'view_rawmaterialused'),(57,'Can add retailer',15,'add_retailer'),(58,'Can change retailer',15,'change_retailer'),(59,'Can delete retailer',15,'delete_retailer'),(60,'Can view retailer',15,'view_retailer'),(61,'Can add retailer phone',16,'add_retailerphone'),(62,'Can change retailer phone',16,'change_retailerphone'),(63,'Can delete retailer phone',16,'delete_retailerphone'),(64,'Can view retailer phone',16,'view_retailerphone'),(65,'Can add retailer warehouse',17,'add_retailerwarehouse'),(66,'Can change retailer warehouse',17,'change_retailerwarehouse'),(67,'Can delete retailer warehouse',17,'delete_retailerwarehouse'),(68,'Can view retailer warehouse',17,'view_retailerwarehouse'),(69,'Can add warehouse',18,'add_warehouse'),(70,'Can change warehouse',18,'change_warehouse'),(71,'Can delete warehouse',18,'delete_warehouse'),(72,'Can view warehouse',18,'view_warehouse'),(73,'Can add warehouse batch',19,'add_warehousebatch'),(74,'Can change warehouse batch',19,'change_warehousebatch'),(75,'Can delete warehouse batch',19,'delete_warehousebatch'),(76,'Can view warehouse batch',19,'view_warehousebatch'),(77,'Can add log entry',20,'add_logentry'),(78,'Can change log entry',20,'change_logentry'),(79,'Can delete log entry',20,'delete_logentry'),(80,'Can view log entry',20,'view_logentry'),(81,'Can add permission',21,'add_permission'),(82,'Can change permission',21,'change_permission'),(83,'Can delete permission',21,'delete_permission'),(84,'Can view permission',21,'view_permission'),(85,'Can add group',22,'add_group'),(86,'Can change group',22,'change_group'),(87,'Can delete group',22,'delete_group'),(88,'Can view group',22,'view_group'),(89,'Can add user',23,'add_user'),(90,'Can change user',23,'change_user'),(91,'Can delete user',23,'delete_user'),(92,'Can view user',23,'view_user'),(93,'Can add content type',24,'add_contenttype'),(94,'Can change content type',24,'change_contenttype'),(95,'Can delete content type',24,'delete_contenttype'),(96,'Can view content type',24,'view_contenttype'),(97,'Can add session',25,'add_session'),(98,'Can change session',25,'change_session'),(99,'Can delete session',25,'delete_session'),(100,'Can view session',25,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES (1,'mi01',8000,'2022-12-26','2023-10-18'),(2,'mi02',10000,'2022-01-22','2022-11-10'),(3,'mi03',5000,'2022-09-17','2024-12-11'),(4,'mi04',5000,'2022-12-15','2024-11-11'),(5,'cs01',2000,'2022-09-13','2024-04-28'),(6,'cs02',7000,'2022-10-08','2024-12-21'),(7,'cs03',1000,'2022-11-09','2024-04-15'),(8,'cs04',2000,'2022-07-02','2023-09-11'),(9,'pa01',8000,'2022-11-30','2024-09-13'),(10,'bu01',3000,'2022-09-22','2023-04-27'),(11,'bu02',8000,'2022-04-19','2023-03-11'),(12,'bu03',6997,'2022-04-07','2022-01-27'),(13,'mi05',2000,'2022-10-04','2024-10-15'),(14,'mi06',8000,'2022-06-03','2022-01-28'),(15,'mi07',4000,'2022-01-24','2022-12-30'),(16,'mi08',8991,'2022-09-02','2022-12-05'),(17,'mi09',2000,'2022-08-28','2024-03-08'),(18,'mi10',6000,'2022-11-28','2022-06-11'),(19,'mi11',9000,'2022-09-24','2025-06-27'),(20,'bu04',4000,'2022-12-11','2025-11-29'),(21,'sp01',10000,'2022-04-01','2022-04-05'),(22,'sp02',2000,'2022-04-07','2022-11-13'),(23,'ce01',7000,'2022-07-26','2024-10-08'),(24,'ce02',9000,'2022-07-13','2025-04-12'),(25,'ce03',8000,'2022-08-13','2025-08-27'),(26,'ce04',7000,'2022-02-08','2023-12-24'),(27,'ce05',6000,'2022-12-02','2022-08-22'),(28,'ce06',4000,'2022-05-24','2024-04-24'),(29,'ce07',2000,'2022-06-05','2023-12-02'),(30,'ce08',10000,'2022-11-05','2024-09-05'),(31,'pa02',3000,'2022-02-16','2022-03-26'),(32,'da01',7000,'2022-07-01','2024-12-03'),(33,'da02',7000,'2022-06-23','2023-03-21'),(34,'ict01',7000,'2022-10-16','2025-04-06'),(35,'ict02',1000,'2022-05-21','2022-10-12'),(36,'ict03',6000,'2022-02-01','2024-10-01'),(37,'ict04',8000,'2022-03-24','2023-03-20'),(38,'icm01',8000,'2022-11-06','2023-05-05'),(39,'icm02',4000,'2022-01-11','2022-03-29'),(40,'icm03',6000,'2022-09-22','2024-10-28'),(41,'icm04',3000,'2022-05-30','2023-11-20'),(42,'icc01',2000,'2022-09-26','2025-03-03'),(43,'icc02',10000,'2022-11-10','2024-03-20'),(44,'icc03',1000,'2022-09-12','2023-01-09'),(45,'icc04',1000,'2023-01-04','2023-01-26'),(46,'da03',2000,'2023-01-10','2023-07-07'),(47,'da04',9000,'2022-09-02','2023-06-16'),(48,'da05',5000,'2022-05-11','2022-04-19'),(49,'da06',1000,'2022-08-25','2022-07-23'),(50,'mp01',5000,'2022-08-02','2024-09-23'),(51,'mp02',1000,'2022-03-13','2022-08-17'),(52,'mp03',8000,'2023-01-28','2025-02-03'),(53,'ce09',5000,'2022-03-15','2024-12-29'),(54,'ck01',5000,'2022-09-18','2023-07-21'),(55,'ck02',1000,'2022-11-18','2023-12-11'),(56,'ck03',5000,'2022-05-11','2025-02-10'),(57,'ck04',2000,'2022-03-19','2025-05-01'),(58,'ck05',8000,'2022-08-08','2024-06-19'),(59,'ck06',7000,'2022-07-10','2024-07-03'),(60,'co01',3000,'2022-06-02','2022-06-13'),(61,'co02',9000,'2022-06-02','2024-09-17'),(62,'co03',10000,'2022-02-01','2022-10-14'),(63,'mt01',5000,'2022-07-02','2024-12-21'),(64,'mt02',1000,'2023-01-28','2022-11-15'),(65,'mt03',1000,'2022-10-17','2025-11-23'),(66,'mt04',10000,'2022-08-19','2023-07-21'),(67,'mt05',9000,'2022-10-02','2024-09-04'),(68,'mt06',9000,'2022-08-24','2022-01-24'),(69,'co04',5900,'2022-12-14','2025-08-01'),(70,'co05',7000,'2022-09-08','2025-03-19'),(71,'co06',10000,'2022-05-02','2025-09-18'),(72,'co13',8000,'2022-12-12','2023-06-03'),(73,'co07',6000,'2022-01-25','2023-04-20'),(74,'co08',3000,'2022-01-12','2023-07-28'),(75,'ob01',1000,'2022-09-15','2024-11-25'),(76,'ob02',2000,'2022-05-03','2023-08-01'),(77,'ob03',9000,'2022-10-15','2024-02-25'),(78,'ob04',9000,'2022-12-25','2025-11-30'),(79,'ob05',8000,'2023-01-24','2025-10-14'),(80,'ob06',2000,'2022-03-18','2023-04-12'),(81,'ob07',9000,'2023-01-24','2022-04-30'),(82,'ob08',7000,'2022-07-13','2022-01-23'),(83,'co09',7000,'2022-02-23','2023-12-09'),(84,'sp03',9000,'2022-09-04','2022-09-23'),(85,'ob09',10000,'2022-03-20','2022-05-22'),(86,'co10',10000,'2023-01-06','2024-03-07'),(87,'co11',3000,'2022-05-25','2025-07-31'),(88,'co12',5000,'2022-04-09','2022-10-29'),(89,'cr01',4000,'2022-01-22','2022-08-11'),(90,'cr02',7000,'2022-03-02','2022-07-29'),(91,'gh01',2000,'2022-02-02','2025-08-13'),(92,'gh02',6000,'2022-12-20','2024-04-13'),(93,'gh03',5000,'2022-01-14','2024-01-11'),(94,'gh04',1000,'2022-09-18','2024-08-04'),(95,'icm05',6000,'2023-01-26','2022-03-12'),(96,'icc05',9000,'2022-08-01','2025-01-16'),(97,'ict05',4000,'2022-08-24','2022-11-17'),(98,'icc06',8000,'2022-03-19','2025-05-15'),(99,'gh05',8000,'2022-08-25','2023-10-24'),(100,'gh06',6000,'2022-08-07','2022-05-21'),(101,'mi01',2000,'2022-04-18','2023-03-23'),(102,'mi02',2000,'2022-08-07','2022-04-06'),(103,'mi03',8000,'2023-01-05','2023-09-15'),(104,'mi04',5000,'2022-08-28','2024-02-16'),(105,'cs01',9000,'2022-12-01','2022-11-01'),(106,'cs02',3000,'2022-10-25','2022-11-04'),(107,'cs03',9000,'2022-03-16','2022-01-01'),(108,'cs04',5000,'2022-05-31','2023-09-30'),(109,'pa01',6000,'2022-09-02','2024-08-07'),(110,'bu01',8000,'2022-01-19','2023-04-02'),(111,'bu02',1000,'2022-09-04','2023-04-10'),(112,'bu03',1000,'2022-11-28','2022-05-10'),(113,'mi05',3000,'2022-09-06','2025-12-01'),(114,'mi06',8000,'2022-07-29','2024-09-11'),(115,'mi07',8000,'2022-01-29','2024-04-17'),(116,'mi08',6000,'2022-02-20','2023-11-09'),(117,'mi09',6000,'2022-05-11','2024-06-12'),(118,'mi10',1000,'2022-12-21','2025-08-16'),(119,'mi11',5000,'2022-03-20','2023-11-03'),(120,'bu04',1000,'2022-02-23','2023-02-15'),(121,'sp01',3000,'2022-10-02','2023-09-22'),(122,'sp02',7000,'2022-01-20','2025-07-21'),(123,'ce01',8000,'2022-08-23','2024-07-20'),(124,'ce02',5000,'2022-02-05','2023-06-14'),(125,'ce03',9000,'2022-11-05','2024-08-10'),(126,'ce04',3000,'2022-04-10','2023-06-01'),(127,'ce05',6000,'2022-08-28','2023-08-15'),(128,'ce06',10000,'2022-09-19','2022-05-13'),(129,'ce07',10000,'2022-01-10','2022-07-28'),(130,'ce08',7000,'2022-07-11','2023-09-24'),(131,'pa02',4000,'2022-04-12','2023-12-03'),(132,'da01',8000,'2022-07-03','2025-02-22'),(133,'da02',1000,'2022-08-20','2025-06-20'),(134,'ict01',3000,'2023-01-13','2025-04-30'),(135,'ict02',5000,'2022-06-03','2023-05-09'),(136,'ict03',10000,'2022-11-13','2023-08-20'),(137,'ict04',7000,'2022-01-18','2025-10-28'),(138,'icm01',7000,'2022-04-26','2023-03-09'),(139,'icm02',10000,'2023-01-01','2024-02-23'),(140,'icm03',7000,'2022-09-18','2023-09-01'),(141,'icm04',4000,'2023-01-11','2025-03-02'),(142,'icc01',10000,'2022-01-04','2024-12-21'),(143,'icc02',6000,'2022-05-20','2022-11-10'),(144,'icc03',7000,'2022-08-06','2024-09-02'),(145,'icc04',7000,'2022-07-08','2024-04-03'),(146,'da03',1000,'2022-03-26','2023-02-18'),(147,'da04',1000,'2022-01-29','2023-04-29'),(148,'da05',2000,'2022-03-19','2025-01-26'),(149,'da06',9000,'2022-08-01','2025-12-19'),(150,'mp01',6000,'2022-05-07','2023-02-04'),(151,'mp02',10000,'2022-08-30','2023-03-03'),(152,'mp03',5000,'2022-04-02','2022-02-16'),(153,'ce09',5000,'2022-05-23','2024-12-20'),(154,'ck01',10000,'2022-12-29','2024-06-07'),(155,'ck02',7000,'2022-03-13','2025-10-03'),(156,'ck03',1000,'2022-12-04','2024-07-06'),(157,'ck04',2000,'2022-08-16','2022-10-20'),(158,'ck05',3000,'2022-07-22','2023-11-17'),(159,'ck06',8000,'2022-12-04','2024-02-20'),(160,'co01',7000,'2022-09-28','2024-11-19'),(161,'co02',7000,'2022-12-08','2024-05-03'),(162,'co03',8000,'2022-09-16','2025-03-25'),(163,'mt01',3000,'2022-11-29','2022-01-18'),(164,'mt02',4000,'2022-11-10','2025-03-01'),(165,'mt03',10000,'2022-02-28','2023-12-14'),(166,'mt04',3000,'2022-09-11','2022-07-29'),(167,'mt05',6000,'2022-05-03','2025-08-28'),(168,'mt06',6000,'2023-01-23','2024-04-24'),(169,'co04',10000,'2023-01-16','2023-07-31'),(170,'co05',10000,'2022-03-10','2022-10-17'),(171,'co06',5000,'2022-09-10','2025-12-23'),(172,'co13',7000,'2022-09-27','2024-10-16'),(173,'co07',2000,'2022-08-28','2022-12-19'),(174,'co08',3000,'2022-12-10','2025-03-12'),(175,'ob01',6000,'2023-01-10','2025-04-13'),(176,'ob02',2000,'2022-03-27','2025-02-17'),(177,'ob03',6000,'2022-07-25','2022-06-16'),(178,'ob04',10000,'2022-12-18','2025-03-12'),(179,'ob05',10000,'2022-03-19','2025-03-30'),(180,'ob06',3000,'2022-06-02','2023-01-14'),(181,'ob07',1000,'2022-08-28','2023-01-01'),(182,'ob08',5000,'2022-09-13','2024-08-08'),(183,'co09',8000,'2022-09-19','2024-09-27'),(184,'sp03',9000,'2022-07-19','2024-12-07'),(185,'ob09',4000,'2022-10-19','2023-02-03'),(186,'co10',9000,'2022-05-02','2022-02-27'),(187,'co11',3000,'2022-03-19','2022-09-21'),(188,'co12',2000,'2022-01-12','2025-11-18'),(189,'cr01',3000,'2022-03-29','2022-02-26'),(190,'cr02',7000,'2022-10-28','2025-05-04'),(191,'gh01',1000,'2022-03-20','2023-11-20'),(192,'gh02',6000,'2022-10-27','2024-11-27'),(193,'gh03',6000,'2022-06-29','2024-01-24'),(194,'gh04',3000,'2022-11-21','2023-02-01'),(195,'icm05',8000,'2022-12-06','2025-09-05'),(196,'icc05',6000,'2022-12-29','2024-05-09'),(197,'ict05',8000,'2022-03-14','2025-10-12'),(198,'icc06',8000,'2022-01-01','2023-04-14'),(199,'gh05',1000,'2022-09-30','2024-02-21'),(200,'gh06',4000,'2022-11-10','2022-02-10'),(201,'mi01',8998,'2022-05-19','2024-01-26'),(202,'mi02',9000,'2022-07-19','2022-11-07'),(203,'mi03',2000,'2022-11-04','2023-05-12'),(204,'mi04',4000,'2022-09-10','2025-06-06'),(205,'cs01',3000,'2022-07-12','2025-06-25'),(206,'cs02',10000,'2022-03-04','2024-11-08'),(207,'cs03',1000,'2022-07-03','2023-10-09'),(208,'cs04',4000,'2022-07-02','2025-11-07'),(209,'pa01',3000,'2022-06-18','2025-10-05'),(210,'bu01',7000,'2022-11-13','2024-04-22'),(211,'bu02',7000,'2022-12-22','2022-08-24'),(212,'bu03',9000,'2022-02-17','2023-08-28'),(213,'mi05',9000,'2022-08-12','2024-12-19'),(214,'mi06',4995,'2022-11-23','2023-01-14'),(215,'mi07',1995,'2022-04-14','2023-08-10'),(216,'mi08',6000,'2022-06-10','2023-08-06'),(217,'mi09',9000,'2022-04-21','2023-09-05'),(218,'mi10',1000,'2022-07-07','2023-12-26'),(219,'mi11',4000,'2022-07-16','2024-06-11'),(220,'bu04',1000,'2022-03-22','2022-12-11'),(221,'sp01',3000,'2022-10-28','2025-07-13'),(222,'sp02',10000,'2022-11-09','2022-06-26'),(223,'ce01',4000,'2022-04-07','2022-02-11'),(224,'ce02',8000,'2022-06-02','2025-10-10'),(225,'ce03',5000,'2022-09-09','2022-08-03'),(226,'ce04',9000,'2022-12-04','2024-04-30'),(227,'ce05',4000,'2022-05-02','2025-06-15'),(228,'ce06',7000,'2022-10-20','2022-05-25'),(229,'ce07',8000,'2022-05-20','2025-01-28'),(230,'ce08',7000,'2022-02-04','2025-07-06'),(231,'pa02',7000,'2023-01-30','2023-07-07'),(232,'da01',2000,'2022-08-05','2025-07-11'),(233,'da02',8000,'2022-10-01','2023-05-27'),(234,'ict01',6000,'2022-02-26','2025-06-01'),(235,'ict02',7000,'2022-10-10','2023-12-06'),(236,'ict03',5000,'2022-06-25','2023-05-21'),(237,'ict04',7000,'2022-01-02','2024-05-16'),(238,'icm01',5000,'2022-08-02','2023-10-03'),(239,'icm02',8000,'2022-10-03','2024-04-11'),(240,'icm03',5000,'2022-11-16','2022-03-31'),(241,'icm04',8000,'2022-11-14','2022-07-22'),(242,'icc01',7000,'2022-08-28','2023-12-07'),(243,'icc02',10000,'2022-03-06','2025-07-27'),(244,'icc03',10000,'2022-12-12','2024-06-14'),(245,'icc04',3000,'2022-11-29','2022-01-02'),(246,'da03',3000,'2022-02-05','2022-10-09'),(247,'da04',6000,'2022-02-23','2022-01-30'),(248,'da05',6000,'2022-07-17','2024-12-20'),(249,'da06',7000,'2022-03-11','2023-07-08'),(250,'mp01',8000,'2023-01-25','2022-01-04'),(251,'mp02',2000,'2022-10-29','2025-07-25'),(252,'mp03',5996,'2022-01-19','2024-12-11'),(253,'ce09',2000,'2023-01-11','2025-12-31'),(254,'ck01',3000,'2022-06-09','2023-04-17'),(255,'ck02',1000,'2022-08-21','2024-11-10'),(256,'ck03',5000,'2022-10-31','2025-04-17'),(257,'ck04',4000,'2022-01-26','2025-07-16'),(258,'ck05',8000,'2022-02-07','2022-04-16'),(259,'ck06',4000,'2022-11-11','2024-12-15'),(260,'co01',10000,'2022-07-19','2024-05-26'),(261,'co02',6000,'2022-12-15','2023-09-02'),(262,'co03',2000,'2022-05-01','2025-04-20'),(263,'mt01',6997,'2022-08-19','2024-04-06'),(264,'mt02',10000,'2022-11-20','2022-08-01'),(265,'mt03',4000,'2022-01-20','2024-04-13'),(266,'mt04',8000,'2022-05-11','2024-04-29'),(267,'mt05',4000,'2022-05-11','2024-11-14'),(268,'mt06',4000,'2022-08-05','2022-05-04'),(269,'co04',2000,'2023-01-22','2022-06-13'),(270,'co05',5000,'2022-11-25','2023-05-07'),(271,'co06',3000,'2022-01-01','2023-04-06'),(272,'co13',6000,'2022-07-19','2025-09-12'),(273,'co07',10000,'2022-08-22','2024-05-30'),(274,'co08',6000,'2022-04-15','2022-05-06'),(275,'ob01',2000,'2022-04-11','2025-07-16'),(276,'ob02',2000,'2022-06-26','2024-09-17'),(277,'ob03',9000,'2022-07-19','2022-10-26'),(278,'ob04',10000,'2022-04-08','2023-10-01'),(279,'ob05',2000,'2022-01-21','2022-07-12'),(280,'ob06',1000,'2022-03-28','2025-08-22'),(281,'ob07',8000,'2022-04-18','2022-07-06'),(282,'ob08',8000,'2022-04-02','2023-02-07'),(283,'co09',10000,'2022-08-03','2023-05-13'),(284,'sp03',4000,'2022-03-28','2025-11-10'),(285,'ob09',1000,'2022-08-28','2023-11-12'),(286,'co10',2000,'2022-07-22','2023-03-29'),(287,'co11',4000,'2022-11-20','2023-10-21'),(288,'co12',1000,'2022-12-25','2023-07-28'),(289,'cr01',5000,'2022-06-12','2022-03-13'),(290,'cr02',3000,'2022-04-15','2024-02-04'),(291,'gh01',3000,'2022-02-13','2025-04-30'),(292,'gh02',7000,'2022-12-25','2024-04-13'),(293,'gh03',8000,'2022-08-30','2025-01-09'),(294,'gh04',10000,'2022-03-09','2025-07-22'),(295,'icm05',3000,'2022-09-28','2025-12-21'),(296,'icc05',8000,'2022-05-03','2023-11-09'),(297,'ict05',7000,'2022-05-21','2024-03-16'),(298,'icc06',6000,'2022-08-01','2022-08-08'),(299,'gh05',2000,'2022-01-15','2024-03-17'),(300,'gh06',7000,'2022-05-18','2023-07-02'),(301,'mi03',15000,'2023-01-01','2024-01-01'),(302,'mi02',1000,'2023-04-04','2024-03-04');
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `date` date NOT NULL,
  `total_amount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`bill_id`),
  KEY `customer_id` (`customer_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `retailer` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,58,28,'2022-08-16',1800),(2,23,49,'2022-11-20',6820),(3,57,63,'2022-08-20',0),(4,18,67,'2022-10-26',245),(5,26,14,'2022-08-21',0),(6,45,89,'2022-11-02',5200),(7,30,87,'2022-09-11',0),(8,28,73,'2022-08-24',1280),(9,34,83,'2022-12-19',1220),(10,19,76,'2022-11-03',3150),(11,66,15,'2022-07-09',300),(12,59,32,'2022-09-15',2280),(13,36,30,'2022-09-08',5670),(14,88,30,'2022-11-01',1140),(15,40,58,'2022-11-09',4360),(16,58,86,'2023-01-02',315),(17,90,57,'2023-01-18',1260),(18,81,10,'2022-11-24',1220),(19,18,26,'2023-01-31',990),(20,52,85,'2022-09-22',3480),(21,44,20,'2022-07-27',1560),(22,28,55,'2022-11-27',0),(23,39,35,'2022-07-19',1080),(24,18,65,'2022-09-12',0),(25,11,69,'2023-01-14',0),(26,60,58,'2022-12-11',0),(27,40,76,'2022-07-07',5360),(28,27,19,'2022-07-21',480),(29,44,50,'2022-08-31',2492),(30,83,85,'2022-09-25',2800),(31,53,42,'2022-11-28',0),(32,15,88,'2022-12-12',1040),(33,79,11,'2022-08-02',2800),(34,82,89,'2022-10-15',840),(35,40,50,'2022-08-25',200),(36,68,72,'2022-08-09',0),(37,51,40,'2022-09-02',360),(38,65,72,'2023-01-04',3140),(39,84,78,'2022-12-25',1550),(40,13,42,'2022-08-25',990),(41,24,64,'2023-01-03',3772),(42,36,71,'2022-12-08',4760),(43,51,21,'2022-11-24',700),(44,58,34,'2022-12-24',2430),(45,15,13,'2022-12-18',1870),(46,28,71,'2022-08-27',0),(47,48,87,'2022-11-14',1200),(48,45,27,'2022-09-12',1480),(49,64,43,'2022-11-07',570),(50,89,34,'2022-07-01',0),(51,24,42,'2022-12-02',1480),(52,40,30,'2022-10-19',3600),(53,12,50,'2022-09-25',2240),(54,60,89,'2022-12-21',1100),(55,15,66,'2022-12-31',240),(56,65,87,'2022-07-02',2060),(57,37,25,'2022-12-31',3724),(58,22,14,'2022-08-22',1080),(59,33,26,'2022-12-25',1550),(60,74,38,'2022-12-13',400),(61,44,72,'2022-10-17',2520),(62,33,21,'2023-01-27',400),(63,82,76,'2022-09-25',1520),(64,66,51,'2022-08-09',2880),(65,39,47,'2022-12-27',4642),(66,82,80,'2022-12-14',0),(67,22,82,'2022-12-23',1330),(68,27,53,'2022-09-23',0),(69,79,81,'2022-09-01',0),(70,64,36,'2023-01-15',1190),(71,77,31,'2022-07-03',1400),(72,82,58,'2022-09-07',390),(73,66,90,'2022-08-30',3190),(74,28,61,'2022-08-22',0),(75,38,78,'2022-09-18',1800),(76,51,37,'2022-07-01',2570),(77,79,23,'2023-01-10',3630),(78,19,66,'2022-09-30',1000),(79,73,28,'2022-09-14',0),(80,67,52,'2023-01-10',0),(81,61,17,'2022-12-12',680),(82,18,77,'2022-09-17',0),(83,27,13,'2023-01-05',0),(84,17,61,'2022-12-12',0),(85,87,48,'2022-12-02',1710),(86,16,26,'2023-01-18',1920),(87,14,33,'2022-07-26',5710),(88,27,35,'2023-01-06',540),(89,82,37,'2023-01-17',2610),(90,37,66,'2023-02-01',3690),(91,15,33,'2023-01-14',2680),(92,85,78,'2022-12-30',990),(93,17,47,'2022-08-24',1120),(94,15,70,'2022-07-18',0),(95,84,85,'2022-08-11',800),(96,13,70,'2022-10-03',0),(97,25,80,'2022-09-01',3100),(98,25,58,'2022-12-16',790),(99,66,26,'2022-12-20',0),(100,64,44,'2022-11-10',500),(101,17,43,'2022-07-20',0),(102,28,22,'2022-09-28',0),(103,48,77,'2022-08-17',0),(104,39,63,'2022-12-20',0),(105,27,68,'2022-10-20',0),(106,50,40,'2022-09-03',0),(107,87,28,'2022-10-29',0),(108,17,49,'2022-11-03',0),(109,13,37,'2022-10-08',0),(110,80,25,'2022-12-12',0),(111,23,79,'2022-12-25',0),(112,49,31,'2022-11-04',0),(113,80,62,'2023-01-26',0),(114,86,72,'2023-01-20',0),(115,68,51,'2022-11-13',0),(116,68,17,'2022-11-18',0),(117,73,58,'2022-10-06',0),(118,12,31,'2022-09-01',0),(119,19,15,'2023-01-04',0),(120,29,88,'2022-12-28',0),(121,81,55,'2022-08-11',0),(122,30,22,'2022-12-01',0),(123,69,19,'2023-02-01',0),(124,50,31,'2022-09-23',0),(125,36,61,'2022-10-29',0),(126,45,75,'2022-08-20',0),(127,90,14,'2022-09-20',0),(128,55,30,'2022-07-23',0),(129,54,44,'2022-11-18',0),(130,68,49,'2022-08-01',0),(131,85,85,'2022-11-14',0),(132,41,90,'2022-08-18',0),(133,72,73,'2022-07-28',0),(134,55,61,'2022-07-30',0),(135,36,45,'2022-10-18',0),(136,15,17,'2022-12-05',0),(137,86,31,'2022-08-17',0),(138,23,28,'2022-12-19',0),(139,12,43,'2023-01-16',0),(140,89,42,'2022-07-20',288),(141,50,58,'2023-03-23',60),(142,39,29,'2023-03-24',600),(143,103,42,'2023-03-27',680),(148,104,28,'2023-04-14',280);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_product`
--

DROP TABLE IF EXISTS `bill_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_product` (
  `bill_id` int NOT NULL,
  `product_id` varchar(5) DEFAULT NULL,
  `quantity` int NOT NULL,
  KEY `bill_id` (`bill_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `bill_product_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`),
  CONSTRAINT `bill_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_product`
--

LOCK TABLES `bill_product` WRITE;
/*!40000 ALTER TABLE `bill_product` DISABLE KEYS */;
INSERT INTO `bill_product` VALUES (85,'bu03',19),(98,'da02',11),(40,'co02',15),(87,'ict01',9),(42,'ce08',15),(40,'ck04',9),(14,'ob06',19),(76,'mt01',9),(93,'ck03',14),(49,'da05',6),(30,'icm05',11),(67,'co07',12),(27,'mt03',16),(90,'co08',5),(57,'mi05',18),(16,'co09',9),(91,'cs04',12),(19,'pa02',9),(77,'co11',17),(89,'co04',17),(55,'cr01',8),(49,'co02',9),(48,'icc01',20),(73,'bu03',16),(23,'bu04',6),(20,'co04',19),(11,'da01',10),(18,'ob01',10),(65,'ce05',19),(35,'ck04',5),(61,'gh01',20),(21,'da02',12),(30,'co03',12),(71,'gh04',10),(15,'ce07',11),(76,'gh02',7),(77,'ict03',16),(57,'co04',20),(27,'ck03',12),(72,'cr01',13),(29,'icc05',9),(92,'cs03',11),(6,'ob01',10),(21,'cs02',15),(10,'da05',7),(39,'icm02',11),(90,'ce07',6),(78,'ce08',5),(60,'ck01',8),(2,'icm03',19),(41,'icm04',14),(38,'ob03',19),(29,'cr02',9),(86,'da03',18),(28,'ck02',8),(17,'mp03',18),(87,'co03',18),(43,'sp02',7),(8,'ce03',6),(54,'icc06',5),(40,'co02',6),(54,'ob01',14),(20,'ict01',12),(29,'cs02',19),(13,'ck01',14),(97,'mt05',13),(58,'ck02',18),(65,'mi07',16),(2,'mt06',17),(18,'ob06',12),(54,'cr01',5),(41,'mi02',6),(51,'ict01',5),(30,'ob07',8),(57,'mi06',16),(44,'ict04',19),(42,'ck03',10),(59,'co13',8),(98,'mi01',6),(33,'mt05',14),(87,'co11',7),(88,'ob06',9),(81,'cs04',7),(56,'co06',14),(34,'gh04',6),(6,'cs03',10),(89,'da01',19),(9,'mp03',6),(51,'gh04',7),(42,'icm05',12),(52,'ce02',20),(56,'ck04',5),(90,'cs01',16),(77,'ob01',17),(45,'ob09',14),(12,'da01',8),(62,'ck01',8),(64,'gh01',14),(44,'bu03',5),(65,'ck04',9),(91,'co08',5),(73,'icm04',16),(45,'ict04',13),(37,'co10',9),(67,'co09',14),(70,'ck05',17),(64,'ck04',18),(27,'cs01',11),(12,'ob03',6),(29,'mi04',7),(19,'cr01',15),(61,'bu03',8),(98,'ob02',7),(73,'mi07',15),(6,'ce07',19),(90,'cr01',15),(9,'sp01',10),(13,'co08',17),(47,'mt06',6),(15,'co12',12),(53,'ob09',14),(41,'bu04',20),(48,'ob03',12),(63,'cs01',19),(86,'ce08',6),(4,'co09',7),(10,'gh03',17),(53,'co03',11),(75,'sp02',18),(44,'cr01',9),(12,'cs01',10),(38,'gh04',17),(87,'ict03',17),(64,'mi09',18),(12,'mt05',5),(81,'ck06',8),(10,'ob04',20),(56,'co11',10),(32,'sp01',13),(90,'icm01',6),(39,'bu04',6),(2,'co04',19),(23,'da01',10),(97,'ob01',10),(13,'ce05',19),(8,'ck04',5),(91,'gh01',20),(1,'sp02',18),(59,'cr01',9),(95,'cs01',10),(141,'mi01',3),(141,'cs01',5),(140,'mt01',5),(140,'mt01',5),(140,'mt01',5),(140,'mi08',4),(140,'mi08',4),(140,'mi08',4),(140,'mi07',2),(141,'mi01',2),(142,'mt01',3),(143,'bu03',3),(143,'mi06',5),(143,'mi07',5),(148,'ll69',4);
/*!40000 ALTER TABLE `bill_product` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `buying_product` BEFORE INSERT ON `bill_product` FOR EACH ROW BEGIN
    IF NOT EXISTS (select * from store_inventory si,bill b where si.quantity>=new.quantity and si.product_id=new.product_id and si.store_id=b.store_id and b.bill_id=new.bill_id) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Insufficient products';
    ELSE
        update batch inner join store_inventory si on batch.batch_id=si.batch_id
        inner join bill b on b.store_id=si.store_id and b.bill_id=new.bill_id 
        set batch.quantity=batch.quantity-new.quantity where 
        si.quantity>=new.quantity and si.product_id=new.product_id order by si.expiry_date limit 1;

        update bill set total_amount=total_amount+new.quantity*(select mrp from product where product.product_id=new.product_id) 
        where bill_id=new.bill_id;

  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cat_id` varchar(5) NOT NULL,
  `Cat_Name` varchar(45) NOT NULL,
  `number_of_products` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('bu','butter',0),('ce','cheese',0),('co','chocolate',0),('cr','cream',0),('cs','cheese sauce',0),('da','dahi',0),('gh','ghee',0),('icc','ice cream cone',0),('icm','ice cream cup',0),('ict','ice cream tub',0),('mi','milk',0),('mp','milk powder',0),('mt','mithai',0),('ob','other beverages',0),('pa','paneer',0),('sp','spreads',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `category_product` VALUES ('mi','mi01'),('mi','mi02'),('mi','mi03'),('mi','mi04'),('cs','cs01'),('cs','cs02'),('cs','cs03'),('cs','cs04'),('pa','pa01'),('bu','bu01'),('bu','bu02'),('bu','bu03'),('mi','mi05'),('mi','mi06'),('mi','mi07'),('mi','mi08'),('mi','mi09'),('mi','mi10'),('mi','mi11'),('bu','bu04'),('sp','sp01'),('sp','sp02'),('ce','ce01'),('ce','ce02'),('ce','ce03'),('ce','ce04'),('ce','ce05'),('ce','ce06'),('ce','ce07'),('ce','ce08'),('pa','pa02'),('da','da01'),('da','da02'),('ict','ict01'),('ict','ict02'),('ict','ict03'),('ict','ict04'),('icm','icm01'),('icm','icm02'),('icm','icm03'),('icm','icm04'),('icc','icc01'),('icc','icc02'),('icc','icc03'),('icc','icc04'),('da','da03'),('da','da04'),('da','da05'),('da','da06'),('mp','mp01'),('mp','mp02'),('mp','mp03'),('ce','ce09'),('co','co01'),('co','co02'),('co','co03'),('mt','mt01'),('mt','mt02'),('mt','mt03'),('mt','mt04'),('mt','mt05'),('mt','mt06'),('co','co04'),('co','co05'),('co','co06'),('co','co13'),('co','co07'),('co','co08'),('ob','ob01'),('ob','ob02'),('ob','ob03'),('ob','ob04'),('ob','ob05'),('ob','ob06'),('ob','ob07'),('ob','ob08'),('co','co09'),('sp','sp03'),('ob','ob09'),('co','co10'),('co','co11'),('co','co12'),('cr','cr01'),('cr','cr02'),('gh','gh01'),('gh','gh02'),('gh','gh03'),('gh','gh04'),('icm','icm05'),('icc','icc05'),('ict','ict05'),('icc','icc06'),('gh','gh05'),('gh','gh06');
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collective`
--

DROP TABLE IF EXISTS `collective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collective` (
  `collective_id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `no_of_members` int NOT NULL,
  `balance` int DEFAULT '0',
  PRIMARY KEY (`collective_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collective`
--

LOCK TABLES `collective` WRITE;
/*!40000 ALTER TABLE `collective` DISABLE KEYS */;
INSERT INTO `collective` VALUES (1,'Bhaskar Colony','Rohtak',174414,'Rajnagar District Co-operative Milk Producers Ltd.','Raj_2','Raj_2',101,0),(2,'Patel Nagar','Maradahalli',177363,'Tilaknagar Co-operative Milk Producer\'s Union','Til_3','Til_3',114,106634),(3,'Sahakar Nagar','Rajkot',232328,'Anandnagar Co-operative Milk Producers\' Ltd.','Ana_4','Ana_4',119,40854),(4,'DLF Phase 1','Hooghly',251070,'Sahas Co-operative Milk Marketing Federation','Sah_5','Sah_5',146,0),(5,'Model Town','Lucknow',214152,'Yamunanagar Co-operative Milk Producer\'s Union','Yam_6','Yam_6',104,73658),(6,'Sion Koliwada','Sahabana',426773,'Bharatnagar Co-operative Milk Producer\'s Ltd.','Bha_7','Bha_7',140,64787),(7,'Marathahalli','delhi',286065,'Jabalpur Milk Producer\'s Union','Jab_8','Jab_8',113,169520),(8,'DLF Phase 2','delhi',197238,'Sambhalpur Co-operative Milk Marketing Federation','Sam_9','Sam_9',131,38200),(9,'Lajpat Nagar','Surat',257290,'Surat District Co-operative Milk Producers\' Union Limited (Surat Milk)','Sur_10','Sur_10',136,0),(10,'Wadala','Ahemdabad',470200,' The Gujarat Co-operative Milk Marketing Federation (GCMMF)',' Th_11',' Th_11',124,0),(11,'Koramangala','Ahemdabad',196625,' The Kaira District Co-operative Milk Producers\' Union Limited',' Th_12',' Th_12',101,0),(12,'DLF Phase 3','Agartala',332493,' The Tripura Co-operative Milk Producers\' Federation (TRIFED)',' Th_13',' Th_13',115,197433),(13,'Karol Bagh','Chennai',115645,' The Tamil Nadu Co-operative Milk Producers\' Federation Limited (AAVIN)',' Th_14',' Th_14',126,0),(14,'Dadar','Jaipur',294005,' The Rajasthan Co-operative Dairy Federation Limited (RCDF)',' Th_15',' Th_15',140,79882),(15,'Indiranagar','Bangalore',103556,' The Karnataka Co-operative Milk Producers\' Federation Limited (KCMPF)',' Th_16',' Th_16',142,124264),(16,'DLF Phase 4','Kanpur',207076,' The Uttar Pradesh Co-operative Milk Producers\' Federation Limited (UPCMFL)',' Th_17',' Th_17',142,61932),(17,'Connaught Place','Amravati',428656,' The Andhra Pradesh Dairy Development Co-operative Federation Limited (APDDCF)',' Th_18',' Th_18',139,103400),(18,'Andheri','Patna',405534,' The Bihar State Co-operative Milk Producers\' Federation Limited (COMFED)',' Th_19',' Th_19',124,42480),(19,'BTM Layout','Rohtak',131730,' The Haryana Dairy Development Co-operative Federation Limited (HDDCF)',' Th_20',' Th_20',100,42174),(20,'DLF Phase 5','Ludhiana',488664,' The Punjab State Co-operative Milk Producers\' Federation Limited (MILKFED)',' Th_21',' Th_21',129,198228),(21,'Hauz Khas','Roorkee',255966,' The Uttarakhand Co-operative Milk Producers\' Federation Limited (UCMFL)',' Th_22',' Th_22',106,157478),(22,'Bandra','Raipur',177182,' The Chhattisgarh State Co-operative Dairy Federation Limited (CGCS)',' Th_23',' Th_23',122,103043),(23,'Whitefield','Bhopal',248512,' The Madhya Pradesh Co-operative Dairy Federation Limited (MPCDF)',' Th_24',' Th_24',137,62947),(24,'DLF Phase 6','Bhubaneshwar',186668,' The Odisha State Co-operative Milk Producers\' Federation Limited (OMFED)',' Th_25',' Th_25',105,191430),(25,'South Extension','Kolkata',451025,' The West Bengal Co-operative Milk Producers\' Federation Limited (WBMFL)',' Th_26',' Th_26',112,75080),(26,'Colaba','dispur',253144,' The Assam Co-operative Milk Producers\' Federation Limited (ASCMFL)',' Th_27',' Th_27',141,42360),(27,'HSR Layout','Ranchi',433450,' The Jharkhand State Co-operative Milk Producers\' Federation Limited (JSCMFL)',' Th_28',' Th_28',103,46026),(28,'DLF Phase 7','Mumbai',127855,' The Maharashtra Rajya Sahakari Dudh Mahasangh Maryadit (MSM)',' Th_29',' Th_29',104,97321),(29,'Greater Kailash','panaji',177379,' The Goa State Co-operative Milk Producers\' Federation Limited (GCM)',' Th_30',' Th_30',130,0),(30,'Versova','Shimla',462254,' The Himachal Pradesh State Co-operative Milk Producers\' Federation Limited (HPMF)',' Th_31',' Th_31',141,55116),(31,'Jayanagar','Srinagar',239342,' The Jammu and Kashmir State Co-operative Milk Producers\' Federation Limited (JKSCMFL)',' Th_32',' Th_32',114,0),(32,'DLF Phase 8','Imphal',357903,' The Manipur State Co-operative Milk Producers\' Federation Limited (MSCMFL)',' Th_33',' Th_33',127,49390),(33,'Vasant Kunj','Shillong',180038,' The Meghalaya Co-operative Milk Producers\' Federation Limited (MCMFL)',' Th_34',' Th_34',119,199710),(34,'Malad','Aizwal',456698,' The Mizoram Co-operative Milk Producers\' Federation Limited (MCM)',' Th_35',' Th_35',149,178206),(35,'JP Nagar','kohima',470962,' The Nagaland Co-operative Milk Producers\' Federation Limited (NCMFL)',' Th_36',' Th_36',116,39556),(36,'DLF Phase 9','Bangkok',474077,' The Sikkim State Co-operative Milk Producers\' Federation Limited (SSCMFL)',' Th_37',' Th_37',111,91257),(37,'Chanakyapuri','Itanagar',235285,' The Arunachal Pradesh Co-operative Milk Producers\' Federation Limited (APCMFL)',' Th_38',' Th_38',105,84132),(38,'Juhu','Bilaspur',403643,' The HImachal Pradesh Milkfed',' Th_39',' Th_39',132,82800),(39,'Banashankari','Delhi',203613,' Delhi Milk Scheme (DMS)',' De_40',' De_40',120,88120),(40,'DLF Phase 10','Amravati',479510,' AP Dairy Development Co-operative Federation Limited',' AP_41',' AP_41',118,229244),(41,'Lodi Colony','raigarh',417153,' The Chhattisgarh State Co-operative Dairy Development Federation Limited (CSCDDFL)',' Th_42',' Th_42',120,57420),(42,'Powai','Delhi',310808,' The Delhi Co-operative Milk Producers\' Union Limited (DCMPUL)',' Th_43',' Th_43',106,45696),(43,'Electronic City','Agartala',342642,' The Tripura Co-operative Milk Producers\' Union Limited (TCMPUL)',' Th_44',' Th_44',117,0),(44,'DLF Phase 11','Dehradun',224729,' The Uttarakhand Co-operative Milk Producers\' Union Limited',' Th_45',' Th_45',142,63327),(45,'Safdarjung Enclave','Thiruvanathapuram',422439,' The Kerala Co-operative Milk Marketing Federation Limited (KCMMF)',' Th_46',' Th_46',139,0),(46,'Santacruz','Patna',371653,' The Bihar Co-operative Milk Producers\' Federation Limited (BCMFL)',' Th_47',' Th_47',117,104920),(47,'RT Nagar','Mumbai',253588,' The Maharashtra Co-operative Milk Producers\' Federation Limited (MCMFL)',' Th_48',' Th_48',113,0),(48,'DLF Phase 12','Bangalore',464818,' The Karnataka Milk Federation (KMF)',' Th_49',' Th_49',112,0),(49,'Green Park','Chennai',348793,' The Tamil Nadu Co-operative Milk Producers\' Union Limited (TCMPUL)',' Th_50',' Th_50',140,130422),(50,'Khar','Agra',264606,' The Uttar Pradesh Co-operative Milk Producers\' Union Limited (UPCMPUL)',' Th_51',' Th_51',109,0),(51,'Malleswaram','Amravati',162519,' The Andhra Pradesh Co-operative Milk Producers\' Union Limited (APCMPUL)',' Th_52',' Th_52',144,58349),(52,'DLF Phase 13','Sirsa',495267,' The Haryana Co-operative Milk Producers\' Union Limited (HCMPUL)',' Th_53',' Th_53',148,99880),(53,'Defence Colony','Patiala',431843,' The Punjab Co-operative Milk Producers\' Union Limited (PCMPUL)',' Th_54',' Th_54',148,35960),(54,'Oshiwara','Bhopal',389031,' The Madhya Pradesh Co-operative Milk Producers\' Union Limited (MPCMPUL)',' Th_55',' Th_55',101,0),(55,'Basavanagudi','Jaisalmer',432727,' The Rajasthan Co-operative Milk Producers\' Union Limited (RCMPUL)',' Th_56',' Th_56',111,0),(56,'DLF Phase 14','Ahemdabad',138674,' The Gujarat Co-operative Milk Producers\' Union Limited (GCMPUL)',' Th_57',' Th_57',105,89870),(57,'Panchsheel Park','Mumbai',439758,' The Maharashtra State Co-operative Milk Producers\' Union Limited (MSCMPUL)',' Th_58',' Th_58',120,0),(58,'Goregaon','Puri',417148,' The Odisha Co-operative Milk Producers\' Union Limited (OCMPUL)',' Th_59',' Th_59',112,229852),(59,'RR Nagar','Kolkata',367671,' The West Bengal Co-operative Milk Producers\' Union Limited (WBCMPUL)',' Th_60',' Th_60',150,27962),(60,'DLF Phase 15','dispur',183192,' The Assam Co-operative Milk Producers\' Union Limited (ACMPUL)',' Th_61',' Th_61',124,69160),(61,'Mayur Vihar','Ranchi',264145,' The Jharkhand Co-operative Milk Producers\' Union Limited (JCMPUL)',' Th_62',' Th_62',122,0),(62,'Andheri West','Goa',172522,' The Goa Co-operative Milk Producers\' Union Limited (GCMPUL)',' Th_63',' Th_63',117,0),(63,'Yelahanka','Shimla',450271,' The Himachal Pradesh Co-operative Milk Producers\' Union Limited (HPCMPUL)',' Th_64',' Th_64',149,0),(64,'DLF Phase 16','Srinagar',271414,' The Jammu and Kashmir Co-operative Milk Producers\' Union Limited (JKCMPUL)',' Th_65',' Th_65',125,56905),(65,'Noida Sector 18','Imphal',171093,' The Manipur Co-operative Milk Producers\' Union Limited (MCMPUL)',' Th_66',' Th_66',128,158332),(66,'K.G. Road','Shillong',239908,' The Meghalaya Co-operative Milk Producers\' Union Limited (MECMPUL)',' Th_67',' Th_67',122,81400),(67,'Park Street','Aizwal',282394,' The Mizoram Co-operative Milk Producers\' Union Limited (MCMPUL)',' Th_68',' Th_68',105,0),(68,'Hill Road','kohima',366208,' The Nagaland Co-operative Milk Producers\' Union Limited (NCMPUL)',' Th_69',' Th_69',122,0),(69,'Link Road','Gangtok',429513,' The Sikkim Co-operative Milk Producers\' Union Limited (SCMPUL)',' Th_70',' Th_70',117,141537),(70,'Marine Drive','Itanagar',324667,' The Arunachal Pradesh Co-operative Milk Producers\' Union Limited (APCMPUL)',' Th_71',' Th_71',130,225430),(71,'Lamington Road','Raipur',410963,' The Chhattisgarh Co-operative Milk Producers\' Union Limited (CCMPUL)',' Th_72',' Th_72',128,42446),(72,'S.V. Road','Delhi',375809,' The Delhi Milk Producers\' Union Limited (DMPUL)',' Th_73',' Th_73',114,0),(73,'Juhu Tara Road','Agartala',378334,' The Tripura Milk Producers\' Union Limited (TMPUL)',' Th_74',' Th_74',119,76420),(74,'Bandra-Kurla Complex','Roorkee',191087,' The Uttarakhand Milk Producers\' Union Limited (UMPUL)',' Th_75',' Th_75',140,124560),(75,'Linking Road','Thiruvanathapuram',470215,' The Kerala Milk Producers\' Union Limited (KMPUL)',' Th_76',' Th_76',106,20480),(76,'S.P. Road','Patna',155320,' The Bihar Milk Producers\' Union Limited (BMPUL)',' Th_77',' Th_77',150,22814),(77,'Brigade Road','Pune',396515,' The Maharashtra Milk Producers\' Union Limited (MMPUL)',' Th_78',' Th_78',141,60993),(78,'Residency Road','Mysuru',271005,' The Karnataka Milk Producers\' Union Limited (KMPUL)',' Th_79',' Th_79',133,110970),(79,'Commercial Street','Chennai',199430,' The Tamil Nadu Milk Producers\' Union Limited (TNPUL)',' Th_80',' Th_80',103,44680),(80,'M.G. Road','Kanpur',212506,' The Uttar Pradesh Milk Producers\' Union Limited (UPMPUL)',' Th_81',' Th_81',103,54120),(81,'Raj Bhavan Road','Amravati',129694,' The Andhra Pradesh Milk Producers\' Union Limited (',' Th_82',' Th_82',109,73397),(82,'Banjara Hills Road','Chandigarh',102103,' The Haryana Milk Producers\' Union Limited (HMPUL)',' Th_83',' Th_83',123,0),(83,'Tank Bund Road','Patiala',201446,' The Punjab Milk Producers\' Union Limited (PMPUL)',' Th_84',' Th_84',129,69100),(84,'Jubilee Hills Road','Bhopal',323977,' The Madhya Pradesh Milk Producers\' Union Limited (MPMPUL)',' Th_85',' Th_85',118,0),(85,'R.P. Road','Jaipur',294725,' The Rajasthan Milk Producers\' Union Limited (RMPUL)',' Th_86',' Th_86',112,70028),(86,'Park Avenue','Vadodra',291653,' The Gujarat Milk Producers\' Union Limited (GMPUL)',' Th_87',' Th_87',149,50798),(87,'Road No. 36','Bhubaneshwar',421905,' The Odisha Milk Producers\' Union Limited (OMPUL)',' Th_88',' Th_88',123,91052),(88,'Anna Salai','Kolkata',279286,' The West Bengal Milk Producers\' Union Limited (WBPUL)',' Th_89',' Th_89',140,0),(89,'Mount Road','Dispur',278341,' The Assam Milk Producers\' Union Limited (AMPPUL)',' Th_90',' Th_90',122,0),(90,'Nungambakkam High Road','Dhanbad',180741,' The Jharkhand Milk Producers\' Union Limited (JMPUL)',' Th_91',' Th_91',133,112535),(91,'Thiruvanmiyur High Road','Goa',360434,' The Goa Milk Producers\' Union Limited (GOMPUL)',' Th_92',' Th_92',101,139300),(92,'Velachery Main Road','Shimla',378932,' The Himachal Pradesh Milk Producers\' Union Limited (HPMPUL)',' Th_93',' Th_93',133,0),(93,'K.K. Nagar Main Road','Srinagar',442919,' The Jammu and Kashmir Milk Producers\' Union Limited (JKMPUL)',' Th_94',' Th_94',124,0),(94,'Purasawalkam High Road','Imphal',214579,' The Manipur Milk Producers\' Union Limited (MPMPUL)',' Th_95',' Th_95',137,94830),(95,'Gandhi Nagar 1st Main Road','Tura',257767,' The Meghalaya Milk Producers\' Union Limited (MMPUL)',' Th_96',' Th_96',134,157674),(96,'Sardar Patel Road','Aizwal',200050,' The Mizoram Milk Producers\' Union Limited (MZMPUL)',' Th_97',' Th_97',146,0),(97,'Kasturba Gandhi Marg','Dimapur',334715,' The Nagaland Milk Producers\' Union Limited (NMPUL)',' Th_98',' Th_98',143,175168),(98,'Baba Kharak Singh Marg','Gangtok',159022,' The Sikkim Milk Producers\' Union Limited (SMPUL)',' Th_99',' Th_99',125,52884),(99,'Rajendra Place','Itanagar',420182,' The Arunachal Pradesh Milk Producers\' Union Limited (APMPUL)',' Th_100',' Th_100',116,0),(100,'Kirti Nagar','Raipur',186617,' The Chhattisgarh Milk Producers\' Union Limited (CPMPUL)',' Th_101',' Th_101',111,68952),(101,'Punjabi Bagh','Delhi',110005,'The Delhi Co-operative Milk Producers\' Union Limited (DCMPUL)','The_102','The_102',87,0);
/*!40000 ALTER TABLE `collective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collective_phone`
--

DROP TABLE IF EXISTS `collective_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collective_phone` (
  `collective_id` int NOT NULL,
  `phone` varchar(15) NOT NULL,
  UNIQUE KEY `phone` (`phone`),
  KEY `collective_id` (`collective_id`),
  CONSTRAINT `collective_phone_ibfk_1` FOREIGN KEY (`collective_id`) REFERENCES `collective` (`collective_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collective_phone`
--

LOCK TABLES `collective_phone` WRITE;
/*!40000 ALTER TABLE `collective_phone` DISABLE KEYS */;
INSERT INTO `collective_phone` VALUES (1,'9947528674'),(2,'9139704541'),(2,'9400564344'),(3,'9275663971'),(4,'9563758411'),(5,'9007037388'),(5,'9088065792'),(5,'9221993548'),(6,'9887500094'),(7,'9229535556'),(7,'9779429577'),(8,'9412848560'),(8,'9995958954'),(9,'9526353275'),(9,'9714726535'),(10,'9743607864'),(10,'9893959461'),(11,'9471066586'),(11,'9542405438'),(11,'9612961964'),(12,'9010795189'),(12,'9139776062'),(13,'9033173041'),(13,'9556625091'),(14,'9407575207'),(15,'9736631086'),(15,'9773848940'),(16,'9243068279'),(16,'9266183767'),(16,'9463299608'),(17,'9653961234'),(18,'9391177900'),(18,'9611852830'),(19,'9360578810'),(20,'9524148076'),(20,'9719026988'),(20,'9916906728'),(21,'9293005623'),(21,'9879937610'),(22,'9188903033'),(23,'9029513182'),(23,'9713452638'),(24,'9298476497'),(25,'9941289240'),(25,'9958033335'),(26,'9172293808'),(26,'9824877066'),(27,'9025231251'),(27,'9472357299'),(28,'9326897890'),(28,'9775562705'),(29,'9053418094'),(29,'9560609980'),(30,'9384260118'),(30,'9953588656'),(31,'9328236673'),(31,'9442106118'),(32,'9787409825'),(32,'9796027132'),(33,'9409474841'),(34,'9079300734'),(34,'9217915372'),(35,'9585690015'),(35,'9680687944'),(36,'9166359924'),(36,'9802391133'),(37,'9074599583'),(37,'9492230126'),(38,'9043283151'),(39,'9512276138'),(39,'9983604670'),(40,'9465001607'),(41,'9072994619'),(41,'9847951909'),(42,'9506629325'),(43,'9038377595'),(43,'9484257416'),(44,'9494696126'),(44,'9777039092'),(44,'9983308727'),(45,'9888191800'),(46,'9555650193'),(47,'9068517087'),(48,'9206540887'),(49,'9103387728'),(49,'9249256874'),(50,'9001315442'),(50,'9133944981'),(51,'9222116178'),(51,'9513365345'),(51,'9961870237'),(52,'9553617804'),(52,'9833391425'),(53,'9651483766'),(53,'9881788639'),(54,'9565016058'),(54,'9950379921'),(55,'9013579025'),(55,'9883974697'),(56,'9616522715'),(56,'9710843123'),(57,'9434857816'),(57,'9672906263'),(58,'9217408258'),(58,'9792369307'),(59,'9109954091'),(59,'9137407322'),(59,'9238964597'),(60,'9046524498'),(60,'9521093426'),(61,'9790094967'),(61,'9968615132'),(62,'9198355046'),(63,'9900126515'),(64,'9000606721'),(64,'9745161157'),(65,'9016857926'),(65,'9359517793'),(65,'9870617901'),(66,'9113111256'),(67,'9583592460'),(68,'9213942605'),(68,'9525801556'),(68,'9794260622'),(69,'9573032709'),(70,'9745061896'),(71,'9051978240'),(71,'9873130287'),(72,'9200001500'),(72,'9505036944'),(73,'9133525780'),(73,'9377810284'),(74,'9339333232'),(74,'9795275945'),(75,'9607652058'),(75,'9770089025'),(76,'9454798511'),(77,'9208730833'),(78,'9166219494'),(78,'9370596270'),(79,'9062962470'),(80,'9984841244'),(81,'9664084612'),(82,'9300526686'),(82,'9890142472'),(83,'9242107819'),(83,'9887620568'),(83,'9913089974'),(84,'9687270078'),(84,'9904046658'),(85,'9187076596'),(85,'9295252023'),(86,'9409859797'),(86,'9659929586'),(87,'9450034579'),(87,'9859755390'),(88,'9422877034'),(88,'9463319062'),(89,'9341670042'),(89,'9602531102'),(89,'9874565414'),(90,'9123333786'),(90,'9492677926'),(91,'9016251893'),(92,'9282267682'),(93,'9185102491'),(93,'9232930154'),(94,'9005334238'),(94,'9861687295'),(94,'9995757962'),(95,'9507008825'),(96,'9832297730'),(96,'9885416492'),(97,'9088582223'),(97,'9703010873'),(98,'9025902254'),(98,'9870600493'),(99,'9297991158'),(99,'9858795173'),(99,'9967912905'),(100,'9309272400');
/*!40000 ALTER TABLE `collective_phone` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Aarav',27,'male','9313839988'),(2,'Advait',41,'male','9366288521'),(3,'Aryan',34,'male','9243095235'),(4,'Avni',45,'female','9677243737'),(5,'Aisha',26,'female','9295892408'),(6,'Anaya',31,'female','9050287982'),(7,'Arjun',40,'male','9647827476'),(8,'Arnav',50,'male','9998544162'),(9,'Atharva',31,'male','9922805522'),(10,'Aniket',33,'male','9520346742'),(11,'Aaradhya',27,'female','9967682924'),(12,'Aditi',43,'female','9351557943'),(13,'Aditya',46,'male','9208963982'),(14,'Alia',40,'female','9689066739'),(15,'Amrita',50,'female','9566866207'),(16,'Anand',45,'male','9281550207'),(17,'Anika',35,'female','9777853700'),(18,'Anjali',25,'female','9790525607'),(19,'Aryan',45,'male','9622462761'),(20,'Avikar',42,'male','9320482338'),(21,'Anushka',50,'female','9321978811'),(22,'Apoorva',39,'female','9435800348'),(23,'Aruna',43,'female','9139045298'),(24,'Ashwin',30,'male','9851579095'),(25,'Avantika',48,'female','9441068854'),(26,'Bala',44,'male','9623701274'),(27,'Chaitanya',36,'male','9173029945'),(28,'Devanshi',30,'female','9878266846'),(29,'Dhruv',34,'male','9992032681'),(30,'Diya',43,'female','9019953840'),(31,'Disha',20,'female','9553726229'),(32,'Divya',44,'female','9189255860'),(33,'Esha',23,'female','9802291035'),(34,'Gaurav',34,'male','9966819051'),(35,'Hrithik',32,'male','9433166590'),(36,'Ishaan',36,'male','9179669447'),(37,'Isha',34,'female','9308138926'),(38,'Jhanvi',26,'female','9353973987'),(39,'Jai',48,'male','9400476160'),(40,'Jaya',40,'female','9840407071'),(41,'Kavya',38,'female','9439561382'),(42,'Kritika',28,'female','9317625838'),(43,'Karthik',49,'male','9885116133'),(44,'Kavyanjali',50,'female','9329522471'),(45,'Keerthi',27,'female','9237983693'),(46,'Lakshmi',46,'female','9543607283'),(47,'Maitreyi',42,'male','9050807094'),(48,'Meera',34,'female','9750417316'),(49,'Mukesh',50,'male','9159540504'),(50,'Naina',29,'female','9653556550'),(51,'Nandini',50,'female','9597307476'),(52,'Neha',30,'female','9481783541'),(53,'Nishant',25,'male','9801383967'),(54,'Nithya',24,'female','9077974793'),(55,'Pallavi',22,'female','9262810982'),(56,'Parth',42,'male','9448212330'),(57,'Pranav',26,'male','9064282272'),(58,'Priya',29,'female','9273433874'),(59,'Raghav',41,'male','9487696223'),(60,'Ramesh',20,'male','9804478152'),(61,'Rishabh',32,'male','9985708558'),(62,'Rohit',26,'male','9561701795'),(63,'Saina',36,'female','9605021249'),(64,'Samarth',48,'male','9091105171'),(65,'Sanjana',48,'female','9461947228'),(66,'Sarika',28,'female','9515061008'),(67,'Shikha',22,'female','9035020725'),(68,'Shreya',20,'female','9301782953'),(69,'Shubham',49,'male','9179827669'),(70,'Siddharth',20,'male','9688440270'),(71,'Smriti',38,'female','9347926013'),(72,'Sonali',44,'female','9803446088'),(73,'Srinivas',26,'male','9815465817'),(74,'Suraj',20,'male','9848261649'),(75,'Tanuja',25,'male','9454084106'),(76,'Trisha',30,'female','9931839527'),(77,'Usha',47,'female','9269534913'),(78,'Varsha',44,'female','9647150514'),(79,'Vasudev',39,'male','9304933066'),(80,'Vedika',33,'female','9495809779'),(81,'Vidhi',23,'female','9303828453'),(82,'Vivaan',48,'male','9485432706'),(83,'Vivek',29,'male','9522514121'),(84,'Yash',41,'male','9460874911'),(85,'Yashika',22,'female','9135510868'),(86,'Yogesh',34,'male','9945223170'),(87,'Abhinav',34,'male','9791690953'),(88,'Aditi',32,'female','9674482737'),(89,'Aditya',24,'female','9961152961'),(90,'Akash',38,'male','9785206481'),(91,'Akshat',27,'male','9471447691'),(92,'Alok',42,'male','9861520602'),(93,'Amol',30,'male','9324361682'),(94,'Anant',48,'male','9967366805'),(95,'Anmol',28,'male','9793232946'),(96,'Arjun',48,'male','9422523239'),(97,'Arnav',32,'male','9749035474'),(98,'Arun',26,'male','9611881684'),(99,'Ashish',32,'male','9578443378'),(100,'Karan',22,'male','9798054301'),(102,'abc',32,'male','921234567'),(103,'check1',23,'femboy','12121212'),(104,'aa',12,'male','8800661555'),(105,'yes',0,'male','9313839987'),(106,'k1',-1,'male','9313839986');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (20,'admin','logentry'),(22,'auth','group'),(21,'auth','permission'),(23,'auth','user'),(24,'contenttypes','contenttype'),(1,'ksheer','batch'),(2,'ksheer','bill'),(3,'ksheer','billproduct'),(4,'ksheer','collective'),(5,'ksheer','collectivephone'),(6,'ksheer','collectiverawmaterial'),(7,'ksheer','customer'),(8,'ksheer','districthq'),(9,'ksheer','districtwarehouse'),(10,'ksheer','executive'),(11,'ksheer','preservative'),(12,'ksheer','product'),(13,'ksheer','rawmaterial'),(14,'ksheer','rawmaterialused'),(15,'ksheer','retailer'),(16,'ksheer','retailerphone'),(17,'ksheer','retailerwarehouse'),(18,'ksheer','warehouse'),(19,'ksheer','warehousebatch'),(25,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-26 07:53:07.192154'),(2,'auth','0001_initial','2023-03-26 07:53:07.580979'),(3,'admin','0001_initial','2023-03-26 07:53:07.732542'),(4,'admin','0002_logentry_remove_auto_add','2023-03-26 07:53:07.743249'),(5,'admin','0003_logentry_add_action_flag_choices','2023-03-26 07:53:07.751850'),(6,'contenttypes','0002_remove_content_type_name','2023-03-26 07:53:07.819534'),(7,'auth','0002_alter_permission_name_max_length','2023-03-26 07:53:07.873366'),(8,'auth','0003_alter_user_email_max_length','2023-03-26 07:53:07.895840'),(9,'auth','0004_alter_user_username_opts','2023-03-26 07:53:07.952977'),(10,'auth','0005_alter_user_last_login_null','2023-03-26 07:53:07.996287'),(11,'auth','0006_require_contenttypes_0002','2023-03-26 07:53:07.999289'),(12,'auth','0007_alter_validators_add_error_messages','2023-03-26 07:53:08.006291'),(13,'auth','0008_alter_user_username_max_length','2023-03-26 07:53:08.063122'),(14,'auth','0009_alter_user_last_name_max_length','2023-03-26 07:53:08.116426'),(15,'auth','0010_alter_group_name_max_length','2023-03-26 07:53:08.137430'),(16,'auth','0011_update_proxy_permissions','2023-03-26 07:53:08.146904'),(17,'auth','0012_alter_user_first_name_max_length','2023-03-26 07:53:08.200342'),(18,'ksheer','0001_initial','2023-03-26 07:53:08.219783'),(19,'ksheer','0002_alter_batch_options_alter_product_options','2023-03-26 07:53:08.227778'),(20,'sessions','0001_initial','2023-03-26 07:53:08.259759'),(21,'ksheer','0003_alter_batch_options','2023-04-09 06:55:33.134853');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1rqfn62pdzoccjw0prwkrydmun94nazw','eyJudW1iZXIiOjEsInN0b3JlaWQiOjI4fQ:1pqZds:XGuuvYnR6jCQXxzRshMxlI415PA6V5voMYkLGgLGsgU','2023-05-07 13:20:36.740376'),('2racyk3oat6g4d5zafmnfg2k54yr2j16','eyJudW1iZXIiOjEsInN0b3JlaWQiOjI4LCJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pp9j8:m1TRusKBHZF_Klte9jm-fJQi-9zZa87D1L6J7YxwNLU','2023-05-03 15:28:10.713101'),('30zse0lo3it4n06g3swp0p8uatpuy4fp','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pko0I:q7Mbd6HR_3r8e2rApV16kMugUsU1StAfXxnBixgm8aE','2023-04-21 15:27:54.725281'),('bc35oa3o8k08pnl7ysd216tkuqb54odk','eyJudW1iZXIiOjEsInN0b3JlaWQiOjI4fQ:1pqueI:t42APPqzK8duu7Q2rMYxACeM32mvuLxus25JEScbE54','2023-05-08 11:46:26.855220'),('bpob99yfibahq6dp5ujxtlo9lkejtyap','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pkmsW:0tCTLawkliFcMRkQNY6Eo5LfCpyjfLMhnC-QZFzXqXs','2023-04-21 14:15:48.070343'),('fjcnxhzxo28sddpc7i1vfsydv6cmbro3','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIiwic3RvcmVpZCI6NDIsIm51bWJlciI6MX0:1pkmqQ:0Fs7XIZGAQ3fFGgbdk7KbvD-WIQWbBfoGEzxYWL27LA','2023-04-21 14:13:38.804087'),('gd0rjbasfhvjksoxpqkjb39pij6gko1h','eyJudW1iZXIiOjEsInN0b3JlaWQiOjI4LCJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pqtR6:DBfae7fhZ69od8lysDYQ9x4V72GfsBl-Op-mx-qV3lI','2023-05-08 10:28:44.171462'),('gvbhrpaxc1t9d8b4q8lnolz8c15v29lx','.eJyrVsorzU1KLVKyMtRRKi7JL0rNTFGyMrLQUUrOz8lJTS7JLEsFy5UWpxaBpJQcE4sSy-KNlCBCJZUFQHmlVKVaAIyCGA4:1pojkm:5RUcJLAAtwJ5qN4vBA13Zrie49d2MoLf73dZl6eLuvg','2023-05-02 11:44:08.197112'),('lzrca5tg6xz24yrnl02h7tx78lde4auy','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pqygm:cwc9BHi4oigN8frQEsyGuloi5wd5t-cEtFwSRC5ngC4','2023-05-08 16:05:16.996116'),('nm4m7qlofnucsndqpvl0a1gprvt3hn7s','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pp7lI:nWW5xuutb2H1PD1DCRpkiZEFdoadkESh0tCWtUFvs2c','2023-05-03 13:22:16.185070'),('nzl23czzlzyqoecqkretugjh8rgmuvv0','.eJyrVkrOz8lJTS7JLEtVsjLUUcorzU1KLQIzi0vyi1IzU5SsjCx0lEqLU4tAbKWgxKx4IyWIQEllAVCXUrJSLQBiiRc-:1pr08E:1Rf5LTOL5z-sppJPvCz_V0fcSfZyBLcyJ2DKXNTrGro','2023-05-08 17:37:42.127687'),('o1jhe3ym9xkyqhag5sgbp88dtv4xkyln','.eJyrVsorzU1KLVKyMtRRKi7JL0rNTFGyMrLQUUouLS4BsYHiyfk5OanJJZllqWBuaXFqEUhGySfeyFIJwi-pLABKKhUp1QIAR4EaHA:1ppdqX:9GERjo9DyngdxI41EiHaGbXzqQiGslqBPx9hJHt76Hw','2023-05-04 23:37:49.666712'),('qfzoy9p34m7cxtq1sayp1a588rje50lj','.eJyrVsorzU1KLVKyMtRRKi7JL0rNTFGyMrLQUUouLS4BsYHipcWpRSCmkmNiUWJZvJESRKiksiAVKJiqVAsAIQUWcA:1pqXWf:QEIWUeHuS0Z7d2PhQdXB5RYvTyAsrk4oClSLupn-HSU','2023-05-07 11:05:01.789021'),('s9i6ajt3734f8b7nos157irfdqla394k','eyJ1c2VyaWQiOiJBYXJhdl8yIiwidXNlcnR5cGUiOiJlIn0:1pko9G:wbDa60WbR6GABYrAyO4JH08AjTcc-P-Vgjvi9eB2d3w','2023-04-21 15:37:10.186792');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!50001 DROP VIEW IF EXISTS `employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees` AS SELECT 
 1 AS `emp_id`,
 1 AS `name`,
 1 AS `department`,
 1 AS `hq_id`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` varchar(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fat_percent` int NOT NULL,
  `protein_percent` int NOT NULL,
  `calories` int NOT NULL,
  `Cost` int NOT NULL,
  `mrp` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('bu01','butter',7,2,396,50,100),('bu02','garlic butter',7,1,341,60,120),('bu03','unsalted butter',2,6,370,45,90),('bu04','white butter',6,4,131,65,130),('ce01','cheese slice',5,6,468,75,150),('ce02','cream cheese',4,6,492,90,180),('ce03','processed cheese',1,6,314,90,180),('ce04','mozzarella cheese',0,5,495,85,170),('ce05','cheddar cheese',3,5,219,95,190),('ce06','diced blend cheese',9,3,259,93,185),('ce07','gouda cheese',3,3,21,100,200),('ce08','processed pizza cheese',3,1,236,100,200),('ce09','buffalo mozzarella cheese',6,5,390,110,220),('ck01','coconut cookies',5,2,85,25,50),('ck02','butter cookies',0,6,401,30,60),('ck03','cashew cookies',3,1,294,40,80),('ck04','chocolate cookies',0,1,21,20,40),('ck05','almond cookies',8,3,396,35,70),('ck06','multigrain cookies',6,3,454,25,50),('co01','dark chocolate(25%)',9,3,309,50,100),('co02','milk chocolate',7,2,223,15,30),('co03','dark chocolate(75%)',5,1,193,70,140),('co04','dark chocolate(50%)',7,4,34,60,120),('co05','fruit n nut dark chocolate',3,1,461,55,110),('co06','orange dark chocolate',3,1,350,45,90),('co07','hazenut chocolate',5,1,383,35,70),('co08','raisin n almond chocolate',3,0,447,40,80),('co09','energy bar',9,1,37,18,35),('co10','white chocolate',1,0,152,20,40),('co11','camel milk chocolate',4,1,429,30,60),('co12','dark chocolate(90%)',8,4,396,90,180),('co13','belgian milk chocolate',8,5,145,80,160),('cr01','whipped cream',2,0,292,15,30),('cr02','sour cream',3,0,139,20,40),('cs01','pizza sauce',3,4,19,40,80),('cs02','jalepeno sauce',9,3,177,40,80),('cs03','mexican salsa sauce',0,0,249,45,90),('cs04','green chutney',3,3,418,20,40),('da01','fruit dahi',0,5,80,15,30),('da02','dahi masti',7,3,471,15,30),('da03','mishti',5,3,337,20,40),('da04','meethi dahi',4,0,28,15,30),('da05','premium dahi',1,0,249,25,50),('da06','dahi',1,3,348,20,30),('gh01','desi ghee',3,2,409,45,90),('gh02','cow ghee',0,5,413,55,110),('gh03','sagar ghee',9,6,279,50,100),('gh04','premium ghee',2,6,6,70,140),('gh05','brown ghee',2,5,288,60,120),('gh06','NOTghee',0,0,8,80,160),('icc01','cookie cream cup',2,3,162,25,50),('icc02','chocolate cup',7,5,474,15,30),('icc03','vanilla royale cup',0,1,57,20,30),('icc04','strawberry cup',9,3,113,15,30),('icc05','alphonso mango cup',3,5,498,20,40),('icc06','tutti frutti cup',1,3,430,25,50),('icm01','buscotch cone',7,0,427,30,60),('icm02','black currant cone',1,0,240,35,70),('icm03','choco vanilla cone',3,2,121,30,60),('icm04','badam pista cone',8,3,59,35,70),('icm05','two in one cone',9,0,134,40,80),('ict01','choco chip tub',0,6,12,50,100),('ict02','fruit n nut tub',6,2,43,50,100),('ict03','almond tub',5,2,369,55,110),('ict04','buscotch tub',5,4,451,45,90),('ict05','kesar pista tub',5,2,222,65,130),('ll69','loda milk',5,5,5,5,5),('mi01','UHT milk',2,0,35,15,30),('mi02','Lactose free milk',3,6,57,16,32),('mi03','Cow milk',8,3,165,17,34),('mi04','Diamond milk',0,5,8,18,36),('mi05','camel milk',9,3,293,19,38),('mi06','ksheer gold milk',3,1,95,20,40),('mi07','full cream milk',8,6,53,21,42),('mi08','goat milk',0,0,95,24,48),('mi09','special milk',6,1,144,25,50),('mi10','buffalo milk',5,2,82,25,50),('mi11','boob milk',6,6,69,169,69),('mp01','special milk powder',4,0,101,25,50),('mp02','amulya milk powder',6,4,441,25,50),('mp03','premium milk powder',4,1,142,35,70),('mt01','gulab jamun',6,6,80,100,200),('mt02','shrikhand',0,0,66,110,220),('mt03','basundi',9,3,324,110,220),('mt04','laddoo',0,0,254,120,240),('mt05','rabri',5,5,301,100,200),('mt06','kaju katli',3,6,224,100,200),('ob01','flavoured milk',6,0,180,25,50),('ob02','lassi',0,5,119,20,40),('ob03','butter milk',8,5,103,20,40),('ob04','chocolate milk',0,3,14,28,55),('ob05','banana shake',2,1,2,25,50),('ob06','protein shake',4,2,355,30,60),('ob07','vanilla mishake',7,4,48,15,30),('ob08','smoothies',2,6,115,20,40),('ob09','kool shake',0,2,11,25,50),('pa01','malai paneer',2,5,441,40,80),('pa02','fresh paneer',6,5,149,30,60),('sp01','choco spread',9,3,362,40,80),('sp02','ksheer lite spread',3,3,416,50,100),('sp03','peanut spread',8,5,89,60,120);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_material`
--

DROP TABLE IF EXISTS `raw_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material` (
  `raw_id` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fat_percent` int NOT NULL,
  `protein_percent` int NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `rate` int NOT NULL,
  PRIMARY KEY (`raw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material`
--

LOCK TABLES `raw_material` WRITE;
/*!40000 ALTER TABLE `raw_material` DISABLE KEYS */;
INSERT INTO `raw_material` VALUES ('ama','camel milk A',4,4,18015,30),('amb','camel milk B',4,2,17267,28),('amc','camel milk C',6,1,7485,27),('amd','camel milk D',5,3,11971,28),('ame','camel milk E',6,4,11106,26),('bma','buffalo milk A',2,5,13277,22),('bmb','buffalo milk B',2,4,16660,22),('bmc','buffalo milk C',4,5,17328,20),('bmd','buffalo milk D',5,6,15804,19),('bme','buffalo milk E',6,8,13498,19),('cma','cow milk A',4,6,16642,25),('cmb','cow milk B',5,4,15581,22),('cmc','cow milk C',8,4,13271,22),('cmd','cow milk D',9,2,13006,20),('cme','cow milk E',9,5,12784,20),('gma','goat milk A',3,5,12478,20),('gmb','goat milk B',4,3,18256,19),('gmc','goat milk C',4,4,12613,18),('gmd','goat milk D',4,4,15476,17),('gme','goat milk E',5,2,16329,16),('sc','sugarcane',10,2,7000,40);
/*!40000 ALTER TABLE `raw_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer`
--

DROP TABLE IF EXISTS `retailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retailer` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `profit` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer`
--

LOCK TABLES `retailer` WRITE;
/*!40000 ALTER TABLE `retailer` DISABLE KEYS */;
INSERT INTO `retailer` VALUES (1,'Ramkrishna Samadhi Road','Mumbai',700027,'Kishore Kirana Store','Ma_2','Ma_2',8606),(2,'15th Cross','Kolk?ta',560038,'Madhav General Store','Et_3','Et_3',600),(3,'Raghunathpur Road','Bangalore',800013,'Anand Provision Store','Li_4','Li_4',7634),(4,'Vikas Nagar','Chennai',226022,'Shree Ji General Store','No_5','No_5',4749),(5,'Navi ','Hyder?b?d',400703,'Raghav Kirana Store','Wi_6','Wi_6',267),(6,'Shastri Nagar','Pune',110052,'Shivam Provision Store','Ja_7','Ja_7',7221),(7,'R. K. Puram','Ahmedabad',500056,'Mittal Provision Store','Ol_8','Ol_8',70),(8,'Nehru Nagar','S?rat',201001,'Vardhaman General Store','Be_9','Be_9',784),(9,'Kanpur Road,','Lucknow',226012,'Goel Kirana Store','El_10','El_10',2458),(10,'Sant Nagar','Jaipur',110065,' Laxmi General Store','Lu_11','Lu_11',7968),(11,'Sainik Nagar','Cawnpore',208005,' Garg Provision Store','Ma_12','Ma_12',6057),(12,'New Aligarh','Mirz?pur',202001,' Saini General Store','Al_13','Al_13',8941),(13,'R. K. Puram','N?gpur',110022,' Singhal Kirana Store','Ja_14','Ja_14',6701),(14,'Sector 12','Gh?zi?b?d',201301,' Bharat Provision Store','M_15','M_15',6208),(15,'Indirapuram','Indore',201014,' Raj Kirana Store','D_16','D_16',7331),(16,'Kavi Nagar','Vadodara',201002,' Aggarwal Provision Store','M_17','M_17',5312),(17,'Rajendra Nagar','Vish?khapatnam',800016,' Mehta General Store','S_18','S_18',909),(18,'Sector 19','Bhop?l',110075,' Tyagi Kirana Store','J_19','J_19',148),(19,'Sainik Nagar ','Chinchvad',208005,' Gupta Provision Store','D_20','D_20',3108),(20,'Vasundhara','Patna',201012,' Dhawan General Store','B_21','B_21',4610),(21,'R. K. Puram','Ludhi?na',110022,' Jain Kirana Store','A_22','A_22',27),(22,'Sector 14','?gra',201301,' Arora Provision Store','R_23','R_23',4184),(23,'Sainik Nagar','Kaly?n',208005,' Malik General Store','J_24','J_24',7373),(24,'Kavi Nagar','Madurai',201002,' Sharma Kirana Store','T_25','T_25',9808),(25,'Rajendra Nagar','Jamshedpur',800016,' Patel Provision Store','D_26','D_26',1303),(26,'Sector 19, ','N?sik',110075,' Verma General','N_27','N_27',2214),(27,'Sainik Nagar, ','Far?d?b?d',208005,' Singh General Store','Z_28','Z_28',6077),(28,'MG Road','Aurang?b?d',201012,' Kapoor Kirana Store','L_29','L_29',2448),(29,'Park Street','R?jkot',110022,' Chauhan Provision Store','C_30','C_30',4262),(30,'Linking Road','Meerut',201301,' Saxena General Store','C_31','C_31',5298),(31,'Janpath','Jabalpur',208005,' Rawat Kirana Store','A_32','A_32',1576),(32,'Brigade Road','Th?ne',201002,' Bhatia Provision Store','H_33','H_33',1684),(33,'Church Street','Dhanb?d',800016,' Mathur General Store','O_34','O_34',9002),(34,'Main Bazaar','Allah?b?d',110075,' Arya Kirana Store','J_35','J_35',2138),(35,'Carter Road','V?r?nasi',110078,' Chaudhary Provision Store','G_36','G_36',7723),(36,'Hill Road','Sr?nagar',110065,' Srivastava General Store','W_37','W_37',5358),(37,'Turner Road','Amritsar',208005,' Goyal Kirana Store','A_38','A_38',3894),(38,'Carter Road','Al?garh',201012,' Wadhera Provision Store','E_39','E_39',3916),(39,'Hill Road','Bhiwandi',110022,' Oberoi General Store','P_40','P_40',5578),(40,'Turner Road','Gwalior',201301,' Tiwari Kirana Store','J_41','J_41',3742),(41,'Nehru Road','Bhilai',208005,' Singh Provision Store','G_42','G_42',5877),(42,'Mount Road','H?ora',201002,' Tandon General Store','C_43','C_43',1207),(43,'Periyar Road','R?nchi',800016,' Mehra Kirana Store','L_44','L_44',5877),(44,'100 Feet Road','Bezw?da',110075,' Ahuja Provision Store','I_45','I_45',3148),(45,'Sarat Bose Road','Chand?garh',208005,' Grover General Store','J_46','J_46',1097),(46,'S.V. Road','Mysore',201012,' Sehgal Kirana Store','A_47','A_47',6983),(47,'Lamington Road','Raipur',110022,' Aggarwal Provision Store','N_48','N_48',5602),(48,'Link Road','Kota',201301,' Kaur General Store','G_49','G_49',2929),(49,'Rani Jhansi Road','Bareilly',208005,' Bedi Kirana Store','E_50','E_50',3531),(50,'Veer Savarkar Marg','Jodhpur',201002,' Kochhar Provision Store','I_51','I_51',99),(51,'M.G. Road','Coimbatore',800016,' Dua General Store','L_52','L_52',8522),(52,'Park Avenue','Dispur',110075,' Chhabra Kirana Store','L_53','L_53',2677),(53,'Queens Road','Guw?h?ti',208005,' Dhillon Provision Store','N_54','N_54',7819),(54,'Union Street','Sol?pur',201012,' Basu General Store','E_55','E_55',7688),(55,'Marol Maroshi Road','Trichinopoly',110022,' Aneja Kirana Store','J_56','J_56',2567),(56,'Hill Road','Hubli',201301,' Chaddha Provision Store','D_57','D_57',8845),(57,'Bandra Reclamation','Jalandhar',208005,' Bhandari General Store','A_58','A_58',1880),(58,'Jogeshwari Vikhroli Link Road','Bhubaneshwar',201002,' Kishan Kirana Store','W_59','W_59',897),(59,'Juhu Tara Road','Bhayandar',800016,' Talwar Provision Store','M_60','M_60',8336),(60,'Marine Drive','Mor?d?b?d',110075,' Gaur General Store','O_61','O_61',3971),(61,'Elphinstone Road','Kolh?pur',208005,' Bhat Kirana Store','J_62','J_62',6971),(62,'Nariman Point','Thiruvananthapuram',201012,' Talwar Provision Store','C_63','C_63',3381),(63,'Waterfield Road','Sah?ranpur',110022,' Banerjee General Store','L_64','L_64',3277),(64,'Haji Ali','Warangal',201301,' Khanna Kirana Store','A_65','A_65',2676),(65,'Kemps Corner','Salem',208005,' Nayyar Provision Store','E_66','E_66',7276),(66,'Colaba Causeway','M?legaon',201002,' Chakraborty General Store','B_67','B_67',5963),(67,'Prabhadevi','Kochi',800016,' Nanda Kirana Store','W_68','W_68',5370),(68,'Opera House','Gorakhpur',110075,' Sood Provision Store','N_69','N_69',7219),(69,'Ballygunge Place','Shimoga',208005,' Shukla General Store','J_70','J_70',7447),(70,'Sudder Street','Tirupp?r',208004,' Saini Kirana Store','O_71','O_71',9415),(71,'Chittaranjan Avenue','Gunt?r',112450,' Mathur Provision Store','E_72','E_72',1501),(72,'New Alipore','Raurkela',113560,' Bhatt General Store','L_73','L_73',5576),(73,'Rash Behari Avenue','Mangalore',201002,' Arora Kirana Store','W_74','W_74',4968),(74,'Howrah Bridge','N?nded',800016,' Puri Provision Store','M_75','M_75',499),(75,'S.N Banerjee Road','Cuttack',110075,' Tandon General Store','O_76','O_76',6100),(76,'Bhowanipore','Ch?nda',208005,' Wadhwa Kirana Store','A_77','A_77',6852),(77,'J.L. Nehru Road','Dehra D?n',201002,' Chopra Provision Store','B_78','B_78',9833),(78,'Lenin Sarani','Durg?pur',800016,' Vohra General Store','E_79','E_79',3306),(79,'Taltala','?sansol',201301,' Anand Kirana Store','W_80','W_80',8308),(80,'B.B.D Bagh','Bh?vnagar',208005,' Kataria Provision Store','N_81','N_81',6289),(81,'Free School Street','Amr?vati',201002,' Singh General Store','M_82','M_82',6033),(82,'Bepin Behari Ganguly Street','Nellore',800016,' Kaushik Kirana Store','O_83','O_83',7051),(83,'A.P.C Road','Ajmer',110075,' Mohan Provision Store','A_84','A_84',9736),(84,'Raja Ram Mohan Roy Road','Tinnevelly',208005,' Saini General Store','E_85','E_85',3806),(85,'C.R Avenue','B?kaner',201002,' Negi Kirana Store','W_86','W_86',2074),(86,'R.K Mission Road','Agartala',800016,' Khurana Provision Store','N_87','N_87',1539),(87,'Shakespeare Sarani','Ujjain',201301,' Jain General Store','M_88','M_88',4000),(88,'Camac Street','Jh?nsi',208005,' Chopra Kirana Store','O_89','O_89',2444),(89,'Chirag Dilli','Ulh?snagar',201002,' Suri Provision Store','A_90','A_90',1126),(90,'Hauz Khas Village','Davangere',800016,' Gill General Store','B_91','B_91',5784),(91,'Ghaffar Market','Jammu',110075,' Grewal Kirana Store','E_92','E_92',2491),(92,'Defence Colony','Belgaum',208005,' Bhatia Provision Store','W_93','W_93',9972),(93,'Safdarjung Enclave','Gulbarga',201002,' Bhat General Store','N_94','N_94',2488),(94,'Connaught Place','J?mnagar',800016,' Dhingra Kirana Store','M_95','M_95',9150),(95,'India Gate','Dh?lia',201301,' Duggal Provision Store','O_96','O_96',9967),(96,'Khan Market','Gaya',208005,' Agarwal General Store','A_97','A_97',2290),(97,'Lajpat Nagar','Jalgaon',201002,' Saini Kirana Store','B_98','B_98',5242),(98,'Greater Kailash','Kurnool',800016,' Rana Provision Store','E_99','E_99',1659),(99,'Karol Bagh','Udaipur',110075,' Mukherjee General Store','W_100','W_100',65),(100,'Paharganj','Bellary',208005,'Bhatia Kirana Store','No_101','No_101',4396);
/*!40000 ALTER TABLE `retailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer_phone`
--

DROP TABLE IF EXISTS `retailer_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retailer_phone` (
  `store_id` int NOT NULL,
  `phone` varchar(15) NOT NULL,
  UNIQUE KEY `phone` (`phone`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `retailer_phone_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `retailer` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_phone`
--

LOCK TABLES `retailer_phone` WRITE;
/*!40000 ALTER TABLE `retailer_phone` DISABLE KEYS */;
INSERT INTO `retailer_phone` VALUES (1,'8576135'),(1,'9696550178'),(2,'9607026436'),(3,'9131395184'),(3,'9602207436'),(4,'9500639994'),(4,'9620728326'),(5,'9888709249'),(5,'9905365839'),(6,'9073944758'),(6,'9680401275'),(6,'9698216506'),(6,'9733392685'),(7,'9103127301'),(7,'9329244661'),(7,'9686486369'),(7,'9821840544'),(8,'9382628988'),(8,'9883047986'),(8,'9950365154'),(9,'9242325290'),(9,'9355954357'),(10,'9503159415'),(10,'9608343536'),(11,'9034274148'),(12,'9275507966'),(13,'9192774856'),(13,'9343000215'),(13,'9479397790'),(14,'9866510827'),(15,'9842975739'),(16,'9712633509'),(16,'9964995542'),(17,'9855495973'),(18,'9357577321'),(18,'9849381577'),(19,'9212258166'),(19,'9439651577'),(19,'9559155659'),(20,'9910087945'),(21,'9720656139'),(21,'9786374428'),(22,'9147180923'),(22,'9780998785'),(23,'9576269734'),(24,'9138952264'),(25,'9332917839'),(25,'9415679364'),(25,'9847816072'),(26,'9279502128'),(26,'9900352468'),(27,'9339503773'),(27,'9713014005'),(28,'9030085963'),(29,'9455176287'),(30,'9157270790'),(30,'9941748610'),(31,'9202697113'),(32,'9671009134'),(32,'9899766985'),(33,'9580681004'),(34,'9007537735'),(34,'9075795831'),(34,'9561763030'),(35,'9112240142'),(35,'9232603157'),(36,'9045990920'),(36,'9721284243'),(37,'9043172667'),(37,'9744466169'),(38,'9059709711'),(39,'9254761900'),(39,'9355647057'),(40,'9076622115'),(40,'9126849560'),(41,'9452836616'),(42,'9739127302'),(43,'9022778840'),(43,'9296124543'),(43,'9846580214'),(44,'9487436987'),(45,'9243026842'),(45,'9416408595'),(45,'9560682518'),(46,'9209645617'),(46,'9348726016'),(46,'9948069350'),(47,'9263504263'),(47,'9865063736'),(48,'9287695581'),(49,'9138646464'),(49,'9161696288'),(49,'9173474314'),(49,'9360956886'),(49,'9600063986'),(50,'9050768878'),(50,'9685330981'),(51,'9493982870'),(51,'9533823045'),(52,'9901210722'),(53,'9059479332'),(53,'9374560461'),(53,'9508009279'),(53,'9570407000'),(54,'9564811240'),(55,'9090628962'),(55,'9122645564'),(55,'9273050219'),(55,'9579124125'),(55,'9855444296'),(56,'9584468360'),(57,'9460640251'),(58,'9899695417'),(59,'9075787048'),(59,'9406682124'),(59,'9723593192'),(60,'9392994654'),(61,'9257401038'),(61,'9317722562'),(61,'9719993328'),(62,'9255632638'),(62,'9940941313'),(63,'9201731523'),(63,'9876424163'),(63,'9895034977'),(63,'9948193335'),(64,'9022338549'),(64,'9102953311'),(65,'9146122381'),(65,'9365499224'),(65,'9538140715'),(65,'9791069583'),(65,'9891957734'),(66,'9216130691'),(66,'9659562511'),(67,'9694804382'),(68,'9235014004'),(68,'9264439044'),(68,'9684611477'),(69,'9227756138'),(69,'9738794834'),(69,'9946471002'),(70,'9088640809'),(70,'9240531598'),(70,'9396202196'),(70,'9672161276'),(71,'9414694253'),(72,'9845848540'),(73,'9243372798'),(74,'9518266780'),(74,'9738495478'),(75,'9954989849'),(76,'9483996280'),(76,'9512271430'),(77,'9385908032'),(78,'9142700917'),(79,'9146247081'),(79,'9646198851'),(80,'9656920715'),(81,'9174689595'),(81,'9464189260'),(82,'9480672590'),(82,'9593064491'),(82,'9694873173'),(83,'9626418376'),(83,'9707817401'),(84,'9630698061'),(85,'9536837396'),(85,'9903216691'),(85,'9955867973'),(86,'9043908720'),(86,'9287249712'),(86,'9505563387'),(87,'9735879961'),(88,'9863406330'),(89,'9682680146'),(90,'9063222947'),(90,'9066841625'),(90,'9297070493'),(90,'9399952305'),(91,'9393408543'),(92,'9033680480'),(92,'9735505856'),(93,'9146148538'),(94,'9705033362'),(94,'9773702885'),(94,'9824081633'),(95,'9334243407'),(95,'9400540144'),(95,'9551318912'),(96,'9131177120'),(96,'9443166376'),(96,'9752270325'),(97,'9218695974'),(97,'9337910614'),(97,'9550329397'),(98,'9629517723'),(99,'9227415227'),(99,'9342636117'),(100,'9549201725'),(100,'9555274333');
/*!40000 ALTER TABLE `retailer_phone` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `retailer_warehouse` VALUES (1,141),(2,142),(3,143),(4,144),(5,145),(6,146),(7,147),(8,148),(9,149),(10,150),(11,151),(12,152),(13,153),(14,154),(15,155),(16,156),(17,157),(18,158),(19,159),(20,160),(21,161),(22,162),(23,163),(24,164),(25,165),(26,166),(27,167),(28,168),(29,169),(30,170),(31,171),(32,172),(33,173),(34,174),(35,175),(36,176),(37,177),(38,178),(39,179),(40,180),(41,181),(42,182),(43,183),(44,184),(45,185),(46,186),(47,187),(48,188),(49,189),(50,190),(51,191),(52,192),(53,193),(54,194),(55,195),(56,196),(57,197),(58,198),(59,199),(60,200),(61,201),(62,202),(63,203),(64,204),(65,205),(66,206),(67,207),(68,208),(69,209),(70,210),(71,211),(72,212),(73,213),(74,214),(75,215),(76,216),(77,217),(78,218),(79,219),(80,220),(81,221),(82,222),(83,223),(84,224),(85,225),(86,226),(87,227),(88,228),(89,229),(90,230),(91,231),(92,232),(93,233),(94,234),(95,235),(96,236),(97,237),(58,2),(42,3),(1,1),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(28,244);
/*!40000 ALTER TABLE `retailer_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `store_inventory`
--

DROP TABLE IF EXISTS `store_inventory`;
/*!50001 DROP VIEW IF EXISTS `store_inventory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `store_inventory` AS SELECT 
 1 AS `store_id`,
 1 AS `warehouse_id`,
 1 AS `batch_id`,
 1 AS `product_id`,
 1 AS `quantity`,
 1 AS `expiry_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Ramkrishna Samadhi Road','Mumbai',700027,0),(2,'15th Cross','Kolk?ta',560038,64000),(3,'Raghunathpur Road','Bangalore',800013,32000),(4,'Vikas Nagar','Chennai',226022,73000),(5,'Navi ','Hyderabad',400703,92000),(6,'Shastri Nagar','Pune',110052,80000),(7,'R. K. Puram','Ahmedabad',500056,96000),(8,'Nehru Nagar','Surat',201001,69000),(9,'Kanpur Road,','Lucknow',226012,19000),(10,'Sant Nagar','Jaipur',110065,28000),(11,'Sainik Nagar','Cawnpore',208005,69000),(12,'New Aligarh','Mirz?pur',202001,16000),(13,'R. K. Puram','N?gpur',110022,1000),(14,'Sector 12','Gh?zi?b?d',201301,71000),(15,'Indirapuram','Indore',201014,64000),(16,'Kavi Nagar','Vadodara',201002,0),(17,'Rajendra Nagar','Vish?khapatnam',800016,20000),(18,'Sector 19','Bhop?l',110075,88000),(19,'Sainik Nagar ','Chinchvad',208005,5000),(20,'Vasundhara','Patna',201012,96000),(21,'R. K. Puram','Ludhi?na',110022,7000),(22,'Sector 14','?gra',201301,76000),(23,'Sainik Nagar','Kaly?n',208005,97000),(24,'Kavi Nagar','Madurai',201002,80000),(25,'Rajendra Nagar','Jamshedpur',800016,29000),(26,'Sector 19, ','N?sik',110075,74000),(27,'Sainik Nagar, ','Far?d?b?d',208005,35000),(28,'MG Road','Aurang?b?d',201012,65000),(29,'Park Street','R?jkot',110022,75000),(30,'Linking Road','Meerut',201301,71000),(31,'Janpath','Jabalpur',208005,85000),(32,'Brigade Road','Th?ne',201002,56000),(33,'Church Street','Dhanb?d',800016,49000),(34,'Main Bazaar','Allah?b?d',110075,68000),(35,'Carter Road','V?r?nasi',110078,65000),(36,'Hill Road','Sr?nagar',110065,96000),(37,'Turner Road','Amritsar',208005,86000),(38,'Carter Road','Al?garh',201012,55000),(39,'Hill Road','Bhiwandi',110022,37000),(40,'Turner Road','Gwalior',201301,91000),(41,'Nehru Road','Bhilai',208005,71000),(42,'Mount Road','H?ora',201002,66000),(43,'Periyar Road','R?nchi',800016,91000),(44,'100 Feet Road','Bezw?da',110075,7000),(45,'Sarat Bose Road','Chand?garh',208005,61000),(46,'Ramkrishna Samadhi Road','Mysore',201012,60000),(47,'15th Cross','Raipur',110022,1000),(48,'Raghunathpur Road','Kota',201301,53000),(49,'Vikas Nagar','Bareilly',208005,32000),(50,'Navi ','Jodhpur',201002,63000),(51,'Shastri Nagar','Coimbatore',800016,40000),(52,'R. K. Puram','Dispur',110075,67000),(53,'Nehru Nagar','Guw?h?ti',208005,50000),(54,'Kanpur Road,','Sol?pur',201012,54000),(55,'Sant Nagar','Trichinopoly',110022,52000),(56,'Sainik Nagar','Hubli',201301,29000),(57,'New Aligarh','Jalandhar',208005,18000),(58,'R. K. Puram','Bhubaneshwar',201002,47000),(59,'Sector 12','Bhayandar',800016,51000),(60,'Indirapuram','Mor?d?b?d',110075,37000),(61,'Kavi Nagar','Kolh?pur',208005,92000),(62,'Rajendra Nagar','Thiruvananthapuram',201012,91000),(63,'Sector 19','Sah?ranpur',110022,22000),(64,'Sainik Nagar ','Warangal',201301,21000),(65,'Vasundhara','Salem',208005,52000),(66,'R. K. Puram','M?legaon',201002,16000),(67,'Sector 14','Kochi',800016,76000),(68,'Sainik Nagar','Gorakhpur',110075,67000),(69,'Kavi Nagar','Shimoga',208005,34000),(70,'Rajendra Nagar','Tirupp?r',208004,15000),(71,'Sector 19, ','Gunt?r',112450,57000),(72,'Sainik Nagar, ','Raurkela',113560,25000),(73,'MG Road','Mangalore',201002,36000),(74,'Park Street','N?nded',800016,65000),(75,'Linking Road','Cuttack',110075,32000),(76,'Janpath','Ch?nda',208005,67000),(77,'Brigade Road','Dehra D?n',201002,79000),(78,'Church Street','Durg?pur',800016,14000),(79,'Main Bazaar','?sansol',201301,91000),(80,'Carter Road','Bh?vnagar',208005,64000),(81,'Hill Road','Amr?vati',201002,18000),(82,'Turner Road','Nellore',800016,63000),(83,'Carter Road','Ajmer',110075,57000),(84,'Hill Road','Tinnevelly',208005,40000),(85,'Turner Road','B?kaner',201002,42000),(86,'Nehru Road','Agartala',800016,65000),(87,'Mount Road','Ujjain',201301,45000),(88,'Periyar Road','Jh?nsi',208005,92000),(89,'100 Feet Road','Ulh?snagar',201002,6000),(90,'Sarat Bose Road','Davangere',800016,42000),(91,'S.V. Road','Jammu',110075,81000),(92,'Lamington Road','Belgaum',208005,21000),(93,'Link Road','Gulbarga',201002,40000),(94,'Rani Jhansi Road','J?mnagar',800016,7000),(95,'Veer Savarkar Marg','Dh?lia',201301,42000),(96,'M.G. Road','Gaya',208005,99000),(97,'Park Avenue','Jalgaon',201002,13000),(98,'Queens Road','Kurnool',800016,96000),(99,'Union Street','Udaipur',110075,19000),(100,'Marol Maroshi Road','Bellary',208005,78000),(101,'Hill Road','Ch?nda',76790,16000),(102,'Bandra Reclamation','Dehra D?n',61792,75000),(103,'Jogeshwari Vikhroli Link Road','Durg?pur',65646,25000),(104,'Juhu Tara Road','?sansol',46412,68000),(105,'Marine Drive','Bh?vnagar',108951,42000),(106,'Elphinstone Road','Amr?vati',28758,53000),(107,'Nariman Point','Nellore',17136,64000),(108,'Waterfield Road','Ajmer',32104,29000),(109,'Haji Ali','Tinnevelly',20876,34000),(110,'Kemps Corner','B?kaner',32017,31000),(111,'Colaba Causeway','Agartala',47196,56000),(112,'Prabhadevi','Ujjain',37624,47000),(113,'Opera House','Jh?nsi',37251,32000),(114,'Ballygunge Place','Ulh?snagar',42418,54000),(115,'Sudder Street','Davangere',46842,97000),(116,'Chittaranjan Avenue','Jammu',37121,70000),(117,'New Alipore','Belgaum',102562,54000),(118,'Rash Behari Avenue','Gulbarga',93637,21000),(119,'Howrah Bridge','J?mnagar',30495,69000),(120,'S.N Banerjee Road','Dh?lia',27185,16000),(121,'Bhowanipore','Gaya',107460,56000),(122,'J.L. Nehru Road','Jalgaon',105783,65000),(123,'Lenin Sarani','Kurnool',53494,44000),(124,'Taltala','Udaipur',75307,27000),(125,'B.B.D Bagh','Bellary',32276,11000),(126,'Free School Street','S?ngli',97450,73000),(127,'Bepin Behari Ganguly Street','Tuticorin',72589,95000),(128,'A.P.C Road','Calicut',26421,39000),(129,'Raja Ram Mohan Roy Road','Akola',63013,83000),(130,'C.R Avenue','Bh?galpur',79630,84000),(131,'R.K Mission Road','S?kar',50411,28000),(132,'Shakespeare Sarani','Tumk?r',33335,77000),(133,'Camac Street','Quilon',52646,91000),(134,'Chirag Dilli','Muzaffarnagar',21933,83000),(135,'Hauz Khas Village','Bh?lw?ra',96317,13000),(136,'Ghaffar Market','Niz?m?b?d',96434,91000),(137,'Defence Colony','Bh?tp?ra',106914,26000),(138,'Safdarjung Enclave','K?kin?da',25185,14000),(139,'Connaught Place','Parbhani',56406,11000),(140,'India Gate','P?nih?ti',18380,10000),(141,'Khan Market','L?t?r',101869,63000),(142,'Lajpat Nagar','Rohtak',80344,4000),(143,'Greater Kailash','R?jap?laiyam',97835,93000),(144,'Karol Bagh','Ahmadnagar',23705,5000),(145,'Paharganj','Cuddapah',35949,60000),(146,'100 Feet Road','R?jahmundry',30668,1000),(147,'Sarat Bose Road','Alwar',12030,34000),(148,'S.V. Road','Muzaffarpur',18081,10000),(149,'Lamington Road','Bil?spur',30020,53000),(150,'Link Road','Mathura',11041,17000),(151,'Rani Jhansi Road','K?m?rh?ti',78968,83000),(152,'Veer Savarkar Marg','Pati?la',69083,78000),(153,'M.G. Road','Saugor',52208,97000),(154,'Park Avenue','Bij?pur',80080,73000),(155,'Queens Road','Brahmapur',28667,63000),(156,'Union Street','Sh?hj?npur',30512,27000),(157,'Marol Maroshi Road','Trich?r',43175,4000),(158,'Hill Road','Barddham?n',64629,11000),(159,'Bandra Reclamation','Kulti',59977,96000),(160,'Jogeshwari Vikhroli Link Road','Sambalpur',49903,58000),(161,'Juhu Tara Road','Purnea',58950,48000),(162,'Marine Drive','Hisar',59161,41000),(163,'Elphinstone Road','F?roz?b?d',17233,99000),(164,'Nariman Point','B?dar',86444,51000),(165,'Waterfield Road','R?mpur',50438,69000),(166,'Haji Ali','Shiliguri',26248,67000),(167,'Kemps Corner','B?li',90713,22000),(168,'Colaba Causeway','P?n?pat',20233,69000),(169,'Prabhadevi','Kar?mnagar',26728,91000),(170,'Opera House','Bhuj',102462,50000),(171,'Ballygunge Place','Ichalkaranji',24880,24000),(172,'Sudder Street','Tirupati',78425,97000),(173,'Chittaranjan Avenue','Hospet',24296,74000),(174,'New Alipore','??zawl',53336,61000),(175,'Rash Behari Avenue','Sannai',22261,1000),(176,'Howrah Bridge','B?r?sat',53139,50000),(177,'S.N Banerjee Road','Ratl?m',23414,9000),(178,'Bhowanipore','Handw?ra',59393,9000),(179,'J.L. Nehru Road','Drug',95482,41000),(180,'Lenin Sarani','Imph?l',93607,87000),(181,'Taltala','Anantapur',91880,95000),(182,'B.B.D Bagh','Et?wah',18079,35000),(183,'Free School Street','R?ich?r',16343,66000),(184,'Bepin Behari Ganguly Street','Ongole',33922,87000),(185,'A.P.C Road','Bharatpur',59755,15000),(186,'Raja Ram Mohan Roy Road','Begusarai',87725,44000),(187,'C.R Avenue','Son?pat',20265,65000),(188,'R.K Mission Road','R?mgundam',102989,32000),(189,'Shakespeare Sarani','H?pur',77083,28000),(190,'Camac Street','Uluberiya',81054,65000),(191,'Chirag Dilli','Porbandar',106826,44000),(192,'Hauz Khas Village','P?li',65794,91000),(193,'Ghaffar Market','Vizianagaram',104544,85000),(194,'Defence Colony','Puducherry',65383,15000),(195,'Safdarjung Enclave','Karn?l',87591,93000),(196,'Connaught Place','N?gercoil',87216,70000),(197,'India Gate','Tanjore',109792,88000),(198,'Khan Market','Sambhal',75698,29000),(199,'Lajpat Nagar','Naih?ti',99785,66000),(200,'Greater Kailash','Secunder?b?d',35765,12000),(201,'Karol Bagh','Kharagpur',15774,21000),(202,'Paharganj','Dindigul',10295,94000),(203,'Raghunathpur Road','Shimla',67051,61000),(204,'Vikas Nagar','Ingr?j B?z?r',26341,30000),(205,'Navi ','Ellore',46633,81000),(206,'Shastri Nagar','Puri',52530,86000),(207,'R. K. Puram','Haldia',62326,75000),(208,'Nehru Nagar','Nandy?l',41023,70000),(209,'Kanpur Road,','Bulandshahr',92896,13000),(210,'Sant Nagar','Chakradharpur',10207,6000),(211,'Sainik Nagar','Bhiw?ni',48923,57000),(212,'New Aligarh','Gurgaon',28258,82000),(213,'R. K. Puram','Burh?npur',102131,16000),(214,'Sector 12','Khammam',48502,75000),(215,'Indirapuram','Madhyamgram',44346,57000),(216,'Kavi Nagar','Gh?nd?nagar',33511,66000),(217,'Rajendra Nagar','Baharampur',61194,35000),(218,'Sector 19','Mahb?bnagar',71195,51000),(219,'Sainik Nagar ','Mahes?na',107756,78000),(220,'Vasundhara','?doni',95185,34000),(221,'R. K. Puram','R?iganj',77490,16000),(222,'Sector 14','Bhus?val',61320,77000),(223,'Sainik Nagar','Bahraigh',28562,38000),(224,'Kavi Nagar','Shr?r?mpur',58695,70000),(225,'Rajendra Nagar','Tonk',60569,89000),(226,'Sector 19, ','Sirsa',34417,62000),(227,'Sainik Nagar, ','Jaunpur',96057,62000),(228,'MG Road','Madanapalle',58421,14000),(229,'Park Street','Hugli',66970,35000),(230,'Linking Road','Vellore',36709,81000),(231,'Janpath','Alleppey',56893,56000),(232,'Brigade Road','Cuddalore',99649,67000),(233,'Church Street','Deo',108040,28000),(234,'Main Bazaar','Ch?r?la',40540,92000),(235,'Carter Road','Machil?patnam',40912,90000),(236,'Hill Road','Medin?pur',84891,52000),(237,'Turner Road','Dera',47215,18000),(238,'asdasd','adsda',110024,1),(244,'dnkan','New Delhi',110023,1);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `warehouse_batch` VALUES (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(3,12),(2,13),(3,14),(3,15),(3,16),(2,17),(4,18),(4,19),(4,20),(4,21),(3,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(5,30),(5,31),(5,32),(5,33),(5,34),(3,35),(5,36),(5,37),(5,38),(5,39),(5,40),(5,41),(5,42),(5,43),(5,44),(5,45),(5,46),(6,47),(5,48),(5,49),(6,50),(6,51),(6,52),(6,53),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(6,60),(6,61),(6,62),(7,63),(6,64),(7,65),(7,66),(7,67),(7,68),(7,69),(7,70),(7,71),(7,72),(7,73),(7,74),(7,75),(7,76),(7,77),(7,78),(8,79),(8,80),(8,81),(8,82),(8,83),(8,84),(8,85),(8,86),(8,87),(9,88),(9,89),(9,90),(8,91),(10,92),(10,93),(8,94),(10,95),(10,96),(11,97),(11,98),(11,99),(11,100),(9,101),(11,102),(11,103),(11,104),(11,105),(11,106),(11,107),(11,108),(12,109),(12,110),(10,111),(11,112),(14,113),(14,114),(14,115),(14,116),(14,117),(12,118),(14,119),(14,120),(14,121),(14,122),(14,123),(14,124),(14,125),(15,126),(15,127),(15,128),(15,129),(15,130),(15,131),(15,132),(14,133),(15,134),(15,135),(17,136),(15,137),(17,138),(18,139),(18,140),(18,141),(18,142),(18,143),(18,144),(18,145),(17,146),(17,147),(18,148),(18,149),(18,150),(18,151),(18,152),(20,153),(20,154),(20,155),(18,156),(18,157),(19,158),(20,159),(20,160),(20,161),(20,162),(20,163),(20,164),(20,165),(20,166),(20,167),(20,168),(20,169),(22,170),(21,171),(22,172),(22,173),(22,174),(22,175),(22,176),(22,177),(22,178),(22,179),(22,180),(18,181),(22,182),(22,183),(23,184),(23,185),(23,186),(22,187),(23,188),(23,189),(23,190),(19,191),(23,192),(23,193),(23,194),(23,195),(23,196),(23,197),(23,198),(20,199),(23,200),(23,201),(24,202),(23,203),(24,204),(24,205),(24,206),(21,207),(24,208),(24,209),(24,210),(24,211),(24,212),(24,213),(24,214),(23,215),(24,216),(25,217),(24,218),(25,219),(24,220),(25,221),(25,222),(26,223),(26,224),(26,225),(26,226),(26,227),(26,228),(26,229),(26,230),(26,231),(25,232),(26,233),(26,234),(27,235),(27,236),(27,237),(27,238),(27,239),(28,240),(28,241),(28,242),(28,243),(28,244),(28,245),(28,246),(28,247),(28,248),(29,249),(29,250),(27,251),(28,252),(29,253),(29,254),(24,255),(29,256),(29,257),(29,258),(29,259),(29,260),(29,261),(29,262),(29,263),(30,264),(29,265),(30,266),(29,267),(30,268),(30,269),(30,270),(30,271),(30,272),(30,273),(30,274),(30,275),(30,276),(30,277),(31,278),(30,279),(30,280),(31,281),(31,282),(31,283),(31,284),(31,285),(31,286),(31,287),(31,288),(31,289),(31,290),(31,291),(31,292),(31,293),(31,294),(32,295),(32,296),(32,297),(32,298),(32,299),(32,300),(232,301),(170,170);
/*!40000 ALTER TABLE `warehouse_batch` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `loading_batches` BEFORE INSERT ON `warehouse_batch` FOR EACH ROW BEGIN
    
    
    SELECT SUM(batch.quantity) INTO @total_quantity
    FROM batch
    INNER JOIN warehouse_batch ON batch.batch_id = warehouse_batch.batch_id
    WHERE warehouse_batch.warehouse_id = NEW.warehouse_id;

    
    
    SELECT capacity INTO @warehouse_capacity
    FROM warehouse
    WHERE warehouse_id = NEW.warehouse_id;
    
    
    SELECT batch.quantity into @curbatch from batch where batch.batch_id=new.batch_id;
    if @total_quantity is NULL Then set @total_quantity=0; end if;
    if @curbatch is NULL Then set @curbatch=0; end if;
	if @warehouse_capacity is NULL Then set @warehouse_capacity=0; end if;
    
    IF @total_quantity + @curbatch > @warehouse_capacity THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Warehouse has reached maximum capacity';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'ksheer'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `delete_expired_batches` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = cp850 */ ;;
/*!50003 SET character_set_results = cp850 */ ;;
/*!50003 SET collation_connection  = cp850_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `delete_expired_batches` ON SCHEDULE EVERY 1 DAY STARTS '2023-04-18 00:15:57' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM batch WHERE expiry_date < CURDATE() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'ksheer'
--

--
-- Final view structure for view `employees`
--

/*!50001 DROP VIEW IF EXISTS `employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees` AS select `executive`.`emp_id` AS `emp_id`,`executive`.`name` AS `name`,`executive`.`department` AS `department`,`executive`.`hq_id` AS `hq_id` from `executive` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `store_inventory`
--

/*!50001 DROP VIEW IF EXISTS `store_inventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `store_inventory` AS select `s`.`store_id` AS `store_id`,`rw`.`warehouse_id` AS `warehouse_id`,`wb`.`batch_id` AS `batch_id`,`bb`.`product_id` AS `product_id`,`bb`.`quantity` AS `quantity`,`bb`.`expiry_date` AS `expiry_date` from (((`retailer` `s` join `retailer_warehouse` `rw`) join `warehouse_batch` `wb`) join `batch` `bb`) where ((`s`.`store_id` = `rw`.`store_id`) and (`rw`.`warehouse_id` = `wb`.`warehouse_id`) and (`wb`.`batch_id` = `bb`.`batch_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 23:49:05
