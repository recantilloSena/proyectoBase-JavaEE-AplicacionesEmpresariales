-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: mysqlcrc.c8u8ewupudqn.us-east-1.rds.amazonaws.com    Database: datademo
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `apellido1` varchar(45) DEFAULT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `fk_zona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `fk_aprendices_cursos_idx` (`fk_zona`),
  CONSTRAINT `fk_aprendices_cursos` FOREIGN KEY (`fk_zona`) REFERENCES `zonas` (`id_zona`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Esta tabla almacena la información de los aprendices.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'CABALLERO','MONTENEGRO','JUAN MANUEL','1079940222',1),(2,'CARO','VANEGAS','OSMAN ALFONSO','1045738818',2),(3,'DOVALE','ARRIETA','JESUS ENRIQUE','1002500235',3),(4,'GALOFRE','ALVAREZ','RODOLFO ANTONIO','1050973574',4),(5,'GUTIERREZ','CASTRO','EDINSON MANUEL','1234094757',5),(6,'GUTIERREZ','FRUTO','ROBERTO MIGUEL','1047361068',3),(7,'MACHADO','GUZMAN','GILBERT ELIAS','1002130170',3),(8,'MACKENZIE','GUTIERREZ','MIGUEL ANGEL','1143453009',1),(9,'MARTINEZ','ARIZA','HEYDER LUIS','1044332475',4),(10,'MONROY','MEDINA','DIEGO ALFREDO','1002234301',4),(11,'MUÑOZ','PIZARRO','SAMIRA MARGARITA','1047362240',4),(12,'PASOS','RUIZ','TALHIA','1042460474',4),(13,'PATIÑO','SUAREZ','CRISTIAN MANUEL','1081835378',4),(14,'PEREZ','ESQUEA','KATERIN JOHANA','1081765262',4),(15,'POLO','CASTILLO','JESUS ALBERTO','1001938580',4),(16,'RODRIGUEZ','FIGUEROA','JORDY ANDRES','1234888222',4),(17,'RODRIGUEZ','LERMA','JOSE GREGORIO','1002420753',4),(18,'ROJANO','PACHECO','ALEXANDER','1043150470',4),(19,'SALGADO','CONTRERAS','NILSON JOSE','1001821306',4),(20,'SANTANA','RIOS','ERBIN ANTONIO','1234093264',4),(21,'SUAREZ','SALAS','HUMBERTO LUIS','1140882798',5),(22,'TORRES','ARCHBOLD','ANGEL JUNIOR','1042464794',2),(23,'TORRES','BULA','JHON MIGUEL','1010148563',3),(24,'VIZCAINO','DIAZ','BRIAN SNEYDER','1042457257',3);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonas`
--

DROP TABLE IF EXISTS `zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zonas` (
  `id_zona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_zona` varchar(45) DEFAULT NULL,
  `orden` int(11) NOT NULL DEFAULT '99',
  PRIMARY KEY (`id_zona`),
  UNIQUE KEY `IND_UNQ` (`nombre_zona`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonas`
--

LOCK TABLES `zonas` WRITE;
/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;
INSERT INTO `zonas` VALUES (1,'Brazil - Norte',1),(2,'Brazil - Sur',2),(3,'Brazil - Centro',3),(4,'Costa Rica Pacífico',9),(5,'México Norte',6),(6,'México Sur',7),(7,'Colombia Costa Caribe',4);
/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-09 15:40:38
