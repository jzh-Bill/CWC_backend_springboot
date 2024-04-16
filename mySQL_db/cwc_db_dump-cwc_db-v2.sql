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
CREATE DATABASE IF NOT EXISTS cwc_backend_db;
USE cwc_backend_db;

-- table for testing
CREATE TABLE users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       username VARCHAR(50) NOT NULL,
                       password VARCHAR(100) NOT NULL,
                       role VARCHAR(50),
                       name VARCHAR(100),
                       description TEXT,
                       token VARCHAR(100)
);

INSERT INTO users (username, password, role, name, description, token)
VALUES ('john_doe', 'password123', 'user', 'John Doe', 'Regular user', 'abc123xyz456');

DROP TABLE IF EXISTS `attendee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendee` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `cwc_id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `family_id` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `chinese_name` varchar(50) DEFAULT NULL,
  `christian_flag` tinyint(1) DEFAULT '0',
  `single` tinyint(1) DEFAULT '1',
  `gender` char(8) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `language_preference` varchar(50) DEFAULT NULL,
  `worship_group` tinyint(1) DEFAULT NULL,
  `worship_date` varchar(50) DEFAULT NULL,
  `worship_morning` tinyint(1) DEFAULT NULL,
  `worship_afternoon` tinyint(1) DEFAULT NULL,
  `general_affair` tinyint(1) DEFAULT NULL,
  `book_room` tinyint(1) DEFAULT NULL,
  `dining_room` tinyint(1) DEFAULT NULL,
  `tape_recording` tinyint(1) DEFAULT NULL,
  `english_translation` tinyint(1) DEFAULT NULL,
  `cantonese_translation` tinyint(1) DEFAULT NULL,
  `nursery` tinyint(1) DEFAULT NULL,
  `time_keeper` tinyint(1) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `counselor` tinyint(1) DEFAULT NULL,
  `speaker` tinyint(1) DEFAULT NULL,
  `cwc_worker` tinyint(1) DEFAULT NULL,
  `mission_member` tinyint(1) DEFAULT NULL,
  `children_coworker` tinyint(1) DEFAULT NULL,
  `winter_coworker` tinyint(1) DEFAULT NULL,
  `others` text,
  `self_pay` tinyint(1) DEFAULT '0',
  `late_guarantee` tinyint(1) DEFAULT NULL,
  `credit_card_type` varchar(50) DEFAULT NULL,
  `credit_card_number` varchar(50) DEFAULT NULL,
  `credit_card_expiration` varchar(50) DEFAULT NULL,
  `arrival_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `leave_date` timestamp NULL DEFAULT NULL,
  `counselor_id` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `counselee_name` varchar(50) DEFAULT NULL,
  `counselee_city` varchar(50) DEFAULT NULL,
  `attendee_type` varchar(50) DEFAULT NULL,
  `att_lc_ft` tinyint(1) DEFAULT NULL,
  `att_lc_pt` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `cwc_id_fk` (`cwc_id`),
  CONSTRAINT `cwc_id_fk` FOREIGN KEY (`cwc_id`) REFERENCES `attendee_family` (`cwc_id`),
  CONSTRAINT `chk_attendee` CHECK ((`gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M',_utf8mb4'f',_utf8mb4'm',_utf8mb4'male',_utf8mb4'female')))
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
-- Table structure for table `attendee_family`
--

DROP TABLE IF EXISTS `attendee_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendee_family` (
  `confirmation_id` int NOT NULL AUTO_INCREMENT,
  `cwc_id` varchar(50) NOT NULL,
  `regi_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  PRIMARY KEY (`confirmation_id`),
  UNIQUE KEY `attendee_family_unique` (`cwc_id`),
  CONSTRAINT `chk_person` CHECK ((`state` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AS',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendee_family`
--

LOCK TABLES `attendee_family` WRITE;
/*!40000 ALTER TABLE `attendee_family` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendee_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_in_out`
--

DROP TABLE IF EXISTS `check_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_in_out` (
  `person_id` int NOT NULL,
  `hotel_name` varchar(50) DEFAULT NULL,
  `check_in_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expected_check_out_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actual_check_out_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `room_number` varchar(50) DEFAULT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `room_leader` tinyint(1) DEFAULT NULL,
  `table_number` varchar(50) DEFAULT NULL,
  `day1dinner` tinyint(1) DEFAULT NULL,
  `day2breakfast` tinyint(1) DEFAULT NULL,
  `day2lunch` tinyint(1) DEFAULT NULL,
  `day2dinner` tinyint(1) DEFAULT NULL,
  `day3breakfast` tinyint(1) DEFAULT NULL,
  `day3lunch` tinyint(1) DEFAULT NULL,
  `day3dinner` tinyint(1) DEFAULT NULL,
  `day4breakfast` tinyint(1) DEFAULT NULL,
  `day4lunch` tinyint(1) DEFAULT NULL,
  `day4dinner` tinyint(1) DEFAULT NULL,
  `day5breakfast` tinyint(1) DEFAULT NULL,
  `day5lunch` tinyint(1) DEFAULT NULL,
  `special_request` text,
  `lodging` tinyint(1) DEFAULT NULL,
  `table_leader` tinyint(1) DEFAULT NULL,
  KEY `person_id_fk` (`person_id`),
  CONSTRAINT `person_id_fk` FOREIGN KEY (`person_id`) REFERENCES `attendee` (`person_id`)
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
  KEY `cwc_id_fk2` (`cwc_id`),
  CONSTRAINT `cwc_id_fk2` FOREIGN KEY (`cwc_id`) REFERENCES `attendee_family` (`cwc_id`)
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
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `hotel_name` varchar(50) DEFAULT NULL,
  `street_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `rmtype1` varchar(50) DEFAULT NULL,
  `rmtype2` varchar(50) DEFAULT NULL,
  `rmtype3` varchar(50) DEFAULT NULL,
  `rmtype4` varchar(50) DEFAULT NULL,
  `rooms` varchar(50) DEFAULT NULL,
  CONSTRAINT `chk_hotel` CHECK ((`state` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AS',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `workshop` varchar(50) DEFAULT NULL,
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
  `person_id` int DEFAULT NULL,
  `family_id` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `chinese_name` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `christian_flag` tinyint(1) DEFAULT '0',
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `general_affair` tinyint(1) DEFAULT NULL,
  `book_room` tinyint(1) DEFAULT NULL,
  `dining_room` tinyint(1) DEFAULT NULL,
  `tape_recording` tinyint(1) DEFAULT NULL,
  `english_translation` tinyint(1) DEFAULT NULL,
  `cantonese_translation` tinyint(1) DEFAULT NULL,
  `nursery` tinyint(1) DEFAULT NULL,
  `time_keeper` tinyint(1) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `counselor` tinyint(1) DEFAULT NULL,
  `speaker` tinyint(1) DEFAULT NULL,
  `cwc_worker` tinyint(1) DEFAULT NULL,
  `mission_member` tinyint(1) DEFAULT NULL,
  `child_coworker` tinyint(1) DEFAULT NULL,
  `winter_coworker` tinyint(1) DEFAULT NULL,
  `confirmation_id` bigint DEFAULT NULL,
  `church_name` varchar(50) DEFAULT NULL,
  `table_number` varchar(50) DEFAULT NULL,
  `room_number` varchar(50) DEFAULT NULL,
  `workshop_day` varchar(50) DEFAULT NULL,
  `workshop_morning` varchar(50) DEFAULT NULL,
  `workshop_afternoon` varchar(50) DEFAULT NULL,
  KEY `person_id_fk3` (`person_id`),
  CONSTRAINT `person_id_fk3` FOREIGN KEY (`person_id`) REFERENCES `attendee` (`person_id`),
  CONSTRAINT `chk_nametag` CHECK ((`gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M',_utf8mb4'f',_utf8mb4'm',_utf8mb4'male',_utf8mb4'female')))
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
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `hotel_name` varchar(50) DEFAULT NULL,
  `room_number` varchar(50) DEFAULT NULL,
  `room_type` char(5) DEFAULT NULL,
  `if_assigned` tinyint(1) DEFAULT NULL,
  `room_occu` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `check_in_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `chk_room_gender` CHECK ((`gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M',_utf8mb4'f',_utf8mb4'm',_utf8mb4'male',_utf8mb4'female'))),
  CONSTRAINT `chk_room_occu` CHECK ((`room_occu` in (_utf8mb4'Self-pay',_utf8mb4'Family',_utf8mb4'Single'))),
  CONSTRAINT `chk_room_type` CHECK ((`room_type` in (_utf8mb4'King',_utf8mb4'Queen',_utf8mb4'Suite')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
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

-- Dump completed on 2024-04-16 12:25:27
