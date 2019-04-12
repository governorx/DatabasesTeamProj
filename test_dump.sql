-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES (1,'AUBREY GRAHAM',32,'Drake','HipHop','Toronto',NULL),(2,'Nick Jonas',26,'Nick','Singing','USA',NULL),(3,'Joe Jonas',29,'Joe','Rock','USA',NULL),(4,'Kevin Jonas',36,'Kevin','Rock','USA',NULL),(5,'James Thomas Smith',30,'Jaime XX','Electronic','London',NULL),(6,'HAYLEY WILLIAMS',35,'HAYLEY','ROCK','USA',NULL),(7,'ZAC FARRO',40,'ZAC','ROCK','USA',NULL),(8,'JOSH FARRO',40,'JOSH','ROCK','USA',NULL);
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
INSERT INTO `Attendes` VALUES (1,2),(1,1);
/*!40000 ALTER TABLE `Attendes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `band` (
  `Bid` int(11) DEFAULT NULL,
  `Bname` varchar(255) DEFAULT NULL,
  `Artists` int(11) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Availibity` varchar(255) DEFAULT NULL,
  `Number` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` VALUES (1,'Drake',1,'HipHop','Toronto','During Tours','8285248020','https://upload.wikimedia.org/wikipedia/en/thumb/9/90/Scorpion_by_Drake.jpg/220px-Scorpion_by_Drake.jpg'),(2,'Jonas Brothers',3,'Rock','USA','At Request','473893029','https://akns-images.eonline.com/eol_images/Entire_Site/201935/rs_1024x1024-190405050139-1024-Jonas-Brothers_Cool-LT-040519.jpg'),(3,'Nick Jonas',1,'Rock','USA','Off Tour Season','493020384','https://is3-ssl.mzstatic.com/image/thumb/Music69/v4/78/2d/fc/782dfca5-ae49-e291-6551-c56aa527efb2/UMG_cvrart_00602547851482_01_RGB72_1800x1800_16UMGIM15572.jpg/1200x630bb.jpg'),(4,'JAMIE XX',1,'ELECTRONIC','LONDON','YEAR ROUND','82230942','https://media.pitchfork.com/photos/5929adc35e6ef95969321b2d/1:1/w_320/d5bf2bbb.jpg'),(5,'PARAMORE',3,'ROCK','USA','DURING TOUR','738929389','https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/ParamoreParamore.png/220px-ParamoreParamore.png');
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
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
INSERT INTO `BandMembers` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(2,3,5),(5,4,6),(6,5,7),(7,5,8),(8,5,9);
/*!40000 ALTER TABLE `BandMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorites` (
  `sid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,1),(1,1,1),(1,2,1),(1,3,1),(1,4,1);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
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
  `Number` varchar(255) DEFAULT NULL,
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
-- Table structure for table `SAVANT`
--

DROP TABLE IF EXISTS `SAVANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `SAVANT` (
  `SID` int(11) DEFAULT NULL,
  `Genres` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `SNAME` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SAVANT`
--

LOCK TABLES `SAVANT` WRITE;
/*!40000 ALTER TABLE `SAVANT` DISABLE KEYS */;
INSERT INTO `SAVANT` VALUES (1,'Rock','Chicago',17,'Tauren Bass'),(2,'HipHop','Seattle',18,'Coleman Scott'),(3,'Electronic','London',15,'Xavier Horton'),(4,'Rock','New Orleans',19,'James Pomple'),(5,'HipHop','Tokyo',22,'Thanos Purpleman'),(6,'Electronic','Toronto',20,'Crow Magnum');
/*!40000 ALTER TABLE `SAVANT` ENABLE KEYS */;
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
INSERT INTO `Show` VALUES (1,'Chicago','2019-08-15 9:00:00',20,1,1000,'1',2,3,2,'3000, nick jonas'),(2,'seattle','2019-08-15 9:00:00',20,1,1000,'1',2,3,4,'3000, butterfly song paramore'),(2,'chicago','2019-08-15 9:00:00',20,1,1000,'1',1,1,3,'drake, 3');
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
  `Amenities` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venue`
--

LOCK TABLES `Venue` WRITE;
/*!40000 ALTER TABLE `Venue` DISABLE KEYS */;
INSERT INTO `Venue` VALUES (1,'Chicago',16000,16,'WheelChair Access','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Chicago_from_North_Avenue_Beach_June_2015_panorama_2.jpg/1340px-Chicago_from_North_Avenue_Beach_June_2015_panorama_2.jpg'),(2,'Seattle',20000,18,'sun roof','https://cdn.vox-cdn.com/thumbor/unwBcW1Cwh9D3Wy5994l_ba0n7Q=/165x0:2831x2000/1200x675/filters:focal(165x0:2831x2000)/cdn.vox-cdn.com/uploads/chorus_image/image/50883391/eatersea0916_space_needle_shutterstock_dibrova.0.0.jpg'),(3,'London',15000,14,'Reclining seats','https://cdn.londonandpartners.com/visit/general-london/areas/river/76709-640x360-houses-of-parliament-and-london-eye-on-thames-from-above-640.jpg'),(4,'New Orleans',10000,17,'Food Court','https://s7.bluegreenvacations.com/is/image/BGV/louisiana-new-orleans-french-quarter-mardi-gras-neon-night?$bg2-hero-lg$&'),(5,'Tokyo',45000,21,'Views of the city','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Tokyo_Tower_and_around_Skyscrapers.jpg/238px-Tokyo_Tower_and_around_Skyscrapers.jpg'),(6,'Toronto',21000,20,'Free T-Shirts','https://images.ctfassets.net/niwziy2l9cvz/3mN5LdsBM4guqkc2Y6kW4i/ace81d8a95255097638a855d766d250e/Toronto-1112x630.jpg');
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

-- Dump completed on 2019-04-11 22:00:56
