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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:52:27
