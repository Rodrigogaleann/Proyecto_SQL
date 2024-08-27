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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `Pais` int DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`),
  KEY `FK_paises_clientes` (`Pais`),
  CONSTRAINT `FK_paises_clientes` FOREIGN KEY (`Pais`) REFERENCES `paises` (`Id_Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (16,'Juan','Pérez','Av. Corrientes 1234','juan.perez@gmail.com',1,NULL),(17,'María','González','Calle Falsa 123','maria.gonzalez@icloud.com',0,NULL),(18,'Pedro','Rodríguez','Av. Siempre Viva 742','Rodrigogaleano619@gmail.com',1,NULL),(19,'Laura','Fernández','Calle del Sol 258','laura.fernandez@gmail.com',0,NULL),(20,'Carlos','López','Rambla Gandhi 1830','carlos.lopez@icloud.com',1,NULL),(21,'Sofía','Martínez','18 de Julio 1543','sofia.martinez@outlook.com',0,NULL),(22,'Diego','Díaz','Alameda 3456','diego.diaz@gmail.com',1,NULL),(23,'Camila','Sánchez','Providencia 2345','camila.sanchez@icloud.com',0,NULL),(24,'Lucas','Romero','Av. Rivadavia 5678','lucas.romero@outlook.com',1,NULL),(25,'Valentina','Torres','Calle Esmeralda 9012','valentina.torres@gmail.com',0,NULL),(26,'Tomás','Suárez','Av. Belgrano 3456','tomas.suarez@icloud.com',1,NULL),(27,'Florencia','Ramírez','Calle Perú 7890','florencia.ramirez@outlook.com',0,NULL),(28,'Joaquín','Álvarez','Av. Santa Fe 1234','joaquin.alvarez@gmail.com',1,NULL),(29,'Martina','Benítez','Calle Paraná 5678','martina.benitez@icloud.com',0,NULL),(30,'Santiago','Domínguez','Av. Córdoba 9012','santiago.dominguez@outlook.com',1,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
