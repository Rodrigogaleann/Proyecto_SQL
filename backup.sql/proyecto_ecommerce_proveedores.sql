CREATE DATABASE  IF NOT EXISTS `proyecto_ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_ecommerce
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedores` int NOT NULL AUTO_INCREMENT,
  `nombre_prov` varchar(100) DEFAULT NULL,
  `domicilio_prov` varchar(100) NOT NULL,
  `email_prov` varchar(100) NOT NULL,
  `Dias_entregas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_proveedores`),
  UNIQUE KEY `email_prov` (`email_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Orn and Sons','Room 1598','lduchesne0@columbia.edu','Lunes y miercoles'),(2,'Bernier Group','Suite 56','tmelchior1@wufoo.com','martes y jueves'),(3,'Pacocha-VonRueden','7th Floor','bponte2@51.la','Lunes y miercoles'),(4,'Weber, Huels and Kautzer','8th Floor','bbownd3@flavors.me','Lunes y miercoles'),(5,'Walsh, Yost and Gerlach','PO Box 96741','ftwidell4@seesaa.net','Jueves y Sabados'),(6,'Kohler, Mayert and Bartoletti','Room 1427','ysinson5@slideshare.net','Lunes y Viernes'),(7,'Frami-Gislason','5th Floor','amcallaster6@google.fr','Miercoles y Jueves'),(8,'Jerde-Nader','Suite 28','trothera7@state.gov','Jueves y Sabados'),(9,'Gleason-Kshlerin','PO Box 32098','rstayt8@miibeian.gov.cn','martes y jueves'),(10,'Cummings, Greenfelder and Cronin','Apt 1226','mmitchelson9@sfgate.com','Miercoles y Sabados');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 15:41:50
