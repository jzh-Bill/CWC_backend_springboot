/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : cwc_backend_db

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 22/06/2024 22:41:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendee
-- ----------------------------
DROP TABLE IF EXISTS `attendee`;
CREATE TABLE `attendee`  (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `cwc_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `family_id` int NOT NULL,
  `middle_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `chinese_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_believer` tinyint(1) NULL DEFAULT 0,
  `single` tinyint(1) NULL DEFAULT 1,
  `gender` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `secondary_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `check_in_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expected_check_out_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actual_check_out_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `room_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `room_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `table_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `room_special_request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `language_preference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workshop_day` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workshop_am` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workshop_pm` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `general_affair` tinyint(1) NULL DEFAULT NULL,
  `book_room` tinyint(1) NULL DEFAULT NULL,
  `dining_room` tinyint(1) NULL DEFAULT NULL,
  `tape_recording` tinyint(1) NULL DEFAULT NULL,
  `nursery` tinyint(1) NULL DEFAULT NULL,
  `time_keeper` tinyint(1) NULL DEFAULT NULL,
  `registration` tinyint(1) NULL DEFAULT NULL,
  `is_counselor` tinyint(1) NULL DEFAULT NULL,
  `is_speaker` tinyint(1) NULL DEFAULT NULL,
  `is_cwc_coworker` tinyint(1) NULL DEFAULT NULL,
  `is_mission_member` tinyint(1) NULL DEFAULT NULL,
  `is_children_worker` tinyint(1) NULL DEFAULT NULL,
  `is_winter_coworker` tinyint(1) NULL DEFAULT NULL,
  `is_regular_attendee` tinyint(1) NULL DEFAULT NULL,
  `others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `late_guarantee` tinyint(1) NULL DEFAULT NULL,
  `credit_card_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `credit_card_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `credit_card_expiration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `counselor_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `relationship` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `counselee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `counselee_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attendee_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `att_lc_ft` tinyint(1) NULL DEFAULT NULL,
  `att_lc_pt` tinyint(1) NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT NULL,
  `is_self_pay` tinyint(1) NULL DEFAULT 0,
  `is_kc_resident` tinyint(1) NULL DEFAULT NULL,
  `translation_request` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `special_need` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `church_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `church_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_fulltime` tinyint(1) NULL DEFAULT NULL,
  `check_in_date` datetime NULL DEFAULT NULL,
  `check_out_date` datetime NULL DEFAULT NULL,
  `church_BSG_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`person_id`) USING BTREE,
  INDEX `cwc_id_fk`(`cwc_id` ASC) USING BTREE,
  CONSTRAINT `cwc_id_fk` FOREIGN KEY (`cwc_id`) REFERENCES `attendee_family` (`cwc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `chk_attendee` CHECK (`gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M',_utf8mb4'f',_utf8mb4'm',_utf8mb4'male',_utf8mb4'female'))
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendee
-- ----------------------------
INSERT INTO `attendee` VALUES (51, 'zx1234', 'Mingyang', 'Jin', 44, NULL, '金明阳', 0, 1, 'male', 'grade 2', '5715239702', '', '783026426@qq.com', NULL, '2024-06-22 21:23:53', '2024-06-22 21:23:53', '2024-06-22 21:23:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'child_1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 'AL', 'Florence', 1, '2024-06-16 00:00:00', '2024-06-24 00:00:00', 'Florence Chinese Bible Study Group');
INSERT INTO `attendee` VALUES (52, 'zx1234', 'Zhihao', 'Jin', 44, NULL, '金稚皓', 1, 1, 'male', '~50', '5715239702', '', '783026426@qq.com', NULL, '2024-06-22 21:23:53', '2024-06-22 21:23:53', '2024-06-22 21:23:53', NULL, NULL, NULL, NULL, NULL, 'None', 'b1', 'c1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'self', '', '', NULL, NULL, NULL, NULL, 1, 1, '', NULL, 'AL', 'Florence', 1, '2024-06-16 00:00:00', '2024-06-24 00:00:00', 'Florence Chinese Bible Study Group');

-- ----------------------------
-- Table structure for attendee_family
-- ----------------------------
DROP TABLE IF EXISTS `attendee_family`;
CREATE TABLE `attendee_family`  (
  `confirmation_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `family_id` int NOT NULL AUTO_INCREMENT,
  `cwc_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `regi_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zip_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`family_id`) USING BTREE,
  UNIQUE INDEX `attendee_family_unique`(`cwc_id` ASC) USING BTREE,
  CONSTRAINT `chk_person` CHECK (`state` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AS',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY'))
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendee_family
-- ----------------------------
INSERT INTO `attendee_family` VALUES ('20240622212353', 44, 'zx1234', '2024-06-22 21:23:53', '416 south Marion street', 'Kirksville', 'MO', '63501');

-- ----------------------------
-- Table structure for church_info
-- ----------------------------
DROP TABLE IF EXISTS `church_info`;
CREATE TABLE `church_info`  (
  `church_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `if_new_entry` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`church_id`) USING BTREE,
  CONSTRAINT `chk_state` CHECK (`state` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AS',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY'))
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of church_info
-- ----------------------------
INSERT INTO `church_info` VALUES (2, 'Florence Chinese Bible Study Group', NULL, 'Florence', 'AL', 0);
INSERT INTO `church_info` VALUES (3, 'Auburn Chinese Bible Study Group', NULL, 'Auburn', 'AL', 0);
INSERT INTO `church_info` VALUES (4, 'Tuscaloosa Chinese Baptist Church', NULL, 'Tuscaloosa', 'AL', 0);
INSERT INTO `church_info` VALUES (5, 'Tuscaloosa Chinese Christian Fellowship', NULL, 'Tuscaloosa', 'AL', 0);
INSERT INTO `church_info` VALUES (7, 'Conway Chinese Bible Study Group', NULL, 'Conway', 'AR', 0);
INSERT INTO `church_info` VALUES (8, 'Grace Chinese Christian Church', NULL, 'Fayetteville', 'AR', 0);
INSERT INTO `church_info` VALUES (9, 'Little Rock Chinese Christian Church', NULL, 'Little Rock', 'AR', 0);
INSERT INTO `church_info` VALUES (10, 'White Hall Family Church', NULL, 'White Hall', 'AR', 0);
INSERT INTO `church_info` VALUES (11, 'The 5th Home of Christ', NULL, 'Cupertino', 'CA', 0);
INSERT INTO `church_info` VALUES (13, 'Chinese Church in Christ-Mountain View', NULL, 'Mountain View', 'CA', 0);
INSERT INTO `church_info` VALUES (14, 'Chinese Grace Bible Church', NULL, 'Sacramento', 'CA', 0);
INSERT INTO `church_info` VALUES (15, 'Chinese Church in Christ-San Jose', NULL, 'San Jose', 'CA', 0);
INSERT INTO `church_info` VALUES (16, 'Ames Christ Community Church Home for Heart', NULL, 'Ames', 'IA', 0);
INSERT INTO `church_info` VALUES (17, 'Chinese Evangelical Free Church at Ames', NULL, 'Ames', 'IA', 0);
INSERT INTO `church_info` VALUES (18, 'Crossroad Baptist Church', NULL, 'Ames', 'IA', 0);
INSERT INTO `church_info` VALUES (19, 'Iowa Ames Chinese Christian Fellowship', NULL, 'Ames', 'IA', 0);
INSERT INTO `church_info` VALUES (20, 'Cedar Falls Bible Study Group', NULL, 'Cedar Falls', 'IA', 0);
INSERT INTO `church_info` VALUES (21, 'Cedar Rapids Chinese Christian Fellowship', NULL, 'Cedar Rapids', 'IA', 0);
INSERT INTO `church_info` VALUES (22, 'Davenport Chinese Bible Study Group', NULL, 'Davenport', 'IA', 0);
INSERT INTO `church_info` VALUES (23, 'Des Moines Chinese Christian Church', NULL, 'Des Moines', 'IA', 0);
INSERT INTO `church_info` VALUES (24, 'Dubuque Chinese Bible Study Group', NULL, 'Dubuque', 'IA', 0);
INSERT INTO `church_info` VALUES (25, 'Chinese Church of Iowa City', NULL, 'Iowa City', 'IA', 0);
INSERT INTO `church_info` VALUES (26, 'Chinese Community Church', NULL, 'Iowa City', 'IA', 0);
INSERT INTO `church_info` VALUES (27, 'Chinese Evangelical Church in Iowa City', NULL, 'Iowa City', 'IA', 0);
INSERT INTO `church_info` VALUES (28, 'SIU Chinese Bible Study Group', NULL, 'Carbondale', 'IL', 0);
INSERT INTO `church_info` VALUES (29, 'Champaign Chinese Christian Church', NULL, 'Champaign', 'IL', 0);
INSERT INTO `church_info` VALUES (30, 'Chinese Christian Mandarin Church', NULL, 'Chicago', 'IL', 0);
INSERT INTO `church_info` VALUES (31, 'Holy Light Chinese Christian Fellowship', NULL, 'Normal', 'IL', 0);
INSERT INTO `church_info` VALUES (32, 'Peoria Chinese Christian Church', NULL, 'Peoria', 'IL', 0);
INSERT INTO `church_info` VALUES (33, 'Chinese Bible Church at Springfield', NULL, 'Springfield', 'IL', 0);
INSERT INTO `church_info` VALUES (34, 'Columbus Chinese Bible Study Group', NULL, 'Columbus', 'IN', 0);
INSERT INTO `church_info` VALUES (35, 'Chinese Christian Church of Greenwood', NULL, 'Greenwood', 'IN', 0);
INSERT INTO `church_info` VALUES (36, 'Chinese Community Church of Indianapolis', NULL, 'Indianapolis', 'IN', 0);
INSERT INTO `church_info` VALUES (37, 'Terre Haute Chinese Bible Study Fellowship', NULL, 'Terre Haute', 'IN', 0);
INSERT INTO `church_info` VALUES (38, 'Greater Lafayette Chinese Alliance Church', NULL, 'West Lafayette', 'IN', 0);
INSERT INTO `church_info` VALUES (39, 'Emporia Bible Study Group', NULL, 'Emporia', 'KS', 0);
INSERT INTO `church_info` VALUES (41, 'Lawrence Chinese Evangelical Church', NULL, 'Lawrence', 'KS', 0);
INSERT INTO `church_info` VALUES (42, 'Emmanuel Chinese Baptist Church', NULL, 'Lenexa', 'KS', 0);
INSERT INTO `church_info` VALUES (43, 'Manhattan Chinese Christian Fellowship', NULL, 'Manhattan', 'KS', 0);

-- ----------------------------
-- Table structure for conference_check_dates
-- ----------------------------
DROP TABLE IF EXISTS `conference_check_dates`;
CREATE TABLE `conference_check_dates`  (
  `date_id` int NOT NULL,
  `check_in_date` date NULL DEFAULT NULL,
  `check_out_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`date_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conference_check_dates
-- ----------------------------
INSERT INTO `conference_check_dates` VALUES (1, '2024-12-19', '2024-12-28');

-- ----------------------------
-- Table structure for cwcid_archive
-- ----------------------------
DROP TABLE IF EXISTS `cwcid_archive`;
CREATE TABLE `cwcid_archive`  (
  `cwc_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `family_id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  INDEX `cwc_id_fk2`(`cwc_id` ASC) USING BTREE,
  CONSTRAINT `cwc_id_fk2` FOREIGN KEY (`cwc_id`) REFERENCES `attendee_family` (`cwc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cwcid_archive
-- ----------------------------
INSERT INTO `cwcid_archive` VALUES ('zx1234', 44, '783026426@qq.com', '5715239702', 'Zhihao', 'Jin');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `hotel_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `street_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rmtype1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rmtype2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rmtype3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rmtype4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rooms` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  CONSTRAINT `chk_hotel` CHECK (`state` in (_utf8mb4'AL',_utf8mb4'AK',_utf8mb4'AS',_utf8mb4'AZ',_utf8mb4'AR',_utf8mb4'CA',_utf8mb4'CO',_utf8mb4'CT',_utf8mb4'DE',_utf8mb4'DC',_utf8mb4'FL',_utf8mb4'GA',_utf8mb4'GU',_utf8mb4'HI',_utf8mb4'ID',_utf8mb4'IL',_utf8mb4'IN',_utf8mb4'IA',_utf8mb4'KS',_utf8mb4'KY',_utf8mb4'LA',_utf8mb4'ME',_utf8mb4'MD',_utf8mb4'MA',_utf8mb4'MI',_utf8mb4'MN',_utf8mb4'MS',_utf8mb4'MO',_utf8mb4'MT',_utf8mb4'NE',_utf8mb4'NV',_utf8mb4'NH',_utf8mb4'NJ',_utf8mb4'NM',_utf8mb4'NY',_utf8mb4'NC',_utf8mb4'ND',_utf8mb4'MP',_utf8mb4'OH',_utf8mb4'OK',_utf8mb4'OR',_utf8mb4'PA',_utf8mb4'PR',_utf8mb4'RI',_utf8mb4'SC',_utf8mb4'SD',_utf8mb4'TN',_utf8mb4'TX',_utf8mb4'UT',_utf8mb4'VT',_utf8mb4'VA',_utf8mb4'VI',_utf8mb4'WA',_utf8mb4'WV',_utf8mb4'WI',_utf8mb4'WY'))
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------

-- ----------------------------
-- Table structure for meal_lodge_info
-- ----------------------------
DROP TABLE IF EXISTS `meal_lodge_info`;
CREATE TABLE `meal_lodge_info`  (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NULL DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakfast` tinyint(1) NULL DEFAULT NULL,
  `lunch` tinyint(1) NULL DEFAULT NULL,
  `dinner` tinyint(1) NULL DEFAULT NULL,
  `lodge` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `meal_lodge_option_fk`(`person_id` ASC) USING BTREE,
  CONSTRAINT `meal_lodge_option_fk` FOREIGN KEY (`person_id`) REFERENCES `attendee` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meal_lodge_info
-- ----------------------------
INSERT INTO `meal_lodge_info` VALUES (53, 51, '2024-06-11 00:00:00', 1, 1, 1, 1);
INSERT INTO `meal_lodge_info` VALUES (54, 52, '2024-06-11 00:00:00', 1, 1, 1, 1);
INSERT INTO `meal_lodge_info` VALUES (55, 51, '2024-06-12 00:00:00', 1, 1, 1, 1);
INSERT INTO `meal_lodge_info` VALUES (56, 52, '2024-06-12 00:00:00', 1, 1, 1, 1);
INSERT INTO `meal_lodge_info` VALUES (57, 51, '2024-06-13 00:00:00', 1, 1, 1, 1);
INSERT INTO `meal_lodge_info` VALUES (58, 52, '2024-06-13 00:00:00', 1, 1, 1, 1);
INSERT INTO `meal_lodge_info` VALUES (59, 51, '2024-06-14 00:00:00', 0, 1, 0, 1);
INSERT INTO `meal_lodge_info` VALUES (60, 52, '2024-06-14 00:00:00', 0, 1, 0, 1);

-- ----------------------------
-- Table structure for meal_lodge_plan
-- ----------------------------
DROP TABLE IF EXISTS `meal_lodge_plan`;
CREATE TABLE `meal_lodge_plan`  (
  `day_id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `breakfast` tinyint(1) NOT NULL,
  `lunch` tinyint(1) NOT NULL,
  `dinner` tinyint(1) NOT NULL,
  `lodge` tinyint(1) NOT NULL,
  PRIMARY KEY (`day_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meal_lodge_plan
-- ----------------------------
INSERT INTO `meal_lodge_plan` VALUES (1, '2024-06-11 16:03:08', 1, 1, 1, 1);
INSERT INTO `meal_lodge_plan` VALUES (2, '2024-06-12 16:03:32', 1, 1, 1, 1);
INSERT INTO `meal_lodge_plan` VALUES (3, '2024-06-13 16:03:53', 1, 1, 1, 1);
INSERT INTO `meal_lodge_plan` VALUES (4, '2024-06-14 16:04:11', 0, 1, 0, 1);

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting`  (
  `workshop` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `speaker` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meeting
-- ----------------------------

-- ----------------------------
-- Table structure for nametag
-- ----------------------------
DROP TABLE IF EXISTS `nametag`;
CREATE TABLE `nametag`  (
  `person_id` int NULL DEFAULT NULL,
  `family_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `chinese_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `christian_flag` tinyint(1) NULL DEFAULT 0,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `general_affair` tinyint(1) NULL DEFAULT NULL,
  `book_room` tinyint(1) NULL DEFAULT NULL,
  `dining_room` tinyint(1) NULL DEFAULT NULL,
  `tape_recording` tinyint(1) NULL DEFAULT NULL,
  `english_translation` tinyint(1) NULL DEFAULT NULL,
  `cantonese_translation` tinyint(1) NULL DEFAULT NULL,
  `nursery` tinyint(1) NULL DEFAULT NULL,
  `time_keeper` tinyint(1) NULL DEFAULT NULL,
  `registration` tinyint(1) NULL DEFAULT NULL,
  `counselor` tinyint(1) NULL DEFAULT NULL,
  `speaker` tinyint(1) NULL DEFAULT NULL,
  `cwc_worker` tinyint(1) NULL DEFAULT NULL,
  `mission_member` tinyint(1) NULL DEFAULT NULL,
  `child_coworker` tinyint(1) NULL DEFAULT NULL,
  `winter_coworker` tinyint(1) NULL DEFAULT NULL,
  `confirmation_id` bigint NULL DEFAULT NULL,
  `church_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `table_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `room_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workshop_day` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workshop_morning` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `workshop_afternoon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  INDEX `person_id_fk3`(`person_id` ASC) USING BTREE,
  CONSTRAINT `person_id_fk3` FOREIGN KEY (`person_id`) REFERENCES `attendee` (`person_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `chk_nametag` CHECK (`gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M',_utf8mb4'f',_utf8mb4'm',_utf8mb4'male',_utf8mb4'female'))
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nametag
-- ----------------------------

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `hotel_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `room_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `room_leader` tinyint(1) NULL DEFAULT NULL,
  `room_type` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `if_assigned` tinyint(1) NULL DEFAULT NULL,
  `room_occu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `check_in_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `chk_room_gender` CHECK (`gender` in (_utf8mb4'Male',_utf8mb4'Female',_utf8mb4'F',_utf8mb4'M',_utf8mb4'f',_utf8mb4'm',_utf8mb4'male',_utf8mb4'female')),
  CONSTRAINT `chk_room_occu` CHECK (`room_occu` in (_utf8mb4'Self-pay',_utf8mb4'Family',_utf8mb4'Single')),
  CONSTRAINT `chk_room_type` CHECK (`room_type` in (_utf8mb4'King',_utf8mb4'Queen',_utf8mb4'Suite'))
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '1234567', 'admin', 'zhihao', 'he is admin', 'admin-token');
INSERT INTO `users` VALUES (2, 'Bill', '123456', 'editor', 'Bill J', 'updated', 'editor-token');
INSERT INTO `users` VALUES (3, 'jack', '1234567', 'editor', 'Zhihao Jin', 'this is test of editorthis is test of editorthis is test of editorthis is test of editorthis is test of editorthis is test of editorthis is test of editor', 'editor-token');
INSERT INTO `users` VALUES (5, 'lalala', '123', 'editor', 'Zhihao', '123', 'editor');
INSERT INTO `users` VALUES (7, '123456789', '123456789', 'editor', 'Zhihao Jin', 'lalalala', 'editor');

SET FOREIGN_KEY_CHECKS = 1;
