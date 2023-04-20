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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:52:29
