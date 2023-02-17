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
INSERT INTO `retailer_phone` VALUES (1,'9696550178'),(2,'9607026436'),(3,'9131395184'),(3,'9602207436'),(4,'9500639994'),(4,'9620728326'),(5,'9888709249'),(5,'9905365839'),(6,'9073944758'),(6,'9680401275'),(6,'9698216506'),(6,'9733392685'),(7,'9103127301'),(7,'9329244661'),(7,'9686486369'),(7,'9821840544'),(8,'9382628988'),(8,'9883047986'),(8,'9950365154'),(9,'9242325290'),(9,'9355954357'),(10,'9503159415'),(10,'9608343536'),(11,'9034274148'),(12,'9275507966'),(13,'9192774856'),(13,'9343000215'),(13,'9479397790'),(14,'9866510827'),(15,'9842975739'),(16,'9712633509'),(16,'9964995542'),(17,'9855495973'),(18,'9357577321'),(18,'9849381577'),(19,'9212258166'),(19,'9439651577'),(19,'9559155659'),(20,'9910087945'),(21,'9720656139'),(21,'9786374428'),(22,'9147180923'),(22,'9780998785'),(23,'9576269734'),(24,'9138952264'),(25,'9332917839'),(25,'9415679364'),(25,'9847816072'),(26,'9279502128'),(26,'9900352468'),(27,'9339503773'),(27,'9713014005'),(28,'9030085963'),(29,'9455176287'),(30,'9157270790'),(30,'9941748610'),(31,'9202697113'),(32,'9671009134'),(32,'9899766985'),(33,'9580681004'),(34,'9007537735'),(34,'9075795831'),(34,'9561763030'),(35,'9112240142'),(35,'9232603157'),(36,'9045990920'),(36,'9721284243'),(37,'9043172667'),(37,'9744466169'),(38,'9059709711'),(39,'9254761900'),(39,'9355647057'),(40,'9076622115'),(40,'9126849560'),(41,'9452836616'),(42,'9739127302'),(43,'9022778840'),(43,'9296124543'),(43,'9846580214'),(44,'9487436987'),(45,'9243026842'),(45,'9416408595'),(45,'9560682518'),(46,'9209645617'),(46,'9348726016'),(46,'9948069350'),(47,'9263504263'),(47,'9865063736'),(48,'9287695581'),(49,'9138646464'),(49,'9161696288'),(49,'9173474314'),(49,'9360956886'),(49,'9600063986'),(50,'9050768878'),(50,'9685330981'),(51,'9493982870'),(51,'9533823045'),(52,'9901210722'),(53,'9059479332'),(53,'9374560461'),(53,'9508009279'),(53,'9570407000'),(54,'9564811240'),(55,'9090628962'),(55,'9122645564'),(55,'9273050219'),(55,'9579124125'),(55,'9855444296'),(56,'9584468360'),(57,'9460640251'),(58,'9899695417'),(59,'9075787048'),(59,'9406682124'),(59,'9723593192'),(60,'9392994654'),(61,'9257401038'),(61,'9317722562'),(61,'9719993328'),(62,'9255632638'),(62,'9940941313'),(63,'9201731523'),(63,'9876424163'),(63,'9895034977'),(63,'9948193335'),(64,'9022338549'),(64,'9102953311'),(65,'9146122381'),(65,'9365499224'),(65,'9538140715'),(65,'9791069583'),(65,'9891957734'),(66,'9216130691'),(66,'9659562511'),(67,'9694804382'),(68,'9235014004'),(68,'9264439044'),(68,'9684611477'),(69,'9227756138'),(69,'9738794834'),(69,'9946471002'),(70,'9088640809'),(70,'9240531598'),(70,'9396202196'),(70,'9672161276'),(71,'9414694253'),(72,'9845848540'),(73,'9243372798'),(74,'9518266780'),(74,'9738495478'),(75,'9954989849'),(76,'9483996280'),(76,'9512271430'),(77,'9385908032'),(78,'9142700917'),(79,'9146247081'),(79,'9646198851'),(80,'9656920715'),(81,'9174689595'),(81,'9464189260'),(82,'9480672590'),(82,'9593064491'),(82,'9694873173'),(83,'9626418376'),(83,'9707817401'),(84,'9630698061'),(85,'9536837396'),(85,'9903216691'),(85,'9955867973'),(86,'9043908720'),(86,'9287249712'),(86,'9505563387'),(87,'9735879961'),(88,'9863406330'),(89,'9682680146'),(90,'9063222947'),(90,'9066841625'),(90,'9297070493'),(90,'9399952305'),(91,'9393408543'),(92,'9033680480'),(92,'9735505856'),(93,'9146148538'),(94,'9705033362'),(94,'9773702885'),(94,'9824081633'),(95,'9334243407'),(95,'9400540144'),(95,'9551318912'),(96,'9131177120'),(96,'9443166376'),(96,'9752270325'),(97,'9218695974'),(97,'9337910614'),(97,'9550329397'),(98,'9629517723'),(99,'9227415227'),(99,'9342636117'),(100,'9549201725'),(100,'9555274333');
/*!40000 ALTER TABLE `retailer_phone` ENABLE KEYS */;
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