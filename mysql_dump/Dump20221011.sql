CREATE DATABASE  IF NOT EXISTS `diplom_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diplom_db`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: diplom_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'engineer');
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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add auth group',7,'add_authgroup'),(26,'Can change auth group',7,'change_authgroup'),(27,'Can delete auth group',7,'delete_authgroup'),(28,'Can view auth group',7,'view_authgroup'),(29,'Can add auth group permissions',8,'add_authgrouppermissions'),(30,'Can change auth group permissions',8,'change_authgrouppermissions'),(31,'Can delete auth group permissions',8,'delete_authgrouppermissions'),(32,'Can view auth group permissions',8,'view_authgrouppermissions'),(33,'Can add auth permission',9,'add_authpermission'),(34,'Can change auth permission',9,'change_authpermission'),(35,'Can delete auth permission',9,'delete_authpermission'),(36,'Can view auth permission',9,'view_authpermission'),(37,'Can add auth user',10,'add_authuser'),(38,'Can change auth user',10,'change_authuser'),(39,'Can delete auth user',10,'delete_authuser'),(40,'Can view auth user',10,'view_authuser'),(41,'Can add auth user groups',11,'add_authusergroups'),(42,'Can change auth user groups',11,'change_authusergroups'),(43,'Can delete auth user groups',11,'delete_authusergroups'),(44,'Can view auth user groups',11,'view_authusergroups'),(45,'Can add auth user user permissions',12,'add_authuseruserpermissions'),(46,'Can change auth user user permissions',12,'change_authuseruserpermissions'),(47,'Can delete auth user user permissions',12,'delete_authuseruserpermissions'),(48,'Can view auth user user permissions',12,'view_authuseruserpermissions'),(49,'Can add cabinets',13,'add_cabinets'),(50,'Can change cabinets',13,'change_cabinets'),(51,'Can delete cabinets',13,'delete_cabinets'),(52,'Can view cabinets',13,'view_cabinets'),(53,'Can add construction operations',14,'add_constructionoperations'),(54,'Can change construction operations',14,'change_constructionoperations'),(55,'Can delete construction operations',14,'delete_constructionoperations'),(56,'Can view construction operations',14,'view_constructionoperations'),(57,'Can add construction site',15,'add_constructionsite'),(58,'Can change construction site',15,'change_constructionsite'),(59,'Can delete construction site',15,'delete_constructionsite'),(60,'Can view construction site',15,'view_constructionsite'),(61,'Can add construction type',16,'add_constructiontype'),(62,'Can change construction type',16,'change_constructiontype'),(63,'Can delete construction type',16,'delete_constructiontype'),(64,'Can view construction type',16,'view_constructiontype'),(65,'Can add departments',17,'add_departments'),(66,'Can change departments',17,'change_departments'),(67,'Can delete departments',17,'delete_departments'),(68,'Can view departments',17,'view_departments'),(69,'Can add django admin log',18,'add_djangoadminlog'),(70,'Can change django admin log',18,'change_djangoadminlog'),(71,'Can delete django admin log',18,'delete_djangoadminlog'),(72,'Can view django admin log',18,'view_djangoadminlog'),(73,'Can add django content type',19,'add_djangocontenttype'),(74,'Can change django content type',19,'change_djangocontenttype'),(75,'Can delete django content type',19,'delete_djangocontenttype'),(76,'Can view django content type',19,'view_djangocontenttype'),(77,'Can add django migrations',20,'add_djangomigrations'),(78,'Can change django migrations',20,'change_djangomigrations'),(79,'Can delete django migrations',20,'delete_djangomigrations'),(80,'Can view django migrations',20,'view_djangomigrations'),(81,'Can add django session',21,'add_djangosession'),(82,'Can change django session',21,'change_djangosession'),(83,'Can delete django session',21,'delete_djangosession'),(84,'Can view django session',21,'view_djangosession'),(85,'Can add employee positions',22,'add_employeepositions'),(86,'Can change employee positions',22,'change_employeepositions'),(87,'Can delete employee positions',22,'delete_employeepositions'),(88,'Can view employee positions',22,'view_employeepositions'),(89,'Can add employees',23,'add_employees'),(90,'Can change employees',23,'change_employees'),(91,'Can delete employees',23,'delete_employees'),(92,'Can view employees',23,'view_employees'),(93,'Can add lead employee',24,'add_leademployee'),(94,'Can change lead employee',24,'change_leademployee'),(95,'Can delete lead employee',24,'delete_leademployee'),(96,'Can view lead employee',24,'view_leademployee'),(97,'Can add django evolution',25,'add_djangoevolution'),(98,'Can change django evolution',25,'change_djangoevolution'),(99,'Can delete django evolution',25,'delete_djangoevolution'),(100,'Can view django evolution',25,'view_djangoevolution'),(101,'Can add django project version',26,'add_djangoprojectversion'),(102,'Can change django project version',26,'change_djangoprojectversion'),(103,'Can delete django project version',26,'delete_djangoprojectversion'),(104,'Can view django project version',26,'view_djangoprojectversion'),(105,'Can add titles',27,'add_titles'),(106,'Can change titles',27,'change_titles'),(107,'Can delete titles',27,'delete_titles'),(108,'Can view titles',27,'view_titles'),(109,'Can add employee view',28,'add_employeeview'),(110,'Can change employee view',28,'change_employeeview'),(111,'Can delete employee view',28,'delete_employeeview'),(112,'Can view employee view',28,'view_employeeview'),(113,'Can add viewshka',29,'add_viewshka'),(114,'Can change viewshka',29,'change_viewshka'),(115,'Can delete viewshka',29,'delete_viewshka'),(116,'Can view viewshka',29,'view_viewshka'),(117,'Can add employees con',30,'add_employeescon'),(118,'Can change employees con',30,'change_employeescon'),(119,'Can delete employees con',30,'delete_employeescon'),(120,'Can view employees con',30,'view_employeescon'),(121,'Can add auth group',31,'add_authgroup'),(122,'Can change auth group',31,'change_authgroup'),(123,'Can delete auth group',31,'delete_authgroup'),(124,'Can view auth group',31,'view_authgroup'),(125,'Can add auth group permissions',32,'add_authgrouppermissions'),(126,'Can change auth group permissions',32,'change_authgrouppermissions'),(127,'Can delete auth group permissions',32,'delete_authgrouppermissions'),(128,'Can view auth group permissions',32,'view_authgrouppermissions'),(129,'Can add auth permission',33,'add_authpermission'),(130,'Can change auth permission',33,'change_authpermission'),(131,'Can delete auth permission',33,'delete_authpermission'),(132,'Can view auth permission',33,'view_authpermission'),(133,'Can add auth user',34,'add_authuser'),(134,'Can change auth user',34,'change_authuser'),(135,'Can delete auth user',34,'delete_authuser'),(136,'Can view auth user',34,'view_authuser'),(137,'Can add auth user groups',35,'add_authusergroups'),(138,'Can change auth user groups',35,'change_authusergroups'),(139,'Can delete auth user groups',35,'delete_authusergroups'),(140,'Can view auth user groups',35,'view_authusergroups'),(141,'Can add auth user user permissions',36,'add_authuseruserpermissions'),(142,'Can change auth user user permissions',36,'change_authuseruserpermissions'),(143,'Can delete auth user user permissions',36,'delete_authuseruserpermissions'),(144,'Can view auth user user permissions',36,'view_authuseruserpermissions'),(145,'Can add cabinets',37,'add_cabinets'),(146,'Can change cabinets',37,'change_cabinets'),(147,'Can delete cabinets',37,'delete_cabinets'),(148,'Can view cabinets',37,'view_cabinets'),(149,'Can add construction operations',38,'add_constructionoperations'),(150,'Can change construction operations',38,'change_constructionoperations'),(151,'Can delete construction operations',38,'delete_constructionoperations'),(152,'Can view construction operations',38,'view_constructionoperations'),(153,'Can add construction site',39,'add_constructionsite'),(154,'Can change construction site',39,'change_constructionsite'),(155,'Can delete construction site',39,'delete_constructionsite'),(156,'Can view construction site',39,'view_constructionsite'),(157,'Can add construction type',40,'add_constructiontype'),(158,'Can change construction type',40,'change_constructiontype'),(159,'Can delete construction type',40,'delete_constructiontype'),(160,'Can view construction type',40,'view_constructiontype'),(161,'Can add departments',41,'add_departments'),(162,'Can change departments',41,'change_departments'),(163,'Can delete departments',41,'delete_departments'),(164,'Can view departments',41,'view_departments'),(165,'Can add django admin log',42,'add_djangoadminlog'),(166,'Can change django admin log',42,'change_djangoadminlog'),(167,'Can delete django admin log',42,'delete_djangoadminlog'),(168,'Can view django admin log',42,'view_djangoadminlog'),(169,'Can add django content type',43,'add_djangocontenttype'),(170,'Can change django content type',43,'change_djangocontenttype'),(171,'Can delete django content type',43,'delete_djangocontenttype'),(172,'Can view django content type',43,'view_djangocontenttype'),(173,'Can add django evolution',44,'add_djangoevolution'),(174,'Can change django evolution',44,'change_djangoevolution'),(175,'Can delete django evolution',44,'delete_djangoevolution'),(176,'Can view django evolution',44,'view_djangoevolution'),(177,'Can add django migrations',45,'add_djangomigrations'),(178,'Can change django migrations',45,'change_djangomigrations'),(179,'Can delete django migrations',45,'delete_djangomigrations'),(180,'Can view django migrations',45,'view_djangomigrations'),(181,'Can add django project version',46,'add_djangoprojectversion'),(182,'Can change django project version',46,'change_djangoprojectversion'),(183,'Can delete django project version',46,'delete_djangoprojectversion'),(184,'Can view django project version',46,'view_djangoprojectversion'),(185,'Can add django session',47,'add_djangosession'),(186,'Can change django session',47,'change_djangosession'),(187,'Can delete django session',47,'delete_djangosession'),(188,'Can view django session',47,'view_djangosession'),(189,'Can add employee positions',48,'add_employeepositions'),(190,'Can change employee positions',48,'change_employeepositions'),(191,'Can delete employee positions',48,'delete_employeepositions'),(192,'Can view employee positions',48,'view_employeepositions'),(193,'Can add employees',49,'add_employees'),(194,'Can change employees',49,'change_employees'),(195,'Can delete employees',49,'delete_employees'),(196,'Can view employees',49,'view_employees'),(197,'Can add employees con',50,'add_employeescon'),(198,'Can change employees con',50,'change_employeescon'),(199,'Can delete employees con',50,'delete_employeescon'),(200,'Can view employees con',50,'view_employeescon'),(201,'Can add lead employee',51,'add_leademployee'),(202,'Can change lead employee',51,'change_leademployee'),(203,'Can delete lead employee',51,'delete_leademployee'),(204,'Can view lead employee',51,'view_leademployee'),(205,'Can add titles',52,'add_titles'),(206,'Can change titles',52,'change_titles'),(207,'Can delete titles',52,'delete_titles'),(208,'Can view titles',52,'view_titles'),(209,'Can add tasks',53,'add_tasks'),(210,'Can change tasks',53,'change_tasks'),(211,'Can delete tasks',53,'delete_tasks'),(212,'Can view tasks',53,'view_tasks'),(213,'Can add group',54,'add_group'),(214,'Can change group',54,'change_group'),(215,'Can delete group',54,'delete_group'),(216,'Can view group',54,'view_group'),(217,'Can add push information',55,'add_pushinformation'),(218,'Can change push information',55,'change_pushinformation'),(219,'Can delete push information',55,'delete_pushinformation'),(220,'Can view push information',55,'view_pushinformation'),(221,'Can add subscription info',56,'add_subscriptioninfo'),(222,'Can change subscription info',56,'change_subscriptioninfo'),(223,'Can delete subscription info',56,'delete_subscriptioninfo'),(224,'Can view subscription info',56,'view_subscriptioninfo'),(225,'Can add webpush group',57,'add_webpushgroup'),(226,'Can change webpush group',57,'change_webpushgroup'),(227,'Can delete webpush group',57,'delete_webpushgroup'),(228,'Can view webpush group',57,'view_webpushgroup'),(229,'Can add webpush pushinformation',58,'add_webpushpushinformation'),(230,'Can change webpush pushinformation',58,'change_webpushpushinformation'),(231,'Can delete webpush pushinformation',58,'delete_webpushpushinformation'),(232,'Can view webpush pushinformation',58,'view_webpushpushinformation'),(233,'Can add webpush subscriptioninfo',59,'add_webpushsubscriptioninfo'),(234,'Can change webpush subscriptioninfo',59,'change_webpushsubscriptioninfo'),(235,'Can delete webpush subscriptioninfo',59,'delete_webpushsubscriptioninfo'),(236,'Can view webpush subscriptioninfo',59,'view_webpushsubscriptioninfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$hjQ8f9qidlMmNjEIJLq8s8$9M/nfQB6RXuw+kHr+BOQ0uIzUtKnC8J5xFrfoBSd52E=','2022-09-26 18:02:29.652497',1,'mralkofighter','','','alextutya@gmail.com',1,1,'2022-08-31 16:03:17.916557'),(2,'pbkdf2_sha256$390000$KsqDJdkXkmNBwwAfO8wdhX$3+XU1dm9lVUGtIGeFx+yI5YxcCMQ7KArcEWlSwrnb38=','2022-09-24 19:02:15.616157',0,'bob_bobbson','','','',0,1,'2022-09-23 19:33:20.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
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
-- Table structure for table `cabinets`
--

DROP TABLE IF EXISTS `cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinets` (
  `cabin_number` int NOT NULL,
  `lead_employee` tinyint DEFAULT NULL,
  `cabin_task` int DEFAULT NULL,
  PRIMARY KEY (`cabin_number`),
  UNIQUE KEY `cabin_number_UNIQUE` (`cabin_number`),
  KEY `lead_cabinets_foreign_index_idx` (`lead_employee`),
  KEY `cabin_task_foreign_key_idx` (`cabin_task`),
  CONSTRAINT `cabin_task_foreign_key` FOREIGN KEY (`cabin_task`) REFERENCES `construction_site` (`construction_site_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,2,2),(2,1,1),(3,3,3);
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `construction_operations`
--

DROP TABLE IF EXISTS `construction_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `construction_operations` (
  `construction_operation_number` int NOT NULL AUTO_INCREMENT,
  `construction_operation_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`construction_operation_number`),
  UNIQUE KEY `task_name` (`construction_operation_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construction_operations`
--

LOCK TABLES `construction_operations` WRITE;
/*!40000 ALTER TABLE `construction_operations` DISABLE KEYS */;
INSERT INTO `construction_operations` VALUES (4,'Выемка'),(3,'Насыпь'),(5,'Планировка верха земполотна'),(2,'Планировка полосы отвода'),(1,'Расчистка полосы отвода'),(9,'Укладка верхнего слоя основания'),(11,'Укладка верхнего слоя покрытия'),(8,'Укладка нижнего слоя основания из асфальтобетона'),(10,'Укладка нижнего слоя покрытия'),(12,'Укладка щебеночно-мастичного асфальтобетона'),(7,'Устройство основания из щебня'),(6,'Устройство подстилающего слоя из песка'),(13,'Фрезерование покрытия');
/*!40000 ALTER TABLE `construction_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `construction_site`
--

DROP TABLE IF EXISTS `construction_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `construction_site` (
  `construction_site_number` int NOT NULL AUTO_INCREMENT,
  `construction_site_name` varchar(255) DEFAULT NULL,
  `construction_deadline` date DEFAULT NULL,
  PRIMARY KEY (`construction_site_number`),
  KEY `construction_site_deadline` (`construction_deadline`),
  KEY `constr_site_name` (`construction_site_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construction_site`
--

LOCK TABLES `construction_site` WRITE;
/*!40000 ALTER TABLE `construction_site` DISABLE KEYS */;
INSERT INTO `construction_site` VALUES (1,'Капитальный ремонт автомобильной дороги Чебоксары - Воркута.','2023-12-12'),(2,'Текущий ремонт автомобильной дороги Пермь - Красноярск.','2022-11-18'),(3,'Строительство скоростной автомобильной дороги Сыктывкар - Новобурейский','2024-03-11');
/*!40000 ALTER TABLE `construction_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `construction_type`
--

DROP TABLE IF EXISTS `construction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `construction_type` (
  `construction_type_id` int NOT NULL AUTO_INCREMENT,
  `construction_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`construction_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construction_type`
--

LOCK TABLES `construction_type` WRITE;
/*!40000 ALTER TABLE `construction_type` DISABLE KEYS */;
INSERT INTO `construction_type` VALUES (1,'New construction'),(2,'Overhaul'),(3,'Maintenance');
/*!40000 ALTER TABLE `construction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `key` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Engineering'),(2,'Administrating'),(3,'Management');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-09-23 19:32:24.981920','1','engineer',1,'[{\"added\": {}}]',3,1),(2,'2022-09-23 19:32:32.783342','1','engineer',2,'[]',3,1),(3,'2022-09-23 19:33:21.080751','2','bob_bobbson',1,'[{\"added\": {}}]',4,1),(4,'2022-09-23 19:33:44.189197','2','bob_bobbson',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(31,'diplom','authgroup'),(32,'diplom','authgrouppermissions'),(33,'diplom','authpermission'),(34,'diplom','authuser'),(35,'diplom','authusergroups'),(36,'diplom','authuseruserpermissions'),(37,'diplom','cabinets'),(38,'diplom','constructionoperations'),(39,'diplom','constructionsite'),(40,'diplom','constructiontype'),(41,'diplom','departments'),(42,'diplom','djangoadminlog'),(43,'diplom','djangocontenttype'),(44,'diplom','djangoevolution'),(45,'diplom','djangomigrations'),(46,'diplom','djangoprojectversion'),(47,'diplom','djangosession'),(48,'diplom','employeepositions'),(49,'diplom','employees'),(50,'diplom','employeescon'),(51,'diplom','leademployee'),(53,'diplom','tasks'),(52,'diplom','titles'),(57,'diplom','webpushgroup'),(58,'diplom','webpushpushinformation'),(59,'diplom','webpushsubscriptioninfo'),(7,'employees','authgroup'),(8,'employees','authgrouppermissions'),(9,'employees','authpermission'),(10,'employees','authuser'),(11,'employees','authusergroups'),(12,'employees','authuseruserpermissions'),(13,'employees','cabinets'),(14,'employees','constructionoperations'),(15,'employees','constructionsite'),(16,'employees','constructiontype'),(17,'employees','departments'),(18,'employees','djangoadminlog'),(19,'employees','djangocontenttype'),(25,'employees','djangoevolution'),(20,'employees','djangomigrations'),(26,'employees','djangoprojectversion'),(21,'employees','djangosession'),(22,'employees','employeepositions'),(23,'employees','employees'),(30,'employees','employeescon'),(28,'employees','employeeview'),(24,'employees','leademployee'),(27,'employees','titles'),(29,'employees','viewshka'),(6,'sessions','session'),(54,'webpush','group'),(55,'webpush','pushinformation'),(56,'webpush','subscriptioninfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_evolution`
--

DROP TABLE IF EXISTS `django_evolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_evolution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version_id` int NOT NULL,
  `app_label` varchar(200) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_evolution_version_id_e55942c9_fk_django_pr` (`version_id`),
  CONSTRAINT `django_evolution_version_id_e55942c9_fk_django_pr` FOREIGN KEY (`version_id`) REFERENCES `django_project_version` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_evolution`
--

LOCK TABLES `django_evolution` WRITE;
/*!40000 ALTER TABLE `django_evolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_evolution` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-08-28 10:27:51.390422'),(2,'auth','0001_initial','2022-08-28 10:27:51.951776'),(3,'admin','0001_initial','2022-08-28 10:27:52.150169'),(4,'admin','0002_logentry_remove_auto_add','2022-08-28 10:27:52.169271'),(5,'admin','0003_logentry_add_action_flag_choices','2022-08-28 10:27:52.185647'),(6,'contenttypes','0002_remove_content_type_name','2022-08-28 10:27:52.290531'),(7,'auth','0002_alter_permission_name_max_length','2022-08-28 10:27:52.346607'),(8,'auth','0003_alter_user_email_max_length','2022-08-28 10:27:52.370959'),(9,'auth','0004_alter_user_username_opts','2022-08-28 10:27:52.378136'),(10,'auth','0005_alter_user_last_login_null','2022-08-28 10:27:52.437917'),(11,'auth','0006_require_contenttypes_0002','2022-08-28 10:27:52.444429'),(12,'auth','0007_alter_validators_add_error_messages','2022-08-28 10:27:52.459461'),(13,'auth','0008_alter_user_username_max_length','2022-08-28 10:27:52.526028'),(14,'auth','0009_alter_user_last_name_max_length','2022-08-28 10:27:52.594868'),(15,'auth','0010_alter_group_name_max_length','2022-08-28 10:27:52.645349'),(16,'auth','0011_update_proxy_permissions','2022-08-28 10:27:52.665588'),(17,'auth','0012_alter_user_first_name_max_length','2022-08-28 10:27:52.761068'),(18,'sessions','0001_initial','2022-08-28 10:27:52.820567'),(19,'employees','0001_initial','2022-08-31 14:43:37.657701'),(20,'employees','0002_djangoevolution_djangoprojectversion_titles','2022-09-01 20:44:55.368593'),(21,'employees','0003_employeeview','2022-09-01 21:59:12.807423'),(22,'employees','0004_viewshka_delete_employeeview','2022-09-01 22:08:59.385955'),(23,'employees','0002_alter_employeescon_options_and_more','2022-09-09 10:50:49.653628'),(24,'diplom','0001_initial','2022-09-13 19:16:13.454130'),(25,'webpush','0001_initial','2022-09-17 12:24:15.940543'),(26,'webpush','0002_auto_20190603_0005','2022-09-17 12:24:15.954507'),(27,'webpush','0003_alter_group_id_alter_pushinformation_id_and_more','2022-09-19 11:20:58.792137');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_project_version`
--

DROP TABLE IF EXISTS `django_project_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_project_version` (
  `id` int NOT NULL AUTO_INCREMENT,
  `signature` longtext NOT NULL,
  `when` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_project_version`
--

LOCK TABLES `django_project_version` WRITE;
/*!40000 ALTER TABLE `django_project_version` DISABLE KEYS */;
INSERT INTO `django_project_version` VALUES (1,'json!{\"__version__\": 2, \"apps\": {\"django_evolution\": {\"legacy_app_label\": \"django_evolution\", \"upgrade_method\": \"evolutions\", \"models\": {\"Version\": {\"meta\": {\"constraints\": [], \"db_table\": \"django_project_version\", \"db_tablespace\": \"\", \"index_together\": [], \"indexes\": [], \"pk_column\": \"id\", \"unique_together\": [], \"__unique_together_applied\": true}, \"fields\": {\"id\": {\"type\": \"django.db.models.AutoField\", \"attrs\": {\"primary_key\": true}}, \"signature\": {\"type\": \"django_evolution.models.SignatureField\"}, \"when\": {\"type\": \"django.db.models.DateTimeField\"}}}, \"Evolution\": {\"meta\": {\"constraints\": [], \"db_table\": \"django_evolution\", \"db_tablespace\": \"\", \"index_together\": [], \"indexes\": [], \"pk_column\": \"id\", \"unique_together\": [], \"__unique_together_applied\": true}, \"fields\": {\"id\": {\"type\": \"django.db.models.AutoField\", \"attrs\": {\"primary_key\": true}}, \"version\": {\"type\": \"django.db.models.ForeignKey\", \"related_model\": \"django_evolution.Version\"}, \"app_label\": {\"type\": \"django.db.models.CharField\", \"attrs\": {\"max_length\": 200}}, \"label\": {\"type\": \"django.db.models.CharField\", \"attrs\": {\"max_length\": 100}}}}}}}}','2022-09-01 13:09:29.210224');
/*!40000 ALTER TABLE `django_project_version` ENABLE KEYS */;
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
INSERT INTO `django_session` VALUES ('2444z4lon7sb8ufequc0pvbweomyf1h3','.eJxVjDsOwjAQBe_iGln-fyjpOYO13rVxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MwkO_1uGfBR-g7oDv02c5z7ukyZ7wo_6ODXmcrzcrh_Bw1G-9a6WhENRDJKZo_kXdCW0IigYlBkvXQRVCGQpAQ4Qaht8U5hlbpW4dn7A8o5N3A:1oZbhV:Sc6wyLGA-GLyWOCeXTtcwZOLeoQIRO9-Tr3WF1R7J04','2022-10-01 17:33:57.322092'),('6o4ys3hwcul2k2tbm56o3wxuhlpqfnp3','.eJxVjDsOwjAQBe_iGln-fyjpOYO13rVxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MwkO_1uGfBR-g7oDv02c5z7ukyZ7wo_6ODXmcrzcrh_Bw1G-9a6WhENRDJKZo_kXdCW0IigYlBkvXQRVCGQpAQ4Qaht8U5hlbpW4dn7A8o5N3A:1ocsR3:nbTrnqPrZ-VLEBkS3spPaHLXdNXvATHi2CWAZaDOk_4','2022-10-10 18:02:29.658992'),('bmczh4a7mqcq18tnjd1bosespm08nj7s','.eJxVjDsOwjAQBe_iGln-fyjpOYO13rVxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MwkO_1uGfBR-g7oDv02c5z7ukyZ7wo_6ODXmcrzcrh_Bw1G-9a6WhENRDJKZo_kXdCW0IigYlBkvXQRVCGQpAQ4Qaht8U5hlbpW4dn7A8o5N3A:1ocjiQ:lIJvTOW1JoSN6Be-RkKDS4QN1Lcdtm3APMkDD1qYD2o','2022-10-10 08:43:50.803396'),('kdzh6g9j6k5bs2bo1lmtovaedqcgqy9n','.eJxVjDsOwjAQBe_iGln-fyjpOYO13rVxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MwkO_1uGfBR-g7oDv02c5z7ukyZ7wo_6ODXmcrzcrh_Bw1G-9a6WhENRDJKZo_kXdCW0IigYlBkvXQRVCGQpAQ4Qaht8U5hlbpW4dn7A8o5N3A:1oTQBz:pyVjMMMhwU5vJqwZdF1dw_iWNS_v1MfWNjb6qWtEYv8','2022-09-14 16:03:51.332595'),('rvkt7m3jw2xn52xhsxmmh21763m74jf6','.eJxVjDsOwjAQBe_iGln-fyjpOYO13rVxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MwkO_1uGfBR-g7oDv02c5z7ukyZ7wo_6ODXmcrzcrh_Bw1G-9a6WhENRDJKZo_kXdCW0IigYlBkvXQRVCGQpAQ4Qaht8U5hlbpW4dn7A8o5N3A:1oZbvP:FXl2JGsDmRzYfswVfdyMkgdlC0XO52XiJdArYGnBIlE','2022-10-01 17:48:19.516554');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_positions`
--

DROP TABLE IF EXISTS `employee_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_positions` (
  `employee_posotion_id` int NOT NULL AUTO_INCREMENT,
  `employee_position_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employee_posotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_positions`
--

LOCK TABLES `employee_positions` WRITE;
/*!40000 ALTER TABLE `employee_positions` DISABLE KEYS */;
INSERT INTO `employee_positions` VALUES (1,'Engineer'),(2,'Worker'),(3,'Manager'),(4,'Owner');
/*!40000 ALTER TABLE `employee_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `t_number` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) DEFAULT NULL,
  `patronymic` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `cabin_number` int DEFAULT NULL,
  `work_since` date DEFAULT NULL,
  `lead_employee` tinyint DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `department` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `emp_task` int DEFAULT NULL,
  `emp_title` int DEFAULT NULL,
  PRIMARY KEY (`t_number`),
  KEY `work_since_index` (`work_since`) /*!80000 INVISIBLE */,
  KEY `cabint_number_index` (`cabin_number`),
  KEY `depatrment_employee_foreign_key_idx` (`department`),
  KEY `position_employee_foregn_key_idx` (`position`),
  KEY `lead_employee_foreign_index_idx` (`lead_employee`),
  KEY `lead_emp_foreign_key_idx` (`lead_employee`),
  KEY `title_employee_foreign_index_idx` (`emp_title`),
  KEY `task_employee_foreign_key_idx` (`emp_task`),
  CONSTRAINT `cabin_number_employee_foreign_index` FOREIGN KEY (`cabin_number`) REFERENCES `cabinets` (`cabin_number`),
  CONSTRAINT `depatrment_employee_foreign_key` FOREIGN KEY (`department`) REFERENCES `departments` (`key`),
  CONSTRAINT `employees_lead_emp_foreign_index` FOREIGN KEY (`lead_employee`) REFERENCES `lead_employee` (`lead_employee_id`),
  CONSTRAINT `position_employee_foregn_key` FOREIGN KEY (`position`) REFERENCES `employee_positions` (`employee_posotion_id`),
  CONSTRAINT `task_employee_foreign_key` FOREIGN KEY (`emp_task`) REFERENCES `construction_operations` (`construction_operation_number`),
  CONSTRAINT `title_employee_foreign_index` FOREIGN KEY (`emp_title`) REFERENCES `titles` (`title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Bob','Williamovich','Bobbson',2,'2005-05-12',1,5,1,1,5,1),(2,'John','Semyonovich','Doe',1,'2012-02-19',0,5,1,1,10,4),(3,'Jane','Petrovna','Doe',3,'1955-03-08',1,5,1,1,6,2),(4,'Ivan','Vasilevich','The Terrible',2,'1530-08-25',0,5,3,3,8,1),(5,'Platon','Petrovich','Hoho',1,'1999-09-09',1,5,1,1,2,5),(6,'Vasily','Arkadich','Popo4kin',1,'8070-09-13',1,5,2,1,2,1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_con`
--

DROP TABLE IF EXISTS `employees_con`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_con` (
  `t_number` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `patronymic` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `cabin_number` int DEFAULT NULL,
  `construction_operation_name` varchar(255) DEFAULT NULL,
  `work_since` date DEFAULT NULL,
  `lead_employee_value` varchar(45) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `employee_position_name` varchar(45) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`t_number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_con`
--

LOCK TABLES `employees_con` WRITE;
/*!40000 ALTER TABLE `employees_con` DISABLE KEYS */;
INSERT INTO `employees_con` VALUES (1,'Mr.','Bob','Williamovich','Bobbson',2,'Планировка верха земполотна','2005-05-12','No',5,'Engineer','Engineering','bob_bobbson'),(2,'Dr.','John','Semyonovich','Doe',1,'Укладка нижнего слоя покрытия','2012-02-19','Yes',5,'Engineer','Engineering','john_doe'),(3,'Mrs.','Jane','Petrovna','Doe',3,'Устройство подстилающего слоя из песка','1955-03-08','No',5,'Engineer','Engineering','jane_doe'),(4,'Mr.','Ivan','Vasilevich','The Terrible',2,'Укладка нижнего слоя основания из асфальтобетона','1530-08-25','Yes',5,'Manager','Management','ivan_the_terrible'),(5,'Capt.','Platon','Petrovich','Hoho',1,'Планировка полосы отвода','1999-09-09','No',5,'Engineer','Engineering','platon_hoho'),(6,'Capt.','Erema','Antonovich','Pryanikov',1,'Укладка нижнего слоя покрытия','2011-01-01','No',5,'Engineer','Engineering','erema_pryanikov');
/*!40000 ALTER TABLE `employees_con` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_employee`
--

DROP TABLE IF EXISTS `lead_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_employee` (
  `lead_employee_id` tinyint NOT NULL,
  `lead_employee_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lead_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_employee`
--

LOCK TABLES `lead_employee` WRITE;
/*!40000 ALTER TABLE `lead_employee` DISABLE KEYS */;
INSERT INTO `lead_employee` VALUES (0,'Yes'),(1,'No');
/*!40000 ALTER TABLE `lead_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `t_number`,
 1 AS `f_name`,
 1 AS `patronymic`,
 1 AS `l_name`,
 1 AS `cabin_number`,
 1 AS `work_since`,
 1 AS `lead_employee_value`,
 1 AS `rating`,
 1 AS `employee_position_name`,
 1 AS `department_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `task_number` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(45) DEFAULT NULL,
  `t_number` int DEFAULT NULL,
  `cabin_number` int DEFAULT NULL,
  `task_deadline` datetime DEFAULT NULL,
  `task_given` datetime DEFAULT NULL,
  `task_managed` datetime DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `construction_site_number` int DEFAULT NULL,
  `slug` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`task_number`),
  KEY `task_name_index` (`task_name`),
  KEY `task_t_number_index` (`t_number`),
  KEY `t_number_tasks_foreign` (`t_number`),
  KEY `cabin_number` (`cabin_number`),
  KEY `tasks_ibfk_3_idx` (`construction_site_number`),
  KEY `task_name_foreign_idx` (`task_number`),
  CONSTRAINT `task_name_foreign` FOREIGN KEY (`task_name`) REFERENCES `construction_operations` (`construction_operation_name`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`t_number`) REFERENCES `employees` (`t_number`),
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`cabin_number`) REFERENCES `cabinets` (`cabin_number`),
  CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`construction_site_number`) REFERENCES `construction_site` (`construction_site_number`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (4,'Планировка верха земполотна',1,2,'2022-12-12 00:00:00','2022-09-19 14:12:10','2022-09-19 14:12:10',NULL,1,NULL),(5,'Устройство подстилающего слоя из песка',2,1,'2022-12-12 00:00:00',NULL,NULL,NULL,2,NULL),(6,'Насыпь',3,2,'2022-12-12 00:00:00',NULL,NULL,NULL,2,NULL),(7,'Насыпь',4,1,'2012-12-12 00:00:00',NULL,NULL,NULL,2,NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titles` (
  `title_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES (1,'Mr.'),(2,'Mrs.'),(3,'Ms.'),(4,'Dr.'),(5,'Capt.'),(6,'Cmdr.');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpush_group`
--

DROP TABLE IF EXISTS `webpush_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webpush_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpush_group`
--

LOCK TABLES `webpush_group` WRITE;
/*!40000 ALTER TABLE `webpush_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `webpush_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpush_pushinformation`
--

DROP TABLE IF EXISTS `webpush_pushinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webpush_pushinformation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` bigint DEFAULT NULL,
  `subscription_id` bigint NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webpush_pushinformation_user_id_5e083b7f_fk_auth_user_id` (`user_id`),
  KEY `webpush_pushinformation_group_id_262dcc9a_fk` (`group_id`),
  KEY `webpush_pushinformation_subscription_id_7989aa34_fk` (`subscription_id`),
  CONSTRAINT `webpush_pushinformation_group_id_262dcc9a_fk` FOREIGN KEY (`group_id`) REFERENCES `webpush_group` (`id`),
  CONSTRAINT `webpush_pushinformation_subscription_id_7989aa34_fk` FOREIGN KEY (`subscription_id`) REFERENCES `webpush_subscriptioninfo` (`id`),
  CONSTRAINT `webpush_pushinformation_user_id_5e083b7f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpush_pushinformation`
--

LOCK TABLES `webpush_pushinformation` WRITE;
/*!40000 ALTER TABLE `webpush_pushinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `webpush_pushinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpush_subscriptioninfo`
--

DROP TABLE IF EXISTS `webpush_subscriptioninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webpush_subscriptioninfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `browser` varchar(100) NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `auth` varchar(100) NOT NULL,
  `p256dh` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpush_subscriptioninfo`
--

LOCK TABLES `webpush_subscriptioninfo` WRITE;
/*!40000 ALTER TABLE `webpush_subscriptioninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `webpush_subscriptioninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `employees`.`t_number` AS `t_number`,`employees`.`f_name` AS `f_name`,`employees`.`patronymic` AS `patronymic`,`employees`.`l_name` AS `l_name`,`employees`.`cabin_number` AS `cabin_number`,`employees`.`work_since` AS `work_since`,`lead_employee`.`lead_employee_value` AS `lead_employee_value`,`employees`.`rating` AS `rating`,`employee_positions`.`employee_position_name` AS `employee_position_name`,`departments`.`department_name` AS `department_name` from (((`employees` join `lead_employee` on((`employees`.`lead_employee` = `lead_employee`.`lead_employee_id`))) join `employee_positions` on((`employees`.`position` = `employee_positions`.`employee_posotion_id`))) join `departments` on((`employees`.`department` = `departments`.`key`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 18:06:23
