-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: aiems_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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
-- Table structure for table `T01Div10`
--

DROP TABLE IF EXISTS `T01Div10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T01Div10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T01Div10`
--

LOCK TABLES `T01Div10` WRITE;
/*!40000 ALTER TABLE `T01Div10` DISABLE KEYS */;
INSERT INTO `T01Div10` VALUES (1,'mydivision1');
/*!40000 ALTER TABLE `T01Div10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T02LED10`
--

DROP TABLE IF EXISTS `T02LED10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T02LED10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sNameF` varchar(255) NOT NULL,
  `sNameL` varchar(255) NOT NULL,
  `eEmail` varchar(500) DEFAULT NULL,
  `sPhone` varchar(500) NOT NULL,
  `sCity` varchar(40) NOT NULL,
  `sCountry` varchar(40) NOT NULL,
  `sWebsite` varchar(60) NOT NULL,
  `tDesc` longtext NOT NULL,
  `oppAmt` longtext,
  `sGenBy` varchar(80) NOT NULL,
  `dCreatedOn` datetime(6) NOT NULL,
  `sEnqType` varchar(40) NOT NULL,
  `sIndstry` varchar(20) NOT NULL,
  `mChoice` varchar(20) NOT NULL,
  `bIsContact` tinyint(1) NOT NULL,
  `primaryPhone` varchar(1000) NOT NULL,
  `secondaryPhone` varchar(1000) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `last_rotation_time` datetime(6) DEFAULT NULL,
  `bHasDeal` tinyint(1) DEFAULT NULL,
  `bHasMultipleDeal` tinyint(1) DEFAULT NULL,
  `IdSlm` bigint DEFAULT NULL,
  `IdCnt` bigint DEFAULT NULL,
  `IdDiv` bigint DEFAULT NULL,
  `IdLan` bigint DEFAULT NULL,
  `lead_category_id` bigint DEFAULT NULL,
  `IdEvt` bigint DEFAULT NULL,
  `lead_status_id` bigint DEFAULT NULL,
  `IdPil` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `T02LED10_IdPil_6d708c71_fk_api_t02pil10_id` (`IdPil`),
  KEY `T02LED10_IdSlm_181dbfac_fk_api_t01slm10_id` (`IdSlm`),
  KEY `T02LED10_IdCnt_fde8d86c_fk_api_t02cnt10_id` (`IdCnt`),
  KEY `T02LED10_IdDiv_89ecba4d_fk_api_t01div10_id` (`IdDiv`),
  KEY `T02LED10_IdLan_2b1eb6bf_fk_api_t01lan10_id` (`IdLan`),
  KEY `T02LED10_lead_category_id_33f576e5_fk_api_leadcatmaster_id` (`lead_category_id`),
  KEY `T02LED10_IdEvt_b9b2f979_fk_api_t02evt10_id` (`IdEvt`),
  KEY `T02LED10_lead_status_id_3e95a210_fk_api_leadstatusmaster_id` (`lead_status_id`),
  CONSTRAINT `T02LED10_IdCnt_fde8d86c_fk_api_t02cnt10_id` FOREIGN KEY (`IdCnt`) REFERENCES `api_t02cnt10` (`id`),
  CONSTRAINT `T02LED10_IdDiv_89ecba4d_fk_api_t01div10_id` FOREIGN KEY (`IdDiv`) REFERENCES `T01Div10` (`id`),
  CONSTRAINT `T02LED10_IdEvt_b9b2f979_fk_api_t02evt10_id` FOREIGN KEY (`IdEvt`) REFERENCES `api_t02evt10` (`id`),
  CONSTRAINT `T02LED10_IdLan_2b1eb6bf_fk_api_t01lan10_id` FOREIGN KEY (`IdLan`) REFERENCES `api_t01lan10` (`id`),
  CONSTRAINT `T02LED10_IdPil_6d708c71_fk_api_t02pil10_id` FOREIGN KEY (`IdPil`) REFERENCES `api_t02pil10` (`id`),
  CONSTRAINT `T02LED10_IdSlm_181dbfac_fk_api_t01slm10_id` FOREIGN KEY (`IdSlm`) REFERENCES `api_t01slm10` (`id`),
  CONSTRAINT `T02LED10_lead_category_id_33f576e5_fk_api_leadcatmaster_id` FOREIGN KEY (`lead_category_id`) REFERENCES `api_leadcatmaster` (`id`),
  CONSTRAINT `T02LED10_lead_status_id_3e95a210_fk_api_leadstatusmaster_id` FOREIGN KEY (`lead_status_id`) REFERENCES `api_leadstatusmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T02LED10`
--

LOCK TABLES `T02LED10` WRITE;
/*!40000 ALTER TABLE `T02LED10` DISABLE KEYS */;
INSERT INTO `T02LED10` VALUES (1,'May Yi','Aung','ewew@gmail.com','544661322323','','','','','','','2024-04-30 15:32:07.291741','','','',0,'','','1991-04-30','2024-04-30 15:31:52.000000',1,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `T02LED10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T02LED10_contact_persons`
--

DROP TABLE IF EXISTS `T02LED10_contact_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T02LED10_contact_persons` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `t02led10_id` bigint NOT NULL,
  `contactperson_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `T02LED10_contact_persons_t02led10_id_contactperso_b5a3716d_uniq` (`t02led10_id`,`contactperson_id`),
  KEY `T02LED10_contact_per_contactperson_id_405ecdb5_fk_api_conta` (`contactperson_id`),
  CONSTRAINT `T02LED10_contact_per_contactperson_id_405ecdb5_fk_api_conta` FOREIGN KEY (`contactperson_id`) REFERENCES `api_contactperson` (`id`),
  CONSTRAINT `T02LED10_contact_persons_t02led10_id_fe339a10_fk_T02LED10_id` FOREIGN KEY (`t02led10_id`) REFERENCES `T02LED10` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T02LED10_contact_persons`
--

LOCK TABLES `T02LED10_contact_persons` WRITE;
/*!40000 ALTER TABLE `T02LED10_contact_persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `T02LED10_contact_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T02Opp10`
--

DROP TABLE IF EXISTS `T02Opp10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T02Opp10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T02Opp10`
--

LOCK TABLES `T02Opp10` WRITE;
/*!40000 ALTER TABLE `T02Opp10` DISABLE KEYS */;
INSERT INTO `T02Opp10` VALUES (1,'Opportunity1');
/*!40000 ALTER TABLE `T02Opp10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T02TSK10`
--

DROP TABLE IF EXISTS `T02TSK10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T02TSK10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sTaskName` varchar(255) DEFAULT NULL,
  `dTskDt` datetime(6) DEFAULT NULL,
  `sTskType` varchar(25) NOT NULL,
  `tTskNts` longtext,
  `sStatus` varchar(25) NOT NULL,
  `sPriorty` varchar(25) NOT NULL,
  `dduedt` datetime(6) DEFAULT NULL,
  `dtCreatedOn` datetime(6) NOT NULL,
  `sEvtLink` longtext,
  `sEvtId` longtext,
  `gmail_link` longtext,
  `IdUser` int DEFAULT NULL,
  `IdDiv` bigint DEFAULT NULL,
  `IdLed` bigint DEFAULT NULL,
  `IdOpp` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `T02TSK10_IdUser_b797a1e2_fk_auth_user_id` (`IdUser`),
  KEY `T02TSK10_IdDiv_f7b4b412_fk_api_t01div10_id` (`IdDiv`),
  KEY `T02TSK10_IdLed_4df37f96_fk_T02LED10_id` (`IdLed`),
  KEY `T02TSK10_IdOpp_ec43e2b7_fk_api_t02opp10_id` (`IdOpp`),
  CONSTRAINT `T02TSK10_IdDiv_f7b4b412_fk_api_t01div10_id` FOREIGN KEY (`IdDiv`) REFERENCES `T01Div10` (`id`),
  CONSTRAINT `T02TSK10_IdLed_4df37f96_fk_T02LED10_id` FOREIGN KEY (`IdLed`) REFERENCES `T02LED10` (`id`),
  CONSTRAINT `T02TSK10_IdOpp_ec43e2b7_fk_api_t02opp10_id` FOREIGN KEY (`IdOpp`) REFERENCES `T02Opp10` (`id`),
  CONSTRAINT `T02TSK10_IdUser_b797a1e2_fk_auth_user_id` FOREIGN KEY (`IdUser`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T02TSK10`
--

LOCK TABLES `T02TSK10` WRITE;
/*!40000 ALTER TABLE `T02TSK10` DISABLE KEYS */;
INSERT INTO `T02TSK10` VALUES (1,'Task1','2024-04-30 15:38:17.000000','telephone call','','In Progress','Medium',NULL,'2024-04-30 15:38:32.561805','','','',NULL,1,1,1);
/*!40000 ALTER TABLE `T02TSK10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_contactperson`
--

DROP TABLE IF EXISTS `api_contactperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_contactperson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_contactperson`
--

LOCK TABLES `api_contactperson` WRITE;
/*!40000 ALTER TABLE `api_contactperson` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_contactperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_historicalrecords`
--

DROP TABLE IF EXISTS `api_historicalrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_historicalrecords` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_historicalrecords`
--

LOCK TABLES `api_historicalrecords` WRITE;
/*!40000 ALTER TABLE `api_historicalrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_historicalrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_leadcatmaster`
--

DROP TABLE IF EXISTS `api_leadcatmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_leadcatmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_leadcatmaster`
--

LOCK TABLES `api_leadcatmaster` WRITE;
/*!40000 ALTER TABLE `api_leadcatmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_leadcatmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_leadstatusmaster`
--

DROP TABLE IF EXISTS `api_leadstatusmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_leadstatusmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_leadstatusmaster`
--

LOCK TABLES `api_leadstatusmaster` WRITE;
/*!40000 ALTER TABLE `api_leadstatusmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_leadstatusmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_t01lan10`
--

DROP TABLE IF EXISTS `api_t01lan10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_t01lan10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_t01lan10`
--

LOCK TABLES `api_t01lan10` WRITE;
/*!40000 ALTER TABLE `api_t01lan10` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_t01lan10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_t01slm10`
--

DROP TABLE IF EXISTS `api_t01slm10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_t01slm10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_t01slm10`
--

LOCK TABLES `api_t01slm10` WRITE;
/*!40000 ALTER TABLE `api_t01slm10` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_t01slm10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_t02cnt10`
--

DROP TABLE IF EXISTS `api_t02cnt10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_t02cnt10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_t02cnt10`
--

LOCK TABLES `api_t02cnt10` WRITE;
/*!40000 ALTER TABLE `api_t02cnt10` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_t02cnt10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_t02evt10`
--

DROP TABLE IF EXISTS `api_t02evt10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_t02evt10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_t02evt10`
--

LOCK TABLES `api_t02evt10` WRITE;
/*!40000 ALTER TABLE `api_t02evt10` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_t02evt10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_t02pil10`
--

DROP TABLE IF EXISTS `api_t02pil10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_t02pil10` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_t02pil10`
--

LOCK TABLES `api_t02pil10` WRITE;
/*!40000 ALTER TABLE `api_t02pil10` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_t02pil10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add contact person',7,'add_contactperson'),(26,'Can change contact person',7,'change_contactperson'),(27,'Can delete contact person',7,'delete_contactperson'),(28,'Can view contact person',7,'view_contactperson'),(29,'Can add historical records',8,'add_historicalrecords'),(30,'Can change historical records',8,'change_historicalrecords'),(31,'Can delete historical records',8,'delete_historicalrecords'),(32,'Can view historical records',8,'view_historicalrecords'),(33,'Can add lead cat master',9,'add_leadcatmaster'),(34,'Can change lead cat master',9,'change_leadcatmaster'),(35,'Can delete lead cat master',9,'delete_leadcatmaster'),(36,'Can view lead cat master',9,'view_leadcatmaster'),(37,'Can add lead status master',10,'add_leadstatusmaster'),(38,'Can change lead status master',10,'change_leadstatusmaster'),(39,'Can delete lead status master',10,'delete_leadstatusmaster'),(40,'Can view lead status master',10,'view_leadstatusmaster'),(41,'Can add t01 div10',11,'add_t01div10'),(42,'Can change t01 div10',11,'change_t01div10'),(43,'Can delete t01 div10',11,'delete_t01div10'),(44,'Can view t01 div10',11,'view_t01div10'),(45,'Can add t01 lan10',12,'add_t01lan10'),(46,'Can change t01 lan10',12,'change_t01lan10'),(47,'Can delete t01 lan10',12,'delete_t01lan10'),(48,'Can view t01 lan10',12,'view_t01lan10'),(49,'Can add t01 slm10',13,'add_t01slm10'),(50,'Can change t01 slm10',13,'change_t01slm10'),(51,'Can delete t01 slm10',13,'delete_t01slm10'),(52,'Can view t01 slm10',13,'view_t01slm10'),(53,'Can add t02 cnt10',14,'add_t02cnt10'),(54,'Can change t02 cnt10',14,'change_t02cnt10'),(55,'Can delete t02 cnt10',14,'delete_t02cnt10'),(56,'Can view t02 cnt10',14,'view_t02cnt10'),(57,'Can add t02 evt10',15,'add_t02evt10'),(58,'Can change t02 evt10',15,'change_t02evt10'),(59,'Can delete t02 evt10',15,'delete_t02evt10'),(60,'Can view t02 evt10',15,'view_t02evt10'),(61,'Can add b1.Lead',16,'add_t02led10'),(62,'Can change b1.Lead',16,'change_t02led10'),(63,'Can delete b1.Lead',16,'delete_t02led10'),(64,'Can view b1.Lead',16,'view_t02led10'),(65,'Can add t02 opp10',17,'add_t02opp10'),(66,'Can change t02 opp10',17,'change_t02opp10'),(67,'Can delete t02 opp10',17,'delete_t02opp10'),(68,'Can view t02 opp10',17,'view_t02opp10'),(69,'Can add t02 pil10',18,'add_t02pil10'),(70,'Can change t02 pil10',18,'change_t02pil10'),(71,'Can delete t02 pil10',18,'delete_t02pil10'),(72,'Can view t02 pil10',18,'view_t02pil10'),(73,'Can add b3.Task',19,'add_t02tsk10'),(74,'Can change b3.Task',19,'change_t02tsk10'),(75,'Can delete b3.Task',19,'delete_t02tsk10'),(76,'Can view b3.Task',19,'view_t02tsk10');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$n7h8eR6VLKSgYQaVcV8SMn$ARBKw6xLMNA9aJ752l4PwLdhm5WRIV5jybyrkusi5rA=','2024-04-30 15:19:28.631702',1,'admin','','','admin@gmail.com',1,1,'2024-04-30 15:19:02.599842');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-30 15:32:07.296346','1','T02Led10 object (1)',1,'[{\"added\": {}}]',16,1),(2,'2024-04-30 15:32:19.595338','1','T02Led10 object (1)',2,'[]',16,1),(3,'2024-04-30 15:38:32.563716','1','telephone call',1,'[{\"added\": {}}]',19,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'api','contactperson'),(8,'api','historicalrecords'),(9,'api','leadcatmaster'),(10,'api','leadstatusmaster'),(11,'api','t01div10'),(12,'api','t01lan10'),(13,'api','t01slm10'),(14,'api','t02cnt10'),(15,'api','t02evt10'),(16,'api','t02led10'),(17,'api','t02opp10'),(18,'api','t02pil10'),(19,'api','t02tsk10'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-30 15:17:45.061026'),(2,'auth','0001_initial','2024-04-30 15:17:45.438753'),(3,'admin','0001_initial','2024-04-30 15:17:45.527326'),(4,'admin','0002_logentry_remove_auto_add','2024-04-30 15:17:45.534574'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-30 15:17:45.541178'),(6,'contenttypes','0002_remove_content_type_name','2024-04-30 15:17:45.583376'),(7,'auth','0002_alter_permission_name_max_length','2024-04-30 15:17:45.613553'),(8,'auth','0003_alter_user_email_max_length','2024-04-30 15:17:45.630469'),(9,'auth','0004_alter_user_username_opts','2024-04-30 15:17:45.639724'),(10,'auth','0005_alter_user_last_login_null','2024-04-30 15:17:45.668085'),(11,'auth','0006_require_contenttypes_0002','2024-04-30 15:17:45.679036'),(12,'auth','0007_alter_validators_add_error_messages','2024-04-30 15:17:45.686487'),(13,'auth','0008_alter_user_username_max_length','2024-04-30 15:17:45.725573'),(14,'auth','0009_alter_user_last_name_max_length','2024-04-30 15:17:45.756728'),(15,'auth','0010_alter_group_name_max_length','2024-04-30 15:17:45.773685'),(16,'auth','0011_update_proxy_permissions','2024-04-30 15:17:45.782702'),(17,'auth','0012_alter_user_first_name_max_length','2024-04-30 15:17:45.814167'),(18,'api','0001_initial','2024-04-30 15:17:46.559278'),(19,'api','0002_delete_blogpost','2024-04-30 15:17:46.566284'),(20,'sessions','0001_initial','2024-04-30 15:17:46.595408'),(21,'api','0003_alter_t01div10_options_alter_t01div10_table','2024-04-30 15:29:49.925356'),(22,'api','0004_alter_t02opp10_options_alter_t02opp10_table','2024-04-30 15:37:15.351200');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('v29rwapvjkoauya2c9xvkurexavt18t3','.eJxVjDsOwjAQBe_iGln-ZP2hpM8ZLK_XxgHkSHFSIe5OIqWA9s3Me7MQt7WGreclTMSuTLLL74YxPXM7AD1iu888zW1dJuSHwk_a-ThTft1O9--gxl73OgOCNEURFeWTFnpw0gu00iqKEYwoGR3oTLoIs3tgjSAYUHpVBGjHPl_avDc_:1s1pGS:4DHCSL0_d6zcI7h1Y87m5mdzAwaFDEEADwMyz_qcuYQ','2024-05-14 15:19:28.634160');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 20:16:45
