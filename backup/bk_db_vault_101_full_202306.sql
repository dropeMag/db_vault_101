-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db2_vault_101
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
-- Table structure for table `tb_decease`
--

DROP TABLE IF EXISTS `tb_decease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_decease` (
  `id_decease` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id_decease_type` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `id_incident_type` int NOT NULL,
  PRIMARY KEY (`id_decease`),
  KEY `fk_id_decease_type_tb_decease` (`id_decease_type`),
  KEY `fk_id_incident_type_tb_decease` (`id_incident_type`),
  CONSTRAINT `fk_id_decease_type_tb_decease` FOREIGN KEY (`id_decease_type`) REFERENCES `tb_decease_type` (`id_decease_type`),
  CONSTRAINT `fk_id_incident_type_tb_decease` FOREIGN KEY (`id_incident_type`) REFERENCES `tb_incident_type` (`id_incident_type`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_decease`
--

LOCK TABLES `tb_decease` WRITE;
/*!40000 ALTER TABLE `tb_decease` DISABLE KEYS */;
INSERT INTO `tb_decease` VALUES (1,'2023-06-09','v',7),(2,'2023-06-09','v',8),(3,'2023-06-09','v',4),(4,'2023-06-09','v',1),(5,'2023-06-09','v',4),(6,'2023-06-09','v',6),(7,'2023-06-09','v',4),(8,'2023-06-09','v',1),(9,'2023-06-09','v',4),(10,'2023-06-09','v',1),(11,'2023-06-09','v',5),(12,'2023-06-09','v',8),(13,'2023-06-09','v',8),(14,'2023-06-09','v',6),(15,'2023-06-09','v',1),(16,'2023-06-09','v',8),(17,'2023-06-09','v',3),(18,'2023-06-09','v',7),(19,'2023-06-09','v',6),(20,'2023-06-09','v',7),(21,'2023-06-09','v',4),(22,'2023-06-09','v',4),(23,'2023-06-09','v',7),(24,'2023-06-09','v',6),(25,'2023-06-09','v',4),(26,'2023-06-09','v',6),(27,'2023-06-09','v',6),(28,'2023-06-09','v',4),(29,'2023-06-09','q',5),(30,'2023-06-09','v',7),(31,'2023-06-09','v',7),(32,'2023-06-09','v',6),(33,'2023-06-09','v',6),(34,'2023-06-09','v',1),(35,'2023-06-09','v',1),(36,'2023-06-09','v',4),(37,'2023-06-09','v',7),(38,'2023-06-09','v',8),(39,'2023-06-09','v',8),(40,'2023-06-09','v',1),(41,'2023-06-09','v',2),(42,'2023-06-09','v',1),(43,'2023-06-09','v',4),(44,'2023-06-09','w',6),(45,'2023-06-09','q',4),(46,'2023-06-09','v',7),(47,'2023-06-09','v',7),(48,'2023-06-09','v',5),(49,'2023-06-09','v',3),(50,'2023-06-09','v',5),(51,'2023-06-09','v',6),(52,'2023-06-09','v',6),(53,'2023-06-09','v',5),(54,'2023-06-09','v',3),(55,'2023-06-09','v',4),(56,'2023-06-09','v',6),(57,'2023-06-09','v',4),(58,'2023-06-09','q',4),(59,'2023-06-09','q',8),(60,'2023-06-09','v',2),(61,'2023-06-09','v',2),(62,'2023-06-09','v',8),(63,'2023-06-09','v',3),(64,'2023-06-09','v',4),(65,'2023-06-09','v',2),(66,'2023-06-09','v',1),(67,'2023-06-09','v',8),(68,'2023-06-09','w',4),(69,'2023-06-09','w',3),(70,'2023-06-09','w',6),(71,'2023-06-09','w',7),(72,'2023-06-09','w',6),(73,'2023-06-09','w',5),(74,'2023-06-09','w',5),(75,'2023-06-09','w',8),(76,'2023-06-09','q',5),(77,'2023-06-09','q',3),(78,'2023-06-09','q',7),(79,'2023-06-09','q',5),(80,'2023-06-09','q',7),(81,'2023-06-09','q',6),(82,'2023-06-09','q',4),(83,'2023-06-09','q',5),(84,'2023-06-09','v',5),(85,'2023-06-09','v',7),(86,'2023-06-09','v',5),(87,'2023-06-09','v',7),(88,'2023-06-09','v',8),(89,'2023-06-09','v',4),(90,'2023-06-09','v',6),(91,'2023-06-09','v',5),(92,'2023-06-09','v',2),(93,'2023-06-09','v',2),(94,'2023-06-09','v',5),(95,'2023-06-09','w',8),(96,'2023-06-09','w',6),(97,'2023-06-09','w',5),(98,'2023-06-09','w',5),(99,'2023-06-09','w',3),(100,'2023-06-09','w',6),(101,'2023-06-09','w',8),(102,'2023-06-09','w',7),(103,'2023-06-09','w',4),(104,'2023-06-09','w',8),(105,'2023-06-09','w',5),(106,'2023-06-09','q',5),(107,'2023-06-09','q',3),(108,'2023-06-09','q',4),(109,'2023-06-09','q',7),(110,'2023-06-09','q',4),(111,'2023-06-09','q',5),(112,'2023-06-09','q',4),(113,'2023-06-09','q',4),(114,'2023-06-09','q',6),(115,'2023-06-09','q',7),(116,'2023-06-09','q',7),(117,'2023-06-09','q',5),(118,'2023-06-09','q',8),(119,'2023-06-09','q',7),(120,'2023-06-09','v',3),(121,'2023-06-09','v',1),(122,'2023-06-09','v',7),(123,'2023-06-09','v',1),(124,'2023-06-09','v',2),(125,'2023-06-09','v',1),(126,'2023-06-09','v',5),(127,'2023-06-09','v',1),(128,'2023-06-09','v',3),(129,'2023-06-09','v',6),(130,'2023-06-09','v',3),(131,'2023-06-09','v',8),(132,'2023-06-09','v',4),(133,'2023-06-09','v',5),(134,'2023-06-09','w',6),(135,'2023-06-09','w',8),(136,'2023-06-09','w',8),(137,'2023-06-09','w',4),(138,'2023-06-09','w',6),(139,'2023-06-09','w',7),(140,'2023-06-09','w',7),(141,'2023-06-09','w',8),(142,'2023-06-09','w',4),(143,'2023-06-09','w',8),(144,'2023-06-09','w',8),(145,'2023-06-09','w',7),(146,'2023-06-09','w',4),(147,'2023-06-09','w',4),(148,'2023-06-09','w',3),(149,'2023-06-09','q',6),(150,'2023-06-09','q',6),(151,'2023-06-09','q',7),(152,'2023-06-09','q',5),(153,'2023-06-09','q',7),(154,'2023-06-09','q',5),(155,'2023-06-09','q',6),(156,'2023-06-09','q',5),(157,'2023-06-09','q',5),(158,'2023-06-09','v',4),(159,'2023-06-09','v',8),(160,'2023-06-09','v',8),(161,'2023-06-09','v',4),(162,'2023-06-09','v',2),(163,'2023-06-09','v',4),(164,'2023-06-09','v',3),(165,'2023-06-09','v',6),(166,'2023-06-09','v',4),(167,'2023-06-09','v',3),(168,'2023-06-09','v',7),(169,'2023-06-09','v',1),(170,'2023-06-09','w',5),(171,'2023-06-09','w',6),(172,'2023-06-09','w',5),(173,'2023-06-09','w',7),(174,'2023-06-09','w',4),(175,'2023-06-09','w',4),(176,'2023-06-09','w',5),(177,'2023-06-09','w',3),(178,'2023-06-09','w',3),(179,'2023-06-09','w',5),(180,'2023-06-09','w',5),(181,'2023-06-09','w',3),(182,'2023-06-09','w',6),(183,'2023-06-09','w',5),(184,'2023-06-09','w',7),(185,'2023-06-09','w',5),(186,'2023-06-09','w',7),(187,'2023-06-09','q',5),(188,'2023-06-09','q',7),(189,'2023-06-09','q',8),(190,'2023-06-09','q',6),(191,'2023-06-09','q',8),(192,'2023-06-09','q',5),(193,'2023-06-09','q',8),(194,'2023-06-09','q',6),(195,'2023-06-09','q',8),(196,'2023-06-09','q',8),(197,'2023-06-09','q',3),(198,'2023-06-09','q',7),(199,'2023-06-09','v',7),(200,'2023-06-09','v',4),(201,'2023-06-09','v',4),(202,'2023-06-09','v',7),(203,'2023-06-09','v',6),(204,'2023-06-09','v',1),(205,'2023-06-09','v',1),(206,'2023-06-09','v',2),(207,'2023-06-09','v',4),(208,'2023-06-09','v',4),(209,'2023-06-09','v',4),(210,'2023-06-09','w',6),(211,'2023-06-09','w',6),(212,'2023-06-09','w',6),(213,'2023-06-09','w',8),(214,'2023-06-09','w',5),(215,'2023-06-09','w',3),(216,'2023-06-09','w',7),(217,'2023-06-09','w',6),(218,'2023-06-09','w',4),(219,'2023-06-09','w',6),(220,'2023-06-09','w',6),(221,'2023-06-09','w',8),(222,'2023-06-09','w',8),(223,'2023-06-09','w',5),(224,'2023-06-09','w',6),(225,'2023-06-09','w',3),(226,'2023-06-09','w',8),(227,'2023-06-09','w',7),(228,'2023-06-09','w',7),(229,'2023-06-09','q',4),(230,'2023-06-09','q',7),(231,'2023-06-09','q',6),(232,'2023-06-09','q',4),(233,'2023-06-09','q',3),(234,'2023-06-09','q',7),(235,'2023-06-09','q',7),(236,'2023-06-09','q',5),(237,'2023-06-09','q',8),(238,'2023-06-09','q',7),(239,'2023-06-09','q',5),(240,'2023-06-09','v',3),(241,'2023-06-09','v',8),(242,'2023-06-09','v',5),(243,'2023-06-09','v',4),(244,'2023-06-09','v',5),(245,'2023-06-09','v',2),(246,'2023-06-09','v',4),(247,'2023-06-09','v',2),(248,'2023-06-09','v',4),(249,'2023-06-09','v',3),(250,'2023-06-09','v',7),(251,'2023-06-09','v',1),(252,'2023-06-09','v',2),(253,'2023-06-09','v',3),(254,'2023-06-09','w',5),(255,'2023-06-09','w',8),(256,'2023-06-09','w',4),(257,'2023-06-09','w',4),(258,'2023-06-09','w',8),(259,'2023-06-09','w',6),(260,'2023-06-09','w',5),(261,'2023-06-09','w',5),(262,'2023-06-09','w',7),(263,'2023-06-09','w',6),(264,'2023-06-09','w',7),(265,'2023-06-09','w',3),(266,'2023-06-09','w',5),(267,'2023-06-09','w',5),(268,'2023-06-09','w',8),(269,'2023-06-09','w',5),(270,'2023-06-09','w',6),(271,'2023-06-09','w',6),(272,'2023-06-09','w',4),(273,'2023-06-09','w',7),(274,'2023-06-09','w',8),(275,'2023-06-09','w',5),(276,'2023-06-09','w',8),(277,'2023-06-09','q',4),(278,'2023-06-09','q',7),(279,'2023-06-09','q',6),(280,'2023-06-09','q',3),(281,'2023-06-09','q',4),(282,'2023-06-09','q',4),(283,'2023-06-09','q',4),(284,'2023-06-09','q',4),(285,'2023-06-09','q',5),(286,'2023-06-09','q',7),(287,'2023-06-09','q',4),(288,'2023-06-09','q',7),(289,'2023-06-09','q',6),(290,'2023-06-09','q',3);
/*!40000 ALTER TABLE `tb_decease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_decease_type`
--

DROP TABLE IF EXISTS `tb_decease_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_decease_type` (
  `id_decease_type` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_decease_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_decease_type`
--

LOCK TABLES `tb_decease_type` WRITE;
/*!40000 ALTER TABLE `tb_decease_type` DISABLE KEYS */;
INSERT INTO `tb_decease_type` VALUES ('q','quest'),('v','vault'),('w','westland');
/*!40000 ALTER TABLE `tb_decease_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_diary`
--

DROP TABLE IF EXISTS `tb_diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_diary` (
  `id_diary` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `dweller_count` int DEFAULT (0),
  `decease_count` int DEFAULT (0),
  `money` int DEFAULT (0),
  `room_count` int DEFAULT (0),
  `exploration_count` int DEFAULT (0),
  `quest_count` int DEFAULT (0),
  `incident_count` int DEFAULT (0),
  `outfit_count` int DEFAULT (0),
  `weapon_count` int DEFAULT (0),
  `pet_count` int DEFAULT (0),
  `junk_count` int DEFAULT (0),
  `sale_count` int DEFAULT (0),
  `scrap_count` int DEFAULT (0),
  `energy` int DEFAULT (0),
  `water` int DEFAULT (0),
  `food` int DEFAULT (0),
  PRIMARY KEY (`id_diary`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_diary`
--

LOCK TABLES `tb_diary` WRITE;
/*!40000 ALTER TABLE `tb_diary` DISABLE KEYS */;
INSERT INTO `tb_diary` VALUES (1,'2023-06-09',51,8,2026,75,0,0,40,2,3,7,33,86,29,42,62,89),(2,'2023-06-09',128,15,3657,75,0,0,81,5,12,14,38,141,64,88,68,53),(3,'2023-06-09',210,21,988,75,0,0,140,17,20,32,39,209,93,48,60,38),(4,'2023-06-09',272,29,491,75,1,4,194,45,41,40,80,274,132,25,44,62),(5,'2023-06-09',341,45,3105,75,2,5,226,40,41,43,80,348,171,19,46,58),(6,'2023-06-09',404,59,4029,75,4,14,257,60,58,44,120,419,219,66,29,100),(7,'2023-06-09',476,83,4894,75,22,26,314,102,113,49,152,511,285,18,54,84),(8,'2023-06-09',539,119,5832,75,57,42,367,161,192,52,158,623,358,91,93,21),(9,'2023-06-09',603,157,1921,75,91,62,401,228,271,63,189,732,442,27,12,48),(10,'2023-06-09',667,198,2801,75,134,85,432,294,370,76,163,830,533,72,24,43),(11,'2023-06-09',732,239,567,75,183,106,468,349,430,66,273,940,619,70,24,30),(12,'2023-06-09',792,290,676,75,235,127,518,387,488,68,289,1051,704,68,28,91);
/*!40000 ALTER TABLE `tb_diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dweller`
--

DROP TABLE IF EXISTS `tb_dweller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dweller` (
  `id_dweller` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `level` int NOT NULL,
  `status` tinyint(1) DEFAULT (0),
  `id_special` int NOT NULL,
  `id_outfit` int DEFAULT NULL,
  `id_weapon` int DEFAULT NULL,
  `id_pet` int DEFAULT NULL,
  `id_kinship` int DEFAULT NULL,
  `id_decease` int DEFAULT NULL,
  `id_room` int DEFAULT NULL,
  PRIMARY KEY (`id_dweller`),
  UNIQUE KEY `id_special` (`id_special`),
  KEY `fk_id_outfit_tb_dweller` (`id_outfit`),
  KEY `fk_id_weapon_tb_dweller` (`id_weapon`),
  KEY `fk_id_pet_tb_dweller` (`id_pet`),
  KEY `fk_id_kinship_tb_dweller` (`id_kinship`),
  KEY `fk_id_decease_tb_dweller` (`id_decease`),
  KEY `fk_id_room_tb_dweller` (`id_room`),
  CONSTRAINT `fk_id_decease_tb_dweller` FOREIGN KEY (`id_decease`) REFERENCES `tb_decease` (`id_decease`),
  CONSTRAINT `fk_id_kinship_tb_dweller` FOREIGN KEY (`id_kinship`) REFERENCES `tb_kinship` (`id_kinship`),
  CONSTRAINT `fk_id_outfit_tb_dweller` FOREIGN KEY (`id_outfit`) REFERENCES `tb_outfit` (`id_outfit`),
  CONSTRAINT `fk_id_pet_tb_dweller` FOREIGN KEY (`id_pet`) REFERENCES `tb_pet` (`id_pet`),
  CONSTRAINT `fk_id_room_tb_dweller` FOREIGN KEY (`id_room`) REFERENCES `tb_room` (`id_room`),
  CONSTRAINT `fk_id_special_tb_dweller` FOREIGN KEY (`id_special`) REFERENCES `tb_special` (`id_special`),
  CONSTRAINT `fk_id_weapon_tb_dweller` FOREIGN KEY (`id_weapon`) REFERENCES `tb_weapon` (`id_weapon`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dweller`
--

LOCK TABLES `tb_dweller` WRITE;
/*!40000 ALTER TABLE `tb_dweller` DISABLE KEYS */;
INSERT INTO `tb_dweller` VALUES (1,'jerry murillo','m',8,0,158,NULL,NULL,NULL,NULL,NULL,59),(2,'baker dorsey','f',4,1,159,NULL,NULL,NULL,NULL,4,NULL),(3,'evie lamb','m',9,1,160,NULL,NULL,NULL,NULL,8,NULL),(4,'luca tate','m',8,1,161,NULL,NULL,NULL,NULL,17,NULL),(5,'siena kemp','m',5,0,162,NULL,NULL,NULL,NULL,NULL,7),(6,'titus munoz','m',1,1,163,NULL,NULL,NULL,NULL,6,NULL),(7,'finn fowler','f',10,0,164,NULL,NULL,NULL,NULL,NULL,4),(8,'douglas conway','m',7,0,165,NULL,NULL,NULL,NULL,NULL,26),(9,'jessica grant','m',3,1,166,NULL,NULL,NULL,NULL,10,NULL),(10,'hattie mullins','f',7,0,167,NULL,NULL,NULL,NULL,NULL,14),(11,'cade herring','m',9,0,168,NULL,NULL,NULL,NULL,NULL,35),(12,'porter bender','m',9,1,169,NULL,NULL,NULL,NULL,5,NULL),(13,'blake flowers','f',5,0,170,NULL,NULL,NULL,NULL,NULL,34),(14,'calliope coffey','m',5,1,171,NULL,NULL,NULL,NULL,1,NULL),(15,'fernanda salazar','m',1,1,172,NULL,NULL,NULL,NULL,7,NULL),(16,'canaan rollins','f',6,0,173,NULL,NULL,NULL,NULL,NULL,17),(17,'ayla griffin','f',3,0,174,NULL,NULL,NULL,NULL,NULL,5),(18,'ruben romero','f',3,1,175,NULL,NULL,NULL,NULL,27,NULL),(19,'drew avalos','f',6,1,176,NULL,NULL,NULL,NULL,11,NULL),(20,'cataleya bailey','f',2,1,177,NULL,NULL,NULL,NULL,9,NULL),(21,'heidi turner','m',8,0,178,NULL,NULL,NULL,NULL,NULL,68),(22,'rylee schroeder','f',1,0,179,NULL,NULL,NULL,NULL,NULL,18),(23,'hugh peck','m',1,1,180,NULL,NULL,NULL,NULL,47,NULL),(24,'aiden lu','f',1,1,181,NULL,NULL,NULL,NULL,18,NULL),(25,'cairo vo','f',2,0,182,NULL,NULL,NULL,NULL,NULL,11),(26,'raina hopkins','f',4,0,183,NULL,NULL,NULL,NULL,NULL,33),(27,'royalty hudson','f',8,1,184,NULL,NULL,NULL,NULL,14,NULL),(28,'violeta marin','m',8,0,185,NULL,NULL,NULL,NULL,NULL,60),(29,'maverick moss','m',4,1,186,NULL,NULL,NULL,NULL,35,NULL),(30,'mara kelly','m',3,1,187,NULL,NULL,NULL,NULL,241,NULL),(31,'aryan bowman','f',6,0,188,NULL,NULL,NULL,NULL,NULL,12),(32,'khalid weeks','m',7,1,189,NULL,NULL,NULL,NULL,3,NULL),(33,'paislee villanueva','f',5,0,190,NULL,NULL,NULL,NULL,NULL,5),(34,'emelia richards','f',3,0,191,NULL,NULL,NULL,NULL,NULL,59),(35,'alexis schroeder','f',7,1,192,NULL,NULL,NULL,NULL,2,NULL),(36,'kashton holmes','m',3,0,193,NULL,NULL,NULL,NULL,NULL,22),(37,'ariella conway','m',1,0,194,NULL,NULL,NULL,1,NULL,NULL),(38,'scarlet howell','f',1,1,195,NULL,NULL,NULL,2,12,NULL),(39,'dylan romero','f',1,1,196,NULL,NULL,NULL,3,48,NULL),(40,'ruben jones','m',1,0,197,NULL,NULL,NULL,4,NULL,NULL),(41,'colin day','m',1,0,198,NULL,NULL,NULL,5,NULL,NULL),(42,'leia wright','f',1,1,199,NULL,NULL,NULL,6,67,NULL),(43,'itzayana yates','m',1,0,200,NULL,NULL,NULL,7,NULL,NULL),(44,'charlie mcfarland','m',1,0,201,NULL,NULL,NULL,8,NULL,NULL),(45,'crew whitney','f',1,0,202,NULL,NULL,NULL,9,NULL,NULL),(46,'madalynn orr','f',1,1,203,NULL,NULL,NULL,10,158,NULL),(47,'ivory baxter','m',1,0,204,NULL,NULL,NULL,11,NULL,NULL),(48,'paityn rice','m',1,0,205,NULL,NULL,NULL,12,NULL,NULL),(49,'desmond cline','m',1,0,206,NULL,NULL,NULL,7,NULL,NULL),(50,'amaia velasquez','m',1,0,207,NULL,NULL,NULL,13,NULL,NULL),(51,'ellie benson','m',1,1,208,NULL,NULL,NULL,14,22,NULL),(52,'sienna pruitt','m',7,0,209,NULL,NULL,NULL,NULL,NULL,26),(53,'rowan mclean','f',6,0,210,NULL,NULL,NULL,NULL,NULL,75),(54,'iliana rhodes','m',6,1,211,NULL,NULL,NULL,NULL,52,NULL),(55,'logan roman','m',10,1,212,NULL,NULL,NULL,NULL,253,NULL),(56,'ryan o’connell','f',6,1,213,NULL,NULL,NULL,NULL,13,NULL),(57,'malakai myers','f',3,0,214,NULL,NULL,NULL,NULL,NULL,50),(58,'remy vang','f',4,0,215,NULL,NULL,NULL,NULL,NULL,68),(59,'renata goodman','f',1,0,216,NULL,NULL,NULL,NULL,NULL,19),(60,'dylan ingram','m',3,0,217,NULL,NULL,NULL,NULL,NULL,25),(61,'addilyn mccoy','f',3,1,218,NULL,NULL,NULL,NULL,42,NULL),(62,'gwen henderson','m',8,0,219,NULL,NULL,NULL,NULL,NULL,55),(63,'joaquin warner','m',3,0,220,NULL,NULL,NULL,NULL,NULL,14),(64,'holden clayton','f',1,1,221,NULL,NULL,NULL,NULL,33,NULL),(65,'hana yoder','f',2,0,222,NULL,NULL,NULL,NULL,NULL,63),(66,'jamie nichols','f',5,0,223,NULL,NULL,NULL,NULL,NULL,11),(67,'josie shelton','f',7,0,224,NULL,NULL,NULL,NULL,NULL,23),(68,'sloane guerrero','f',6,1,225,NULL,NULL,NULL,NULL,46,NULL),(69,'duncan durham','m',3,0,226,NULL,NULL,NULL,NULL,NULL,40),(70,'grayson bauer','f',2,1,227,NULL,NULL,NULL,NULL,168,NULL),(71,'meghan lee','f',9,0,228,NULL,NULL,NULL,NULL,NULL,31),(72,'lucia kramer','m',1,0,229,NULL,NULL,NULL,NULL,NULL,52),(73,'meredith burton','m',7,0,230,NULL,NULL,NULL,NULL,NULL,31),(74,'evie berg','m',2,0,231,NULL,NULL,NULL,NULL,NULL,34),(75,'roman roberts','f',3,0,232,NULL,NULL,NULL,NULL,NULL,3),(76,'jefferson haynes','m',3,0,233,NULL,NULL,NULL,NULL,NULL,61),(77,'charlee carter','f',3,0,234,NULL,NULL,NULL,NULL,NULL,3),(78,'adele cline','m',1,0,235,NULL,NULL,NULL,NULL,NULL,33),(79,'cairo west','f',6,0,236,NULL,NULL,NULL,NULL,NULL,14),(80,'rhea conner','m',3,1,237,NULL,NULL,NULL,NULL,15,NULL),(81,'joyce hicks','m',6,0,238,NULL,NULL,NULL,NULL,NULL,41),(82,'amani solis','m',6,0,239,NULL,NULL,NULL,NULL,NULL,55),(83,'zaria rocha','f',3,1,240,NULL,NULL,NULL,NULL,41,NULL),(84,'castiel stevenson','m',6,1,241,NULL,NULL,NULL,NULL,34,NULL),(85,'adalyn wilkins','m',4,0,242,NULL,NULL,NULL,NULL,NULL,69),(86,'angela berry','m',10,0,243,NULL,NULL,NULL,NULL,NULL,49),(87,'jackson olson','f',8,0,244,NULL,NULL,NULL,NULL,NULL,57),(88,'jesse villegas','m',9,0,245,NULL,NULL,NULL,NULL,NULL,18),(89,'kiaan sheppard','m',8,0,246,NULL,NULL,NULL,NULL,NULL,73),(90,'lucas schaefer','m',8,1,247,NULL,NULL,NULL,NULL,20,NULL),(91,'uriel conrad','f',5,0,248,NULL,NULL,NULL,NULL,NULL,51),(92,'saul boyle','m',10,0,249,NULL,NULL,NULL,NULL,NULL,5),(93,'kolton salinas','f',10,0,250,NULL,NULL,NULL,NULL,NULL,53),(94,'leilani cannon','m',8,1,251,NULL,NULL,NULL,NULL,84,NULL),(95,'keaton corona','f',4,1,252,NULL,NULL,NULL,NULL,21,NULL),(96,'tru xiong','f',5,0,253,NULL,NULL,NULL,NULL,NULL,27),(97,'warren griffin','m',4,0,254,NULL,NULL,NULL,NULL,NULL,70),(98,'adaline richard','f',1,0,255,NULL,NULL,NULL,15,NULL,NULL),(99,'marlowe lang','m',1,0,256,NULL,NULL,NULL,16,NULL,NULL),(100,'kellen wiley','m',1,0,257,NULL,NULL,NULL,17,NULL,NULL),(101,'hannah long','m',1,1,258,NULL,NULL,NULL,18,127,NULL),(102,'jianna carpenter','f',1,0,259,NULL,NULL,NULL,19,NULL,NULL),(103,'nikolas arias','m',1,0,260,NULL,NULL,NULL,20,NULL,NULL),(104,'krew mckinney','f',1,0,261,NULL,NULL,NULL,21,NULL,NULL),(105,'peyton watts','m',1,0,262,NULL,NULL,NULL,22,NULL,NULL),(106,'garrett whitney','m',1,1,263,NULL,NULL,NULL,23,200,NULL),(107,'belle mccall','f',1,0,264,NULL,NULL,NULL,24,NULL,NULL),(108,'hugo stanley','m',1,0,265,NULL,NULL,NULL,25,NULL,NULL),(109,'maurice truong','m',1,0,266,NULL,NULL,NULL,26,NULL,NULL),(110,'leonel webb','f',1,0,267,NULL,NULL,NULL,27,NULL,NULL),(111,'hakeem mckenzie','f',1,1,268,NULL,NULL,NULL,28,19,NULL),(112,'joyce berry','m',1,1,269,NULL,NULL,NULL,29,206,NULL),(113,'van cannon','f',1,0,270,NULL,NULL,NULL,30,NULL,NULL),(114,'rebekah bradford','m',1,0,271,NULL,NULL,NULL,31,NULL,NULL),(115,'emilia may','f',1,1,272,NULL,NULL,NULL,32,31,NULL),(116,'faye cannon','f',1,1,273,NULL,NULL,NULL,33,26,NULL),(117,'drake douglas','m',1,0,274,NULL,NULL,NULL,34,NULL,NULL),(118,'evangeline vega','f',1,0,275,NULL,NULL,NULL,35,NULL,NULL),(119,'zoya spence','m',1,0,276,NULL,NULL,NULL,36,NULL,NULL),(120,'jianna manning','m',1,1,277,NULL,NULL,NULL,37,36,NULL),(121,'angie davenport','m',1,0,278,NULL,NULL,NULL,38,NULL,NULL),(122,'jasiah robbins','f',1,0,279,NULL,NULL,NULL,39,NULL,NULL),(123,'alexandra nicholson','f',1,0,280,NULL,NULL,NULL,40,NULL,NULL),(124,'cooper holloway','f',1,0,281,NULL,NULL,NULL,41,NULL,NULL),(125,'johan schwartz','m',1,0,282,NULL,NULL,NULL,42,NULL,NULL),(126,'damir griffith','m',1,0,283,NULL,NULL,NULL,43,NULL,NULL),(127,'kali colon','f',1,0,284,NULL,NULL,NULL,44,NULL,NULL),(128,'arya mosley','f',1,0,285,NULL,NULL,NULL,45,NULL,NULL),(129,'rowan payne','m',10,1,286,NULL,NULL,NULL,NULL,23,NULL),(130,'arlo woodard','f',2,1,287,NULL,NULL,NULL,NULL,51,NULL),(131,'camila gibson','m',4,0,288,NULL,NULL,NULL,NULL,NULL,42),(132,'jenna roberts','f',4,0,289,NULL,NULL,NULL,NULL,NULL,29),(133,'noor camacho','m',4,0,290,NULL,NULL,NULL,NULL,NULL,16),(134,'drew frederick','m',5,0,291,NULL,NULL,NULL,NULL,NULL,58),(135,'zola quintero','f',6,1,292,NULL,NULL,NULL,NULL,64,NULL),(136,'belen barajas','m',1,0,293,NULL,NULL,NULL,NULL,NULL,66),(137,'tru hurley','f',5,1,294,NULL,NULL,NULL,NULL,160,NULL),(138,'arielle bell','m',3,0,295,NULL,NULL,NULL,NULL,NULL,38),(139,'zion roy','f',4,0,296,NULL,NULL,NULL,NULL,NULL,27),(140,'meghan ingram','f',9,0,297,NULL,NULL,NULL,NULL,NULL,35),(141,'quincy meadows','m',4,0,298,NULL,NULL,NULL,NULL,NULL,47),(142,'bruce duke','f',3,0,299,NULL,NULL,NULL,NULL,NULL,65),(143,'bria hogan','m',10,1,300,NULL,NULL,NULL,NULL,248,NULL),(144,'sylas cantrell','f',1,1,301,NULL,NULL,NULL,NULL,90,NULL),(145,'kaden jacobson','m',4,0,302,NULL,NULL,NULL,NULL,NULL,28),(146,'stetson perez','m',4,0,303,NULL,NULL,NULL,NULL,NULL,68),(147,'grant lyons','m',3,0,304,NULL,NULL,NULL,NULL,NULL,23),(148,'robert mcintosh','f',4,0,305,NULL,NULL,NULL,NULL,NULL,54),(149,'ahmad edwards','m',9,0,306,NULL,NULL,NULL,NULL,NULL,17),(150,'gia hogan','f',10,1,307,NULL,NULL,NULL,NULL,88,NULL),(151,'selena hayden','f',6,0,308,NULL,NULL,NULL,NULL,NULL,45),(152,'drew gilmore','f',8,0,309,NULL,NULL,NULL,NULL,NULL,5),(153,'ryker dawson','m',1,0,310,NULL,NULL,NULL,NULL,NULL,34),(154,'darwin lewis','f',5,0,311,NULL,NULL,NULL,NULL,NULL,30),(155,'oaklyn reilly','m',7,1,312,NULL,NULL,NULL,NULL,32,NULL),(156,'brynlee jacobs','m',9,1,313,NULL,NULL,NULL,NULL,37,NULL),(157,'giuliana wilcox','f',10,0,314,NULL,NULL,NULL,NULL,NULL,19),(158,'winston marshall','f',9,1,315,NULL,NULL,NULL,NULL,203,NULL),(159,'mathew robles','m',7,0,316,NULL,NULL,NULL,NULL,NULL,4),(160,'emma ochoa','m',6,0,317,NULL,NULL,NULL,NULL,NULL,52),(161,'angela lyons','f',7,0,318,NULL,NULL,NULL,NULL,NULL,17),(162,'elianna gross','f',5,0,319,NULL,NULL,NULL,NULL,NULL,21),(163,'julie walter','f',9,0,320,NULL,NULL,NULL,NULL,NULL,74),(164,'eliza travis','f',9,0,321,NULL,NULL,NULL,NULL,NULL,72),(165,'abby swanson','f',4,0,322,NULL,NULL,NULL,NULL,NULL,43),(166,'reid campos','m',3,1,323,NULL,NULL,NULL,NULL,94,NULL),(167,'dane wagner','f',7,1,324,NULL,NULL,NULL,NULL,16,NULL),(168,'morgan maynard','f',6,0,325,NULL,NULL,NULL,NULL,NULL,52),(169,'rose sawyer','m',10,1,326,NULL,NULL,NULL,NULL,128,NULL),(170,'remy burton','f',7,1,327,NULL,NULL,NULL,NULL,39,NULL),(171,'thaddeus vasquez','m',10,0,328,NULL,NULL,NULL,NULL,NULL,59),(172,'boden williamson','m',2,1,329,NULL,NULL,NULL,NULL,60,NULL),(173,'maci hancock','f',1,0,330,NULL,NULL,NULL,NULL,NULL,55),(174,'phillip davenport','m',2,0,331,NULL,NULL,NULL,NULL,NULL,72),(175,'aurelia hinton','f',4,0,332,NULL,NULL,NULL,NULL,NULL,34),(176,'daxton dixon','m',10,0,333,NULL,NULL,NULL,NULL,NULL,75),(177,'alaia cordova','f',1,1,334,NULL,NULL,NULL,46,53,NULL),(178,'aubriella richard','f',1,0,335,NULL,NULL,NULL,47,NULL,NULL),(179,'oaklyn guerra','f',1,0,336,NULL,NULL,NULL,48,NULL,NULL),(180,'desmond dudley','m',1,0,337,NULL,NULL,NULL,49,NULL,NULL),(181,'malcolm lee','m',1,1,338,NULL,NULL,NULL,50,49,NULL),(182,'kassidy guevara','m',1,0,339,NULL,NULL,NULL,51,NULL,NULL),(183,'keegan moran','f',1,0,340,NULL,NULL,NULL,52,NULL,NULL),(184,'samara drake','m',1,0,341,NULL,NULL,NULL,53,NULL,NULL),(185,'yehuda friedman','f',1,0,342,NULL,NULL,NULL,54,NULL,NULL),(186,'jamir allison','f',1,1,343,NULL,NULL,NULL,55,124,NULL),(187,'eliana huff','f',1,0,344,NULL,NULL,NULL,56,NULL,NULL),(188,'bristol ingram','f',1,0,345,NULL,NULL,NULL,57,NULL,NULL),(189,'seth mayer','m',1,1,346,NULL,NULL,NULL,58,30,NULL),(190,'chloe patrick','f',1,0,347,NULL,NULL,NULL,59,NULL,NULL),(191,'nellie powers','m',1,0,348,NULL,NULL,NULL,60,NULL,NULL),(192,'lilah patrick','m',1,0,349,NULL,NULL,NULL,61,NULL,NULL),(193,'grant pearson','f',1,0,350,NULL,NULL,NULL,62,NULL,NULL),(194,'miracle greene','f',1,0,351,NULL,NULL,NULL,63,NULL,NULL),(195,'braylon espinoza','f',1,0,352,NULL,NULL,NULL,64,NULL,NULL),(196,'turner frazier','f',1,0,353,NULL,NULL,NULL,65,NULL,NULL),(197,'jase yates','f',1,0,354,NULL,NULL,NULL,66,NULL,NULL),(198,'brody mason','m',1,0,355,NULL,NULL,NULL,67,NULL,NULL),(199,'dylan beard','f',1,0,356,NULL,NULL,NULL,68,NULL,NULL),(200,'rhys farrell','f',1,1,357,NULL,NULL,NULL,69,247,NULL),(201,'finley klein','m',1,0,358,NULL,NULL,NULL,70,NULL,NULL),(202,'jaxxon hurst','f',1,0,359,NULL,NULL,NULL,71,NULL,NULL),(203,'clementine clarke','m',1,0,360,NULL,NULL,NULL,72,NULL,NULL),(204,'trinity bryan','f',1,0,361,NULL,NULL,NULL,73,NULL,NULL),(205,'fallon lawrence','f',1,0,362,NULL,NULL,NULL,74,NULL,NULL),(206,'harry gibson','f',1,0,363,NULL,NULL,NULL,75,NULL,NULL),(207,'josephine strong','m',1,0,364,NULL,NULL,NULL,76,NULL,NULL),(208,'ahmad rich','f',1,0,365,NULL,NULL,NULL,77,NULL,NULL),(209,'melanie arroyo','m',1,0,366,NULL,NULL,NULL,78,NULL,NULL),(210,'mercy parks','f',1,1,367,NULL,NULL,NULL,79,43,NULL),(211,'brayden moses','f',10,0,368,NULL,NULL,NULL,NULL,NULL,12),(212,'ivanna madden','f',9,0,369,NULL,NULL,NULL,NULL,NULL,39),(213,'katie griffin','m',3,0,370,NULL,NULL,NULL,NULL,NULL,74),(214,'bronson stevens','m',1,0,371,NULL,NULL,NULL,NULL,NULL,32),(215,'astrid hart','f',4,0,372,NULL,NULL,NULL,NULL,NULL,42),(216,'hadlee caldwell','f',6,0,373,NULL,NULL,NULL,NULL,NULL,54),(217,'sonny combs','f',7,0,374,NULL,NULL,NULL,NULL,NULL,28),(218,'bellamy person','m',1,0,375,NULL,NULL,NULL,NULL,NULL,42),(219,'kaylie escobar','f',3,0,376,NULL,NULL,NULL,NULL,NULL,37),(220,'alaina holt','m',8,1,377,NULL,NULL,NULL,NULL,28,NULL),(221,'bowen stanton','m',7,0,378,NULL,NULL,NULL,NULL,NULL,75),(222,'briar vega','f',1,0,379,NULL,NULL,NULL,NULL,NULL,44),(223,'archie peterson','f',7,0,380,NULL,NULL,NULL,NULL,NULL,61),(224,'remi whitaker','f',6,0,381,NULL,NULL,NULL,NULL,NULL,28),(225,'santiago orozco','m',6,1,382,NULL,NULL,NULL,NULL,202,NULL),(226,'london miranda','f',9,0,383,NULL,NULL,NULL,NULL,NULL,51),(227,'finnley cano','f',3,0,384,NULL,NULL,NULL,NULL,NULL,8),(228,'araceli ellis','m',10,1,385,NULL,NULL,NULL,NULL,162,NULL),(229,'tessa clarke','m',1,0,386,NULL,NULL,NULL,NULL,NULL,26),(230,'angie li','f',4,0,387,NULL,NULL,NULL,NULL,NULL,12),(231,'thatcher mills','f',7,0,388,NULL,NULL,NULL,NULL,NULL,60),(232,'jonah mccall','m',5,1,389,NULL,NULL,NULL,NULL,25,NULL),(233,'adriana mcdonald','f',5,0,390,NULL,NULL,NULL,NULL,NULL,18),(234,'bonnie harrington','m',9,0,391,NULL,NULL,NULL,NULL,NULL,48),(235,'branson warren','m',3,0,392,NULL,NULL,NULL,NULL,NULL,52),(236,'autumn archer','f',7,0,393,NULL,NULL,NULL,NULL,NULL,65),(237,'alexander brandt','f',10,0,394,NULL,NULL,NULL,NULL,NULL,34),(238,'kyle bullock','f',2,0,395,NULL,NULL,NULL,NULL,NULL,39),(239,'legacy hammond','m',3,0,396,NULL,NULL,NULL,NULL,NULL,45),(240,'serena gardner','m',3,1,397,NULL,NULL,NULL,NULL,24,NULL),(241,'gwendolyn marshall','f',6,1,398,NULL,NULL,NULL,NULL,29,NULL),(242,'emiliano nixon','m',7,1,399,NULL,NULL,NULL,NULL,121,NULL),(243,'francisco dominguez','m',2,0,400,NULL,NULL,NULL,NULL,NULL,52),(244,'georgia taylor','f',7,0,401,NULL,NULL,NULL,NULL,NULL,29),(245,'sloan mcguire','f',9,0,402,NULL,NULL,NULL,NULL,NULL,45),(246,'royce pennington','f',8,0,403,NULL,NULL,NULL,NULL,NULL,7),(247,'leyla reyna','m',1,0,404,NULL,NULL,NULL,NULL,NULL,29),(248,'kiara harrell','f',5,0,405,NULL,NULL,NULL,NULL,NULL,38),(249,'kehlani larson','m',5,0,406,NULL,NULL,NULL,NULL,NULL,56),(250,'leilany franklin','f',10,0,407,NULL,NULL,NULL,NULL,NULL,24),(251,'carmelo o’brien','f',1,0,408,NULL,NULL,NULL,NULL,NULL,70),(252,'jamari parks','m',3,1,409,NULL,NULL,NULL,NULL,54,NULL),(253,'giselle ballard','f',7,0,410,NULL,NULL,NULL,NULL,NULL,56),(254,'carmelo walker','m',4,0,411,NULL,NULL,NULL,NULL,NULL,28),(255,'kaiser walter','f',1,0,412,NULL,NULL,NULL,80,NULL,NULL),(256,'kiaan frederick','m',1,0,413,NULL,NULL,NULL,81,NULL,NULL),(257,'cal decker','m',1,0,414,NULL,NULL,NULL,82,NULL,NULL),(258,'travis york','f',1,1,415,NULL,NULL,NULL,83,66,NULL),(259,'elsa cline','f',1,0,416,NULL,NULL,NULL,84,NULL,NULL),(260,'celine clarke','f',1,0,417,NULL,NULL,NULL,85,NULL,NULL),(261,'jaylah moon','m',1,0,418,NULL,NULL,NULL,86,NULL,NULL),(262,'noah lu','m',1,1,419,NULL,NULL,NULL,87,133,NULL),(263,'esme aguilar','f',1,0,420,NULL,NULL,NULL,88,NULL,NULL),(264,'miles grimes','m',1,0,421,NULL,NULL,NULL,89,NULL,NULL),(265,'gracie hudson','m',1,0,422,NULL,NULL,NULL,90,NULL,NULL),(266,'miles schaefer','m',1,0,423,NULL,NULL,NULL,91,NULL,NULL),(267,'kyng rasmussen','m',1,0,424,NULL,NULL,NULL,92,NULL,NULL),(268,'heidi weber','m',1,1,425,NULL,NULL,NULL,93,92,NULL),(269,'vihaan lara','m',1,0,426,NULL,NULL,NULL,94,NULL,NULL),(270,'juliana fitzpatrick','f',1,0,427,NULL,NULL,NULL,95,NULL,NULL),(271,'bryant villanueva','f',1,0,428,NULL,NULL,NULL,96,NULL,NULL),(272,'luciana chen','m',1,0,429,NULL,NULL,NULL,97,NULL,NULL),(273,'tadeo marin','m',1,1,430,NULL,NULL,NULL,NULL,165,NULL),(274,'karter o’connell','f',8,0,431,NULL,NULL,NULL,NULL,NULL,24),(275,'omari bond','f',1,1,432,NULL,NULL,NULL,NULL,167,NULL),(276,'alani acosta','f',3,0,433,NULL,NULL,NULL,NULL,NULL,55),(277,'riggs haynes','f',7,0,434,NULL,NULL,NULL,NULL,NULL,39),(278,'dominik erickson','f',7,0,435,NULL,NULL,NULL,NULL,NULL,69),(279,'esme singleton','f',9,1,436,NULL,NULL,NULL,NULL,38,NULL),(280,'david jarvis','f',8,0,437,NULL,NULL,NULL,NULL,NULL,40),(281,'emma choi','f',8,0,438,NULL,NULL,NULL,NULL,NULL,26),(282,'gabriella daugherty','m',2,1,439,NULL,NULL,NULL,NULL,86,NULL),(283,'sabrina dunn','f',6,0,440,NULL,NULL,NULL,NULL,NULL,51),(284,'ariana kennedy','f',9,0,441,NULL,NULL,NULL,NULL,NULL,66),(285,'arabella mahoney','f',7,0,442,NULL,NULL,NULL,NULL,NULL,47),(286,'caspian shannon','f',10,0,443,NULL,NULL,NULL,NULL,NULL,57),(287,'loretta case','m',2,0,444,NULL,NULL,NULL,NULL,NULL,75),(288,'hunter le','m',7,0,445,NULL,NULL,NULL,NULL,NULL,3),(289,'vada espinosa','m',8,0,446,NULL,NULL,NULL,NULL,NULL,21),(290,'dante hobbs','m',10,0,447,NULL,NULL,NULL,NULL,NULL,21),(291,'aidan lim','m',4,0,448,NULL,NULL,NULL,NULL,NULL,31),(292,'roberto mckenzie','f',3,0,449,NULL,NULL,NULL,NULL,NULL,73),(293,'zoe terry','f',5,0,450,NULL,NULL,NULL,NULL,NULL,10),(294,'leona duran','m',5,0,451,NULL,NULL,NULL,NULL,NULL,43),(295,'amias hunter','m',7,0,452,NULL,NULL,NULL,NULL,NULL,25),(296,'zakai ali','f',2,0,453,NULL,NULL,NULL,NULL,NULL,36),(297,'connor malone','m',3,0,454,NULL,NULL,NULL,NULL,NULL,70),(298,'abner hamilton','f',3,1,455,NULL,NULL,NULL,NULL,65,NULL),(299,'quinn vu','f',2,1,456,NULL,NULL,NULL,NULL,44,NULL),(300,'justin juarez','f',2,1,457,NULL,NULL,NULL,NULL,45,NULL),(301,'alexis mcconnell','m',4,0,458,NULL,NULL,NULL,NULL,NULL,36),(302,'tommy atkins','f',4,0,459,NULL,NULL,NULL,NULL,NULL,71),(303,'chandler munoz','m',8,0,460,NULL,NULL,NULL,NULL,NULL,27),(304,'beatrice russell','f',4,0,461,NULL,NULL,NULL,NULL,NULL,46),(305,'eliza chapman','m',1,0,462,NULL,NULL,NULL,NULL,NULL,9),(306,'khalil bowen','m',1,1,463,NULL,NULL,NULL,NULL,205,NULL),(307,'jared bruce','m',6,0,464,NULL,NULL,NULL,NULL,NULL,63),(308,'alaia portillo','f',10,1,465,NULL,NULL,NULL,NULL,57,NULL),(309,'jericho knight','m',3,0,466,NULL,NULL,NULL,NULL,NULL,24),(310,'ivory benson','f',5,0,467,NULL,NULL,NULL,NULL,NULL,61),(311,'valentina bridges','m',7,1,468,NULL,NULL,NULL,NULL,131,NULL),(312,'paula huber','f',1,0,469,NULL,NULL,NULL,NULL,NULL,45),(313,'garrett rosales','m',4,0,470,NULL,NULL,NULL,NULL,NULL,15),(314,'maia khan','f',9,1,471,NULL,NULL,NULL,NULL,40,NULL),(315,'amina mcdonald','f',7,0,472,NULL,NULL,NULL,NULL,NULL,63),(316,'lyric gregory','m',9,0,473,NULL,NULL,NULL,NULL,NULL,50),(317,'jimmy davenport','f',1,0,474,NULL,NULL,NULL,NULL,NULL,72),(318,'katherine brooks','f',8,1,475,NULL,NULL,NULL,NULL,55,NULL),(319,'ivy peterson','f',9,0,476,NULL,NULL,NULL,NULL,NULL,41),(320,'ariah bowman','f',9,0,477,NULL,NULL,NULL,NULL,NULL,46),(321,'jamie proctor','m',8,0,478,NULL,NULL,NULL,NULL,NULL,48),(322,'ricardo kim','f',1,0,479,NULL,NULL,NULL,98,NULL,NULL),(323,'alaia robertson','f',1,1,480,NULL,NULL,NULL,99,56,NULL),(324,'jaxtyn sanders','f',1,0,481,NULL,NULL,NULL,100,NULL,NULL),(325,'kaydence wiley','m',1,0,482,NULL,NULL,NULL,101,NULL,NULL),(326,'axel ahmed','f',1,1,483,NULL,NULL,NULL,102,199,NULL),(327,'dane truong','m',1,0,484,NULL,NULL,NULL,103,NULL,NULL),(328,'vivienne rosas','f',1,0,485,NULL,NULL,NULL,104,NULL,NULL),(329,'alayah rivera','f',1,0,486,NULL,NULL,NULL,105,NULL,NULL),(330,'armani ross','f',1,1,487,NULL,NULL,NULL,106,166,NULL),(331,'yusuf carroll','m',1,0,488,NULL,NULL,NULL,107,NULL,NULL),(332,'aarav carlson','f',1,0,489,NULL,NULL,NULL,108,NULL,NULL),(333,'simon gillespie','m',1,0,490,NULL,NULL,NULL,109,NULL,NULL),(334,'morgan todd','f',1,0,491,NULL,NULL,NULL,110,NULL,NULL),(335,'marie correa','m',1,0,492,NULL,NULL,NULL,111,NULL,NULL),(336,'riley rowe','f',1,0,493,NULL,NULL,NULL,112,NULL,NULL),(337,'sabrina beasley','m',1,0,494,NULL,NULL,NULL,113,NULL,NULL),(338,'rivka combs','f',1,0,495,NULL,NULL,NULL,114,NULL,NULL),(339,'kaylie o’connor','m',1,1,496,NULL,NULL,NULL,115,85,NULL),(340,'cillian woodward','m',1,0,497,NULL,NULL,NULL,116,NULL,NULL),(341,'journi blackwell','f',1,0,498,NULL,NULL,NULL,117,NULL,NULL),(342,'avi roth','m',9,0,499,NULL,NULL,NULL,NULL,NULL,61),(343,'jaylin massey','m',1,0,500,NULL,NULL,NULL,NULL,NULL,16),(344,'dax pittman','f',1,0,501,NULL,NULL,NULL,NULL,NULL,8),(345,'mohamed cantrell','f',3,0,502,NULL,NULL,NULL,NULL,NULL,4),(346,'braelynn ramirez','f',1,0,503,NULL,NULL,NULL,NULL,NULL,46),(347,'ainsley davenport','f',2,0,504,NULL,NULL,NULL,NULL,NULL,13),(348,'wyatt richards','f',10,1,505,NULL,NULL,NULL,NULL,59,NULL),(349,'george mccann','m',2,1,506,NULL,NULL,NULL,NULL,125,NULL),(350,'connor barton','m',1,0,507,NULL,NULL,NULL,NULL,NULL,10),(351,'lochlan mayo','f',9,0,508,NULL,NULL,NULL,NULL,NULL,75),(352,'mack stevens','f',10,0,509,NULL,NULL,NULL,NULL,NULL,49),(353,'desmond rush','f',2,1,510,NULL,NULL,NULL,NULL,245,NULL),(354,'adam buchanan','m',5,0,511,NULL,NULL,NULL,NULL,NULL,66),(355,'hassan romero','m',1,0,512,NULL,NULL,NULL,NULL,NULL,15),(356,'knox mccullough','f',2,0,513,NULL,NULL,NULL,NULL,NULL,69),(357,'milana marquez','m',4,0,514,NULL,NULL,NULL,NULL,NULL,49),(358,'jocelyn bishop','m',6,0,515,NULL,NULL,NULL,NULL,NULL,51),(359,'nadia robinson','m',10,0,516,NULL,NULL,NULL,NULL,NULL,9),(360,'kinslee stein','f',10,0,517,NULL,NULL,NULL,NULL,NULL,40),(361,'veronica davidson','f',9,1,518,NULL,NULL,NULL,NULL,58,NULL),(362,'israel stuart','m',3,0,519,NULL,NULL,NULL,NULL,NULL,44),(363,'casen bowen','f',9,0,520,NULL,NULL,NULL,NULL,NULL,41),(364,'robin cox','m',1,1,521,NULL,NULL,NULL,NULL,61,NULL),(365,'maliyah fuentes','f',3,0,522,NULL,NULL,NULL,NULL,NULL,46),(366,'aries chase','f',10,0,523,NULL,NULL,NULL,NULL,NULL,71),(367,'lilianna zamora','m',8,0,524,NULL,NULL,NULL,NULL,NULL,27),(368,'marley peterson','m',6,1,525,NULL,NULL,NULL,NULL,63,NULL),(369,'zander frank','f',4,0,526,NULL,NULL,NULL,NULL,NULL,49),(370,'alex stein','m',7,0,527,NULL,NULL,NULL,NULL,NULL,21),(371,'eleanor burgess','m',3,0,528,NULL,NULL,NULL,NULL,NULL,15),(372,'natasha salas','m',1,0,529,NULL,NULL,NULL,NULL,NULL,13),(373,'tyson parrish','m',1,0,530,NULL,NULL,NULL,NULL,NULL,50),(374,'frankie edwards','m',8,1,531,NULL,NULL,NULL,NULL,50,NULL),(375,'ariya green','m',9,0,532,NULL,NULL,NULL,NULL,NULL,21),(376,'aron hood','m',3,0,533,NULL,NULL,NULL,NULL,NULL,64),(377,'annalise williamson','m',2,0,534,NULL,NULL,NULL,NULL,NULL,74),(378,'shepard schroeder','m',8,1,535,NULL,NULL,NULL,NULL,91,NULL),(379,'damon pope','m',2,0,536,NULL,NULL,NULL,NULL,NULL,6),(380,'kenna case','m',4,0,537,NULL,NULL,NULL,NULL,NULL,44),(381,'malachi lozano','m',7,0,538,NULL,NULL,NULL,NULL,NULL,64),(382,'korbin ray','m',1,1,539,NULL,NULL,NULL,NULL,250,NULL),(383,'russell hull','f',1,0,540,NULL,NULL,NULL,118,NULL,NULL),(384,'kensley mitchell','f',1,0,541,NULL,NULL,NULL,119,NULL,NULL),(385,'ana hernandez','m',1,0,542,NULL,NULL,NULL,120,NULL,NULL),(386,'kaleb elliott','f',1,0,543,NULL,NULL,NULL,121,NULL,NULL),(387,'blaine villalobos','m',1,0,544,NULL,NULL,NULL,122,NULL,NULL),(388,'ruben solis','f',1,0,545,NULL,NULL,NULL,123,NULL,NULL),(389,'ayden robertson','m',1,0,546,NULL,NULL,NULL,124,NULL,NULL),(390,'alaiya watkins','f',1,0,547,NULL,NULL,NULL,125,NULL,NULL),(391,'palmer wong','f',1,0,548,NULL,NULL,NULL,126,NULL,NULL),(392,'kaiden beasley','f',1,1,549,NULL,NULL,NULL,127,201,NULL),(393,'muhammad crosby','m',1,0,550,NULL,NULL,NULL,128,NULL,NULL),(394,'ahmed page','f',1,0,551,NULL,NULL,NULL,129,NULL,NULL),(395,'zelda beasley','f',1,0,552,NULL,NULL,NULL,130,NULL,NULL),(396,'reese hicks','m',1,1,553,NULL,NULL,NULL,131,169,NULL),(397,'sariyah collins','f',1,0,554,NULL,NULL,NULL,132,NULL,NULL),(398,'edward barr','m',1,0,555,NULL,NULL,NULL,133,NULL,NULL),(399,'nolan stark','f',1,0,556,NULL,NULL,NULL,134,NULL,NULL),(400,'leia ball','f',1,1,557,NULL,NULL,NULL,135,62,NULL),(401,'dorothy horne','f',1,0,558,NULL,NULL,NULL,136,NULL,NULL),(402,'dani hunt','m',1,0,559,NULL,NULL,NULL,137,NULL,NULL),(403,'jovie orozco','f',1,0,560,NULL,NULL,NULL,138,NULL,NULL),(404,'malakai wise','f',1,0,561,NULL,NULL,NULL,139,NULL,NULL),(405,'jose noble','m',8,0,562,NULL,NULL,NULL,NULL,NULL,40),(406,'ismael spence','m',3,0,563,NULL,NULL,NULL,NULL,NULL,62),(407,'ainhoa peterson','f',6,1,564,NULL,NULL,NULL,NULL,244,NULL),(408,'novah juarez','m',6,1,565,NULL,NULL,NULL,NULL,68,NULL),(409,'london cameron','m',2,0,566,NULL,NULL,NULL,NULL,NULL,60),(410,'nelson delacruz','f',4,0,567,NULL,NULL,NULL,NULL,NULL,64),(411,'casey wood','f',2,0,568,NULL,NULL,NULL,NULL,NULL,62),(412,'weston wade','m',9,1,569,NULL,NULL,NULL,NULL,161,NULL),(413,'aubrey farmer','f',7,1,570,NULL,NULL,NULL,NULL,93,NULL),(414,'novalee sanders','f',3,1,571,NULL,NULL,NULL,NULL,126,NULL),(415,'tyson reilly','m',9,0,572,NULL,NULL,NULL,NULL,NULL,9),(416,'amayah richard','m',5,0,573,NULL,NULL,NULL,NULL,NULL,62),(417,'marley cherry','f',8,0,574,NULL,NULL,NULL,NULL,NULL,6),(418,'fiona hanna','m',9,0,575,NULL,NULL,NULL,NULL,NULL,13),(419,'aubrie bernal','f',6,0,576,NULL,NULL,NULL,NULL,NULL,6),(420,'jayce robles','m',6,1,577,NULL,NULL,NULL,NULL,134,NULL),(421,'noel sellers','m',2,0,578,NULL,NULL,NULL,NULL,NULL,13),(422,'oaklee kelley','m',4,0,579,NULL,NULL,NULL,NULL,NULL,13),(423,'desmond horn','m',9,0,580,NULL,NULL,NULL,NULL,NULL,13),(424,'cullen herman','f',6,1,581,NULL,NULL,NULL,NULL,170,NULL),(425,'taylor ibarra','f',9,1,582,NULL,NULL,NULL,NULL,254,NULL),(426,'chandler miles','f',10,1,583,NULL,NULL,NULL,NULL,83,NULL),(427,'desmond roach','m',6,1,584,NULL,NULL,NULL,NULL,69,NULL),(428,'remi mckenzie','f',3,1,585,NULL,NULL,NULL,NULL,76,NULL),(429,'deandre lim','f',1,1,586,NULL,NULL,NULL,NULL,116,NULL),(430,'oaklyn russell','f',10,1,587,NULL,NULL,NULL,NULL,70,NULL),(431,'sunny paul','m',10,1,588,NULL,NULL,NULL,NULL,194,NULL),(432,'harlan marshall','f',1,1,589,NULL,NULL,NULL,NULL,71,NULL),(433,'zahir walton','m',8,1,590,NULL,NULL,NULL,NULL,82,NULL),(434,'aden mcmillan','f',2,1,591,NULL,NULL,NULL,NULL,72,NULL),(435,'victor olsen','f',2,1,592,NULL,NULL,NULL,NULL,78,NULL),(436,'lydia franklin','f',8,1,593,NULL,NULL,NULL,NULL,95,NULL),(437,'meadow chambers','m',3,1,594,NULL,NULL,NULL,NULL,286,NULL),(438,'stefan harding','m',5,1,595,NULL,NULL,NULL,NULL,135,NULL),(439,'aila wilkerson','f',4,1,596,NULL,NULL,NULL,NULL,80,NULL),(440,'leanna medrano','m',5,1,597,NULL,NULL,NULL,NULL,96,NULL),(441,'cairo price','f',7,1,598,NULL,NULL,NULL,NULL,73,NULL),(442,'kalani porter','m',4,1,599,NULL,NULL,NULL,NULL,79,NULL),(443,'jaylee morales','m',4,1,600,NULL,NULL,NULL,NULL,74,NULL),(444,'cedric beil','f',1,1,601,NULL,NULL,NULL,NULL,77,NULL),(445,'milani rogers','m',2,1,602,NULL,NULL,NULL,NULL,75,NULL),(446,'nicholas david','m',6,1,603,NULL,NULL,NULL,NULL,171,NULL),(447,'wyatt lamb','f',9,1,604,NULL,NULL,NULL,NULL,81,NULL),(448,'axl leal','f',1,0,605,NULL,NULL,NULL,140,NULL,NULL),(449,'melvin ball','m',1,0,606,NULL,NULL,NULL,141,NULL,NULL),(450,'duncan garner','m',1,0,607,NULL,NULL,NULL,142,NULL,NULL),(451,'connor paul','f',1,0,608,NULL,NULL,NULL,143,NULL,NULL),(452,'shane cherry','m',1,0,609,NULL,NULL,NULL,144,NULL,NULL),(453,'jaxen clay','m',1,0,610,NULL,NULL,NULL,145,NULL,NULL),(454,'sawyer mayer','m',1,0,611,NULL,NULL,NULL,146,NULL,NULL),(455,'jolene winters','f',1,0,612,NULL,NULL,NULL,147,NULL,NULL),(456,'annika odom','f',1,0,613,NULL,NULL,NULL,148,NULL,NULL),(457,'artemis joseph','f',1,0,614,NULL,NULL,NULL,149,NULL,NULL),(458,'callen estes','m',1,0,615,NULL,NULL,NULL,150,NULL,NULL),(459,'alaia daniel','f',1,0,616,NULL,NULL,NULL,151,NULL,NULL),(460,'jacqueline allen','f',1,0,617,NULL,NULL,NULL,152,NULL,NULL),(461,'kody fuller','m',1,0,618,NULL,NULL,NULL,153,NULL,NULL),(462,'sloan lugo','m',1,0,619,NULL,NULL,NULL,154,NULL,NULL),(463,'anakin schneider','f',1,0,620,NULL,NULL,NULL,155,NULL,NULL),(464,'sonny lim','m',1,1,621,NULL,NULL,NULL,156,89,NULL),(465,'emmanuel mccann','f',1,0,622,NULL,NULL,NULL,157,NULL,NULL),(466,'josiah larson','f',1,0,623,NULL,NULL,NULL,158,NULL,NULL),(467,'abdullah beil','m',1,0,624,NULL,NULL,NULL,159,NULL,NULL),(468,'lana raymond','m',1,0,625,NULL,NULL,NULL,160,NULL,NULL),(469,'evan ho','f',1,0,626,NULL,NULL,NULL,161,NULL,NULL),(470,'ivanna robertson','f',1,0,627,NULL,NULL,NULL,162,NULL,NULL),(471,'cadence marsh','f',1,0,628,NULL,NULL,NULL,163,NULL,NULL),(472,'andi sharp','m',1,0,629,NULL,NULL,NULL,164,NULL,NULL),(473,'winnie atkins','m',1,1,630,NULL,NULL,NULL,165,240,NULL),(474,'ronin sanders','f',1,1,631,NULL,NULL,NULL,166,159,NULL),(475,'diego clarke','f',1,0,632,NULL,NULL,NULL,167,NULL,NULL),(476,'khari ramos','m',1,0,633,NULL,NULL,NULL,168,NULL,NULL),(477,'jane wood','m',10,1,634,NULL,NULL,NULL,NULL,136,NULL),(478,'brady leonard','m',1,1,635,NULL,NULL,NULL,NULL,232,NULL),(479,'edison proctor','f',10,1,636,NULL,NULL,NULL,NULL,195,NULL),(480,'makenzie griffith','f',4,1,637,NULL,NULL,NULL,NULL,108,NULL),(481,'gustavo wilkinson','m',8,1,638,NULL,NULL,NULL,NULL,137,NULL),(482,'artemis harvey','f',4,1,639,NULL,NULL,NULL,NULL,109,NULL),(483,'dallas espinosa','f',10,1,640,NULL,NULL,NULL,NULL,154,NULL),(484,'novah hood','f',1,1,641,NULL,NULL,NULL,NULL,172,NULL),(485,'colby small','m',9,1,642,NULL,NULL,NULL,NULL,97,NULL),(486,'ari orr','m',4,1,643,NULL,NULL,NULL,NULL,138,NULL),(487,'faith valenzuela','f',2,1,644,NULL,NULL,NULL,NULL,98,NULL),(488,'armani cortez','m',6,1,645,NULL,NULL,NULL,NULL,110,NULL),(489,'kareem blackwell','m',2,1,646,NULL,NULL,NULL,NULL,99,NULL),(490,'graham castro','f',8,1,647,NULL,NULL,NULL,NULL,118,NULL),(491,'baylor fernandez','m',2,1,648,NULL,NULL,NULL,NULL,188,NULL),(492,'john brady','f',2,1,649,NULL,NULL,NULL,NULL,87,NULL),(493,'giavanna davila','m',8,1,650,NULL,NULL,NULL,NULL,111,NULL),(494,'harley cunningham','m',10,1,651,NULL,NULL,NULL,NULL,112,NULL),(495,'kobe hoffman','f',1,1,652,NULL,NULL,NULL,NULL,139,NULL),(496,'castiel figueroa','f',6,1,653,NULL,NULL,NULL,NULL,115,NULL),(497,'catalina medina','m',4,1,654,NULL,NULL,NULL,NULL,100,NULL),(498,'june rich','f',10,1,655,NULL,NULL,NULL,NULL,173,NULL),(499,'mina hendricks','f',8,1,656,NULL,NULL,NULL,NULL,117,NULL),(500,'royal cabrera','f',10,1,657,NULL,NULL,NULL,NULL,140,NULL),(501,'gracelyn hampton','f',8,1,658,NULL,NULL,NULL,NULL,279,NULL),(502,'eric massey','m',10,1,659,NULL,NULL,NULL,NULL,101,NULL),(503,'emery doyle','f',2,1,660,NULL,NULL,NULL,NULL,107,NULL),(504,'nova kaur','f',7,1,661,NULL,NULL,NULL,NULL,102,NULL),(505,'adalyn mckee','f',4,1,662,NULL,NULL,NULL,NULL,106,NULL),(506,'julia proctor','f',4,1,663,NULL,NULL,NULL,NULL,113,NULL),(507,'holden adkins','f',7,1,664,NULL,NULL,NULL,NULL,114,NULL),(508,'amoura white','f',1,1,665,NULL,NULL,NULL,NULL,103,NULL),(509,'tomas jefferson','m',6,1,666,NULL,NULL,NULL,NULL,174,NULL),(510,'ezra koch','m',6,1,667,NULL,NULL,NULL,NULL,104,NULL),(511,'skyler norris','f',1,1,668,NULL,NULL,NULL,NULL,119,NULL),(512,'eithan wood','f',8,1,669,NULL,NULL,NULL,NULL,105,NULL),(513,'marceline contreras','m',1,0,670,NULL,NULL,NULL,169,NULL,NULL),(514,'reece griffin','m',1,1,671,NULL,NULL,NULL,170,130,NULL),(515,'amaris rose','m',1,0,672,NULL,NULL,NULL,171,NULL,NULL),(516,'joel stephens','m',1,0,673,NULL,NULL,NULL,172,NULL,NULL),(517,'yamileth harmon','m',1,0,674,NULL,NULL,NULL,173,NULL,NULL),(518,'brynn malone','f',1,0,675,NULL,NULL,NULL,174,NULL,NULL),(519,'anahi herman','f',1,1,676,NULL,NULL,NULL,175,163,NULL),(520,'delilah zamora','m',1,0,677,NULL,NULL,NULL,176,NULL,NULL),(521,'ensley chang','f',1,0,678,NULL,NULL,NULL,177,NULL,NULL),(522,'gunnar padilla','f',1,0,679,NULL,NULL,NULL,178,NULL,NULL),(523,'kendra rangel','f',1,0,680,NULL,NULL,NULL,64,NULL,NULL),(524,'halo stephens','m',1,0,681,NULL,NULL,NULL,179,NULL,NULL),(525,'bryce lambert','m',1,0,682,NULL,NULL,NULL,180,NULL,NULL),(526,'harmony wilkerson','f',1,0,683,NULL,NULL,NULL,181,NULL,NULL),(527,'jesus ochoa','m',1,0,684,NULL,NULL,NULL,182,NULL,NULL),(528,'jeremy padilla','f',1,0,685,NULL,NULL,NULL,183,NULL,NULL),(529,'mariana strickland','f',1,0,686,NULL,NULL,NULL,184,NULL,NULL),(530,'rosalia winters','m',1,1,687,NULL,NULL,NULL,185,164,NULL),(531,'mckenzie vasquez','m',1,0,688,NULL,NULL,NULL,186,NULL,NULL),(532,'rory trujillo','m',1,1,689,NULL,NULL,NULL,187,132,NULL),(533,'eliana curtis','f',1,0,690,NULL,NULL,NULL,188,NULL,NULL),(534,'gabriel ortega','f',1,0,691,NULL,NULL,NULL,189,NULL,NULL),(535,'vihaan murray','f',1,0,692,NULL,NULL,NULL,190,NULL,NULL),(536,'aubrey nielsen','m',1,0,693,NULL,NULL,NULL,191,NULL,NULL),(537,'harold stone','f',1,1,694,NULL,NULL,NULL,192,243,NULL),(538,'isla mayo','f',1,0,695,NULL,NULL,NULL,193,NULL,NULL),(539,'isla pugh','m',1,0,696,NULL,NULL,NULL,194,NULL,NULL),(540,'mariam gilbert','m',5,1,697,NULL,NULL,NULL,NULL,141,NULL),(541,'holden woodward','f',3,1,698,NULL,NULL,NULL,NULL,155,NULL),(542,'brayan ventura','m',2,1,699,NULL,NULL,NULL,NULL,156,NULL),(543,'angelina moon','f',8,1,700,NULL,NULL,NULL,NULL,142,NULL),(544,'josie pearson','m',2,1,701,NULL,NULL,NULL,NULL,151,NULL),(545,'evelyn pineda','f',1,1,702,NULL,NULL,NULL,NULL,255,NULL),(546,'jericho delgado','m',8,1,703,NULL,NULL,NULL,NULL,129,NULL),(547,'atlas collins','f',5,1,704,NULL,NULL,NULL,NULL,149,NULL),(548,'melani raymond','m',2,1,705,NULL,NULL,NULL,NULL,143,NULL),(549,'sydney houston','m',1,1,706,NULL,NULL,NULL,NULL,175,NULL),(550,'salem lu','f',7,1,707,NULL,NULL,NULL,NULL,120,NULL),(551,'jovanni mcintosh','m',10,1,708,NULL,NULL,NULL,NULL,210,NULL),(552,'keanu nash','m',1,1,709,NULL,NULL,NULL,NULL,176,NULL),(553,'braxton benjamin','f',9,1,710,NULL,NULL,NULL,NULL,281,NULL),(554,'adelynn richards','f',2,1,711,NULL,NULL,NULL,NULL,153,NULL),(555,'ibrahim adams','m',8,1,712,NULL,NULL,NULL,NULL,144,NULL),(556,'finley bonilla','m',10,1,713,NULL,NULL,NULL,NULL,211,NULL),(557,'hudson fuentes','m',8,1,714,NULL,NULL,NULL,NULL,145,NULL),(558,'alianna hanson','m',5,1,715,NULL,NULL,NULL,NULL,122,NULL),(559,'dior jaramillo','m',1,1,716,NULL,NULL,NULL,NULL,150,NULL),(560,'ariel frost','f',7,1,717,NULL,NULL,NULL,NULL,177,NULL),(561,'caroline ventura','m',8,1,718,NULL,NULL,NULL,NULL,146,NULL),(562,'hayley dudley','f',2,1,719,NULL,NULL,NULL,NULL,284,NULL),(563,'camila macdonald','m',5,1,720,NULL,NULL,NULL,NULL,178,NULL),(564,'cash hahn','f',2,1,721,NULL,NULL,NULL,NULL,147,NULL),(565,'bailey rios','f',9,1,722,NULL,NULL,NULL,NULL,239,NULL),(566,'wells conley','f',10,1,723,NULL,NULL,NULL,NULL,157,NULL),(567,'kalel montgomery','m',10,1,724,NULL,NULL,NULL,NULL,187,NULL),(568,'quentin walters','f',3,1,725,NULL,NULL,NULL,NULL,287,NULL),(569,'judson morris','f',3,1,726,NULL,NULL,NULL,NULL,123,NULL),(570,'mac haynes','m',1,1,727,NULL,NULL,NULL,NULL,152,NULL),(571,'jaxson graham','m',10,1,728,NULL,NULL,NULL,NULL,148,NULL),(572,'braylon kelly','f',6,1,729,NULL,NULL,NULL,NULL,236,NULL),(573,'hank cordova','f',1,0,730,NULL,NULL,NULL,195,NULL,NULL),(574,'tyler bradford','f',1,0,731,NULL,NULL,NULL,196,NULL,NULL),(575,'colton hendricks','f',1,0,732,NULL,NULL,NULL,197,NULL,NULL),(576,'brylee nielsen','f',1,0,733,NULL,NULL,NULL,198,NULL,NULL),(577,'royalty diaz','f',1,0,734,NULL,NULL,NULL,199,NULL,NULL),(578,'renata ray','f',1,0,735,NULL,NULL,NULL,200,NULL,NULL),(579,'stevie meza','m',1,0,736,NULL,NULL,NULL,201,NULL,NULL),(580,'justin rhodes','m',1,0,737,NULL,NULL,NULL,202,NULL,NULL),(581,'demi ellis','m',1,0,738,NULL,NULL,NULL,203,NULL,NULL),(582,'malani berry','m',1,0,739,NULL,NULL,NULL,204,NULL,NULL),(583,'anna mccormick','f',1,0,740,NULL,NULL,NULL,205,NULL,NULL),(584,'gerardo beltran','f',1,0,741,NULL,NULL,NULL,206,NULL,NULL),(585,'edward haynes','m',1,0,742,NULL,NULL,NULL,207,NULL,NULL),(586,'casey dominguez','m',1,0,743,NULL,NULL,NULL,208,NULL,NULL),(587,'brody butler','f',1,0,744,NULL,NULL,NULL,209,NULL,NULL),(588,'bentlee armstrong','m',1,0,745,NULL,NULL,NULL,210,NULL,NULL),(589,'houston macias','m',1,0,746,NULL,NULL,NULL,211,NULL,NULL),(590,'harmony snow','f',1,0,747,NULL,NULL,NULL,212,NULL,NULL),(591,'hallie murillo','m',1,0,748,NULL,NULL,NULL,213,NULL,NULL),(592,'mylah mckee','f',1,0,749,NULL,NULL,NULL,214,NULL,NULL),(593,'sincere dickerson','m',1,0,750,NULL,NULL,NULL,215,NULL,NULL),(594,'romeo hamilton','m',1,0,751,NULL,NULL,NULL,216,NULL,NULL),(595,'trenton huber','f',1,0,752,NULL,NULL,NULL,217,NULL,NULL),(596,'duncan delarosa','m',1,0,753,NULL,NULL,NULL,218,NULL,NULL),(597,'oakley vincent','f',1,0,754,NULL,NULL,NULL,154,NULL,NULL),(598,'knox beck','f',1,0,755,NULL,NULL,NULL,219,NULL,NULL),(599,'lexi malone','m',1,0,756,NULL,NULL,NULL,220,NULL,NULL),(600,'brynleigh walter','f',1,0,757,NULL,NULL,NULL,221,NULL,NULL),(601,'natalia aguirre','f',1,0,758,NULL,NULL,NULL,222,NULL,NULL),(602,'brianna lester','f',1,0,759,NULL,NULL,NULL,223,NULL,NULL),(603,'hattie goodwin','m',1,0,760,NULL,NULL,NULL,224,NULL,NULL),(604,'vance graves','m',2,1,761,NULL,NULL,NULL,NULL,212,NULL),(605,'macie ware','f',8,1,762,NULL,NULL,NULL,NULL,208,NULL),(606,'sutton stone','m',5,1,763,NULL,NULL,NULL,NULL,189,NULL),(607,'bode mayer','f',1,1,764,NULL,NULL,NULL,NULL,179,NULL),(608,'payton bonilla','f',9,1,765,NULL,NULL,NULL,NULL,238,NULL),(609,'jemma poole','m',9,1,766,NULL,NULL,NULL,NULL,196,NULL),(610,'rylan meyers','m',5,1,767,NULL,NULL,NULL,NULL,213,NULL),(611,'preston finley','m',7,1,768,NULL,NULL,NULL,NULL,190,NULL),(612,'maeve archer','m',10,1,769,NULL,NULL,NULL,NULL,180,NULL),(613,'briggs houston','m',9,1,770,NULL,NULL,NULL,NULL,278,NULL),(614,'lincoln franklin','m',10,1,771,NULL,NULL,NULL,NULL,181,NULL),(615,'fernando montoya','f',4,1,772,NULL,NULL,NULL,NULL,288,NULL),(616,'mira bowen','f',10,1,773,NULL,NULL,NULL,NULL,197,NULL),(617,'rebecca terrell','m',1,1,774,NULL,NULL,NULL,NULL,214,NULL),(618,'aliyah chang','f',3,1,775,NULL,NULL,NULL,NULL,182,NULL),(619,'ella mack','f',7,1,776,NULL,NULL,NULL,NULL,204,NULL),(620,'marianna york','m',3,1,777,NULL,NULL,NULL,NULL,246,NULL),(621,'viviana ochoa','m',1,1,778,NULL,NULL,NULL,NULL,192,NULL),(622,'veda barker','m',8,1,779,NULL,NULL,NULL,NULL,256,NULL),(623,'elijah day','f',8,0,780,NULL,NULL,NULL,NULL,NULL,2),(624,'jordan brown','f',2,1,781,NULL,NULL,NULL,NULL,257,NULL),(625,'gunner blevins','m',8,0,782,NULL,NULL,NULL,NULL,NULL,2),(626,'harvey hancock','f',9,1,783,NULL,NULL,NULL,NULL,183,NULL),(627,'muhammad rangel','f',7,1,784,NULL,NULL,NULL,NULL,258,NULL),(628,'brody mccoy','f',1,1,785,NULL,NULL,NULL,NULL,184,NULL),(629,'deandre solomon','f',10,1,786,NULL,NULL,NULL,NULL,215,NULL),(630,'kinsley barber','f',4,1,787,NULL,NULL,NULL,NULL,198,NULL),(631,'colin ayers','f',2,1,788,NULL,NULL,NULL,NULL,193,NULL),(632,'kalani arroyo','f',8,1,789,NULL,NULL,NULL,NULL,233,NULL),(633,'savannah ortega','m',2,0,790,NULL,NULL,NULL,NULL,NULL,2),(634,'presley washington','m',8,1,791,NULL,NULL,NULL,NULL,185,NULL),(635,'simon hardin','f',2,1,792,NULL,NULL,NULL,NULL,216,NULL),(636,'khalil mckenzie','f',7,1,793,NULL,NULL,NULL,NULL,191,NULL),(637,'mikaela curtis','m',9,1,794,NULL,NULL,NULL,NULL,186,NULL),(638,'juelz soto','f',7,1,795,NULL,NULL,NULL,NULL,259,NULL),(639,'adler vance','f',1,0,796,NULL,NULL,NULL,225,NULL,NULL),(640,'dustin gentry','m',1,0,797,NULL,NULL,NULL,226,NULL,NULL),(641,'bradley nash','f',1,1,798,NULL,NULL,NULL,227,207,NULL),(642,'avianna marin','m',1,0,799,NULL,NULL,NULL,228,NULL,NULL),(643,'hayden salazar','m',1,0,800,NULL,NULL,NULL,229,NULL,NULL),(644,'landry terrell','f',1,0,801,NULL,NULL,NULL,230,NULL,NULL),(645,'alicia pratt','m',1,0,802,NULL,NULL,NULL,231,NULL,NULL),(646,'charlotte esparza','f',1,0,803,NULL,NULL,NULL,232,NULL,NULL),(647,'emani ramirez','f',1,0,804,NULL,NULL,NULL,233,NULL,NULL),(648,'rhett underwood','f',1,0,805,NULL,NULL,NULL,234,NULL,NULL),(649,'zachariah vaughan','m',1,0,806,NULL,NULL,NULL,235,NULL,NULL),(650,'amelie underwood','f',1,0,807,NULL,NULL,NULL,236,NULL,NULL),(651,'ryleigh colon','f',1,0,808,NULL,NULL,NULL,237,NULL,NULL),(652,'aleah correa','m',1,0,809,NULL,NULL,NULL,238,NULL,NULL),(653,'zander robertson','f',1,0,810,NULL,NULL,NULL,239,NULL,NULL),(654,'jenna finley','m',1,0,811,NULL,NULL,NULL,240,NULL,NULL),(655,'katherine lang','m',1,0,812,NULL,NULL,NULL,241,NULL,NULL),(656,'vihaan love','f',1,0,813,NULL,NULL,NULL,242,NULL,NULL),(657,'daxton gillespie','f',1,0,814,NULL,NULL,NULL,243,NULL,NULL),(658,'annie malone','f',1,0,815,NULL,NULL,NULL,244,NULL,NULL),(659,'malaysia white','m',1,0,816,NULL,NULL,NULL,245,NULL,NULL),(660,'abram cunningham','f',1,0,817,NULL,NULL,NULL,246,NULL,NULL),(661,'jaylen drake','f',1,0,818,NULL,NULL,NULL,247,NULL,NULL),(662,'elijah preston','f',1,0,819,NULL,NULL,NULL,248,NULL,NULL),(663,'bode kelly','f',1,0,820,NULL,NULL,NULL,249,NULL,NULL),(664,'cristian underwood','f',1,0,821,NULL,NULL,NULL,250,NULL,NULL),(665,'jolie fuentes','f',1,0,822,NULL,NULL,NULL,251,NULL,NULL),(666,'zayn cuevas','m',1,0,823,NULL,NULL,NULL,252,NULL,NULL),(667,'kaysen miranda','m',1,0,824,NULL,NULL,NULL,253,NULL,NULL),(668,'audrey leonard','m',6,1,825,NULL,NULL,NULL,NULL,209,NULL),(669,'bridget mills','m',8,1,826,NULL,NULL,NULL,NULL,217,NULL),(670,'lexi burton','f',4,0,827,NULL,NULL,NULL,NULL,NULL,2),(671,'ali higgins','m',4,1,828,NULL,NULL,NULL,NULL,231,NULL),(672,'paxton chen','m',7,1,829,NULL,NULL,NULL,NULL,237,NULL),(673,'brett gaines','m',3,1,830,NULL,NULL,NULL,NULL,218,NULL),(674,'alianna norris','f',6,1,831,NULL,NULL,NULL,NULL,252,NULL),(675,'stevie cummings','m',1,0,832,NULL,NULL,NULL,NULL,NULL,2),(676,'joanna gutierrez','f',10,1,833,NULL,NULL,NULL,NULL,283,NULL),(677,'luca bean','m',6,1,834,NULL,NULL,NULL,NULL,219,NULL),(678,'hayden vasquez','m',5,1,835,NULL,NULL,NULL,NULL,234,NULL),(679,'donald charles','f',4,1,836,NULL,NULL,NULL,NULL,235,NULL),(680,'moshe maxwell','f',5,1,837,NULL,NULL,NULL,NULL,220,NULL),(681,'natalia dyer','f',7,0,838,NULL,NULL,NULL,NULL,NULL,2),(682,'grady daugherty','m',10,1,839,NULL,NULL,NULL,NULL,221,NULL),(683,'alayna whitaker','m',4,1,840,NULL,NULL,NULL,NULL,282,NULL),(684,'ramon ortega','f',6,1,841,NULL,NULL,NULL,NULL,249,NULL),(685,'franklin harper','m',9,1,842,NULL,NULL,NULL,NULL,285,NULL),(686,'elle knight','m',9,1,843,NULL,NULL,NULL,NULL,222,NULL),(687,'aaron nash','f',6,1,844,NULL,NULL,NULL,NULL,280,NULL),(688,'zander daniel','m',8,1,845,NULL,NULL,NULL,NULL,260,NULL),(689,'catherine dawson','f',8,0,846,NULL,NULL,NULL,NULL,NULL,2),(690,'nalani clayton','m',3,0,847,NULL,NULL,NULL,NULL,NULL,2),(691,'lauren jordan','f',7,1,848,NULL,NULL,NULL,NULL,223,NULL),(692,'cullen gillespie','f',2,1,849,NULL,NULL,NULL,NULL,261,NULL),(693,'odin baker','m',1,0,850,NULL,NULL,NULL,NULL,NULL,2),(694,'mccoy underwood','m',6,0,851,NULL,NULL,NULL,NULL,NULL,2),(695,'dahlia mclaughlin','f',5,1,852,NULL,NULL,NULL,NULL,230,NULL),(696,'piper pope','m',5,1,853,NULL,NULL,NULL,NULL,224,NULL),(697,'aniyah weeks','m',3,1,854,NULL,NULL,NULL,NULL,229,NULL),(698,'christina hoffman','f',5,1,855,NULL,NULL,NULL,NULL,225,NULL),(699,'kalani patel','m',8,1,856,NULL,NULL,NULL,NULL,262,NULL),(700,'bryce parks','f',9,0,857,NULL,NULL,NULL,NULL,NULL,2),(701,'andres stevenson','f',4,1,858,NULL,NULL,NULL,NULL,226,NULL),(702,'valery mcclure','f',2,0,859,NULL,NULL,NULL,NULL,NULL,2),(703,'phillip brandt','f',6,1,860,NULL,NULL,NULL,NULL,227,NULL),(704,'huxley mckenzie','m',1,1,861,NULL,NULL,NULL,NULL,263,NULL),(705,'melody fowler','f',8,1,862,NULL,NULL,NULL,NULL,228,NULL),(706,'felipe cabrera','m',10,0,863,NULL,NULL,NULL,NULL,NULL,2),(707,'rowan baldwin','m',5,1,864,NULL,NULL,NULL,NULL,264,NULL),(708,'elise hunt','m',1,0,865,NULL,NULL,NULL,254,NULL,NULL),(709,'grayson arnold','f',1,0,866,NULL,NULL,NULL,255,NULL,NULL),(710,'corey nixon','m',1,0,867,NULL,NULL,NULL,256,NULL,NULL),(711,'aldo stevenson','f',1,0,868,NULL,NULL,NULL,257,NULL,NULL),(712,'dustin sierra','m',1,0,869,NULL,NULL,NULL,258,NULL,NULL),(713,'evelynn zimmerman','m',1,0,870,NULL,NULL,NULL,259,NULL,NULL),(714,'stanley noble','m',1,0,871,NULL,NULL,NULL,260,NULL,NULL),(715,'alana weber','m',1,0,872,NULL,NULL,NULL,261,NULL,NULL),(716,'milan chavez','f',1,0,873,NULL,NULL,NULL,262,NULL,NULL),(717,'stetson hernandez','m',1,0,874,NULL,NULL,NULL,263,NULL,NULL),(718,'maurice sparks','f',1,0,875,NULL,NULL,NULL,264,NULL,NULL),(719,'mccoy yang','m',1,0,876,NULL,NULL,NULL,265,NULL,NULL),(720,'celine felix','m',1,0,877,NULL,NULL,NULL,266,NULL,NULL),(721,'micah adkins','f',1,1,878,NULL,NULL,NULL,267,242,NULL),(722,'flynn mann','m',1,0,879,NULL,NULL,NULL,268,NULL,NULL),(723,'zuri lucas','f',1,0,880,NULL,NULL,NULL,269,NULL,NULL),(724,'savanna wood','m',1,0,881,NULL,NULL,NULL,270,NULL,NULL),(725,'aubrey arellano','f',1,0,882,NULL,NULL,NULL,271,NULL,NULL),(726,'katelyn estes','m',1,0,883,NULL,NULL,NULL,272,NULL,NULL),(727,'brixton horne','f',1,0,884,NULL,NULL,NULL,273,NULL,NULL),(728,'fatima sullivan','f',1,0,885,NULL,NULL,NULL,274,NULL,NULL),(729,'briar hoffman','f',1,0,886,NULL,NULL,NULL,275,NULL,NULL),(730,'esteban morales','f',1,0,887,NULL,NULL,NULL,276,NULL,NULL),(731,'leroy fields','m',1,0,888,NULL,NULL,NULL,277,NULL,NULL),(732,'cooper webster','m',1,0,889,NULL,NULL,NULL,278,NULL,NULL),(733,'kohen vo','f',10,0,891,NULL,NULL,NULL,NULL,NULL,2),(734,'ismael weiss','f',1,1,892,NULL,NULL,NULL,NULL,265,NULL),(735,'jenesis norton','m',4,0,893,NULL,NULL,NULL,NULL,NULL,2),(736,'rafael garrett','f',1,1,894,NULL,NULL,NULL,NULL,266,NULL),(737,'tadeo shepard','m',10,0,895,NULL,NULL,NULL,NULL,NULL,2),(738,'cruz shaw','m',2,0,896,NULL,NULL,NULL,NULL,NULL,2),(739,'macie griffin','m',6,1,897,NULL,NULL,NULL,NULL,267,NULL),(740,'boone mathews','m',7,0,898,NULL,NULL,NULL,NULL,NULL,2),(741,'oscar michael','m',8,1,899,NULL,NULL,NULL,NULL,268,NULL),(742,'kody anderson','f',1,0,900,NULL,NULL,NULL,NULL,NULL,2),(743,'amos petersen','m',5,0,901,NULL,NULL,NULL,NULL,NULL,2),(744,'frederick houston','f',3,1,902,NULL,NULL,NULL,NULL,269,NULL),(745,'lukas stark','m',9,0,903,NULL,NULL,NULL,NULL,NULL,2),(746,'rowan castaneda','m',1,0,904,NULL,NULL,NULL,NULL,NULL,2),(747,'lina poole','f',8,1,905,NULL,NULL,NULL,NULL,270,NULL),(748,'connor murillo','m',5,1,906,NULL,NULL,NULL,NULL,277,NULL),(749,'shelby stanley','f',6,0,907,NULL,NULL,NULL,NULL,NULL,2),(750,'dior roth','m',5,1,908,NULL,NULL,NULL,NULL,271,NULL),(751,'yosef charles','m',7,0,909,NULL,NULL,NULL,NULL,NULL,2),(752,'saint vega','m',1,0,910,NULL,NULL,NULL,NULL,NULL,2),(753,'briar rose','m',2,0,911,NULL,NULL,NULL,NULL,NULL,2),(754,'shane crosby','f',8,0,912,NULL,NULL,NULL,NULL,NULL,2),(755,'andi calderon','m',8,0,913,NULL,NULL,NULL,NULL,NULL,2),(756,'cecelia gibson','m',3,0,914,NULL,NULL,NULL,NULL,NULL,2),(757,'madalynn glover','f',5,0,915,NULL,NULL,NULL,NULL,NULL,2),(758,'leon stein','m',7,0,916,NULL,NULL,NULL,NULL,NULL,2),(759,'baylor brooks','f',1,0,917,NULL,NULL,NULL,NULL,NULL,2),(760,'lexie bryan','f',1,1,918,NULL,NULL,NULL,NULL,272,NULL),(761,'luella le','m',10,0,919,NULL,NULL,NULL,NULL,NULL,2),(762,'sergio dejesus','f',10,1,920,NULL,NULL,NULL,NULL,273,NULL),(763,'case skinner','m',2,0,921,NULL,NULL,NULL,NULL,NULL,2),(764,'damir morrison','f',2,0,922,NULL,NULL,NULL,NULL,NULL,2),(765,'kinsley combs','m',3,1,923,NULL,NULL,NULL,NULL,274,NULL),(766,'patrick wade','f',8,0,924,NULL,NULL,NULL,NULL,NULL,2),(767,'octavia briggs','m',9,1,925,NULL,NULL,NULL,NULL,290,NULL),(768,'otis miller','m',6,1,926,NULL,NULL,NULL,NULL,275,NULL),(769,'cadence guerra','m',1,0,927,NULL,NULL,NULL,NULL,NULL,2),(770,'landry cooper','f',10,1,928,NULL,NULL,NULL,NULL,276,NULL),(771,'adonis waller','f',6,0,929,NULL,NULL,NULL,NULL,NULL,2),(772,'camden ingram','m',9,1,930,NULL,NULL,NULL,NULL,251,NULL),(773,'genesis drake','f',6,1,931,NULL,NULL,NULL,NULL,289,NULL),(774,'hayden grant','m',0,0,932,NULL,NULL,NULL,279,NULL,NULL),(775,'keaton mcguire','f',0,0,933,NULL,NULL,NULL,280,NULL,NULL),(776,'xander robbins','f',0,0,934,NULL,NULL,NULL,281,NULL,NULL),(777,'charlie poole','f',0,0,935,NULL,NULL,NULL,282,NULL,NULL),(778,'winnie matthews','m',0,0,936,NULL,NULL,NULL,283,NULL,NULL),(779,'madisyn mccarthy','m',0,0,937,NULL,NULL,NULL,284,NULL,NULL),(780,'calvin palacios','m',0,0,938,NULL,NULL,NULL,285,NULL,NULL),(781,'talon mcmillan','m',0,0,939,NULL,NULL,NULL,286,NULL,NULL),(782,'kabir gould','f',0,0,940,NULL,NULL,NULL,287,NULL,NULL),(783,'kali marsh','f',0,0,941,NULL,NULL,NULL,288,NULL,NULL),(784,'reece wilcox','f',0,0,942,NULL,NULL,NULL,289,NULL,NULL),(785,'dariel weber','f',0,0,943,NULL,NULL,NULL,290,NULL,NULL),(786,'mia barr','m',0,0,944,NULL,NULL,NULL,291,NULL,NULL),(787,'gwendolyn knapp','f',0,0,945,NULL,NULL,NULL,292,NULL,NULL),(788,'bianca richards','m',0,0,946,NULL,NULL,NULL,293,NULL,NULL),(789,'charles nolan','m',0,0,947,NULL,NULL,NULL,294,NULL,NULL),(790,'luca hanson','m',0,0,948,NULL,NULL,NULL,295,NULL,NULL),(791,'stephen simon','m',0,0,949,NULL,NULL,NULL,296,NULL,NULL),(792,'ander singleton','f',0,0,950,NULL,NULL,NULL,297,NULL,NULL);
/*!40000 ALTER TABLE `tb_dweller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dweller_quest`
--

DROP TABLE IF EXISTS `tb_dweller_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dweller_quest` (
  `id_dweller` int NOT NULL,
  `id_quest` int NOT NULL,
  PRIMARY KEY (`id_dweller`,`id_quest`),
  KEY `fk_id_quest_tb_dweller_quest` (`id_quest`),
  CONSTRAINT `fk_id_dweller_tb_dweller_quest` FOREIGN KEY (`id_dweller`) REFERENCES `tb_dweller` (`id_dweller`),
  CONSTRAINT `fk_id_quest_tb_dweller_quest` FOREIGN KEY (`id_quest`) REFERENCES `tb_quest` (`id_quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dweller_quest`
--

LOCK TABLES `tb_dweller_quest` WRITE;
/*!40000 ALTER TABLE `tb_dweller_quest` DISABLE KEYS */;
INSERT INTO `tb_dweller_quest` VALUES (241,1),(241,2),(241,3),(241,4),(300,5),(348,6),(361,6),(348,7),(348,8),(348,9),(348,10),(348,11),(348,12),(348,13),(348,14),(428,15),(444,15),(425,16),(435,16),(446,17),(442,18),(429,19),(439,20),(433,21),(436,21),(438,21),(440,22),(446,22),(447,22),(420,23),(426,23),(433,23),(420,24),(436,24),(436,25),(426,26),(498,27),(505,27),(431,28),(498,28),(503,28),(478,29),(482,30),(484,30),(501,30),(480,31),(482,31),(506,32),(509,33),(483,34),(488,34),(493,34),(478,35),(494,35),(506,35),(429,36),(496,36),(507,36),(486,37),(477,38),(499,38),(438,39),(490,39),(511,39),(479,40),(486,40),(498,40),(495,41),(424,42),(484,43),(547,43),(563,43),(484,44),(541,44),(559,44),(544,45),(542,46),(562,46),(570,47),(562,48),(565,48),(446,49),(541,50),(542,50),(567,50),(554,51),(424,52),(483,52),(509,53),(553,53),(556,53),(509,54),(572,54),(541,55),(542,55),(560,55),(446,56),(491,56),(498,56),(509,57),(542,57),(553,57),(479,58),(542,58),(568,58),(478,59),(509,60),(566,60),(431,61),(437,61),(498,62),(478,63),(565,63),(619,63),(491,64),(567,64),(624,64),(556,65),(611,65),(624,65),(606,66),(611,66),(608,67),(551,68),(604,68),(636,68),(624,69),(629,69),(635,69),(613,70),(635,70),(501,71),(621,71),(613,72),(619,72),(631,72),(613,73),(616,73),(478,74),(551,75),(565,75),(431,76),(479,77),(565,77),(604,78),(605,78),(609,78),(551,79),(609,79),(625,79),(556,80),(622,80),(625,80),(616,81),(629,81),(638,81),(553,82),(613,83),(556,84),(622,84),(623,84),(610,85),(630,85),(633,86),(697,86),(676,87),(695,87),(697,87),(694,88),(671,89),(672,89),(478,90),(699,91),(704,91),(478,92),(678,92),(572,93),(623,94),(632,94),(568,95),(623,96),(624,96),(689,96),(678,97),(702,97),(706,97),(613,98),(675,98),(679,99),(683,99),(699,99),(620,100),(633,100),(699,100),(572,101),(622,101),(545,102),(633,102),(672,102),(608,103),(693,103),(608,104),(702,104),(707,104),(681,105),(565,106),(608,106),(700,106),(615,107),(756,107),(613,108),(670,108),(748,108),(501,109),(670,109),(687,110),(754,110),(758,110),(553,111),(771,111),(683,112),(437,113),(685,113),(568,114),(757,114),(676,115),(676,116),(690,116),(769,116),(670,117),(633,118),(693,118),(562,119),(742,119),(773,119),(625,120),(685,120),(757,120),(437,121),(702,121),(737,122),(759,122),(568,123),(743,123),(615,124),(771,124),(752,125),(756,125),(693,126),(767,126),(773,126),(759,127),(766,127);
/*!40000 ALTER TABLE `tb_dweller_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_exploration`
--

DROP TABLE IF EXISTS `tb_exploration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_exploration` (
  `id_exploration` int NOT NULL AUTO_INCREMENT,
  `duration` int NOT NULL,
  `date` date NOT NULL,
  `id_dweller` int NOT NULL,
  PRIMARY KEY (`id_exploration`),
  KEY `fk_id_dweller_tb_exploration` (`id_dweller`),
  CONSTRAINT `fk_id_dweller_tb_exploration` FOREIGN KEY (`id_dweller`) REFERENCES `tb_dweller` (`id_dweller`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_exploration`
--

LOCK TABLES `tb_exploration` WRITE;
/*!40000 ALTER TABLE `tb_exploration` DISABLE KEYS */;
INSERT INTO `tb_exploration` VALUES (1,1863,'2022-04-25',241),(2,4455,'2022-05-12',299),(3,3923,'2022-06-13',348),(4,5003,'2022-06-06',361),(5,5596,'2022-07-11',408),(6,3337,'2022-07-25',424),(7,4196,'2022-07-13',425),(8,2371,'2022-07-08',426),(9,2205,'2022-07-10',427),(10,3012,'2022-07-22',429),(11,4286,'2022-07-06',430),(12,4368,'2022-07-17',432),(13,5432,'2022-07-22',434),(14,4374,'2022-07-02',436),(15,3816,'2022-07-21',437),(16,3472,'2022-07-27',438),(17,3076,'2022-07-19',439),(18,5460,'2022-07-11',440),(19,5253,'2022-07-04',441),(20,5660,'2022-07-18',443),(21,1832,'2022-07-07',445),(22,5373,'2022-07-12',447),(23,4373,'2022-08-15',420),(24,3442,'2022-08-23',424),(25,2869,'2022-08-04',425),(26,1562,'2022-08-19',429),(27,4768,'2022-08-19',431),(28,3741,'2022-08-20',436),(29,4141,'2022-08-10',438),(30,4978,'2022-08-11',440),(31,1506,'2022-08-22',477),(32,2220,'2022-08-03',478),(33,5199,'2022-08-12',479),(34,1816,'2022-08-27',480),(35,2378,'2022-08-08',481),(36,2010,'2022-08-26',482),(37,2982,'2022-08-20',483),(38,2971,'2022-08-03',484),(39,4455,'2022-08-27',485),(40,3200,'2022-08-04',487),(41,2924,'2022-08-20',489),(42,5674,'2022-08-14',491),(43,2138,'2022-08-27',493),(44,5361,'2022-08-18',494),(45,4756,'2022-08-18',495),(46,2846,'2022-08-04',496),(47,2737,'2022-08-14',497),(48,2916,'2022-08-15',499),(49,3884,'2022-08-02',500),(50,3857,'2022-08-26',501),(51,2507,'2022-08-22',502),(52,2337,'2022-08-05',504),(53,4166,'2022-08-01',506),(54,4434,'2022-08-15',507),(55,1925,'2022-08-01',508),(56,5205,'2022-08-05',510),(57,1463,'2022-08-13',512),(58,1796,'2022-09-24',420),(59,1769,'2022-09-09',425),(60,3638,'2022-09-08',431),(61,4463,'2022-09-11',437),(62,3728,'2022-09-18',438),(63,2941,'2022-09-15',477),(64,3388,'2022-09-10',479),(65,3979,'2022-09-19',481),(66,4562,'2022-09-20',484),(67,5549,'2022-09-13',486),(68,4534,'2022-09-22',495),(69,4110,'2022-09-12',500),(70,5176,'2022-09-16',509),(71,1763,'2022-09-10',540),(72,3860,'2022-09-05',542),(73,2886,'2022-09-04',543),(74,3150,'2022-09-08',545),(75,4316,'2022-09-06',547),(76,3211,'2022-09-25',548),(77,3825,'2022-09-28',551),(78,3949,'2022-09-01',552),(79,5303,'2022-09-01',553),(80,2004,'2022-09-04',554),(81,3730,'2022-09-12',555),(82,1494,'2022-09-13',557),(83,4743,'2022-09-18',560),(84,4115,'2022-09-28',561),(85,2027,'2022-09-28',563),(86,2016,'2022-09-14',564),(87,3845,'2022-09-04',566),(88,5275,'2022-09-28',567),(89,4706,'2022-09-05',568),(90,3718,'2022-09-24',570),(91,1820,'2022-09-20',571),(92,4377,'2022-10-13',424),(93,3907,'2022-10-19',431),(94,4917,'2022-10-04',437),(95,4642,'2022-10-18',446),(96,2310,'2022-10-09',479),(97,2643,'2022-10-07',484),(98,4098,'2022-10-02',498),(99,3866,'2022-10-05',509),(100,2783,'2022-10-06',549),(101,4111,'2022-10-02',552),(102,3081,'2022-10-23',556),(103,3734,'2022-10-07',560),(104,3905,'2022-10-13',563),(105,3128,'2022-10-01',567),(106,3714,'2022-10-09',568),(107,3206,'2022-10-20',572),(108,5701,'2022-10-13',604),(109,4807,'2022-10-17',605),(110,2823,'2022-10-15',606),(111,2653,'2022-10-26',607),(112,1479,'2022-10-19',609),(113,2220,'2022-10-03',610),(114,4168,'2022-10-26',611),(115,2343,'2022-10-10',612),(116,3428,'2022-10-28',614),(117,1889,'2022-10-19',616),(118,2061,'2022-10-27',617),(119,5105,'2022-10-27',618),(120,5086,'2022-10-04',620),(121,3920,'2022-10-01',621),(122,3495,'2022-10-07',622),(123,5203,'2022-10-14',623),(124,2352,'2022-10-10',624),(125,3455,'2022-10-16',625),(126,3125,'2022-10-01',626),(127,4006,'2022-10-25',628),(128,5608,'2022-10-13',630),(129,1869,'2022-10-15',631),(130,2524,'2022-10-27',632),(131,5118,'2022-10-16',633),(132,2583,'2022-10-23',634),(133,5055,'2022-10-13',636),(134,4765,'2022-10-26',637),(135,3427,'2022-11-28',425),(136,5188,'2022-11-20',437),(137,5457,'2022-11-01',478),(138,4129,'2022-11-10',501),(139,5466,'2022-11-11',545),(140,4663,'2022-11-07',551),(141,1795,'2022-11-20',556),(142,4017,'2022-11-23',565),(143,3682,'2022-11-18',568),(144,1824,'2022-11-14',572),(145,5332,'2022-11-21',604),(146,4173,'2022-11-03',610),(147,5632,'2022-11-20',615),(148,3336,'2022-11-04',617),(149,3283,'2022-11-12',622),(150,4971,'2022-11-12',623),(151,5524,'2022-11-21',624),(152,4340,'2022-11-05',625),(153,4845,'2022-11-09',627),(154,3731,'2022-11-20',629),(155,1601,'2022-11-27',633),(156,1902,'2022-11-16',635),(157,3626,'2022-11-27',669),(158,1985,'2022-11-13',671),(159,3525,'2022-11-05',672),(160,1449,'2022-11-03',673),(161,5598,'2022-11-13',675),(162,2270,'2022-11-27',676),(163,2211,'2022-11-28',677),(164,1942,'2022-11-10',679),(165,4049,'2022-11-02',680),(166,1469,'2022-11-28',682),(167,3612,'2022-11-03',684),(168,3762,'2022-11-19',685),(169,2983,'2022-11-08',686),(170,2496,'2022-11-01',688),(171,4413,'2022-11-01',689),(172,5031,'2022-11-06',690),(173,3396,'2022-11-10',691),(174,3013,'2022-11-18',693),(175,4669,'2022-11-08',694),(176,5337,'2022-11-03',695),(177,3857,'2022-11-23',696),(178,3471,'2022-11-09',698),(179,3176,'2022-11-12',700),(180,4690,'2022-11-28',701),(181,4790,'2022-11-24',703),(182,5422,'2022-11-23',705),(183,3409,'2022-11-13',707),(184,2607,'2022-12-24',425),(185,2525,'2022-12-09',501),(186,3137,'2022-12-11',545),(187,2341,'2022-12-17',562),(188,3677,'2022-12-24',568),(189,4108,'2022-12-25',613),(190,4371,'2022-12-22',615),(191,2767,'2022-12-11',622),(192,3782,'2022-12-26',624),(193,2568,'2022-12-09',627),(194,5588,'2022-12-23',638),(195,4777,'2022-12-20',675),(196,4295,'2022-12-04',676),(197,1511,'2022-12-05',681),(198,3162,'2022-12-22',683),(199,5656,'2022-12-08',685),(200,2537,'2022-12-26',687),(201,1544,'2022-12-17',688),(202,5231,'2022-12-08',690),(203,4948,'2022-12-25',692),(204,4623,'2022-12-21',694),(205,4861,'2022-12-05',699),(206,5489,'2022-12-12',702),(207,4728,'2022-12-06',704),(208,3965,'2022-12-25',707),(209,2538,'2022-12-06',734),(210,4874,'2022-12-18',736),(211,2622,'2022-12-11',738),(212,5120,'2022-12-19',739),(213,5426,'2022-12-03',741),(214,2609,'2022-12-15',743),(215,2090,'2022-12-22',744),(216,2589,'2022-12-12',746),(217,3700,'2022-12-02',747),(218,3396,'2022-12-22',749),(219,5238,'2022-12-14',750),(220,3002,'2022-12-11',752),(221,5219,'2022-12-09',753),(222,5697,'2022-12-12',754),(223,5060,'2022-12-08',755),(224,2500,'2022-12-21',756),(225,2449,'2022-12-24',757),(226,5248,'2022-12-07',758),(227,4004,'2022-12-13',759),(228,3422,'2022-12-27',760),(229,5709,'2022-12-25',762),(230,3750,'2022-12-11',764),(231,5209,'2022-12-02',765),(232,4384,'2022-12-06',767),(233,3745,'2022-12-27',768),(234,4352,'2022-12-04',770),(235,3024,'2022-12-12',773);
/*!40000 ALTER TABLE `tb_exploration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_incident`
--

DROP TABLE IF EXISTS `tb_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_incident` (
  `id_incident` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id_incident_type` int NOT NULL,
  `id_room` int NOT NULL,
  PRIMARY KEY (`id_incident`),
  KEY `fk_id_incident_type_tb_incident` (`id_incident_type`),
  KEY `fk_id_room_tb_incident` (`id_room`),
  CONSTRAINT `fk_id_incident_type_tb_incident` FOREIGN KEY (`id_incident_type`) REFERENCES `tb_incident_type` (`id_incident_type`),
  CONSTRAINT `fk_id_room_tb_incident` FOREIGN KEY (`id_room`) REFERENCES `tb_room` (`id_room`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_incident`
--

LOCK TABLES `tb_incident` WRITE;
/*!40000 ALTER TABLE `tb_incident` DISABLE KEYS */;
INSERT INTO `tb_incident` VALUES (1,'2022-01-10',4,48),(2,'2022-01-08',1,50),(3,'2022-01-23',3,35),(4,'2022-01-10',5,65),(5,'2022-01-08',8,59),(6,'2022-01-13',5,72),(7,'2022-01-14',8,3),(8,'2022-01-19',7,18),(9,'2022-01-24',2,20),(10,'2022-01-26',6,3),(11,'2022-01-09',1,48),(12,'2022-01-21',7,15),(13,'2022-01-09',4,74),(14,'2022-01-14',8,71),(15,'2022-01-02',5,54),(16,'2022-01-11',4,35),(17,'2022-01-15',7,75),(18,'2022-01-11',8,53),(19,'2022-01-26',2,26),(20,'2022-01-02',7,28),(21,'2022-01-10',6,32),(22,'2022-01-17',4,67),(23,'2022-01-06',5,35),(24,'2022-01-20',8,68),(25,'2022-01-12',5,61),(26,'2022-01-21',4,4),(27,'2022-01-27',4,18),(28,'2022-01-15',3,12),(29,'2022-01-23',6,53),(30,'2022-01-18',5,59),(31,'2022-01-17',4,23),(32,'2022-01-15',2,46),(33,'2022-01-08',1,67),(34,'2022-01-25',5,45),(35,'2022-01-23',4,42),(36,'2022-01-05',4,62),(37,'2022-01-10',4,55),(38,'2022-01-01',4,43),(39,'2022-01-01',8,28),(40,'2022-01-23',4,21),(41,'2022-02-14',8,12),(42,'2022-02-05',3,15),(43,'2022-02-09',3,11),(44,'2022-02-24',8,49),(45,'2022-02-23',4,61),(46,'2022-02-26',1,35),(47,'2022-02-25',4,45),(48,'2022-02-11',1,70),(49,'2022-02-21',8,51),(50,'2022-02-21',2,61),(51,'2022-02-11',4,59),(52,'2022-02-23',8,51),(53,'2022-02-24',1,31),(54,'2022-02-26',7,30),(55,'2022-02-04',4,26),(56,'2022-02-10',2,39),(57,'2022-02-02',7,63),(58,'2022-02-24',6,26),(59,'2022-02-10',2,28),(60,'2022-02-04',4,32),(61,'2022-02-26',8,75),(62,'2022-02-07',7,27),(63,'2022-02-05',6,30),(64,'2022-02-14',2,69),(65,'2022-02-10',8,74),(66,'2022-02-27',7,38),(67,'2022-02-16',4,33),(68,'2022-02-22',4,17),(69,'2022-02-19',7,7),(70,'2022-02-27',2,30),(71,'2022-02-06',3,54),(72,'2022-02-28',5,45),(73,'2022-02-02',7,32),(74,'2022-02-08',8,42),(75,'2022-02-04',5,65),(76,'2022-02-12',4,45),(77,'2022-02-03',6,65),(78,'2022-02-15',4,69),(79,'2022-02-19',3,53),(80,'2022-02-24',6,64),(81,'2022-02-22',5,37),(82,'2022-03-03',2,3),(83,'2022-03-08',8,41),(84,'2022-03-22',2,33),(85,'2022-03-26',6,29),(86,'2022-03-21',3,42),(87,'2022-03-12',6,3),(88,'2022-03-27',2,67),(89,'2022-03-11',6,64),(90,'2022-03-11',4,25),(91,'2022-03-06',2,10),(92,'2022-03-23',5,67),(93,'2022-03-01',1,26),(94,'2022-03-26',4,62),(95,'2022-03-04',1,71),(96,'2022-03-02',1,45),(97,'2022-03-26',6,2),(98,'2022-03-16',7,10),(99,'2022-03-02',4,44),(100,'2022-03-28',5,56),(101,'2022-03-26',6,66),(102,'2022-03-06',3,21),(103,'2022-03-18',2,8),(104,'2022-03-10',1,50),(105,'2022-03-05',8,67),(106,'2022-03-26',4,34),(107,'2022-03-08',6,13),(108,'2022-03-14',2,27),(109,'2022-03-03',1,52),(110,'2022-03-27',7,75),(111,'2022-03-01',8,51),(112,'2022-03-08',7,17),(113,'2022-03-08',5,54),(114,'2022-03-16',7,40),(115,'2022-03-13',5,4),(116,'2022-03-20',4,11),(117,'2022-03-28',8,29),(118,'2022-03-25',6,40),(119,'2022-03-08',1,43),(120,'2022-03-23',1,37),(121,'2022-03-09',4,45),(122,'2022-03-18',2,12),(123,'2022-03-09',5,70),(124,'2022-03-06',1,5),(125,'2022-03-15',4,14),(126,'2022-03-19',3,54),(127,'2022-03-12',4,53),(128,'2022-03-23',5,21),(129,'2022-03-21',6,24),(130,'2022-03-11',2,28),(131,'2022-03-25',5,64),(132,'2022-03-17',4,56),(133,'2022-03-12',6,35),(134,'2022-03-04',1,59),(135,'2022-03-05',6,64),(136,'2022-03-10',1,23),(137,'2022-03-26',3,24),(138,'2022-03-15',7,33),(139,'2022-03-15',3,60),(140,'2022-03-04',2,55),(141,'2022-04-28',7,37),(142,'2022-04-21',3,15),(143,'2022-04-20',2,47),(144,'2022-04-23',3,44),(145,'2022-04-14',5,23),(146,'2022-04-05',1,3),(147,'2022-04-11',1,19),(148,'2022-04-07',7,27),(149,'2022-04-01',6,60),(150,'2022-04-19',6,37),(151,'2022-04-13',8,54),(152,'2022-04-09',3,61),(153,'2022-04-18',8,18),(154,'2022-04-19',7,19),(155,'2022-04-13',8,7),(156,'2022-04-03',2,48),(157,'2022-04-27',7,62),(158,'2022-04-08',3,63),(159,'2022-04-08',5,19),(160,'2022-04-26',5,51),(161,'2022-04-01',4,42),(162,'2022-04-21',6,36),(163,'2022-04-06',4,3),(164,'2022-04-06',4,28),(165,'2022-04-17',2,23),(166,'2022-04-02',3,7),(167,'2022-04-23',4,27),(168,'2022-04-19',4,67),(169,'2022-04-12',7,58),(170,'2022-04-03',5,22),(171,'2022-04-01',7,73),(172,'2022-04-24',5,4),(173,'2022-04-09',6,11),(174,'2022-04-23',4,6),(175,'2022-04-03',5,26),(176,'2022-04-07',6,57),(177,'2022-04-06',5,49),(178,'2022-04-08',4,65),(179,'2022-04-19',5,30),(180,'2022-04-17',4,31),(181,'2022-04-03',3,25),(182,'2022-04-26',6,41),(183,'2022-04-22',7,34),(184,'2022-04-21',8,39),(185,'2022-04-18',7,47),(186,'2022-04-09',8,40),(187,'2022-04-26',3,30),(188,'2022-04-09',8,28),(189,'2022-04-05',3,74),(190,'2022-04-05',5,49),(191,'2022-04-06',1,39),(192,'2022-04-21',6,29),(193,'2022-04-28',4,31),(194,'2022-04-06',6,49),(195,'2022-05-26',3,67),(196,'2022-05-14',7,31),(197,'2022-05-11',6,27),(198,'2022-05-05',3,8),(199,'2022-05-03',4,16),(200,'2022-05-07',5,42),(201,'2022-05-15',7,36),(202,'2022-05-03',8,56),(203,'2022-05-28',1,52),(204,'2022-05-20',6,17),(205,'2022-05-24',3,34),(206,'2022-05-28',2,68),(207,'2022-05-03',6,14),(208,'2022-05-16',1,36),(209,'2022-05-23',8,67),(210,'2022-05-28',3,37),(211,'2022-05-03',4,14),(212,'2022-05-19',4,51),(213,'2022-05-05',8,62),(214,'2022-05-18',3,53),(215,'2022-05-20',4,54),(216,'2022-05-19',3,20),(217,'2022-05-19',6,66),(218,'2022-05-17',7,11),(219,'2022-05-18',5,37),(220,'2022-05-02',6,3),(221,'2022-05-12',2,75),(222,'2022-05-03',8,34),(223,'2022-05-26',3,7),(224,'2022-05-17',5,47),(225,'2022-05-05',4,37),(226,'2022-05-07',8,43),(227,'2022-06-26',1,6),(228,'2022-06-08',3,48),(229,'2022-06-19',4,2),(230,'2022-06-09',4,72),(231,'2022-06-15',5,73),(232,'2022-06-07',4,24),(233,'2022-06-02',5,67),(234,'2022-06-17',7,31),(235,'2022-06-14',6,75),(236,'2022-06-09',1,36),(237,'2022-06-11',1,47),(238,'2022-06-19',7,6),(239,'2022-06-10',4,19),(240,'2022-06-04',2,9),(241,'2022-06-04',2,63),(242,'2022-06-07',6,33),(243,'2022-06-25',4,22),(244,'2022-06-06',8,61),(245,'2022-06-10',6,23),(246,'2022-06-20',3,14),(247,'2022-06-25',4,65),(248,'2022-06-04',4,19),(249,'2022-06-27',3,36),(250,'2022-06-06',8,58),(251,'2022-06-18',4,26),(252,'2022-06-14',3,55),(253,'2022-06-17',8,15),(254,'2022-06-12',7,57),(255,'2022-06-14',3,60),(256,'2022-06-27',5,38),(257,'2022-06-25',7,24),(258,'2022-07-16',7,61),(259,'2022-07-25',2,26),(260,'2022-07-07',2,59),(261,'2022-07-23',7,3),(262,'2022-07-28',4,39),(263,'2022-07-19',5,28),(264,'2022-07-11',1,57),(265,'2022-07-21',2,22),(266,'2022-07-26',1,68),(267,'2022-07-13',7,69),(268,'2022-07-14',2,58),(269,'2022-07-09',7,60),(270,'2022-07-11',7,66),(271,'2022-07-21',8,7),(272,'2022-07-24',1,27),(273,'2022-07-01',2,16),(274,'2022-07-11',5,60),(275,'2022-07-08',3,35),(276,'2022-07-12',1,33),(277,'2022-07-03',6,65),(278,'2022-07-10',3,30),(279,'2022-07-12',6,43),(280,'2022-07-20',2,65),(281,'2022-07-03',4,62),(282,'2022-07-08',4,37),(283,'2022-07-21',7,52),(284,'2022-07-11',4,20),(285,'2022-07-05',1,3),(286,'2022-07-26',5,19),(287,'2022-07-23',1,54),(288,'2022-07-04',6,70),(289,'2022-07-06',8,10),(290,'2022-07-25',4,18),(291,'2022-07-28',6,15),(292,'2022-07-04',4,63),(293,'2022-07-23',6,14),(294,'2022-07-17',7,42),(295,'2022-07-19',6,41),(296,'2022-07-08',3,7),(297,'2022-07-17',1,45),(298,'2022-07-27',3,47),(299,'2022-07-09',1,48),(300,'2022-07-16',3,32),(301,'2022-07-09',1,7),(302,'2022-07-15',7,37),(303,'2022-07-08',6,34),(304,'2022-07-01',5,10),(305,'2022-07-19',1,34),(306,'2022-07-05',6,28),(307,'2022-07-28',4,2),(308,'2022-07-16',8,9),(309,'2022-07-17',2,56),(310,'2022-07-04',5,39),(311,'2022-07-20',8,65),(312,'2022-07-18',5,39),(313,'2022-07-02',3,29),(314,'2022-07-03',4,33),(315,'2022-08-25',5,68),(316,'2022-08-08',7,47),(317,'2022-08-06',7,36),(318,'2022-08-01',4,26),(319,'2022-08-24',3,22),(320,'2022-08-05',8,26),(321,'2022-08-22',4,35),(322,'2022-08-02',7,26),(323,'2022-08-03',8,52),(324,'2022-08-15',5,4),(325,'2022-08-27',5,74),(326,'2022-08-26',3,26),(327,'2022-08-22',3,34),(328,'2022-08-04',1,59),(329,'2022-08-20',1,74),(330,'2022-08-05',4,34),(331,'2022-08-15',7,62),(332,'2022-08-11',1,21),(333,'2022-08-09',5,23),(334,'2022-08-17',3,75),(335,'2022-08-15',8,28),(336,'2022-08-28',1,16),(337,'2022-08-16',1,48),(338,'2022-08-26',1,45),(339,'2022-08-26',5,31),(340,'2022-08-20',7,38),(341,'2022-08-16',8,63),(342,'2022-08-13',6,66),(343,'2022-08-23',4,24),(344,'2022-08-09',2,51),(345,'2022-08-16',4,66),(346,'2022-08-06',6,63),(347,'2022-08-24',6,75),(348,'2022-08-09',5,41),(349,'2022-08-25',1,7),(350,'2022-08-09',1,5),(351,'2022-08-17',5,6),(352,'2022-08-25',7,43),(353,'2022-08-22',3,46),(354,'2022-08-13',1,3),(355,'2022-08-19',2,22),(356,'2022-08-21',6,58),(357,'2022-08-07',6,22),(358,'2022-08-18',2,40),(359,'2022-08-01',3,40),(360,'2022-08-28',4,26),(361,'2022-08-10',1,43),(362,'2022-08-10',3,71),(363,'2022-08-06',8,51),(364,'2022-08-16',3,63),(365,'2022-08-10',8,13),(366,'2022-08-22',7,40),(367,'2022-08-16',4,75),(368,'2022-09-21',2,73),(369,'2022-09-23',2,49),(370,'2022-09-17',6,63),(371,'2022-09-28',7,45),(372,'2022-09-17',3,35),(373,'2022-09-16',6,10),(374,'2022-09-16',3,46),(375,'2022-09-18',1,3),(376,'2022-09-18',2,24),(377,'2022-09-12',7,55),(378,'2022-09-06',3,17),(379,'2022-09-15',7,65),(380,'2022-09-14',6,37),(381,'2022-09-28',8,29),(382,'2022-09-13',4,25),(383,'2022-09-23',7,15),(384,'2022-09-28',3,5),(385,'2022-09-23',8,29),(386,'2022-09-25',1,12),(387,'2022-09-22',3,58),(388,'2022-09-11',3,59),(389,'2022-09-28',7,48),(390,'2022-09-18',6,16),(391,'2022-09-10',4,18),(392,'2022-09-21',6,56),(393,'2022-09-17',8,40),(394,'2022-09-10',7,37),(395,'2022-09-02',4,25),(396,'2022-09-14',5,37),(397,'2022-09-26',6,20),(398,'2022-09-19',8,51),(399,'2022-09-06',6,38),(400,'2022-09-13',7,20),(401,'2022-09-14',5,18),(402,'2022-10-16',5,64),(403,'2022-10-14',2,7),(404,'2022-10-17',8,30),(405,'2022-10-02',7,67),(406,'2022-10-17',4,37),(407,'2022-10-07',6,33),(408,'2022-10-15',2,26),(409,'2022-10-25',7,19),(410,'2022-10-12',1,60),(411,'2022-10-14',7,4),(412,'2022-10-15',6,32),(413,'2022-10-05',7,39),(414,'2022-10-12',4,48),(415,'2022-10-14',4,39),(416,'2022-10-09',8,56),(417,'2022-10-11',4,4),(418,'2022-10-17',4,13),(419,'2022-10-19',1,30),(420,'2022-10-10',8,32),(421,'2022-10-13',5,43),(422,'2022-10-06',8,36),(423,'2022-10-17',3,5),(424,'2022-10-21',3,25),(425,'2022-10-28',7,11),(426,'2022-10-16',5,51),(427,'2022-10-22',6,8),(428,'2022-10-10',6,51),(429,'2022-10-17',7,31),(430,'2022-10-03',6,28),(431,'2022-10-14',4,11),(432,'2022-10-28',3,17),(433,'2022-11-03',3,38),(434,'2022-11-05',2,11),(435,'2022-11-04',7,19),(436,'2022-11-05',2,33),(437,'2022-11-01',8,14),(438,'2022-11-11',1,29),(439,'2022-11-27',7,26),(440,'2022-11-28',4,74),(441,'2022-11-08',4,64),(442,'2022-11-24',6,19),(443,'2022-11-11',6,6),(444,'2022-11-10',5,20),(445,'2022-11-05',6,23),(446,'2022-11-21',5,68),(447,'2022-11-21',5,33),(448,'2022-11-12',1,72),(449,'2022-11-26',8,75),(450,'2022-11-10',1,34),(451,'2022-11-28',7,60),(452,'2022-11-02',4,64),(453,'2022-11-21',3,21),(454,'2022-11-06',4,10),(455,'2022-11-15',5,12),(456,'2022-11-12',1,56),(457,'2022-11-02',8,55),(458,'2022-11-12',3,14),(459,'2022-11-06',3,17),(460,'2022-11-17',6,29),(461,'2022-11-15',3,6),(462,'2022-11-07',4,5),(463,'2022-11-06',6,38),(464,'2022-11-17',8,26),(465,'2022-11-01',5,68),(466,'2022-11-04',2,53),(467,'2022-11-12',1,62),(468,'2022-11-09',7,62),(469,'2022-12-03',2,54),(470,'2022-12-15',5,35),(471,'2022-12-14',3,43),(472,'2022-12-01',1,63),(473,'2022-12-20',1,38),(474,'2022-12-14',7,67),(475,'2022-12-07',4,75),(476,'2022-12-11',5,34),(477,'2022-12-10',6,50),(478,'2022-12-16',6,14),(479,'2022-12-13',2,61),(480,'2022-12-09',6,53),(481,'2022-12-09',5,7),(482,'2022-12-25',5,34),(483,'2022-12-08',8,33),(484,'2022-12-03',6,23),(485,'2022-12-19',8,63),(486,'2022-12-17',7,13),(487,'2022-12-04',3,41),(488,'2022-12-14',5,30),(489,'2022-12-12',6,63),(490,'2022-12-23',2,42),(491,'2022-12-24',6,27),(492,'2022-12-23',5,10),(493,'2022-12-24',2,15),(494,'2022-12-14',7,45),(495,'2022-12-03',3,28),(496,'2022-12-05',4,57),(497,'2022-12-11',3,33),(498,'2022-12-05',4,31),(499,'2022-12-07',3,13),(500,'2022-12-14',8,65),(501,'2022-12-24',8,26),(502,'2022-12-04',7,60),(503,'2022-12-17',2,12),(504,'2022-12-14',8,19),(505,'2022-12-12',8,20),(506,'2022-12-20',8,75),(507,'2022-12-15',4,63),(508,'2022-12-28',4,21),(509,'2022-12-14',7,31),(510,'2022-12-03',6,32),(511,'2022-12-21',6,33),(512,'2022-12-17',8,25),(513,'2022-12-19',3,42),(514,'2022-12-10',2,60),(515,'2022-12-19',5,53),(516,'2022-12-04',3,14),(517,'2022-12-03',1,14),(518,'2022-12-20',8,2);
/*!40000 ALTER TABLE `tb_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_incident_type`
--

DROP TABLE IF EXISTS `tb_incident_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_incident_type` (
  `id_incident_type` int NOT NULL AUTO_INCREMENT,
  `description` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_incident_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_incident_type`
--

LOCK TABLES `tb_incident_type` WRITE;
/*!40000 ALTER TABLE `tb_incident_type` DISABLE KEYS */;
INSERT INTO `tb_incident_type` VALUES (1,'expulsion'),(2,'fire'),(3,'radroache'),(4,'raider'),(5,'molerat'),(6,'deathclaw'),(7,'ghoul'),(8,'radscorpion');
/*!40000 ALTER TABLE `tb_incident_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_junk`
--

DROP TABLE IF EXISTS `tb_junk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_junk` (
  `id_junk` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_junk`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_storage_tb_junk` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_junk`
--

LOCK TABLES `tb_junk` WRITE;
/*!40000 ALTER TABLE `tb_junk` DISABLE KEYS */;
INSERT INTO `tb_junk` VALUES (1,'﻿alarm clock',15,432),(2,'baseball glove',5,433),(3,'duct tape',3,434),(4,'yarn',6,435),(5,'magnifying glass',3,436),(6,'desk fan',13,437),(7,'toy car',13,438),(8,'military circuit board',5,439),(9,'yao guai hide',19,440),(10,'military duct tape',35,441),(11,'tri-fold flag',21,442),(12,'chemistry flask',14,443),(13,'giddyup buttercup',19,444),(14,'gold watch',39,445),(15,'camera',7,446),(16,'brahmin hide',12,447),(17,'wonderglue',4,448),(18,'teddy bear',26,449),(19,'microscope',5,450),(20,'shovel',20,451),(21,'globe',5,452);
/*!40000 ALTER TABLE `tb_junk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kinship`
--

DROP TABLE IF EXISTS `tb_kinship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_kinship` (
  `id_kinship` int NOT NULL AUTO_INCREMENT,
  `id_mother` int NOT NULL,
  `id_father` int NOT NULL,
  PRIMARY KEY (`id_kinship`),
  UNIQUE KEY `id_mother` (`id_mother`,`id_father`),
  KEY `fk_id_father_tb_kidship` (`id_father`),
  CONSTRAINT `fk_id_father_tb_kidship` FOREIGN KEY (`id_father`) REFERENCES `tb_dweller` (`id_dweller`),
  CONSTRAINT `fk_id_mother_tb_kidship` FOREIGN KEY (`id_mother`) REFERENCES `tb_dweller` (`id_dweller`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kinship`
--

LOCK TABLES `tb_kinship` WRITE;
/*!40000 ALTER TABLE `tb_kinship` DISABLE KEYS */;
INSERT INTO `tb_kinship` VALUES (8,2,3),(41,7,55),(65,7,171),(177,10,377),(6,13,9),(13,13,32),(125,13,262),(122,16,242),(248,16,382),(21,17,1),(70,17,23),(43,17,41),(19,18,97),(7,20,23),(40,20,82),(91,22,36),(46,22,60),(28,22,63),(2,25,12),(18,25,30),(141,25,74),(9,27,3),(1,27,4),(27,27,5),(4,27,28),(36,27,63),(23,27,69),(32,27,89),(61,31,5),(11,31,14),(5,31,21),(136,31,261),(10,33,8),(77,33,176),(3,34,21),(14,35,12),(12,35,14),(37,38,40),(80,39,131),(45,42,62),(44,45,29),(178,45,362),(203,46,228),(71,53,50),(204,53,454),(273,53,536),(118,57,11),(53,57,23),(29,58,28),(30,58,86),(109,58,184),(111,58,252),(280,58,743),(82,59,92),(59,59,160),(16,61,23),(35,64,9),(48,64,62),(20,64,80),(76,64,103),(134,65,21),(57,65,29),(286,65,78),(17,65,94),(31,66,9),(92,66,159),(55,66,160),(39,67,36),(69,67,49),(236,67,62),(34,68,8),(15,68,88),(230,70,337),(38,77,43),(74,77,74),(167,77,406),(205,77,549),(42,79,9),(155,79,364),(89,83,21),(85,87,48),(26,87,60),(94,87,92),(22,91,89),(213,91,269),(25,93,1),(33,93,21),(24,93,74),(95,93,86),(275,93,159),(114,93,225),(146,93,422),(58,96,76),(81,98,1),(84,98,55),(86,102,235),(64,107,109),(117,107,273),(102,110,125),(73,111,149),(129,118,63),(112,118,198),(148,122,269),(144,123,343),(250,123,402),(79,124,86),(215,124,362),(143,127,76),(93,128,125),(96,128,192),(130,128,249),(247,128,254),(54,135,4),(72,135,89),(63,137,8),(103,137,72),(49,139,37),(68,139,41),(185,140,288),(62,142,51),(67,142,171),(51,142,176),(107,148,282),(52,150,47),(50,150,92),(261,151,591),(231,152,382),(60,154,8),(128,157,60),(66,157,63),(56,157,88),(147,158,50),(265,158,176),(139,158,228),(98,158,307),(212,161,201),(124,163,50),(210,163,81),(216,163,207),(75,164,172),(191,165,290),(47,167,172),(142,168,43),(78,170,81),(232,173,476),(244,175,264),(255,178,706),(140,183,380),(133,183,381),(257,187,153),(192,188,485),(226,193,524),(87,194,48),(227,194,62),(171,194,85),(90,194,191),(153,196,381),(105,197,76),(266,200,249),(132,204,30),(224,204,171),(99,205,49),(164,206,145),(172,206,381),(263,211,88),(150,211,171),(289,212,234),(83,215,76),(88,216,232),(184,216,510),(160,217,409),(206,219,76),(157,219,184),(221,222,331),(271,222,668),(152,223,442),(123,224,214),(101,226,8),(135,226,342),(190,227,136),(162,227,316),(119,231,78),(284,231,580),(106,236,149),(281,237,337),(159,237,408),(297,237,524),(110,244,23),(225,244,472),(104,245,249),(108,245,294),(194,248,147),(283,251,72),(97,251,149),(186,253,105),(233,253,141),(173,253,256),(161,253,389),(217,255,559),(126,258,181),(145,258,191),(240,263,265),(228,263,370),(238,263,581),(121,270,5),(292,270,85),(176,274,266),(115,278,101),(200,283,114),(170,283,486),(156,284,416),(196,285,235),(116,292,30),(264,302,620),(174,304,73),(127,308,239),(113,310,109),(181,312,321),(100,314,289),(149,315,100),(288,319,36),(138,319,306),(291,320,136),(218,322,561),(131,326,101),(197,326,385),(195,329,97),(137,329,381),(169,338,180),(249,344,239),(175,344,307),(154,346,141),(269,351,69),(207,353,106),(120,356,377),(222,363,30),(168,363,72),(259,363,261),(188,365,387),(179,383,243),(151,384,172),(270,384,269),(279,386,763),(187,388,81),(201,388,86),(189,390,131),(246,391,8),(208,392,153),(180,392,509),(251,399,375),(272,399,416),(223,401,458),(239,403,340),(293,404,192),(165,411,203),(296,411,371),(209,411,461),(211,414,321),(274,417,402),(198,417,549),(158,426,108),(166,435,427),(163,441,291),(276,448,213),(183,456,191),(193,456,266),(182,456,478),(253,465,472),(254,466,589),(252,469,121),(295,471,8),(220,483,449),(258,501,8),(219,528,452),(260,535,28),(234,535,372),(242,537,520),(202,547,473),(237,560,88),(214,560,136),(268,562,184),(199,568,174),(235,578,138),(262,584,36),(267,601,389),(243,607,398),(245,618,49),(241,619,625),(282,623,461),(285,624,52),(278,629,707),(229,636,60),(256,670,297),(277,676,247),(294,716,655),(287,744,121),(290,766,316);
/*!40000 ALTER TABLE `tb_kinship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_outfit`
--

DROP TABLE IF EXISTS `tb_outfit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_outfit` (
  `id_outfit` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_special` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_outfit`),
  UNIQUE KEY `id_special` (`id_special`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_special_tb_outfit` FOREIGN KEY (`id_special`) REFERENCES `tb_special` (`id_special`),
  CONSTRAINT `fk_id_storage_tb_outfit` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_outfit`
--

LOCK TABLES `tb_outfit` WRITE;
/*!40000 ALTER TABLE `tb_outfit` DISABLE KEYS */;
INSERT INTO `tb_outfit` VALUES (1,'﻿armored vault suit',0,1,1),(2,'sturdy vault suit',6,2,2),(3,'heavy vault suit',0,3,3),(4,'battle armor',0,4,4),(5,'sturdy battle armor',0,5,5),(6,'heavy battle armor',2,6,6),(7,'combat armor',3,7,7),(8,'sturdy combat armor',4,8,8),(9,'heavy combat armor',7,9,9),(10,'formal wear',1,10,10),(11,'fancy formal wear',2,11,11),(12,'lucky formal wear',6,12,12),(13,'handyman jumpsuit',0,13,13),(14,'advanced jumpsuit',3,14,14),(15,'expert jumpsuit',4,15,15),(16,'lab coat',1,16,16),(17,'advanced lab coat',4,17,17),(18,'expert lab coat',6,18,18),(19,'leather armor',5,19,19),(20,'sturdy leather armor',2,20,20),(21,'heavy leather armor',3,21,21),(22,'merc gear',3,22,22),(23,'sturdy merc gear',0,23,23),(24,'heavy merc gear',5,24,24),(25,'military fatigues',0,25,25),(26,'officer fatigues',0,26,26),(27,'commander fatigues',1,27,27),(28,'nightwear',2,28,28),(29,'naughty nightwear',1,29,29),(30,'lucky nightwear',8,30,30),(31,'junior officer uniform',0,31,31),(32,'officer uniform',1,32,32),(33,'commander uniform',1,33,33),(34,'radiation suit',0,34,34),(35,'advanced radiation suit',0,35,35),(36,'expert radiation suit',7,36,36),(37,'raider armor',0,37,37),(38,'sturdy raider armor',3,38,38),(39,'heavy raider armor',0,39,39),(40,'initiate robe',7,40,40),(41,'scribe robe',0,41,41),(42,'wasteland gear',1,42,42),(43,'sturdy wasteland gear',1,43,43),(44,'heavy wasteland gear',2,44,44),(45,'wasteland medic',1,45,45),(46,'wasteland doctor',1,46,46),(47,'wasteland surgeon',1,47,47),(48,'treasure hunter gear',0,48,48),(49,'bounty hunter gear',1,49,49),(50,'mutant hunter gear',6,50,50),(51,'flight suit',0,51,51),(52,'advanced flight suit',5,52,52),(53,'expert flight suit',2,53,53),(54,'bos uniform',2,54,54),(55,'advanced bos uniform',6,55,55),(56,'expert bos uniform',1,56,56),(57,'sturdy metal armor',5,57,57),(58,'heavy metal armor',6,58,58),(59,'advanced institute jumper',2,59,59),(60,'expert institute jumper',0,60,60),(61,'mechanic jumpsuit',0,61,61),(62,'robco factory uniform',0,62,62),(63,'polka dot sundress',1,63,63),(64,'pre-war suburbanite',2,64,64),(65,'rural schoolmarm',8,65,65),(66,'spring casualwear',0,66,66),(67,'vault socialite',1,67,67),(68,'accountant outfit',1,68,68),(69,'agent provocateur',0,69,69),(70,'bespoke attire',3,70,70),(71,'business suit',0,71,71),(72,'country girl',0,72,72),(73,'waitress uniform',3,73,73),(74,'ncr ranger outfit',1,74,74),(75,'robco red suit',1,75,75),(76,'robot armor',4,76,76),(77,'bowling shirt',4,77,77),(78,'clergy outfit',4,78,78),(79,'swing dress',3,79,79),(80,'comedian outfit',3,80,80),(81,'doo-wop singer',4,81,81),(82,'drag racer',1,82,82),(83,'post-war casanova',0,83,83),(84,'soda fountain dress',3,84,84),(85,'elf outfit',0,85,85),(86,'engineer outfit',0,86,86),(87,'ghost costume',5,87,87),(88,'greaser outfit',0,88,88),(89,'horror fan outfit',4,89,89),(90,'knight armor',4,90,90),(91,'librarian outfit',1,91,91),(92,'mayor outfit',9,92,92),(93,'medieval ruler outfit',4,93,93),(94,'motorcycle jacket',1,94,94),(95,'movie fan outfit',0,95,95),(96,'ninja outfit',0,96,96),(97,'nobility outfit',0,97,97),(98,'pilgrim outfit',1,98,98),(99,'professor outfit',0,99,99),(100,'republic robes',3,100,100),(101,'santa suit',7,101,101),(102,'sci-fi fan outfit',0,102,102),(103,'skeleton costume',0,103,103),(104,'soldier uniform',0,104,104),(105,'sports fan outfit',3,105,105),(106,'surgeon outfit',1,106,106),(107,'survivor armor',1,107,107),(108,'wrestler outfit',4,108,108),(109,'baseball uniform',5,109,109),(110,'lifeguard outfit',2,110,110),(111,'swimsuit',0,111,111),(112,'abraham\'s relaxedwear',0,112,112),(113,'tattered longcoat',0,113,113),(114,'autumn\'s uniform',3,114,114),(115,'bittercup\'s outfit',2,115,115),(116,'confessor cromwell\'s rags',6,116,116),(117,'elder robe',9,117,117),(118,'eulogy jones\' suit',2,118,118),(119,'heavy synth armor',2,119,119),(120,'incognito leisurewear',3,120,120),(121,'minuteman uniform',3,121,121),(122,'piper\'s outfit',5,122,122),(123,'scribe rothchild\'s robe',6,123,123),(124,'sheriff\'s duster',0,124,124),(125,'tenpenny\'s suit',1,125,125),(126,'three dog\'s outfit',3,126,126),(127,'tunnel snakes\' outfit',3,127,127),(128,'rackie jobinson\'s jersey',4,128,128),(129,'detective outfit',0,129,129),(130,'original santa suit',3,130,130),(131,'death\'s jacket',2,131,131),(132,'famine\'s vestment',2,132,132),(133,'pestilence\'s plating',7,133,133),(134,'war\'s armor',0,134,134),(135,'alien space suit',6,135,135),(136,'t-45a power armor',0,136,136),(137,'t-45d power armor',7,137,137),(138,'t-45f power armor',9,138,138),(139,'t-51a power armor',8,139,139),(140,'t-51d power armor',3,140,140),(141,'t-51f power armor',1,141,141),(142,'t-60a power armor',5,142,142),(143,'t-60d power armor',1,143,143),(144,'t-60f power armor',0,144,144),(145,'x-01 mk i power armor',3,145,145),(146,'x-01 mk iv power armor',7,146,146),(147,'x-01 mk vi power armor',0,147,147),(148,'cross\' power armor',5,148,148),(149,'lyon\'s pride armor',4,149,149),(150,'jericho\'s leather armor',1,150,150),(151,'elder lyon\'s robe',0,151,151),(152,'harkness\' security uniform',3,152,152),(153,'moira\'s robco jumpsuit',5,153,153),(154,'mr. burke\'s businesswear',0,154,154),(155,'amata\'s jumpsuit',6,155,155),(156,'dad\'s lab uniform',0,156,156),(157,'doctor li\'s outfit',3,157,157),(158,'robco rd suit',1,890,453);
/*!40000 ALTER TABLE `tb_outfit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pet`
--

DROP TABLE IF EXISTS `tb_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pet` (
  `id_pet` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_pet`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_storage_tb_pet` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pet`
--

LOCK TABLES `tb_pet` WRITE;
/*!40000 ALTER TABLE `tb_pet` DISABLE KEYS */;
INSERT INTO `tb_pet` VALUES (1,'﻿zula','Damage resistance',0,372),(2,'sterling','Wasteland caps',3,373),(3,'shadow','Health',2,374),(4,'ashes','Healing speed',5,375),(5,'cloudy','Crafting cost',1,376),(6,'diamond','Crafting cost',1,377),(7,'merlin','Crafting time',0,378),(8,'luna','Wasteland junk',0,379),(9,'pouncer','Wasteland junk',0,380),(10,'static','Wasteland junk',1,381),(11,'calypso','Damage',0,382),(12,'bangor','Training time',1,383),(13,'genius','Twins chance',5,384),(14,'shakespeare','Twins chance',0,385),(15,'stubbs','Twins chance',3,386),(16,'speckle','Wasteland weapons & outfits',0,387),(17,'cinder','Wasteland junk',0,388),(18,'mr. pebbles','Happiness',3,389),(19,'pugsley','Uninterrupted Training',1,390),(20,'ginger','XP',0,391),(21,'goblet','Rad healing speed',0,392),(22,'saffron','Crafting time',2,393),(23,'bastet','Wasteland return speed',0,394),(24,'kato','Stranger chance',3,395),(25,'duchess','Child SPECIALs',2,396),(26,'pumpkin','Child SPECIALs',0,397),(27,'kabosu','Stranger chance',0,398),(28,'kuma','Stranger chance',1,399),(29,'bandit','Child SPECIALs',6,400),(30,'muttface','Training time',0,401),(31,'duke','Wasteland junk',1,402),(32,'moose','Wasteland junk',0,403),(33,'valentine','Wasteland junk',3,404),(34,'scavver','XP',0,405),(35,'gaston','Crafting time & cost',0,406),(36,'four score','Wasteland caps',0,407),(37,'pal','Crafting cost',0,408),(38,'bigsby','Crafting cost',1,409),(39,'lucky','Twins chance',4,410),(40,'pongo','Twins chance',0,411),(41,'apolda','Healing speed',2,412),(42,'goliath','Crafting cost',3,413),(43,'mr. peepers','Rad healing speed',0,414),(44,'cocoa bean','Wasteland return speed',4,415),(45,'dogmeat','Objective completion',0,416),(46,'cindy','Wasteland weapons & outfits',2,417),(47,'little helper','Crafting time',0,418),(48,'trench','Wasteland return speed',0,419),(49,'hulk','Damage',0,420),(50,'ranger','Damage',0,421),(51,'titan','Damage',3,422),(52,'lord puffington','Happiness',2,423),(53,'maizie rai','Health',0,424),(54,'barry','Wasteland junk',1,425),(55,'alien drone','Damage',0,426),(56,'wanderer','Damage resistance',0,427),(57,'butch','Damage',0,428),(58,'polly','Damage',1,429),(59,'pip','Objective completion',0,430),(60,'vinnie','Objective completion',1,431);
/*!40000 ALTER TABLE `tb_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_quest`
--

DROP TABLE IF EXISTS `tb_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_quest` (
  `id_quest` int NOT NULL AUTO_INCREMENT,
  `description` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`id_quest`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_quest`
--

LOCK TABLES `tb_quest` WRITE;
/*!40000 ALTER TABLE `tb_quest` DISABLE KEYS */;
INSERT INTO `tb_quest` VALUES (1,'teste','2022-04-05','2023-06-09'),(2,'teste','2022-04-20','2023-06-09'),(3,'teste','2022-04-03','2023-06-09'),(4,'teste','2022-04-28','2023-06-09'),(5,'teste','2022-05-09','2023-06-09'),(6,'teste','2022-06-26','2023-06-09'),(7,'teste','2022-06-14','2023-06-09'),(8,'teste','2022-06-11','2023-06-09'),(9,'teste','2022-06-14','2023-06-09'),(10,'teste','2022-06-13','2023-06-09'),(11,'teste','2022-06-26','2023-06-09'),(12,'teste','2022-06-21','2023-06-09'),(13,'teste','2022-06-14','2023-06-09'),(14,'teste','2022-06-08','2023-06-09'),(15,'teste','2022-07-05','2023-06-09'),(16,'teste','2022-07-26','2023-06-09'),(17,'teste','2022-07-06','2023-06-09'),(18,'teste','2022-07-28','2023-06-09'),(19,'teste','2022-07-21','2023-06-09'),(20,'teste','2022-07-08','2023-06-09'),(21,'teste','2022-07-25','2023-06-09'),(22,'teste','2022-07-17','2023-06-09'),(23,'teste','2022-07-02','2023-06-09'),(24,'teste','2022-07-17','2023-06-09'),(25,'teste','2022-07-01','2023-06-09'),(26,'teste','2022-07-11','2023-06-09'),(27,'teste','2022-08-15','2023-06-09'),(28,'teste','2022-08-13','2023-06-09'),(29,'teste','2022-08-17','2023-06-09'),(30,'teste','2022-08-24','2023-06-09'),(31,'teste','2022-08-25','2023-06-09'),(32,'teste','2022-08-24','2023-06-09'),(33,'teste','2022-08-26','2023-06-09'),(34,'teste','2022-08-15','2023-06-09'),(35,'teste','2022-08-28','2023-06-09'),(36,'teste','2022-08-24','2023-06-09'),(37,'teste','2022-08-11','2023-06-09'),(38,'teste','2022-08-19','2023-06-09'),(39,'teste','2022-08-14','2023-06-09'),(40,'teste','2022-08-18','2023-06-09'),(41,'teste','2022-08-18','2023-06-09'),(42,'teste','2022-08-23','2023-06-09'),(43,'teste','2022-09-05','2023-06-09'),(44,'teste','2022-09-10','2023-06-09'),(45,'teste','2022-09-11','2023-06-09'),(46,'teste','2022-09-20','2023-06-09'),(47,'teste','2022-09-09','2023-06-09'),(48,'teste','2022-09-28','2023-06-09'),(49,'teste','2022-09-22','2023-06-09'),(50,'teste','2022-09-06','2023-06-09'),(51,'teste','2022-09-24','2023-06-09'),(52,'teste','2022-09-06','2023-06-09'),(53,'teste','2022-09-07','2023-06-09'),(54,'teste','2022-09-21','2023-06-09'),(55,'teste','2022-09-23','2023-06-09'),(56,'teste','2022-09-16','2023-06-09'),(57,'teste','2022-09-05','2023-06-09'),(58,'teste','2022-09-09','2023-06-09'),(59,'teste','2022-09-19','2023-06-09'),(60,'teste','2022-09-02','2023-06-09'),(61,'teste','2022-09-07','2023-06-09'),(62,'teste','2022-09-13','2023-06-09'),(63,'teste','2022-10-28','2023-06-09'),(64,'teste','2022-10-14','2023-06-09'),(65,'teste','2022-10-06','2023-06-09'),(66,'teste','2022-10-11','2023-06-09'),(67,'teste','2022-10-16','2023-06-09'),(68,'teste','2022-10-03','2023-06-09'),(69,'teste','2022-10-14','2023-06-09'),(70,'teste','2022-10-24','2023-06-09'),(71,'teste','2022-10-25','2023-06-09'),(72,'teste','2022-10-09','2023-06-09'),(73,'teste','2022-10-19','2023-06-09'),(74,'teste','2022-10-17','2023-06-09'),(75,'teste','2022-10-05','2023-06-09'),(76,'teste','2022-10-01','2023-06-09'),(77,'teste','2022-10-11','2023-06-09'),(78,'teste','2022-10-01','2023-06-09'),(79,'teste','2022-10-15','2023-06-09'),(80,'teste','2022-10-04','2023-06-09'),(81,'teste','2022-10-19','2023-06-09'),(82,'teste','2022-10-18','2023-06-09'),(83,'teste','2022-10-03','2023-06-09'),(84,'teste','2022-10-04','2023-06-09'),(85,'teste','2022-10-05','2023-06-09'),(86,'teste','2022-11-12','2023-06-09'),(87,'teste','2022-11-28','2023-06-09'),(88,'teste','2022-11-08','2023-06-09'),(89,'teste','2022-11-13','2023-06-09'),(90,'teste','2022-11-17','2023-06-09'),(91,'teste','2022-11-12','2023-06-09'),(92,'teste','2022-11-05','2023-06-09'),(93,'teste','2022-11-01','2023-06-09'),(94,'teste','2022-11-27','2023-06-09'),(95,'teste','2022-11-14','2023-06-09'),(96,'teste','2022-11-07','2023-06-09'),(97,'teste','2022-11-14','2023-06-09'),(98,'teste','2022-11-24','2023-06-09'),(99,'teste','2022-11-21','2023-06-09'),(100,'teste','2022-11-04','2023-06-09'),(101,'teste','2022-11-13','2023-06-09'),(102,'teste','2022-11-05','2023-06-09'),(103,'teste','2022-11-15','2023-06-09'),(104,'teste','2022-11-24','2023-06-09'),(105,'teste','2022-11-18','2023-06-09'),(106,'teste','2022-11-12','2023-06-09'),(107,'teste','2022-12-02','2023-06-09'),(108,'teste','2022-12-07','2023-06-09'),(109,'teste','2022-12-02','2023-06-09'),(110,'teste','2022-12-18','2023-06-09'),(111,'teste','2022-12-16','2023-06-09'),(112,'teste','2022-12-10','2023-06-09'),(113,'teste','2022-12-20','2023-06-09'),(114,'teste','2022-12-18','2023-06-09'),(115,'teste','2022-12-25','2023-06-09'),(116,'teste','2022-12-01','2023-06-09'),(117,'teste','2022-12-18','2023-06-09'),(118,'teste','2022-12-10','2023-06-09'),(119,'teste','2022-12-02','2023-06-09'),(120,'teste','2022-12-14','2023-06-09'),(121,'teste','2022-12-10','2023-06-09'),(122,'teste','2022-12-10','2023-06-09'),(123,'teste','2022-12-11','2023-06-09'),(124,'teste','2022-12-17','2023-06-09'),(125,'teste','2022-12-13','2023-06-09'),(126,'teste','2022-12-15','2023-06-09'),(127,'teste','2022-12-22','2023-06-09');
/*!40000 ALTER TABLE `tb_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_room`
--

DROP TABLE IF EXISTS `tb_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_room` (
  `id_room` int NOT NULL AUTO_INCREMENT,
  `size` int NOT NULL,
  `floor` int NOT NULL,
  `id_room_type` int NOT NULL,
  PRIMARY KEY (`id_room`),
  KEY `fk_id_room_type_tb_room` (`id_room_type`),
  CONSTRAINT `fk_id_room_type_tb_room` FOREIGN KEY (`id_room_type`) REFERENCES `tb_room_type` (`id_room_type`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_room`
--

LOCK TABLES `tb_room` WRITE;
/*!40000 ALTER TABLE `tb_room` DISABLE KEYS */;
INSERT INTO `tb_room` VALUES (1,2,1,1),(2,2,1,9),(3,3,1,21),(4,3,2,10),(5,2,2,6),(6,3,2,14),(7,3,3,16),(8,2,3,6),(9,3,3,2),(10,3,4,19),(11,2,4,6),(12,3,4,18),(13,3,5,23),(14,2,5,6),(15,3,5,15),(16,3,6,17),(17,2,6,6),(18,3,6,18),(19,3,7,22),(20,2,7,6),(21,3,7,12),(22,3,8,7),(23,2,8,6),(24,3,8,2),(25,3,9,7),(26,2,9,6),(27,3,9,22),(28,3,10,5),(29,2,10,6),(30,3,10,14),(31,3,11,18),(32,2,11,6),(33,3,11,23),(34,3,12,20),(35,2,12,6),(36,3,12,24),(37,3,13,3),(38,2,13,6),(39,3,13,8),(40,3,14,5),(41,2,14,6),(42,3,14,14),(43,3,15,25),(44,2,15,6),(45,3,15,8),(46,3,16,15),(47,2,16,6),(48,3,16,16),(49,3,17,17),(50,2,17,6),(51,3,17,4),(52,3,18,22),(53,2,18,6),(54,3,18,17),(55,3,19,12),(56,2,19,6),(57,3,19,23),(58,3,20,11),(59,2,20,6),(60,3,20,8),(61,3,21,23),(62,2,21,6),(63,3,21,25),(64,3,22,11),(65,2,22,6),(66,3,22,8),(67,3,23,2),(68,2,23,6),(69,3,23,20),(70,3,24,20),(71,2,24,6),(72,3,24,22),(73,3,25,19),(74,2,25,6),(75,3,25,13);
/*!40000 ALTER TABLE `tb_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_room_type`
--

DROP TABLE IF EXISTS `tb_room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_room_type` (
  `id_room_type` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `job` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_room_type`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_room_type`
--

LOCK TABLES `tb_room_type` WRITE;
/*!40000 ALTER TABLE `tb_room_type` DISABLE KEYS */;
INSERT INTO `tb_room_type` VALUES (1,'Vault door','security'),(2,'Living room','unemployed'),(3,'Power generator','electrician'),(4,'Diner','chef'),(5,'Water treatment','plumber'),(6,'Storage room','stockist'),(7,'Medbay','scientist'),(8,'Science lab','scientist'),(9,'Overseer\'s office','explorer'),(10,'Radio studio','broadcaster'),(11,'Weapon workshop','gun maker'),(12,'Weight room','unemployed'),(13,'Athletics room','unemployed'),(14,'Armory','unemployed'),(15,'Classroom','unemployed'),(16,'Outfit workshop','clothing manufacturer'),(17,'Fitness room','unemployed'),(18,'Lounge','unemployed'),(19,'Theme workshop','theme maker'),(20,'Game room','unemployed'),(21,'Barbershop','-'),(22,'Nuclear reactor','electrician'),(23,'Garden','chef'),(24,'Water purification','plumber'),(25,'Nuka-Cola bottler','nuka cola producer');
/*!40000 ALTER TABLE `tb_room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sale`
--

DROP TABLE IF EXISTS `tb_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sale` (
  `id_sale` int NOT NULL AUTO_INCREMENT,
  `id_product` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `profit` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id_sale`),
  KEY `fk_id_product_tb_sale` (`id_product`),
  CONSTRAINT `fk_id_product_tb_sale` FOREIGN KEY (`id_product`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=1052 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sale`
--

LOCK TABLES `tb_sale` WRITE;
/*!40000 ALTER TABLE `tb_sale` DISABLE KEYS */;
INSERT INTO `tb_sale` VALUES (1,355,1,12,'2022-01-14'),(2,347,1,5,'2022-01-17'),(3,200,1,8,'2022-01-09'),(4,417,1,11,'2022-01-04'),(5,156,1,15,'2022-01-14'),(6,431,1,7,'2022-01-23'),(7,304,1,8,'2022-01-14'),(8,392,1,12,'2022-01-10'),(9,191,1,14,'2022-01-10'),(10,123,1,5,'2022-01-25'),(11,442,2,13,'2022-01-19'),(12,418,2,10,'2022-01-12'),(13,256,1,14,'2022-01-08'),(14,401,1,8,'2022-01-25'),(15,104,1,5,'2022-01-10'),(16,447,1,8,'2022-01-05'),(17,313,1,9,'2022-01-07'),(18,439,3,9,'2022-01-02'),(19,427,1,5,'2022-01-12'),(20,436,1,9,'2022-01-11'),(21,389,1,11,'2022-01-24'),(22,443,1,7,'2022-01-05'),(23,450,1,6,'2022-01-07'),(24,384,1,8,'2022-01-03'),(25,229,1,11,'2022-01-21'),(26,376,1,7,'2022-01-26'),(27,283,1,9,'2022-01-18'),(28,442,2,10,'2022-01-19'),(29,201,1,15,'2022-01-04'),(30,146,1,9,'2022-01-23'),(31,446,2,9,'2022-01-03'),(32,95,1,12,'2022-01-21'),(33,445,2,7,'2022-01-15'),(34,351,2,12,'2022-01-28'),(35,413,1,15,'2022-01-03'),(36,51,1,8,'2022-01-02'),(37,117,1,10,'2022-01-13'),(38,141,1,14,'2022-01-17'),(39,130,2,12,'2022-01-25'),(40,40,2,12,'2022-01-07'),(41,340,1,11,'2022-01-09'),(42,105,1,7,'2022-01-19'),(43,393,1,7,'2022-01-08'),(44,82,1,6,'2022-01-19'),(45,441,1,5,'2022-01-23'),(46,364,1,8,'2022-01-11'),(47,309,1,9,'2022-01-14'),(48,394,1,5,'2022-01-12'),(49,307,1,15,'2022-01-20'),(50,95,1,7,'2022-01-18'),(51,10,1,9,'2022-01-07'),(52,449,1,5,'2022-01-08'),(53,293,1,15,'2022-01-20'),(54,421,1,9,'2022-01-17'),(55,394,1,15,'2022-01-14'),(56,37,1,15,'2022-01-24'),(57,447,1,8,'2022-01-26'),(58,440,5,6,'2022-01-07'),(59,77,1,9,'2022-01-17'),(60,34,1,14,'2022-01-07'),(61,445,1,8,'2022-01-20'),(62,320,1,8,'2022-01-09'),(63,50,1,13,'2022-01-02'),(64,114,1,14,'2022-01-21'),(65,434,1,7,'2022-01-24'),(66,185,1,7,'2022-01-03'),(67,302,1,13,'2022-01-15'),(68,372,1,11,'2022-01-07'),(69,436,1,6,'2022-01-16'),(70,412,2,15,'2022-01-06'),(71,378,1,12,'2022-01-13'),(72,374,1,8,'2022-01-14'),(73,380,1,5,'2022-01-16'),(74,336,1,10,'2022-01-20'),(75,411,1,10,'2022-01-26'),(76,433,1,6,'2022-01-26'),(77,271,1,10,'2022-01-18'),(78,24,1,15,'2022-01-01'),(79,139,1,13,'2022-01-21'),(80,423,1,8,'2022-01-22'),(81,395,1,12,'2022-01-04'),(82,356,1,8,'2022-01-04'),(83,198,1,11,'2022-01-04'),(84,435,2,9,'2022-01-23'),(85,409,1,7,'2022-01-19'),(86,244,1,14,'2022-01-05'),(87,428,1,12,'2022-02-19'),(88,411,3,15,'2022-02-14'),(89,438,1,13,'2022-02-13'),(90,443,1,15,'2022-02-10'),(91,100,1,15,'2022-02-05'),(92,8,1,10,'2022-02-20'),(93,231,1,11,'2022-02-25'),(94,96,1,7,'2022-02-21'),(95,445,2,7,'2022-02-20'),(96,430,1,10,'2022-02-26'),(97,208,1,6,'2022-02-14'),(98,438,1,6,'2022-02-14'),(99,446,1,12,'2022-02-23'),(100,405,1,10,'2022-02-14'),(101,451,1,11,'2022-02-16'),(102,333,1,13,'2022-02-20'),(103,452,1,5,'2022-02-19'),(104,371,1,9,'2022-02-05'),(105,420,1,11,'2022-02-19'),(106,448,3,8,'2022-02-04'),(107,386,1,10,'2022-02-03'),(108,447,2,9,'2022-02-25'),(109,408,1,6,'2022-02-11'),(110,440,1,9,'2022-02-03'),(111,439,4,15,'2022-02-15'),(112,150,1,15,'2022-02-22'),(113,450,1,15,'2022-02-18'),(114,93,1,10,'2022-02-19'),(115,444,1,12,'2022-02-13'),(116,425,1,7,'2022-02-04'),(117,376,1,5,'2022-02-08'),(118,106,1,8,'2022-02-17'),(119,447,1,8,'2022-02-01'),(120,449,1,13,'2022-02-02'),(121,409,2,8,'2022-02-24'),(122,406,1,10,'2022-02-19'),(123,443,1,5,'2022-02-09'),(124,64,1,9,'2022-02-22'),(125,394,1,10,'2022-02-14'),(126,443,2,11,'2022-02-22'),(127,414,1,8,'2022-02-12'),(128,12,1,12,'2022-02-05'),(129,443,1,10,'2022-02-08'),(130,79,1,15,'2022-02-18'),(131,439,1,12,'2022-02-04'),(132,451,2,13,'2022-02-18'),(133,53,1,6,'2022-02-10'),(134,390,1,10,'2022-02-08'),(135,450,1,9,'2022-02-03'),(136,38,3,14,'2022-02-16'),(137,77,1,6,'2022-02-01'),(138,435,3,5,'2022-02-28'),(139,441,2,6,'2022-02-20'),(140,354,1,10,'2022-02-05'),(141,323,1,8,'2022-02-04'),(142,420,1,14,'2022-03-12'),(143,330,1,15,'2022-03-11'),(144,32,1,12,'2022-03-27'),(145,441,5,15,'2022-03-19'),(146,175,1,15,'2022-03-15'),(147,333,1,9,'2022-03-19'),(148,438,2,10,'2022-03-26'),(149,36,2,8,'2022-03-17'),(150,317,1,13,'2022-03-26'),(151,94,1,7,'2022-03-21'),(152,414,1,11,'2022-03-21'),(153,296,2,13,'2022-03-08'),(154,14,1,7,'2022-03-19'),(155,438,4,12,'2022-03-10'),(156,423,1,15,'2022-03-20'),(157,451,2,15,'2022-03-10'),(158,277,2,5,'2022-03-14'),(159,426,1,10,'2022-03-10'),(160,434,2,6,'2022-03-04'),(161,50,1,6,'2022-03-09'),(162,403,1,6,'2022-03-25'),(163,191,1,12,'2022-03-03'),(164,410,1,9,'2022-03-26'),(165,435,5,9,'2022-03-02'),(166,452,2,14,'2022-03-05'),(167,407,1,7,'2022-03-22'),(168,422,1,13,'2022-03-26'),(169,442,1,11,'2022-03-07'),(170,443,3,15,'2022-03-11'),(171,445,2,11,'2022-03-26'),(172,129,1,7,'2022-03-23'),(173,385,2,13,'2022-03-17'),(174,341,1,11,'2022-03-04'),(175,451,1,13,'2022-03-02'),(176,116,1,15,'2022-03-09'),(177,129,1,13,'2022-03-12'),(178,435,2,9,'2022-03-12'),(179,400,2,5,'2022-03-05'),(180,166,1,10,'2022-03-06'),(181,439,4,5,'2022-03-27'),(182,436,1,12,'2022-03-01'),(183,16,1,9,'2022-03-18'),(184,444,3,9,'2022-03-09'),(185,49,1,13,'2022-03-18'),(186,19,1,8,'2022-03-10'),(187,12,1,8,'2022-03-09'),(188,95,1,6,'2022-03-28'),(189,436,7,5,'2022-03-21'),(190,445,1,7,'2022-03-04'),(191,446,1,15,'2022-03-24'),(192,411,1,13,'2022-03-16'),(193,150,1,6,'2022-03-03'),(194,149,1,13,'2022-03-28'),(195,328,1,12,'2022-03-11'),(196,94,1,7,'2022-03-08'),(197,447,2,8,'2022-03-10'),(198,60,1,5,'2022-03-09'),(199,447,2,7,'2022-03-06'),(200,138,1,8,'2022-03-05'),(201,383,1,11,'2022-03-18'),(202,261,1,6,'2022-03-21'),(203,354,1,6,'2022-03-08'),(204,440,2,12,'2022-03-23'),(205,378,1,5,'2022-03-20'),(206,107,1,5,'2022-03-24'),(207,432,1,15,'2022-03-16'),(208,452,1,5,'2022-03-17'),(209,416,2,5,'2022-03-14'),(210,409,1,6,'2022-04-07'),(211,385,1,8,'2022-04-15'),(212,445,3,13,'2022-04-08'),(213,433,2,15,'2022-04-08'),(214,171,1,5,'2022-04-13'),(215,429,3,9,'2022-04-27'),(216,410,1,6,'2022-04-24'),(217,413,2,12,'2022-04-21'),(218,399,2,8,'2022-04-15'),(219,444,3,6,'2022-04-23'),(220,383,1,5,'2022-04-01'),(221,434,2,5,'2022-04-26'),(222,377,4,13,'2022-04-16'),(223,442,6,14,'2022-04-17'),(224,149,1,11,'2022-04-08'),(225,158,1,13,'2022-04-23'),(226,404,1,6,'2022-04-14'),(227,261,1,11,'2022-04-21'),(228,450,3,12,'2022-04-28'),(229,305,1,11,'2022-04-22'),(230,388,1,10,'2022-04-07'),(231,443,2,6,'2022-04-25'),(232,418,2,5,'2022-04-19'),(233,376,1,5,'2022-04-22'),(234,59,1,9,'2022-04-18'),(235,440,1,13,'2022-04-28'),(236,442,1,13,'2022-04-22'),(237,438,1,10,'2022-04-26'),(238,451,1,7,'2022-04-14'),(239,62,2,9,'2022-04-09'),(240,446,1,14,'2022-04-09'),(241,247,1,14,'2022-04-05'),(242,168,1,12,'2022-04-15'),(243,274,2,12,'2022-04-18'),(244,452,8,9,'2022-04-28'),(245,438,1,15,'2022-04-28'),(246,58,1,10,'2022-04-03'),(247,425,1,15,'2022-04-18'),(248,378,1,15,'2022-04-19'),(249,434,1,8,'2022-04-14'),(250,127,1,6,'2022-04-02'),(251,439,3,11,'2022-04-10'),(252,116,1,15,'2022-04-24'),(253,443,1,14,'2022-04-14'),(254,234,1,5,'2022-04-16'),(255,283,1,8,'2022-04-27'),(256,107,1,9,'2022-04-19'),(257,323,1,12,'2022-04-04'),(258,401,1,12,'2022-04-21'),(259,440,2,11,'2022-04-13'),(260,270,1,9,'2022-04-07'),(261,146,1,9,'2022-04-08'),(262,328,1,5,'2022-04-23'),(263,268,1,5,'2022-04-21'),(264,121,1,9,'2022-04-17'),(265,373,1,10,'2022-04-05'),(266,72,1,14,'2022-04-28'),(267,52,1,9,'2022-04-04'),(268,311,1,11,'2022-04-19'),(269,252,1,9,'2022-04-28'),(270,426,2,12,'2022-04-19'),(271,222,1,10,'2022-04-24'),(272,38,1,8,'2022-04-21'),(273,402,1,8,'2022-04-01'),(274,421,1,12,'2022-04-01'),(275,106,1,7,'2022-05-25'),(276,445,3,9,'2022-05-01'),(277,446,1,12,'2022-05-22'),(278,138,1,7,'2022-05-24'),(279,437,1,15,'2022-05-04'),(280,74,1,15,'2022-05-19'),(281,434,2,8,'2022-05-17'),(282,381,1,11,'2022-05-11'),(283,376,1,13,'2022-05-15'),(284,437,1,5,'2022-05-19'),(285,403,1,6,'2022-05-16'),(286,432,5,7,'2022-05-02'),(287,36,1,12,'2022-05-05'),(288,433,2,7,'2022-05-01'),(289,442,4,13,'2022-05-04'),(290,425,3,10,'2022-05-11'),(291,67,1,8,'2022-05-06'),(292,26,1,13,'2022-05-21'),(293,79,1,12,'2022-05-06'),(294,76,1,13,'2022-05-20'),(295,290,1,11,'2022-05-16'),(296,131,1,15,'2022-05-24'),(297,283,1,6,'2022-05-03'),(298,451,1,14,'2022-05-19'),(299,53,1,5,'2022-05-01'),(300,432,2,12,'2022-05-25'),(301,415,2,5,'2022-05-02'),(302,235,1,7,'2022-05-19'),(303,304,1,11,'2022-05-01'),(304,381,2,10,'2022-05-14'),(305,449,1,12,'2022-05-16'),(306,429,1,5,'2022-05-28'),(307,440,3,6,'2022-05-20'),(308,316,1,15,'2022-05-16'),(309,439,2,10,'2022-05-04'),(310,435,9,7,'2022-05-12'),(311,374,1,12,'2022-05-02'),(312,422,2,11,'2022-05-07'),(313,448,1,10,'2022-05-13'),(314,415,1,14,'2022-05-03'),(315,334,1,13,'2022-05-26'),(316,51,1,15,'2022-05-20'),(317,56,1,13,'2022-05-18'),(318,34,1,9,'2022-05-20'),(319,127,1,5,'2022-05-12'),(320,401,1,11,'2022-05-28'),(321,2,1,15,'2022-05-11'),(322,448,9,13,'2022-05-04'),(323,269,1,7,'2022-05-18'),(324,369,1,6,'2022-05-26'),(325,123,1,10,'2022-05-17'),(326,432,1,7,'2022-05-20'),(327,10,1,11,'2022-05-05'),(328,155,1,14,'2022-05-21'),(329,449,2,8,'2022-05-16'),(330,221,1,10,'2022-05-27'),(331,439,1,15,'2022-05-21'),(332,247,1,10,'2022-05-26'),(333,447,7,14,'2022-05-08'),(334,210,2,15,'2022-05-27'),(335,351,2,8,'2022-05-07'),(336,220,1,8,'2022-05-21'),(337,298,1,6,'2022-05-25'),(338,370,1,7,'2022-05-07'),(339,342,1,12,'2022-05-04'),(340,438,3,13,'2022-05-17'),(341,449,4,15,'2022-05-26'),(342,14,1,12,'2022-05-12'),(343,424,1,5,'2022-05-13'),(344,33,1,15,'2022-05-02'),(345,17,2,6,'2022-05-19'),(346,359,1,10,'2022-05-13'),(347,172,1,15,'2022-05-20'),(348,409,1,5,'2022-05-13'),(349,439,2,6,'2022-06-11'),(350,420,1,6,'2022-06-11'),(351,445,11,11,'2022-06-05'),(352,449,4,15,'2022-06-27'),(353,28,1,6,'2022-06-07'),(354,432,4,9,'2022-06-03'),(355,50,1,13,'2022-06-20'),(356,237,1,12,'2022-06-01'),(357,110,1,5,'2022-06-09'),(358,430,2,12,'2022-06-15'),(359,375,2,13,'2022-06-18'),(360,404,1,8,'2022-06-12'),(361,89,2,13,'2022-06-16'),(362,390,2,11,'2022-06-27'),(363,441,2,10,'2022-06-17'),(364,448,1,13,'2022-06-21'),(365,24,2,8,'2022-06-26'),(366,363,2,8,'2022-06-08'),(367,448,2,12,'2022-06-23'),(368,380,1,15,'2022-06-11'),(369,114,2,10,'2022-06-22'),(370,449,2,14,'2022-06-07'),(371,442,8,10,'2022-06-11'),(372,416,1,10,'2022-06-20'),(373,285,1,15,'2022-06-24'),(374,379,1,15,'2022-06-24'),(375,389,1,12,'2022-06-07'),(376,386,5,10,'2022-06-04'),(377,432,1,12,'2022-06-21'),(378,452,3,11,'2022-06-19'),(379,64,1,11,'2022-06-14'),(380,97,1,7,'2022-06-13'),(381,37,1,8,'2022-06-21'),(382,378,1,5,'2022-06-22'),(383,345,1,12,'2022-06-07'),(384,317,1,8,'2022-06-08'),(385,358,1,14,'2022-06-18'),(386,137,1,7,'2022-06-05'),(387,448,4,6,'2022-06-26'),(388,139,2,7,'2022-06-14'),(389,446,3,12,'2022-06-12'),(390,69,1,10,'2022-06-04'),(391,397,1,5,'2022-06-28'),(392,426,2,15,'2022-06-13'),(393,443,1,15,'2022-06-23'),(394,67,1,11,'2022-06-20'),(395,445,5,11,'2022-06-02'),(396,168,1,5,'2022-06-08'),(397,451,2,6,'2022-06-04'),(398,448,1,5,'2022-06-17'),(399,443,1,11,'2022-06-20'),(400,450,5,6,'2022-06-28'),(401,199,1,7,'2022-06-18'),(402,440,6,15,'2022-06-14'),(403,442,1,15,'2022-06-15'),(404,428,2,7,'2022-06-15'),(405,168,1,6,'2022-06-07'),(406,433,1,11,'2022-06-09'),(407,353,1,14,'2022-06-06'),(408,146,1,14,'2022-06-02'),(409,447,1,5,'2022-06-22'),(410,257,3,13,'2022-06-03'),(411,447,1,14,'2022-06-13'),(412,412,1,8,'2022-06-06'),(413,451,1,6,'2022-06-21'),(414,217,1,12,'2022-06-26'),(415,451,2,7,'2022-06-21'),(416,427,1,6,'2022-06-24'),(417,18,1,15,'2022-06-09'),(418,215,1,14,'2022-06-28'),(419,393,1,11,'2022-06-16'),(420,372,1,9,'2022-07-07'),(421,126,3,8,'2022-07-22'),(422,439,11,6,'2022-07-04'),(423,438,1,10,'2022-07-07'),(424,85,1,8,'2022-07-07'),(425,412,1,8,'2022-07-01'),(426,448,5,7,'2022-07-26'),(427,385,1,6,'2022-07-19'),(428,447,3,11,'2022-07-28'),(429,172,1,11,'2022-07-26'),(430,327,1,11,'2022-07-06'),(431,448,1,15,'2022-07-17'),(432,399,1,14,'2022-07-28'),(433,92,3,7,'2022-07-07'),(434,398,1,10,'2022-07-27'),(435,161,1,13,'2022-07-21'),(436,138,1,5,'2022-07-19'),(437,335,1,13,'2022-07-28'),(438,379,1,5,'2022-07-27'),(439,448,1,12,'2022-07-10'),(440,150,1,14,'2022-07-08'),(441,438,4,7,'2022-07-03'),(442,336,1,5,'2022-07-24'),(443,38,1,7,'2022-07-18'),(444,450,7,6,'2022-07-27'),(445,104,1,14,'2022-07-24'),(446,191,2,14,'2022-07-16'),(447,437,6,12,'2022-07-09'),(448,436,4,6,'2022-07-02'),(449,110,1,7,'2022-07-07'),(450,95,1,10,'2022-07-15'),(451,433,2,7,'2022-07-26'),(452,440,2,9,'2022-07-09'),(453,296,1,7,'2022-07-13'),(454,425,2,5,'2022-07-15'),(455,339,1,9,'2022-07-19'),(456,443,6,10,'2022-07-26'),(457,17,1,10,'2022-07-04'),(458,447,2,11,'2022-07-05'),(459,10,1,5,'2022-07-21'),(460,377,1,11,'2022-07-07'),(461,442,2,7,'2022-07-09'),(462,432,2,13,'2022-07-14'),(463,254,1,14,'2022-07-15'),(464,16,2,11,'2022-07-28'),(465,85,1,14,'2022-07-21'),(466,442,7,8,'2022-07-14'),(467,56,1,14,'2022-07-21'),(468,112,2,14,'2022-07-14'),(469,441,12,11,'2022-07-13'),(470,171,1,10,'2022-07-12'),(471,228,1,6,'2022-07-18'),(472,450,2,12,'2022-07-13'),(473,178,1,7,'2022-07-15'),(474,443,2,11,'2022-07-10'),(475,416,1,7,'2022-07-16'),(476,452,6,9,'2022-07-16'),(477,437,3,9,'2022-07-02'),(478,169,1,7,'2022-07-19'),(479,301,1,15,'2022-07-08'),(480,22,2,9,'2022-07-07'),(481,4,1,8,'2022-07-13'),(482,451,6,12,'2022-07-01'),(483,369,1,6,'2022-07-01'),(484,310,1,14,'2022-07-16'),(485,37,2,13,'2022-07-05'),(486,400,3,11,'2022-07-28'),(487,443,2,9,'2022-07-19'),(488,446,5,9,'2022-07-26'),(489,167,1,7,'2022-07-22'),(490,407,1,7,'2022-07-28'),(491,236,3,5,'2022-07-01'),(492,420,1,6,'2022-07-04'),(493,414,1,5,'2022-07-06'),(494,436,8,15,'2022-07-17'),(495,316,1,5,'2022-07-08'),(496,399,1,12,'2022-07-05'),(497,449,11,11,'2022-07-01'),(498,262,2,15,'2022-07-03'),(499,452,6,11,'2022-07-22'),(500,7,2,5,'2022-07-10'),(501,14,2,10,'2022-07-05'),(502,318,1,12,'2022-07-22'),(503,434,3,15,'2022-07-01'),(504,21,1,6,'2022-07-09'),(505,82,1,5,'2022-07-05'),(506,252,1,8,'2022-07-11'),(507,139,1,12,'2022-07-07'),(508,246,2,6,'2022-07-24'),(509,5,1,12,'2022-07-22'),(510,419,2,13,'2022-07-08'),(511,434,3,6,'2022-07-25'),(512,426,1,7,'2022-08-08'),(513,311,2,8,'2022-08-11'),(514,271,1,9,'2022-08-02'),(515,8,1,9,'2022-08-14'),(516,361,1,11,'2022-08-11'),(517,129,1,7,'2022-08-11'),(518,339,1,12,'2022-08-18'),(519,151,1,14,'2022-08-26'),(520,2,3,12,'2022-08-18'),(521,189,1,7,'2022-08-11'),(522,60,1,15,'2022-08-11'),(523,209,1,12,'2022-08-14'),(524,403,1,8,'2022-08-25'),(525,441,9,11,'2022-08-19'),(526,4,2,11,'2022-08-17'),(527,96,4,11,'2022-08-08'),(528,379,1,7,'2022-08-26'),(529,304,1,9,'2022-08-03'),(530,301,1,14,'2022-08-06'),(531,436,18,5,'2022-08-04'),(532,445,22,13,'2022-08-15'),(533,357,2,10,'2022-08-11'),(534,429,1,14,'2022-08-03'),(535,369,1,11,'2022-08-24'),(536,390,1,5,'2022-08-12'),(537,157,1,12,'2022-08-07'),(538,451,5,10,'2022-08-01'),(539,52,1,6,'2022-08-02'),(540,168,1,12,'2022-08-17'),(541,434,3,5,'2022-08-06'),(542,432,10,12,'2022-08-05'),(543,58,1,13,'2022-08-04'),(544,34,5,7,'2022-08-05'),(545,400,1,14,'2022-08-17'),(546,444,11,6,'2022-08-13'),(547,433,6,5,'2022-08-07'),(548,255,1,12,'2022-08-23'),(549,450,2,12,'2022-08-04'),(550,434,1,10,'2022-08-07'),(551,441,1,11,'2022-08-28'),(552,442,12,11,'2022-08-08'),(553,439,10,12,'2022-08-14'),(554,425,1,5,'2022-08-23'),(555,287,2,12,'2022-08-07'),(556,191,1,5,'2022-08-20'),(557,442,9,13,'2022-08-23'),(558,420,1,7,'2022-08-16'),(559,334,1,5,'2022-08-15'),(560,378,3,15,'2022-08-13'),(561,437,9,8,'2022-08-17'),(562,393,5,6,'2022-08-24'),(563,412,2,6,'2022-08-16'),(564,252,1,15,'2022-08-17'),(565,427,1,9,'2022-08-09'),(566,434,10,12,'2022-08-23'),(567,145,1,12,'2022-08-15'),(568,382,2,10,'2022-08-09'),(569,445,1,5,'2022-08-23'),(570,69,2,14,'2022-08-07'),(571,435,3,6,'2022-08-25'),(572,449,7,5,'2022-08-03'),(573,178,1,12,'2022-08-09'),(574,222,2,8,'2022-08-06'),(575,205,2,15,'2022-08-07'),(576,236,1,11,'2022-08-06'),(577,20,2,13,'2022-08-15'),(578,237,1,7,'2022-08-27'),(579,117,2,5,'2022-08-26'),(580,323,1,9,'2022-08-19'),(581,451,4,14,'2022-08-27'),(582,94,1,12,'2022-08-07'),(583,185,6,5,'2022-08-23'),(584,84,1,6,'2022-08-10'),(585,269,1,8,'2022-08-17'),(586,247,1,7,'2022-08-23'),(587,443,4,12,'2022-08-04'),(588,53,1,10,'2022-08-23'),(589,44,2,9,'2022-08-01'),(590,376,1,15,'2022-08-26'),(591,428,1,6,'2022-08-16'),(592,153,1,11,'2022-08-09'),(593,128,1,11,'2022-08-25'),(594,296,1,15,'2022-08-04'),(595,199,2,13,'2022-08-28'),(596,430,1,10,'2022-08-04'),(597,307,1,12,'2022-08-03'),(598,328,2,6,'2022-08-16'),(599,72,1,14,'2022-08-12'),(600,80,3,11,'2022-08-16'),(601,422,1,11,'2022-08-25'),(602,262,4,10,'2022-08-18'),(603,27,2,7,'2022-08-25'),(604,439,2,12,'2022-08-09'),(605,450,1,9,'2022-08-08'),(606,340,3,8,'2022-08-19'),(607,339,1,10,'2022-08-04'),(608,202,3,6,'2022-08-21'),(609,170,3,13,'2022-08-10'),(610,385,2,12,'2022-08-02'),(611,414,1,15,'2022-08-21'),(612,397,2,12,'2022-08-21'),(613,28,3,6,'2022-08-22'),(614,451,3,12,'2022-08-18'),(615,221,1,13,'2022-08-03'),(616,441,2,12,'2022-08-22'),(617,21,1,12,'2022-08-12'),(618,3,2,15,'2022-08-25'),(619,433,3,12,'2022-08-12'),(620,437,1,6,'2022-08-11'),(621,277,2,11,'2022-08-05'),(622,429,2,9,'2022-08-04'),(623,399,1,8,'2022-08-13'),(624,43,1,11,'2022-09-19'),(625,411,2,7,'2022-09-28'),(626,115,3,14,'2022-09-21'),(627,387,1,8,'2022-09-16'),(628,445,7,9,'2022-09-28'),(629,446,8,15,'2022-09-12'),(630,429,1,6,'2022-09-09'),(631,440,5,13,'2022-09-28'),(632,434,10,15,'2022-09-11'),(633,153,2,12,'2022-09-26'),(634,153,1,15,'2022-09-16'),(635,391,2,15,'2022-09-27'),(636,296,1,7,'2022-09-24'),(637,414,1,13,'2022-09-19'),(638,442,9,11,'2022-09-08'),(639,443,5,12,'2022-09-18'),(640,445,3,11,'2022-09-27'),(641,34,2,11,'2022-09-22'),(642,383,2,6,'2022-09-17'),(643,444,16,5,'2022-09-27'),(644,408,2,12,'2022-09-10'),(645,398,1,13,'2022-09-25'),(646,62,3,8,'2022-09-02'),(647,160,1,6,'2022-09-04'),(648,421,1,15,'2022-09-14'),(649,1,3,10,'2022-09-28'),(650,446,1,9,'2022-09-10'),(651,358,1,14,'2022-09-14'),(652,259,4,7,'2022-09-13'),(653,28,1,5,'2022-09-02'),(654,255,3,5,'2022-09-28'),(655,65,1,8,'2022-09-12'),(656,67,1,9,'2022-09-09'),(657,164,5,14,'2022-09-24'),(658,337,5,9,'2022-09-23'),(659,69,1,11,'2022-09-11'),(660,437,7,14,'2022-09-20'),(661,295,2,11,'2022-09-13'),(662,287,1,13,'2022-09-21'),(663,261,1,7,'2022-09-17'),(664,432,6,13,'2022-09-14'),(665,53,1,12,'2022-09-20'),(666,333,5,5,'2022-09-26'),(667,185,2,9,'2022-09-02'),(668,218,1,8,'2022-09-03'),(669,68,2,9,'2022-09-03'),(670,381,1,6,'2022-09-23'),(671,449,23,5,'2022-09-20'),(672,91,1,7,'2022-09-05'),(673,443,4,8,'2022-09-16'),(674,438,7,7,'2022-09-24'),(675,11,2,8,'2022-09-04'),(676,50,1,15,'2022-09-21'),(677,310,1,5,'2022-09-18'),(678,394,1,8,'2022-09-27'),(679,79,2,12,'2022-09-26'),(680,436,12,12,'2022-09-19'),(681,271,1,9,'2022-09-05'),(682,433,6,11,'2022-09-15'),(683,219,1,6,'2022-09-19'),(684,101,3,15,'2022-09-07'),(685,72,1,10,'2022-09-21'),(686,437,7,7,'2022-09-28'),(687,441,7,13,'2022-09-18'),(688,372,1,6,'2022-09-14'),(689,448,20,8,'2022-09-02'),(690,405,4,14,'2022-09-16'),(691,140,1,5,'2022-09-06'),(692,431,1,14,'2022-09-12'),(693,122,4,13,'2022-09-25'),(694,444,2,9,'2022-09-19'),(695,11,1,11,'2022-09-15'),(696,261,2,5,'2022-09-24'),(697,317,1,8,'2022-09-01'),(698,234,1,15,'2022-09-06'),(699,378,1,11,'2022-09-27'),(700,364,1,5,'2022-09-12'),(701,164,1,13,'2022-09-19'),(702,180,1,13,'2022-09-20'),(703,444,3,15,'2022-09-09'),(704,358,1,6,'2022-09-24'),(705,440,1,10,'2022-09-18'),(706,330,1,6,'2022-09-15'),(707,451,2,10,'2022-09-10'),(708,29,2,8,'2022-09-19'),(709,219,1,10,'2022-09-10'),(710,318,1,5,'2022-09-24'),(711,393,1,5,'2022-09-19'),(712,33,3,14,'2022-09-24'),(713,189,6,10,'2022-09-14'),(714,449,3,10,'2022-09-05'),(715,95,2,15,'2022-09-04'),(716,281,2,10,'2022-09-07'),(717,200,3,13,'2022-09-18'),(718,440,7,14,'2022-09-01'),(719,397,1,14,'2022-09-03'),(720,442,1,11,'2022-09-26'),(721,417,2,5,'2022-09-25'),(722,347,2,7,'2022-09-26'),(723,9,1,8,'2022-09-15'),(724,432,1,6,'2022-09-05'),(725,432,3,7,'2022-09-19'),(726,79,1,6,'2022-09-16'),(727,452,5,5,'2022-09-14'),(728,138,1,11,'2022-09-27'),(729,35,2,15,'2022-09-14'),(730,220,2,7,'2022-09-24'),(731,104,6,13,'2022-09-16'),(732,54,1,7,'2022-09-23'),(733,32,1,13,'2022-10-14'),(734,33,3,6,'2022-10-01'),(735,415,1,13,'2022-10-15'),(736,350,1,10,'2022-10-12'),(737,447,26,8,'2022-10-10'),(738,389,2,13,'2022-10-26'),(739,106,1,9,'2022-10-07'),(740,129,2,6,'2022-10-25'),(741,121,1,11,'2022-10-15'),(742,440,11,7,'2022-10-20'),(743,379,1,15,'2022-10-01'),(744,318,4,6,'2022-10-04'),(745,436,7,13,'2022-10-05'),(746,441,1,14,'2022-10-22'),(747,195,3,12,'2022-10-13'),(748,436,7,14,'2022-10-09'),(749,448,15,10,'2022-10-22'),(750,437,9,5,'2022-10-18'),(751,432,10,8,'2022-10-05'),(752,451,11,10,'2022-10-04'),(753,184,4,7,'2022-10-12'),(754,414,1,8,'2022-10-14'),(755,301,3,15,'2022-10-23'),(756,229,1,8,'2022-10-22'),(757,251,3,11,'2022-10-02'),(758,446,11,7,'2022-10-24'),(759,388,1,15,'2022-10-12'),(760,435,1,15,'2022-10-03'),(761,438,10,15,'2022-10-02'),(762,22,5,7,'2022-10-04'),(763,149,2,15,'2022-10-03'),(764,267,1,14,'2022-10-25'),(765,67,3,5,'2022-10-15'),(766,402,1,8,'2022-10-27'),(767,301,1,9,'2022-10-20'),(768,452,12,8,'2022-10-21'),(769,141,3,10,'2022-10-04'),(770,435,13,15,'2022-10-07'),(771,433,9,7,'2022-10-07'),(772,44,1,10,'2022-10-24'),(773,298,3,11,'2022-10-27'),(774,162,5,11,'2022-10-24'),(775,217,1,12,'2022-10-22'),(776,422,2,15,'2022-10-10'),(777,265,2,8,'2022-10-25'),(778,449,11,8,'2022-10-02'),(779,78,5,6,'2022-10-09'),(780,394,1,14,'2022-10-18'),(781,443,13,7,'2022-10-04'),(782,333,1,15,'2022-10-06'),(783,7,2,6,'2022-10-24'),(784,81,1,9,'2022-10-07'),(785,446,2,6,'2022-10-16'),(786,410,1,8,'2022-10-14'),(787,426,1,7,'2022-10-03'),(788,426,1,11,'2022-10-10'),(789,438,3,7,'2022-10-15'),(790,37,3,5,'2022-10-26'),(791,116,3,13,'2022-10-15'),(792,432,3,6,'2022-10-22'),(793,450,31,10,'2022-10-19'),(794,143,1,8,'2022-10-23'),(795,127,4,13,'2022-10-18'),(796,145,3,10,'2022-10-17'),(797,444,4,7,'2022-10-28'),(798,80,3,10,'2022-10-02'),(799,440,7,12,'2022-10-11'),(800,21,2,10,'2022-10-14'),(801,20,3,13,'2022-10-13'),(802,245,1,13,'2022-10-17'),(803,290,1,14,'2022-10-07'),(804,452,2,7,'2022-10-05'),(805,299,2,15,'2022-10-08'),(806,234,1,10,'2022-10-25'),(807,97,3,11,'2022-10-05'),(808,445,11,7,'2022-10-04'),(809,370,3,10,'2022-10-03'),(810,163,2,10,'2022-10-21'),(811,396,2,15,'2022-10-01'),(812,5,1,15,'2022-10-06'),(813,441,1,7,'2022-10-11'),(814,448,2,13,'2022-10-25'),(815,243,1,8,'2022-10-25'),(816,439,3,11,'2022-10-17'),(817,208,2,14,'2022-10-01'),(818,441,4,14,'2022-10-24'),(819,202,2,14,'2022-10-16'),(820,131,4,7,'2022-10-27'),(821,45,2,11,'2022-10-01'),(822,185,1,9,'2022-10-06'),(823,446,1,14,'2022-10-17'),(824,80,1,15,'2022-10-04'),(825,9,2,7,'2022-10-01'),(826,424,1,5,'2022-10-26'),(827,51,2,10,'2022-10-09'),(828,442,19,13,'2022-10-21'),(829,439,17,14,'2022-10-20'),(830,358,2,10,'2022-10-07'),(831,269,2,12,'2022-11-16'),(832,430,1,5,'2022-11-06'),(833,436,3,13,'2022-11-06'),(834,294,5,5,'2022-11-01'),(835,440,13,12,'2022-11-11'),(836,81,1,7,'2022-11-18'),(837,433,3,9,'2022-11-25'),(838,155,5,9,'2022-11-19'),(839,27,1,13,'2022-11-09'),(840,160,1,5,'2022-11-09'),(841,439,11,8,'2022-11-15'),(842,124,2,8,'2022-11-01'),(843,108,3,5,'2022-11-20'),(844,229,1,7,'2022-11-10'),(845,148,2,8,'2022-11-18'),(846,446,2,11,'2022-11-17'),(847,219,3,11,'2022-11-17'),(848,3,1,14,'2022-11-01'),(849,440,2,10,'2022-11-17'),(850,252,1,13,'2022-11-23'),(851,432,16,8,'2022-11-23'),(852,295,1,15,'2022-11-12'),(853,250,2,15,'2022-11-27'),(854,408,2,12,'2022-11-15'),(855,358,1,6,'2022-11-11'),(856,432,3,5,'2022-11-10'),(857,83,1,14,'2022-11-28'),(858,138,1,6,'2022-11-19'),(859,447,11,7,'2022-11-16'),(860,104,2,11,'2022-11-22'),(861,64,4,6,'2022-11-09'),(862,443,6,6,'2022-11-12'),(863,312,2,8,'2022-11-22'),(864,420,1,11,'2022-11-28'),(865,444,3,12,'2022-11-26'),(866,443,1,15,'2022-11-23'),(867,452,7,7,'2022-11-19'),(868,401,1,15,'2022-11-20'),(869,333,2,14,'2022-11-01'),(870,416,1,15,'2022-11-08'),(871,370,3,9,'2022-11-18'),(872,112,3,6,'2022-11-12'),(873,307,1,11,'2022-11-03'),(874,26,2,8,'2022-11-13'),(875,448,10,9,'2022-11-03'),(876,436,3,6,'2022-11-15'),(877,437,15,9,'2022-11-02'),(878,31,1,10,'2022-11-22'),(879,384,2,5,'2022-11-22'),(880,85,3,7,'2022-11-22'),(881,211,1,14,'2022-11-09'),(882,281,1,11,'2022-11-19'),(883,445,2,6,'2022-11-25'),(884,451,16,15,'2022-11-20'),(885,179,2,11,'2022-11-19'),(886,69,2,9,'2022-11-10'),(887,441,2,11,'2022-11-06'),(888,440,4,11,'2022-11-26'),(889,438,4,8,'2022-11-27'),(890,175,1,6,'2022-11-18'),(891,172,1,13,'2022-11-28'),(892,72,2,12,'2022-11-27'),(893,396,2,7,'2022-11-01'),(894,452,2,11,'2022-11-21'),(895,114,2,12,'2022-11-17'),(896,125,4,7,'2022-11-14'),(897,310,5,8,'2022-11-08'),(898,276,2,8,'2022-11-05'),(899,397,1,13,'2022-11-16'),(900,425,1,9,'2022-11-10'),(901,378,1,6,'2022-11-15'),(902,382,6,6,'2022-11-25'),(903,452,1,13,'2022-11-17'),(904,199,1,6,'2022-11-22'),(905,339,1,14,'2022-11-17'),(906,54,1,6,'2022-11-12'),(907,222,2,10,'2022-11-17'),(908,85,1,13,'2022-11-16'),(909,381,1,14,'2022-11-11'),(910,184,1,8,'2022-11-12'),(911,446,10,15,'2022-11-22'),(912,46,1,11,'2022-11-19'),(913,131,2,8,'2022-11-20'),(914,106,3,12,'2022-11-08'),(915,438,12,6,'2022-11-10'),(916,34,1,15,'2022-11-22'),(917,324,3,6,'2022-11-17'),(918,451,1,12,'2022-11-19'),(919,347,2,5,'2022-11-06'),(920,393,2,7,'2022-11-25'),(921,284,2,9,'2022-11-16'),(922,443,2,8,'2022-11-01'),(923,245,1,14,'2022-11-01'),(924,69,1,9,'2022-11-08'),(925,423,2,5,'2022-11-05'),(926,300,2,7,'2022-11-20'),(927,206,2,8,'2022-11-17'),(928,338,2,15,'2022-11-04'),(929,447,6,15,'2022-11-08'),(930,427,1,6,'2022-11-04'),(931,213,1,8,'2022-11-23'),(932,72,1,12,'2022-11-24'),(933,405,2,8,'2022-11-23'),(934,435,13,5,'2022-11-18'),(935,376,2,15,'2022-11-25'),(936,5,2,9,'2022-11-05'),(937,380,2,7,'2022-11-28'),(938,432,1,11,'2022-11-24'),(939,413,4,15,'2022-11-17'),(940,276,1,8,'2022-11-02'),(941,60,6,11,'2022-12-11'),(942,252,1,6,'2022-12-09'),(943,237,2,15,'2022-12-26'),(944,10,1,15,'2022-12-18'),(945,276,1,13,'2022-12-12'),(946,441,9,5,'2022-12-11'),(947,360,1,9,'2022-12-13'),(948,228,2,9,'2022-12-26'),(949,189,2,5,'2022-12-01'),(950,102,1,5,'2022-12-18'),(951,271,1,14,'2022-12-11'),(952,387,1,15,'2022-12-08'),(953,42,4,8,'2022-12-13'),(954,290,2,7,'2022-12-14'),(955,173,3,8,'2022-12-10'),(956,160,3,8,'2022-12-05'),(957,430,1,6,'2022-12-02'),(958,433,13,7,'2022-12-01'),(959,438,20,7,'2022-12-02'),(960,206,1,15,'2022-12-07'),(961,185,1,5,'2022-12-08'),(962,85,1,7,'2022-12-19'),(963,438,6,12,'2022-12-07'),(964,383,1,12,'2022-12-13'),(965,385,1,15,'2022-12-20'),(966,403,4,6,'2022-12-25'),(967,411,2,14,'2022-12-01'),(968,312,1,11,'2022-12-21'),(969,341,2,13,'2022-12-24'),(970,222,3,11,'2022-12-25'),(971,426,1,11,'2022-12-24'),(972,229,4,14,'2022-12-07'),(973,279,2,11,'2022-12-01'),(974,151,4,13,'2022-12-20'),(975,84,1,12,'2022-12-09'),(976,14,2,9,'2022-12-26'),(977,443,14,13,'2022-12-19'),(978,341,1,5,'2022-12-09'),(979,261,4,11,'2022-12-04'),(980,168,2,13,'2022-12-18'),(981,50,1,11,'2022-12-03'),(982,434,34,7,'2022-12-23'),(983,302,2,13,'2022-12-16'),(984,444,5,9,'2022-12-14'),(985,38,1,14,'2022-12-23'),(986,372,1,10,'2022-12-24'),(987,47,3,10,'2022-12-06'),(988,443,1,6,'2022-12-13'),(989,343,1,5,'2022-12-12'),(990,193,2,9,'2022-12-21'),(991,276,2,12,'2022-12-20'),(992,448,11,9,'2022-12-04'),(993,56,1,11,'2022-12-14'),(994,309,5,13,'2022-12-11'),(995,137,1,5,'2022-12-20'),(996,307,2,5,'2022-12-07'),(997,19,3,8,'2022-12-16'),(998,302,2,11,'2022-12-06'),(999,20,1,6,'2022-12-22'),(1000,83,1,12,'2022-12-26'),(1001,33,1,8,'2022-12-05'),(1002,443,2,8,'2022-12-11'),(1003,3,2,8,'2022-12-20'),(1004,179,1,9,'2022-12-07'),(1005,392,1,14,'2022-12-20'),(1006,374,1,11,'2022-12-04'),(1007,432,9,13,'2022-12-24'),(1008,448,1,12,'2022-12-14'),(1009,274,2,8,'2022-12-23'),(1010,74,3,10,'2022-12-06'),(1011,407,1,10,'2022-12-23'),(1012,130,4,10,'2022-12-22'),(1013,450,8,14,'2022-12-05'),(1014,103,2,7,'2022-12-02'),(1015,359,1,14,'2022-12-13'),(1016,193,2,8,'2022-12-01'),(1017,187,5,12,'2022-12-19'),(1018,446,8,12,'2022-12-18'),(1019,152,2,13,'2022-12-21'),(1020,451,1,9,'2022-12-25'),(1021,31,4,11,'2022-12-04'),(1022,432,6,13,'2022-12-04'),(1023,436,7,5,'2022-12-14'),(1024,391,5,11,'2022-12-06'),(1025,96,4,13,'2022-12-02'),(1026,390,1,13,'2022-12-10'),(1027,282,10,13,'2022-12-06'),(1028,112,4,8,'2022-12-03'),(1029,136,1,13,'2022-12-02'),(1030,342,3,8,'2022-12-01'),(1031,242,2,14,'2022-12-20'),(1032,151,1,10,'2022-12-14'),(1033,311,1,10,'2022-12-12'),(1034,442,2,10,'2022-12-11'),(1035,436,6,7,'2022-12-27'),(1036,413,1,13,'2022-12-23'),(1037,436,1,7,'2022-12-15'),(1038,43,2,6,'2022-12-17'),(1039,304,2,10,'2022-12-13'),(1040,158,1,14,'2022-12-25'),(1041,427,1,5,'2022-12-03'),(1042,435,19,9,'2022-12-03'),(1043,447,16,8,'2022-12-18'),(1044,237,1,10,'2022-12-05'),(1045,35,3,13,'2022-12-16'),(1046,435,11,15,'2022-12-14'),(1047,406,3,10,'2022-12-22'),(1048,439,14,15,'2022-12-19'),(1049,269,1,6,'2022-12-01'),(1050,129,2,5,'2022-12-06'),(1051,97,5,9,'2022-12-20');
/*!40000 ALTER TABLE `tb_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_scrap`
--

DROP TABLE IF EXISTS `tb_scrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_scrap` (
  `id_scrap` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `scrap_quantity` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_scrap`),
  KEY `fk_id_product_tb_scrap` (`id_product`),
  CONSTRAINT `fk_id_product_tb_scrap` FOREIGN KEY (`id_product`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_scrap`
--

LOCK TABLES `tb_scrap` WRITE;
/*!40000 ALTER TABLE `tb_scrap` DISABLE KEYS */;
INSERT INTO `tb_scrap` VALUES (1,178,1,'2022-01-05'),(2,433,1,'2022-01-05'),(3,74,1,'2022-01-05'),(4,435,1,'2022-01-05'),(5,221,1,'2022-01-05'),(6,433,1,'2022-01-05'),(7,301,1,'2022-01-05'),(8,446,1,'2022-01-05'),(9,26,1,'2022-01-05'),(10,448,2,'2022-01-05'),(11,22,2,'2022-01-05'),(12,445,1,'2022-01-05'),(13,97,1,'2022-01-05'),(14,55,1,'2022-01-05'),(15,445,3,'2022-01-05'),(16,447,1,'2022-01-05'),(17,433,1,'2022-01-05'),(18,29,1,'2022-01-05'),(19,443,1,'2022-01-05'),(20,433,1,'2022-01-05'),(21,434,7,'2022-01-05'),(22,168,1,'2022-01-05'),(23,450,1,'2022-01-05'),(24,443,1,'2022-01-05'),(25,439,3,'2022-01-05'),(26,439,2,'2022-01-05'),(27,447,2,'2022-01-05'),(28,442,1,'2022-01-05'),(29,448,4,'2022-01-05'),(30,50,1,'2022-02-04'),(31,355,1,'2022-02-04'),(32,437,1,'2022-02-04'),(33,181,1,'2022-02-04'),(34,448,1,'2022-02-04'),(35,445,1,'2022-02-04'),(36,437,1,'2022-02-04'),(37,442,4,'2022-02-04'),(38,434,3,'2022-02-04'),(39,168,1,'2022-02-04'),(40,189,1,'2022-02-04'),(41,434,6,'2022-02-04'),(42,447,2,'2022-02-04'),(43,448,2,'2022-02-04'),(44,142,1,'2022-02-04'),(45,445,1,'2022-02-04'),(46,59,1,'2022-02-04'),(47,336,1,'2022-02-04'),(48,443,2,'2022-02-04'),(49,229,1,'2022-02-04'),(50,449,1,'2022-02-04'),(51,335,1,'2022-02-04'),(52,7,1,'2022-02-04'),(53,27,1,'2022-02-04'),(54,437,1,'2022-02-04'),(55,293,1,'2022-02-04'),(56,437,4,'2022-02-04'),(57,184,1,'2022-02-04'),(58,450,2,'2022-02-04'),(59,449,1,'2022-02-04'),(60,445,1,'2022-02-04'),(61,98,2,'2022-02-04'),(62,445,1,'2022-02-04'),(63,452,3,'2022-02-04'),(64,442,1,'2022-02-04'),(65,200,1,'2022-03-14'),(66,246,1,'2022-03-14'),(67,2,1,'2022-03-14'),(68,158,1,'2022-03-14'),(69,350,1,'2022-03-14'),(70,181,1,'2022-03-14'),(71,220,1,'2022-03-14'),(72,110,1,'2022-03-14'),(73,309,1,'2022-03-14'),(74,448,5,'2022-03-14'),(75,432,5,'2022-03-14'),(76,432,1,'2022-03-14'),(77,443,1,'2022-03-14'),(78,436,2,'2022-03-14'),(79,264,1,'2022-03-14'),(80,195,1,'2022-03-14'),(81,444,1,'2022-03-14'),(82,324,1,'2022-03-14'),(83,435,1,'2022-03-14'),(84,215,1,'2022-03-14'),(85,449,2,'2022-03-14'),(86,450,2,'2022-03-14'),(87,442,5,'2022-03-14'),(88,447,2,'2022-03-14'),(89,221,1,'2022-03-14'),(90,448,2,'2022-03-14'),(91,340,1,'2022-03-14'),(92,452,2,'2022-03-14'),(93,5,1,'2022-03-14'),(94,436,6,'2022-04-01'),(95,108,1,'2022-04-01'),(96,449,2,'2022-04-01'),(97,436,1,'2022-04-01'),(98,334,1,'2022-04-01'),(99,162,1,'2022-04-01'),(100,315,1,'2022-04-01'),(101,450,1,'2022-04-01'),(102,446,3,'2022-04-01'),(103,215,1,'2022-04-01'),(104,52,1,'2022-04-01'),(105,436,1,'2022-04-01'),(106,213,1,'2022-04-01'),(107,447,3,'2022-04-01'),(108,451,1,'2022-04-01'),(109,440,1,'2022-04-01'),(110,302,1,'2022-04-01'),(111,237,1,'2022-04-01'),(112,440,4,'2022-04-01'),(113,133,2,'2022-04-01'),(114,435,6,'2022-04-01'),(115,452,1,'2022-04-01'),(116,189,1,'2022-04-01'),(117,118,1,'2022-04-01'),(118,366,1,'2022-04-01'),(119,37,1,'2022-04-01'),(120,208,1,'2022-04-01'),(121,438,1,'2022-04-01'),(122,3,2,'2022-04-01'),(123,440,1,'2022-04-01'),(124,441,5,'2022-04-01'),(125,432,1,'2022-04-01'),(126,446,3,'2022-04-01'),(127,437,2,'2022-04-01'),(128,451,1,'2022-04-01'),(129,452,4,'2022-04-01'),(130,334,1,'2022-04-01'),(131,205,1,'2022-04-01'),(132,446,3,'2022-04-01'),(133,438,2,'2022-05-13'),(134,444,1,'2022-05-13'),(135,178,1,'2022-05-13'),(136,438,1,'2022-05-13'),(137,437,4,'2022-05-13'),(138,445,1,'2022-05-13'),(139,69,1,'2022-05-13'),(140,163,2,'2022-05-13'),(141,177,1,'2022-05-13'),(142,16,1,'2022-05-13'),(143,449,1,'2022-05-13'),(144,433,1,'2022-05-13'),(145,447,1,'2022-05-13'),(146,151,1,'2022-05-13'),(147,441,2,'2022-05-13'),(148,155,1,'2022-05-13'),(149,450,4,'2022-05-13'),(150,171,1,'2022-05-13'),(151,439,1,'2022-05-13'),(152,106,1,'2022-05-13'),(153,205,1,'2022-05-13'),(154,312,1,'2022-05-13'),(155,102,1,'2022-05-13'),(156,213,1,'2022-05-13'),(157,72,1,'2022-05-13'),(158,452,2,'2022-05-13'),(159,441,4,'2022-05-13'),(160,56,1,'2022-05-13'),(161,433,2,'2022-05-13'),(162,222,1,'2022-05-13'),(163,443,1,'2022-05-13'),(164,432,3,'2022-05-13'),(165,447,2,'2022-05-13'),(166,127,1,'2022-05-13'),(167,446,1,'2022-05-13'),(168,447,1,'2022-05-13'),(169,434,2,'2022-05-13'),(170,440,1,'2022-05-13'),(171,450,8,'2022-05-13'),(172,318,1,'2022-06-16'),(173,434,1,'2022-06-16'),(174,3,3,'2022-06-16'),(175,306,2,'2022-06-16'),(176,252,1,'2022-06-16'),(177,195,2,'2022-06-16'),(178,181,1,'2022-06-16'),(179,15,1,'2022-06-16'),(180,21,1,'2022-06-16'),(181,447,1,'2022-06-16'),(182,433,3,'2022-06-16'),(183,186,1,'2022-06-16'),(184,145,1,'2022-06-16'),(185,220,1,'2022-06-16'),(186,22,1,'2022-06-16'),(187,447,1,'2022-06-16'),(188,370,2,'2022-06-16'),(189,443,2,'2022-06-16'),(190,339,2,'2022-06-16'),(191,439,3,'2022-06-16'),(192,436,2,'2022-06-16'),(193,442,2,'2022-06-16'),(194,89,1,'2022-06-16'),(195,448,3,'2022-06-16'),(196,449,2,'2022-06-16'),(197,445,2,'2022-06-16'),(198,164,1,'2022-06-16'),(199,438,6,'2022-06-16'),(200,203,1,'2022-06-16'),(201,439,2,'2022-06-16'),(202,187,1,'2022-06-16'),(203,435,1,'2022-06-16'),(204,441,4,'2022-06-16'),(205,444,2,'2022-06-16'),(206,443,1,'2022-06-16'),(207,437,1,'2022-06-16'),(208,451,2,'2022-06-16'),(209,437,6,'2022-06-16'),(210,327,1,'2022-06-16'),(211,438,4,'2022-06-16'),(212,36,1,'2022-06-16'),(213,169,2,'2022-06-16'),(214,447,1,'2022-06-16'),(215,91,2,'2022-06-16'),(216,20,3,'2022-06-16'),(217,447,1,'2022-06-16'),(218,228,1,'2022-06-16'),(219,235,1,'2022-06-16'),(220,3,1,'2022-07-25'),(221,8,1,'2022-07-25'),(222,133,2,'2022-07-25'),(223,107,1,'2022-07-25'),(224,444,9,'2022-07-25'),(225,198,1,'2022-07-25'),(226,444,4,'2022-07-25'),(227,11,1,'2022-07-25'),(228,449,1,'2022-07-25'),(229,452,1,'2022-07-25'),(230,243,1,'2022-07-25'),(231,305,1,'2022-07-25'),(232,62,1,'2022-07-25'),(233,434,3,'2022-07-25'),(234,299,1,'2022-07-25'),(235,444,1,'2022-07-25'),(236,69,1,'2022-07-25'),(237,298,1,'2022-07-25'),(238,448,1,'2022-07-25'),(239,449,1,'2022-07-25'),(240,452,2,'2022-07-25'),(241,19,1,'2022-07-25'),(242,296,1,'2022-07-25'),(243,439,1,'2022-07-25'),(244,205,1,'2022-07-25'),(245,128,2,'2022-07-25'),(246,442,1,'2022-07-25'),(247,432,8,'2022-07-25'),(248,437,5,'2022-07-25'),(249,451,1,'2022-07-25'),(250,306,1,'2022-07-25'),(251,252,1,'2022-07-25'),(252,295,1,'2022-07-25'),(253,445,2,'2022-07-25'),(254,40,2,'2022-07-25'),(255,447,1,'2022-07-25'),(256,195,1,'2022-07-25'),(257,261,2,'2022-07-25'),(258,52,1,'2022-07-25'),(259,449,8,'2022-07-25'),(260,5,1,'2022-07-25'),(261,101,1,'2022-07-25'),(262,156,3,'2022-07-25'),(263,59,1,'2022-07-25'),(264,166,1,'2022-07-25'),(265,443,4,'2022-07-25'),(266,443,4,'2022-07-25'),(267,441,1,'2022-07-25'),(268,448,1,'2022-07-25'),(269,446,1,'2022-07-25'),(270,40,1,'2022-07-25'),(271,209,2,'2022-07-25'),(272,443,1,'2022-07-25'),(273,446,1,'2022-07-25'),(274,444,9,'2022-07-25'),(275,433,3,'2022-07-25'),(276,447,4,'2022-07-25'),(277,18,2,'2022-07-25'),(278,189,1,'2022-07-25'),(279,361,1,'2022-07-25'),(280,83,1,'2022-07-25'),(281,123,2,'2022-07-25'),(282,433,5,'2022-07-25'),(283,434,7,'2022-07-25'),(284,358,1,'2022-07-25'),(285,443,1,'2022-07-25'),(286,450,2,'2022-08-13'),(287,131,2,'2022-08-13'),(288,109,1,'2022-08-13'),(289,53,1,'2022-08-13'),(290,18,2,'2022-08-13'),(291,440,13,'2022-08-13'),(292,452,9,'2022-08-13'),(293,186,1,'2022-08-13'),(294,72,1,'2022-08-13'),(295,270,2,'2022-08-13'),(296,121,2,'2022-08-13'),(297,42,1,'2022-08-13'),(298,208,1,'2022-08-13'),(299,65,1,'2022-08-13'),(300,446,5,'2022-08-13'),(301,450,1,'2022-08-13'),(302,152,2,'2022-08-13'),(303,434,2,'2022-08-13'),(304,342,1,'2022-08-13'),(305,83,4,'2022-08-13'),(306,432,2,'2022-08-13'),(307,433,3,'2022-08-13'),(308,217,1,'2022-08-13'),(309,451,2,'2022-08-13'),(310,7,2,'2022-08-13'),(311,38,1,'2022-08-13'),(312,59,1,'2022-08-13'),(313,100,1,'2022-08-13'),(314,450,3,'2022-08-13'),(315,432,3,'2022-08-13'),(316,155,1,'2022-08-13'),(317,110,1,'2022-08-13'),(318,445,2,'2022-08-13'),(319,442,1,'2022-08-13'),(320,176,1,'2022-08-13'),(321,169,1,'2022-08-13'),(322,433,2,'2022-08-13'),(323,305,1,'2022-08-13'),(324,447,3,'2022-08-13'),(325,451,3,'2022-08-13'),(326,37,1,'2022-08-13'),(327,447,2,'2022-08-13'),(328,441,2,'2022-08-13'),(329,55,1,'2022-08-13'),(330,345,3,'2022-08-13'),(331,367,3,'2022-08-13'),(332,440,10,'2022-08-13'),(333,195,1,'2022-08-13'),(334,445,2,'2022-08-13'),(335,436,5,'2022-08-13'),(336,105,1,'2022-08-13'),(337,442,1,'2022-08-13'),(338,311,1,'2022-08-13'),(339,102,1,'2022-08-13'),(340,435,5,'2022-08-13'),(341,122,3,'2022-08-13'),(342,268,2,'2022-08-13'),(343,21,1,'2022-08-13'),(344,29,1,'2022-08-13'),(345,438,28,'2022-08-13'),(346,443,9,'2022-08-13'),(347,432,2,'2022-08-13'),(348,74,1,'2022-08-13'),(349,445,2,'2022-08-13'),(350,435,37,'2022-08-13'),(351,281,1,'2022-08-13'),(352,448,8,'2022-08-13'),(353,439,4,'2022-08-13'),(354,452,7,'2022-08-13'),(355,347,1,'2022-08-13'),(356,452,2,'2022-08-13'),(357,27,1,'2022-08-13'),(358,133,1,'2022-08-13'),(359,91,1,'2022-09-23'),(360,25,2,'2022-09-23'),(361,439,8,'2022-09-23'),(362,50,4,'2022-09-23'),(363,439,2,'2022-09-23'),(364,446,1,'2022-09-23'),(365,433,4,'2022-09-23'),(366,312,1,'2022-09-23'),(367,438,13,'2022-09-23'),(368,440,1,'2022-09-23'),(369,98,1,'2022-09-23'),(370,433,9,'2022-09-23'),(371,440,1,'2022-09-23'),(372,95,1,'2022-09-23'),(373,256,1,'2022-09-23'),(374,432,5,'2022-09-23'),(375,436,9,'2022-09-23'),(376,33,2,'2022-09-23'),(377,80,1,'2022-09-23'),(378,347,1,'2022-09-23'),(379,437,5,'2022-09-23'),(380,440,2,'2022-09-23'),(381,436,1,'2022-09-23'),(382,437,3,'2022-09-23'),(383,449,2,'2022-09-23'),(384,179,1,'2022-09-23'),(385,438,2,'2022-09-23'),(386,137,1,'2022-09-23'),(387,92,1,'2022-09-23'),(388,244,1,'2022-09-23'),(389,141,2,'2022-09-23'),(390,452,6,'2022-09-23'),(391,439,5,'2022-09-23'),(392,210,3,'2022-09-23'),(393,121,3,'2022-09-23'),(394,443,3,'2022-09-23'),(395,290,5,'2022-09-23'),(396,437,2,'2022-09-23'),(397,449,1,'2022-09-23'),(398,6,3,'2022-09-23'),(399,438,2,'2022-09-23'),(400,95,1,'2022-09-23'),(401,354,1,'2022-09-23'),(402,156,1,'2022-09-23'),(403,177,3,'2022-09-23'),(404,142,5,'2022-09-23'),(405,447,8,'2022-09-23'),(406,446,3,'2022-09-23'),(407,437,2,'2022-09-23'),(408,236,2,'2022-09-23'),(409,158,4,'2022-09-23'),(410,112,3,'2022-09-23'),(411,436,2,'2022-09-23'),(412,441,2,'2022-09-23'),(413,133,1,'2022-09-23'),(414,124,1,'2022-09-23'),(415,336,2,'2022-09-23'),(416,444,1,'2022-09-23'),(417,443,1,'2022-09-23'),(418,434,13,'2022-09-23'),(419,14,2,'2022-09-23'),(420,35,1,'2022-09-23'),(421,65,1,'2022-09-23'),(422,243,2,'2022-09-23'),(423,126,1,'2022-09-23'),(424,256,1,'2022-09-23'),(425,73,1,'2022-09-23'),(426,55,2,'2022-09-23'),(427,74,3,'2022-09-23'),(428,84,1,'2022-09-23'),(429,235,3,'2022-09-23'),(430,442,6,'2022-09-23'),(431,436,1,'2022-09-23'),(432,203,3,'2022-09-23'),(433,441,1,'2022-09-23'),(434,31,4,'2022-09-23'),(435,246,1,'2022-09-23'),(436,441,5,'2022-09-23'),(437,440,1,'2022-09-23'),(438,444,6,'2022-09-23'),(439,356,1,'2022-09-23'),(440,107,4,'2022-09-23'),(441,330,1,'2022-09-23'),(442,215,3,'2022-09-23'),(443,49,2,'2022-10-07'),(444,169,1,'2022-10-07'),(445,371,6,'2022-10-07'),(446,451,10,'2022-10-07'),(447,449,2,'2022-10-07'),(448,262,3,'2022-10-07'),(449,307,2,'2022-10-07'),(450,435,9,'2022-10-07'),(451,440,1,'2022-10-07'),(452,436,1,'2022-10-07'),(453,110,2,'2022-10-07'),(454,28,2,'2022-10-07'),(455,363,1,'2022-10-07'),(456,371,1,'2022-10-07'),(457,439,1,'2022-10-07'),(458,54,1,'2022-10-07'),(459,105,3,'2022-10-07'),(460,31,3,'2022-10-07'),(461,452,1,'2022-10-07'),(462,126,1,'2022-10-07'),(463,275,4,'2022-10-07'),(464,445,10,'2022-10-07'),(465,51,1,'2022-10-07'),(466,370,2,'2022-10-07'),(467,89,5,'2022-10-07'),(468,442,3,'2022-10-07'),(469,140,1,'2022-10-07'),(470,449,4,'2022-10-07'),(471,283,2,'2022-10-07'),(472,177,1,'2022-10-07'),(473,169,6,'2022-10-07'),(474,433,6,'2022-10-07'),(475,293,1,'2022-10-07'),(476,444,5,'2022-10-07'),(477,341,1,'2022-10-07'),(478,434,4,'2022-10-07'),(479,175,5,'2022-10-07'),(480,448,3,'2022-10-07'),(481,449,2,'2022-10-07'),(482,441,5,'2022-10-07'),(483,288,1,'2022-10-07'),(484,206,1,'2022-10-07'),(485,158,1,'2022-10-07'),(486,84,1,'2022-10-07'),(487,293,1,'2022-10-07'),(488,323,2,'2022-10-07'),(489,93,3,'2022-10-07'),(490,452,5,'2022-10-07'),(491,443,8,'2022-10-07'),(492,436,5,'2022-10-07'),(493,441,11,'2022-10-07'),(494,27,1,'2022-10-07'),(495,12,2,'2022-10-07'),(496,123,2,'2022-10-07'),(497,160,1,'2022-10-07'),(498,450,4,'2022-10-07'),(499,446,11,'2022-10-07'),(500,38,3,'2022-10-07'),(501,451,3,'2022-10-07'),(502,107,3,'2022-10-07'),(503,443,4,'2022-10-07'),(504,450,11,'2022-10-07'),(505,229,1,'2022-10-07'),(506,450,1,'2022-10-07'),(507,447,12,'2022-10-07'),(508,444,3,'2022-10-07'),(509,446,3,'2022-10-07'),(510,231,2,'2022-10-07'),(511,444,4,'2022-10-07'),(512,160,1,'2022-10-07'),(513,436,2,'2022-10-07'),(514,221,1,'2022-10-07'),(515,34,1,'2022-10-07'),(516,25,1,'2022-10-07'),(517,219,1,'2022-10-07'),(518,447,2,'2022-10-07'),(519,93,2,'2022-10-07'),(520,84,1,'2022-10-07'),(521,354,1,'2022-10-07'),(522,446,2,'2022-10-07'),(523,51,4,'2022-10-07'),(524,53,4,'2022-10-07'),(525,74,3,'2022-10-07'),(526,47,2,'2022-10-07'),(527,27,1,'2022-10-07'),(528,443,2,'2022-10-07'),(529,432,3,'2022-10-07'),(530,18,1,'2022-10-07'),(531,443,1,'2022-10-07'),(532,450,2,'2022-10-07'),(533,442,7,'2022-10-07'),(534,309,4,'2022-11-02'),(535,436,3,'2022-11-02'),(536,448,2,'2022-11-02'),(537,250,2,'2022-11-02'),(538,440,1,'2022-11-02'),(539,226,2,'2022-11-02'),(540,443,1,'2022-11-02'),(541,302,8,'2022-11-02'),(542,17,1,'2022-11-02'),(543,442,11,'2022-11-02'),(544,442,3,'2022-11-02'),(545,201,1,'2022-11-02'),(546,439,5,'2022-11-02'),(547,32,1,'2022-11-02'),(548,110,3,'2022-11-02'),(549,451,6,'2022-11-02'),(550,150,1,'2022-11-02'),(551,171,2,'2022-11-02'),(552,436,12,'2022-11-02'),(553,70,4,'2022-11-02'),(554,436,1,'2022-11-02'),(555,272,3,'2022-11-02'),(556,443,1,'2022-11-02'),(557,447,2,'2022-11-02'),(558,223,3,'2022-11-02'),(559,437,6,'2022-11-02'),(560,43,1,'2022-11-02'),(561,126,3,'2022-11-02'),(562,73,3,'2022-11-02'),(563,215,1,'2022-11-02'),(564,255,1,'2022-11-02'),(565,235,1,'2022-11-02'),(566,265,1,'2022-11-02'),(567,437,4,'2022-11-02'),(568,45,4,'2022-11-02'),(569,167,1,'2022-11-02'),(570,283,3,'2022-11-02'),(571,354,2,'2022-11-02'),(572,37,2,'2022-11-02'),(573,448,5,'2022-11-02'),(574,77,5,'2022-11-02'),(575,94,3,'2022-11-02'),(576,76,4,'2022-11-02'),(577,448,2,'2022-11-02'),(578,73,2,'2022-11-02'),(579,4,1,'2022-11-02'),(580,452,1,'2022-11-02'),(581,450,1,'2022-11-02'),(582,56,1,'2022-11-02'),(583,102,1,'2022-11-02'),(584,355,7,'2022-11-02'),(585,351,1,'2022-11-02'),(586,109,1,'2022-11-02'),(587,76,6,'2022-11-02'),(588,451,10,'2022-11-02'),(589,47,2,'2022-11-02'),(590,288,4,'2022-11-02'),(591,65,5,'2022-11-02'),(592,193,1,'2022-11-02'),(593,122,2,'2022-11-02'),(594,234,1,'2022-11-02'),(595,450,2,'2022-11-02'),(596,221,6,'2022-11-02'),(597,436,3,'2022-11-02'),(598,304,1,'2022-11-02'),(599,437,3,'2022-11-02'),(600,361,1,'2022-11-02'),(601,107,2,'2022-11-02'),(602,1,1,'2022-11-02'),(603,354,1,'2022-11-02'),(604,228,4,'2022-11-02'),(605,120,5,'2022-11-02'),(606,433,19,'2022-11-02'),(607,21,2,'2022-11-02'),(608,73,1,'2022-11-02'),(609,354,1,'2022-11-02'),(610,293,2,'2022-11-02'),(611,170,1,'2022-11-02'),(612,132,4,'2022-11-02'),(613,317,5,'2022-11-02'),(614,433,2,'2022-11-02'),(615,305,2,'2022-11-02'),(616,445,22,'2022-11-02'),(617,443,1,'2022-11-02'),(618,150,3,'2022-11-02'),(619,68,3,'2022-11-02'),(620,452,8,'2022-12-20'),(621,240,2,'2022-12-20'),(622,33,2,'2022-12-20'),(623,62,4,'2022-12-20'),(624,5,3,'2022-12-20'),(625,450,15,'2022-12-20'),(626,305,1,'2022-12-20'),(627,88,4,'2022-12-20'),(628,435,5,'2022-12-20'),(629,132,1,'2022-12-20'),(630,354,1,'2022-12-20'),(631,51,3,'2022-12-20'),(632,444,9,'2022-12-20'),(633,209,1,'2022-12-20'),(634,434,1,'2022-12-20'),(635,76,1,'2022-12-20'),(636,293,1,'2022-12-20'),(637,288,4,'2022-12-20'),(638,264,3,'2022-12-20'),(639,67,2,'2022-12-20'),(640,440,11,'2022-12-20'),(641,437,7,'2022-12-20'),(642,447,2,'2022-12-20'),(643,156,1,'2022-12-20'),(644,211,4,'2022-12-20'),(645,264,2,'2022-12-20'),(646,16,1,'2022-12-20'),(647,279,1,'2022-12-20'),(648,369,4,'2022-12-20'),(649,442,7,'2022-12-20'),(650,284,2,'2022-12-20'),(651,85,1,'2022-12-20'),(652,223,3,'2022-12-20'),(653,59,5,'2022-12-20'),(654,78,2,'2022-12-20'),(655,118,2,'2022-12-20'),(656,236,1,'2022-12-20'),(657,338,2,'2022-12-20'),(658,438,8,'2022-12-20'),(659,243,3,'2022-12-20'),(660,256,2,'2022-12-20'),(661,108,2,'2022-12-20'),(662,114,2,'2022-12-20'),(663,37,1,'2022-12-20'),(664,173,3,'2022-12-20'),(665,448,6,'2022-12-20'),(666,4,3,'2022-12-20'),(667,15,5,'2022-12-20'),(668,135,3,'2022-12-20'),(669,439,8,'2022-12-20'),(670,1,1,'2022-12-20'),(671,262,1,'2022-12-20'),(672,69,1,'2022-12-20'),(673,104,2,'2022-12-20'),(674,446,6,'2022-12-20'),(675,210,3,'2022-12-20'),(676,443,5,'2022-12-20'),(677,309,1,'2022-12-20'),(678,432,1,'2022-12-20'),(679,452,7,'2022-12-20'),(680,444,11,'2022-12-20'),(681,439,11,'2022-12-20'),(682,440,4,'2022-12-20'),(683,267,2,'2022-12-20'),(684,223,2,'2022-12-20'),(685,32,1,'2022-12-20'),(686,106,1,'2022-12-20'),(687,180,3,'2022-12-20'),(688,143,2,'2022-12-20'),(689,82,1,'2022-12-20'),(690,449,20,'2022-12-20'),(691,115,7,'2022-12-20'),(692,91,4,'2022-12-20'),(693,448,3,'2022-12-20'),(694,246,6,'2022-12-20'),(695,312,2,'2022-12-20'),(696,98,2,'2022-12-20'),(697,131,1,'2022-12-20'),(698,259,2,'2022-12-20'),(699,6,7,'2022-12-20'),(700,221,1,'2022-12-20'),(701,437,2,'2022-12-20'),(702,198,2,'2022-12-20'),(703,194,1,'2022-12-20'),(704,436,1,'2022-12-20');
/*!40000 ALTER TABLE `tb_scrap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_special`
--

DROP TABLE IF EXISTS `tb_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_special` (
  `id_special` int NOT NULL AUTO_INCREMENT,
  `strength` int DEFAULT NULL,
  `perception` int DEFAULT NULL,
  `endurance` int DEFAULT NULL,
  `charisma` int DEFAULT NULL,
  `intelligence` int DEFAULT NULL,
  `agility` int DEFAULT NULL,
  `luck` int DEFAULT NULL,
  `category` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_special`)
) ENGINE=InnoDB AUTO_INCREMENT=951 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_special`
--

LOCK TABLES `tb_special` WRITE;
/*!40000 ALTER TABLE `tb_special` DISABLE KEYS */;
INSERT INTO `tb_special` VALUES (1,NULL,3,NULL,NULL,NULL,NULL,NULL,'outfit'),(2,NULL,5,NULL,NULL,NULL,NULL,NULL,'outfit'),(3,NULL,7,NULL,NULL,NULL,NULL,NULL,'outfit'),(4,2,NULL,1,NULL,NULL,NULL,NULL,'outfit'),(5,3,NULL,2,NULL,NULL,NULL,NULL,'outfit'),(6,4,NULL,3,NULL,NULL,NULL,NULL,'outfit'),(7,2,NULL,NULL,NULL,NULL,1,NULL,'outfit'),(8,3,NULL,NULL,NULL,NULL,2,NULL,'outfit'),(9,4,NULL,NULL,NULL,NULL,3,NULL,'outfit'),(10,NULL,NULL,NULL,NULL,NULL,NULL,3,'outfit'),(11,NULL,NULL,NULL,NULL,NULL,NULL,5,'outfit'),(12,NULL,NULL,NULL,NULL,NULL,NULL,7,'outfit'),(13,NULL,NULL,NULL,NULL,NULL,3,NULL,'outfit'),(14,NULL,NULL,NULL,NULL,NULL,5,NULL,'outfit'),(15,NULL,NULL,NULL,NULL,NULL,7,NULL,'outfit'),(16,NULL,NULL,NULL,NULL,3,NULL,NULL,'outfit'),(17,NULL,NULL,NULL,NULL,5,NULL,NULL,'outfit'),(18,NULL,NULL,NULL,NULL,7,NULL,NULL,'outfit'),(19,1,NULL,2,NULL,NULL,NULL,NULL,'outfit'),(20,2,NULL,3,NULL,NULL,NULL,NULL,'outfit'),(21,3,NULL,4,NULL,NULL,NULL,NULL,'outfit'),(22,NULL,1,NULL,NULL,NULL,1,1,'outfit'),(23,NULL,1,NULL,NULL,NULL,2,2,'outfit'),(24,NULL,2,NULL,NULL,NULL,3,2,'outfit'),(25,3,NULL,NULL,NULL,NULL,NULL,NULL,'outfit'),(26,5,NULL,NULL,NULL,NULL,NULL,NULL,'outfit'),(27,7,NULL,NULL,NULL,NULL,NULL,NULL,'outfit'),(28,NULL,NULL,NULL,3,NULL,NULL,NULL,'outfit'),(29,NULL,NULL,NULL,5,NULL,NULL,NULL,'outfit'),(30,NULL,NULL,NULL,7,NULL,NULL,NULL,'outfit'),(31,NULL,NULL,NULL,1,2,NULL,NULL,'outfit'),(32,NULL,NULL,NULL,2,3,NULL,NULL,'outfit'),(33,NULL,NULL,NULL,3,4,NULL,NULL,'outfit'),(34,NULL,1,2,NULL,NULL,NULL,NULL,'outfit'),(35,NULL,2,3,NULL,NULL,NULL,NULL,'outfit'),(36,NULL,3,4,NULL,NULL,NULL,NULL,'outfit'),(37,NULL,1,NULL,NULL,NULL,2,NULL,'outfit'),(38,NULL,2,NULL,NULL,NULL,3,NULL,'outfit'),(39,NULL,3,NULL,NULL,NULL,4,NULL,'outfit'),(40,NULL,NULL,NULL,2,NULL,1,NULL,'outfit'),(41,NULL,NULL,NULL,3,NULL,2,NULL,'outfit'),(42,NULL,NULL,3,NULL,NULL,NULL,NULL,'outfit'),(43,NULL,NULL,5,NULL,NULL,NULL,NULL,'outfit'),(44,NULL,NULL,7,NULL,NULL,NULL,NULL,'outfit'),(45,NULL,2,NULL,NULL,NULL,NULL,1,'outfit'),(46,NULL,3,NULL,NULL,NULL,NULL,2,'outfit'),(47,NULL,4,NULL,NULL,NULL,NULL,3,'outfit'),(48,2,1,NULL,NULL,NULL,NULL,NULL,'outfit'),(49,3,2,NULL,NULL,NULL,NULL,NULL,'outfit'),(50,4,3,NULL,NULL,NULL,NULL,NULL,'outfit'),(51,NULL,NULL,1,NULL,NULL,2,NULL,'outfit'),(52,NULL,NULL,2,NULL,NULL,3,NULL,'outfit'),(53,NULL,NULL,3,NULL,NULL,4,NULL,'outfit'),(54,NULL,2,NULL,1,NULL,NULL,NULL,'outfit'),(55,NULL,3,NULL,2,NULL,NULL,NULL,'outfit'),(56,NULL,4,NULL,3,NULL,NULL,NULL,'outfit'),(57,3,NULL,NULL,NULL,NULL,NULL,2,'outfit'),(58,4,NULL,NULL,NULL,NULL,NULL,3,'outfit'),(59,NULL,NULL,NULL,NULL,3,2,NULL,'outfit'),(60,NULL,NULL,NULL,NULL,4,3,NULL,'outfit'),(61,1,NULL,NULL,1,NULL,NULL,NULL,'outfit'),(62,NULL,NULL,2,NULL,NULL,NULL,2,'outfit'),(63,1,NULL,NULL,NULL,1,NULL,NULL,'outfit'),(64,NULL,1,NULL,NULL,1,NULL,NULL,'outfit'),(65,NULL,1,1,NULL,NULL,NULL,NULL,'outfit'),(66,NULL,NULL,1,NULL,NULL,1,NULL,'outfit'),(67,NULL,NULL,NULL,1,NULL,1,NULL,'outfit'),(68,NULL,4,NULL,NULL,NULL,NULL,NULL,'outfit'),(69,NULL,NULL,NULL,NULL,4,NULL,NULL,'outfit'),(70,NULL,NULL,4,NULL,NULL,NULL,NULL,'outfit'),(71,NULL,NULL,NULL,4,NULL,NULL,NULL,'outfit'),(72,4,NULL,NULL,NULL,NULL,NULL,NULL,'outfit'),(73,NULL,NULL,NULL,NULL,NULL,4,NULL,'outfit'),(74,NULL,4,NULL,2,NULL,NULL,NULL,'outfit'),(75,NULL,NULL,2,NULL,4,NULL,NULL,'outfit'),(76,2,NULL,2,NULL,NULL,NULL,2,'outfit'),(77,NULL,6,NULL,NULL,NULL,NULL,NULL,'outfit'),(78,NULL,NULL,NULL,4,NULL,NULL,1,'outfit'),(79,NULL,NULL,NULL,NULL,NULL,6,NULL,'outfit'),(80,NULL,2,NULL,2,NULL,NULL,1,'outfit'),(81,1,NULL,NULL,1,NULL,1,1,'outfit'),(82,1,NULL,1,NULL,NULL,1,1,'outfit'),(83,NULL,1,NULL,1,1,NULL,1,'outfit'),(84,NULL,1,1,NULL,1,NULL,1,'outfit'),(85,NULL,NULL,NULL,NULL,3,NULL,2,'outfit'),(86,NULL,NULL,2,NULL,2,NULL,1,'outfit'),(87,NULL,NULL,2,NULL,NULL,3,NULL,'outfit'),(88,NULL,NULL,NULL,2,NULL,2,1,'outfit'),(89,NULL,NULL,4,NULL,NULL,NULL,1,'outfit'),(90,2,2,NULL,NULL,NULL,NULL,1,'outfit'),(91,NULL,NULL,NULL,NULL,4,NULL,1,'outfit'),(92,NULL,NULL,NULL,2,2,NULL,1,'outfit'),(93,NULL,2,NULL,2,NULL,NULL,1,'outfit'),(94,6,NULL,NULL,NULL,NULL,NULL,NULL,'outfit'),(95,NULL,4,NULL,NULL,NULL,NULL,1,'outfit'),(96,NULL,NULL,NULL,NULL,NULL,4,1,'outfit'),(97,NULL,NULL,2,NULL,2,NULL,1,'outfit'),(98,NULL,NULL,NULL,3,2,NULL,NULL,'outfit'),(99,NULL,NULL,NULL,NULL,4,NULL,1,'outfit'),(100,NULL,NULL,NULL,4,NULL,NULL,1,'outfit'),(101,NULL,3,NULL,2,NULL,NULL,NULL,'outfit'),(102,NULL,NULL,NULL,NULL,2,2,1,'outfit'),(103,2,NULL,NULL,NULL,NULL,NULL,3,'outfit'),(104,2,NULL,2,NULL,NULL,NULL,1,'outfit'),(105,4,NULL,NULL,NULL,NULL,NULL,1,'outfit'),(106,NULL,2,NULL,NULL,NULL,2,1,'outfit'),(107,2,NULL,NULL,NULL,NULL,2,1,'outfit'),(108,2,NULL,2,NULL,NULL,NULL,1,'outfit'),(109,NULL,NULL,NULL,NULL,NULL,4,1,'outfit'),(110,NULL,4,NULL,NULL,NULL,NULL,1,'outfit'),(111,NULL,NULL,2,2,NULL,NULL,1,'outfit'),(112,NULL,NULL,1,NULL,2,2,2,'outfit'),(113,2,NULL,2,2,NULL,NULL,2,'outfit'),(114,2,2,2,1,NULL,NULL,NULL,'outfit'),(115,2,2,2,1,NULL,NULL,NULL,'outfit'),(116,NULL,2,2,NULL,1,NULL,2,'outfit'),(117,NULL,NULL,NULL,4,NULL,3,NULL,'outfit'),(118,NULL,2,NULL,2,1,NULL,2,'outfit'),(119,NULL,NULL,4,NULL,3,NULL,NULL,'outfit'),(120,NULL,NULL,NULL,2,2,2,2,'outfit'),(121,2,2,NULL,NULL,2,2,NULL,'outfit'),(122,NULL,2,2,NULL,NULL,2,2,'outfit'),(123,NULL,2,1,2,2,NULL,NULL,'outfit'),(124,NULL,2,5,NULL,NULL,NULL,NULL,'outfit'),(125,NULL,2,NULL,2,2,NULL,1,'outfit'),(126,NULL,2,NULL,5,NULL,NULL,NULL,'outfit'),(127,NULL,2,1,2,NULL,2,NULL,'outfit'),(128,4,4,NULL,4,NULL,4,NULL,'outfit'),(129,NULL,4,4,NULL,4,NULL,4,'outfit'),(130,NULL,4,3,4,NULL,NULL,NULL,'outfit'),(131,NULL,4,4,NULL,NULL,4,4,'outfit'),(132,4,NULL,4,NULL,4,NULL,4,'outfit'),(133,NULL,NULL,4,4,4,4,NULL,'outfit'),(134,4,4,4,4,NULL,NULL,NULL,'outfit'),(135,NULL,2,NULL,NULL,4,2,NULL,'outfit'),(136,2,3,NULL,NULL,NULL,NULL,NULL,'outfit'),(137,2,4,NULL,NULL,NULL,NULL,NULL,'outfit'),(138,2,5,NULL,NULL,NULL,NULL,NULL,'outfit'),(139,3,1,NULL,NULL,NULL,NULL,NULL,'outfit'),(140,3,2,NULL,NULL,NULL,NULL,NULL,'outfit'),(141,4,3,NULL,NULL,NULL,NULL,NULL,'outfit'),(142,2,NULL,3,NULL,NULL,NULL,NULL,'outfit'),(143,2,NULL,4,NULL,NULL,NULL,NULL,'outfit'),(144,1,1,5,NULL,NULL,NULL,NULL,'outfit'),(145,3,1,1,NULL,NULL,NULL,NULL,'outfit'),(146,4,1,1,NULL,NULL,NULL,NULL,'outfit'),(147,5,1,1,NULL,NULL,NULL,NULL,'outfit'),(148,5,2,2,NULL,NULL,NULL,NULL,'outfit'),(149,4,3,NULL,NULL,NULL,NULL,1,'outfit'),(150,2,NULL,6,NULL,NULL,NULL,NULL,'outfit'),(151,NULL,2,1,6,2,NULL,NULL,'outfit'),(152,NULL,5,NULL,NULL,NULL,3,2,'outfit'),(153,NULL,3,1,NULL,2,NULL,NULL,'outfit'),(154,NULL,NULL,NULL,4,NULL,NULL,4,'outfit'),(155,NULL,NULL,NULL,2,2,NULL,2,'outfit'),(156,NULL,NULL,NULL,NULL,5,NULL,2,'outfit'),(157,NULL,NULL,NULL,NULL,3,NULL,2,'outfit'),(158,3,1,3,2,3,2,1,'dweller'),(159,1,3,1,3,1,3,3,'dweller'),(160,1,1,1,2,1,2,1,'dweller'),(161,1,3,3,2,3,2,3,'dweller'),(162,2,2,3,1,2,2,1,'dweller'),(163,3,2,3,3,2,1,1,'dweller'),(164,2,3,2,1,1,3,2,'dweller'),(165,2,1,2,3,3,1,2,'dweller'),(166,3,1,1,1,3,1,3,'dweller'),(167,1,1,1,3,3,3,2,'dweller'),(168,1,1,1,3,1,1,3,'dweller'),(169,2,3,2,3,1,1,3,'dweller'),(170,1,2,3,2,3,3,2,'dweller'),(171,3,3,1,1,3,2,2,'dweller'),(172,1,2,3,1,1,1,3,'dweller'),(173,3,1,3,3,3,1,3,'dweller'),(174,2,2,2,2,1,1,3,'dweller'),(175,3,3,3,1,1,3,3,'dweller'),(176,3,3,2,3,2,3,1,'dweller'),(177,3,3,1,2,3,2,3,'dweller'),(178,2,3,1,1,2,2,3,'dweller'),(179,1,3,3,3,3,1,2,'dweller'),(180,3,1,2,3,2,2,2,'dweller'),(181,3,2,3,2,1,2,3,'dweller'),(182,2,1,2,3,2,2,1,'dweller'),(183,2,1,1,1,3,3,3,'dweller'),(184,1,3,3,2,3,2,2,'dweller'),(185,3,3,3,3,1,3,2,'dweller'),(186,3,1,1,1,3,3,1,'dweller'),(187,3,2,1,1,3,1,2,'dweller'),(188,2,2,3,1,3,2,3,'dweller'),(189,1,2,3,1,1,1,3,'dweller'),(190,1,1,1,2,1,2,2,'dweller'),(191,3,2,3,3,1,3,3,'dweller'),(192,1,3,2,3,1,3,1,'dweller'),(193,2,1,3,1,3,1,1,'dweller'),(194,2,1,2,3,3,3,1,'dweller'),(195,1,1,3,2,2,2,1,'dweller'),(196,1,3,1,3,3,3,1,'dweller'),(197,2,3,3,1,1,3,2,'dweller'),(198,2,3,2,1,2,2,3,'dweller'),(199,1,1,2,2,2,2,1,'dweller'),(200,3,1,3,3,2,1,3,'dweller'),(201,2,1,3,2,2,2,3,'dweller'),(202,1,2,2,3,1,3,2,'dweller'),(203,3,2,3,3,3,2,1,'dweller'),(204,3,1,1,2,3,3,3,'dweller'),(205,3,2,3,2,2,2,3,'dweller'),(206,3,3,3,3,2,2,2,'dweller'),(207,3,2,1,1,3,2,2,'dweller'),(208,1,3,3,1,2,3,1,'dweller'),(209,2,2,1,1,3,3,3,'dweller'),(210,2,1,1,1,1,3,2,'dweller'),(211,2,3,1,2,1,2,2,'dweller'),(212,1,3,3,3,1,3,3,'dweller'),(213,2,2,1,3,1,1,2,'dweller'),(214,1,1,3,2,2,3,3,'dweller'),(215,3,3,2,1,2,3,3,'dweller'),(216,2,1,2,1,2,1,3,'dweller'),(217,3,3,2,1,1,3,2,'dweller'),(218,1,3,2,1,3,3,2,'dweller'),(219,2,2,3,3,2,1,3,'dweller'),(220,3,2,1,1,3,2,3,'dweller'),(221,2,3,1,2,2,3,1,'dweller'),(222,1,1,1,3,2,1,1,'dweller'),(223,1,3,3,1,2,2,2,'dweller'),(224,2,3,2,3,1,1,1,'dweller'),(225,2,2,3,1,3,2,2,'dweller'),(226,2,3,2,2,3,2,3,'dweller'),(227,3,2,3,3,3,2,3,'dweller'),(228,2,3,1,2,2,2,2,'dweller'),(229,2,1,2,2,2,2,1,'dweller'),(230,1,3,2,3,2,3,2,'dweller'),(231,3,2,1,2,1,1,2,'dweller'),(232,2,1,1,2,1,1,3,'dweller'),(233,1,1,3,1,3,2,1,'dweller'),(234,3,3,1,1,2,3,1,'dweller'),(235,3,1,2,2,1,1,2,'dweller'),(236,1,1,2,1,1,3,2,'dweller'),(237,2,1,3,3,1,2,1,'dweller'),(238,2,2,2,3,2,2,2,'dweller'),(239,2,2,2,1,2,2,3,'dweller'),(240,3,1,1,1,3,1,1,'dweller'),(241,2,1,2,3,1,1,3,'dweller'),(242,3,2,3,3,1,1,2,'dweller'),(243,2,2,2,2,1,3,3,'dweller'),(244,1,1,1,3,3,3,1,'dweller'),(245,1,3,1,1,3,1,1,'dweller'),(246,1,2,1,2,3,3,2,'dweller'),(247,2,1,2,3,2,3,3,'dweller'),(248,3,2,1,3,3,1,1,'dweller'),(249,3,3,3,3,1,2,3,'dweller'),(250,1,1,3,1,1,3,2,'dweller'),(251,1,2,3,1,2,1,3,'dweller'),(252,1,1,2,1,1,2,2,'dweller'),(253,2,1,3,1,3,1,2,'dweller'),(254,1,2,3,1,3,3,1,'dweller'),(255,3,2,3,2,3,3,3,'dweller'),(256,3,1,1,3,2,3,1,'dweller'),(257,2,3,1,1,3,1,3,'dweller'),(258,2,3,1,3,3,2,3,'dweller'),(259,1,1,1,1,1,3,1,'dweller'),(260,1,1,3,1,3,3,1,'dweller'),(261,3,1,3,3,2,2,3,'dweller'),(262,1,2,2,1,3,3,2,'dweller'),(263,2,1,3,2,3,2,1,'dweller'),(264,3,3,3,2,1,1,1,'dweller'),(265,2,3,2,2,3,1,3,'dweller'),(266,3,2,3,1,1,2,1,'dweller'),(267,2,3,1,1,1,1,2,'dweller'),(268,2,3,3,1,3,2,1,'dweller'),(269,1,1,1,3,3,3,3,'dweller'),(270,2,2,1,2,3,1,3,'dweller'),(271,1,1,1,2,2,3,2,'dweller'),(272,1,2,2,3,1,1,3,'dweller'),(273,1,1,3,1,3,2,2,'dweller'),(274,1,3,2,2,2,2,3,'dweller'),(275,1,3,3,3,3,3,2,'dweller'),(276,3,3,2,1,2,2,2,'dweller'),(277,3,1,1,3,2,3,1,'dweller'),(278,3,3,3,2,3,1,1,'dweller'),(279,3,1,2,1,2,1,3,'dweller'),(280,1,2,3,2,1,3,1,'dweller'),(281,3,3,3,3,3,3,2,'dweller'),(282,1,1,3,1,2,2,1,'dweller'),(283,3,3,3,1,2,1,3,'dweller'),(284,3,2,3,2,3,1,2,'dweller'),(285,2,3,1,1,2,2,3,'dweller'),(286,3,1,1,2,1,3,3,'dweller'),(287,2,2,2,3,2,1,3,'dweller'),(288,3,2,1,3,1,2,1,'dweller'),(289,3,2,2,1,3,1,2,'dweller'),(290,3,3,2,1,3,3,3,'dweller'),(291,1,3,3,3,3,3,1,'dweller'),(292,2,3,1,3,1,2,1,'dweller'),(293,3,1,1,2,1,1,1,'dweller'),(294,3,1,2,2,3,1,2,'dweller'),(295,1,2,2,2,1,2,3,'dweller'),(296,2,2,2,1,1,1,1,'dweller'),(297,3,2,2,3,2,3,3,'dweller'),(298,1,2,2,3,3,2,1,'dweller'),(299,2,1,2,3,3,1,1,'dweller'),(300,3,2,3,3,1,2,3,'dweller'),(301,2,3,1,3,2,2,1,'dweller'),(302,3,1,1,1,2,3,1,'dweller'),(303,2,1,3,1,3,2,2,'dweller'),(304,1,3,3,1,1,3,2,'dweller'),(305,3,1,1,1,3,3,3,'dweller'),(306,3,2,1,1,2,3,2,'dweller'),(307,1,2,3,2,1,1,1,'dweller'),(308,1,3,3,1,1,3,3,'dweller'),(309,3,1,2,3,3,3,2,'dweller'),(310,3,3,1,1,2,2,3,'dweller'),(311,3,2,1,1,2,1,3,'dweller'),(312,3,2,2,3,1,1,1,'dweller'),(313,3,2,1,1,3,2,3,'dweller'),(314,3,1,3,3,2,1,1,'dweller'),(315,3,2,2,1,1,3,2,'dweller'),(316,1,1,3,2,1,1,2,'dweller'),(317,3,2,2,2,2,1,2,'dweller'),(318,3,3,3,3,1,2,1,'dweller'),(319,2,3,1,3,2,1,3,'dweller'),(320,2,2,2,1,1,3,3,'dweller'),(321,2,2,3,2,1,2,1,'dweller'),(322,3,1,3,3,1,1,2,'dweller'),(323,1,1,2,2,2,3,2,'dweller'),(324,3,1,2,2,1,3,3,'dweller'),(325,2,1,1,3,1,2,2,'dweller'),(326,3,3,3,2,1,2,1,'dweller'),(327,3,3,1,1,1,2,3,'dweller'),(328,3,2,1,1,3,1,3,'dweller'),(329,1,1,1,2,2,1,3,'dweller'),(330,1,1,1,2,1,3,2,'dweller'),(331,1,3,2,1,1,3,2,'dweller'),(332,1,3,3,2,2,1,1,'dweller'),(333,2,1,2,2,1,3,1,'dweller'),(334,3,1,3,1,2,2,1,'dweller'),(335,2,1,2,3,1,2,2,'dweller'),(336,1,2,3,3,3,1,2,'dweller'),(337,3,2,2,3,2,2,3,'dweller'),(338,3,2,1,3,2,2,2,'dweller'),(339,3,3,1,3,2,2,1,'dweller'),(340,1,1,3,3,2,3,3,'dweller'),(341,2,3,3,2,1,3,1,'dweller'),(342,2,3,1,2,2,3,1,'dweller'),(343,2,3,2,3,2,3,1,'dweller'),(344,3,2,1,3,2,1,3,'dweller'),(345,2,3,2,3,2,1,2,'dweller'),(346,1,1,3,2,3,2,1,'dweller'),(347,3,3,1,1,1,1,1,'dweller'),(348,2,2,2,1,2,3,2,'dweller'),(349,3,2,3,3,3,2,1,'dweller'),(350,1,1,1,1,3,3,1,'dweller'),(351,1,3,2,2,1,3,1,'dweller'),(352,3,1,1,1,2,3,1,'dweller'),(353,3,1,2,3,3,1,1,'dweller'),(354,2,1,1,3,1,1,2,'dweller'),(355,1,1,3,1,2,1,2,'dweller'),(356,2,1,2,2,2,3,1,'dweller'),(357,3,2,3,1,3,3,3,'dweller'),(358,3,3,1,1,2,2,3,'dweller'),(359,3,1,3,2,3,3,3,'dweller'),(360,2,2,2,2,3,2,2,'dweller'),(361,1,1,2,2,1,2,2,'dweller'),(362,1,3,1,2,1,3,3,'dweller'),(363,3,3,1,2,1,2,2,'dweller'),(364,3,2,3,3,1,2,3,'dweller'),(365,2,2,2,1,2,1,2,'dweller'),(366,1,3,1,3,1,2,2,'dweller'),(367,3,1,3,1,3,1,3,'dweller'),(368,3,1,3,2,2,2,1,'dweller'),(369,1,3,1,2,3,3,2,'dweller'),(370,3,3,3,3,1,1,2,'dweller'),(371,3,1,2,3,3,1,1,'dweller'),(372,1,1,2,1,2,2,1,'dweller'),(373,1,1,2,3,3,3,1,'dweller'),(374,1,3,1,1,1,1,1,'dweller'),(375,3,2,2,3,1,1,1,'dweller'),(376,3,2,2,1,1,3,1,'dweller'),(377,2,3,1,1,3,3,1,'dweller'),(378,3,1,2,3,1,3,1,'dweller'),(379,3,1,1,3,3,3,1,'dweller'),(380,1,3,1,1,1,2,2,'dweller'),(381,2,3,1,3,3,1,1,'dweller'),(382,2,1,2,1,1,2,2,'dweller'),(383,1,2,2,1,2,3,2,'dweller'),(384,2,1,3,1,2,2,2,'dweller'),(385,3,3,2,3,2,2,1,'dweller'),(386,1,3,3,1,3,1,1,'dweller'),(387,1,1,3,3,1,3,2,'dweller'),(388,3,1,3,1,1,1,3,'dweller'),(389,1,1,3,1,2,3,1,'dweller'),(390,3,1,3,2,3,1,1,'dweller'),(391,2,3,3,1,3,1,2,'dweller'),(392,3,1,3,2,2,1,3,'dweller'),(393,2,3,2,1,1,3,3,'dweller'),(394,2,3,3,3,2,2,1,'dweller'),(395,1,2,2,3,3,2,2,'dweller'),(396,3,1,2,1,1,3,2,'dweller'),(397,2,1,1,1,1,3,2,'dweller'),(398,3,1,1,1,3,2,3,'dweller'),(399,1,2,2,3,1,1,2,'dweller'),(400,3,1,3,1,2,1,3,'dweller'),(401,3,1,3,1,1,1,3,'dweller'),(402,1,3,2,2,2,2,2,'dweller'),(403,1,1,2,2,1,1,1,'dweller'),(404,3,1,3,2,2,2,2,'dweller'),(405,1,2,1,3,3,1,1,'dweller'),(406,2,1,3,2,1,1,1,'dweller'),(407,2,1,3,2,2,2,3,'dweller'),(408,3,3,1,3,3,3,2,'dweller'),(409,1,1,1,2,2,3,3,'dweller'),(410,3,1,1,1,1,3,3,'dweller'),(411,2,3,3,1,3,3,3,'dweller'),(412,1,2,3,3,3,2,1,'dweller'),(413,1,1,1,1,2,3,1,'dweller'),(414,2,3,2,2,2,3,2,'dweller'),(415,3,1,1,1,2,3,2,'dweller'),(416,2,1,2,3,2,1,2,'dweller'),(417,1,2,2,1,2,2,1,'dweller'),(418,2,3,2,2,1,3,2,'dweller'),(419,3,3,2,3,3,1,2,'dweller'),(420,1,1,1,2,2,3,3,'dweller'),(421,2,1,1,1,3,2,1,'dweller'),(422,2,3,1,1,3,2,2,'dweller'),(423,3,1,3,2,3,1,1,'dweller'),(424,2,3,2,3,2,2,2,'dweller'),(425,3,2,2,2,1,3,2,'dweller'),(426,3,1,3,1,3,2,1,'dweller'),(427,2,2,3,2,2,2,2,'dweller'),(428,2,2,1,2,3,2,1,'dweller'),(429,1,2,3,1,3,1,1,'dweller'),(430,1,1,2,3,1,2,1,'dweller'),(431,2,3,3,3,1,2,3,'dweller'),(432,1,1,3,3,1,3,3,'dweller'),(433,1,1,2,2,3,1,2,'dweller'),(434,1,2,1,1,3,1,3,'dweller'),(435,2,1,2,2,2,2,2,'dweller'),(436,2,3,3,1,2,3,2,'dweller'),(437,3,3,2,2,2,1,2,'dweller'),(438,1,1,3,3,3,3,2,'dweller'),(439,1,1,3,3,1,2,1,'dweller'),(440,3,3,2,3,1,1,1,'dweller'),(441,2,1,2,1,3,1,1,'dweller'),(442,1,3,3,2,2,1,2,'dweller'),(443,1,3,3,2,2,1,3,'dweller'),(444,1,2,2,1,1,2,2,'dweller'),(445,1,2,2,3,1,1,1,'dweller'),(446,3,3,2,2,3,3,3,'dweller'),(447,2,1,1,2,2,2,3,'dweller'),(448,3,3,3,1,3,1,2,'dweller'),(449,1,1,2,2,2,1,1,'dweller'),(450,2,1,2,3,3,2,2,'dweller'),(451,2,1,1,1,3,1,2,'dweller'),(452,3,1,2,3,3,1,2,'dweller'),(453,3,3,1,3,2,2,3,'dweller'),(454,1,2,1,3,1,1,2,'dweller'),(455,2,2,3,2,1,2,3,'dweller'),(456,1,2,1,3,2,3,2,'dweller'),(457,1,1,3,1,3,2,3,'dweller'),(458,3,3,3,2,1,1,1,'dweller'),(459,1,3,1,1,3,2,2,'dweller'),(460,1,1,2,2,1,1,3,'dweller'),(461,2,3,2,2,2,2,2,'dweller'),(462,1,2,3,1,2,1,2,'dweller'),(463,3,1,2,2,2,1,3,'dweller'),(464,3,3,3,3,3,2,3,'dweller'),(465,1,1,3,2,3,2,1,'dweller'),(466,2,1,3,2,3,2,2,'dweller'),(467,1,3,1,2,1,1,1,'dweller'),(468,3,3,1,2,3,2,3,'dweller'),(469,2,3,1,1,2,3,1,'dweller'),(470,2,3,3,3,1,2,1,'dweller'),(471,2,2,1,3,2,3,3,'dweller'),(472,2,3,2,3,1,1,1,'dweller'),(473,1,3,2,1,3,3,3,'dweller'),(474,3,1,1,1,1,1,1,'dweller'),(475,3,2,1,3,3,1,1,'dweller'),(476,1,1,2,2,3,2,3,'dweller'),(477,3,3,3,3,3,1,2,'dweller'),(478,2,2,2,2,1,2,2,'dweller'),(479,1,2,1,3,3,3,2,'dweller'),(480,1,2,3,3,3,2,2,'dweller'),(481,2,2,1,1,2,3,3,'dweller'),(482,3,2,2,1,1,2,2,'dweller'),(483,2,3,2,3,2,3,2,'dweller'),(484,1,3,2,3,1,3,1,'dweller'),(485,2,1,3,3,1,1,2,'dweller'),(486,3,1,2,2,2,2,1,'dweller'),(487,2,2,2,2,3,1,1,'dweller'),(488,3,2,2,3,3,2,1,'dweller'),(489,1,1,2,3,3,2,3,'dweller'),(490,1,1,1,1,3,3,1,'dweller'),(491,3,1,1,1,1,3,3,'dweller'),(492,1,2,1,2,3,3,3,'dweller'),(493,2,3,1,2,1,2,3,'dweller'),(494,1,1,1,1,1,1,1,'dweller'),(495,3,3,3,2,1,1,2,'dweller'),(496,2,3,1,3,1,1,1,'dweller'),(497,3,2,2,2,2,3,3,'dweller'),(498,1,2,1,3,3,1,2,'dweller'),(499,3,2,1,3,1,2,2,'dweller'),(500,3,3,3,1,2,2,3,'dweller'),(501,1,2,1,3,2,2,2,'dweller'),(502,1,2,1,2,3,3,1,'dweller'),(503,2,2,1,3,3,3,3,'dweller'),(504,1,1,1,3,1,3,2,'dweller'),(505,3,3,2,3,3,1,1,'dweller'),(506,1,2,1,1,2,2,2,'dweller'),(507,2,3,1,2,3,3,3,'dweller'),(508,3,3,3,2,1,2,1,'dweller'),(509,2,1,3,3,1,2,3,'dweller'),(510,1,2,3,3,2,1,3,'dweller'),(511,1,2,1,2,2,3,1,'dweller'),(512,1,1,1,1,3,2,3,'dweller'),(513,3,2,3,3,2,3,2,'dweller'),(514,3,3,2,3,3,1,2,'dweller'),(515,3,2,3,3,3,2,3,'dweller'),(516,1,1,2,1,1,1,1,'dweller'),(517,2,1,2,3,2,1,3,'dweller'),(518,3,3,1,1,3,1,3,'dweller'),(519,2,3,1,3,1,2,2,'dweller'),(520,2,1,3,1,3,3,3,'dweller'),(521,1,1,3,1,2,2,2,'dweller'),(522,1,1,1,3,3,3,1,'dweller'),(523,1,3,1,2,1,2,3,'dweller'),(524,3,1,1,1,2,2,2,'dweller'),(525,1,3,1,2,3,1,2,'dweller'),(526,2,2,3,3,3,3,3,'dweller'),(527,1,3,3,3,1,2,3,'dweller'),(528,2,2,1,1,1,3,1,'dweller'),(529,2,3,1,3,2,3,1,'dweller'),(530,2,3,3,3,2,3,1,'dweller'),(531,2,3,2,3,3,3,2,'dweller'),(532,2,1,1,1,2,1,1,'dweller'),(533,2,3,1,3,3,2,1,'dweller'),(534,2,2,1,3,3,1,1,'dweller'),(535,1,3,2,3,3,1,3,'dweller'),(536,1,3,1,1,1,2,2,'dweller'),(537,2,2,3,2,2,1,1,'dweller'),(538,1,3,1,3,1,2,2,'dweller'),(539,2,1,2,2,1,1,1,'dweller'),(540,3,2,3,2,3,1,2,'dweller'),(541,3,2,3,1,2,1,3,'dweller'),(542,2,1,3,2,1,3,1,'dweller'),(543,2,1,1,3,1,3,1,'dweller'),(544,2,2,3,1,3,1,3,'dweller'),(545,2,3,2,2,3,1,2,'dweller'),(546,2,2,2,2,2,2,2,'dweller'),(547,1,1,3,2,3,3,3,'dweller'),(548,2,3,2,2,3,3,2,'dweller'),(549,1,2,3,3,1,2,1,'dweller'),(550,2,1,3,1,2,2,3,'dweller'),(551,1,2,3,2,1,3,2,'dweller'),(552,2,1,2,3,3,2,2,'dweller'),(553,1,1,1,1,1,1,3,'dweller'),(554,1,3,1,2,3,2,2,'dweller'),(555,2,3,1,2,2,2,1,'dweller'),(556,2,1,3,3,3,2,1,'dweller'),(557,3,1,1,3,2,1,1,'dweller'),(558,1,1,1,3,1,2,3,'dweller'),(559,1,2,3,3,1,1,3,'dweller'),(560,2,2,3,3,3,3,3,'dweller'),(561,1,1,3,1,3,2,3,'dweller'),(562,3,2,3,1,3,3,2,'dweller'),(563,1,2,3,3,1,1,1,'dweller'),(564,2,3,3,1,2,2,2,'dweller'),(565,2,1,2,3,1,3,1,'dweller'),(566,3,1,2,1,1,1,1,'dweller'),(567,1,1,3,2,3,3,3,'dweller'),(568,3,1,3,3,2,1,3,'dweller'),(569,2,1,1,3,2,2,3,'dweller'),(570,1,2,1,2,3,3,2,'dweller'),(571,2,2,1,3,2,1,3,'dweller'),(572,3,2,3,3,3,1,1,'dweller'),(573,2,1,3,2,3,2,3,'dweller'),(574,1,3,2,3,3,1,1,'dweller'),(575,3,1,3,2,3,1,1,'dweller'),(576,3,3,3,3,3,2,2,'dweller'),(577,2,2,1,3,1,1,3,'dweller'),(578,1,2,2,1,1,2,2,'dweller'),(579,2,1,3,2,3,2,3,'dweller'),(580,3,1,2,3,1,3,3,'dweller'),(581,3,3,2,1,2,2,1,'dweller'),(582,3,3,2,1,2,2,1,'dweller'),(583,2,3,3,2,1,3,1,'dweller'),(584,2,2,3,2,3,3,3,'dweller'),(585,1,2,3,2,3,3,3,'dweller'),(586,3,1,3,2,1,2,2,'dweller'),(587,2,2,1,3,2,3,2,'dweller'),(588,2,2,1,3,1,3,1,'dweller'),(589,2,2,2,2,3,1,2,'dweller'),(590,1,2,3,1,1,2,1,'dweller'),(591,1,2,2,3,1,1,1,'dweller'),(592,1,3,1,2,1,3,3,'dweller'),(593,2,3,3,2,2,1,3,'dweller'),(594,2,2,1,3,2,2,1,'dweller'),(595,2,3,1,2,3,3,1,'dweller'),(596,1,2,3,3,3,3,2,'dweller'),(597,3,3,1,3,2,1,2,'dweller'),(598,2,3,3,2,3,3,2,'dweller'),(599,2,3,1,2,3,1,2,'dweller'),(600,1,1,3,2,1,2,3,'dweller'),(601,1,2,1,2,1,2,2,'dweller'),(602,1,1,2,1,1,2,2,'dweller'),(603,1,1,2,2,2,1,2,'dweller'),(604,2,1,1,3,1,3,1,'dweller'),(605,3,1,2,3,1,3,2,'dweller'),(606,1,2,2,2,2,2,3,'dweller'),(607,3,3,1,1,1,3,1,'dweller'),(608,3,1,2,3,3,3,2,'dweller'),(609,2,2,3,1,3,3,1,'dweller'),(610,2,2,3,1,1,2,3,'dweller'),(611,1,1,3,1,1,3,1,'dweller'),(612,3,1,1,3,2,3,2,'dweller'),(613,1,1,1,2,2,3,2,'dweller'),(614,1,2,2,1,2,3,2,'dweller'),(615,3,3,2,3,3,3,3,'dweller'),(616,3,3,3,1,3,2,1,'dweller'),(617,1,3,2,2,2,1,3,'dweller'),(618,3,3,2,1,3,3,1,'dweller'),(619,3,2,2,3,2,3,1,'dweller'),(620,1,3,3,2,2,1,1,'dweller'),(621,2,2,2,1,2,2,1,'dweller'),(622,1,1,1,3,2,1,1,'dweller'),(623,1,1,2,2,3,2,1,'dweller'),(624,1,3,2,1,2,2,2,'dweller'),(625,2,3,1,2,3,2,3,'dweller'),(626,3,2,2,2,2,2,2,'dweller'),(627,3,1,1,2,2,1,3,'dweller'),(628,1,1,3,3,3,2,1,'dweller'),(629,2,1,1,2,3,3,2,'dweller'),(630,1,3,2,2,3,2,1,'dweller'),(631,1,1,3,1,1,2,2,'dweller'),(632,3,1,3,1,3,1,1,'dweller'),(633,3,3,3,1,2,1,1,'dweller'),(634,2,3,2,1,3,1,2,'dweller'),(635,2,2,2,2,3,2,1,'dweller'),(636,1,3,1,1,2,2,3,'dweller'),(637,1,2,3,2,1,3,3,'dweller'),(638,1,3,2,2,1,3,2,'dweller'),(639,1,1,1,1,2,2,2,'dweller'),(640,2,3,3,2,2,1,3,'dweller'),(641,1,3,2,2,3,3,1,'dweller'),(642,3,2,2,3,3,3,2,'dweller'),(643,1,3,2,3,1,3,1,'dweller'),(644,3,2,2,1,1,1,2,'dweller'),(645,3,3,2,2,3,3,1,'dweller'),(646,2,1,1,3,3,3,2,'dweller'),(647,3,3,2,1,1,1,2,'dweller'),(648,1,1,3,3,2,3,3,'dweller'),(649,2,3,2,1,1,1,1,'dweller'),(650,3,1,1,3,1,1,2,'dweller'),(651,2,1,1,3,1,3,3,'dweller'),(652,2,1,1,1,2,1,1,'dweller'),(653,2,3,3,3,1,1,1,'dweller'),(654,2,1,1,1,1,3,1,'dweller'),(655,2,3,2,1,1,2,3,'dweller'),(656,1,1,1,2,2,1,3,'dweller'),(657,3,3,1,1,2,3,2,'dweller'),(658,3,1,1,3,3,3,1,'dweller'),(659,3,2,1,1,1,2,2,'dweller'),(660,3,2,2,1,1,1,3,'dweller'),(661,1,3,3,1,2,2,1,'dweller'),(662,1,2,1,1,3,2,1,'dweller'),(663,3,3,2,2,2,2,1,'dweller'),(664,3,2,1,3,2,2,1,'dweller'),(665,3,3,1,2,1,3,2,'dweller'),(666,3,3,1,2,3,2,1,'dweller'),(667,1,1,1,2,1,1,3,'dweller'),(668,2,3,2,3,1,2,3,'dweller'),(669,1,2,2,1,2,3,2,'dweller'),(670,2,2,3,2,2,1,1,'dweller'),(671,2,1,2,2,2,3,3,'dweller'),(672,1,2,1,3,1,1,2,'dweller'),(673,1,3,1,2,1,1,1,'dweller'),(674,2,1,1,3,2,3,2,'dweller'),(675,2,1,1,1,2,1,1,'dweller'),(676,3,1,1,1,3,3,3,'dweller'),(677,3,2,2,1,3,1,2,'dweller'),(678,2,3,1,2,3,1,1,'dweller'),(679,1,2,3,3,2,3,3,'dweller'),(680,3,2,3,1,2,3,3,'dweller'),(681,3,1,2,2,3,2,1,'dweller'),(682,2,1,1,1,2,2,3,'dweller'),(683,2,1,3,3,3,1,1,'dweller'),(684,3,3,3,3,3,1,2,'dweller'),(685,2,2,2,1,3,3,3,'dweller'),(686,3,3,3,2,1,3,2,'dweller'),(687,3,2,1,2,3,3,3,'dweller'),(688,1,1,3,1,3,1,1,'dweller'),(689,2,3,3,1,1,3,2,'dweller'),(690,2,3,3,3,3,3,1,'dweller'),(691,3,3,3,2,3,2,1,'dweller'),(692,3,3,3,3,2,2,1,'dweller'),(693,2,3,1,3,3,3,2,'dweller'),(694,3,3,2,1,2,1,3,'dweller'),(695,2,3,3,2,2,1,3,'dweller'),(696,3,3,1,3,3,1,2,'dweller'),(697,1,2,1,3,2,2,1,'dweller'),(698,2,1,3,3,2,3,1,'dweller'),(699,1,3,3,3,2,2,2,'dweller'),(700,3,2,2,1,1,1,3,'dweller'),(701,3,2,3,2,1,1,1,'dweller'),(702,3,1,3,1,3,2,2,'dweller'),(703,3,1,2,3,1,1,2,'dweller'),(704,3,2,1,1,3,2,1,'dweller'),(705,1,1,2,3,3,3,3,'dweller'),(706,3,3,1,2,1,1,3,'dweller'),(707,1,3,1,2,1,2,3,'dweller'),(708,2,3,2,1,3,2,3,'dweller'),(709,1,3,3,1,1,1,1,'dweller'),(710,1,1,3,3,3,1,3,'dweller'),(711,1,1,1,3,1,2,2,'dweller'),(712,2,1,2,3,3,1,2,'dweller'),(713,3,3,3,3,3,2,2,'dweller'),(714,1,1,2,3,3,2,2,'dweller'),(715,2,1,2,3,2,1,1,'dweller'),(716,3,3,3,3,2,3,2,'dweller'),(717,2,3,3,2,3,2,3,'dweller'),(718,3,1,3,2,1,1,3,'dweller'),(719,2,1,1,3,1,1,1,'dweller'),(720,2,1,3,1,2,2,1,'dweller'),(721,3,3,1,2,1,3,1,'dweller'),(722,3,1,1,1,3,1,3,'dweller'),(723,3,1,2,1,3,3,2,'dweller'),(724,2,2,3,1,2,1,1,'dweller'),(725,3,3,2,3,1,2,2,'dweller'),(726,1,2,1,3,2,3,3,'dweller'),(727,2,2,1,1,2,2,2,'dweller'),(728,3,2,3,1,2,1,2,'dweller'),(729,2,3,2,1,3,1,3,'dweller'),(730,1,1,2,2,1,3,3,'dweller'),(731,2,2,3,2,1,3,3,'dweller'),(732,1,3,1,2,2,2,3,'dweller'),(733,3,1,2,2,3,1,3,'dweller'),(734,1,3,1,1,2,2,1,'dweller'),(735,1,2,1,1,2,1,1,'dweller'),(736,2,1,1,1,3,1,3,'dweller'),(737,3,2,2,3,2,2,2,'dweller'),(738,1,1,3,3,2,2,1,'dweller'),(739,1,1,2,3,1,2,2,'dweller'),(740,1,1,1,2,3,3,1,'dweller'),(741,2,3,2,3,2,2,1,'dweller'),(742,3,1,2,1,3,2,3,'dweller'),(743,1,3,3,2,1,3,3,'dweller'),(744,3,2,2,2,1,3,1,'dweller'),(745,2,1,3,3,2,2,2,'dweller'),(746,3,1,2,2,2,2,1,'dweller'),(747,1,3,2,2,1,2,2,'dweller'),(748,3,1,1,2,1,1,3,'dweller'),(749,1,2,1,1,1,2,2,'dweller'),(750,3,2,2,2,3,1,3,'dweller'),(751,3,3,1,2,2,1,3,'dweller'),(752,2,1,1,2,3,1,3,'dweller'),(753,1,2,2,3,2,1,2,'dweller'),(754,2,1,1,3,3,2,3,'dweller'),(755,2,2,2,3,2,2,2,'dweller'),(756,3,3,1,3,1,1,3,'dweller'),(757,2,2,1,3,1,1,3,'dweller'),(758,3,2,1,3,2,1,1,'dweller'),(759,1,1,1,2,3,1,1,'dweller'),(760,1,1,2,2,2,2,1,'dweller'),(761,2,1,2,3,3,3,2,'dweller'),(762,2,2,2,2,2,3,3,'dweller'),(763,1,1,1,2,1,3,2,'dweller'),(764,3,3,1,1,2,2,2,'dweller'),(765,1,1,3,2,2,2,2,'dweller'),(766,1,2,1,3,1,3,1,'dweller'),(767,3,1,1,2,1,3,2,'dweller'),(768,1,3,1,1,1,2,2,'dweller'),(769,3,3,1,2,1,3,2,'dweller'),(770,3,3,3,3,2,1,2,'dweller'),(771,3,1,2,3,1,3,3,'dweller'),(772,2,2,3,1,3,1,1,'dweller'),(773,1,3,2,2,2,2,3,'dweller'),(774,1,1,2,3,2,1,2,'dweller'),(775,2,2,2,2,2,3,3,'dweller'),(776,1,1,2,1,3,2,3,'dweller'),(777,1,1,3,3,3,1,1,'dweller'),(778,3,3,3,1,2,1,2,'dweller'),(779,2,1,3,2,2,1,1,'dweller'),(780,3,3,3,2,3,3,3,'dweller'),(781,2,3,1,1,2,1,2,'dweller'),(782,1,3,3,2,1,2,1,'dweller'),(783,1,2,2,2,2,3,1,'dweller'),(784,2,2,1,3,3,1,2,'dweller'),(785,1,3,1,2,2,1,2,'dweller'),(786,2,1,1,3,2,1,1,'dweller'),(787,3,2,1,2,1,2,3,'dweller'),(788,2,3,3,1,1,2,2,'dweller'),(789,3,3,2,2,3,1,2,'dweller'),(790,1,2,3,1,2,2,2,'dweller'),(791,1,1,1,1,1,3,2,'dweller'),(792,2,3,3,2,1,3,1,'dweller'),(793,3,3,2,1,3,1,1,'dweller'),(794,3,1,3,3,1,2,2,'dweller'),(795,3,3,2,1,1,1,1,'dweller'),(796,2,3,2,1,3,2,3,'dweller'),(797,3,2,3,2,3,2,2,'dweller'),(798,3,2,2,1,3,3,1,'dweller'),(799,3,3,3,2,1,3,2,'dweller'),(800,3,1,2,2,3,2,2,'dweller'),(801,3,3,1,1,1,2,1,'dweller'),(802,3,3,2,3,1,1,2,'dweller'),(803,1,2,1,1,3,1,2,'dweller'),(804,3,1,3,2,2,3,3,'dweller'),(805,1,2,1,3,3,2,3,'dweller'),(806,1,3,3,3,3,3,1,'dweller'),(807,3,2,3,3,1,2,2,'dweller'),(808,1,2,2,1,2,1,2,'dweller'),(809,3,2,1,1,2,2,3,'dweller'),(810,3,3,3,3,1,3,3,'dweller'),(811,1,2,3,2,1,1,1,'dweller'),(812,1,1,1,3,2,2,1,'dweller'),(813,3,2,3,1,3,2,3,'dweller'),(814,2,2,2,1,1,3,2,'dweller'),(815,2,3,3,2,3,2,1,'dweller'),(816,1,1,1,3,2,3,1,'dweller'),(817,3,3,3,2,1,1,1,'dweller'),(818,3,2,3,3,3,3,3,'dweller'),(819,2,2,1,1,1,2,1,'dweller'),(820,3,1,3,1,1,3,2,'dweller'),(821,3,3,2,2,3,1,2,'dweller'),(822,1,1,1,3,1,2,2,'dweller'),(823,3,2,2,3,3,1,3,'dweller'),(824,1,2,3,1,1,2,2,'dweller'),(825,1,3,2,2,2,3,3,'dweller'),(826,2,3,3,2,3,2,2,'dweller'),(827,1,1,3,2,3,3,1,'dweller'),(828,3,2,1,2,3,3,1,'dweller'),(829,2,1,3,1,2,2,3,'dweller'),(830,1,2,3,3,3,2,3,'dweller'),(831,1,1,1,1,3,1,2,'dweller'),(832,2,3,1,1,3,1,3,'dweller'),(833,1,3,2,2,2,1,2,'dweller'),(834,3,2,1,2,2,1,3,'dweller'),(835,1,3,2,2,3,2,1,'dweller'),(836,1,3,3,3,3,2,2,'dweller'),(837,2,2,3,2,3,1,3,'dweller'),(838,3,2,1,1,3,1,2,'dweller'),(839,1,2,3,1,1,3,1,'dweller'),(840,2,3,3,1,1,3,3,'dweller'),(841,2,2,3,2,1,3,2,'dweller'),(842,3,2,2,2,1,2,2,'dweller'),(843,3,2,3,3,3,2,3,'dweller'),(844,2,3,2,3,2,2,2,'dweller'),(845,1,1,3,3,2,2,2,'dweller'),(846,3,2,3,3,1,2,3,'dweller'),(847,1,1,1,3,3,1,1,'dweller'),(848,2,1,1,3,1,1,3,'dweller'),(849,1,3,2,3,1,3,2,'dweller'),(850,1,3,1,3,1,3,3,'dweller'),(851,1,2,2,1,3,2,3,'dweller'),(852,1,1,3,2,1,2,2,'dweller'),(853,3,1,3,3,2,2,2,'dweller'),(854,2,2,2,2,3,1,2,'dweller'),(855,2,2,1,1,1,2,1,'dweller'),(856,1,3,1,3,1,2,3,'dweller'),(857,2,1,3,1,3,2,1,'dweller'),(858,2,1,3,1,2,1,1,'dweller'),(859,1,2,3,2,2,3,2,'dweller'),(860,2,2,1,2,2,2,2,'dweller'),(861,1,1,3,1,3,3,3,'dweller'),(862,1,2,3,2,1,1,1,'dweller'),(863,1,1,3,1,3,3,1,'dweller'),(864,3,2,2,1,1,2,3,'dweller'),(865,3,3,1,1,3,2,1,'dweller'),(866,1,1,2,2,2,1,2,'dweller'),(867,1,2,3,1,2,2,1,'dweller'),(868,3,1,2,3,3,1,2,'dweller'),(869,3,1,3,2,3,2,1,'dweller'),(870,3,1,3,2,1,2,3,'dweller'),(871,3,2,2,3,2,2,1,'dweller'),(872,1,1,3,3,3,1,1,'dweller'),(873,3,1,2,1,3,2,3,'dweller'),(874,2,1,3,2,2,3,1,'dweller'),(875,2,2,1,1,3,3,1,'dweller'),(876,3,1,1,2,1,3,2,'dweller'),(877,2,3,1,1,2,1,2,'dweller'),(878,1,1,2,2,1,1,1,'dweller'),(879,3,2,1,1,1,3,1,'dweller'),(880,3,1,2,3,1,2,2,'dweller'),(881,1,2,2,2,3,1,1,'dweller'),(882,3,3,1,3,3,1,2,'dweller'),(883,3,2,3,3,1,2,1,'dweller'),(884,2,3,2,1,1,2,1,'dweller'),(885,3,2,3,2,3,1,3,'dweller'),(886,1,1,2,2,1,1,2,'dweller'),(887,1,1,3,3,3,3,1,'dweller'),(888,1,3,1,3,1,1,3,'dweller'),(889,2,3,1,1,3,3,2,'dweller'),(890,NULL,NULL,2,NULL,4,NULL,NULL,'outfit'),(891,2,2,3,3,3,1,3,'dweller'),(892,2,3,1,1,2,3,1,'dweller'),(893,1,1,2,1,1,2,2,'dweller'),(894,2,2,3,2,2,1,2,'dweller'),(895,3,2,3,1,1,2,3,'dweller'),(896,1,1,2,1,1,3,2,'dweller'),(897,3,1,3,3,1,2,2,'dweller'),(898,1,3,3,1,2,2,2,'dweller'),(899,3,2,3,3,2,2,2,'dweller'),(900,3,3,3,2,1,1,2,'dweller'),(901,2,2,3,1,1,3,2,'dweller'),(902,1,3,3,1,1,3,3,'dweller'),(903,1,2,1,1,3,3,1,'dweller'),(904,3,3,2,2,2,3,1,'dweller'),(905,1,1,1,2,1,3,1,'dweller'),(906,3,1,1,2,2,2,3,'dweller'),(907,3,3,1,1,2,2,3,'dweller'),(908,2,3,1,2,2,3,3,'dweller'),(909,2,3,2,2,2,3,3,'dweller'),(910,2,1,1,1,2,3,3,'dweller'),(911,3,1,1,1,2,1,2,'dweller'),(912,3,3,2,1,2,1,3,'dweller'),(913,2,2,3,1,1,3,1,'dweller'),(914,1,2,1,2,1,1,1,'dweller'),(915,1,3,1,3,3,2,1,'dweller'),(916,3,1,1,3,2,3,1,'dweller'),(917,2,3,3,2,1,1,3,'dweller'),(918,3,1,3,2,3,1,3,'dweller'),(919,2,3,3,2,3,3,2,'dweller'),(920,2,3,3,2,3,2,3,'dweller'),(921,2,2,3,1,1,1,1,'dweller'),(922,2,3,2,1,1,2,2,'dweller'),(923,1,1,3,1,3,2,2,'dweller'),(924,3,2,1,1,1,1,2,'dweller'),(925,2,2,3,3,2,1,3,'dweller'),(926,2,3,3,1,3,2,2,'dweller'),(927,3,2,2,3,2,1,3,'dweller'),(928,1,3,3,2,1,3,2,'dweller'),(929,1,1,2,1,1,2,3,'dweller'),(930,2,2,2,2,3,1,3,'dweller'),(931,1,1,3,2,1,1,1,'dweller'),(932,2,2,2,3,2,2,1,'dweller'),(933,2,3,2,3,3,3,1,'dweller'),(934,3,3,1,2,3,1,2,'dweller'),(935,3,1,2,3,1,1,1,'dweller'),(936,2,2,3,1,1,1,1,'dweller'),(937,3,1,3,3,3,1,3,'dweller'),(938,1,2,3,2,3,2,1,'dweller'),(939,2,3,3,1,3,3,3,'dweller'),(940,2,2,1,1,1,1,2,'dweller'),(941,3,1,3,2,3,3,1,'dweller'),(942,3,2,3,1,2,1,3,'dweller'),(943,1,1,2,2,3,1,3,'dweller'),(944,1,2,1,2,3,1,3,'dweller'),(945,2,1,1,2,3,2,1,'dweller'),(946,1,3,1,3,1,1,2,'dweller'),(947,1,2,3,1,2,1,2,'dweller'),(948,1,1,2,1,2,2,1,'dweller'),(949,1,3,2,3,1,3,2,'dweller'),(950,1,3,2,3,3,1,1,'dweller');
/*!40000 ALTER TABLE `tb_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_storage`
--

DROP TABLE IF EXISTS `tb_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_storage` (
  `id_storage` int NOT NULL AUTO_INCREMENT,
  `category` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_storage`
--

LOCK TABLES `tb_storage` WRITE;
/*!40000 ALTER TABLE `tb_storage` DISABLE KEYS */;
INSERT INTO `tb_storage` VALUES (1,'outfit'),(2,'outfit'),(3,'outfit'),(4,'outfit'),(5,'outfit'),(6,'outfit'),(7,'outfit'),(8,'outfit'),(9,'outfit'),(10,'outfit'),(11,'outfit'),(12,'outfit'),(13,'outfit'),(14,'outfit'),(15,'outfit'),(16,'outfit'),(17,'outfit'),(18,'outfit'),(19,'outfit'),(20,'outfit'),(21,'outfit'),(22,'outfit'),(23,'outfit'),(24,'outfit'),(25,'outfit'),(26,'outfit'),(27,'outfit'),(28,'outfit'),(29,'outfit'),(30,'outfit'),(31,'outfit'),(32,'outfit'),(33,'outfit'),(34,'outfit'),(35,'outfit'),(36,'outfit'),(37,'outfit'),(38,'outfit'),(39,'outfit'),(40,'outfit'),(41,'outfit'),(42,'outfit'),(43,'outfit'),(44,'outfit'),(45,'outfit'),(46,'outfit'),(47,'outfit'),(48,'outfit'),(49,'outfit'),(50,'outfit'),(51,'outfit'),(52,'outfit'),(53,'outfit'),(54,'outfit'),(55,'outfit'),(56,'outfit'),(57,'outfit'),(58,'outfit'),(59,'outfit'),(60,'outfit'),(61,'outfit'),(62,'outfit'),(63,'outfit'),(64,'outfit'),(65,'outfit'),(66,'outfit'),(67,'outfit'),(68,'outfit'),(69,'outfit'),(70,'outfit'),(71,'outfit'),(72,'outfit'),(73,'outfit'),(74,'outfit'),(75,'outfit'),(76,'outfit'),(77,'outfit'),(78,'outfit'),(79,'outfit'),(80,'outfit'),(81,'outfit'),(82,'outfit'),(83,'outfit'),(84,'outfit'),(85,'outfit'),(86,'outfit'),(87,'outfit'),(88,'outfit'),(89,'outfit'),(90,'outfit'),(91,'outfit'),(92,'outfit'),(93,'outfit'),(94,'outfit'),(95,'outfit'),(96,'outfit'),(97,'outfit'),(98,'outfit'),(99,'outfit'),(100,'outfit'),(101,'outfit'),(102,'outfit'),(103,'outfit'),(104,'outfit'),(105,'outfit'),(106,'outfit'),(107,'outfit'),(108,'outfit'),(109,'outfit'),(110,'outfit'),(111,'outfit'),(112,'outfit'),(113,'outfit'),(114,'outfit'),(115,'outfit'),(116,'outfit'),(117,'outfit'),(118,'outfit'),(119,'outfit'),(120,'outfit'),(121,'outfit'),(122,'outfit'),(123,'outfit'),(124,'outfit'),(125,'outfit'),(126,'outfit'),(127,'outfit'),(128,'outfit'),(129,'outfit'),(130,'outfit'),(131,'outfit'),(132,'outfit'),(133,'outfit'),(134,'outfit'),(135,'outfit'),(136,'outfit'),(137,'outfit'),(138,'outfit'),(139,'outfit'),(140,'outfit'),(141,'outfit'),(142,'outfit'),(143,'outfit'),(144,'outfit'),(145,'outfit'),(146,'outfit'),(147,'outfit'),(148,'outfit'),(149,'outfit'),(150,'outfit'),(151,'outfit'),(152,'outfit'),(153,'outfit'),(154,'outfit'),(155,'outfit'),(156,'outfit'),(157,'outfit'),(158,'weapon'),(159,'weapon'),(160,'weapon'),(161,'weapon'),(162,'weapon'),(163,'weapon'),(164,'weapon'),(165,'weapon'),(166,'weapon'),(167,'weapon'),(168,'weapon'),(169,'weapon'),(170,'weapon'),(171,'weapon'),(172,'weapon'),(173,'weapon'),(174,'weapon'),(175,'weapon'),(176,'weapon'),(177,'weapon'),(178,'weapon'),(179,'weapon'),(180,'weapon'),(181,'weapon'),(182,'weapon'),(183,'weapon'),(184,'weapon'),(185,'weapon'),(186,'weapon'),(187,'weapon'),(188,'weapon'),(189,'weapon'),(190,'weapon'),(191,'weapon'),(192,'weapon'),(193,'weapon'),(194,'weapon'),(195,'weapon'),(196,'weapon'),(197,'weapon'),(198,'weapon'),(199,'weapon'),(200,'weapon'),(201,'weapon'),(202,'weapon'),(203,'weapon'),(204,'weapon'),(205,'weapon'),(206,'weapon'),(207,'weapon'),(208,'weapon'),(209,'weapon'),(210,'weapon'),(211,'weapon'),(212,'weapon'),(213,'weapon'),(214,'weapon'),(215,'weapon'),(216,'weapon'),(217,'weapon'),(218,'weapon'),(219,'weapon'),(220,'weapon'),(221,'weapon'),(222,'weapon'),(223,'weapon'),(224,'weapon'),(225,'weapon'),(226,'weapon'),(227,'weapon'),(228,'weapon'),(229,'weapon'),(230,'weapon'),(231,'weapon'),(232,'weapon'),(233,'weapon'),(234,'weapon'),(235,'weapon'),(236,'weapon'),(237,'weapon'),(238,'weapon'),(239,'weapon'),(240,'weapon'),(241,'weapon'),(242,'weapon'),(243,'weapon'),(244,'weapon'),(245,'weapon'),(246,'weapon'),(247,'weapon'),(248,'weapon'),(249,'weapon'),(250,'weapon'),(251,'weapon'),(252,'weapon'),(253,'weapon'),(254,'weapon'),(255,'weapon'),(256,'weapon'),(257,'weapon'),(258,'weapon'),(259,'weapon'),(260,'weapon'),(261,'weapon'),(262,'weapon'),(263,'weapon'),(264,'weapon'),(265,'weapon'),(266,'weapon'),(267,'weapon'),(268,'weapon'),(269,'weapon'),(270,'weapon'),(271,'weapon'),(272,'weapon'),(273,'weapon'),(274,'weapon'),(275,'weapon'),(276,'weapon'),(277,'weapon'),(278,'weapon'),(279,'weapon'),(280,'weapon'),(281,'weapon'),(282,'weapon'),(283,'weapon'),(284,'weapon'),(285,'weapon'),(286,'weapon'),(287,'weapon'),(288,'weapon'),(289,'weapon'),(290,'weapon'),(291,'weapon'),(292,'weapon'),(293,'weapon'),(294,'weapon'),(295,'weapon'),(296,'weapon'),(297,'weapon'),(298,'weapon'),(299,'weapon'),(300,'weapon'),(301,'weapon'),(302,'weapon'),(303,'weapon'),(304,'weapon'),(305,'weapon'),(306,'weapon'),(307,'weapon'),(308,'weapon'),(309,'weapon'),(310,'weapon'),(311,'weapon'),(312,'weapon'),(313,'weapon'),(314,'weapon'),(315,'weapon'),(316,'weapon'),(317,'weapon'),(318,'weapon'),(319,'weapon'),(320,'weapon'),(321,'weapon'),(322,'weapon'),(323,'weapon'),(324,'weapon'),(325,'weapon'),(326,'weapon'),(327,'weapon'),(328,'weapon'),(329,'weapon'),(330,'weapon'),(331,'weapon'),(332,'weapon'),(333,'weapon'),(334,'weapon'),(335,'weapon'),(336,'weapon'),(337,'weapon'),(338,'weapon'),(339,'weapon'),(340,'weapon'),(341,'weapon'),(342,'weapon'),(343,'weapon'),(344,'weapon'),(345,'weapon'),(346,'weapon'),(347,'weapon'),(348,'weapon'),(349,'weapon'),(350,'weapon'),(351,'weapon'),(352,'weapon'),(353,'weapon'),(354,'weapon'),(355,'weapon'),(356,'weapon'),(357,'weapon'),(358,'weapon'),(359,'weapon'),(360,'weapon'),(361,'weapon'),(362,'weapon'),(363,'weapon'),(364,'weapon'),(365,'weapon'),(366,'weapon'),(367,'weapon'),(368,'weapon'),(369,'weapon'),(370,'weapon'),(371,'weapon'),(372,'pet'),(373,'pet'),(374,'pet'),(375,'pet'),(376,'pet'),(377,'pet'),(378,'pet'),(379,'pet'),(380,'pet'),(381,'pet'),(382,'pet'),(383,'pet'),(384,'pet'),(385,'pet'),(386,'pet'),(387,'pet'),(388,'pet'),(389,'pet'),(390,'pet'),(391,'pet'),(392,'pet'),(393,'pet'),(394,'pet'),(395,'pet'),(396,'pet'),(397,'pet'),(398,'pet'),(399,'pet'),(400,'pet'),(401,'pet'),(402,'pet'),(403,'pet'),(404,'pet'),(405,'pet'),(406,'pet'),(407,'pet'),(408,'pet'),(409,'pet'),(410,'pet'),(411,'pet'),(412,'pet'),(413,'pet'),(414,'pet'),(415,'pet'),(416,'pet'),(417,'pet'),(418,'pet'),(419,'pet'),(420,'pet'),(421,'pet'),(422,'pet'),(423,'pet'),(424,'pet'),(425,'pet'),(426,'pet'),(427,'pet'),(428,'pet'),(429,'pet'),(430,'pet'),(431,'pet'),(432,'junk'),(433,'junk'),(434,'junk'),(435,'junk'),(436,'junk'),(437,'junk'),(438,'junk'),(439,'junk'),(440,'junk'),(441,'junk'),(442,'junk'),(443,'junk'),(444,'junk'),(445,'junk'),(446,'junk'),(447,'junk'),(448,'junk'),(449,'junk'),(450,'junk'),(451,'junk'),(452,'junk'),(453,'outfit');
/*!40000 ALTER TABLE `tb_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_storage_exploration`
--

DROP TABLE IF EXISTS `tb_storage_exploration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_storage_exploration` (
  `id_exploration` int NOT NULL,
  `id_storage` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id_storage`,`id_exploration`),
  KEY `fk_id_exploration_tb_storage_exploration` (`id_exploration`),
  CONSTRAINT `fk_id_exploration_tb_storage_exploration` FOREIGN KEY (`id_exploration`) REFERENCES `tb_exploration` (`id_exploration`),
  CONSTRAINT `fk_id_storage_tb_storage_exploration` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_storage_exploration`
--

LOCK TABLES `tb_storage_exploration` WRITE;
/*!40000 ALTER TABLE `tb_storage_exploration` DISABLE KEYS */;
INSERT INTO `tb_storage_exploration` VALUES (128,1,1),(40,2,1),(47,2,1),(77,2,1),(83,2,1),(104,2,1),(132,2,1),(182,2,1),(8,3,1),(56,3,1),(22,4,1),(70,4,1),(130,4,1),(205,4,1),(7,5,1),(65,5,1),(183,5,1),(232,5,1),(9,6,1),(13,6,1),(83,6,1),(112,6,1),(148,6,1),(201,6,1),(5,7,1),(58,7,1),(125,7,1),(140,7,1),(56,8,1),(192,8,1),(89,9,1),(94,9,1),(130,9,1),(145,9,1),(147,9,1),(165,9,1),(181,9,1),(17,11,1),(17,12,1),(35,12,1),(82,12,1),(170,12,1),(2,14,1),(3,14,1),(45,14,1),(108,14,1),(117,14,1),(140,14,1),(60,15,1),(109,15,1),(19,16,1),(23,17,1),(33,17,1),(143,17,1),(18,18,1),(39,18,1),(75,18,1),(152,18,1),(160,18,1),(44,19,1),(68,19,1),(154,19,1),(177,19,1),(26,20,1),(196,20,1),(215,20,1),(225,20,1),(23,21,1),(171,21,1),(198,21,1),(16,22,1),(61,22,1),(93,22,1),(121,22,1),(168,22,1),(118,24,1),(153,24,1),(179,24,1),(79,25,1),(58,26,1),(181,26,1),(7,27,1),(15,27,1),(99,27,1),(20,28,1),(32,28,1),(69,28,1),(133,28,1),(214,28,1),(56,29,1),(69,29,1),(217,29,1),(147,30,1),(148,30,1),(157,30,1),(220,30,1),(221,30,1),(10,31,1),(123,31,1),(165,31,1),(170,31,1),(196,31,1),(5,32,1),(167,32,1),(36,33,1),(83,33,1),(97,33,1),(114,33,1),(133,33,1),(221,33,1),(223,33,1),(34,34,1),(93,34,1),(179,34,1),(38,35,1),(109,35,1),(223,35,1),(73,36,1),(189,36,1),(202,36,1),(213,36,1),(14,37,1),(71,37,1),(85,37,1),(92,37,1),(224,37,1),(16,38,1),(49,38,1),(91,38,1),(18,40,1),(21,40,1),(33,40,1),(106,40,1),(149,40,1),(217,40,1),(107,42,1),(228,42,1),(105,43,1),(179,43,1),(189,43,1),(229,43,1),(110,44,1),(147,44,1),(92,45,1),(98,45,1),(139,45,1),(157,45,1),(163,45,1),(198,46,1),(41,47,1),(65,47,1),(165,47,1),(166,47,1),(4,49,1),(140,49,1),(7,50,1),(54,50,1),(70,50,1),(80,50,1),(97,50,1),(103,50,1),(151,50,1),(6,51,1),(12,51,1),(37,51,1),(43,51,1),(76,51,1),(112,51,1),(134,51,1),(136,51,1),(12,52,1),(25,52,1),(72,52,1),(100,52,1),(168,52,1),(217,52,1),(219,52,1),(67,53,1),(74,53,1),(90,53,1),(116,53,1),(83,54,1),(139,54,1),(185,54,1),(6,55,1),(83,55,1),(97,55,1),(165,55,1),(178,55,1),(20,56,1),(40,56,1),(121,57,1),(88,58,1),(119,58,1),(121,58,1),(160,58,1),(203,58,1),(104,59,1),(171,59,1),(199,59,1),(29,60,1),(58,60,1),(69,60,1),(73,60,1),(90,60,1),(124,60,1),(197,60,1),(9,62,1),(19,62,1),(42,62,1),(89,62,1),(170,62,1),(229,62,1),(95,64,1),(142,64,1),(144,64,1),(151,64,1),(169,64,1),(74,65,1),(117,65,1),(137,65,1),(153,65,1),(214,65,1),(223,65,1),(69,67,1),(84,67,1),(93,67,1),(48,68,1),(72,68,1),(9,69,1),(149,69,1),(177,69,1),(183,69,1),(149,70,1),(213,70,1),(24,72,1),(25,72,1),(60,72,1),(59,73,1),(77,73,1),(123,73,1),(136,73,1),(19,74,1),(23,74,1),(58,74,1),(70,74,1),(96,74,1),(114,74,1),(232,74,1),(230,75,1),(10,76,1),(59,76,1),(64,76,1),(66,76,1),(87,76,1),(108,76,1),(111,76,1),(130,76,1),(142,76,1),(174,76,1),(226,76,1),(15,77,1),(73,77,1),(105,77,1),(138,77,1),(144,77,1),(151,77,1),(4,78,1),(44,78,1),(94,78,1),(111,78,1),(169,78,1),(186,78,1),(207,78,1),(53,79,1),(58,79,1),(138,79,1),(165,79,1),(24,80,1),(63,80,1),(64,80,1),(165,80,1),(218,80,1),(70,81,1),(146,81,1),(210,81,1),(53,83,1),(180,83,1),(224,83,1),(181,84,1),(114,85,1),(164,85,1),(190,85,1),(186,87,1),(211,87,1),(58,88,1),(74,88,1),(125,89,1),(225,89,1),(119,90,1),(234,90,1),(70,91,1),(77,91,1),(27,92,1),(97,92,1),(111,92,1),(132,92,1),(135,92,1),(235,92,1),(8,93,1),(50,93,1),(67,93,1),(98,94,1),(119,94,1),(201,94,1),(80,95,1),(39,96,1),(55,96,1),(56,96,1),(153,96,1),(160,96,1),(235,96,1),(97,97,1),(138,97,1),(158,97,1),(198,97,1),(199,97,1),(60,98,1),(169,98,1),(180,98,1),(13,100,1),(202,100,1),(230,100,1),(41,101,1),(89,101,1),(99,101,1),(119,101,1),(148,101,1),(203,101,1),(233,101,1),(178,102,1),(188,102,1),(17,104,1),(33,104,1),(41,104,1),(68,104,1),(72,104,1),(125,104,1),(159,104,1),(188,104,1),(118,105,1),(132,105,1),(144,105,1),(113,106,1),(139,106,1),(180,106,1),(13,107,1),(18,107,1),(47,107,1),(58,107,1),(66,107,1),(124,107,1),(134,107,1),(152,107,1),(168,107,1),(171,107,1),(2,108,1),(131,108,1),(143,108,1),(181,108,1),(49,109,1),(138,109,1),(168,109,1),(208,109,1),(234,109,1),(4,110,1),(17,110,1),(60,110,1),(105,110,1),(122,110,1),(169,110,1),(231,110,1),(233,110,1),(10,112,1),(79,112,1),(121,112,1),(220,112,1),(2,114,1),(30,114,1),(37,114,1),(87,114,1),(97,114,1),(219,114,1),(228,114,1),(19,115,1),(93,115,1),(97,115,1),(102,115,1),(187,115,1),(232,115,1),(6,116,1),(107,116,1),(203,116,1),(224,116,1),(13,117,1),(47,117,1),(100,117,1),(120,117,1),(124,117,1),(179,117,1),(78,118,1),(148,118,1),(92,120,1),(114,120,1),(128,120,1),(11,121,1),(84,121,1),(172,121,1),(25,122,1),(50,122,1),(86,122,1),(97,122,1),(127,122,1),(128,122,1),(7,123,1),(12,123,1),(76,123,1),(107,123,1),(108,123,1),(120,123,1),(103,124,1),(45,125,1),(219,125,1),(42,127,1),(56,127,1),(64,127,1),(135,127,1),(140,127,1),(15,128,1),(44,128,1),(62,128,1),(196,128,1),(223,128,1),(226,128,1),(51,129,1),(131,129,1),(108,130,1),(121,130,1),(149,130,1),(194,130,1),(41,131,1),(61,131,1),(87,131,1),(108,131,1),(111,131,1),(148,131,1),(154,131,1),(165,131,1),(195,131,1),(221,131,1),(165,132,1),(169,132,1),(177,132,1),(184,132,1),(193,132,1),(1,133,1),(29,133,1),(79,133,1),(121,133,1),(126,133,1),(148,133,1),(195,133,1),(222,133,1),(146,135,1),(176,135,1),(183,135,1),(201,135,1),(5,137,1),(6,137,1),(118,137,1),(20,138,1),(66,138,1),(90,138,1),(153,138,1),(205,138,1),(56,139,1),(67,139,1),(91,139,1),(143,139,1),(64,140,1),(196,140,1),(218,140,1),(18,141,1),(109,141,1),(124,141,1),(46,142,1),(85,142,1),(107,142,1),(231,142,1),(222,143,1),(232,143,1),(8,145,1),(38,145,1),(87,145,1),(104,145,1),(184,145,1),(35,146,1),(175,146,1),(116,148,1),(177,148,1),(191,148,1),(232,148,1),(132,149,1),(135,149,1),(139,149,1),(191,149,1),(226,149,1),(25,150,1),(120,150,1),(5,151,1),(87,151,1),(105,151,1),(127,151,1),(129,151,1),(85,152,1),(108,152,1),(124,152,1),(159,152,1),(94,153,1),(132,153,1),(215,153,1),(229,153,1),(39,155,1),(59,155,1),(153,155,1),(183,155,1),(203,155,1),(4,156,1),(178,157,1),(191,157,1),(37,158,1),(67,158,1),(110,158,1),(146,158,1),(164,158,1),(194,158,1),(76,160,1),(179,160,1),(224,160,1),(49,161,1),(65,161,1),(112,161,1),(140,161,1),(12,162,1),(98,162,1),(151,162,1),(163,162,1),(206,162,1),(210,162,1),(45,163,1),(138,163,1),(188,163,1),(33,164,1),(57,164,1),(62,164,1),(69,164,1),(161,164,1),(3,166,1),(29,166,1),(50,166,1),(118,166,1),(144,166,1),(30,167,1),(219,167,1),(221,167,1),(16,168,1),(78,168,1),(133,168,1),(152,168,1),(214,168,1),(219,168,1),(34,169,1),(43,169,1),(46,169,1),(91,169,1),(132,169,1),(141,169,1),(15,170,1),(195,170,1),(2,171,1),(3,171,1),(103,171,1),(156,171,1),(226,172,1),(14,173,1),(72,173,1),(192,173,1),(206,173,1),(57,175,1),(74,175,1),(93,175,1),(100,175,1),(128,175,1),(107,176,1),(170,176,1),(7,177,1),(55,177,1),(83,177,1),(98,177,1),(207,177,1),(208,177,1),(23,178,1),(59,178,1),(104,178,1),(130,178,1),(209,178,1),(104,179,1),(166,179,1),(197,179,1),(84,180,1),(163,180,1),(202,180,1),(11,181,1),(122,181,1),(173,181,1),(232,181,1),(28,184,1),(45,184,1),(80,184,1),(102,184,1),(117,184,1),(161,184,1),(211,184,1),(23,185,1),(27,185,1),(61,185,1),(102,185,1),(188,185,1),(219,185,1),(220,185,1),(8,186,1),(115,186,1),(156,186,1),(219,186,1),(10,187,1),(207,187,1),(217,187,1),(20,189,1),(60,189,1),(76,189,1),(92,189,1),(106,190,1),(174,190,1),(177,190,1),(214,190,1),(218,190,1),(6,191,1),(31,191,1),(48,191,1),(223,191,1),(135,192,1),(170,192,1),(224,192,1),(75,193,1),(81,193,1),(98,193,1),(153,193,1),(164,193,1),(96,194,1),(11,195,1),(2,198,1),(121,198,1),(137,198,1),(160,198,1),(38,199,1),(173,199,1),(67,200,1),(85,200,1),(175,200,1),(210,200,1),(195,201,1),(207,201,1),(54,202,1),(78,202,1),(95,202,1),(210,202,1),(4,203,1),(89,203,1),(103,203,1),(184,203,1),(2,205,1),(86,205,1),(91,205,1),(122,205,1),(148,205,1),(197,205,1),(99,206,1),(130,206,1),(217,206,1),(69,208,1),(138,208,1),(193,208,1),(214,208,1),(138,209,1),(207,209,1),(235,209,1),(8,210,1),(14,210,1),(40,210,1),(76,210,1),(219,210,1),(209,211,1),(215,211,1),(45,213,1),(83,213,1),(113,213,1),(125,213,1),(65,215,1),(90,215,1),(136,215,1),(223,215,1),(103,217,1),(122,218,1),(133,218,1),(150,218,1),(208,218,1),(213,218,1),(16,219,1),(104,219,1),(150,219,1),(152,219,1),(22,220,1),(46,220,1),(93,220,1),(123,220,1),(2,221,1),(32,221,1),(173,221,1),(207,221,1),(160,222,1),(166,222,1),(197,222,1),(62,223,1),(124,223,1),(142,223,1),(185,223,1),(217,223,1),(224,223,1),(235,223,1),(93,224,1),(101,224,1),(121,224,1),(214,224,1),(178,226,1),(229,226,1),(9,228,1),(34,228,1),(61,228,1),(87,228,1),(146,228,1),(147,228,1),(39,229,1),(80,229,1),(218,229,1),(224,229,1),(168,231,1),(211,231,1),(89,234,1),(150,234,1),(192,234,1),(21,235,1),(28,235,1),(42,235,1),(36,236,1),(77,236,1),(190,236,1),(47,237,1),(81,237,1),(126,237,1),(107,238,1),(128,238,1),(134,240,1),(200,240,1),(70,242,1),(83,242,1),(101,242,1),(58,243,1),(63,243,1),(119,243,1),(180,243,1),(235,243,1),(150,244,1),(200,244,1),(77,245,1),(230,245,1),(8,246,1),(47,246,1),(104,246,1),(116,246,1),(151,246,1),(123,250,1),(153,250,1),(194,250,1),(222,250,1),(184,251,1),(215,251,1),(2,252,1),(20,252,1),(60,254,1),(154,254,1),(46,255,1),(48,255,1),(63,255,1),(71,255,1),(92,255,1),(95,256,1),(205,256,1),(1,257,1),(179,257,1),(188,257,1),(202,257,1),(136,259,1),(6,260,1),(198,260,1),(35,261,1),(53,261,1),(86,261,1),(90,261,1),(166,261,1),(42,262,1),(45,262,1),(78,262,1),(91,262,1),(101,262,1),(106,262,1),(7,264,1),(92,265,1),(162,265,1),(202,267,1),(232,267,1),(26,268,1),(90,268,1),(120,268,1),(227,268,1),(106,269,1),(6,270,1),(25,270,1),(134,270,1),(187,270,1),(196,270,1),(209,270,1),(85,271,1),(140,271,1),(157,272,1),(81,274,1),(84,274,1),(114,274,1),(203,274,1),(52,275,1),(53,275,1),(177,275,1),(195,275,1),(215,275,1),(28,276,1),(59,276,1),(8,277,1),(66,277,1),(126,277,1),(141,279,1),(113,281,1),(124,281,1),(136,281,1),(177,281,1),(214,281,1),(19,282,1),(103,282,1),(126,282,1),(182,282,1),(199,282,1),(211,282,1),(234,282,1),(86,283,1),(140,283,1),(141,283,1),(171,283,1),(213,283,1),(170,284,1),(75,285,1),(98,285,1),(132,285,1),(155,285,1),(207,285,1),(115,287,1),(157,287,1),(105,288,1),(110,288,1),(174,288,1),(199,288,1),(204,288,1),(10,290,1),(12,290,1),(101,290,1),(211,291,1),(121,292,1),(143,292,1),(151,292,1),(32,293,1),(161,293,1),(66,294,1),(102,294,1),(205,294,1),(220,294,1),(66,295,1),(91,295,1),(159,295,1),(176,295,1),(13,296,1),(21,296,1),(81,296,1),(181,296,1),(188,296,1),(42,298,1),(48,298,1),(69,298,1),(99,298,1),(175,298,1),(223,299,1),(105,300,1),(162,300,1),(15,301,1),(112,301,1),(116,301,1),(127,301,1),(14,302,1),(17,302,1),(20,302,1),(155,302,1),(170,302,1),(201,302,1),(210,302,1),(24,304,1),(107,304,1),(109,304,1),(130,304,1),(134,304,1),(153,304,1),(225,304,1),(3,305,1),(40,305,1),(76,305,1),(127,305,1),(188,305,1),(13,306,1),(76,306,1),(80,306,1),(164,306,1),(234,306,1),(3,307,1),(5,307,1),(22,307,1),(47,307,1),(222,307,1),(16,309,1),(19,309,1),(44,309,1),(121,309,1),(183,309,1),(234,309,1),(157,310,1),(187,310,1),(100,311,1),(156,311,1),(68,312,1),(86,312,1),(104,312,1),(115,312,1),(162,312,1),(120,313,1),(144,313,1),(200,313,1),(54,315,1),(135,315,1),(145,315,1),(212,315,1),(17,316,1),(34,316,1),(167,316,1),(229,316,1),(87,317,1),(92,317,1),(94,317,1),(112,317,1),(9,318,1),(34,318,1),(35,318,1),(37,318,1),(142,318,1),(26,320,1),(52,320,1),(131,320,1),(187,320,1),(216,320,1),(30,323,1),(70,323,1),(86,323,1),(131,324,1),(147,324,1),(173,324,1),(13,327,1),(50,327,1),(104,327,1),(135,327,1),(143,327,1),(158,327,1),(167,327,1),(204,327,1),(209,327,1),(37,328,1),(82,328,1),(118,328,1),(5,330,1),(75,332,1),(95,332,1),(54,333,1),(71,333,1),(131,333,1),(146,333,1),(149,333,1),(48,334,1),(161,334,1),(183,334,1),(216,334,1),(30,335,1),(105,335,1),(77,336,1),(116,336,1),(209,336,1),(64,337,1),(67,337,1),(74,337,1),(149,337,1),(176,337,1),(154,338,1),(225,338,1),(80,339,1),(82,339,1),(112,339,1),(192,339,1),(46,340,1),(154,340,1),(178,340,1),(186,340,1),(39,341,1),(47,341,1),(169,341,1),(208,341,1),(217,341,1),(126,342,1),(147,342,1),(159,343,1),(12,345,1),(55,345,1),(58,345,1),(82,345,1),(185,345,1),(224,345,1),(202,346,1),(225,346,1),(22,347,1),(47,347,1),(56,347,1),(98,347,1),(145,347,1),(171,347,1),(190,347,1),(151,351,1),(101,352,1),(130,352,1),(153,352,1),(158,352,1),(209,352,1),(226,352,1),(29,353,1),(172,353,1),(215,353,1),(102,354,1),(132,354,1),(138,354,1),(37,355,1),(52,355,1),(140,355,1),(4,356,1),(131,356,1),(230,356,1),(32,357,1),(83,357,1),(51,358,1),(106,358,1),(111,358,1),(144,358,1),(184,358,1),(233,358,1),(125,359,1),(204,361,1),(159,363,1),(60,364,1),(89,364,1),(118,364,1),(204,364,1),(186,366,1),(211,366,1),(39,367,1),(53,367,1),(57,367,1),(102,367,1),(149,367,1),(49,369,1),(52,369,1),(119,369,1),(156,369,1),(162,369,1),(179,369,1),(2,370,1),(36,370,1),(64,370,1),(78,370,1),(92,370,1),(115,370,1),(157,370,1),(28,371,1),(30,371,1),(78,371,1),(90,371,1),(3,432,1),(20,432,1),(23,432,1),(27,432,1),(30,432,1),(33,432,1),(44,432,1),(46,432,1),(63,432,1),(66,432,1),(71,432,1),(72,432,1),(80,432,1),(96,432,1),(97,432,1),(102,432,1),(114,432,1),(115,432,1),(130,432,1),(158,432,1),(188,432,1),(193,432,1),(198,432,1),(210,432,1),(214,432,1),(223,432,1),(225,432,1),(3,433,1),(11,433,1),(16,433,1),(21,433,1),(31,433,1),(37,433,1),(38,433,1),(43,433,1),(59,433,1),(62,433,1),(68,433,1),(69,433,1),(73,433,1),(76,433,1),(86,433,1),(94,433,1),(98,433,1),(102,433,1),(113,433,1),(119,433,1),(129,433,1),(130,433,1),(136,433,1),(142,433,1),(150,433,1),(151,433,1),(156,433,1),(161,433,1),(173,433,1),(174,433,1),(175,433,1),(180,433,1),(181,433,1),(189,433,1),(211,433,1),(222,433,1),(225,433,1),(231,433,1),(5,434,1),(17,434,1),(27,434,1),(33,434,1),(40,434,1),(42,434,1),(44,434,1),(45,434,1),(49,434,1),(54,434,1),(58,434,1),(71,434,1),(79,434,1),(86,434,1),(117,434,1),(119,434,1),(126,434,1),(128,434,1),(137,434,1),(145,434,1),(146,434,1),(147,434,1),(155,434,1),(156,434,1),(161,434,1),(164,434,1),(169,434,1),(175,434,1),(187,434,1),(221,434,1),(7,435,1),(10,435,1),(11,435,1),(15,435,1),(69,435,1),(74,435,1),(80,435,1),(93,435,1),(94,435,1),(100,435,1),(118,435,1),(131,435,1),(133,435,1),(166,435,1),(173,435,1),(181,435,1),(182,435,1),(183,435,1),(185,435,1),(187,435,1),(189,435,1),(191,435,1),(194,435,1),(198,435,1),(203,435,1),(209,435,1),(211,435,1),(222,435,1),(227,435,1),(8,436,1),(21,436,1),(24,436,1),(26,436,1),(28,436,1),(31,436,1),(41,436,1),(49,436,1),(65,436,1),(67,436,1),(71,436,1),(96,436,1),(110,436,1),(113,436,1),(115,436,1),(129,436,1),(131,436,1),(132,436,1),(133,436,1),(137,436,1),(144,436,1),(174,436,1),(188,436,1),(205,436,1),(232,436,1),(1,437,1),(3,437,1),(38,437,1),(40,437,1),(51,437,1),(54,437,1),(67,437,1),(82,437,1),(112,437,1),(120,437,1),(122,437,1),(127,437,1),(135,437,1),(136,437,1),(141,437,1),(157,437,1),(163,437,1),(164,437,1),(181,437,1),(193,437,1),(196,437,1),(199,437,1),(200,437,1),(212,437,1),(1,438,1),(6,438,1),(17,438,1),(24,438,1),(26,438,1),(44,438,1),(46,438,1),(48,438,1),(52,438,1),(55,438,1),(60,438,1),(68,438,1),(80,438,1),(90,438,1),(102,438,1),(108,438,1),(116,438,1),(130,438,1),(138,438,1),(144,438,1),(152,438,1),(173,438,1),(178,438,1),(188,438,1),(195,438,1),(204,438,1),(208,438,1),(215,438,1),(217,438,1),(219,438,1),(220,438,1),(231,438,1),(13,439,1),(16,439,1),(19,439,1),(21,439,1),(39,439,1),(47,439,1),(67,439,1),(69,439,1),(70,439,1),(72,439,1),(79,439,1),(94,439,1),(96,439,1),(99,439,1),(131,439,1),(134,439,1),(137,439,1),(149,439,1),(154,439,1),(158,439,1),(175,439,1),(177,439,1),(181,439,1),(187,439,1),(192,439,1),(194,439,1),(195,439,1),(200,439,1),(215,439,1),(216,439,1),(225,439,1),(227,439,1),(233,439,1),(235,439,1),(25,440,1),(35,440,1),(36,440,1),(39,440,1),(57,440,1),(60,440,1),(64,440,1),(67,440,1),(71,440,1),(84,440,1),(100,440,1),(105,440,1),(106,440,1),(115,440,1),(123,440,1),(136,440,1),(141,440,1),(143,440,1),(145,440,1),(159,440,1),(162,440,1),(172,440,1),(182,440,1),(186,440,1),(192,440,1),(207,440,1),(215,440,1),(220,440,1),(228,440,1),(229,440,1),(2,441,1),(8,441,1),(22,441,1),(27,441,1),(34,441,1),(39,441,1),(46,441,1),(65,441,1),(68,441,1),(93,441,1),(105,441,1),(108,441,1),(112,441,1),(127,441,1),(131,441,1),(133,441,1),(141,441,1),(144,441,1),(156,441,1),(190,441,1),(200,441,1),(201,441,1),(206,441,1),(3,442,1),(12,442,1),(14,442,1),(17,442,1),(20,442,1),(34,442,1),(42,442,1),(43,442,1),(46,442,1),(49,442,1),(51,442,1),(57,442,1),(60,442,1),(61,442,1),(63,442,1),(82,442,1),(90,442,1),(101,442,1),(103,442,1),(107,442,1),(114,442,1),(117,442,1),(120,442,1),(125,442,1),(129,442,1),(134,442,1),(137,442,1),(139,442,1),(143,442,1),(147,442,1),(148,442,1),(160,442,1),(167,442,1),(168,442,1),(170,442,1),(171,442,1),(196,442,1),(199,442,1),(206,442,1),(207,442,1),(233,442,1),(235,442,1),(28,443,1),(36,443,1),(42,443,1),(50,443,1),(55,443,1),(64,443,1),(68,443,1),(84,443,1),(97,443,1),(101,443,1),(103,443,1),(108,443,1),(110,443,1),(114,443,1),(129,443,1),(142,443,1),(153,443,1),(161,443,1),(184,443,1),(189,443,1),(195,443,1),(212,443,1),(216,443,1),(217,443,1),(222,443,1),(227,443,1),(228,443,1),(233,443,1),(235,443,1),(14,444,1),(19,444,1),(36,444,1),(43,444,1),(48,444,1),(59,444,1),(62,444,1),(77,444,1),(78,444,1),(84,444,1),(86,444,1),(94,444,1),(117,444,1),(126,444,1),(129,444,1),(133,444,1),(138,444,1),(159,444,1),(165,444,1),(167,444,1),(169,444,1),(172,444,1),(176,444,1),(178,444,1),(183,444,1),(190,444,1),(202,444,1),(209,444,1),(215,444,1),(227,444,1),(234,444,1),(235,444,1),(16,445,1),(18,445,1),(29,445,1),(31,445,1),(34,445,1),(47,445,1),(53,445,1),(61,445,1),(64,445,1),(66,445,1),(81,445,1),(88,445,1),(99,445,1),(119,445,1),(124,445,1),(126,445,1),(137,445,1),(141,445,1),(155,445,1),(159,445,1),(169,445,1),(178,445,1),(185,445,1),(191,445,1),(199,445,1),(201,445,1),(205,445,1),(209,445,1),(212,445,1),(220,445,1),(229,445,1),(231,445,1),(27,446,1),(40,446,1),(41,446,1),(42,446,1),(49,446,1),(72,446,1),(82,446,1),(84,446,1),(95,446,1),(96,446,1),(103,446,1),(113,446,1),(118,446,1),(134,446,1),(140,446,1),(143,446,1),(147,446,1),(158,446,1),(159,446,1),(170,446,1),(176,446,1),(193,446,1),(194,446,1),(205,446,1),(222,446,1),(227,446,1),(228,446,1),(233,446,1),(235,446,1),(1,447,1),(8,447,1),(21,447,1),(32,447,1),(54,447,1),(66,447,1),(75,447,1),(82,447,1),(108,447,1),(109,447,1),(114,447,1),(118,447,1),(125,447,1),(140,447,1),(149,447,1),(155,447,1),(156,447,1),(158,447,1),(166,447,1),(168,447,1),(175,447,1),(176,447,1),(178,447,1),(197,447,1),(212,447,1),(213,447,1),(218,447,1),(230,447,1),(4,448,1),(9,448,1),(15,448,1),(34,448,1),(45,448,1),(46,448,1),(51,448,1),(80,448,1),(81,448,1),(83,448,1),(85,448,1),(87,448,1),(88,448,1),(92,448,1),(94,448,1),(101,448,1),(106,448,1),(124,448,1),(134,448,1),(139,448,1),(146,448,1),(147,448,1),(152,448,1),(177,448,1),(191,448,1),(201,448,1),(217,448,1),(33,449,1),(41,449,1),(44,449,1),(49,449,1),(52,449,1),(62,449,1),(68,449,1),(78,449,1),(82,449,1),(85,449,1),(88,449,1),(113,449,1),(133,449,1),(137,449,1),(141,449,1),(144,449,1),(165,449,1),(177,449,1),(181,449,1),(197,449,1),(199,449,1),(204,449,1),(207,449,1),(211,449,1),(216,449,1),(7,450,1),(25,450,1),(31,450,1),(41,450,1),(45,450,1),(50,450,1),(68,450,1),(75,450,1),(76,450,1),(79,450,1),(88,450,1),(94,450,1),(100,450,1),(101,450,1),(126,450,1),(151,450,1),(157,450,1),(172,450,1),(174,450,1),(196,450,1),(203,450,1),(216,450,1),(225,450,1),(14,451,1),(20,451,1),(25,451,1),(26,451,1),(29,451,1),(39,451,1),(73,451,1),(74,451,1),(85,451,1),(86,451,1),(99,451,1),(119,451,1),(133,451,1),(137,451,1),(148,451,1),(150,451,1),(163,451,1),(169,451,1),(170,451,1),(173,451,1),(174,451,1),(175,451,1),(182,451,1),(189,451,1),(201,451,1),(206,451,1),(220,451,1),(224,451,1),(230,451,1),(3,452,1),(5,452,1),(12,452,1),(24,452,1),(45,452,1),(63,452,1),(89,452,1),(92,452,1),(110,452,1),(118,452,1),(122,452,1),(142,452,1),(148,452,1),(189,452,1),(193,452,1),(194,452,1),(196,452,1),(197,452,1),(200,452,1),(201,452,1),(211,452,1),(223,452,1);
/*!40000 ALTER TABLE `tb_storage_exploration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_storage_quest`
--

DROP TABLE IF EXISTS `tb_storage_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_storage_quest` (
  `id_quest` int NOT NULL,
  `id_storage` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id_storage`,`id_quest`),
  KEY `fk_id_quest_tb_storage_quest` (`id_quest`),
  CONSTRAINT `fk_id_quest_tb_storage_quest` FOREIGN KEY (`id_quest`) REFERENCES `tb_quest` (`id_quest`),
  CONSTRAINT `fk_id_storage_tb_storage_quest` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_storage_quest`
--

LOCK TABLES `tb_storage_quest` WRITE;
/*!40000 ALTER TABLE `tb_storage_quest` DISABLE KEYS */;
INSERT INTO `tb_storage_quest` VALUES (6,1,1),(31,1,1),(56,2,1),(2,3,1),(89,3,1),(11,4,1),(82,4,1),(20,5,1),(81,5,1),(102,5,1),(15,6,1),(26,6,1),(49,6,1),(50,6,1),(111,6,1),(98,7,1),(117,7,1),(22,8,1),(78,8,1),(85,8,1),(95,8,1),(65,9,1),(113,9,1),(113,10,1),(117,10,1),(46,11,1),(57,11,1),(114,11,1),(40,12,1),(55,12,1),(58,12,1),(1,14,1),(68,14,1),(52,15,1),(67,15,1),(88,15,1),(112,15,1),(118,15,1),(121,15,1),(11,16,1),(24,16,1),(121,16,1),(13,17,1),(24,18,1),(34,18,1),(78,18,1),(99,18,1),(119,18,1),(24,19,1),(42,19,1),(93,19,1),(112,19,1),(18,20,1),(32,20,1),(29,21,1),(79,21,1),(99,21,1),(13,22,1),(44,22,1),(47,22,1),(77,24,1),(85,24,1),(54,25,1),(1,27,1),(64,27,1),(77,27,1),(113,27,1),(39,28,1),(123,28,1),(56,31,1),(84,31,1),(127,32,1),(10,33,1),(30,33,1),(97,33,1),(2,34,1),(3,34,1),(27,34,1),(62,34,1),(19,35,1),(64,35,1),(6,36,1),(5,37,1),(17,37,1),(29,37,1),(74,37,1),(91,37,1),(28,38,1),(32,38,1),(89,38,1),(105,38,1),(68,40,1),(69,40,1),(115,42,1),(34,44,1),(99,44,1),(88,45,1),(33,47,1),(107,47,1),(13,49,1),(14,50,1),(30,50,1),(36,50,1),(48,50,1),(127,50,1),(4,51,1),(52,51,1),(39,53,1),(48,53,1),(80,53,1),(120,54,1),(14,55,1),(44,55,1),(90,55,1),(58,56,1),(62,56,1),(88,57,1),(127,57,1),(127,58,1),(9,59,1),(49,59,1),(59,59,1),(114,59,1),(118,59,1),(122,62,1),(38,65,1),(74,65,1),(89,65,1),(100,65,1),(8,67,1),(52,67,1),(99,67,1),(116,67,1),(107,68,1),(35,69,1),(41,69,1),(61,69,1),(93,69,1),(76,70,1),(89,70,1),(3,72,1),(70,72,1),(83,72,1),(53,73,1),(68,73,1),(105,73,1),(110,73,1),(22,74,1),(104,74,1),(37,76,1),(57,76,1),(113,76,1),(11,77,1),(86,77,1),(20,78,1),(33,80,1),(81,80,1),(114,80,1),(91,81,1),(27,82,1),(32,83,1),(38,83,1),(41,83,1),(53,84,1),(71,84,1),(87,84,1),(98,84,1),(115,84,1),(120,87,1),(122,87,1),(55,88,1),(6,89,1),(20,89,1),(44,89,1),(109,89,1),(97,90,1),(8,91,1),(76,91,1),(101,91,1),(111,91,1),(21,92,1),(88,92,1),(107,92,1),(1,93,1),(52,93,1),(64,93,1),(70,93,1),(85,93,1),(15,94,1),(95,94,1),(36,95,1),(51,96,1),(34,97,1),(59,97,1),(124,97,1),(102,98,1),(118,100,1),(33,101,1),(123,101,1),(19,102,1),(52,103,1),(42,104,1),(46,104,1),(28,105,1),(86,105,1),(107,105,1),(5,106,1),(43,106,1),(55,106,1),(103,106,1),(84,107,1),(14,108,1),(18,108,1),(59,108,1),(91,108,1),(97,108,1),(125,109,1),(30,110,1),(90,110,1),(4,112,1),(84,112,1),(101,112,1),(117,112,1),(80,115,1),(103,115,1),(4,116,1),(21,116,1),(43,116,1),(56,116,1),(124,116,1),(70,117,1),(109,117,1),(117,117,1),(45,118,1),(80,120,1),(108,120,1),(11,121,1),(15,121,1),(47,121,1),(58,121,1),(117,121,1),(118,121,1),(70,122,1),(94,122,1),(112,122,1),(11,123,1),(16,123,1),(31,123,1),(74,124,1),(53,125,1),(41,126,1),(50,126,1),(87,126,1),(102,126,1),(113,126,1),(115,126,1),(116,126,1),(30,130,1),(117,130,1),(22,131,1),(118,132,1),(16,133,1),(55,133,1),(67,133,1),(36,135,1),(49,135,1),(77,135,1),(116,135,1),(82,137,1),(85,137,1),(127,137,1),(55,138,1),(61,138,1),(71,138,1),(85,138,1),(14,139,1),(29,139,1),(44,139,1),(78,139,1),(87,140,1),(16,141,1),(126,141,1),(31,142,1),(38,142,1),(69,142,1),(106,145,1),(123,145,1),(4,146,1),(10,146,1),(40,146,1),(61,146,1),(118,146,1),(107,148,1),(110,148,1),(3,149,1),(26,149,1),(23,150,1),(108,150,1),(86,151,1),(30,152,1),(75,152,1),(44,153,1),(87,153,1),(23,155,1),(35,155,1),(47,155,1),(51,155,1),(107,155,1),(7,156,1),(28,156,1),(118,157,1),(37,158,1),(93,160,1),(111,160,1),(50,161,1),(41,162,1),(47,162,1),(52,162,1),(83,162,1),(4,163,1),(20,163,1),(43,163,1),(74,163,1),(87,163,1),(12,164,1),(60,164,1),(43,166,1),(66,166,1),(29,167,1),(54,167,1),(57,167,1),(12,168,1),(42,168,1),(87,168,1),(111,168,1),(35,169,1),(40,169,1),(48,169,1),(16,170,1),(126,170,1),(15,172,1),(48,173,1),(4,178,1),(58,178,1),(72,179,1),(100,179,1),(31,181,1),(20,185,1),(25,185,1),(38,185,1),(66,186,1),(20,187,1),(81,187,1),(44,189,1),(58,189,1),(60,189,1),(88,189,1),(110,190,1),(15,191,1),(96,191,1),(100,191,1),(62,193,1),(122,193,1),(4,195,1),(48,195,1),(72,198,1),(99,198,1),(29,199,1),(16,200,1),(107,200,1),(9,201,1),(37,202,1),(32,203,1),(18,205,1),(39,205,1),(76,205,1),(96,205,1),(108,205,1),(71,208,1),(19,209,1),(53,209,1),(89,209,1),(1,210,1),(117,210,1),(127,210,1),(1,213,1),(21,213,1),(62,213,1),(13,215,1),(57,215,1),(27,218,1),(14,220,1),(68,220,1),(49,221,1),(65,221,1),(69,221,1),(94,221,1),(13,222,1),(61,222,1),(63,222,1),(76,224,1),(120,224,1),(98,226,1),(66,228,1),(40,229,1),(70,229,1),(84,229,1),(74,231,1),(114,231,1),(57,234,1),(21,235,1),(33,235,1),(34,235,1),(104,235,1),(126,235,1),(15,236,1),(17,236,1),(71,236,1),(10,237,1),(43,237,1),(80,237,1),(115,237,1),(27,240,1),(57,242,1),(79,242,1),(97,242,1),(9,243,1),(52,244,1),(55,244,1),(119,244,1),(120,244,1),(49,245,1),(116,245,1),(21,246,1),(98,246,1),(119,246,1),(2,247,1),(70,247,1),(84,250,1),(50,251,1),(64,251,1),(97,251,1),(106,251,1),(25,252,1),(45,252,1),(115,252,1),(35,254,1),(37,254,1),(104,254,1),(41,256,1),(80,256,1),(4,257,1),(99,258,1),(111,258,1),(27,259,1),(39,259,1),(28,260,1),(9,261,1),(13,261,1),(66,261,1),(106,261,1),(10,262,1),(23,262,1),(33,262,1),(16,264,1),(19,264,1),(46,264,1),(92,264,1),(60,267,1),(98,267,1),(108,267,1),(69,268,1),(101,268,1),(16,269,1),(70,269,1),(112,269,1),(124,269,1),(30,270,1),(46,270,1),(84,272,1),(94,272,1),(107,273,1),(3,274,1),(66,274,1),(75,274,1),(83,275,1),(89,275,1),(50,276,1),(73,276,1),(110,276,1),(17,277,1),(81,277,1),(119,277,1),(44,279,1),(109,279,1),(40,281,1),(109,281,1),(50,282,1),(5,283,1),(63,283,1),(108,284,1),(125,284,1),(73,285,1),(47,287,1),(117,287,1),(63,288,1),(87,288,1),(101,288,1),(15,290,1),(30,290,1),(121,290,1),(100,291,1),(46,292,1),(54,292,1),(43,293,1),(104,293,1),(121,293,1),(69,294,1),(82,294,1),(113,294,1),(73,295,1),(90,295,1),(106,295,1),(116,295,1),(119,295,1),(27,296,1),(109,296,1),(116,298,1),(67,299,1),(46,300,1),(9,301,1),(23,301,1),(80,301,1),(17,302,1),(19,302,1),(22,302,1),(54,302,1),(116,302,1),(124,302,1),(3,306,1),(81,306,1),(92,306,1),(93,306,1),(10,307,1),(25,307,1),(35,309,1),(101,309,1),(103,309,1),(37,310,1),(43,310,1),(54,310,1),(61,310,1),(9,311,1),(10,311,1),(29,311,1),(89,311,1),(73,312,1),(59,315,1),(60,315,1),(19,316,1),(78,316,1),(93,316,1),(5,317,1),(72,317,1),(84,317,1),(34,318,1),(38,318,1),(103,318,1),(2,320,1),(79,320,1),(103,323,1),(22,324,1),(114,324,1),(68,327,1),(106,327,1),(108,327,1),(114,327,1),(3,328,1),(27,328,1),(21,330,1),(61,332,1),(12,333,1),(20,333,1),(51,333,1),(87,333,1),(112,333,1),(116,334,1),(126,334,1),(28,335,1),(88,335,1),(23,336,1),(55,336,1),(110,336,1),(78,337,1),(6,339,1),(17,339,1),(36,340,1),(112,340,1),(123,340,1),(9,341,1),(44,342,1),(97,342,1),(109,343,1),(20,345,1),(64,345,1),(103,347,1),(127,347,1),(1,351,1),(2,351,1),(52,352,1),(72,352,1),(96,352,1),(44,353,1),(60,353,1),(60,354,1),(7,355,1),(92,355,1),(69,357,1),(33,361,1),(56,361,1),(6,363,1),(84,363,1),(116,363,1),(23,364,1),(67,366,1),(73,367,1),(123,369,1),(12,370,1),(35,370,1),(40,371,1),(56,371,1),(25,432,1),(28,432,1),(53,432,1),(67,432,1),(74,432,1),(85,432,1),(89,432,1),(92,432,1),(112,432,1),(119,432,1),(125,432,1),(8,433,1),(15,433,1),(17,433,1),(26,433,1),(56,433,1),(81,433,1),(102,433,1),(113,433,1),(120,433,1),(123,433,1),(17,434,1),(32,434,1),(51,434,1),(65,434,1),(93,434,1),(18,435,1),(39,435,1),(66,435,1),(78,435,1),(79,435,1),(108,435,1),(111,435,1),(17,436,1),(18,436,1),(19,436,1),(31,436,1),(40,436,1),(62,436,1),(65,436,1),(69,436,1),(70,436,1),(99,436,1),(119,436,1),(124,436,1),(8,437,1),(10,437,1),(16,437,1),(25,437,1),(26,437,1),(28,437,1),(34,437,1),(36,437,1),(43,437,1),(57,437,1),(75,437,1),(95,437,1),(105,437,1),(13,438,1),(17,438,1),(33,438,1),(35,438,1),(36,438,1),(64,438,1),(66,438,1),(79,438,1),(84,438,1),(86,438,1),(87,438,1),(88,438,1),(89,438,1),(19,439,1),(23,439,1),(25,439,1),(28,439,1),(31,439,1),(42,439,1),(56,439,1),(75,439,1),(83,439,1),(88,439,1),(92,439,1),(95,439,1),(105,439,1),(117,439,1),(121,439,1),(124,439,1),(1,440,1),(5,440,1),(8,440,1),(11,440,1),(14,440,1),(22,440,1),(23,440,1),(26,440,1),(45,440,1),(50,440,1),(67,440,1),(68,440,1),(69,440,1),(82,440,1),(83,440,1),(85,440,1),(93,440,1),(114,440,1),(117,440,1),(125,440,1),(14,441,1),(25,441,1),(48,441,1),(55,441,1),(59,441,1),(60,441,1),(61,441,1),(79,441,1),(89,441,1),(95,441,1),(99,441,1),(100,441,1),(105,441,1),(111,441,1),(113,441,1),(2,442,1),(4,442,1),(7,442,1),(8,442,1),(46,442,1),(50,442,1),(55,442,1),(72,442,1),(76,442,1),(80,442,1),(81,442,1),(96,442,1),(97,442,1),(105,442,1),(113,442,1),(124,442,1),(1,443,1),(8,443,1),(19,443,1),(26,443,1),(42,443,1),(47,443,1),(50,443,1),(60,443,1),(65,443,1),(67,443,1),(73,443,1),(78,443,1),(84,443,1),(91,443,1),(100,443,1),(112,443,1),(122,443,1),(125,443,1),(126,443,1),(4,444,1),(5,444,1),(16,444,1),(27,444,1),(29,444,1),(30,444,1),(33,444,1),(43,444,1),(47,444,1),(58,444,1),(63,444,1),(90,444,1),(91,444,1),(93,444,1),(97,444,1),(109,444,1),(120,444,1),(127,444,1),(6,445,1),(7,445,1),(14,445,1),(25,445,1),(29,445,1),(32,445,1),(37,445,1),(39,445,1),(42,445,1),(55,445,1),(64,445,1),(65,445,1),(66,445,1),(69,445,1),(77,445,1),(85,445,1),(110,445,1),(112,445,1),(113,445,1),(118,445,1),(3,446,1),(7,446,1),(10,446,1),(43,446,1),(61,446,1),(62,446,1),(68,446,1),(72,446,1),(82,446,1),(107,446,1),(108,446,1),(114,446,1),(7,447,1),(17,447,1),(23,447,1),(27,447,1),(30,447,1),(33,447,1),(45,447,1),(46,447,1),(63,447,1),(64,447,1),(70,447,1),(74,447,1),(81,447,1),(86,447,1),(92,447,1),(102,447,1),(120,447,1),(5,448,1),(11,448,1),(18,448,1),(20,448,1),(24,448,1),(32,448,1),(34,448,1),(42,448,1),(67,448,1),(73,448,1),(75,448,1),(93,448,1),(94,448,1),(101,448,1),(104,448,1),(106,448,1),(112,448,1),(1,449,1),(8,449,1),(22,449,1),(32,449,1),(38,449,1),(49,449,1),(56,449,1),(61,449,1),(65,449,1),(70,449,1),(73,449,1),(82,449,1),(87,449,1),(97,449,1),(99,449,1),(124,449,1),(127,449,1),(2,450,1),(12,450,1),(22,450,1),(38,450,1),(45,450,1),(52,450,1),(77,450,1),(79,450,1),(98,450,1),(102,450,1),(104,450,1),(123,450,1),(12,451,1),(15,451,1),(20,451,1),(24,451,1),(27,451,1),(32,451,1),(33,451,1),(50,451,1),(51,451,1),(58,451,1),(64,451,1),(65,451,1),(71,451,1),(76,451,1),(86,451,1),(98,451,1),(101,451,1),(111,451,1),(126,451,1),(2,452,1),(3,452,1),(26,452,1),(28,452,1),(38,452,1),(47,452,1),(63,452,1),(73,452,1),(78,452,1),(90,452,1),(94,452,1),(96,452,1),(103,452,1),(121,452,1),(122,452,1);
/*!40000 ALTER TABLE `tb_storage_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_storage_scrap`
--

DROP TABLE IF EXISTS `tb_storage_scrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_storage_scrap` (
  `id_scrap` int NOT NULL,
  `id_junk` int NOT NULL,
  `junk_quantity` int NOT NULL,
  PRIMARY KEY (`id_scrap`,`id_junk`),
  KEY `fk_id_junk_tb_storage_scrap` (`id_junk`),
  CONSTRAINT `fk_id_junk_tb_storage_scrap` FOREIGN KEY (`id_junk`) REFERENCES `tb_storage` (`id_storage`),
  CONSTRAINT `fk_id_scrap_tb_storage_scrap` FOREIGN KEY (`id_scrap`) REFERENCES `tb_scrap` (`id_scrap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_storage_scrap`
--

LOCK TABLES `tb_storage_scrap` WRITE;
/*!40000 ALTER TABLE `tb_storage_scrap` DISABLE KEYS */;
INSERT INTO `tb_storage_scrap` VALUES (2,435,1),(2,446,1),(2,448,1),(6,434,2),(6,445,1),(7,434,2),(7,443,2),(7,450,1),(8,447,2),(9,439,1),(9,445,2),(10,448,2),(11,433,1),(11,435,1),(11,450,1),(12,434,1),(13,433,1),(13,442,2),(13,445,1),(14,447,1),(14,448,1),(16,442,1),(16,448,2),(17,435,2),(18,434,1),(18,441,1),(18,447,1),(20,434,1),(20,435,1),(20,439,2),(22,436,2),(22,439,2),(22,448,2),(23,434,2),(23,439,2),(23,441,1),(24,436,2),(26,439,2),(27,434,2),(27,436,2),(27,445,1),(28,443,2),(28,445,2),(28,450,1),(30,438,2),(30,447,2),(30,450,2),(31,434,1),(32,435,1),(33,434,2),(33,435,1),(34,442,2),(34,449,2),(38,448,2),(39,441,1),(39,442,1),(43,439,1),(43,444,2),(43,448,1),(45,437,2),(45,443,2),(47,437,1),(47,438,1),(49,441,2),(50,435,1),(50,437,2),(50,443,2),(52,439,2),(52,441,1),(55,452,1),(57,445,2),(58,445,1),(59,438,2),(61,442,2),(61,448,1),(61,452,2),(62,439,1),(62,444,1),(62,448,2),(64,451,1),(65,432,2),(65,442,1),(68,436,2),(68,443,1),(68,447,2),(70,432,2),(70,445,1),(70,446,1),(71,433,1),(71,446,1),(75,435,2),(75,442,1),(75,444,1),(76,448,2),(78,452,2),(79,452,1),(80,436,2),(80,449,2),(81,435,2),(81,437,2),(83,437,2),(83,446,1),(84,435,2),(84,444,1),(86,435,1),(86,452,1),(88,432,1),(88,437,2),(88,440,2),(90,439,1),(90,450,1),(90,452,2),(91,434,1),(92,447,1),(93,436,1),(93,442,2),(95,432,1),(95,436,1),(95,447,1),(97,436,1),(97,450,1),(98,444,2),(98,449,2),(99,440,1),(100,435,1),(101,446,2),(101,448,2),(103,444,1),(103,450,1),(104,451,1),(105,449,1),(105,450,1),(106,438,2),(107,435,1),(107,440,1),(107,448,2),(108,434,2),(108,450,2),(109,440,2),(109,445,2),(109,452,1),(110,449,2),(114,435,1),(114,438,1),(114,448,1),(116,441,1),(116,448,1),(116,450,2),(117,452,2),(118,441,2),(118,446,1),(119,440,1),(119,442,2),(119,444,1),(120,432,1),(120,451,2),(121,432,2),(121,442,2),(121,452,2),(122,445,2),(123,447,1),(124,448,2),(125,439,2),(126,438,1),(126,441,2),(127,432,1),(128,432,1),(128,447,1),(128,450,2),(130,452,1),(131,435,2),(131,445,2),(131,448,1),(132,438,2),(133,436,2),(133,440,1),(135,445,1),(135,451,2),(136,444,1),(137,445,1),(138,433,1),(138,439,1),(138,449,1),(139,433,1),(139,434,1),(141,440,2),(141,441,2),(141,445,2),(142,447,2),(143,441,1),(143,444,2),(143,448,1),(144,451,2),(144,452,2),(145,450,1),(146,432,2),(146,433,2),(146,441,2),(147,449,1),(149,443,1),(150,438,1),(150,447,2),(154,442,1),(154,449,2),(156,450,2),(157,432,1),(157,437,1),(157,444,2),(159,432,2),(159,438,2),(160,434,1),(160,441,2),(160,444,2),(162,444,2),(163,442,1),(163,445,2),(163,448,2),(164,432,2),(164,436,2),(164,446,1),(166,439,2),(166,444,2),(167,440,2),(167,448,1),(170,438,2),(170,445,1),(170,450,2),(171,438,1),(171,440,1),(171,448,1),(172,437,2),(173,437,1),(173,442,1),(175,442,1),(175,447,2),(175,452,1),(177,435,1),(177,437,2),(177,451,2),(178,441,1),(179,433,1),(180,435,1),(180,437,2),(182,449,2),(183,441,1),(183,445,1),(183,449,2),(184,442,1),(184,444,2),(185,438,1),(185,448,1),(185,450,2),(187,443,2),(187,444,1),(188,439,1),(189,438,1),(189,440,2),(189,447,1),(190,434,1),(190,442,1),(191,435,2),(191,449,1),(192,443,1),(192,446,2),(193,435,1),(193,436,1),(193,450,1),(194,435,2),(194,439,2),(194,448,2),(196,445,2),(196,452,2),(197,445,2),(198,440,1),(198,452,1),(199,433,1),(199,445,2),(200,435,2),(200,436,1),(200,440,1),(203,432,2),(203,441,1),(203,449,1),(204,432,1),(204,435,1),(204,450,2),(205,436,2),(205,445,1),(205,449,2),(206,434,2),(206,443,2),(206,447,1),(207,442,2),(208,444,1),(209,432,1),(209,446,2),(210,443,1),(211,444,1),(211,450,2),(212,440,1),(212,445,1),(214,437,1),(214,439,2),(214,443,2),(215,443,2),(217,449,2),(218,438,2),(218,452,2),(220,440,2),(223,438,1),(224,437,1),(225,435,1),(225,442,2),(226,449,2),(227,434,2),(227,442,2),(228,444,1),(229,438,2),(229,443,1),(229,448,1),(230,440,2),(231,438,2),(232,442,1),(232,452,1),(233,443,2),(234,439,1),(234,442,1),(235,452,1),(237,439,2),(237,441,1),(237,449,1),(239,432,2),(239,436,1),(240,432,2),(240,434,1),(242,434,2),(242,450,1),(243,435,2),(243,440,2),(244,432,1),(244,439,2),(245,443,2),(246,435,1),(246,439,1),(246,444,1),(247,436,2),(247,439,1),(247,449,1),(248,447,1),(249,436,1),(250,445,2),(250,449,1),(250,452,2),(251,438,1),(253,449,2),(255,433,2),(255,442,1),(255,447,2),(256,435,2),(256,441,2),(256,450,1),(257,443,2),(257,448,2),(257,449,2),(258,449,2),(259,443,1),(260,434,1),(260,437,1),(261,433,1),(261,444,2),(261,452,1),(262,433,1),(262,441,2),(263,432,1),(263,442,2),(264,451,2),(265,435,1),(265,443,1),(266,434,2),(267,438,1),(269,436,1),(269,442,2),(270,434,2),(270,437,2),(270,445,2),(271,438,2),(271,451,1),(272,441,2),(272,448,1),(272,449,2),(273,444,2),(273,448,1),(273,449,2),(274,442,2),(275,438,2),(275,447,2),(276,438,1),(276,441,1),(277,435,2),(278,443,1),(278,449,2),(279,434,2),(279,438,2),(279,452,1),(280,433,1),(280,449,2),(281,437,1),(281,438,2),(282,432,1),(282,436,2),(282,446,2),(284,433,2),(285,434,2),(285,435,2),(286,445,2),(286,447,2),(287,434,2),(287,444,1),(288,434,2),(288,435,2),(288,451,1),(289,440,1),(289,447,2),(290,437,2),(292,436,1),(293,435,2),(294,433,2),(294,438,2),(294,443,2),(295,432,1),(295,438,1),(295,448,2),(297,432,1),(297,439,1),(297,440,1),(298,447,1),(299,440,2),(300,436,2),(300,441,1),(301,452,1),(302,434,2),(302,437,1),(302,446,1),(303,444,1),(303,449,2),(304,435,1),(306,436,1),(306,442,2),(306,452,1),(308,433,2),(308,436,1),(308,452,1),(309,433,1),(309,439,2),(311,432,1),(311,446,1),(312,440,1),(313,432,2),(313,445,1),(314,437,2),(314,450,1),(314,452,1),(315,441,1),(316,434,1),(316,439,1),(316,447,1),(320,434,1),(320,451,2),(321,448,1),(321,450,1),(321,452,1),(322,435,2),(322,444,2),(324,434,2),(324,451,1),(325,438,2),(325,443,2),(325,450,1),(326,435,1),(326,436,2),(326,438,2),(327,433,1),(328,438,2),(328,441,2),(328,449,2),(329,437,1),(329,443,1),(330,432,2),(331,433,2),(331,448,2),(332,435,2),(332,441,2),(334,447,1),(334,449,2),(334,450,1),(335,435,2),(335,436,2),(335,438,2),(337,443,2),(337,445,2),(337,449,1),(339,442,1),(340,447,1),(342,436,2),(343,435,2),(343,436,2),(343,447,2),(344,438,1),(344,448,1),(344,452,2),(345,437,1),(345,452,2),(346,434,2),(346,449,2),(347,434,1),(347,442,2),(348,436,2),(348,437,1),(348,439,2),(349,448,1),(349,452,1),(350,432,2),(350,433,2),(350,445,1),(351,436,1),(351,440,1),(352,436,2),(352,452,2),(353,451,1),(354,443,2),(354,450,2),(354,451,2),(355,444,2),(355,448,1),(355,450,1),(356,450,1),(357,439,2),(358,445,2),(358,450,2),(360,438,1),(361,437,1),(361,442,2),(361,452,2),(363,433,2),(363,443,1),(363,450,1),(364,435,2),(364,436,2),(365,436,2),(366,432,1),(366,440,1),(367,432,2),(367,442,2),(368,436,1),(370,444,1),(371,434,2),(371,437,2),(371,443,1),(372,437,2),(372,446,2),(373,444,2),(373,447,1),(374,438,1),(375,440,2),(375,450,1),(375,451,2),(377,439,2),(377,451,1),(378,444,1),(379,433,2),(379,451,2),(380,437,2),(380,446,1),(380,447,2),(381,452,2),(382,439,2),(382,441,1),(382,450,2),(383,434,1),(383,435,1),(384,436,1),(384,440,2),(384,450,2),(386,439,2),(388,445,2),(388,447,2),(389,440,1),(389,447,2),(389,449,2),(392,440,1),(392,442,2),(393,433,1),(393,443,1),(394,439,1),(394,441,1),(395,437,2),(395,445,2),(396,444,1),(396,445,1),(397,434,2),(397,443,1),(398,438,2),(398,447,2),(401,436,2),(401,439,2),(401,440,1),(402,440,1),(403,437,2),(403,439,2),(404,435,1),(405,433,1),(405,440,1),(406,433,2),(407,440,1),(407,446,1),(407,452,2),(408,449,2),(409,446,2),(409,450,1),(412,441,2),(412,448,2),(412,449,2),(414,432,2),(414,434,1),(414,441,2),(416,433,2),(416,444,2),(416,447,2),(417,445,1),(418,438,1),(419,449,1),(420,432,2),(420,442,2),(421,444,1),(421,448,2),(424,442,1),(424,452,1),(425,436,2),(427,435,1),(427,436,1),(428,436,2),(428,442,1),(428,452,1),(429,438,2),(429,445,2),(429,448,2),(430,437,2),(431,439,2),(431,445,2),(431,448,2),(432,439,2),(432,447,2),(432,451,2),(433,446,1),(433,447,2),(434,437,2),(437,437,2),(437,449,2),(439,450,2),(440,439,1),(440,448,1),(441,441,2),(441,442,1),(441,452,1),(443,443,2),(443,447,1),(444,442,1),(444,449,2),(445,437,2),(445,438,2),(446,444,2),(446,450,1),(447,437,1),(447,443,2),(447,445,2),(448,433,1),(448,435,2),(448,436,2),(449,451,2),(450,440,1),(450,443,2),(453,446,2),(454,437,2),(455,435,1),(456,443,2),(456,450,1),(456,451,1),(457,441,2),(458,432,2),(458,449,2),(460,438,2),(460,441,1),(460,444,1),(461,439,1),(462,440,2),(462,450,1),(463,436,2),(463,437,1),(463,447,1),(464,440,1),(464,443,2),(466,439,2),(468,435,2),(468,436,1),(469,446,1),(470,445,2),(470,449,1),(472,442,1),(473,442,1),(473,447,2),(474,450,2),(475,436,2),(475,443,2),(476,442,2),(476,448,1),(476,450,1),(477,432,1),(477,433,1),(477,450,2),(479,443,2),(479,446,2),(479,447,2),(480,445,2),(480,446,1),(480,452,1),(481,438,1),(481,448,1),(481,452,1),(483,433,1),(483,448,1),(483,450,2),(484,435,2),(484,444,2),(484,450,1),(485,448,2),(486,435,1),(486,443,1),(486,451,2),(487,441,2),(487,442,1),(487,449,2),(488,441,2),(489,436,1),(490,440,2),(490,442,2),(493,449,1),(495,445,1),(496,432,2),(496,440,1),(497,449,2),(498,436,2),(498,446,2),(499,446,2),(499,451,1),(501,435,2),(501,438,2),(502,432,1),(502,441,2),(502,452,2),(503,444,2),(503,446,2),(503,451,2),(504,432,2),(504,444,1),(504,448,2),(505,438,1),(506,432,2),(508,444,2),(508,449,1),(508,452,1),(510,449,1),(511,439,1),(511,444,2),(512,434,1),(513,434,1),(513,438,1),(513,445,1),(514,432,2),(514,445,2),(515,446,2),(517,434,2),(517,435,2),(517,436,1),(519,433,1),(519,438,1),(519,447,1),(520,447,1),(521,444,1),(521,449,2),(521,451,1),(522,432,1),(522,433,1),(523,447,1),(524,434,1),(524,436,1),(524,441,1),(525,432,2),(525,437,2),(526,440,1),(526,446,1),(527,444,1),(527,448,1),(527,451,2),(528,434,1),(528,440,1),(528,444,2),(530,435,2),(530,443,2),(530,445,2),(531,443,1),(532,435,1),(532,441,1),(532,445,2),(533,432,2),(533,436,2),(533,450,1),(534,445,2),(534,451,2),(536,433,1),(537,435,1),(538,433,2),(538,436,2),(538,443,2),(539,444,1),(539,450,2),(540,433,2),(540,451,2),(540,452,1),(541,434,2),(541,435,2),(541,451,2),(542,437,2),(542,445,1),(542,451,2),(543,436,2),(543,437,1),(543,441,1),(544,441,2),(544,445,1),(544,447,2),(545,433,1),(545,451,2),(546,436,1),(546,449,2),(548,437,1),(548,438,1),(549,439,2),(549,440,1),(550,444,2),(550,447,1),(550,449,2),(551,435,1),(552,447,2),(553,438,1),(553,440,1),(553,447,1),(554,436,1),(555,441,2),(555,450,1),(556,440,2),(557,444,2),(558,452,1),(559,438,2),(559,442,2),(559,446,2),(560,441,1),(560,449,1),(561,438,2),(561,445,2),(562,446,1),(565,452,1),(566,434,1),(566,441,2),(566,446,2),(567,436,1),(567,449,2),(569,441,2),(569,442,1),(569,446,1),(570,449,2),(570,451,1),(571,450,2),(572,444,1),(572,449,2),(573,438,2),(573,443,1),(575,437,2),(575,439,2),(575,447,1),(576,439,1),(576,443,2),(576,448,2),(577,438,1),(577,440,1),(579,432,2),(579,435,2),(580,442,2),(580,448,1),(580,450,1),(583,439,2),(583,443,1),(584,435,2),(584,447,2),(586,437,2),(586,450,1),(587,444,1),(587,451,1),(589,434,1),(589,438,2),(589,439,2),(591,441,2),(592,440,2),(592,441,1),(593,436,2),(593,439,2),(593,447,2),(595,440,2),(595,441,1),(595,450,1),(599,441,1),(600,438,2),(600,446,2),(601,432,1),(601,447,2),(601,450,1),(602,436,2),(602,443,2),(603,433,2),(603,443,2),(603,448,1),(604,441,1),(604,442,1),(606,435,2),(606,436,2),(606,442,2),(607,442,2),(607,443,1),(608,437,2),(608,447,2),(608,450,2),(609,436,2),(609,438,2),(613,436,1),(613,441,1),(614,437,2),(614,440,1),(614,448,1),(615,434,1),(615,438,1),(615,447,2),(616,435,2),(617,440,1),(618,443,2),(619,451,2),(620,442,1),(621,449,2),(622,440,1),(622,441,2),(623,446,1),(624,433,1),(624,435,1),(624,445,2),(627,432,1),(627,442,1),(627,445,2),(628,432,2),(628,452,1),(629,432,2),(629,442,1),(629,445,2),(631,438,2),(631,445,2),(632,434,1),(632,439,2),(633,445,1),(634,435,2),(635,435,1),(635,442,2),(636,438,2),(636,448,2),(636,449,1),(640,432,2),(641,444,2),(641,448,1),(642,443,2),(644,439,1),(646,437,1),(647,452,2),(648,439,1),(649,438,1),(650,445,2),(651,438,1),(653,433,2),(653,438,2),(653,439,2),(655,434,1),(655,441,2),(655,451,1),(656,441,1),(656,445,2),(656,448,2),(657,432,2),(657,438,2),(657,443,2),(658,451,1),(659,445,1),(661,452,1),(662,444,1),(662,447,1),(663,432,1),(663,438,1),(663,447,2),(664,442,2),(664,451,2),(665,435,1),(665,436,1),(668,436,1),(671,445,1),(673,435,1),(673,440,2),(673,447,1),(674,437,2),(674,438,2),(674,445,2),(675,442,1),(676,433,2),(676,441,1),(676,449,1),(677,437,2),(678,437,1),(679,435,1),(679,436,2),(680,441,2),(680,448,2),(680,451,1),(682,438,2),(682,450,2),(682,451,1),(683,432,2),(685,445,2),(685,449,1),(686,439,2),(686,443,2),(686,452,1),(687,434,2),(687,437,2),(687,444,2),(688,440,2),(688,445,2),(689,441,1),(689,447,1),(689,448,2),(690,440,2),(690,444,1),(691,441,1),(691,450,2),(692,438,2),(692,442,1),(692,452,2),(693,439,1),(693,445,1),(693,448,1),(694,443,2),(694,451,1),(696,437,1),(697,438,1),(697,444,1),(697,446,1),(699,432,1),(699,440,2),(699,448,2),(700,437,1),(700,447,2),(700,450,1),(701,432,2),(701,437,2),(701,449,2),(704,439,2);
/*!40000 ALTER TABLE `tb_storage_scrap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_weapon`
--

DROP TABLE IF EXISTS `tb_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_weapon` (
  `id_weapon` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `damage` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_weapon`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_storage_tb_weapon` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_weapon`
--

LOCK TABLES `tb_weapon` WRITE;
/*!40000 ALTER TABLE `tb_weapon` DISABLE KEYS */;
INSERT INTO `tb_weapon` VALUES (1,'﻿institute pistol','9-11',2,158),(2,'incendiary institute pistol','10-13',0,159),(3,'improved institute pistol','11-15',0,160),(4,'scoped institute pistol','12-17',6,161),(5,'scattered institute pistol','13-19',5,162),(6,'apotheosis','14-21',6,163),(7,'institute rifle','14-16',1,164),(8,'excited institute rifle','15-18',0,165),(9,'long institute rifle','16-20',7,166),(10,'night-vision institute rifle','17-22',7,167),(11,'targeting institute rifle','18-24',7,168),(12,'virgil\'s rifle','19-26',1,169),(13,'junk jet','13-15',2,170),(14,'recoil compensated junk jet','14-17',0,171),(15,'tactical junk jet','15-19',1,172),(16,'electrified junk jet','16-21',2,173),(17,'flaming junk jet','17-23',0,174),(18,'technician\'s revenge','18-25',0,175),(19,'pipe pistol','1-3',2,176),(20,'hair trigger pipe pistol','2-5',3,177),(21,'heavy pipe pistol','3-7',7,178),(22,'scoped pipe pistol','4-9',4,179),(23,'auto pipe pistol','5-11',0,180),(24,'little brother','6-13',5,181),(25,'pipe rifle','5-7',0,182),(26,'calibrated pipe rifle','6-9',0,183),(27,'long pipe rifle','7-11',3,184),(28,'night-vision pipe rifle','8-13',3,185),(29,'bayoneted pipe rifle','9-15',4,186),(30,'big sister','10-17',1,187),(31,'plasma thrower','17-19',1,188),(32,'agitated plasma thrower','18-21',0,189),(33,'tactical plasma thrower','19-23',8,190),(34,'boosted plasma thrower','20-25',4,191),(35,'overcharged plasma thrower','21-27',4,192),(36,'dragon\'s maw','22-29',3,193),(37,'rusty combat shotgun','13',2,194),(38,'combat shotgun','13-14',0,195),(39,'enhanced combat shotgun','13-15',0,196),(40,'hardened combat shotgun','13-16',0,197),(41,'double-barrel combat shotgun','13-17',3,198),(42,'charon\'s shotgun','13-18',0,199),(43,'mountain mama','14-19',3,200),(44,'rusty sawed-off shotgun','6',3,201),(45,'sawed-off shotgun','6-7',1,202),(46,'enhanced sawed-off shotgun','6-8',3,203),(47,'hardened sawed-off shotgun','6-9',0,204),(48,'double-barrel sawed-off shotgun','6-10',8,205),(49,'kneecapper','6-11',0,206),(50,'rusty shotgun','9',0,207),(51,'shotgun','9-10',6,208),(52,'enhanced shotgun','9-11',6,209),(53,'hardened shotgun','9-12',1,210),(54,'double-barrel shotgun','9-13',0,211),(55,'farmer\'s daughter','9-14',0,212),(56,'laser musket','10-13',6,213),(57,'rusty alien disintegrator','16',0,214),(58,'alien disintegrator','17',1,215),(59,'enhanced alien disintegrator','18',0,216),(60,'hardened alien disintegrator','19',0,217),(61,'rusty laser rifle','12',6,218),(62,'laser rifle','12-13',0,219),(63,'tuned laser rifle','12-14',5,220),(64,'focused laser rifle','12-15',3,221),(65,'amplified laser rifle','12-16',0,222),(66,'wazer wifle','12-17',0,223),(67,'rusty plasma rifle','17',8,224),(68,'plasma rifle','17-18',0,225),(69,'tuned plasma rifle','17-19',2,226),(70,'focused plasma rifle','17-20',0,227),(71,'amplified plasma rifle','17-22',4,228),(72,'mean green monster','17-23',1,229),(73,'rusty pulse rifle','17-18',0,230),(74,'pulse rifle','18-19',3,231),(75,'enhanced pulse rifle','19-20',0,232),(76,'hardened pulse rifle','20-21',0,233),(77,'rusty assault rifle','8',1,234),(78,'assault rifle','8-9',6,235),(79,'enhanced assault rifle','8-10',2,236),(80,'hardened assault rifle','8-11',2,237),(81,'armor piercing assault rifle','8-12',3,238),(82,'infiltrator','8-13',0,239),(83,'rusty bb gun','0-1',3,240),(84,'bb gun','0-2',0,241),(85,'enhanced bb gun','0-3',6,242),(86,'hardened bb gun','0-4',0,243),(87,'armor piercing bb gun','0-5',5,244),(88,'red rocket','0-6',3,245),(89,'rusty gauss rifle','16',0,246),(90,'gauss rifle','16-17',1,247),(91,'enhanced gauss rifle','16-18',0,248),(92,'hardened gauss rifle','16-19',0,249),(93,'accelerated gauss rifle','16-20',3,250),(94,'magnetron 4000','16-21',4,251),(95,'henrietta','13-16',0,252),(96,'rusty hunting rifle','5',0,253),(97,'hunting rifle','5-6',7,254),(98,'enhanced hunting rifle','5-7',1,255),(99,'hardened hunting rifle','5-8',1,256),(100,'armor piercing hunting rifle','5-9',4,257),(101,'ol\' painless','5-10',3,258),(102,'rusty lever-action rifle','4',0,259),(103,'lever-action rifle','4-5',4,260),(104,'enhanced lever-action rifle','4-6',1,261),(105,'hardened lever-action rifle','4-7',0,262),(106,'armor piercing lever-action rifle','4-8',0,263),(107,'lincoln\'s repeater','4-9',0,264),(108,'rusty railway rifle','14',1,265),(109,'railway rifle','14-15',0,266),(110,'enhanced railway rifle','14-16',3,267),(111,'hardened railway rifle','14-17',5,268),(112,'accelerated railway rifle','14-18',1,269),(113,'railmaster','14-19',8,270),(114,'rusty sniper rifle','10',0,271),(115,'sniper rifle','10-11',1,272),(116,'enhanced sniper rifle','10-12',2,273),(117,'hardened sniper rifle','10-13',4,274),(118,'armor piercing sniper rifle','10-14',4,275),(119,'victory rifle','10-15',0,276),(120,'rusty alien blaster','18',4,277),(121,'alien blaster','18-19',0,278),(122,'tuned alien blaster','18-20',2,279),(123,'focused alien blaster','18-21',0,280),(124,'amplified alien blaster','18-22',5,281),(125,'destabilizer','18-23',0,282),(126,'rusty laser pistol','7',1,283),(127,'laser pistol','7-8',0,284),(128,'tuned laser pistol','7-9',6,285),(129,'focused laser pistol','7-10',1,286),(130,'amplified laser pistol','7-11',4,287),(131,'smuggler\'s end','7-12',0,288),(132,'rusty plasma pistol','11',0,289),(133,'plasma pistol','11-12',0,290),(134,'tuned plasma pistol','11-13',3,291),(135,'focused plasma pistol','11-14',6,292),(136,'amplified plasma pistol','11-15',0,293),(137,'mpxl novasurge','11-16',3,294),(138,'rusty assaultron head','7-11',6,295),(139,'assaultron head','8-12',3,296),(140,'enhanced assaultron head','9-13',0,297),(141,'hardened assaultron head','10-14',4,298),(142,'rusty .32 pistol','1',3,299),(143,'.32 pistol','1-2',4,300),(144,'enhanced .32 pistol','1-3',2,301),(145,'hardened .32 pistol','1-4',1,302),(146,'armor piercing .32 pistol','1-5',0,303),(147,'wild bill\'s sidearm','1-6',3,304),(148,'rusty 10mm pistol','2',0,305),(149,'10mm pistol','2-3',8,306),(150,'enhanced 10mm pistol','2-4',1,307),(151,'hardened 10mm pistol','2-5',0,308),(152,'armor piercing 10mm pistol','2-6',0,309),(153,'lone wanderer','2-7',1,310),(154,'rusty scoped .44','3',3,311),(155,'scoped .44','3-4',0,312),(156,'enhanced scoped .44','3-5',3,313),(157,'hardened scoped .44','3-6',0,314),(158,'armor piercing scoped .44','3-7',8,315),(159,'blackhawk','3-8',7,316),(160,'rusty gauss pistol','12',0,317),(161,'focused gauss pistol','13',2,318),(162,'enhanced gauss pistol','14',0,319),(163,'hardened gauss pistol','15',8,320),(164,'baseball bat','5-15',0,321),(165,'butcher knife','8-18',0,322),(166,'kitchen knife','3-11',3,323),(167,'pickaxe','11-21',2,324),(168,'pool cue','0-8',0,325),(169,'fire hydrant bat','19-31',0,326),(170,'relentless raider sword','16-28',13,327),(171,'rusty ripper','10-15',3,328),(172,'ripper','11-16',0,329),(173,'enhanced ripper','12-17',1,330),(174,'hardened ripper','13-18',0,331),(175,'rusty power fist','12-17',4,332),(176,'power fist','13-18',2,333),(177,'enhanced power fist','14-19',5,334),(178,'hardened power fist','15-20',5,335),(179,'ed\'s custom power fist','16-22',5,336),(180,'grognak\'s axe','18-26',3,337),(181,'amplified gatling laser','21-25',0,338),(182,'armor piercing minigun','19-23',4,339),(183,'burnmaster','15-20',6,340),(184,'enhanced fat man','22-24',2,341),(185,'enhanced flamer','15-17',1,342),(186,'enhanced minigun','19-21',2,343),(187,'enhanced missile launcher','20-22',0,344),(188,'enhanced plasma caster','18-22',7,345),(189,'fat man','22-23',3,346),(190,'flamer','15-16',4,347),(191,'focused gatling laser','21-24',0,348),(192,'gatling laser','21-22',0,349),(193,'guided fat man','22-26',0,350),(194,'guided missile launcher','20-24',0,351),(195,'hardened fat man','22-25',11,352),(196,'hardened flamer','15-18',5,353),(197,'hardened minigun','19-22',0,354),(198,'hardened missile launcher','20-23',2,355),(199,'hardened plasma caster','19-23',3,356),(200,'lead belcher','19-24',3,357),(201,'mirv','22-27',2,358),(202,'minigun','19-20',0,359),(203,'miss launcher','20-25',1,360),(204,'missile launcher','20-21',1,361),(205,'plasma caster','17-21',0,362),(206,'pressurized flamer','15-19',2,363),(207,'rusty fat man','22',6,364),(208,'rusty gatling laser','21',0,365),(209,'rusty flamer','15',4,366),(210,'rusty minigun','19',4,367),(211,'rusty missile launcher','20',0,368),(212,'rusty plasma caster','16-20',4,369),(213,'tuned gatling laser','21-23',0,370),(214,'vengeance','21-26',0,371);
/*!40000 ALTER TABLE `tb_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db2_vault_101'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calculate_junk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_calculate_junk`(ct_junk INTEGER, accept_zero BOOL) RETURNS int
    READS SQL DATA
BEGIN
    SET @count_junk_storage = (SELECT quantity FROM tb_junk WHERE id_junk = ct_junk);
    
    CASE
		WHEN (ct_junk IS NULL) THEN
			RETURN 0;
		WHEN (@count_junk_storage IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Junk does not exists.';
		WHEN (@count_junk_storage = 0) AND (NOT accept_zero) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Out of stock for this junk.';
		ELSE
			RETURN (@count_junk_storage);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calculate_outfit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_calculate_outfit`(ct_outfit INTEGER, accept_zero BOOL) RETURNS int
    READS SQL DATA
BEGIN
    SET @count_outfit_storage = (SELECT quantity FROM tb_outfit WHERE id_outfit = ct_outfit);
    SET @count_outfit_dweller = (SELECT COUNT(*) FROM tb_dweller WHERE id_outfit = ct_outfit);
    
    CASE
		WHEN (ct_outfit IS NULL) THEN
			RETURN 0;
		WHEN (@count_outfit_storage IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Outfit does not exists.';
		WHEN (@count_outfit_storage = @count_outfit_dweller) AND (NOT accept_zero) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Out of stock for this outfit.';
		WHEN (@count_outfit_storage < @count_outfit_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Too much outift for dweller!! Fix it!!';
		ELSE
			RETURN (@count_outfit_storage - @count_outfit_dweller);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calculate_pet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_calculate_pet`(ct_pet INTEGER, accept_zero BOOL) RETURNS int
    READS SQL DATA
BEGIN
    SET @count_pet_storage = (SELECT quantity FROM tb_pet WHERE id_pet = ct_pet);
    SET @count_pet_dweller = (SELECT COUNT(*) FROM tb_dweller WHERE id_pet = ct_pet);
    
    CASE
		WHEN (ct_pet IS NULL) THEN
			RETURN 0;
		WHEN (@count_pet_storage IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Pet does not exists.';
		WHEN (@count_pet_storage = @count_pet_dweller) AND (NOT accept_zero) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Out of stock for this pet.';
		WHEN (@count_pet_storage < @count_pet_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Too much pet for dweller!! Fix it!!';
		ELSE
			RETURN (@count_pet_storage - @count_pet_dweller);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calculate_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_calculate_weapon`(ct_weapon INTEGER, accept_zero BOOL) RETURNS int
    READS SQL DATA
BEGIN
    SET @count_weapon_storage = (SELECT quantity FROM tb_weapon WHERE id_weapon = ct_weapon);
    SET @count_weapon_dweller = (SELECT COUNT(*) FROM tb_dweller WHERE id_weapon = ct_weapon);
    
    CASE
		WHEN (ct_weapon IS NULL) THEN
			RETURN 0;
		WHEN (@count_weapon_storage IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Weapon does not exists.';
		WHEN (@count_weapon_storage = @count_weapon_dweller) AND (NOT accept_zero) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Out of stock for this weapon.';
		WHEN (@count_weapon_storage < @count_weapon_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Too much weapon for dweller!! Fix it!!';
		ELSE
			RETURN (@count_weapon_storage - @count_weapon_dweller);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_count_floor_size` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_count_floor_size`(in_floor INTEGER) RETURNS int
    DETERMINISTIC
BEGIN
	SET @count_floor_size = (SELECT SUM(size) FROM tb_room WHERE floor = in_floor);
    
    IF (in_floor = 1) THEN
		RETURN (@count_floor_size + 1);
    ELSE
		RETURN @count_floor_size;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_insert_kinship` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_insert_kinship`(in_id_mom INTEGER, in_id_dad INTEGER) RETURNS int
    READS SQL DATA
BEGIN
	SET @insert_id_kinship = (SELECT id_kinship FROM tb_kinship WHERE id_mother = in_id_mom AND id_father = in_id_dad);
    
	CASE
		WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_mom) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Mother id does not exists.';
		WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_mom) != 'f') THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Mother id is not from a Female.';

        WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_dad) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Father id does not exists.';
        WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_dad) != 'm') THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Father id is not from a Male.';

		WHEN (@insert_id_kinship IS NOT NULL) THEN
			RETURN @insert_id_kinship;
            
		ELSE
			INSERT INTO tb_kinship
            VALUES (DEFAULT, in_id_mom, in_id_dad);
            
            RETURN LAST_INSERT_ID();
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_string_filter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_string_filter`(in_string VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    DETERMINISTIC
BEGIN
	SET in_string = REPLACE(in_string, '  ', ' '),
		in_string = REPLACE(in_string, '´', ''),
		in_string = REPLACE(in_string, '`', ''),
		in_string = REPLACE(in_string, '~', ''),
		in_string = REPLACE(in_string, '^', ''),
		in_string = REPLACE(in_string, '¨', ''),
        
		in_string = REPLACE(in_string, '!', ''),
		in_string = REPLACE(in_string, '?', ''),
		in_string = REPLACE(in_string, '@', ''),
		in_string = REPLACE(in_string, '#', ''),
		in_string = REPLACE(in_string, '$', ''),
		in_string = REPLACE(in_string, '%', ''),
		in_string = REPLACE(in_string, '&', ''),
		in_string = REPLACE(in_string, '*', ''),
		in_string = REPLACE(in_string, '(', ''),
		in_string = REPLACE(in_string, ')', ''),
		in_string = REPLACE(in_string, '+', ''),
		in_string = REPLACE(in_string, '=', ''),
		in_string = REPLACE(in_string, '_', ''),
		in_string = REPLACE(in_string, '<', ''),
		in_string = REPLACE(in_string, '>', '');
	
    RETURN TRIM(in_string);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_string_length` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_string_length`(in_string VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    DETERMINISTIC
BEGIN
	SET in_string = REPLACE(in_string, 'á', 'a'),
		in_string = REPLACE(in_string, 'à', 'a'),
		in_string = REPLACE(in_string, 'ã', 'a'),
		in_string = REPLACE(in_string, 'â', 'a'),
		in_string = REPLACE(in_string, 'ä', 'a'),
		in_string = REPLACE(in_string, 'Á', 'A'),
		in_string = REPLACE(in_string, 'À', 'A'),
		in_string = REPLACE(in_string, 'Ã', 'A'),
		in_string = REPLACE(in_string, 'Â', 'A'),
		in_string = REPLACE(in_string, 'Ä', 'A'),
		 
		in_string = REPLACE(in_string, 'é', 'e'),
		in_string = REPLACE(in_string, 'è', 'e'),
		in_string = REPLACE(in_string, 'ê', 'e'),
		in_string = REPLACE(in_string, 'É', 'E'),
		in_string = REPLACE(in_string, 'È', 'E'),
		in_string = REPLACE(in_string, 'Ê', 'E'),
		 
		in_string = REPLACE(in_string, 'í', 'i'),
		in_string = REPLACE(in_string, 'ì', 'i'),
		in_string = REPLACE(in_string, 'Í', 'I'),
		in_string = REPLACE(in_string, 'Ì', 'I'),
		 
		in_string = REPLACE(in_string, 'ó', 'o'),
		in_string = REPLACE(in_string, 'ò', 'o'),
		in_string = REPLACE(in_string, 'õ', 'o'),
		in_string = REPLACE(in_string, 'ô', 'o'),
		in_string = REPLACE(in_string, 'ö', 'o'),
		in_string = REPLACE(in_string, 'Ó', 'O'),
		in_string = REPLACE(in_string, 'Ò', 'O'),
		in_string = REPLACE(in_string, 'Õ', 'O'),
		in_string = REPLACE(in_string, 'Ô', 'O'),
		in_string = REPLACE(in_string, 'Ö', 'O'),
		
		in_string = REPLACE(in_string, 'ú', 'u'),
		in_string = REPLACE(in_string, 'ù', 'u'),
		in_string = REPLACE(in_string, 'ü', 'u'),
		in_string = REPLACE(in_string, 'Ú', 'U'),
		in_string = REPLACE(in_string, 'Ù', 'U'),
		in_string = REPLACE(in_string, 'Ü', 'U');
	
    RETURN LENGTH(fn_string_filter(in_string));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_verify_special` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_verify_special`(in_str INTEGER, in_per INTEGER, in_end INTEGER, in_cha INTEGER, in_int INTEGER, in_agi INTEGER, in_luc INTEGER, in_category VARCHAR(10)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
	CASE
		WHEN in_str < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Strengh can not be negative.';
		WHEN in_per < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Perception can not be negative.';
		WHEN in_end < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Endurance can not be negative.';
		WHEN in_cha < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Charisma can not be negative.';
		WHEN in_int < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Intelligence can not be negative.';
		WHEN in_agi < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Agility can not be negative.';
		WHEN in_luc < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Luck can not be negative.';

		WHEN in_str > 10 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Strengh can not be more than 10.';
		WHEN in_per > 10 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Perception can not be more than 10.';
		WHEN in_end > 10 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Endurance can not be more than 10.';
		WHEN in_cha > 10 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Charisma can not be more than 10.';
		WHEN in_int > 10 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Intelligence can not be more than 10.';
		WHEN in_agi > 10 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Agility can not be more than 10.';
		WHEN in_luc > 10 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Luck can not be more than 10.';
        WHEN (LOWER(in_category) NOT IN ("outfit", "dweller")) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category is invalid.';
        
        ELSE
            RETURN TRUE;  
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_verify_storage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_verify_storage`(in_product VARCHAR(50), return_type INTEGER, accept_zero BOOL) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    READS SQL DATA
BEGIN
	CASE
		WHEN ((SELECT id_storage FROM tb_outfit WHERE LOWER(name) = LOWER(in_product)) IS NOT NULL) THEN
			SET @verify_id_storage = (SELECT id_storage FROM tb_outfit WHERE LOWER(name) = LOWER(in_product));
            SET @tb_product_category = 'outfit';
			SET @verify_qnt_storage = fn_calculate_outfit((SELECT id_outfit FROM tb_outfit WHERE LOWER(name) = LOWER(in_product)), accept_zero);
            
        WHEN ((SELECT id_storage FROM tb_weapon WHERE LOWER(name) = LOWER(in_product)) IS NOT NULL) THEN
			SET @verify_id_storage = (SELECT id_storage FROM tb_weapon WHERE LOWER(name) = LOWER(in_product));
            SET @tb_product_category = 'weapon';
			SET @verify_qnt_storage = fn_calculate_weapon((SELECT id_weapon FROM tb_weapon WHERE LOWER(name) = LOWER(in_product)), accept_zero);
        
        WHEN ((SELECT id_storage FROM tb_pet WHERE LOWER(name) = LOWER(in_product)) IS NOT NULL) THEN
			SET @verify_id_storage = (SELECT id_storage FROM tb_pet WHERE LOWER(name) = LOWER(in_product));
            SET @tb_product_category = 'pet';
			SET @verify_qnt_storage = fn_calculate_pet((SELECT id_pet FROM tb_pet WHERE LOWER(name) = LOWER(in_product)), accept_zero);

        WHEN ((SELECT id_storage FROM tb_junk WHERE LOWER(name) = LOWER(in_product)) IS NOT NULL) THEN
			SET @verify_id_storage = (SELECT id_storage FROM tb_junk WHERE LOWER(name) = LOWER(in_product));
            SET @tb_product_category = 'junk';
			SET @verify_qnt_storage = fn_calculate_junk((SELECT id_junk FROM tb_junk WHERE LOWER(name) = LOWER(in_product)), accept_zero);
        
        ELSE
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product not found.';
    END CASE;
    
    CASE
		WHEN (return_type = 1) THEN
			RETURN @verify_id_storage;
		
		WHEN (return_type = 2) THEN
			RETURN @tb_product_category;
		
        WHEN (return_type = 3) THEN
			RETURN @verify_qnt_storage;
		
        ELSE
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Return type is invalid.';
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_add_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_add_product`(in_product_category VARCHAR(10), in_id_storage INTEGER, in_qnt_storage INTEGER, in_quantity INTEGER)
BEGIN
	CASE
		WHEN (in_product_category = 'outfit') THEN
			UPDATE tb_outfit
			SET quantity = (in_qnt_storage + in_quantity)
			WHERE id_storage = in_id_storage;
			
		WHEN (in_product_category = 'weapon') THEN
			UPDATE tb_weapon
			SET quantity = (in_qnt_storage + in_quantity)
			WHERE id_storage = in_id_storage;
			
		WHEN (in_product_category = 'pet') THEN
			UPDATE tb_pet
			SET quantity = (in_qnt_storage + in_quantity)
			WHERE id_storage = in_id_storage;
			
		WHEN (in_product_category = 'junk') THEN
			UPDATE tb_junk
			SET quantity = (in_qnt_storage + in_quantity)
			WHERE id_storage = in_id_storage;
            
		ELSE
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Something went wrong with this procedure or with fn_verify_storage.';
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_baby` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_baby`(in_name VARCHAR(25), in_gender CHAR(1), in_id_mom INTEGER, in_id_dad INTEGER, in_str INTEGER, in_per INTEGER, in_end INTEGER, in_cha INTEGER, in_int INTEGER, in_agi INTEGER, in_luc INTEGER)
BEGIN
	CASE
        WHEN ((SELECT name FROM tb_dweller WHERE LOWER(name) = LOWER(in_name)) IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller alredy exists.';
        WHEN (fn_string_length(fn_string_filter(in_name)) < 7) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Name too short.';

		WHEN (LOWER(in_gender) NOT IN ('f', 'm')) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Gender is invalid.';
            
        ELSE
			CALL sp_insert_special(in_str, in_per, in_end, in_cha, in_int, in_agi, in_luc, 'dweller');
            SET @last_insert_special = LAST_INSERT_ID();
            
            SET @last_insert_kinship = fn_insert_kinship(in_id_mom, in_id_dad);

			INSERT INTO tb_dweller
				(name, gender, level, status, id_special, id_kinship)
			VALUES
				(LOWER(fn_string_filter(in_name)), in_gender, 0, 0, @last_insert_special, @last_insert_kinship);
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_decease` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_decease`(in_decease_type CHAR(1), in_incident_type INTEGER)
BEGIN
	CASE
		WHEN ((SELECT id_decease_type FROM tb_decease_type WHERE id_decease_type = in_decease_type) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Decease type is invalid.';
		WHEN ((SELECT id_incident_type FROM tb_incident_type WHERE id_incident_type = in_incident_type) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incident type is invalid.';
		ELSE
			INSERT INTO tb_decease
            VALUES (DEFAULT, NOW(), in_decease_type, in_incident_type);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_diary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_diary`(in_money INTEGER, in_energy INTEGER, in_water INTEGER, in_food INTEGER)
BEGIN
    CASE
		WHEN (in_money < 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid amount of money.';
		WHEN (in_energy NOT BETWEEN 0 AND 100) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid energy percentage.';
		WHEN (in_water NOT BETWEEN 0 AND 100) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid water percentage.';
		WHEN (in_food NOT BETWEEN 0 AND 100) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid food percentage.';
		ELSE
        	SET @insert_count_dweller = (SELECT COUNT(*) FROM tb_dweller);
			SET @insert_count_decease = (SELECT COUNT(*) FROM tb_decease);
			SET @insert_count_room = (SELECT COUNT(*) FROM tb_room);
			SET @insert_count_exploration = (SELECT COUNT(*) FROM tb_exploration);
			SET @insert_count_quest = (SELECT COUNT(*) FROM tb_quest);
			SET @insert_count_incident = (SELECT COUNT(*) FROM tb_incident);
			SET @insert_count_outfit = (SELECT SUM(quantity) FROM tb_outfit);
			SET @insert_count_weapon = (SELECT SUM(quantity) FROM tb_weapon);
			SET @insert_count_pet = (SELECT SUM(quantity) FROM tb_pet);
			SET @insert_count_junk = (SELECT SUM(quantity) FROM tb_junk);
			SET @insert_count_sale = (SELECT COUNT(*) FROM tb_sale);
			SET @insert_count_scrap = (SELECT COUNT(*) FROM tb_scrap);
            
            INSERT INTO tb_diary
            VALUES (DEFAULT,
					DATE(NOW()),
					@insert_count_dweller,
					@insert_count_decease,
                    in_money,
					@insert_count_room,
					@insert_count_exploration,
					@insert_count_quest,
					@insert_count_incident,
					@insert_count_outfit,
					@insert_count_weapon,
					@insert_count_pet,
					@insert_count_junk,
					@insert_count_sale,
					@insert_count_scrap,
                    in_energy,
                    in_water,
                    in_food);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_dweller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_dweller`(in_name VARCHAR(25), in_gender CHAR(1), in_level INTEGER, in_room INTEGER, in_str INTEGER, in_per INTEGER, in_end INTEGER, in_cha INTEGER, in_int INTEGER, in_agi INTEGER, in_luc INTEGER)
BEGIN
	CASE
        WHEN ((SELECT name FROM tb_dweller WHERE LOWER(name) = LOWER(in_name)) IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller alredy exists.';
        WHEN (fn_string_length(fn_string_filter(in_name)) < 7) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Name too short.';

		WHEN (LOWER(in_gender) NOT IN ('f', 'm')) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Gender is invalid.';

		WHEN (in_level NOT BETWEEN 1 AND 50) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Level is invalid.';
		
        WHEN ((SELECT id_room FROM tb_room WHERE id_room = in_room) IS NULL) AND (in_room IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Room does not exists.';
            
        ELSE
			CALL sp_insert_special(in_str, in_per, in_end, in_cha, in_int, in_agi, in_luc, 'dweller');
            SET @last_insert_special = LAST_INSERT_ID();

			IF (in_room IS NULL) THEN SET in_room = 0; END IF;

			INSERT INTO tb_dweller
				(name, gender, level, status, id_special, id_room)
			VALUES
				(LOWER(fn_string_filter(in_name)), in_gender, in_level, 0, @last_insert_special, in_room);
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_dweller_decease` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_dweller_decease`(in_dweller VARCHAR(25), in_decease_type CHAR(1), in_incident_type INTEGER, in_save_product BOOL)
BEGIN
	SET @insert_id_dweller = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller OR LOWER(name) = LOWER(in_dweller));
	SET @insert_id_outfit = (SELECT id_outfit FROM tb_dweller WHERE id_dweller = @insert_id_dweller);
	SET @insert_id_weapon = (SELECT id_weapon FROM tb_dweller WHERE id_dweller = @insert_id_dweller);
	SET @insert_id_pet = (SELECT id_pet FROM tb_dweller WHERE id_dweller = @insert_id_dweller);

	CASE
		WHEN (@insert_id_dweller IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller does not exists.';

		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @insert_id_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller is alredy dead.';

        ELSE
			CALL sp_insert_decease(in_decease_type, in_incident_type);
			SET @last_insert_decease = LAST_INSERT_ID();

            UPDATE tb_dweller
            SET status = 1,
				id_outfit = NULL,
				id_weapon = NULL,
				id_pet = NULL,
				id_decease = @last_insert_decease,
				id_room = NULL
			WHERE id_dweller = @insert_id_dweller;
	END CASE;
    
    IF NOT (in_save_product) THEN
		IF (@insert_id_outfit IS NOT NULL) THEN
			SET @update_qnt_outfit = (SELECT quantity FROM tb_outfit WHERE id_outfit = @insert_id_outfit);
            
			UPDATE tb_outfit
			SET quantity = (@update_qnt_outfit - 1)
			WHERE id_outfit = @insert_id_outfit;
        END IF;
        
		IF (@insert_id_weapon IS NOT NULL) THEN 
			SET @update_qnt_weapon = (SELECT quantity FROM tb_weapon WHERE id_weapon = @insert_id_weapon);
            
			UPDATE tb_weapon
			SET quantity = (@update_qnt_weapon - 1)
			WHERE id_weapon = @insert_id_weapon;
        END IF;
		
        IF (@insert_id_pet IS NOT NULL) THEN 
			SET @update_qnt_pet = (SELECT quantity FROM tb_pet WHERE id_pet = @insert_id_pet);
            
			UPDATE tb_pet
			SET quantity = (@update_qnt_pet - 1)
			WHERE id_pet = @insert_id_pet;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_exploration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_exploration`(in_dweller VARCHAR(50), in_duration INTEGER, in_date DATE)
BEGIN
	SET @insert_id_dweller = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller OR LOWER(name) = LOWER(in_dweller));

	CASE
		WHEN (@insert_id_dweller IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller does not exists.';

		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @insert_id_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller is dead. They can not go into an exploration.';

		WHEN (in_duration < 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Duration can not be negative.';

		WHEN (in_date > DATE(NOW())) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid date.';

		ELSE
			INSERT INTO tb_exploration
            VALUES (DEFAULT, in_duration, in_date, @insert_id_dweller);
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_incident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_incident`(in_date DATE, in_incident_type INTEGER, in_room INTEGER)
BEGIN
	IF ((SELECT id_incident_type FROM tb_incident_type WHERE id_incident_type = in_incident_type) IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incident type does not exists.';
	ELSEIF ((SELECT id_room FROM tb_room WHERE id_room = in_room) IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Room does not exists.';
	ELSE
		INSERT INTO tb_incident
			(date, id_incident_type, id_room)
		VALUES
			(in_date, in_incident_type, in_room);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_junk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_junk`(in_name VARCHAR(50), in_qnt INTEGER)
BEGIN
	CASE
		WHEN in_qnt < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Quantity can not be negative.';
		
        WHEN (fn_string_filter(in_name) IN (SELECT name FROM tb_junk)) THEN
			SET @id_junk = (SELECT id_junk FROM tb_junk WHERE name = in_name);
			SET @qnt_junk = (SELECT quantity FROM tb_junk WHERE name = in_name);

            UPDATE tb_junk
            SET quantity = @qnt_junk + in_qnt
            WHERE id_junk = @id_junk;
            
		ELSE
			CALL sp_insert_storage('junk');
            SET @last_insert_storage = LAST_INSERT_ID();

            INSERT INTO tb_junk
            VALUES (default, LOWER(fn_string_filter(in_name)), in_qnt, @last_insert_storage);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_outfit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_outfit`(in_name VARCHAR(50), in_qnt INTEGER, in_str INTEGER, in_per INTEGER, in_end INTEGER, in_cha INTEGER, in_int INTEGER, in_agi INTEGER, in_luc INTEGER)
BEGIN
	CASE
		WHEN (in_qnt < 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Quantity can not be negative.';

		WHEN (fn_string_filter(in_name) IN (SELECT name FROM tb_outfit)) THEN
			SET @id_outfit = (SELECT id_outfit FROM tb_outfit WHERE name = in_name);
			SET @qnt_outfit = (SELECT quantity FROM tb_outfit WHERE name = in_name);
            
            UPDATE tb_outfit
            SET quantity = @qnt_outfit + in_qnt
            WHERE id_outfit = @id_outfit;

		ELSE
			CALL sp_insert_special(in_str, in_per, in_end, in_cha, in_int, in_agi, in_luc, 'outfit');
            SET @last_insert_special = LAST_INSERT_ID();
            
			CALL sp_insert_storage('outfit');
            SET @last_insert_storage = LAST_INSERT_ID();

            INSERT INTO tb_outfit
            VALUES (default, LOWER(fn_string_filter(in_name)), in_qnt, @last_insert_special, @last_insert_storage);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_pet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_pet`(in_name VARCHAR(50), in_description VARCHAR(50), in_qnt INTEGER)
BEGIN
	CASE
		WHEN in_qnt < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Quantity can not be negative.';
		
        WHEN (fn_string_filter(in_name) IN (SELECT name FROM tb_pet)) THEN
			SET @id_pet = (SELECT id_pet FROM tb_pet WHERE name = in_name);
			SET @qnt_pet = (SELECT quantity FROM tb_pet WHERE name = in_name);
            
            UPDATE tb_pet
            SET quantity = @qnt_pet + in_qnt
            WHERE id_pet = @id_pet;
            
		ELSE
			CALL sp_insert_storage('pet');
            SET @last_insert_storage = LAST_INSERT_ID();

            INSERT INTO tb_pet
            VALUES (default, LOWER(fn_string_filter(in_name)), in_description, in_qnt, @last_insert_storage);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_quest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_quest`(in_description VARCHAR(25), in_date_begin DATE, in_dweller_1 INTEGER, in_dweller_2 INTEGER, in_dweller_3 INTEGER)
BEGIN
	SET @insert_id_dweller_1 = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller_1 OR LOWER(name) = LOWER(in_dweller_1));
	SET @insert_id_dweller_2 = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller_2 OR LOWER(name) = LOWER(in_dweller_2));
	SET @insert_id_dweller_3 = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller_3 OR LOWER(name) = LOWER(in_dweller_3));

	CASE
		WHEN (@insert_id_dweller_1 IS NOT NULL) AND (@insert_id_dweller_1 = @insert_id_dweller_2) OR
			 (@insert_id_dweller_2 IS NOT NULL) AND (@insert_id_dweller_2 = @insert_id_dweller_3) OR
			 (@insert_id_dweller_3 IS NOT NULL) AND (@insert_id_dweller_3 = @insert_id_dweller_1) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dwellers must be different from each other.';        
		
        WHEN (@insert_id_dweller_1 IS NULL) AND (in_dweller_1 IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'First dweller does not exists.';
        WHEN (@insert_id_dweller_2 IS NULL) AND (in_dweller_2 IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Second dweller does not exists.';
        WHEN (@insert_id_dweller_3 IS NULL) AND (in_dweller_3 IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Third dweller does not exists.';
		
		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @insert_id_dweller_1) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'First dweller is dead. They can not go to a quest.';
		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @insert_id_dweller_2) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Second dweller is dead. They can not go to a quest.';
		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @insert_id_dweller_3) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Third dweller is dead. They can not go to a quest.';
        
        WHEN (in_dweller_1 IS NULL) AND (in_dweller_2 IS NULL) AND (in_dweller_3 IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'At least one dweller must be on this quest.';
		
        WHEN (in_date_begin > NOW()) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Begin date is invalid.';
		
        ELSE
			INSERT INTO tb_quest
			VALUES (DEFAULT, in_description, in_date_begin, DATE(NOW()));
            
            SET @last_insert_quest = LAST_INSERT_ID();
            
            IF (in_dweller_1 IS NOT NULL) THEN
				INSERT INTO tb_dweller_quest
				VALUES (@insert_id_dweller_1, @last_insert_quest);
            END IF;
            
            IF (in_dweller_2 IS NOT NULL) THEN
				INSERT INTO tb_dweller_quest
				VALUES (@insert_id_dweller_2, @last_insert_quest);
            END IF;

            IF (in_dweller_3 IS NOT NULL) THEN
				INSERT INTO tb_dweller_quest
				VALUES (@insert_id_dweller_3, @last_insert_quest);
            END IF;
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_room` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_room`(in_size INTEGER, in_floor INTEGER, in_room_type INTEGER)
BEGIN
	CASE
		WHEN ((SELECT id_room_type FROM tb_room_type WHERE id_room_type = in_room_type) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Room type does not exists.';
		WHEN (in_size NOT IN (1, 2, 3)) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid room size.';
		WHEN (in_floor NOT BETWEEN 1 AND 25) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid floor.';
		WHEN ((fn_count_floor_size(in_floor) + in_size) > 8) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid size for this floor.';
		ELSE
			INSERT INTO tb_room
				(size, floor, id_room_type)
			VALUES
				(in_size, in_floor, in_room_type);
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_sale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_sale`(in_product VARCHAR(50), in_quantity INTEGER, in_profit INTEGER, in_date DATE)
BEGIN
	SET @insert_id_storage = fn_verify_storage(in_product, 1, 0);
	SET @tb_product_sold = fn_verify_storage(in_product, 2, 0);
	SET @insert_qnt_storage = fn_verify_storage(in_product, 3, 0);
    
    CASE
		WHEN (in_quantity > @insert_qnt_storage) OR (in_quantity <= 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid quantity of product to be sold.';
		WHEN (in_profit <= 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid profit.';
		WHEN (in_date > DATE(NOW())) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid date.';
		ELSE
			INSERT INTO tb_sale
            VALUES (DEFAULT, @insert_id_storage, in_quantity, in_profit, in_date);
            
			CALL sp_subtract_product(@tb_product_sold, @insert_id_storage, @insert_qnt_storage, in_quantity);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_scrap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_scrap`(in_product VARCHAR(50), in_quantity INTEGER, in_date DATE)
BEGIN
	SET @insert_id_storage = fn_verify_storage(in_product, 1, 0);
	SET @tb_product_scraped = fn_verify_storage(in_product, 2, 0);
	SET @insert_qnt_storage = fn_verify_storage(in_product, 3, 0);
    
	IF (@tb_product_scraped = 'pet') THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You can not scrap a pet.';
	END IF;
    
    CASE
		WHEN (in_quantity > @insert_qnt_storage) OR (in_quantity <= 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid quantity of product to be scraped.';
		WHEN (in_date > DATE(NOW())) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid date.';
		ELSE        
			INSERT INTO tb_scrap
            VALUES (DEFAULT, @insert_id_storage, in_quantity, in_date);
            
			CALL sp_subtract_product(@tb_product_scraped, @insert_id_storage, @insert_qnt_storage, in_quantity);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_special` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_special`(in_str INTEGER, in_per INTEGER, in_end INTEGER, in_cha INTEGER, in_int INTEGER, in_agi INTEGER, in_luc INTEGER, in_category VARCHAR(10))
BEGIN
	IF (SELECT fn_verify_special(in_str, in_per, in_end, in_cha, in_int, in_agi, in_luc, in_category)) THEN
		IF in_str = 0 THEN SET in_str = NULL; END IF;
		IF in_per = 0 THEN SET in_per = NULL; END IF;
		IF in_end = 0 THEN SET in_end = NULL; END IF;
		IF in_cha = 0 THEN SET in_cha = NULL; END IF;
		IF in_int = 0 THEN SET in_int = NULL; END IF;
		IF in_agi = 0 THEN SET in_agi = NULL; END IF;
		IF in_luc = 0 THEN SET in_luc = NULL; END IF;
    
		INSERT INTO tb_special
		VALUES (DEFAULT, in_str, in_per, in_end, in_cha, in_int, in_agi, in_luc, LOWER(in_category));
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'SPECIAL is invalid.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_storage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_storage`(in_category VARCHAR(10))
BEGIN
	IF (LOWER(in_category) NOT IN ('outfit', 'weapon', 'pet', 'junk')) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category is invalid.';
    ELSE
		INSERT INTO tb_storage
		VALUES (DEFAULT, LOWER(in_category));
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_storage_exploration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_storage_exploration`(in_exploration INTEGER, in_product VARCHAR(50), in_quantity INTEGER)
BEGIN
	SET @insert_id_storage = fn_verify_storage(in_product, 1, 1);
	SET @tb_product_exploration = fn_verify_storage(in_product, 2, 1);
    SET @insert_qnt_storage = fn_verify_storage(in_product, 3, 1);

	CASE
		WHEN ((SELECT id_exploration FROM tb_exploration WHERE id_exploration = in_exploration) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Exploration not found.';
		WHEN (@tb_product_exploration = 'pet') THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You can not find a pet on explorations.';
		WHEN (in_quantity <= 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid quantity of product found.';
		ELSE
            INSERT INTO tb_storage_exploration
            VALUES (in_exploration, @insert_id_storage, in_quantity);
            
			CALL sp_add_product(@tb_product_exploration, @insert_id_storage, @insert_qnt_storage, in_quantity);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_storage_quest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_storage_quest`(in_quest INTEGER, in_product VARCHAR(50), in_quantity INTEGER)
BEGIN
	SET @insert_id_storage = fn_verify_storage(in_product, 1, 1);
	SET @tb_product_quest = fn_verify_storage(in_product, 2, 1);
    SET @insert_qnt_storage = fn_verify_storage(in_product, 3, 1);

	CASE
		WHEN ((SELECT id_quest FROM tb_quest WHERE id_quest = in_quest) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Quest not found.';
		WHEN (@tb_product_quest = 'pet') THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You can not find a pet on quests.';
		WHEN (in_quantity <= 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid quantity of product found.';
		ELSE
            INSERT INTO tb_storage_quest
            VALUES (in_quest, @insert_id_storage, in_quantity);
            
			CALL sp_add_product(@tb_product_quest, @insert_id_storage, @insert_qnt_storage, in_quantity);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_storage_scrap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_storage_scrap`(in_scrap INTEGER, in_product VARCHAR(50), in_quantity INTEGER)
BEGIN
    SET @insert_id_storage = fn_verify_storage(in_product, 1, 1);
    SET @tb_product_scrap = fn_verify_storage(in_product, 2, 1);
    SET @insert_qnt_storage = fn_verify_storage(in_product, 3, 1);

	CASE
		WHEN ((SELECT id_scrap FROM tb_scrap WHERE id_scrap = in_scrap) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Scrap not found.';
		WHEN (@tb_product_scrap <> 'junk') THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You can only get junk from scrap.';
		WHEN (in_quantity <= 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid quantity of product scraped.';
		ELSE
            INSERT INTO tb_storage_scrap
            VALUES (in_scrap, @insert_id_storage, in_quantity);
            
			CALL sp_add_product(@tb_product_scrap, @insert_id_storage, @insert_qnt_storage, in_quantity);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_weapon`(in_name VARCHAR(50), in_damage VARCHAR(7), in_qnt INTEGER)
BEGIN
	CASE
		WHEN in_qnt < 0 THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Quantity can not be negative.';
		
        WHEN (fn_string_filter(in_name) IN (SELECT name FROM tb_weapon)) THEN
			SET @id_weapon = (SELECT id_weapon FROM tb_weapon WHERE name = in_name);
			SET @qnt_weapon = (SELECT quantity FROM tb_weapon WHERE name = in_name);
            
            UPDATE tb_weapon
            SET quantity = @qnt_weapon + in_qnt
            WHERE id_weapon = @id_weapon;
            
		ELSE
			CALL sp_insert_storage('weapon');
            SET @last_insert_storage = LAST_INSERT_ID();

            INSERT INTO tb_weapon
            VALUES (default, LOWER(fn_string_filter(in_name)), in_damage, in_qnt, @last_insert_storage);
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_subtract_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_subtract_product`(in_product_category VARCHAR(10), in_id_storage INTEGER, in_qnt_storage INTEGER, in_quantity INTEGER)
BEGIN
	CASE
		WHEN (in_product_category = 'outfit') THEN
			UPDATE tb_outfit
			SET quantity = (in_qnt_storage - in_quantity)
			WHERE id_storage = in_id_storage;
			
		WHEN (in_product_category = 'weapon') THEN
			UPDATE tb_weapon
			SET quantity = (in_qnt_storage - in_quantity)
			WHERE id_storage = in_id_storage;
			
		WHEN (in_product_category = 'pet') THEN
			UPDATE tb_pet
			SET quantity = (in_qnt_storage - in_quantity)
			WHERE id_storage = in_id_storage;
			
		WHEN (in_product_category = 'junk') THEN
			UPDATE tb_junk
			SET quantity = (in_qnt_storage - in_quantity)
			WHERE id_storage = in_id_storage;
            
		ELSE
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Something went wrong with this procedure or with fn_verify_storage.';
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_dweller_bonus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_update_dweller_bonus`(in_dweller VARCHAR(25), in_outfit INTEGER, in_weapon INTEGER, in_pet INTEGER)
BEGIN
	SET @update_id_dweller = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller OR LOWER(name) = LOWER(in_dweller));
	
    IF (@update_id_dweller IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller does not exists.';
	ELSEIF (SELECT status FROM tb_dweller WHERE id_dweller = @update_id_dweller) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller is dead. You can not give them a bonus.';
	END IF;
    
    IF (in_outfit IS NULL) THEN 
		SET in_outfit = (SELECT id_outfit FROM tb_dweller WHERE id_dweller = @update_id_dweller); 
	ELSEIF (in_outfit = 0) THEN 
		SET in_outfit = NULL; 
	ELSEIF (fn_calculate_outfit(in_outfit, 0) <= 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'An error occourred at fn_calculate_outfit.';
    END IF;
    
	IF (in_weapon IS NULL) THEN 
		SET in_weapon = (SELECT id_weapon FROM tb_dweller WHERE id_dweller = @update_id_dweller); 
	ELSEIF (in_weapon = 0) THEN 
		SET in_weapon = NULL; 
	ELSEIF (fn_calculate_weapon(in_weapon, 0) <= 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'An error occourred at fn_calculate_weapon.';
    END IF;
    
	IF (in_pet IS NULL) THEN 
		SET in_pet = (SELECT id_pet FROM tb_dweller WHERE id_dweller = @update_id_dweller); 
	ELSEIF (in_pet = 0) THEN 
		SET in_pet = NULL; 
	ELSEIF (fn_calculate_pet(in_pet, 0) <= 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'An error occourred at fn_calculate_pet.';
    END IF;
    
	UPDATE tb_dweller
	SET id_outfit = in_outfit,
		id_weapon = in_weapon,
		id_pet = in_pet
	WHERE id_dweller = @update_id_dweller;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_dweller_special` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_update_dweller_special`(in_dweller VARCHAR(25), in_str INTEGER, in_per INTEGER, in_end INTEGER, in_cha INTEGER, in_int INTEGER, in_agi INTEGER, in_luc INTEGER)
BEGIN
	SET @update_id_special = (SELECT id_special FROM tb_dweller WHERE id_dweller LIKE in_dweller OR LOWER(name) = LOWER(in_dweller));
    
    CASE
		WHEN (@update_id_special IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller does not exists.';
		
        WHEN (SELECT status FROM tb_dweller WHERE id_special = @update_id_special) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller is dead. You can not change their special.';
        
		WHEN NOT (SELECT fn_verify_special(in_str, in_per, in_end, in_cha, in_int, in_agi, in_luc, 'dweller')) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'SPECIAL is invalid.';
		
        ELSE        
			IF in_str = 0 THEN SET in_str = NULL; END IF;
			IF in_per = 0 THEN SET in_per = NULL; END IF;
			IF in_end = 0 THEN SET in_end = NULL; END IF;
			IF in_cha = 0 THEN SET in_cha = NULL; END IF;
			IF in_int = 0 THEN SET in_int = NULL; END IF;
			IF in_agi = 0 THEN SET in_agi = NULL; END IF;
			IF in_luc = 0 THEN SET in_luc = NULL; END IF;

			UPDATE tb_special
			SET strength = in_str,
				perception = in_per,
				endurance = in_end,
				charisma = in_cha,
				intelligence = in_int,
				agility = in_agi,
				luck = in_luc
			WHERE id_special = @update_id_special;
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_dweller_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_update_dweller_status`(up_dweller VARCHAR(25), up_level INTEGER, up_room INTEGER)
BEGIN
	SET @update_id_dweller = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE up_dweller OR LOWER(name) = LOWER(up_dweller));
	SET @update_level_dweller = (SELECT level FROM tb_dweller WHERE id_dweller = @update_id_dweller);
    
    IF (up_level IS NULL) THEN SET up_level = @update_level_dweller; END IF;
    IF (up_room IS NULL) THEN SET up_room = (SELECT id_room FROM tb_dweller WHERE id_dweller = @update_id_dweller); END IF;

	CASE
		WHEN (@update_id_dweller IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller does not exists.';
            
		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @update_id_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller is dead. You can not change their status.';

		WHEN (up_level NOT BETWEEN 1 AND 50) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Level is invalid.';

		WHEN (up_level < @update_level_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'New level can not be smaller than before.';
            
		WHEN ((SELECT id_room FROM tb_room WHERE id_room = up_room) IS NULL) AND (up_room IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Room does not exists.';

		ELSE
			UPDATE tb_dweller
            SET level = up_level,
				id_room = up_room
			WHERE id_dweller = @update_id_dweller;
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_room` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_update_room`(up_room INTEGER, up_size INTEGER)
BEGIN
	SET @update_room_id = (SELECT id_room FROM tb_room WHERE id_room = up_room);
	SET @update_room_size = (SELECT size FROM tb_room WHERE id_room = up_room);
	SET @update_room_floor = (SELECT floor FROM tb_room WHERE id_room = up_room);

	IF (up_size IS NULL) THEN SET up_size = @update_room_size; END IF;

	CASE
		WHEN (@update_room_id IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Room does not exists.';
		WHEN (up_size NOT IN (1, 2, 3)) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid room size.';
		WHEN (up_size < @update_room_size) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'New size can not be smaller than before.';
		WHEN ((fn_count_floor_size(@update_room_floor) + up_size) > 8) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid size for this floor.';
		ELSE
			UPDATE tb_room
            SET size = up_size
            WHERE id_room = @update_room_id;
	END CASE;
END ;;
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

-- Dump completed on 2023-06-09 15:27:47
