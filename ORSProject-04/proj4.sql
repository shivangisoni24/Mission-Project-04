-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: project04
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `st_account`
--

DROP TABLE IF EXISTS `st_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_no` varchar(50) NOT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `balance` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT NULL,
  `modified_datetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_account`
--

LOCK TABLES `st_account` WRITE;
/*!40000 ALTER TABLE `st_account` DISABLE KEYS */;
INSERT INTO `st_account` VALUES (1,'SBIN0011111','Saving','State Bank of India','55000','admin','shivangi@gmail.com','2025-12-25 13:18:42','2025-12-25 13:22:02'),(2,'HDFC0022222','Business','HDFC Bank','250000','admin','shivangi@gmail.com','2025-12-25 13:18:42','2025-12-25 13:40:58'),(3,'ICICI0033333','Current','ICICI Bank','180000','admin','shivangi@gmail.com','2025-12-25 13:18:42','2025-12-25 13:45:11'),(4,'PNB0044444','Saving','Punjab National Bank','72000','admin','shivangi@gmail.com','2025-12-25 13:18:42','2025-12-25 13:22:39'),(5,'AXIS0055555','Business','Axis Bank','300000','admin','admin','2025-12-25 13:18:42','2025-12-25 13:18:42'),(6,'SBIN0066666','Saving','State Bank of India','715020','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:24:19','2025-12-25 13:26:51'),(7,'SBIN0077777','Saving','State Bank of India','20250','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:24:55','2025-12-25 13:31:16'),(8,'PNB0088888','Business','Punjab National Bank','955600','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:25:43','2025-12-25 13:25:43'),(9,'PNB0099999','Current','Punjab National Bank','632100','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:26:10','2025-12-25 13:26:10'),(10,'ICICI0010010','Current','ICICI Bank','454500','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:34:07','2025-12-25 13:35:32'),(11,'AXIS0010011','Saving','Axis Bank','88700','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:35:18','2025-12-25 13:36:01'),(12,'HDFC0010012','Saving','HDFC Bank','654320','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:37:03','2025-12-25 13:37:16'),(13,'ICICI0010013','Saving','ICICI Bank','757566','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:37:44','2025-12-25 13:38:56'),(14,'HDFC001014','Current','HDFC Bank','550005','shivangi@gmail.com','shivangi@gmail.com','2025-12-25 13:38:33','2025-12-25 13:39:11');
/*!40000 ALTER TABLE `st_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_college`
--

DROP TABLE IF EXISTS `st_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_college` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_college`
--

LOCK TABLES `st_college` WRITE;
/*!40000 ALTER TABLE `st_college` DISABLE KEYS */;
INSERT INTO `st_college` VALUES (1,'School Academy','Rajendra Nagar','Madhya Pradesh','Indore','7896547865','admin','shivangi@gmail.com','2025-08-31 04:47:09','2025-09-17 05:30:12'),(2,'DAVV','RNT Marg','Madhya Pradesh','Indore','8877669955','admin','shivangi@gmail.com','2025-08-27 13:48:29','2025-09-17 05:30:35'),(3,'IET DAVV','Khandwa Rd','Madhya Pradesh','Indore','9966773322','admin','shivangi@gmail.com','2025-08-27 13:48:29','2025-09-17 05:31:15'),(4,'IPS Academy','Rajendra Nagar','Madhya Pradesh','Indore','6677889922','admin','shivangi@gmail.com','2025-08-27 13:48:29','2025-09-17 05:31:37'),(5,'Acropolis','Mangliya Sq','Madhya Pradesh','Indore','9876543211','admin','shivangi@gmail.com','2025-08-27 13:48:29','2025-09-17 05:31:58'),(7,'Medicaps','Rau Road','Madhya Pradesh','Indore','9876543211','admin','shivangi@gmail.com','2025-08-27 13:48:29','2025-09-05 17:49:43'),(8,'LNCT Indore','Behind Aurobindo','Madhya Pradesh','Indore','9876543211','admin','shivangi@gmail.com','2025-09-01 15:04:56','2025-09-17 05:32:17'),(10,'Chameli Devi','Khandwa Rd','Madhya Pradesh','Indore','9876543211','admin','shivangi@gmail.com','2025-08-27 13:48:29','2025-09-17 05:32:33'),(11,'MIST','Aurobindo','Madhya Pradesh','Indore','9876543211','admin','shivangi@gmail.com','2025-08-31 04:45:32','2025-09-17 05:32:47'),(12,'IIM','ByPass','Madhya Pradesh','Indore','9876543211','admin','shivangi@gmail.com','2025-09-01 15:02:58','2025-09-17 05:33:07'),(13,'ABS','AB Road','M.P','Indore','8269650509','shivangi@gmail.com','shivangi@gmail.com','2025-09-02 17:56:01','2025-09-02 17:56:01'),(14,'DAVV BCA','Indore Rau','Madhya Pradesh','Indore','8269650503','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:25:03','2025-11-27 21:25:38'),(15,'IIM MBA','Indore Rau','Madhya Pradesh','Indore','8269650503','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:25:03','2025-11-27 21:26:01'),(16,'MIST B.E','Luv-Kush','Madhya Pradesh','Indore','8269650503','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:25:03','2025-11-27 21:26:48');
/*!40000 ALTER TABLE `st_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_course`
--

DROP TABLE IF EXISTS `st_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_course` (
  `id` bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT NULL,
  `modified_datetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_course`
--

LOCK TABLES `st_course` WRITE;
/*!40000 ALTER TABLE `st_course` DISABLE KEYS */;
INSERT INTO `st_course` VALUES (1,'Java','6 Months','Core Java','Admin','Admin','2025-08-31 16:43:40','2025-08-31 16:43:40'),(2,'C Programming','3 Months','C Programming Language','Admin','Admin','2025-08-31 16:43:40','2025-08-31 16:43:40'),(3,'C, C++','6 months','Basic Coding','Admin','Admin','2025-09-01 12:08:19','2025-09-01 12:08:19'),(4,'Full Stack Java','8 Months','Frontend + Backend Java Development','Admin','Admin','2025-08-31 16:43:40','2025-08-31 16:43:40'),(5,'Web Development','6 Months','HTML, CSS, JavaScript, Bootstrap, React','Admin','Admin','2025-08-31 16:43:40','2025-08-31 16:43:40'),(6,'Core Java','3 months','Core Java','Admin','Admin','2025-08-31 17:06:31','2025-08-31 17:06:31'),(7,'Java + Spring Boot','6 Months','REST APIs and Microservices using Spring Boot','Admin','Admin','2025-08-31 16:43:40','2025-08-31 16:43:40'),(8,'Advanced JavaScript','5 Months','ES6+, Node.js, Express, and Modern JS','Admin','Admin','2025-08-31 16:43:40','2025-08-31 16:43:40'),(9,'Corporate Java','6 months','Java , MySQL','Admin','Admin','2025-08-31 16:57:31','2025-08-31 16:57:31'),(10,'ML','3 months','DevOps','Admin','Admin','2025-08-31 17:05:30','2025-08-31 17:05:30'),(11,'Java Adv','6 months','Java , MySQL','Admin','Admin','2025-09-01 12:06:04','2025-09-01 12:06:04'),(12,'BBA','6 months','BBA','root','root','2025-09-02 13:51:57','2025-09-02 13:51:57');
/*!40000 ALTER TABLE `st_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_doctor`
--

DROP TABLE IF EXISTS `st_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_doctor` (
  `id` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_of_visit` date NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `decease` varchar(100) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `created_datetime` timestamp NOT NULL,
  `modified_datetime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_doctor`
--

LOCK TABLES `st_doctor` WRITE;
/*!40000 ALTER TABLE `st_doctor` DISABLE KEYS */;
INSERT INTO `st_doctor` VALUES (1,'Dr. Soni','1996-11-24','8269650503','Surgeon','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:50:35'),(2,'Dr. Gupta','1982-01-05','8269650503','Cardiologist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:51:05'),(3,'Dr. Rao','1985-08-15','8269650503','Gynecologist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:52:27'),(4,'Dr. Jain','1999-02-10','8269650503','General Physician','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:53:08'),(5,'Dr. Ankita Mishra','1999-05-02','8269650503','Dentist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:53:54'),(6,'Dr. Vishal Gupta','1984-04-09','8269650503','Orthopedics','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:54:46'),(7,'Dr. Kishor Mittal','1972-09-04','8269650503','General Physician','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:55:29'),(8,'Dr. Deepak Dubey','1972-09-04','8269650503','Oncologist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:56:38'),(9,'Dr. Anil Sharma','1980-09-03','8269650503','ENT','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:57:13'),(10,'Dr. Anil Soni','1973-09-05','8269650503','Dermatologist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:50:35','2025-11-26 11:57:46'),(11,'Dr. Raman Singh','1985-08-22','8269650503','Pediatrician','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:59:36','2025-11-26 11:59:36'),(12,'Dr. Yash Joshi','2003-10-07','8269650503','Psychiatrist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:59:36','2025-11-26 12:00:17'),(13,'Dr. Shashank Soni','2002-10-14','8269650503','Neurology','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 11:59:36','2025-11-26 12:00:47'),(14,'Dr. Ajay Soni','1970-06-01','8269650503','Endocrinologist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 12:03:01','2025-11-26 12:03:01'),(15,'Dr. Jayant Patel','1996-06-20','8269650503','Dentist','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 12:03:01','2025-11-26 12:04:15'),(16,'Dr. Rashmi Soni','1991-06-13','8269650503','Pediatrician','shivangi@gmail.com','shivangi@gmail.com','2025-11-26 12:03:01','2025-11-26 12:05:04');
/*!40000 ALTER TABLE `st_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_faculty`
--

DROP TABLE IF EXISTS `st_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_faculty` (
  `id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `college_id` int DEFAULT NULL,
  `college_name` varchar(150) DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_faculty`
--

LOCK TABLES `st_faculty` WRITE;
/*!40000 ALTER TABLE `st_faculty` DISABLE KEYS */;
INSERT INTO `st_faculty` VALUES (1,'Amit','Sharma','1980-05-15 00:00:00','Male','9876543210','amit@gmail.com',3,'IET DAVV',5,'Web Development',12,'Python','admin','shivangi@gmail.com','2025-07-23 11:20:16','2025-09-05 18:06:52'),(2,'Priya','Iyer','1985-08-22 00:00:00','Female','9123456780','priya@gmail.com',8,'LNCT Indore ',10,'ML',3,'ML Basics','admin','shivangi@gmail.com','2025-07-23 11:20:16','2025-09-05 18:05:34'),(3,'Rajeev','Verma','1978-11-30 00:00:00','Male','9012345678','rajeev@gmail.com',4,'IPS Academy',8,'Advanced JavaScript',11,'Java','admin','shivangi@gmail.com','2025-07-23 11:20:16','2025-09-05 18:04:38'),(4,'Rashmi','Soni','0025-07-29 00:00:00','Female','8269650503','rashmi@gmail.com',2,'DAVV',6,'Core Java',11,'Java','shivangi@gmail.com','shivangi@gmail.com','2025-09-03 17:48:59','2025-09-03 17:48:59'),(5,'Shivangi','Soni','0025-11-24 00:00:00','Female','8269650503','shivangi@gmail.com',2,'DAVV',9,'Corporate Java',13,'Advance Java','shivangi@gmail.com','shivangi@gmail.com','2025-09-03 17:49:29','2025-09-03 17:50:35'),(6,'Nidhi','Jain','0025-07-22 00:00:00','Female','8269650503','nidhi@gmail.com',5,'Acropolis',2,'C Programming',4,'C++ DSA','shivangi@gmail.com','shivangi@gmail.com','2025-09-04 17:18:14','2025-09-04 17:18:19'),(7,'Shashank','Soni','0025-11-24 00:00:00','Male','8269650503','shashank@gmail.com',7,'Medicaps',7,'Java + Spring Boot',11,'Java','shivangi@gmail.com','shivangi@gmail.com','2025-09-05 17:58:59','2025-09-05 17:58:59'),(8,'Siya','Sharma','0025-11-24 00:00:00','Female','8269650503','siya@gmail.com',11,'MIST',4,'Full Stack Java',14,'nginx','shivangi@gmail.com','shivangi@gmail.com','2025-09-05 18:01:16','2025-09-05 18:01:16'),(9,'Sanchita','Chikhliya','0025-07-22 00:00:00','Female','9876543299','sanchita@gmail.com',13,'ABS',5,'Web Development',4,'C++ DSA','shivangi@gmail.com','shivangi@gmail.com','2025-09-05 18:03:34','2025-09-05 18:03:34');
/*!40000 ALTER TABLE `st_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_marksheet`
--

DROP TABLE IF EXISTS `st_marksheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_marksheet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(45) NOT NULL,
  `student_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `physics` int DEFAULT NULL,
  `chemistry` int DEFAULT NULL,
  `maths` int DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `st_marksheet_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `st_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_marksheet`
--

LOCK TABLES `st_marksheet` WRITE;
/*!40000 ALTER TABLE `st_marksheet` DISABLE KEYS */;
INSERT INTO `st_marksheet` VALUES (1,'RN01',1,'Shashank Soni',99,88,88,'Admin','Admin','2025-09-01 01:25:35','2025-09-01 01:25:35'),(2,'RN02',2,'Isha Verma',88,91,83,'Admin','Admin','2025-08-31 05:07:15','2025-08-31 05:07:15'),(3,'RN03',3,'Rohan Mehta',67,73,76,'Admin','Admin','2025-08-31 05:07:15','2025-08-31 05:07:15'),(5,'RN05',5,'Kunal Singh',58,64,60,'Admin','Admin','2025-08-31 05:07:15','2025-08-31 05:07:15'),(6,'RN06',6,'Sneha Joshi',81,87,84,'Admin','Admin','2025-08-31 05:07:15','2025-08-31 05:07:15'),(7,'RN07',7,'Aditya Rao',90,78,88,'Admin','Admin','2025-08-31 05:07:15','2025-08-31 05:07:15'),(11,'RN11',11,'Shivangi Soni',78,88,98,'Admin','Admin','2025-09-01 01:16:29','2025-09-01 01:16:29'),(12,'RN12',12,'Pari Sonone',66,77,88,'Admin','Admin','2025-09-01 17:31:32','2025-09-01 17:31:32'),(13,'RN133',1,'Shashank Soni',79,86,95,'shivangi@gmail.com','shivangi@gmail.com','2025-09-03 13:09:33','2025-09-03 13:09:44'),(14,'RN130',4,'Sneha Mehta',45,23,32,'shivangi@gmail.com','shivangi@gmail.com','2025-09-09 17:59:16','2025-09-09 17:59:16'),(15,'RN011',12,'Pari Sonone',23,33,31,'shivangi@gmail.com','shivangi@gmail.com','2025-09-09 18:00:13','2025-09-09 18:00:13'),(16,'RN134',13,'Khyati Bhawsar',58,66,77,'shivangi@gmail.com','shivangi@gmail.com','2025-09-20 21:04:02','2025-09-20 21:04:02'),(17,'RN123',7,'Muskan Parmar',45,86,60,'shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:28:00','2025-11-27 21:28:00'),(18,'RN109',3,'Rahul Patel',45,20,60,'shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:28:00','2025-11-27 21:28:34'),(19,'RN129',3,'Rahul Patel',45,20,60,'shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:28:00','2025-11-27 21:28:43'),(20,'RN131',4,'Sneha Mehta',45,33,63,'shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:28:00','2025-11-27 21:29:07');
/*!40000 ALTER TABLE `st_marksheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_patient`
--

DROP TABLE IF EXISTS `st_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_patient` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_visit` date NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `decease` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_patient`
--

LOCK TABLES `st_patient` WRITE;
/*!40000 ALTER TABLE `st_patient` DISABLE KEYS */;
INSERT INTO `st_patient` VALUES (1,'Rashmi Soni','2007-12-02','8269650503','Diabetes','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:43:08','2025-11-27 15:43:08'),(2,'Shivangi Soni','2007-12-11','8269650503','Hypertension','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:43:08','2025-11-27 15:43:29'),(3,'Rajesh Soni','2007-08-13','8269650503','Diabetes','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:43:08','2025-11-27 15:44:17'),(4,'Shshank Soni','2006-12-05','8269650503','Fever','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:43:08','2025-11-27 15:44:42'),(5,'Pushpa Soni','2005-02-15','8269650503','Joint Pain','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:43:08','2025-12-06 09:30:15'),(6,'Kajal Sharma','2000-01-20','8269650503','Eye Infection','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:46:09','2025-11-27 16:08:46'),(7,'Khyati Bhawsar','2004-09-19','8269650503','Teeth Doctor','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:46:09','2025-11-27 15:47:04'),(8,'Aashu Patil','2007-01-25','8269650503','Pregnancy','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:46:09','2025-11-27 15:47:55'),(9,'Krishna Joshi','1998-01-14','8269650503','Skin Allergy','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:46:09','2025-11-27 15:48:33'),(10,'Pooja Pal','2007-12-01','8269650503','Hormone Problem','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:49:20','2025-11-27 15:49:20'),(11,'Vini Soni','2003-10-02','8269650503','Heart Attack','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:49:20','2025-12-24 08:06:00'),(12,'Ekta Dangi','1997-12-27','8269650503','Fever','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 15:51:04','2025-11-27 15:51:04');
/*!40000 ALTER TABLE `st_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_role`
--

DROP TABLE IF EXISTS `st_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_role` (
  `id` bigint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role`
--

LOCK TABLES `st_role` WRITE;
/*!40000 ALTER TABLE `st_role` DISABLE KEYS */;
INSERT INTO `st_role` VALUES (1,'admin','admin','system','system','2025-08-26 12:19:50','2025-08-26 12:19:50'),(2,'student','student','system','system','2025-08-26 12:19:50','2025-08-26 12:19:50'),(3,'college','college','system','system','2025-08-26 12:19:50','2025-08-26 12:19:50'),(4,'kiosk','kiosk','system','system','2025-08-26 12:19:50','2025-08-26 12:19:50'),(5,'faculty','faculty','system','shivangi@gmail.com','2025-08-26 12:19:50','2025-09-25 15:36:05'),(6,'Software Developer','Software Developer','shivangi@gmail.com','shivangi@gmail.com','2025-09-25 15:38:50','2025-09-25 15:40:26');
/*!40000 ALTER TABLE `st_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_student`
--

DROP TABLE IF EXISTS `st_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_student` (
  `id` bigint NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `college_id` bigint DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_student`
--

LOCK TABLES `st_student` WRITE;
/*!40000 ALTER TABLE `st_student` DISABLE KEYS */;
INSERT INTO `st_student` VALUES (1,'Shashank','Soni','2002-10-14 00:00:00','Male','8765432199','shashank@gmail.com',1,'DAVV','Admin','Admin','2025-08-31 04:41:59','2025-08-31 04:41:59'),(2,'Isha','Verma','2001-08-21 00:00:00','Female','9876543211','isha.verma@gmail.com',2,'DAVV','system','shivangi@gmail.com','2025-08-31 04:40:06','2025-09-17 05:27:30'),(3,'Rahul','Patel','2000-11-30 00:00:00','Male','9876543212','rahul.patel@gmail.com',3,'IET DAVV','system','shivangi@gmail.com','2025-08-31 04:40:06','2025-09-17 05:27:53'),(4,'Sneha','Mehta','2002-06-12 00:00:00','Female','9876543213','sneha.mehta@gmail.com',4,'IPS Academy','system','shivangi@gmail.com','2025-08-31 04:40:06','2025-09-17 05:28:21'),(5,'Karan','Jain','2003-02-10 00:00:00','Male','9876543214','karan.jain@gmail.com',3,'IET DAVV','system','shivangi@gmail.com','2025-08-31 04:40:06','2025-09-17 05:28:57'),(6,'Priya','Dubey','2001-10-18 00:00:00','Female','9876543215','priya.dubey@gmail.com',5,'Acropolis','system','shivangi@gmail.com','2025-08-31 04:40:06','2025-09-17 05:29:37'),(7,'Muskan','Parmar','1998-05-15 00:00:00','female','8765432199','muskan@gmail.com',8,'Medicaps','Admin','Admin','2025-09-01 15:31:48','2025-09-01 15:31:48'),(8,'Neha','Singh','2000-12-28 00:00:00','Female','9876543217','neha.singh@gmail.com',7,'Medicaps','system','shivangi@gmail.com','2025-08-31 04:40:06','2025-09-17 05:27:02'),(10,'Riya','Thakur','2001-03-07 00:00:00','Female','9876543219','riya.thakur@gmail.com',10,'Chameli Devi','system','shivangi@gmail.com','2025-08-31 04:40:06','2025-09-17 05:26:26'),(11,'Shivangi','Soni','1999-11-23 00:00:00','Female','9876543211','shivangi@gmail.com',9,'IIT Indore','Admin','Admin','2025-08-31 04:41:33','2025-08-31 04:41:33'),(12,'Pari','Sonone','2004-02-28 00:00:00','Female','9876543211','pari@gmail.com',1,'School Academy','Admin','Admin','2025-09-01 15:27:59','2025-09-01 15:27:59'),(13,'Khyati','Bhawsar','2009-09-19 00:00:00','Female','8269650503','Khyatii@gmail.com',2,'DAVV','shivangi@gmail.com','shivangi@gmail.com','2025-09-02 18:36:43','2025-09-20 21:02:27'),(14,'Krishna','Joshi','1998-01-14 00:00:00','Female','8269650503','krishna@gmail.com',5,'Acropolis','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:41:22','2025-11-27 21:41:22'),(15,'Nikita','Parihar','1985-08-22 00:00:00','Female','8269650503','nikita@gmail.com',14,'DAVV BCA','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:42:36','2025-11-27 21:42:36');
/*!40000 ALTER TABLE `st_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subject`
--

DROP TABLE IF EXISTS `st_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `course_id` bigint DEFAULT NULL,
  `course_name` varchar(100) NOT NULL,
  `description` text,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subject`
--

LOCK TABLES `st_subject` WRITE;
/*!40000 ALTER TABLE `st_subject` DISABLE KEYS */;
INSERT INTO `st_subject` VALUES (1,'Java Dev',1,'Java - NIIT','Covers Java, JDBC, Hibernate','Admin','Admin','2025-08-31 20:50:45','2025-08-31 20:50:45'),(2,'Python DS',12,'DS - Great Learning','Python, Pandas, NumPy, ML models','Admin','Admin','2025-08-31 20:50:45','2025-08-31 20:50:45'),(3,'ML Basics',2,'ML - IIIT B','Python, Scikit-learn, TensorFlow','Admin','Admin','2025-08-31 20:50:45','2025-08-31 20:50:45'),(4,'C++ DSA',11,'DSA - Coding Ninjas','C++, Data Structures, Algorithms','Admin','Admin','2025-08-31 20:50:45','2025-08-31 20:50:45'),(5,'Basic DevOps',3,'Full Stack Java','Flow','Admin','Admin','2025-09-01 18:05:29','2025-09-01 18:05:29'),(6,'AI Core',5,'AI - IIT Madras','Python, AI concepts, Neural Networks','Admin','Admin','2025-08-31 20:50:45','2025-08-31 20:50:45'),(7,'DevOps',4,'DevOps - Simplilearn','CI/CD, Docker, Jenkins, Kubernetes','Admin','Admin','2025-08-31 20:50:45','2025-08-31 20:50:45'),(9,'Hibernate',6,'Java EE - NIIT','Java, Spring, Hibernate','Admin','Admin','2025-08-31 20:50:45','2025-08-31 20:50:45'),(11,'Java',7,'Java','Java Developer','Admin','Admin','2025-08-31 21:27:14','2025-08-31 21:27:14'),(12,'Python',9,'Java + Spring Boot','Full Python','Admin','Admin','2025-09-01 17:55:36','2025-09-01 17:55:36'),(13,'Advance Java',8,'Java','Basic to Advance java','shivangi@gmail.com','shivangi@gmail.com','2025-09-02 19:50:11','2025-09-02 19:50:11'),(14,'nginx',10,'Java','servers','shivangi@gmail.com','shivangi@gmail.com','2025-09-03 13:10:26','2025-09-03 13:10:26');
/*!40000 ALTER TABLE `st_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_timetable`
--

DROP TABLE IF EXISTS `st_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_timetable` (
  `id` bigint NOT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `description` text,
  `exam_date` date DEFAULT NULL,
  `exam_time` varchar(20) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT NULL,
  `modified_datetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_timetable`
--

LOCK TABLES `st_timetable` WRITE;
/*!40000 ALTER TABLE `st_timetable` DISABLE KEYS */;
INSERT INTO `st_timetable` VALUES (1,'First Semester','Java Dev','2025-08-23','8:00 AM - 11:00 AM',1,'Java',1,'Java Dev','Admin','Admin','2025-09-01 13:14:23','2025-09-01 13:14:23'),(2,'1st Semester','Java Dev','2025-12-03','11:00 AM',1,'Java',2,'Java Dev','admin','admin','2025-08-31 18:12:38','2025-08-31 18:12:38'),(3,'1st Semester','Basic Coding','2025-12-04','02:00 PM',3,'C,C++',3,'Basic Coding','admin','admin','2025-08-31 18:12:38','2025-08-31 18:12:38'),(4,'1st Semester','Core Java','2025-12-05','01:00 PM',6,'Core Java',4,'Core Java','admin','admin','2025-08-31 18:12:38','2025-08-31 18:12:38'),(5,'1st Semester','Core Java','2025-12-06','10:30 AM',6,'Core Java',5,'Core Java','admin','admin','2025-08-31 18:12:38','2025-08-31 18:12:38'),(6,'1st Semester','Java Dev','2025-12-07','12:00 PM',1,'Java',6,'Java Dev','admin','admin','2025-08-31 18:12:38','2025-08-31 18:12:38'),(7,'First Semester','Core Java','2025-08-23','8:00 AM - 11:00 AM',6,'Core Java',7,'Python DS','Student','StudentS','2025-09-03 10:34:09','2025-09-03 10:34:09'),(8,'1st Semester','Basic Coding','2025-12-10','09:30 AM',3,'C,C++',8,'C,C++','admin','admin','2025-08-31 18:12:38','2025-08-31 18:12:38'),(10,'1st Semester','C,C++','2025-08-10','8:00 AM',3,'C, C++',9,'Advance Java','Student','Student','2025-09-03 10:22:57','2025-09-03 10:22:57'),(11,'3','ML Basic','2025-08-21','12:00 PM to 03:00 PM',10,'ML',10,'ML Basics','shivangi@gmail.com','shivangi@gmail.com','2025-09-03 11:48:10','2025-09-03 11:48:10'),(12,'2','Web devlopment','2025-08-21','08:00 AM to 11:00 AM',5,'Web Development',6,'AI Core','shivangi@gmail.com','shivangi@gmail.com','2025-09-04 12:36:26','2025-09-04 12:37:11'),(13,'4','Adv java','2025-11-28','08:00 AM to 11:00 AM',5,'Web Development',13,'Advance Java','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 16:15:17','2025-11-27 16:15:17');
/*!40000 ALTER TABLE `st_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user`
--

DROP TABLE IF EXISTS `st_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_user` (
  `id` bigint NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `st_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `st_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user`
--

LOCK TABLES `st_user` WRITE;
/*!40000 ALTER TABLE `st_user` DISABLE KEYS */;
INSERT INTO `st_user` VALUES (1,'Shivangi','Soni','shivangi@gmail.com','pass123','1990-04-15 00:00:00','9876543210',1,'Male','admin','admin','2025-08-26 12:20:59','2025-08-26 12:20:59'),(2,'Vikram','Singh','vikram.singh','vikram123','1985-01-25 00:00:00','9900112233',1,'Male','admin','admin','2025-08-26 12:20:59','2025-08-26 12:20:59'),(3,'Shivam','Thakur','shivam@gmail.com','pass123','1976-12-20 00:00:00','9407126877',4,'Male','admin','admin','2025-09-01 14:53:46','2025-09-01 14:53:46'),(4,'Shashank','Soni','shashank@gmail.com','Pass@1234','0020-02-15 00:00:00','9876543299',2,'Male','root','root','2025-08-30 13:09:31','2025-08-30 13:11:35'),(5,'Shivangi','Soni','shivangi23@gmail.com','pass123','1999-12-20 00:00:00','9407126877',5,'Female','admin','admin','2025-08-31 05:02:31','2025-08-31 05:02:31'),(6,'Paridhi','Sonone','paridhi@gmail.com','Pass@123','0009-03-17 00:00:00','9876543299',3,'Female','shivangi@gmail.com','shivangi@gmail.com','2025-09-03 18:08:40','2025-09-03 18:09:16'),(7,'Shivi','Soni','Shivi@gmail.com','Pass@123','0007-03-18 00:00:00','8269650503',2,'Female','shivangi@gmail.com','shivangi@gmail.com','2025-09-04 17:53:00','2025-09-04 17:53:00'),(8,'Pranita','gayakwad','gayakwadpranita6@gmail.com','Pass@123','0009-03-17 00:00:00','9876543299',2,'Female','root','root','2025-09-09 15:38:01','2025-09-09 15:38:01'),(9,'Uday','Dabi','udaydabi7@gmail.com','Pass@123','0015-03-18 00:00:00','9165068147',2,'Male','root','root','2025-09-09 17:40:55','2025-09-09 17:42:37'),(10,'Akbar','Mansuri','mansuri.akbar000@gmail.com','Pass@12345','0016-03-17 00:00:00','9876543299',2,'Male','root','root','2025-09-09 17:43:36','2025-09-09 17:44:07'),(11,'Nidhi','Agrawal','nidhi.agrawal@gmail.com','Pass@123','0009-03-17 00:00:00','9876543211',3,'Female','shivangi@gmail.com','shivangi@gmail.com','2025-09-17 05:37:41','2025-09-17 05:37:41'),(12,'Aman','Verma','aman@gmail.com','Pass@123','0012-03-17 00:00:00','9876543299',3,'Male','shivangi@gmail.com','shivangi@gmail.com','2025-09-17 05:40:21','2025-09-17 05:40:21'),(13,'Krishna','Joshi','krishna@gmail.com','Krishna@123','0019-06-21 00:00:00','8269650503',2,'Female','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:32:28','2025-11-27 21:32:28'),(14,'Rohit','Sharma','rohit@gmail.com','Rohit@123','0025-08-02 00:00:00','8269650503',2,'Male','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:32:28','2025-11-27 21:34:52'),(15,'Sunny','Patel','sunny@gmail.com','Sunny@123','0017-11-29 00:00:00','8269650503',3,'Male','shivangi@gmail.com','shivangi@gmail.com','2025-11-27 21:37:04','2025-11-27 21:37:04');
/*!40000 ALTER TABLE `st_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-26 13:16:22
