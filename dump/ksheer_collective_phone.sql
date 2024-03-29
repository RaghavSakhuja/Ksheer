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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:52:28
