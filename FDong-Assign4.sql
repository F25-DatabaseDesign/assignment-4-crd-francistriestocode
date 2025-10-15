-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: localhost    Database: united_helpers_database
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `volunteerId` int NOT NULL,
  `taskCode` int NOT NULL,
  `startDateTime` datetime DEFAULT NULL,
  `endDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`volunteerId`,`taskCode`),
  KEY `taskCode_idx` (`taskCode`),
  CONSTRAINT `taskCode` FOREIGN KEY (`taskCode`) REFERENCES `task` (`taskCode`),
  CONSTRAINT `volunteerId` FOREIGN KEY (`volunteerId`) REFERENCES `volunteer` (`volunteerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,101,'2023-02-03 00:00:00','2022-02-07 00:00:00'),(1,103,'2025-10-10 00:00:00','2025-10-20 00:00:00'),(1,104,'2023-03-01 00:00:00','2023-03-04 00:00:00'),(2,102,'2023-08-09 00:00:00','2023-08-19 00:00:00'),(3,105,'2023-01-01 00:00:00','2023-04-09 00:00:00'),(4,106,'2023-04-01 00:00:00','2023-04-06 00:00:00'),(4,108,'2025-05-01 00:00:00','2025-05-04 00:00:00'),(5,107,'2023-05-06 00:00:00','2023-06-07 00:00:00'),(6,109,'2025-10-01 00:00:00','2025-11-03 00:00:00'),(7,109,'2025-10-01 00:00:00','2025-11-03 00:00:00'),(8,109,'2025-10-01 00:00:00','2025-11-03 00:00:00'),(9,110,'2025-01-04 00:00:00','2025-04-05 00:00:00'),(10,111,'2025-10-05 00:00:00','2025-11-02 00:00:00'),(11,112,'2025-10-01 00:00:00','2025-11-03 00:00:00'),(11,114,'2024-05-01 00:00:00','2024-05-03 00:00:00'),(12,112,'2025-10-01 00:00:00','2025-11-03 00:00:00'),(12,114,'2024-05-01 00:00:00','2024-05-03 00:00:00');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemId` int NOT NULL,
  `itemDescription` varchar(45) DEFAULT NULL,
  `itemValue` int DEFAULT NULL,
  `quantityOnHand` int DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'a toy ',5,7000),(2,'a doll',7,9000),(3,'first aid wound wash',4,5000),(4,'first aid band aid',10,2000),(5,'toothbrush',2,9000),(6,'deoderant',3,9900),(7,'educational book',5,4000),(8,'vegetarian meal kit',15,2000),(9,'halal meal kit',15,2000),(10,'kosher meal kit',15,2000),(11,'a lego set',19,1000),(12,'a spelling book',6,6000),(13,'pacifier',4,5000),(14,'diaper',4,6000);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `packageId` int NOT NULL,
  `taskCode` int DEFAULT NULL,
  `packageTypeId` int DEFAULT NULL,
  `packageCreateDate` datetime DEFAULT NULL,
  `packageWeight` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`packageId`),
  KEY `taskCode_idx` (`taskCode`),
  KEY `packageTypeId_idx` (`packageTypeId`),
  CONSTRAINT `fk_taskCode` FOREIGN KEY (`taskCode`) REFERENCES `task` (`taskCode`),
  CONSTRAINT `packageTypeId` FOREIGN KEY (`packageTypeId`) REFERENCES `package_type` (`packageTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,101,1,'2023-02-03 00:00:00',23),(2,101,1,'2023-02-04 00:00:00',23),(3,101,1,'2023-02-05 00:00:00',23),(4,101,1,'2023-02-06 00:00:00',23),(5,101,1,'2023-02-07 00:00:00',23),(6,103,3,'2023-02-11 00:00:00',50),(7,104,6,'2023-03-01 00:00:00',30),(8,104,6,'2023-03-02 00:00:00',30),(9,104,3,'2023-03-03 00:00:00',30),(10,104,3,'2023-03-04 00:00:00',30),(11,106,5,'2023-04-04 00:00:00',23),(12,108,5,'2025-05-01 00:00:00',50),(13,108,5,'2025-05-02 00:00:00',50),(14,108,5,'2025-05-03 00:00:00',50),(15,109,6,'2024-01-01 00:00:00',20),(16,111,2,'2024-02-01 00:00:00',20),(17,112,4,'2024-03-01 00:00:00',30),(18,114,3,'2024-05-01 00:00:00',20),(19,114,3,'2024-05-02 00:00:00',20);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_contents`
--

DROP TABLE IF EXISTS `package_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_contents` (
  `itemId` int NOT NULL,
  `packageId` int NOT NULL,
  `itemQuantity` int NOT NULL,
  PRIMARY KEY (`itemId`,`packageId`),
  KEY `packageId_idx` (`packageId`),
  CONSTRAINT `itemId` FOREIGN KEY (`itemId`) REFERENCES `item` (`itemId`),
  CONSTRAINT `packageId` FOREIGN KEY (`packageId`) REFERENCES `package` (`packageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_contents`
--

LOCK TABLES `package_contents` WRITE;
/*!40000 ALTER TABLE `package_contents` DISABLE KEYS */;
INSERT INTO `package_contents` VALUES (1,1,10),(1,2,10),(1,3,10),(1,4,10),(1,5,10),(2,1,10),(2,2,10),(2,3,10),(2,4,10),(2,5,10),(3,6,5),(3,9,5),(3,10,5),(3,18,5),(3,19,5),(4,6,5),(4,9,5),(4,10,5),(4,18,5),(4,19,5),(5,17,10),(6,17,10),(7,16,5),(8,12,5),(8,13,5),(8,14,5),(10,11,5),(12,16,5),(13,7,6),(13,8,6),(13,15,6),(14,7,6),(14,8,6),(14,15,6);
/*!40000 ALTER TABLE `package_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_type`
--

DROP TABLE IF EXISTS `package_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_type` (
  `packageTypeId` int NOT NULL,
  `packageTypeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`packageTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_type`
--

LOCK TABLES `package_type` WRITE;
/*!40000 ALTER TABLE `package_type` DISABLE KEYS */;
INSERT INTO `package_type` VALUES (1,'entertainment'),(2,'education'),(3,'first aid'),(4,'sanitary health'),(5,'food'),(6,'child-care');
/*!40000 ALTER TABLE `package_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_list`
--

DROP TABLE IF EXISTS `packing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_list` (
  `packingListId` int NOT NULL,
  `packingListName` varchar(45) DEFAULT NULL,
  `packingListDescription` longtext,
  PRIMARY KEY (`packingListId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_list`
--

LOCK TABLES `packing_list` WRITE;
/*!40000 ALTER TABLE `packing_list` DISABLE KEYS */;
INSERT INTO `packing_list` VALUES (1,'5 packages','5 entertainment packages needed, each one has 10 toys and 10 dolls.'),(2,'1 first aid package','1 first aid package needed with 5 bandaids and 5 woundwashes inside. '),(3,'4 packages','2 child-care packages with 6 diapers and 6 pacifiers inside each; 2 first aid packages with 5 bandaids and 5 woundwashes inside each.'),(4,'1 food package','1 kosher food package needed.'),(5,'3 packages','3 vegetarian food packages needed.'),(6,'1 child-care package','1 child-care package needed with 6 diapers and 6 pacifiers inside.'),(7,'1 education package','1 education package needed with 5 spelling books inside.'),(8,'1 sanitary health package','1 sanitary health package needed with 10 toothbrushes and 10 deoderants inside.'),(9,'2 packages','2 first-aid packages needed with 5 bandaids and 5 woundwashes inside each.');
/*!40000 ALTER TABLE `packing_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `taskCode` int NOT NULL,
  `packingListId` int DEFAULT NULL,
  `taskTypeId` int DEFAULT NULL,
  `taskStatusId` int DEFAULT NULL,
  `taskDescription` longtext,
  PRIMARY KEY (`taskCode`),
  KEY `packingListId_idx` (`packingListId`),
  KEY `taskTypeId_idx` (`taskTypeId`),
  KEY `taskStatusId_idx` (`taskStatusId`),
  CONSTRAINT `packingListId` FOREIGN KEY (`packingListId`) REFERENCES `packing_list` (`packingListId`),
  CONSTRAINT `taskStatusId` FOREIGN KEY (`taskStatusId`) REFERENCES `task_status` (`taskStatusId`),
  CONSTRAINT `taskTypeId` FOREIGN KEY (`taskTypeId`) REFERENCES `task_type` (`taskTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (101,1,3,3,'prepare 5 packages'),(102,NULL,2,2,'fill out spreadsheet'),(103,2,3,1,'prepare 1 package'),(104,3,3,3,'prepare 4 packages'),(105,NULL,2,3,'answer emails'),(106,4,3,3,'prepare 1 package'),(107,NULL,1,1,'do outreach'),(108,5,3,3,'prepare 3 packages'),(109,6,3,1,'preapre 1 package'),(110,NULL,4,3,'make social media posts'),(111,7,3,1,'prepare 1 package'),(112,8,3,1,'prepare 1 package'),(113,NULL,1,3,'answer the phone'),(114,9,3,3,'prepare 2 packages');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_status`
--

DROP TABLE IF EXISTS `task_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_status` (
  `taskStatusId` int NOT NULL,
  `taskStatusName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taskStatusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_status`
--

LOCK TABLES `task_status` WRITE;
/*!40000 ALTER TABLE `task_status` DISABLE KEYS */;
INSERT INTO `task_status` VALUES (1,'open'),(2,'ongoing'),(3,'closed');
/*!40000 ALTER TABLE `task_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_type`
--

DROP TABLE IF EXISTS `task_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_type` (
  `taskTypeId` int NOT NULL,
  `taskTypeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taskTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_type`
--

LOCK TABLES `task_type` WRITE;
/*!40000 ALTER TABLE `task_type` DISABLE KEYS */;
INSERT INTO `task_type` VALUES (1,'recurring'),(2,'all day'),(3,'packing'),(4,'every other day');
/*!40000 ALTER TABLE `task_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer` (
  `volunteerId` int NOT NULL AUTO_INCREMENT,
  `volunteerName` varchar(45) NOT NULL,
  `volunteerAddress` varchar(45) NOT NULL,
  `volunteerTelephone` varchar(45) NOT NULL,
  PRIMARY KEY (`volunteerId`),
  UNIQUE KEY `volunteerId_UNIQUE` (`volunteerId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES (1,'Franklin Dong','25 Imagine Road','242222353'),(2,'Walker Tupman','23 Fake Lane','5737374859'),(3,'Liam Gallagher','2 Story House','3737282884'),(4,'Noel Gallagher','3 Story Flat','9872034762'),(5,'Jimmy Page','45 Guitar Center','2845736251'),(6,'Robert Plant','21 Singing Lane','3829202939'),(7,'Bob Dylan','15 Nobel Road','4838272727'),(8,'John Paul Jones','34 Bass Place','4233413414'),(9,'David Beckham','7 Spice Lane','5322343244'),(10,'John Bonham','8 Drum Lane','9284746262'),(11,'Luis Suarez','124 Handball Court','3039299493'),(12,'Lionel Messi','10 Goat Road','2838388484');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-15 13:12:03
