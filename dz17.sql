/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for osx10.18 (x86_64)
--
-- Host: localhost    Database: dz17
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `Analysis`
--

DROP TABLE IF EXISTS `Analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Analysis` (
  `an_id` int(11) NOT NULL,
  `an_name` varchar(100) DEFAULT NULL,
  `an_cost` decimal(10,2) DEFAULT NULL,
  `an_price` decimal(10,2) DEFAULT NULL,
  `an_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`an_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Analysis`
--

LOCK TABLES `Analysis` WRITE;
/*!40000 ALTER TABLE `Analysis` DISABLE KEYS */;
INSERT INTO `Analysis` VALUES
(1,'Complete Blood Count',10.00,20.00,1),
(2,'Lipid Panel',15.00,30.00,1),
(3,'Urinalysis',5.00,10.00,2),
(4,'Chest X-Ray',50.00,100.00,3),
(5,'Brain MRI',100.00,200.00,4);
/*!40000 ALTER TABLE `Analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gr_id` int(11) NOT NULL,
  `gr_name` varchar(100) DEFAULT NULL,
  `gr_temp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES
(1,'Blood Tests','2-8°C'),
(2,'Urine Tests','Room Temperature'),
(3,'X-Ray','No special storage'),
(4,'MRI','No special storage');
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `ord_id` int(11) NOT NULL,
  `ord_datetime` datetime DEFAULT NULL,
  `ord_an` int(11) DEFAULT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_an` (`ord_an`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_an`) REFERENCES `Analysis` (`an_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES
(1,'2020-02-01 09:00:00',1),
(2,'2020-02-01 11:00:00',2),
(3,'2020-02-02 10:30:00',3),
(4,'2020-02-03 14:00:00',4),
(5,'2020-02-04 16:00:00',5),
(6,'2020-02-05 09:30:00',1),
(7,'2020-02-06 12:00:00',2),
(8,'2020-02-07 13:00:00',3),
(9,'2020-02-08 15:00:00',4),
(10,'2020-02-09 10:00:00',5),
(11,'2020-02-10 08:00:00',1),
(12,'2020-02-11 14:30:00',2),
(13,'2020-02-12 11:30:00',3),
(14,'2020-02-13 13:30:00',4),
(15,'2020-02-14 16:30:00',5);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-28 18:48:30

