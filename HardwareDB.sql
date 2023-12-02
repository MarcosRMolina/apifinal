-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hardware
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `componentes`
--

DROP TABLE IF EXISTS `componentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `componentes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  `DESCRIPCION_CORTA` varchar(255) DEFAULT NULL,
  `CATEGORIA` varchar(100) DEFAULT NULL,
  `IMG` varchar(255) DEFAULT NULL,
  `STOCK` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componentes`
--

LOCK TABLES `componentes` WRITE;
/*!40000 ALTER TABLE `componentes` DISABLE KEYS */;
INSERT INTO `componentes` VALUES (1,'Procesador Intel Core i7',299.99,'Procesador de alto rendimiento','Procesadores','https://m.media-amazon.com/images/I/51GYVerUgML._AC_SX679_.jpg',14),(2,'Memoria RAM Kingston 8GB DDR4',49.99,'Memoria de 8GB para PC','Memoria RAM','https://m.media-amazon.com/images/I/81xsJin165L.__AC_SY300_SX300_QL70_FMwebp_.jpg',7),(3,'Disco Duro Seagate 1TB',59.99,'Disco duro de 1TB','Almacenamiento','https://m.media-amazon.com/images/I/71x2h55zNpL._AC_SX679_.jpg',18),(4,'Tarjeta Gráfica NVIDIA GeForce RTX 3080',699.99,'Tarjeta gráfica de alta gama','Tarjetas Gráficas','https://m.media-amazon.com/images/I/81SzNmM27EL._AC_SX679_.jpg',9),(5,'Monitor Dell 27\" 4K',349.99,'Monitor 4K de 27 pulgadas','Monitores','https://m.media-amazon.com/images/I/A1Iqr2v1SIL._AC_SX679_.jpg',3),(6,'Teclado mecánico Logitech G Pro X',129.99,'Teclado mecánico para juegos','Periféricos','https://m.media-amazon.com/images/I/61ep6omO+0L._AC_SX679_.jpg',11),(7,'Ratón inalámbrico Logitech MX Master 3',99.99,'Ratón inalámbrico de alta precisión','Periféricos','https://m.media-amazon.com/images/I/71zp7CMBb0L._AC_SY679_.jpg',22),(8,'Procesador Intel Core i3',299.99,'Procesador de alto rendimiento','Procesadores','https://m.media-amazon.com/images/I/51C8njBn7mL._AC_SX679_.jpg',2),(9,'Memoria RAM Kingston 16GB DDR4',49.99,'Memoria de 16GB para PC','Memoria RAM','https://m.media-amazon.com/images/I/61izbU70bzL._AC_SX466_.jpg',16),(10,'Disco Duro Seagate 2TB',59.99,'Disco duro de 1TB','Almacenamiento','https://m.media-amazon.com/images/I/51rsQeUE8sL._AC_SY879_.jpg',8),(11,'Tarjeta Gráfica NVIDIA GeForce RTX 4080',899.99,'Tarjeta gráfica de alta gama','Tarjetas Gráficas','https://m.media-amazon.com/images/I/71vQnBuZ3yL._AC_SX679_.jpg',20),(12,'Monitor Samsung 22',349.99,'Monitor 4K de 27 pulgadas','Monitores','https://m.media-amazon.com/images/I/61B8Lq5NXmL._AC_SX679_.jpg',5),(13,'Teclado mecánico Razer',129.99,'Teclado mecánico para juegos','Periféricos','https://m.media-amazon.com/images/I/71xiaUDxklL._AC_SL1500_.jpg',13),(14,'Ratón Logitech G305',59.99,'Ratón inalámbrico de alta precisión','Periféricos','https://m.media-amazon.com/images/I/51DYDLykzoL._AC_SL1500_.jpg',0),(15,'Placa Base ASUS Prime B450M-A',79.99,'Placa base Micro-ATX para Ryzen','Placas Base','https://m.media-amazon.com/images/I/810ggj-rj3L._AC_SL1500_.jpg',6),(16,'Fuente de Alimentación EVGA 650W',69.99,'Fuente de alimentación de 650W','Fuentes de Alimentación','https://m.media-amazon.com/images/I/71b8C44VDoL._AC_SL1500_.jpg',0),(17,'SSD Samsung 500GB',79.99,'Unidad de estado sólido de 500GB','Almacenamiento','https://m.media-amazon.com/images/I/911ujeCkGfL._AC_SX466_.jpg',4),(18,'Gabinete NZXT H510',99.99,'Gabinete para PC ATX','Gabinetes','https://m.media-amazon.com/images/I/61TjgfY-LkL._AC_SL1500_.jpg',15),(19,'Webcam Logitech C920',79.99,'Cámara web de alta definición','Periféricos','https://m.media-amazon.com/images/I/61szFYY6QPL._AC_SL1500_.jpg',21),(20,'Auriculares HyperX Cloud II',89.99,'Auriculares para juegos con sonido envolvente','Auriculares','https://m.media-amazon.com/images/I/61ll3eZ9XvL._AC_SL1500_.jpg',1),(21,'Impresora HP LaserJet Pro',199.99,'Impresora láser monocromática','Impresoras','https://m.media-amazon.com/images/I/51IpLcO2ojL._AC_SL1001_.jpg',19),(22,'Tarjeta de Red TP-Link WiFi 6',49.99,'Tarjeta de red inalámbrica de alta velocidad','Tarjetas de Red','https://m.media-amazon.com/images/I/51RoyFl5dEL._AC_SL1000_.jpg',17),(23,'Sistema de Enfriamiento Cooler Master Hyper 212',39.99,'Sistema de enfriamiento para CPU','Refrigeración','https://m.media-amazon.com/images/I/810TAHrIckL._AC_SL1500_.jpg',10),(24,'Teclado Inalámbrico Logitech K780',59.99,'Teclado inalámbrico multitipo','Periféricos','https://m.media-amazon.com/images/I/71Bth-gHViL._AC_SL1500_.jpg',12);
/*!40000 ALTER TABLE `componentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01 23:07:12
