CREATE DATABASE  IF NOT EXISTS `alumnos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alumnos`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: alumnos
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
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `ID_carrera` int NOT NULL AUTO_INCREMENT,
  `Nombre_carrera` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_carrera`),
  UNIQUE KEY `Nombre_carrera_UNIQUE` (`Nombre_carrera`),
  UNIQUE KEY `ID_carrera_UNIQUE` (`ID_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Hello'),(2,'ITC');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospersonales`
--

DROP TABLE IF EXISTS `datospersonales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datospersonales` (
  `IDusuario` int NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido_paterno` varchar(45) NOT NULL,
  `Apellido_materno` varchar(45) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`IDusuario`),
  CONSTRAINT `ID_usuariodatos` FOREIGN KEY (`IDusuario`) REFERENCES `usuarios` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datospersonales`
--

LOCK TABLES `datospersonales` WRITE;
/*!40000 ALTER TABLE `datospersonales` DISABLE KEYS */;
INSERT INTO `datospersonales` VALUES (2,'Tuleperapapaya','Tuleperapapaya','Tuleperapapaya','2002-01-01'),(3,'Holamundo','Holamundo','Holamundo','2002-01-01'),(4,'Funcionaolloro','Funcionaolloro','Funcionaolloro','2002-01-01'),(12,'Hola','Hola','Hola','2002-01-01'),(14,'DINOSAURIO','DINOSAURIO','DINOSAURIO','2007-07-07'),(15,'BIBLIOTECA','BIBLIOTECA','BIBLIOTECA','2002-01-01'),(18,'Me quiero morir','Me quiero morir','Me quiero morir','2002-01-01'),(19,'vivilavida','vivilavida','vivilavida','2002-01-01'),(20,'FUNCIONAXFA','FUNCIONAXFA','FUNCIONAXFA','2002-01-01'),(21,'UNAMIGO','UNAMIGO','UNAMIGO','2002-01-01'),(22,'UNAVIDA','UNAVIDA','UNAVIDA','2002-06-19'),(23,'Holamundo','Hello','Hello','2002-01-01'),(24,'Bob Esponja','Pantalones','Cuadrados','2002-01-01'),(25,'Calamardo','Tentaculos','Unodostres','2002-01-01'),(26,'Franisco','Nose','Queponer','2002-01-01'),(27,'ad','asd','ads','2002-01-01');
/*!40000 ALTER TABLE `datospersonales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dominioidioma`
--

DROP TABLE IF EXISTS `dominioidioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dominioidioma` (
  `IDusuario` int NOT NULL,
  `ID_idioma` int NOT NULL,
  `Dominio` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`IDusuario`,`ID_idioma`),
  KEY `ID_idioma` (`ID_idioma`),
  CONSTRAINT `ID_idioma` FOREIGN KEY (`ID_idioma`) REFERENCES `idiomas` (`ID_idioma`),
  CONSTRAINT `IDusuarioIdioma` FOREIGN KEY (`IDusuario`) REFERENCES `usuarios` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dominioidioma`
--

LOCK TABLES `dominioidioma` WRITE;
/*!40000 ALTER TABLE `dominioidioma` DISABLE KEYS */;
/*!40000 ALTER TABLE `dominioidioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dominioskills`
--

DROP TABLE IF EXISTS `dominioskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dominioskills` (
  `IDusuario` int NOT NULL,
  `ID_skill` int NOT NULL,
  `Dominio` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`IDusuario`,`ID_skill`),
  KEY `ID_skill` (`ID_skill`),
  CONSTRAINT `ID_skill` FOREIGN KEY (`ID_skill`) REFERENCES `skills` (`ID_skill`),
  CONSTRAINT `IDusuario` FOREIGN KEY (`IDusuario`) REFERENCES `usuarios` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dominioskills`
--

LOCK TABLES `dominioskills` WRITE;
/*!40000 ALTER TABLE `dominioskills` DISABLE KEYS */;
/*!40000 ALTER TABLE `dominioskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencialaboral`
--

DROP TABLE IF EXISTS `experiencialaboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencialaboral` (
  `IDusuario` int NOT NULL,
  `ID_puesto` int NOT NULL,
  `Titulo_puestoanterior` varchar(45) DEFAULT 'VACIO',
  `Descripcion` varchar(100) DEFAULT 'VACIO',
  `Ano_inicio` date DEFAULT NULL,
  `Ano_fin` date DEFAULT NULL,
  PRIMARY KEY (`IDusuario`,`ID_puesto`),
  KEY `ID_puestoexperiencialab_idx` (`ID_puesto`),
  CONSTRAINT `ID_puestoexperiencialab` FOREIGN KEY (`ID_puesto`) REFERENCES `puestos` (`ID_puesto`),
  CONSTRAINT `IDusuario_experiencialaboral` FOREIGN KEY (`IDusuario`) REFERENCES `usuarios` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencialaboral`
--

LOCK TABLES `experiencialaboral` WRITE;
/*!40000 ALTER TABLE `experiencialaboral` DISABLE KEYS */;
INSERT INTO `experiencialaboral` VALUES (25,1,'Estudiante','Nada, era intern','2004-04-04','2006-05-05'),(26,4,'Java','Nose','2009-09-09','2010-09-09');
/*!40000 ALTER TABLE `experiencialaboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacionacademica`
--

DROP TABLE IF EXISTS `formacionacademica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacionacademica` (
  `IDusuario` int NOT NULL,
  `ID_carrera` int NOT NULL,
  `Universidad` varchar(45) NOT NULL,
  `Ano_inicio` date NOT NULL,
  `Ano_fin` date NOT NULL,
  PRIMARY KEY (`IDusuario`,`ID_carrera`),
  KEY `ID_carreraformacion_idx` (`ID_carrera`),
  KEY `ID_usuarioformacion_idx` (`IDusuario`),
  CONSTRAINT `ID_carreraformacion` FOREIGN KEY (`ID_carrera`) REFERENCES `carrera` (`ID_carrera`),
  CONSTRAINT `ID_usuarioformacion` FOREIGN KEY (`IDusuario`) REFERENCES `usuarios` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacionacademica`
--

LOCK TABLES `formacionacademica` WRITE;
/*!40000 ALTER TABLE `formacionacademica` DISABLE KEYS */;
INSERT INTO `formacionacademica` VALUES (24,2,'Tec de Mty','2002-01-01','2003-01-01'),(25,2,'Tec de Mty','2002-02-02','2003-03-03'),(26,2,'Tec','2003-02-02','2004-02-02');
/*!40000 ALTER TABLE `formacionacademica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamelist`
--

DROP TABLE IF EXISTS `gamelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamelist` (
  `ID_usuario` int NOT NULL,
  `ID_juego` int NOT NULL,
  PRIMARY KEY (`ID_usuario`,`ID_juego`),
  KEY `ID_juego_idx` (`ID_juego`),
  CONSTRAINT `ID_juego` FOREIGN KEY (`ID_juego`) REFERENCES `juego` (`ID_juego`),
  CONSTRAINT `ID_usuariogamelist` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamelist`
--

LOCK TABLES `gamelist` WRITE;
/*!40000 ALTER TABLE `gamelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomas`
--

DROP TABLE IF EXISTS `idiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idiomas` (
  `ID_idioma` int NOT NULL AUTO_INCREMENT,
  `Nombre_idioma` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_idioma`),
  UNIQUE KEY `Nombre_idioma_UNIQUE` (`Nombre_idioma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomas`
--

LOCK TABLES `idiomas` WRITE;
/*!40000 ALTER TABLE `idiomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `idiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacioncontacto`
--

DROP TABLE IF EXISTS `informacioncontacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacioncontacto` (
  `IDusuario` int NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`IDusuario`),
  CONSTRAINT `ID_usuariocontacto` FOREIGN KEY (`IDusuario`) REFERENCES `usuarios` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacioncontacto`
--

LOCK TABLES `informacioncontacto` WRITE;
/*!40000 ALTER TABLE `informacioncontacto` DISABLE KEYS */;
INSERT INTO `informacioncontacto` VALUES (2,'12345678',' Tuleperapapaya'),(3,'64417106785','Holamundo'),(4,'Funcionaolloro','Funcionaolloro'),(19,'6441710685','vivilavida'),(20,'6441710685','FUNCIONAXFA'),(21,'UNAMIGO','UNAMIGO'),(22,'6441710685','UNAVIDA'),(23,'6441710674','Hello'),(24,'6441710685','Casaamarilla'),(25,'64412345','Aunladodebob'),(26,'6441710685','Tecnose');
/*!40000 ALTER TABLE `informacioncontacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego`
--

DROP TABLE IF EXISTS `juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juego` (
  `ID_juego` int NOT NULL AUTO_INCREMENT,
  `ID_puesto` int NOT NULL,
  `Puntaje` int NOT NULL,
  `Tiempo_juego` int NOT NULL,
  `Estado_juego` varchar(10) NOT NULL,
  `Nivel_juego` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_juego`,`ID_puesto`),
  KEY `ID_puestojuego_idx` (`ID_puesto`),
  CONSTRAINT `ID_puestojuego` FOREIGN KEY (`ID_puesto`) REFERENCES `puestos` (`ID_puesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
/*!40000 ALTER TABLE `juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntas` (
  `ID_pregunta` int NOT NULL AUTO_INCREMENT,
  `ID_puesto` int NOT NULL,
  `Texto_pregunta` varchar(150) NOT NULL,
  `Respuesta_Correcta` varchar(100) NOT NULL,
  `Respuesta_1` varchar(100) NOT NULL,
  `Respuesta_2` varchar(100) NOT NULL,
  `Respuesta_3` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_pregunta`,`ID_puesto`),
  UNIQUE KEY `ID_pregunta_UNIQUE` (`ID_pregunta`),
  KEY `ID_puesto_idx` (`ID_puesto`),
  CONSTRAINT `ID_puesto` FOREIGN KEY (`ID_puesto`) REFERENCES `puestos` (`ID_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,1,' It\'s a collection of data items organized as a set of tables with columns and rows with pre-defined relationships between them','b) Relational database','a) Structured Query Language','c) Data warehouse','d) Non-relational database');
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos`
--

DROP TABLE IF EXISTS `puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puestos` (
  `ID_puesto` int NOT NULL AUTO_INCREMENT,
  `Nombre_puesto` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_puesto`),
  UNIQUE KEY `ID_puesto_UNIQUE` (`ID_puesto`),
  UNIQUE KEY `Nombre_puesto_UNIQUE` (`Nombre_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (4,'.NET Developer'),(1,'Data Engineer'),(2,'Data Scientist'),(6,'Front End'),(3,'Java Developer'),(5,'QA Automation');
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `ID_skill` int NOT NULL AUTO_INCREMENT,
  `Nombre_skill` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_skill`),
  UNIQUE KEY `Nombre_skill_UNIQUE` (`Nombre_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `IDusuario` int NOT NULL AUTO_INCREMENT,
  `Correo` varchar(45) NOT NULL,
  `Contrasena` varchar(45) NOT NULL,
  `Tipo` varchar(20) NOT NULL DEFAULT 'aplicante',
  PRIMARY KEY (`IDusuario`),
  UNIQUE KEY `correo_UNIQUE` (`Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'1234','6789','aplicante'),(2,'232','2323','aplicante'),(3,'343','2222','aplicante'),(4,'a00227714@itesm.mx','12345','aplicante'),(5,'34343@hotmail.com','12345','aplicante'),(8,'a23@tec.mx','2323','aplicante'),(9,'34343344@gmail.com','232323','aplicante'),(10,'33333@hotmail.com','2323','aplicante'),(12,'12@tec.mx','1212','aplicante'),(14,'2@sd','123','aplicante'),(15,'232@t','12','aplicante'),(16,'2323232@tec.mx','2222','aplicante'),(18,'hola@tec.mx','123456','aplicante'),(19,'eduardo@tec.mx','12345','aplicante'),(20,'eduardoflores@gmail.com','7890','aplicante'),(21,'holauwu@tec.mx','3232','aplicante'),(22,'dinosaurio@tec.mx','1234','aplicante'),(23,'nose@tec.mx','1234','aplicante'),(24,'Patricioestrella@tec.mx','1234','aplicante'),(25,'bobtoronja@tec.mx','1234','aplicante'),(26,'Franchis@tec.mx','6789','aplicante'),(27,'atox@tec.mx','1234','aplicante'),(28,'noes@tec.mx','1234','aplicante');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-01  1:14:11
