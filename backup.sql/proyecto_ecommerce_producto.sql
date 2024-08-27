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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL DEFAULT 'PRODUCTO DESCONOCIDO',
  `cantidad` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `Nombre_Producto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Mouse inalambrico 15000 dpi RGB',10,37046.62,'Mouse Inalambrico'),(2,'Teclado retoriluminado RGB MECANICO',3,10112.41,'Teclado logitech'),(3,'Auriculares con microfono',6,43653.96,'Auriculares Gamers'),(4,'Auriculares inalambricos samsung con insonorisacion',8,47329.71,'BUDS 2'),(5,'Notebook gamers con placa grafica incluida intel core i7',23,65762.15,'Notebook ASUS G14'),(6,'Notebook gamers con placa grafica incluida intel core i5',40,97390.21,'Notebook ASUS TUF'),(7,'Placa grafica con fuente incluida',43,3917.61,'NVIDIDA Geforce RTX 3050'),(8,'Placa grafica sin fuente',96,1971.46,'NVIDIDA Geforce RTX 3020'),(9,'Auriculares analogicos con bajos Xtreme',32,56154.53,'Auricular JBL'),(10,'Mouse Gamer ASUS RGB 17000 dpi',31212,13003.57,'Mouse ASUS'),(11,'Tecaldo retroiluminado mecanico',18,29596.58,'Teclado Corsair'),(12,'Camara de con estabilizador de 50px',2,20130.82,'WebCam XYPER');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
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
