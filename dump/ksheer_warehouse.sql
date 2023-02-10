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
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Ramkrishna Samadhi Road','Mumbai',700027,0),(2,'15th Cross','Kolk?ta',560038,64000),(3,'Raghunathpur Road','Bangalore',800013,32000),(4,'Vikas Nagar','Chennai',226022,73000),(5,'Navi ','Hyderabad',400703,92000),(6,'Shastri Nagar','Pune',110052,80000),(7,'R. K. Puram','Ahmedabad',500056,96000),(8,'Nehru Nagar','Surat',201001,69000),(9,'Kanpur Road,','Lucknow',226012,19000),(10,'Sant Nagar','Jaipur',110065,28000),(11,'Sainik Nagar','Cawnpore',208005,69000),(12,'New Aligarh','Mirz?pur',202001,16000),(13,'R. K. Puram','N?gpur',110022,1000),(14,'Sector 12','Gh?zi?b?d',201301,71000),(15,'Indirapuram','Indore',201014,64000),(16,'Kavi Nagar','Vadodara',201002,0),(17,'Rajendra Nagar','Vish?khapatnam',800016,20000),(18,'Sector 19','Bhop?l',110075,88000),(19,'Sainik Nagar ','Chinchvad',208005,5000),(20,'Vasundhara','Patna',201012,96000),(21,'R. K. Puram','Ludhi?na',110022,7000),(22,'Sector 14','?gra',201301,76000),(23,'Sainik Nagar','Kaly?n',208005,97000),(24,'Kavi Nagar','Madurai',201002,80000),(25,'Rajendra Nagar','Jamshedpur',800016,29000),(26,'Sector 19, ','N?sik',110075,74000),(27,'Sainik Nagar, ','Far?d?b?d',208005,35000),(28,'MG Road','Aurang?b?d',201012,65000),(29,'Park Street','R?jkot',110022,75000),(30,'Linking Road','Meerut',201301,71000),(31,'Janpath','Jabalpur',208005,85000),(32,'Brigade Road','Th?ne',201002,56000),(33,'Church Street','Dhanb?d',800016,49000),(34,'Main Bazaar','Allah?b?d',110075,68000),(35,'Carter Road','V?r?nasi',110078,65000),(36,'Hill Road','Sr?nagar',110065,96000),(37,'Turner Road','Amritsar',208005,86000),(38,'Carter Road','Al?garh',201012,55000),(39,'Hill Road','Bhiwandi',110022,37000),(40,'Turner Road','Gwalior',201301,91000),(41,'Nehru Road','Bhilai',208005,71000),(42,'Mount Road','H?ora',201002,66000),(43,'Periyar Road','R?nchi',800016,91000),(44,'100 Feet Road','Bezw?da',110075,7000),(45,'Sarat Bose Road','Chand?garh',208005,61000),(46,'Ramkrishna Samadhi Road','Mysore',201012,60000),(47,'15th Cross','Raipur',110022,1000),(48,'Raghunathpur Road','Kota',201301,53000),(49,'Vikas Nagar','Bareilly',208005,32000),(50,'Navi ','Jodhpur',201002,63000),(51,'Shastri Nagar','Coimbatore',800016,40000),(52,'R. K. Puram','Dispur',110075,67000),(53,'Nehru Nagar','Guw?h?ti',208005,50000),(54,'Kanpur Road,','Sol?pur',201012,54000),(55,'Sant Nagar','Trichinopoly',110022,52000),(56,'Sainik Nagar','Hubli',201301,29000),(57,'New Aligarh','Jalandhar',208005,18000),(58,'R. K. Puram','Bhubaneshwar',201002,47000),(59,'Sector 12','Bhayandar',800016,51000),(60,'Indirapuram','Mor?d?b?d',110075,37000),(61,'Kavi Nagar','Kolh?pur',208005,92000),(62,'Rajendra Nagar','Thiruvananthapuram',201012,91000),(63,'Sector 19','Sah?ranpur',110022,22000),(64,'Sainik Nagar ','Warangal',201301,21000),(65,'Vasundhara','Salem',208005,52000),(66,'R. K. Puram','M?legaon',201002,16000),(67,'Sector 14','Kochi',800016,76000),(68,'Sainik Nagar','Gorakhpur',110075,67000),(69,'Kavi Nagar','Shimoga',208005,34000),(70,'Rajendra Nagar','Tirupp?r',208004,15000),(71,'Sector 19, ','Gunt?r',112450,57000),(72,'Sainik Nagar, ','Raurkela',113560,25000),(73,'MG Road','Mangalore',201002,36000),(74,'Park Street','N?nded',800016,65000),(75,'Linking Road','Cuttack',110075,32000),(76,'Janpath','Ch?nda',208005,67000),(77,'Brigade Road','Dehra D?n',201002,79000),(78,'Church Street','Durg?pur',800016,14000),(79,'Main Bazaar','?sansol',201301,91000),(80,'Carter Road','Bh?vnagar',208005,64000),(81,'Hill Road','Amr?vati',201002,18000),(82,'Turner Road','Nellore',800016,63000),(83,'Carter Road','Ajmer',110075,57000),(84,'Hill Road','Tinnevelly',208005,40000),(85,'Turner Road','B?kaner',201002,42000),(86,'Nehru Road','Agartala',800016,65000),(87,'Mount Road','Ujjain',201301,45000),(88,'Periyar Road','Jh?nsi',208005,92000),(89,'100 Feet Road','Ulh?snagar',201002,6000),(90,'Sarat Bose Road','Davangere',800016,42000),(91,'S.V. Road','Jammu',110075,81000),(92,'Lamington Road','Belgaum',208005,21000),(93,'Link Road','Gulbarga',201002,40000),(94,'Rani Jhansi Road','J?mnagar',800016,7000),(95,'Veer Savarkar Marg','Dh?lia',201301,42000),(96,'M.G. Road','Gaya',208005,99000),(97,'Park Avenue','Jalgaon',201002,13000),(98,'Queens Road','Kurnool',800016,96000),(99,'Union Street','Udaipur',110075,19000),(100,'Marol Maroshi Road','Bellary',208005,78000),(101,'Hill Road','Ch?nda',76790,16000),(102,'Bandra Reclamation','Dehra D?n',61792,75000),(103,'Jogeshwari Vikhroli Link Road','Durg?pur',65646,25000),(104,'Juhu Tara Road','?sansol',46412,68000),(105,'Marine Drive','Bh?vnagar',108951,42000),(106,'Elphinstone Road','Amr?vati',28758,53000),(107,'Nariman Point','Nellore',17136,64000),(108,'Waterfield Road','Ajmer',32104,29000),(109,'Haji Ali','Tinnevelly',20876,34000),(110,'Kemps Corner','B?kaner',32017,31000),(111,'Colaba Causeway','Agartala',47196,56000),(112,'Prabhadevi','Ujjain',37624,47000),(113,'Opera House','Jh?nsi',37251,32000),(114,'Ballygunge Place','Ulh?snagar',42418,54000),(115,'Sudder Street','Davangere',46842,97000),(116,'Chittaranjan Avenue','Jammu',37121,70000),(117,'New Alipore','Belgaum',102562,54000),(118,'Rash Behari Avenue','Gulbarga',93637,21000),(119,'Howrah Bridge','J?mnagar',30495,69000),(120,'S.N Banerjee Road','Dh?lia',27185,16000),(121,'Bhowanipore','Gaya',107460,56000),(122,'J.L. Nehru Road','Jalgaon',105783,65000),(123,'Lenin Sarani','Kurnool',53494,44000),(124,'Taltala','Udaipur',75307,27000),(125,'B.B.D Bagh','Bellary',32276,11000),(126,'Free School Street','S?ngli',97450,73000),(127,'Bepin Behari Ganguly Street','Tuticorin',72589,95000),(128,'A.P.C Road','Calicut',26421,39000),(129,'Raja Ram Mohan Roy Road','Akola',63013,83000),(130,'C.R Avenue','Bh?galpur',79630,84000),(131,'R.K Mission Road','S?kar',50411,28000),(132,'Shakespeare Sarani','Tumk?r',33335,77000),(133,'Camac Street','Quilon',52646,91000),(134,'Chirag Dilli','Muzaffarnagar',21933,83000),(135,'Hauz Khas Village','Bh?lw?ra',96317,13000),(136,'Ghaffar Market','Niz?m?b?d',96434,91000),(137,'Defence Colony','Bh?tp?ra',106914,26000),(138,'Safdarjung Enclave','K?kin?da',25185,14000),(139,'Connaught Place','Parbhani',56406,11000),(140,'India Gate','P?nih?ti',18380,10000),(141,'Khan Market','L?t?r',101869,63000),(142,'Lajpat Nagar','Rohtak',80344,4000),(143,'Greater Kailash','R?jap?laiyam',97835,93000),(144,'Karol Bagh','Ahmadnagar',23705,5000),(145,'Paharganj','Cuddapah',35949,60000),(146,'100 Feet Road','R?jahmundry',30668,1000),(147,'Sarat Bose Road','Alwar',12030,34000),(148,'S.V. Road','Muzaffarpur',18081,10000),(149,'Lamington Road','Bil?spur',30020,53000),(150,'Link Road','Mathura',11041,17000),(151,'Rani Jhansi Road','K?m?rh?ti',78968,83000),(152,'Veer Savarkar Marg','Pati?la',69083,78000),(153,'M.G. Road','Saugor',52208,97000),(154,'Park Avenue','Bij?pur',80080,73000),(155,'Queens Road','Brahmapur',28667,63000),(156,'Union Street','Sh?hj?npur',30512,27000),(157,'Marol Maroshi Road','Trich?r',43175,4000),(158,'Hill Road','Barddham?n',64629,11000),(159,'Bandra Reclamation','Kulti',59977,96000),(160,'Jogeshwari Vikhroli Link Road','Sambalpur',49903,58000),(161,'Juhu Tara Road','Purnea',58950,48000),(162,'Marine Drive','Hisar',59161,41000),(163,'Elphinstone Road','F?roz?b?d',17233,99000),(164,'Nariman Point','B?dar',86444,51000),(165,'Waterfield Road','R?mpur',50438,69000),(166,'Haji Ali','Shiliguri',26248,67000),(167,'Kemps Corner','B?li',90713,22000),(168,'Colaba Causeway','P?n?pat',20233,69000),(169,'Prabhadevi','Kar?mnagar',26728,91000),(170,'Opera House','Bhuj',102462,50000),(171,'Ballygunge Place','Ichalkaranji',24880,24000),(172,'Sudder Street','Tirupati',78425,97000),(173,'Chittaranjan Avenue','Hospet',24296,74000),(174,'New Alipore','??zawl',53336,61000),(175,'Rash Behari Avenue','Sannai',22261,1000),(176,'Howrah Bridge','B?r?sat',53139,50000),(177,'S.N Banerjee Road','Ratl?m',23414,9000),(178,'Bhowanipore','Handw?ra',59393,9000),(179,'J.L. Nehru Road','Drug',95482,41000),(180,'Lenin Sarani','Imph?l',93607,87000),(181,'Taltala','Anantapur',91880,95000),(182,'B.B.D Bagh','Et?wah',18079,35000),(183,'Free School Street','R?ich?r',16343,66000),(184,'Bepin Behari Ganguly Street','Ongole',33922,87000),(185,'A.P.C Road','Bharatpur',59755,15000),(186,'Raja Ram Mohan Roy Road','Begusarai',87725,44000),(187,'C.R Avenue','Son?pat',20265,65000),(188,'R.K Mission Road','R?mgundam',102989,32000),(189,'Shakespeare Sarani','H?pur',77083,28000),(190,'Camac Street','Uluberiya',81054,65000),(191,'Chirag Dilli','Porbandar',106826,44000),(192,'Hauz Khas Village','P?li',65794,91000),(193,'Ghaffar Market','Vizianagaram',104544,85000),(194,'Defence Colony','Puducherry',65383,15000),(195,'Safdarjung Enclave','Karn?l',87591,93000),(196,'Connaught Place','N?gercoil',87216,70000),(197,'India Gate','Tanjore',109792,88000),(198,'Khan Market','Sambhal',75698,29000),(199,'Lajpat Nagar','Naih?ti',99785,66000),(200,'Greater Kailash','Secunder?b?d',35765,12000),(201,'Karol Bagh','Kharagpur',15774,21000),(202,'Paharganj','Dindigul',10295,94000),(203,'Raghunathpur Road','Shimla',67051,61000),(204,'Vikas Nagar','Ingr?j B?z?r',26341,30000),(205,'Navi ','Ellore',46633,81000),(206,'Shastri Nagar','Puri',52530,86000),(207,'R. K. Puram','Haldia',62326,75000),(208,'Nehru Nagar','Nandy?l',41023,70000),(209,'Kanpur Road,','Bulandshahr',92896,13000),(210,'Sant Nagar','Chakradharpur',10207,6000),(211,'Sainik Nagar','Bhiw?ni',48923,57000),(212,'New Aligarh','Gurgaon',28258,82000),(213,'R. K. Puram','Burh?npur',102131,16000),(214,'Sector 12','Khammam',48502,75000),(215,'Indirapuram','Madhyamgram',44346,57000),(216,'Kavi Nagar','Gh?nd?nagar',33511,66000),(217,'Rajendra Nagar','Baharampur',61194,35000),(218,'Sector 19','Mahb?bnagar',71195,51000),(219,'Sainik Nagar ','Mahes?na',107756,78000),(220,'Vasundhara','?doni',95185,34000),(221,'R. K. Puram','R?iganj',77490,16000),(222,'Sector 14','Bhus?val',61320,77000),(223,'Sainik Nagar','Bahraigh',28562,38000),(224,'Kavi Nagar','Shr?r?mpur',58695,70000),(225,'Rajendra Nagar','Tonk',60569,89000),(226,'Sector 19, ','Sirsa',34417,62000),(227,'Sainik Nagar, ','Jaunpur',96057,62000),(228,'MG Road','Madanapalle',58421,14000),(229,'Park Street','Hugli',66970,35000),(230,'Linking Road','Vellore',36709,81000),(231,'Janpath','Alleppey',56893,56000),(232,'Brigade Road','Cuddalore',99649,67000),(233,'Church Street','Deo',108040,28000),(234,'Main Bazaar','Ch?r?la',40540,92000),(235,'Carter Road','Machil?patnam',40912,90000),(236,'Hill Road','Medin?pur',84891,52000),(237,'Turner Road','Dera',47215,18000);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 21:14:55
