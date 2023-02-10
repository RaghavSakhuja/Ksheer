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
  `manager_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer`
--

LOCK TABLES `retailer` WRITE;
/*!40000 ALTER TABLE `retailer` DISABLE KEYS */;
INSERT INTO `retailer` VALUES (1,'Ramkrishna Samadhi Road','Mumbai',700027,'Kishore Kirana Store','Ma_2','Ma_2',8606,'Max'),(2,'15th Cross','Kolk?ta',560038,'Madhav General Store','Et_3','Et_3',600,'Ethan'),(3,'Raghunathpur Road','Bangalore',800013,'Anand Provision Store','Li_4','Li_4',7634,'Liam'),(4,'Vikas Nagar','Chennai',226022,'Shree Ji General Store','No_5','No_5',4749,'Noah'),(5,'Navi ','Hyder?b?d',400703,'Raghav Kirana Store','Wi_6','Wi_6',267,'William'),(6,'Shastri Nagar','Pune',110052,'Shivam Provision Store','Ja_7','Ja_7',7221,'James'),(7,'R. K. Puram','Ahmedabad',500056,'Mittal Provision Store','Ol_8','Ol_8',70,'Oliver'),(8,'Nehru Nagar','S?rat',201001,'Vardhaman General Store','Be_9','Be_9',784,'Benjamin'),(9,'Kanpur Road,','Lucknow',226012,'Goel Kirana Store','El_10','El_10',2458,'Elijah'),(10,'Sant Nagar','Jaipur',110065,' Laxmi General Store','Lu_11','Lu_11',7968,'Lucas'),(11,'Sainik Nagar','Cawnpore',208005,' Garg Provision Store','Ma_12','Ma_12',6057,'Mason'),(12,'New Aligarh','Mirz?pur',202001,' Saini General Store','Al_13','Al_13',8941,'Alexander'),(13,'R. K. Puram','N?gpur',110022,' Singhal Kirana Store','Ja_14','Ja_14',6701,'Jacob'),(14,'Sector 12','Gh?zi?b?d',201301,' Bharat Provision Store',' M_15',' M_15',6208,' Michael'),(15,'Indirapuram','Indore',201014,' Raj Kirana Store',' D_16',' D_16',7331,' Daniel'),(16,'Kavi Nagar','Vadodara',201002,' Aggarwal Provision Store',' M_17',' M_17',5312,' Matthew'),(17,'Rajendra Nagar','Vish?khapatnam',800016,' Mehta General Store',' S_18',' S_18',909,' Samuel'),(18,'Sector 19','Bhop?l',110075,' Tyagi Kirana Store',' J_19',' J_19',148,' Joseph'),(19,'Sainik Nagar ','Chinchvad',208005,' Gupta Provision Store',' D_20',' D_20',3108,' David'),(20,'Vasundhara','Patna',201012,' Dhawan General Store',' B_21',' B_21',4610,' Benjamin'),(21,'R. K. Puram','Ludhi?na',110022,' Jain Kirana Store',' A_22',' A_22',27,' Andrew'),(22,'Sector 14','?gra',201301,' Arora Provision Store',' R_23',' R_23',4184,' Ryan'),(23,'Sainik Nagar','Kaly?n',208005,' Malik General Store',' J_24',' J_24',7373,' John'),(24,'Kavi Nagar','Madurai',201002,' Sharma Kirana Store',' T_25',' T_25',9808,' Tyler'),(25,'Rajendra Nagar','Jamshedpur',800016,' Patel Provision Store',' D_26',' D_26',1303,' Dylan'),(26,'Sector 19, ','N?sik',110075,' Verma General',' N_27',' N_27',2214,' Nathan'),(27,'Sainik Nagar, ','Far?d?b?d',208005,' Singh General Store',' Z_28',' Z_28',6077,' Zachary'),(28,'MG Road','Aurang?b?d',201012,' Kapoor Kirana Store',' L_29',' L_29',2448,' Luke'),(29,'Park Street','R?jkot',110022,' Chauhan Provision Store',' C_30',' C_30',4262,' Caleb'),(30,'Linking Road','Meerut',201301,' Saxena General Store',' C_31',' C_31',5298,' Christian'),(31,'Janpath','Jabalpur',208005,' Rawat Kirana Store',' A_32',' A_32',1576,' Adam'),(32,'Brigade Road','Th?ne',201002,' Bhatia Provision Store',' H_33',' H_33',1684,' Henry'),(33,'Church Street','Dhanb?d',800016,' Mathur General Store',' O_34',' O_34',9002,' Owen'),(34,'Main Bazaar','Allah?b?d',110075,' Arya Kirana Store',' J_35',' J_35',2138,' Jackson'),(35,'Carter Road','V?r?nasi',110078,' Chaudhary Provision Store',' G_36',' G_36',7723,' Gavin'),(36,'Hill Road','Sr?nagar',110065,' Srivastava General Store',' W_37',' W_37',5358,' Wyatt'),(37,'Turner Road','Amritsar',208005,' Goyal Kirana Store',' A_38',' A_38',3894,' Aiden'),(38,'Carter Road','Al?garh',201012,' Wadhera Provision Store',' E_39',' E_39',3916,' Ethan'),(39,'Hill Road','Bhiwandi',110022,' Oberoi General Store',' P_40',' P_40',5578,' Parker'),(40,'Turner Road','Gwalior',201301,' Tiwari Kirana Store',' J_41',' J_41',3742,' Julian'),(41,'Nehru Road','Bhilai',208005,' Singh Provision Store',' G_42',' G_42',5877,' Grayson'),(42,'Mount Road','H?ora',201002,' Tandon General Store',' C_43',' C_43',1207,' Cole'),(43,'Periyar Road','R?nchi',800016,' Mehra Kirana Store',' L_44',' L_44',5877,' Levi'),(44,'100 Feet Road','Bezw?da',110075,' Ahuja Provision Store',' I_45',' I_45',3148,' Isaac'),(45,'Sarat Bose Road','Chand?garh',208005,' Grover General Store',' J_46',' J_46',1097,' Jason'),(46,'S.V. Road','Mysore',201012,' Sehgal Kirana Store',' A_47',' A_47',6983,' Aaron'),(47,'Lamington Road','Raipur',110022,' Aggarwal Provision Store',' N_48',' N_48',5602,' Nathan'),(48,'Link Road','Kota',201301,' Kaur General Store',' G_49',' G_49',2929,' Gabriel'),(49,'Rani Jhansi Road','Bareilly',208005,' Bedi Kirana Store',' E_50',' E_50',3531,' Evan'),(50,'Veer Savarkar Marg','Jodhpur',201002,' Kochhar Provision Store',' I_51',' I_51',99,' Isaiah'),(51,'M.G. Road','Coimbatore',800016,' Dua General Store',' L_52',' L_52',8522,' Luke'),(52,'Park Avenue','Dispur',110075,' Chhabra Kirana Store',' L_53',' L_53',2677,' Logan'),(53,'Queens Road','Guw?h?ti',208005,' Dhillon Provision Store',' N_54',' N_54',7819,' Nicholas'),(54,'Union Street','Sol?pur',201012,' Basu General Store',' E_55',' E_55',7688,' Eli'),(55,'Marol Maroshi Road','Trichinopoly',110022,' Aneja Kirana Store',' J_56',' J_56',2567,' Jackson'),(56,'Hill Road','Hubli',201301,' Chaddha Provision Store',' D_57',' D_57',8845,' Dylan'),(57,'Bandra Reclamation','Jalandhar',208005,' Bhandari General Store',' A_58',' A_58',1880,' Alexander'),(58,'Jogeshwari Vikhroli Link Road','Bhubaneshwar',201002,' Kishan Kirana Store',' W_59',' W_59',897,' William'),(59,'Juhu Tara Road','Bhayandar',800016,' Talwar Provision Store',' M_60',' M_60',8336,' Mason'),(60,'Marine Drive','Mor?d?b?d',110075,' Gaur General Store',' O_61',' O_61',3971,' Owen'),(61,'Elphinstone Road','Kolh?pur',208005,' Bhat Kirana Store',' J_62',' J_62',6971,' James'),(62,'Nariman Point','Thiruvananthapuram',201012,' Talwar Provision Store',' C_63',' C_63',3381,' Caleb'),(63,'Waterfield Road','Sah?ranpur',110022,' Banerjee General Store',' L_64',' L_64',3277,' Liam'),(64,'Haji Ali','Warangal',201301,' Khanna Kirana Store',' A_65',' A_65',2676,' Alexander'),(65,'Kemps Corner','Salem',208005,' Nayyar Provision Store',' E_66',' E_66',7276,' Ethan'),(66,'Colaba Causeway','M?legaon',201002,' Chakraborty General Store',' B_67',' B_67',5963,' Benjamin'),(67,'Prabhadevi','Kochi',800016,' Nanda Kirana Store',' W_68',' W_68',5370,' William'),(68,'Opera House','Gorakhpur',110075,' Sood Provision Store',' N_69',' N_69',7219,' Noah'),(69,'Ballygunge Place','Shimoga',208005,' Shukla General Store',' J_70',' J_70',7447,' Jacob'),(70,'Sudder Street','Tirupp?r',208004,' Saini Kirana Store',' O_71',' O_71',9415,' Owen'),(71,'Chittaranjan Avenue','Gunt?r',112450,' Mathur Provision Store',' E_72',' E_72',1501,' Ethan'),(72,'New Alipore','Raurkela',113560,' Bhatt General Store',' L_73',' L_73',5576,' Liam'),(73,'Rash Behari Avenue','Mangalore',201002,' Arora Kirana Store',' W_74',' W_74',4968,' William'),(74,'Howrah Bridge','N?nded',800016,' Puri Provision Store',' M_75',' M_75',499,' Mason'),(75,'S.N Banerjee Road','Cuttack',110075,' Tandon General Store',' O_76',' O_76',6100,' Oliver'),(76,'Bhowanipore','Ch?nda',208005,' Wadhwa Kirana Store',' A_77',' A_77',6852,' Alexander'),(77,'J.L. Nehru Road','Dehra D?n',201002,' Chopra Provision Store',' B_78',' B_78',9833,' Benjamin'),(78,'Lenin Sarani','Durg?pur',800016,' Vohra General Store',' E_79',' E_79',3306,' Ethan'),(79,'Taltala','?sansol',201301,' Anand Kirana Store',' W_80',' W_80',8308,' William'),(80,'B.B.D Bagh','Bh?vnagar',208005,' Kataria Provision Store',' N_81',' N_81',6289,' Noah'),(81,'Free School Street','Amr?vati',201002,' Singh General Store',' M_82',' M_82',6033,' Mason'),(82,'Bepin Behari Ganguly Street','Nellore',800016,' Kaushik Kirana Store',' O_83',' O_83',7051,' Oliver'),(83,'A.P.C Road','Ajmer',110075,' Mohan Provision Store',' A_84',' A_84',9736,' Alexander'),(84,'Raja Ram Mohan Roy Road','Tinnevelly',208005,' Saini General Store',' E_85',' E_85',3806,' Ethan'),(85,'C.R Avenue','B?kaner',201002,' Negi Kirana Store',' W_86',' W_86',2074,' William'),(86,'R.K Mission Road','Agartala',800016,' Khurana Provision Store',' N_87',' N_87',1539,' Noah'),(87,'Shakespeare Sarani','Ujjain',201301,' Jain General Store',' M_88',' M_88',4000,' Mason'),(88,'Camac Street','Jh?nsi',208005,' Chopra Kirana Store',' O_89',' O_89',2444,' Oliver'),(89,'Chirag Dilli','Ulh?snagar',201002,' Suri Provision Store',' A_90',' A_90',1126,' Alexander'),(90,'Hauz Khas Village','Davangere',800016,' Gill General Store',' B_91',' B_91',5784,' Benjamin'),(91,'Ghaffar Market','Jammu',110075,' Grewal Kirana Store',' E_92',' E_92',2491,' Ethan'),(92,'Defence Colony','Belgaum',208005,' Bhatia Provision Store',' W_93',' W_93',9972,' William'),(93,'Safdarjung Enclave','Gulbarga',201002,' Bhat General Store',' N_94',' N_94',2488,' Noah'),(94,'Connaught Place','J?mnagar',800016,' Dhingra Kirana Store',' M_95',' M_95',9150,' Mason'),(95,'India Gate','Dh?lia',201301,' Duggal Provision Store',' O_96',' O_96',9967,' Oliver'),(96,'Khan Market','Gaya',208005,' Agarwal General Store',' A_97',' A_97',2290,' Alexander'),(97,'Lajpat Nagar','Jalgaon',201002,' Saini Kirana Store',' B_98',' B_98',5242,' Benjamin'),(98,'Greater Kailash','Kurnool',800016,' Rana Provision Store',' E_99',' E_99',1659,' Ethan'),(99,'Karol Bagh','Udaipur',110075,' Mukherjee General Store',' W_100',' W_100',65,' William'),(100,'Paharganj','Bellary',208005,'Bhatia Kirana Store','No_101','No_101',4396,'Noah');
/*!40000 ALTER TABLE `retailer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-10 21:14:56
