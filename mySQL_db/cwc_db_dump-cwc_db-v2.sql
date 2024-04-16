-- MySQL dump 10.13  Distrib 5.7.24, for osx11.1 (x86_64)
--
-- Host: localhost    Database: cwc_db
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `attendee`
--

DROP TABLE IF EXISTS `attendee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendee` (
  `Person_ID` int NOT NULL AUTO_INCREMENT,
  `cwc_id` varchar(50) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `family_id` varchar(50) NOT NULL,
  `Middle_name` varchar(50) DEFAULT NULL,
  `Chinese_Name` varchar(50) DEFAULT NULL,
  `Christian_flag` tinyint(1) DEFAULT '0',
  `Single` tinyint(1) DEFAULT '1',
  `Gender` char(8) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Language_preference` varchar(50) DEFAULT NULL,
  `Worship_group` tinyint(1) DEFAULT NULL,
  `Worship_date` varchar(50) DEFAULT NULL,
  `Worship_morning` tinyint(1) DEFAULT NULL,
  `Worship_afternoon` tinyint(1) DEFAULT NULL,
  `General_affair` tinyint(1) DEFAULT NULL,
  `Book_room` tinyint(1) DEFAULT NULL,
  `Dining_room` tinyint(1) DEFAULT NULL,
  `Tape_recording` tinyint(1) DEFAULT NULL,
  `English_translation` tinyint(1) DEFAULT NULL,
  `Cantonese_translation` tinyint(1) DEFAULT NULL,
  `Nursery` tinyint(1) DEFAULT NULL,
  `Time_keeper` tinyint(1) DEFAULT NULL,
  `Registration` tinyint(1) DEFAULT NULL,
  `Counselor` tinyint(1) DEFAULT NULL,
  `Speaker` tinyint(1) DEFAULT NULL,
  `CWC_worker` tinyint(1) DEFAULT NULL,
  `Mission_member` tinyint(1) DEFAULT NULL,
  `Children_coworker` tinyint(1) DEFAULT NULL,
  `Winter_coworker` tinyint(1) DEFAULT NULL,
  `others` text,
  `Self_Pay` tinyint(1) DEFAULT '0',
  `Late_Guarantee` tinyint(1) DEFAULT NULL,
  `Credit_Card_Type` varchar(50) DEFAULT NULL,
  `Credit_Card_Number` varchar(50) DEFAULT NULL,
  `Credit_Card_Expiration` varchar(50) DEFAULT NULL,
  `Arrival_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Leave_Date` timestamp NULL DEFAULT NULL,
  `Counselor_ID` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Relationship` varchar(50) DEFAULT NULL,
  `CounseleeName` varchar(50) DEFAULT NULL,
  `CounseleeCity` varchar(50) DEFAULT NULL,
  `Attendee_Type` varchar(50) DEFAULT NULL,
  `Att_LC_FT` tinyint(1) DEFAULT NULL,
  `Att_LC_PT` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Person_ID`),
  KEY `cwc_id_FK` (`cwc_id`),
  CONSTRAINT `cwc_id_FK` FOREIGN KEY (`cwc_id`) REFERENCES `attendee_family` (`cwc_id`),
  CONSTRAINT `CHK_Attendee` CHECK ((`Gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendee`
--

LOCK TABLES `attendee` WRITE;
/*!40000 ALTER TABLE `attendee` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attendee_family`
--

DROP TABLE IF EXISTS `Attendee_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attendee_family` (
  `confirmation_num` int NOT NULL AUTO_INCREMENT,
  `cwc_id` varchar(50) NOT NULL,
  `regi_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Zip_code` varchar(50) NOT NULL,
  PRIMARY KEY (`confirmation_num`),
  UNIQUE KEY `Attendee_family_UNIQUE` (`cwc_id`),
  CONSTRAINT `CHK_Person` CHECK ((`State` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AS',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attendee_family`
--

LOCK TABLES `Attendee_family` WRITE;
/*!40000 ALTER TABLE `Attendee_family` DISABLE KEYS */;
/*!40000 ALTER TABLE `Attendee_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_in_out`
--

DROP TABLE IF EXISTS `check_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_in_out` (
  `Person_ID` int NOT NULL,
  `Hotel_name` varchar(50) DEFAULT NULL,
  `Check_in_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Expected_check_out_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Actual_check_out_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Room_number` varchar(50) DEFAULT NULL,
  `Room_type` varchar(50) DEFAULT NULL,
  `Room_leader` tinyint(1) DEFAULT NULL,
  `Table_number` varchar(50) DEFAULT NULL,
  `Day1dinner` tinyint(1) DEFAULT NULL,
  `Day2breakfast` tinyint(1) DEFAULT NULL,
  `Day2lunch` tinyint(1) DEFAULT NULL,
  `Day2dinner` tinyint(1) DEFAULT NULL,
  `Day3breakfast` tinyint(1) DEFAULT NULL,
  `Day3lunch` tinyint(1) DEFAULT NULL,
  `Day3dinner` tinyint(1) DEFAULT NULL,
  `Day4breakfast` tinyint(1) DEFAULT NULL,
  `Day4lunch` tinyint(1) DEFAULT NULL,
  `Day4dinner` tinyint(1) DEFAULT NULL,
  `Day5breakfast` tinyint(1) DEFAULT NULL,
  `Day5lunch` tinyint(1) DEFAULT NULL,
  `Special_request` text,
  `Lodging` tinyint(1) DEFAULT NULL,
  `Table_leader` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_in_out`
--

LOCK TABLES `check_in_out` WRITE;
/*!40000 ALTER TABLE `check_in_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `check_in_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwcid_archive`
--

DROP TABLE IF EXISTS `cwcid_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwcid_archive` (
  `cwc_id` varchar(50) NOT NULL,
  `family_id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  KEY `cwc_id_FK2` (`cwc_id`),
  CONSTRAINT `cwc_id_FK2` FOREIGN KEY (`cwc_id`) REFERENCES `Attendee_family` (`cwc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwcid_archive`
--

LOCK TABLES `cwcid_archive` WRITE;
/*!40000 ALTER TABLE `cwcid_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `cwcid_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hotel`
--

DROP TABLE IF EXISTS `Hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hotel` (
  `Hotel_name` varchar(50) DEFAULT NULL,
  `Street_name` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `RmType1` varchar(50) DEFAULT NULL,
  `RmType2` varchar(50) DEFAULT NULL,
  `RmType3` varchar(50) DEFAULT NULL,
  `RmType4` varchar(50) DEFAULT NULL,
  `Rooms` varchar(50) DEFAULT NULL,
  CONSTRAINT `CHK_Hotel` CHECK ((`State` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AS',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hotel`
--

LOCK TABLES `Hotel` WRITE;
/*!40000 ALTER TABLE `Hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `Workshop` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `speaker` varchar(50) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nametag`
--

DROP TABLE IF EXISTS `nametag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nametag` (
  `Person_ID` int DEFAULT NULL,
  `Family_ID` varchar(50) NOT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Chinese_Name` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Christian_Flag` tinyint(1) DEFAULT '0',
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `General_Affair` tinyint(1) DEFAULT NULL,
  `Book_Room` tinyint(1) DEFAULT NULL,
  `Dining_Room` tinyint(1) DEFAULT NULL,
  `Tape_Recording` tinyint(1) DEFAULT NULL,
  `English_Translation` tinyint(1) DEFAULT NULL,
  `Cantonese_Translation` tinyint(1) DEFAULT NULL,
  `Nursery` tinyint(1) DEFAULT NULL,
  `Time_Keeper` tinyint(1) DEFAULT NULL,
  `Registration` tinyint(1) DEFAULT NULL,
  `Counselor` tinyint(1) DEFAULT NULL,
  `Speaker` tinyint(1) DEFAULT NULL,
  `CWC_Worker` tinyint(1) DEFAULT NULL,
  `Mission_Member` tinyint(1) DEFAULT NULL,
  `Child_Coworker` tinyint(1) DEFAULT NULL,
  `Winter_Coworker` tinyint(1) DEFAULT NULL,
  `Confirmation_ID` bigint DEFAULT NULL,
  `Church_Name` varchar(50) DEFAULT NULL,
  `Table_Number` varchar(50) DEFAULT NULL,
  `Room_Number` varchar(50) DEFAULT NULL,
  `Workshop_Day` varchar(50) DEFAULT NULL,
  `Workshop_Morning` varchar(50) DEFAULT NULL,
  `Workshop_Afternoon` varchar(50) DEFAULT NULL,
  KEY `Person_ID_FK3` (`Person_ID`),
  CONSTRAINT `Person_ID_FK3` FOREIGN KEY (`Person_ID`) REFERENCES `attendee` (`Person_ID`),
  CONSTRAINT `CHK_nametag` CHECK ((`Gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nametag`
--

LOCK TABLES `nametag` WRITE;
/*!40000 ALTER TABLE `nametag` DISABLE KEYS */;
/*!40000 ALTER TABLE `nametag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `Hotel_name` varchar(50) DEFAULT NULL,
  `Room_number` varchar(50) DEFAULT NULL,
  `Room_type` char(5) DEFAULT NULL,
  `If_assigned` tinyint(1) DEFAULT NULL,
  `room_occu` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Check_in_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `CHK_ROOM_gender` CHECK ((`Gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M'))),
  CONSTRAINT `CHK_ROOM_occu` CHECK ((`room_occu` in (_utf8mb4'Self-pay',_utf8mb4'Family',_utf8mb4'Single'))),
  CONSTRAINT `CHK_ROOM_type` CHECK ((`Room_type` in (_utf8mb4'King',_utf8mb4'Queen',_utf8mb4'Suite')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cwc_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16  9:42:10
