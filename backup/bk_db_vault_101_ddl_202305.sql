-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_vault_101
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_decease`
--

LOCK TABLES `tb_decease` WRITE;
/*!40000 ALTER TABLE `tb_decease` DISABLE KEYS */;
INSERT INTO `tb_decease` VALUES (1,'2023-05-26','v',1),(2,'2023-05-30','v',2),(3,'2023-05-30','v',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_diary`
--

LOCK TABLES `tb_diary` WRITE;
/*!40000 ALTER TABLE `tb_diary` DISABLE KEYS */;
INSERT INTO `tb_diary` VALUES (1,'2023-05-29',4,1,901,1,1,2,0,3,2,2,2,2,1,78,76,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dweller`
--

LOCK TABLES `tb_dweller` WRITE;
/*!40000 ALTER TABLE `tb_dweller` DISABLE KEYS */;
INSERT INTO `tb_dweller` VALUES (1,'José Maria','m',10,1,2,NULL,1,NULL,NULL,1,1),(2,'Maria José','f',10,1,3,NULL,NULL,NULL,NULL,2,NULL),(3,'Josemar','m',0,1,6,NULL,NULL,NULL,1,3,NULL),(4,'Sanderson','f',50,0,9,NULL,NULL,NULL,NULL,NULL,1),(5,'hank  água','m',1,0,11,NULL,NULL,NULL,NULL,NULL,1),(6,'darkness','f',0,0,14,NULL,NULL,NULL,2,NULL,NULL),(7,'kiano black','m',0,0,15,NULL,NULL,NULL,2,NULL,NULL);
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
INSERT INTO `tb_dweller_quest` VALUES (2,1),(2,2),(3,3),(1,4),(3,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_exploration`
--

LOCK TABLES `tb_exploration` WRITE;
/*!40000 ALTER TABLE `tb_exploration` DISABLE KEYS */;
INSERT INTO `tb_exploration` VALUES (1,24,'2023-04-29',3),(2,154,'2023-03-29',3),(3,154,'2023-03-29',3);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_incident`
--

LOCK TABLES `tb_incident` WRITE;
/*!40000 ALTER TABLE `tb_incident` DISABLE KEYS */;
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
INSERT INTO `tb_incident_type` VALUES (1,'fire'),(2,'expulsion'),(3,'radroache'),(4,'raider'),(5,'molerat'),(6,'deathclaw'),(7,'ghoul'),(8,'radscorpion');
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
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_junk`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_storage_tb_junk` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_junk`
--

LOCK TABLES `tb_junk` WRITE;
/*!40000 ALTER TABLE `tb_junk` DISABLE KEYS */;
INSERT INTO `tb_junk` VALUES (1,'relogio',4,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kinship`
--

LOCK TABLES `tb_kinship` WRITE;
/*!40000 ALTER TABLE `tb_kinship` DISABLE KEYS */;
INSERT INTO `tb_kinship` VALUES (1,2,1),(2,4,5);
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
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_special` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_outfit`),
  UNIQUE KEY `id_special` (`id_special`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_special_tb_outfit` FOREIGN KEY (`id_special`) REFERENCES `tb_special` (`id_special`),
  CONSTRAINT `fk_id_storage_tb_outfit` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_outfit`
--

LOCK TABLES `tb_outfit` WRITE;
/*!40000 ALTER TABLE `tb_outfit` DISABLE KEYS */;
INSERT INTO `tb_outfit` VALUES (1,'asdfghja',0,1,1),(2,'vestido',1,7,5),(3,'Bermuda',15,8,6),(4,'avental',1,10,8);
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
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_pet`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_storage_tb_pet` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pet`
--

LOCK TABLES `tb_pet` WRITE;
/*!40000 ALTER TABLE `tb_pet` DISABLE KEYS */;
INSERT INTO `tb_pet` VALUES (1,'baianho','cachorro',1,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_quest`
--

LOCK TABLES `tb_quest` WRITE;
/*!40000 ALTER TABLE `tb_quest` DISABLE KEYS */;
INSERT INTO `tb_quest` VALUES (1,'teste','2023-05-26','2023-05-26'),(2,'teste 2','2023-05-26','2023-05-26'),(3,'teste 2','2023-05-29','2023-05-29'),(4,'teste 2','2023-05-29','2023-05-29');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_room`
--

LOCK TABLES `tb_room` WRITE;
/*!40000 ALTER TABLE `tb_room` DISABLE KEYS */;
INSERT INTO `tb_room` VALUES (1,3,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_room_type`
--

LOCK TABLES `tb_room_type` WRITE;
/*!40000 ALTER TABLE `tb_room_type` DISABLE KEYS */;
INSERT INTO `tb_room_type` VALUES (1,'Vault door','security'),(2,'Living room','unemployed'),(3,'Power generator','electrician'),(4,'Diner','chef'),(5,'Water treatment','plumber'),(6,'Storage room','stockist'),(7,'Medbay','scientist'),(8,'Science lab','scientist'),(9,'Overseer\'s office','-'),(10,'Radio studio','broadcaster'),(11,'Weapon workshop','gun maker'),(12,'Weight room','unemployed'),(13,'Athletics room','unemployed'),(14,'Armory','unemployed'),(15,'Classroom','unemployed'),(16,'Outfit workshop','clothing manufacturer'),(17,'Fitness room','unemployed'),(18,'Lounge','unemployed'),(19,'Theme workshop','unemployed'),(20,'Game room','unemployed'),(21,'Barbershop','-'),(22,'Nuclear reactor','electrician'),(23,'Garden','chef'),(24,'Water purification','plumber'),(25,'Nuka-Cola bottler','nuka cola producer'),(26,'Westland','explorer');
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
  `product` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `profit` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id_sale`),
  KEY `fk_product_tb_sale` (`product`),
  CONSTRAINT `fk_product_tb_sale` FOREIGN KEY (`product`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sale`
--

LOCK TABLES `tb_sale` WRITE;
/*!40000 ALTER TABLE `tb_sale` DISABLE KEYS */;
INSERT INTO `tb_sale` VALUES (1,6,1,5,'2023-05-27'),(2,5,1,5,'2023-05-27'),(3,6,5,50,'2023-05-29');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_scrap`
--

LOCK TABLES `tb_scrap` WRITE;
/*!40000 ALTER TABLE `tb_scrap` DISABLE KEYS */;
INSERT INTO `tb_scrap` VALUES (1,7,1,'2023-05-27');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_special`
--

LOCK TABLES `tb_special` WRITE;
/*!40000 ALTER TABLE `tb_special` DISABLE KEYS */;
INSERT INTO `tb_special` VALUES (1,1,1,1,1,1,1,1,'outfit'),(2,NULL,2,3,1,1,1,1,'outfit'),(3,1,1,1,1,1,1,1,'outfit'),(4,1,1,1,1,1,1,1,'outfit'),(5,1,1,1,1,1,1,1,'outfit'),(6,2,2,3,1,1,1,1,'outfit'),(7,1,1,1,1,1,1,2,'outfit'),(8,1,1,1,0,1,1,2,'outfit'),(9,1,1,1,1,1,1,1,'outfit'),(10,1,1,1,0,1,1,2,'outfit'),(11,1,1,1,1,1,1,1,'dweller'),(12,1,1,1,1,1,1,1,'dweller'),(13,1,1,1,1,1,1,1,'dweller'),(14,1,1,1,1,1,1,1,'dweller'),(15,1,1,1,1,1,1,1,'dweller');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_storage`
--

LOCK TABLES `tb_storage` WRITE;
/*!40000 ALTER TABLE `tb_storage` DISABLE KEYS */;
INSERT INTO `tb_storage` VALUES (1,'outfit'),(2,'weapon'),(3,'pet'),(4,'junk'),(5,'outfit'),(6,'outfit'),(7,'weapon'),(8,'outfit'),(9,'weapon');
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
INSERT INTO `tb_storage_exploration` VALUES (3,5,1),(1,6,1),(2,6,1),(3,6,1);
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
INSERT INTO `tb_storage_quest` VALUES (1,6,9),(2,6,9);
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
INSERT INTO `tb_storage_scrap` VALUES (1,4,2);
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
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `damage` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `id_storage` int NOT NULL,
  PRIMARY KEY (`id_weapon`),
  UNIQUE KEY `id_storage` (`id_storage`),
  CONSTRAINT `fk_id_storage_tb_weapon` FOREIGN KEY (`id_storage`) REFERENCES `tb_storage` (`id_storage`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_weapon`
--

LOCK TABLES `tb_weapon` WRITE;
/*!40000 ALTER TABLE `tb_weapon` DISABLE KEYS */;
INSERT INTO `tb_weapon` VALUES (1,'arma de fogo','1-1',1,2),(2,'arma de água','1-1',0,7),(3,'esp6ada','1-1',1,9);
/*!40000 ALTER TABLE `tb_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_vault_101'
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
/*!50003 DROP FUNCTION IF EXISTS `fn_count_room_size` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_count_room_size`(in_floor INTEGER) RETURNS int
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
CREATE DEFINER=`Pedro`@`%` FUNCTION `fn_verify_storage`(in_product VARCHAR(25), return_type INTEGER, accept_zero BOOL) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
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
		
        WHEN ((SELECT id_room FROM tb_room WHERE id_room = in_room) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Room does not exists.';
            
        ELSE
			CALL sp_insert_special(in_str, in_per, in_end, in_cha, in_int, in_agi, in_luc, 'dweller');
            SET @last_insert_special = LAST_INSERT_ID();

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
			WHERE id_dweller = @update_id_dweller;
	END CASE;
    
    IF (in_save_product) THEN
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_exploration`(in_dweller INTEGER, in_duration INTEGER, in_date DATE)
BEGIN
	SET @insert_id_dweller = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller OR 
																				 LOWER(name) = LOWER(in_dweller));

	CASE
		WHEN (@update_id_dweller IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller does not exists.';

		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @insert_id_dweller) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dweller is dead. They can not go into an exploration.';

		WHEN (in_duration < 0) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Duration can not be negative.';

		WHEN (in_date > DATE(NOW())) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid date.';

		ELSE
			INSERT INTO tb_exploration
            VALUES (DEFAULT, in_duration, in_date, in_dweller);
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_junk`(in_name VARCHAR(25), in_qnt INTEGER)
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
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_kinship` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_kinship`(in_id_mom INTEGER, in_id_dad INTEGER)
BEGIN
	CASE
		WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_mom) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Mother id does not exists.';
		WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_mom) != 'f') THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Mother id is not from a Female.';

        WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_dad) IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Father id does not exists.';
        WHEN ((SELECT gender FROM tb_dweller WHERE id_dweller = in_id_dad) != 'm') THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Father id is not from a Male.';

		ELSE
			INSERT INTO tb_kinship
            VALUES (DEFAULT, in_id_mom, in_id_dad);
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_outfit`(in_name VARCHAR(25), in_qnt INTEGER, in_str INTEGER, in_per INTEGER, in_end INTEGER, in_cha INTEGER, in_int INTEGER, in_agi INTEGER, in_luc INTEGER)
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_pet`(in_name VARCHAR(25), in_description VARCHAR(25), in_qnt INTEGER)
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
	SET @update_id_dweller_1 = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller_1 OR LOWER(name) = LOWER(in_dweller_1));
	SET @update_id_dweller_2 = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller_2 OR LOWER(name) = LOWER(in_dweller_2));
	SET @update_id_dweller_3 = (SELECT id_dweller FROM tb_dweller WHERE id_dweller LIKE in_dweller_3 OR LOWER(name) = LOWER(in_dweller_3));

	CASE
		WHEN (@update_id_dweller_1 IS NOT NULL) AND (@update_id_dweller_1 = @update_id_dweller_2) OR
			 (@update_id_dweller_2 IS NOT NULL) AND (@update_id_dweller_2 = @update_id_dweller_3) OR
			 (@update_id_dweller_3 IS NOT NULL) AND (@update_id_dweller_3 = @update_id_dweller_1) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Dwellers must be different from each other.';        
		
        WHEN (@update_id_dweller_1 IS NULL) AND (in_dweller_1 IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'First dweller does not exists.';
        WHEN (@update_id_dweller_2 IS NULL) AND (in_dweller_2 IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Second dweller does not exists.';
        WHEN (@update_id_dweller_3 IS NULL) AND (in_dweller_3 IS NOT NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Third dweller does not exists.';
		
		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @update_id_dweller_1) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'First dweller is dead. They can not go to a quest.';
		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @update_id_dweller_2) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Second dweller is dead. They can not go to a quest.';
		WHEN (SELECT status FROM tb_dweller WHERE id_dweller = @update_id_dweller_3) THEN
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
				VALUES (in_dweller_1, @last_insert_quest);
            END IF;
            
            IF (in_dweller_2 IS NOT NULL) THEN
				INSERT INTO tb_dweller_quest
				VALUES (in_dweller_2, @last_insert_quest);
            END IF;

            IF (in_dweller_3 IS NOT NULL) THEN
				INSERT INTO tb_dweller_quest
				VALUES (in_dweller_3, @last_insert_quest);
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
		WHEN ((fn_count_room_size(in_floor) + in_size) > 8) THEN
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_sale`(in_product VARCHAR(25), in_quantity INTEGER, in_profit INTEGER, in_date DATE)
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_scrap`(in_product VARCHAR(25), in_quantity INTEGER, in_date DATE)
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_storage_exploration`(in_exploration INTEGER, in_product VARCHAR(25), in_quantity INTEGER)
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_storage_quest`(in_quest INTEGER, in_product VARCHAR(25), in_quantity INTEGER)
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_storage_scrap`(in_scrap INTEGER, in_product VARCHAR(25), in_quantity INTEGER)
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_insert_weapon`(in_name VARCHAR(25), in_damage VARCHAR(7), in_qnt INTEGER)
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
            
		WHEN ((SELECT id_room FROM tb_room WHERE id_room = up_room) IS NULL) THEN
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
CREATE DEFINER=`Pedro`@`%` PROCEDURE `sp_update_room`(in_room INTEGER, up_size INTEGER)
BEGIN
	SET @update_room_id = (SELECT id_room FROM tb_room WHERE id_room = in_room);
	SET @update_room_size = (SELECT size FROM tb_room WHERE id_room = in_room);
	SET @update_room_floor = (SELECT floor FROM tb_room WHERE id_room = in_room);

	IF (up_size IS NULL) THEN SET up_size = @update_room_size; END IF;

	CASE
		WHEN (@update_room_id IS NULL) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Room does not exists.';
		WHEN (up_size NOT IN (1, 2, 3)) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid room size.';
		WHEN (up_size < @update_room_size) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'New size can not be smaller than before.';
		WHEN ((fn_count_room_size(@update_room_floor) + up_size) > 8) THEN
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

-- Dump completed on 2023-05-30 23:27:15
