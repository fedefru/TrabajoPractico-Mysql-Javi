-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Trabajo_practico
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `num_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `montototal` int(11) DEFAULT NULL,
  `mediopago` varchar(30) DEFAULT NULL,
  `idsucursales` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_ticket`),
  UNIQUE KEY `num_ticket_UNIQUE` (`num_ticket`),
  KEY `idsucursales_idx` (`idsucursales`),
  CONSTRAINT `idsucursales` FOREIGN KEY (`idsucursales`) REFERENCES `sucursales` (`idsucursales`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2019-08-11',340,'Debito',8),(2,'2019-10-11',659,'Debito',8),(3,'2019-11-10',659,'Debito',8),(4,'2019-11-28',230,'Debito',2),(5,'2019-11-01',100,'Debito',7),(6,'2019-11-15',500,'Debito',6),(7,'2019-11-02',874,'Debito',6),(8,'2019-11-02',200,'Debito',8),(9,'2019-10-07',220,'Credito',3),(10,'2019-10-13',1040,'Credito',3),(11,'2019-10-15',290,'Credito',4),(12,'2019-10-12',210,'Credito',5),(13,'2019-10-27',200,'Credito',3),(14,'2019-10-19',600,'Credito',4),(15,'2019-10-02',2000,'Credito',3),(16,'2019-10-29',321,'Credito',3),(17,'2019-09-13',600,'Efectivo',1),(18,'2019-09-12',334,'Efectivo',2),(19,'2019-09-04',700,'Efectivo',6),(20,'2019-09-19',389,'Efectivo',7),(21,'2019-09-02',289,'Efectivo',9),(22,'2019-09-05',180,'Efectivo',10),(23,'2019-09-28',1900,'Efectivo',10),(24,'2019-09-17',890,'Efectivo',1),(25,'2019-10-15',340,'Credito',1);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-18 14:00:00
