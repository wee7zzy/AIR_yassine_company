-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: AIR_yassine
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AVION`
--

DROP TABLE IF EXISTS `AVION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AVION` (
  `avion_id` int NOT NULL,
  `avion_nom` varchar(100) DEFAULT NULL,
  `avion_capacite` varchar(3) DEFAULT NULL,
  `avion_localite` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`avion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AVION`
--

LOCK TABLES `AVION` WRITE;
/*!40000 ALTER TABLE `AVION` DISABLE KEYS */;
INSERT INTO `AVION` VALUES (100,'ARBUS','400','RABAT'),(101,'B737','250','CASA'),(102,'B736','150','SAFI');
/*!40000 ALTER TABLE `AVION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PILOTE`
--

DROP TABLE IF EXISTS `PILOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PILOTE` (
  `pilote_id` int NOT NULL,
  `pilote_nom` varchar(100) DEFAULT NULL,
  `pilote_adress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pilote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PILOTE`
--

LOCK TABLES `PILOTE` WRITE;
/*!40000 ALTER TABLE `PILOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PILOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOL`
--

DROP TABLE IF EXISTS `VOL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VOL` (
  `Vol_ID` int NOT NULL,
  `Pilote_id` int DEFAULT NULL,
  `Avion_id` int DEFAULT NULL,
  `Ville_Depart` varchar(100) DEFAULT NULL,
  `Ville_Arrive` varchar(100) DEFAULT NULL,
  `Heur_Depart` time DEFAULT NULL,
  `Heur_Arrive` time DEFAULT NULL,
  PRIMARY KEY (`Vol_ID`),
  KEY `Pilote_id` (`Pilote_id`),
  KEY `Avion_id` (`Avion_id`),
  CONSTRAINT `vol_ibfk_1` FOREIGN KEY (`Pilote_id`) REFERENCES `PILOTE` (`pilote_id`),
  CONSTRAINT `vol_ibfk_2` FOREIGN KEY (`Avion_id`) REFERENCES `AVION` (`avion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOL`
--

LOCK TABLES `VOL` WRITE;
/*!40000 ALTER TABLE `VOL` DISABLE KEYS */;
/*!40000 ALTER TABLE `VOL` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-15 18:41:00
