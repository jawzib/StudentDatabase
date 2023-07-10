-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_info` (
  `student_id` char(10) NOT NULL,
  `CRN` char(10) NOT NULL,
  `grade` float DEFAULT NULL,
  `progress` varchar(10) NOT NULL,
  KEY `student_id` (`student_id`),
  KEY `CRN` (`CRN`),
  CONSTRAINT `course_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `course_info_ibfk_2` FOREIGN KEY (`CRN`) REFERENCES `courses` (`CRN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES ('1230948276','EN237',89,'InProgress'),('1230948276','CH213',70,'Finished'),('1234567890','AB101',60,'InProgress'),('1234567890','BI110',70,'InProgress'),('1234567890','HS101',67,'InProgress'),('3827163091','BI256',89,'InProgress'),('3827163091','BI266',90,'InProgress'),('3827163091','BI276',90,'InProgress'),('3957203917','AB201',99,'InProgress'),('3957203917','CC100',100,'InProgress'),('3957203917','BI349',97,'InProgress'),('4049381947','PC212',89,'InProgress'),('4049381947','CC100',100,'InProgress'),('4049381947','PS271',77,'InProgress'),('6958483712','EN381',89,'Finished'),('4920183947','CH120',92,'InProgress'),('4920183947','CH212',78,'InProgress'),('5093918491','PS271',80,'InProgress'),('5093918491','CC100',80,'InProgress'),('6958483712','CP363',86,'Finished'),('6958483712','EN381',89,'Finished'),('7184739817','PC474',97,'InProgress'),('7184739817','PC454',98,'InProgress'),('7184739817','PC212',96,'Finished'),('7999381284','CP213',70,'InProgress'),('7999381284','CP164',89,'Finished'),('7999381284','CP212',76,'InProgress'),('8027593858','BI431',94,'InProgress'),('8027593858','BI110',90,'Finished'),('8027593858','BI236',85,'Finished'),('8027593857','CP317',68,'Finished'),('8027593857','CP104',76,'Finished'),('8027593857','CP164',93,'Finished'),('9019285948','CC100',9,'InProgress'),('1230948276','EN119',77,'Finished'),('3957203917','AB101',89,'Finished'),('3957203917','BI110',87,'Finished');
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CRN` char(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `level` varchar(7) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `teacher` varchar(30) NOT NULL,
  PRIMARY KEY (`CRN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('AB101','Elementary Arabic','1','Arabic','Safah Mohammed'),('AB201','Intermediate Arabic','2','Arabic','Safah Mohammed'),('BI110','Unifying Life Processes','1','Biology','Jack Bright'),('BI236','Cell Biology','2','Biology','Jack Bright'),('BI256','Life on Earth: Animals','2','Biology','Jack Bright'),('BI266','Life on Earth: Plants','2','Biology','Howard Mann'),('BI276','Life on Earth: Microbes','2','Biology','Howard Mann'),('BI349','Embryology','3','Biology','Jack Bright'),('BI407','Animal Communication','4','Biology','Dijon Janes'),('BI431','Microtechniques','4','Biology','Dijon Janes'),('CC100','Crime','1','Criminology','Herlock Sholmes'),('CH120','Introductory Chemistry','1','Chemistry','Walter White'),('CH212','Analytical Chemistry I','2','Chemistry','Walter White'),('CH213','Analytical Chemistry II','2','Chemistry','Walter White'),('CP104','Intro to Programming','1','Computer Science','Nicky Summers'),('CP164','Data Structures I','1','Computer Science','Daud Hassan'),('CP212','Windows App Programming','2','Computer Science','Daud Hassan'),('CP213','Intro to OOP','2','Computer Science','Daud Hassan'),('CP264','Data Structures II','2','Computer Science','Daud Hassan'),('CP317','Software Engineering','3','Computer Science','Edna Smith'),('CP363','Database I','3','Computer Science','Edna Smith'),('EN119','Reading Fiction','1','English','John Green'),('EN237','The Fairy Tale','2','English','John Green'),('EN381','Gaming and Narrative Theory','3','English','John Green'),('HS101','War 1','1','History','James Army'),('HS102','War 2','1','History','James Army'),('HS201','Revolution','2','History','James Army'),('HS225','Ancient Greece','2','History','Paula Roger'),('HS308','Renaissance Art','3','History','Paula Roger'),('HS387','American Protest Music','3','History','Paula Roger'),('PC131','Mechanics','1','Physics','Albert Einstein'),('PC132','Thermodynamics and Waves','1','Physics','Albert Einstein'),('PC212','Electricity and Magnetism','2','Physics','Albert Einstein'),('PC242','Modern Physics','3','Physics','Albert Einstein'),('PC454','Solid State Physics','4','Physics','Albert Einstein'),('PC474','Optical Networks','4','Physics','Albert Einstein'),('PP110','Values','1','Philosophy','Cave Plato'),('PS101','Intro to Psychology 1','1','Psychology','Simon Glass'),('PS102','Intro to Psychology 2','1','Psychology','Simon Glass'),('PS271','Personality','2','Psychology','Czesar Schleck');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_enrollment`
--

DROP TABLE IF EXISTS `program_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program_enrollment` (
  `student_id` char(10) NOT NULL,
  `major` char(10) NOT NULL,
  `minor` char(10) DEFAULT NULL,
  `gpa` float DEFAULT NULL,
  `coop` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `major` (`major`),
  KEY `minor` (`minor`),
  CONSTRAINT `program_enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `program_enrollment_ibfk_2` FOREIGN KEY (`major`) REFERENCES `programs` (`program_id`),
  CONSTRAINT `program_enrollment_ibfk_3` FOREIGN KEY (`minor`) REFERENCES `programs` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_enrollment`
--

LOCK TABLES `program_enrollment` WRITE;
/*!40000 ALTER TABLE `program_enrollment` DISABLE KEYS */;
INSERT INTO `program_enrollment` VALUES ('1234567890','00007',NULL,9.1,1),('3827163091','00002',NULL,8,0),('3957203917','00009','00006',11.6,0),('4049381947','00008',NULL,9.2,0),('4920183947','00005',NULL,1.8,0),('5093918491','00012',NULL,7.9,0),('6958483712','00001',NULL,11.7,0),('7184739817','00003',NULL,11.9,1),('7999381284','00001','00005',9.1,1),('8027593857','00001',NULL,9,0),('8027593858','00004',NULL,5.3,0),('9019285948','00011','00001',1.1,1);
/*!40000 ALTER TABLE `program_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programs` (
  `program_id` char(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES ('00001','Computer Science','Science'),('00002','Computer Science and Physics','Science'),('00003','Physics','Science'),('00004','Biology','Science'),('00005','Chemistry','Science'),('00006','Arabic','Arts'),('00007','History','Arts'),('00008','English','Arts'),('00009','Philosophy','Arts'),('00011','Criminology','Human and Social Sciences'),('00012','Psychology','Science');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholarships`
--

DROP TABLE IF EXISTS `scholarships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholarships` (
  `scholarship_id` char(5) NOT NULL,
  `title` varchar(30) NOT NULL,
  `amount` float DEFAULT NULL,
  `min_gpa` float DEFAULT NULL,
  `student_id` char(10) NOT NULL,
  PRIMARY KEY (`scholarship_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `scholarships_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarships`
--

LOCK TABLES `scholarships` WRITE;
/*!40000 ALTER TABLE `scholarships` DISABLE KEYS */;
INSERT INTO `scholarships` VALUES ('1000','Scholar Award',1000,5,'1234567890'),('1100','Female Leaders',1500.4,7,'3957203917'),('1101','Student Grant',800,7,'1230948276'),('1102','Student Grant',800,7,'3957203917'),('1103','Student Grant',800,7,'7184739817');
/*!40000 ALTER TABLE `scholarships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` char(10) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` char(12) NOT NULL,
  `emergency` char(12) NOT NULL,
  `campus` varchar(9) NOT NULL,
  `overallgpa` float DEFAULT NULL,
  `international` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('1230948276','Kris','DeLaRune','Cambridge','100 Dreemer Drive','1015764343','1015764343','Brantford',11.3,0),('1234567890','John','Doe','Toronto','423 Terry Ave','5193849800','5193849800','Brantford',9.8,0),('3827163091','Steve','Crafter','Guelph','4900 Brown Brick Lane','5542731717','5542731717','Waterloo',8.1,1),('3957203917','Kate','Me','Toronto','396 Tangerines Ave','2217612727','2217612727','Brantford',12,1),('4049381947','Jon','Arbuckle','Guelph','711 Maple St','5049196442','5049196442','Brantford',9.3,0),('4920183947','Tom','Walters','Toronto','892 Icecream St','4948374900','4948374900','Brantford',2.1,0),('5093918491','Sarah','Peterman','Toronto','304 Daisy St','7048981209','7046765498','Waterloo',8.4,0),('6958483712','Brian','Wilson','Toronto','3701 W. 119th St','2254458988','2254458988','Brantford',11.8,0),('7184739817','Zane','Clodon','Waterloo','1244 Tails Ave','5432652333','5432652333','Waterloo',11.9,1),('7999381284','Cindy','Weissman','Toronto','121 Sticky St','4049791827','4049791827','Waterloo',10,0),('8027593857','Rick','Olamide','Guelph','7 Main St','5959124747','5959124747','Cambridge',9.1,0),('8027593858','Gary','Hoover','Cambridge','404 Papillon Dr','6738968371','6739895627','Cambridge',5.4,1),('9019285948','Sam','Spamton','Cambridge','123 Trash Alley','6954039292','6950891818','Brantford',1.8,1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 23:43:22
