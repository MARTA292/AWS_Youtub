-- MariaDB dump 10.19  Distrib 10.5.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yutub
-- ------------------------------------------------------
-- Server version	10.5.13-MariaDB-1:10.5.13+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(30) DEFAULT NULL,
  `idVideo` int(11) DEFAULT NULL,
  `contenido` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idComentario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'dani',1,'Buenima pelula, la recomiendo'),(2,'martuski',1,'No la he visto, pero el trailer promete'),(3,'martuski',2,'Super divertida, sino la habe visto la recomiendo'),(4,'dani',3,'Buenima, de las mejores pelis'),(5,'dani',4,'Fiel a los libros'),(7,'dani',8,'hola mundo de nuevo'),(8,'dani',8,'Hola que ase'),(9,'dani',15,'Hola'),(10,'rebs11',13,'piscina muerta es el mejor superheroe');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `nombreUsuario` varchar(30) NOT NULL,
  `intentos` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL AUTO_INCREMENT,
  `session` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES ('martuski',0,1,1),('dani',0,2,1),('mizmor',0,4,1),('javitosan',0,5,1),('rebs11',0,6,1);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `nombreUsuario` varchar(30) DEFAULT NULL,
  `nombreCompleto` varchar(30) DEFAULT NULL,
  `mail` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `recuperacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mail`),
  UNIQUE KEY `nombreUsuario` (`nombreUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('dani','dani','dani','dani','dani'),('javitosan','Javier Rodríguez González ','javvrodriguez01@gmail.com','soymuyguapo123','Up'),('mizmor','mariano izquierdo','mariano@gmail.com','12345','12345'),('martuski','marta','marta@gmail.com','123456789','lost'),('rebs11','Rebeca Sanz','rebe.sanz11@gmail.com','Danimamapinga','Trolls');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `idVideo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(30) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idVideo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (8,'dani','primer video',NULL,'http://bucketyoutubedm.s3-website-us-east-1.amazonaws.com/dani/primer_video.mp4','primer video',NULL),(13,'martuski','Trailer deadpool',NULL,'http://bucketyoutubedm.s3-website-us-east-1.amazonaws.com/martuski/deadpool.mp4','cine',NULL),(14,'rebs11','LA VERDAD',NULL,'http://bucketyoutubedm.s3-website-us-east-1.amazonaws.com/rebs11/Rajoy.mp4','Si Rajoy lo dice....',NULL),(15,'dani','brushy one string',NULL,'http://bucketyoutubedm.s3-website-us-east-1.amazonaws.com/dani/brushy.mp4','musica',NULL),(16,'rebs11','Paso 0',NULL,'http://bucketyoutubedm.s3-website-us-east-1.amazonaws.com/rebs11/Entrada con paso 01.jpg','Aquí aprenderás a hacer paso 0. Una gran herramienta a la hora de jugar al baloncesto',NULL),(18,'dani','holiwis',NULL,'http://bucketyoutubedm.s3-website-us-east-1.amazonaws.com/dani/hola.mp4','hola',NULL),(20,'dani','prueba2',NULL,'http://bucketyoutubedm.s3-website-us-east-1.amazonaws.com/dani/estamoshechosparaentendernos.mp4','hola',NULL);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votos`
--

DROP TABLE IF EXISTS `votos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votos` (
  `idVoto` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(30) DEFAULT NULL,
  `idVideo` int(11) DEFAULT NULL,
  `idComentario` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVoto`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votos`
--

LOCK TABLES `votos` WRITE;
/*!40000 ALTER TABLE `votos` DISABLE KEYS */;
INSERT INTO `votos` VALUES (4,NULL,8,NULL,5),(5,'dani',1,1,5),(6,'martuski',2,2,10),(7,'martuski',3,3,0),(8,'dani',4,4,20),(9,NULL,13,NULL,1),(10,NULL,14,NULL,2),(11,NULL,15,NULL,2),(12,NULL,16,NULL,0),(14,NULL,18,NULL,0),(16,NULL,20,NULL,0);
/*!40000 ALTER TABLE `votos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-30 21:11:43
