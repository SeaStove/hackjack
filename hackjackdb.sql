-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hackjackdb
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Probability`
--

DROP TABLE IF EXISTS `Probability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Probability` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ace` int(11) DEFAULT NULL,
  `one` int(11) DEFAULT NULL,
  `two` int(11) DEFAULT NULL,
  `three` int(11) DEFAULT NULL,
  `four` int(11) DEFAULT NULL,
  `five` int(11) DEFAULT NULL,
  `six` int(11) DEFAULT NULL,
  `seven` int(11) DEFAULT NULL,
  `eight` int(11) DEFAULT NULL,
  `nine` int(11) DEFAULT NULL,
  `ten` int(11) DEFAULT NULL,
  `TotalFields` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Probability`
--

LOCK TABLES `Probability` WRITE;
/*!40000 ALTER TABLE `Probability` DISABLE KEYS */;
/*!40000 ALTER TABLE `Probability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrueCount`
--

DROP TABLE IF EXISTS `TrueCount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrueCount` (
  `CardID` int(11) NOT NULL AUTO_INCREMENT,
  `ace` int(11) DEFAULT '1',
  `one` int(11) DEFAULT '-1',
  `two` int(11) DEFAULT '-1',
  `three` int(11) DEFAULT '-1',
  `four` int(11) DEFAULT '-1',
  `five` int(11) DEFAULT '-1',
  `six` int(11) DEFAULT '-1',
  `seven` int(11) DEFAULT '0',
  `eight` int(11) DEFAULT '0',
  `nine` int(11) DEFAULT '0',
  `ten` int(11) DEFAULT '1',
  PRIMARY KEY (`CardID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrueCount`
--

LOCK TABLES `TrueCount` WRITE;
/*!40000 ALTER TABLE `TrueCount` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrueCount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-20  9:42:04
