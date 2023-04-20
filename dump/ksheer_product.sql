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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 15:52:26
