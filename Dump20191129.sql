CREATE DATABASE  IF NOT EXISTS `netcoretut` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `netcoretut`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: netcoretut
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountid` char(36) NOT NULL,
  `datecreated` datetime NOT NULL,
  `accounttype` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ownerid` char(36) NOT NULL,
  PRIMARY KEY (`accountid`),
  KEY `fk_owner_ownerid_idx` (`ownerid`),
  CONSTRAINT `fk_owner_ownerid` FOREIGN KEY (`ownerid`) REFERENCES `owner` (`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('03e91478-5608-4132-a753-d494dafce00b','2003-12-15 00:00:00','Domestic','f98e4d74-0f68-4aac-89fd-047f1aaca6b6'),('356a5a9b-64bf-4de0-bc84-5395a1fdc9c4','1996-02-15 00:00:00','Domestic','261e1685-cf26-494c-b17c-3546e65f5620'),('371b93f2-f8c5-4a32-894a-fc672741aa5b','1999-05-04 00:00:00','Domestic','24fd81f8-d58a-4bcc-9f35-dc6cd5641906'),('670775db-ecc0-4b90-a9ab-37cd0d8e2801','1999-12-21 00:00:00','Savings','24fd81f8-d58a-4bcc-9f35-dc6cd5641906'),('a3fbad0b-7f48-4feb-8ac0-6d3bbc997bfc','2010-05-28 00:00:00','Domestic','a3c1880c-674c-4d18-8f91-5d3608a2c937'),('aa15f658-04bb-4f73-82af-82db49d0fbef','1999-05-12 00:00:00','Foreign','24fd81f8-d58a-4bcc-9f35-dc6cd5641906'),('c6066eb0-53ca-43e1-97aa-3c2169eec659','1996-02-16 00:00:00','Foreign','261e1685-cf26-494c-b17c-3546e65f5620'),('eccadf79-85fe-402f-893c-32d3f03ed9b1','2010-06-20 00:00:00','Foreign','a3c1880c-674c-4d18-8f91-5d3608a2c937');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `ownerid` char(36) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateofbirth` datetime NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('24fd81f8-d58a-4bcc-9f35-dc6cd5641906','John Keen','1980-12-05 00:00:00','61 Wellfield Road'),('261e1685-cf26-494c-b17c-3546e65f5620','Anna Bosh','1974-11-14 00:00:00','27 Colored Row'),('a3c1880c-674c-4d18-8f91-5d3608a2c937','Sam Query','1990-04-22 00:00:00','91 Western Roads'),('f98e4d74-0f68-4aac-89fd-047f1aaca6b6','Martin Miller','1983-05-21 00:00:00','3 Edgar Buildings');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 15:40:07
