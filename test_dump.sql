-- MySQL dump 10.13  Distrib 8.0.15, for osx10.13 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Artist` (
  `Aid` int(11) DEFAULT NULL,
  `Aname` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `Alias` varchar(255) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `Loc` varchar(255) DEFAULT NULL,
  `AV` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

insert into `Artist` VALUES(0, "Krishon Jones", 21, "KRIS", "HipHop", "Pennsylvania", "Something");

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attendes`
--

DROP TABLE IF EXISTS `Attendes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Attendes` (
  `SHID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attendes`
--

LOCK TABLES `Attendes` WRITE;
/*!40000 ALTER TABLE `Attendes` DISABLE KEYS */;
INSERT INTO `Attendes` VALUES (1,2);
/*!40000 ALTER TABLE `Attendes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Band`
--

DROP TABLE IF EXISTS `Band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Band` (
  `Bid` int(11) DEFAULT NULL,
  `Bname` varchar(255) DEFAULT NULL,
  `Artists` int(11) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Availibity` varchar(255) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Band`
--

LOCK TABLES `Band` WRITE;
/*!40000 ALTER TABLE `Band` DISABLE KEYS */;
/*!40000 ALTER TABLE `Band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BandMembers`
--

DROP TABLE IF EXISTS `BandMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `BandMembers` (
  `Bid` int(11) DEFAULT NULL,
  `AID` int(11) DEFAULT NULL,
  `RMID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BandMembers`
--

LOCK TABLES `BandMembers` WRITE;
/*!40000 ALTER TABLE `BandMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `BandMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promoter`
--

DROP TABLE IF EXISTS `Promoter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Promoter` (
  `PID` int(11) DEFAULT NULL,
  `Venue` int(11) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL,
  `Availibity` varchar(255) DEFAULT NULL,
  `Genres` varchar(255) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `BIO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promoter`
--

LOCK TABLES `Promoter` WRITE;
/*!40000 ALTER TABLE `Promoter` DISABLE KEYS */;
/*!40000 ALTER TABLE `Promoter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promoter_Contacts`
--

DROP TABLE IF EXISTS `Promoter_Contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Promoter_Contacts` (
  `VID` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promoter_Contacts`
--

LOCK TABLES `Promoter_Contacts` WRITE;
/*!40000 ALTER TABLE `Promoter_Contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Promoter_Contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Savant`
--

DROP TABLE IF EXISTS `Savant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Savant` (
  `SID` int(11) DEFAULT NULL,
  `Genres` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Savant`
--

LOCK TABLES `Savant` WRITE;
/*!40000 ALTER TABLE `Savant` DISABLE KEYS */;
/*!40000 ALTER TABLE `Savant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Show`
--

DROP TABLE IF EXISTS `Show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Show` (
  `SHID` int(11) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Promoter` int(11) DEFAULT NULL,
  `ATT_COUNT` int(11) DEFAULT NULL,
  `Explicit` varchar(255) DEFAULT NULL,
  `Venue` int(11) DEFAULT NULL,
  `Opener` int(11) DEFAULT NULL,
  `Headlines` int(11) DEFAULT NULL,
  `Set` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Show`
--

LOCK TABLES `Show` WRITE;
/*!40000 ALTER TABLE `Show` DISABLE KEYS */;
/*!40000 ALTER TABLE `Show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venue`
--

DROP TABLE IF EXISTS `Venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Venue` (
  `VID` int(11) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `Age_Min` int(11) DEFAULT NULL,
  `Amenities` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venue`
--

LOCK TABLES `Venue` WRITE;
/*!40000 ALTER TABLE `Venue` DISABLE KEYS */;
/*!40000 ALTER TABLE `Venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-10 13:08:24
