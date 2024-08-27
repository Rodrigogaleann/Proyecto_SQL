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
-- Table structure for table `vendedores_compras`
--

DROP TABLE IF EXISTS `vendedores_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores_compras` (
  `Id_vendedores` int DEFAULT NULL,
  `Id_Compras` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  KEY `FK_compras_vendedorescompras` (`Id_Compras`),
  KEY `FK_Vendedor_vendedorescompras` (`Id_vendedores`),
  CONSTRAINT `FK_compras_vendedorescompras` FOREIGN KEY (`Id_Compras`) REFERENCES `compras` (`id_compra`),
  CONSTRAINT `FK_Vendedor_vendedorescompras` FOREIGN KEY (`Id_vendedores`) REFERENCES `vendedores` (`Id_Vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores_compras`
--

LOCK TABLES `vendedores_compras` WRITE;
/*!40000 ALTER TABLE `vendedores_compras` DISABLE KEYS */;
INSERT INTO `vendedores_compras` VALUES (1,1,'2022-05-10'),(3,1,'2022-05-15'),(3,1,'2022-07-08'),(7,2,'2022-11-22'),(16,5,'2022-10-03'),(10,7,'2023-01-04'),(8,3,'2023-01-20'),(9,5,'2023-02-23'),(10,10,'2023-02-24'),(15,3,'2023-03-04'),(11,4,'2023-03-10'),(12,1,'2023-04-01'),(12,1,'2023-04-10'),(2,10,'2023-05-11'),(4,9,'2023-06-29'),(5,8,'2023-06-30'),(14,3,'2023-07-06'),(20,10,'2023-10-07'),(19,4,'2024-03-05'),(18,1,'2024-04-10');
/*!40000 ALTER TABLE `vendedores_compras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 15:41:49
