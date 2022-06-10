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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Hello'),(5,'ICT'),(2,'ITC'),(6,'ITD');
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
INSERT INTO `datospersonales` VALUES (2,'Tuleperapapaya','Tuleperapapaya','Tuleperapapaya','2002-01-01'),(3,'Holamundo','Holamundo','Holamundo','2002-01-01'),(4,'Funcionaolloro','Funcionaolloro','Funcionaolloro','2002-01-01'),(12,'Hola','Hola','Hola','2002-01-01'),(14,'DINOSAURIO','DINOSAURIO','DINOSAURIO','2007-07-07'),(15,'BIBLIOTECA','BIBLIOTECA','BIBLIOTECA','2002-01-01'),(18,'Me quiero morir','Me quiero morir','Me quiero morir','2002-01-01'),(19,'vivilavida','vivilavida','vivilavida','2002-01-01'),(20,'FUNCIONAXFA','FUNCIONAXFA','FUNCIONAXFA','2002-01-01'),(21,'UNAMIGO','UNAMIGO','UNAMIGO','2002-01-01'),(22,'UNAVIDA','UNAVIDA','UNAVIDA','2002-06-19'),(23,'Holamundo','Hello','Hello','2002-01-01'),(24,'Bob Esponja','Pantalones','Cuadrados','2002-01-01'),(25,'Calamardo','Tentaculos','Unodostres','2002-01-01'),(26,'Franisco','Nose','Queponer','2002-01-01'),(27,'ad','asd','ads','2002-01-01'),(28,'noes','noes','noes','2002-01-09'),(29,'Jose Miguel','Beltran','Cinco','2002-06-19'),(30,'sfsf','sfsf','sfsf','2002-01-01');
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
INSERT INTO `experiencialaboral` VALUES (25,1,'Estudiante','Nada, era intern','2004-04-04','2006-05-05'),(26,4,'Java','Nose','2009-09-09','2010-09-09'),(29,3,'Intern de Residencias','Mantenimiento de la plataforma de residencias del tec','2021-06-01','2022-06-02'),(30,3,'puesto','descripcion','2202-02-01','2002-02-02');
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
INSERT INTO `formacionacademica` VALUES (24,2,'Tec de Mty','2002-01-01','2003-01-01'),(25,2,'Tec de Mty','2002-02-02','2003-03-03'),(26,2,'Tec','2003-02-02','2004-02-02'),(29,5,'Tec de Mty','2021-08-08','2024-06-06'),(30,6,'TEC','2002-01-01','0202-01-01');
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
INSERT INTO `informacioncontacto` VALUES (2,'12345678',' Tuleperapapaya'),(3,'64417106785','Holamundo'),(4,'Funcionaolloro','Funcionaolloro'),(19,'6441710685','vivilavida'),(20,'6441710685','FUNCIONAXFA'),(21,'UNAMIGO','UNAMIGO'),(22,'6441710685','UNAVIDA'),(23,'6441710674','Hello'),(24,'6441710685','Casaamarilla'),(25,'64412345','Aunladodebob'),(26,'6441710685','Tecnose'),(29,'6441710685','Marsella 3122'),(30,'12231322','31131');
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
  `Texto_pregunta` varchar(500) NOT NULL,
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

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (2,1,
"Instead of the tabular schema of rows and columns, it uses a storage model that is optimized for the specific requirements of the data being stored",
"d) Non-relational database","a) Structured Query Language","b) Relational database","c) Data warehouse");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (3,1,
"What are the four popular types of relational databases?",
"c) Document data store, column-oriented database, key-value store and graph database",
"a) Document data store, Oracle Database, key-value store and IBM DB2",
"b) Microsoft SQL Server, column-oriented database, MySQL and graph database",
"d) Microsoft SQL Server, Oracle Database, MySQL and IBM DB2");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (4,1,
"Is it NOT a brand of non-relational databases",
"a) PostgreSQL",
"b) MongoDB",
"c) Cassandra",
"d) Neo4j");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (5,1,
"It's a central repository of integrated data from one or more disparate sources designed to enable and support data analysis activities ",
"a) Data warehouse",
"b) Relational database",
"c) Structured Query Language",
"d) Non-relational database");


INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (6,1,
"It is NOT related to big data",
"b) It cannot be analyzed for insights that improve decisions and give confidence for making strategic business moves",
"a) It's data that is so large, fast or complex that it’s difficult or impossible to process using traditional methods",
"c) You can extract great value for companies and organisations by analysing it",
"d) Its characteristics are defined by the four Vs");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (7,1,
"It's NOT a type of big data",
"c) Infrastructure data",
"a) Unstrucutred data",
"b) Semi-structured data",
"d) Structured data");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (8,1,
"These are the 4 Vs of data",
"d) Volume, velocity, variety and veracity",
"a) Vacousity, versatility, viability and verticality",
"b) Vigorousity, velocity, versatility and veracity",
"c) Visuality, virtuosity, vacousity and verticality");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (9,1,
"It is NOT a characteristic of OLTP systems",
"d) Supports extraction of data from the database for further analysis and the tables are not normalized",
"a) It's a system for modification of online databases where the tables are normalized",
"b) Supports insert, update and delete transformations on the database",
"c) OLTP systems generally have simpler queries that require less transactional time");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (10,1,
"It is NOT a characteristic of OLTP systems",
"b) OLAP systems generally have simpler queries that require less transactional time and the tables are normalized",
"a) OLAP queries generally have more complex queries which require more transactional time",
"c) Supports extraction of data from the database for further analysis and the tables are not normalized",
"d) It's a system for querying online databases");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (11,1,
"It refers to identifying and selecting only the features relevant to the prediction variable or desired output for the model creation",
"a) Feature selection",
"b) Feature engineering",
"c) Cross-validation",
"d) Synthetic feature");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (12,1,
"It is NOT a way to handle missing values in big data",
"d) Using the mean for categorical variables or always keeping the missing data",
"a) Deleting rows with missing values or using Mean/Medians to fill missing values",
"b) Using  imputation method for categorical data or Last Observation Carried Forward (LOCF) method",
"c) Predicting missing values or using algorithms that support missing values");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (13,1,
"Is is NOT a category of missing data",
"c) Missing Partly at Random (MPAR)",
"a) Missing Completely at Random (MCAR)",
"b) Missing at Random (MAR)",
"d) Missing Not at Random (MNAR)");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (14,1,
"It is not a built-in data sctructure in Python",
"b) Arrays",
"a) Dictionaries",
"c) Sets",
"d) Lists");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (15,1,
"It is a Python library used to manipulate data in objects called dataframes",
"c) Pandas",
"a) Numpy",
"b) Matplotlib",
"d) Scikit-learn");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (16,1,
"Whats is Hadoop?",
"a) A framework that specializes in big data and that can be used by professionals to analyze big data and help businesses to make decisions",
"b) A Python library used for machine learning tasks which features various classification, regression and clustering algorithms",
"c) A computer or system that provides resources, data, services, or programs to other computers, known as clients, over a network",
"d) A network management protocol used for automatically assigning IP addresses and other parameters to devices connected to the network");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (17,1,
"Which of the following statements about the differences between Apache Spark and MapReduce is NOT true?",
"d) MapReduce can process the data both in real-time and in batches",
"a) Spark stores data in memory (RAM) which makes it easier and faster to retrieve data when needed",
"b) MapReduce requires an external scheduler for jobs",
"c) Apache Spark runs approximately 100 times faster than MapReduce for big data processing");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (18,1,
"Which of the following is NOT one of the three APIs for manipulating and processing data in Spark?",
"c) Dictionaries",
"a) Datasets",
"b) DataFrames",
"d) RDDs");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (19,1,
"It is NOT one of the three main categories that comprise the Spark ecosystem",
"b) Internal packages",
"a) Core components",
"c) Language support",
"d) Cluster management");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (20,1,
"It's a type of architecture in which several processors simultaneously execute multiple, small calculations broken down from a larger, complex problem",
"a) Parallel computing",
"b) Vertical processing",
"c) Cloud computing",
"d) Scalable processing");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (21,3,
"What are constructors in Java",
"a) Refers to a block of code used to initialize an object. ",
"b) It’s a method itss called when the objects ends",
"c) It's  an object",
"d) It's called when  some method or attribute inside a class ");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (22,3,
"What is the difference between equals() and == in Java?",
"d) Equals is a method provided by Object class and implements  operator == on this implementation, equals operator is for primitives and objects",
"a) Equals are for objects only and operator == are for primitives only",
"b) Equals are for primitives only, and operator == are for objects only",
"c) == are for objects and for primitives");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (23,3,
"When can you use the super keyword?",
"c) On a child class",
"a) On any class",
"b) On superclass",
"d) Only in a constructor");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (24,3,
"What is the importance of reflection in Java?",
"c) Is a runtime API for inspecting and changing the behavior of methods, classes, and interfaces.",
"a) Methods can see inside his metadata ",
"b) Is a method change methods",
"d) Is all about interfaces ");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (25,3,
"Can you call a constructor of a class inside another constructor?",
"b) Yes this  call has the name of constructor chaining",
"a) Yes it's possible in java",
"c) No, java  doesn't not provide any mechanism",
"d) No");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (26,3,
"What is a package in Java?",
"d) Are the collection of related classes and interfaces which are bundled together",
"a) A collection of Attributes and methods",
"b) Are the collection of related interfaces which are bundled together",
"c) It's a set of clases called by a name");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (27,3,
"What's a pointer on java",
"c) Java doesn't have pointers, JVM is responsible for implicit memory allocation ",
"a) It's a concept inherited from   language C for memory allocation",
"b) It’s a java keyword for handling memory",
"d) It's a concept inherited from language C for controlling memory leaks");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (28,3,
"What are access modifiers in Java?",
"a) Are special keywords that are used to restrict the access of a class, data member, and method from  another class or from packages and child classes",
"b)  Are special directives for restric acces to clases",
"c) Restricts classes and attributes   to be  accessed from other class",
"d) Give access to attributes from other classes or child classes");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (29,3,
"Define a Java Class.",
"c) A class in Java is a blueprint that contains  methods and attributes",
"a) A class in Java is a blueprint that contains  methods that describes  an object",
"b) A class in Java is a blueprint that contains  methods and interfaces",
"d)  A class in Java is a blueprint that contains  methods and attributes, and interfaces");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (30,3,
"What is final keyword in Java?",
"a) Can be used in different context for attributes, methods and classes ",
"b) Only with variables to define constant",
"c) Only whit methods to preveen overriding",
"d) Only  in a class to prevent from extending  to other class");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (31,3,
"What is Java String Pool?",
"a) Refers to a collection of Strings which are stored in heap memory",
"b) A set of strings stored in memory",
"c) Collection of string on the stack memory",
"d) It's a data structure  like Arraylist for store a collection of strings");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (32,3,
"What is a Map in Java?",
"b) Data structure to save a key -value pairs  bounded to a hash code",
"a) Data structure to save values that gets a hash code from this value",
"c)  Data structure to save keys that gets a hash code from this value",
"d)  It generates a hash code for any type of objets stored on a map ");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (33,3,
"What is runtime polymorphism or dynamic method dispatch?",
"d) Is a process in which a call to an overridden method is resolved at runtime rather than at compile-time",
"a) When you use a method a on runtime",
"b) When you use polymorphism in a couple of classes",
"c) Is a process in which a call to an overridden method is resolved in compilation time");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (34,3,
"What are the different types of inheritance in Java?",
"d) All the above",
"a) Single Inheritance",
"b) Multilevel Inheritance",
"c) Hierarchical Inheritance");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (35,3,
"Can you override a private or static method in Java?",
"a) You cannot override a private or static method in Java. ",
"b) Using the keyword override on a method",
"c) Its possible  thought overloading ",
"d) You can use inherance for override");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (36,3,
"Multiple inheritances is supported by Java?",
"d)No, an alternative its implementing classes",
"a) Yes it's possible in java ",
"b) Yes using extends keyword followed by the list of super classes",
"c) No you can't extends form multiple classes");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (37,3,
"What is object cloning in Java?",
"a) Create a copy of an object  with the same state",
"b) Copy some state of an object",
"c) Only using clone method",
"d) Only manual");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (38,3,
"What's JDK?",
"a) It is the tool necessary to compile, document, and package Java programs.",
"b)  Refers to a runtime environment in which Java bytecode can be executed.",
"c) It is an abstract machine. It is a specification that provides a run-time environment in which Java bytecode can be executed.",
"d) All the above");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (39,3,
"What's JVM ?",
"c) It is an abstract machine. It is a specification that provides a run-time environment in which Java bytecode can be executed.",
"a) It is the tool necessary to compile, document, and package Java programs.",
"b)  Refers to a runtime environment in which Java bytecode can be executed.",
"d) All the above");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (40,3,
"What's JRE ?",
"b)  Refers to a runtime environment in which Java bytecode can be executed.",
"a) It is the tool necessary to compile, document, and package Java programs.",
"c) It is an abstract machine. It is a specification that provides a run-time environment in which Java bytecode can be executed.",
"d) All the above");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (41,4,
"Mechanism in which one object acquires all the properties and behaviors of a parent object.",
"b) Inheritance",
"a) Abstraction",
"c) Polymorphism",
"d) Encapsulation");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (42,4,
"Ability of an object to take many forms. This helps us perform the same action in different ways.",
"c) Polymorphism",
"a) Encapsulation",
"b) Abstraction",
"d) Inheritance");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (43,4,
"Mechanism to wrap up variables(data) and methods(code) together as a single unit. It is the process of hiding information details and protecting data and behavior of the object.",
"c) Encapsulation",
"a) Polymorphism",
"b) Inheritance",
"d) Abstraction");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (44,4,
"Process of hiding certain details and showing only essential information to the user",
"a) Abstraction",
"b) Encapsulation",
"c) Inheritance",
"d) Polymorphism");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (45,4,
"What is overloading?",
"d) When two or more methods in the same class have the same name but different parameters.",
"a)  When two or more methods in the same class have the same parameters but different name.",
"b) When the method signature (name and parameters) are the same in the superclass and the child class",
"c) When the method signature (name and parameters) are different in the superclass and the child class");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (46,4,
"What is overriding?",
"d) When the method signature (name and parameters) are the same in the superclass and the child class",
"a) When the method signature (name and parameters) are different in the superclass and the child class",
"b) When two or more methods in the same class have the same name but different parameters",
"c)  When two or more methods in the same class have the same paramters but different name.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (47,4,
"Contains definitions for a group of related functionalities that a non-abstract class or a struct must implement.",
"d) Interface",
"a) Abstract class",
"b) Static class",
"c) Sealed class");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (48,4,
"Indicate that a class is intended only to be a base class of other classes, not instantiated on its own",
"c) Abstract class",
"a) Interface",
"b) Sealed class",
"d) Statics class");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (49,4,
"What are unit tests?",
"a)  focus on a single part of a whole application in total isolation, usually, a single class or function.",
"b)  functions that runs on the central processing unit.",
"c)   list of actions or event steps typically defining the interactions between a role.",
"d)  test parts of the application to work together as a whole.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (50,4,
"What is integration test?",
"c)  test parts of the application to work together as a whole.",
"a)   list of actions or event steps typically defining the interactions between a role.",
"b)  focus on a single part of a whole application in total isolation, usually, a single class or function.",
"d) functions that runs on the central processing unit");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (51,4,
"What is public modifier?",
"a) means that it can be accessed by any class in any assembly, which includes the class itself.",
"b) means it can only be accessed by the class itself, or accessed by a class that inherits it and that class can be in any assembly",
"c) means it can be accessed by the class itself or by any class in the assembly but can't be accessed at all outside of the assembly unless by the class itself (i.e. it is a partial class",
"d) means that it can only be accessed by the class itself");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (52,4,
"What is protected modifier?",
"b) means it can only be accessed by the class itself, or accessed by a class that inherits it and that class can be in any assembly",
"a) means that it can be accessed by any class in any assembly, which includes the class itself.",
"c) means it can be accessed by the class itself or by any class in the assembly but can't be accessed at all outside of the assembly unless by the class itself (i.e. it is a partial class)",
"d)means that it can only be accessed by the class itself");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (53,4,
"What is internal modifier?",
"c) means it can be accessed by the class itself or by any class in the assembly but can't be accessed at all outside of the assembly unless by the class itself ",
"a) means that it can be accessed by any class in any assembly, which includes the class itself.",
"b) means it can only be accessed by the class itself, or accessed by a class that inherits it and that class can be in any assembly",
"d)means that it can only be accessed by the class itself");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (54,4,
"What is private modifier?",
"d)means that it can only be accessed by the class itself",
"a) means that it can be accessed by any class in any assembly, which includes the class itself.",
"b) means it can only be accessed by the class itself, or accessed by a class that inherits it and that class can be in any assembly",
"c) means it can be accessed by the class itself or by any class in the assembly but can't be accessed at all outside of the assembly unless by the class itself (i.e. it is a partial class)");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (55,4,
"What is IEnumerable?",
"a) is a list or a container which can hold some items. You can iterate through each element. You can not edit the items like adding, deleting, updating, etc. instead you just use a container to contain a list of items. It is the most basic type of list container",
"b)derives from IEnumerable and extends it’s functionality to add, remove, update element in the list. ICollection also holds the count of elements in it and we does not need to iterate over all elements to get total number of elements",
"c)extends ICollection. An IList can perform all operations combined from IEnumerable and ICollection, and some more operations like inserting or removing an element in the middle of a list.",
"d) generates a LINQ to SQL expression that is executed over the database layer. Instead of the generating a Func<T, bool> like the ones above, IQueryable generates an expression tree and gives Expression<Func<T, bool>> that is executed over the database layer to get data set.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (56,4,
"What is ICollection?",
"b)derives from IEnumerable and extends it’s functionality to add, remove, update element in the list. ICollection also holds the count of elements in it and we does not need to iterate over all elements to get total number of elements",
"a) is a list or a container which can hold some items. You can iterate through each element. You can not edit the items like adding, deleting, updating, etc. instead you just use a container to contain a list of items. It is the most basic type of list container",
"c)extends ICollection. An IList can perform all operations combined from IEnumerable and ICollection, and some more operations like inserting or removing an element in the middle of a list.",
"d) generates a LINQ to SQL expression that is executed over the database layer. Instead of the generating a Func<T, bool> like the ones above, IQueryable generates an expression tree and gives Expression<Func<T, bool>> that is executed over the database layer to get data set.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (57,4,
"What is IList?",
"c)extends ICollection. An IList can perform all operations combined from IEnumerable and ICollection, and some more operations like inserting or removing an element in the middle of a list.",
"a) is a list or a container which can hold some items. You can iterate through each element. You can not edit the items like adding, deleting, updating, etc. instead you just use a container to contain a list of items. It is the most basic type of list container",
"b)derives from IEnumerable and extends it’s functionality to add, remove, update element in the list. ICollection also holds the count of elements in it and we does not need to iterate over all elements to get total number of elements",
"d) generates a LINQ to SQL expression that is executed over the database layer. Instead of the generating a Func<T, bool> like the ones above, IQueryable generates an expression tree and gives Expression<Func<T, bool>> that is executed over the database layer to get data set.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (58,4,
"What is IQueryable?",
"d) generates a LINQ to SQL expression that is executed over the database layer. Instead of the generating a Func<T, bool> like the ones above, IQueryable generates an expression tree and gives Expression<Func<T, bool>> that is executed over the database layer to get data set.",
"a) is a list or a container which can hold some items. You can iterate through each element. You can not edit the items like adding, deleting, updating, etc. instead you just use a container to contain a list of items. It is the most basic type of list container",
"b)derives from IEnumerable and extends it’s functionality to add, remove, update element in the list. ICollection also holds the count of elements in it and we does not need to iterate over all elements to get total number of elements",
"c)extends ICollection. An IList can perform all operations combined from IEnumerable and ICollection, and some more operations like inserting or removing an element in the middle of a list.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (59,4,
"How can we sort the elements of the Array in descending order?",
"a) Sort()",
"b) Order()",
"c) OrderBy()",
"d) OrderDesc()");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (60,4,
"The correct way of incrementing the operators are:",
"b) d+=1;",
"a) d=+1;",
"c) d++1",
"d) ++d++");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (61,5,
"What is automation testing?",
"a) process of automating the manual processes to test the application.",
"b) Process of using scripting for developing tools to create test cases.",
"c) Process of defining the test oracle.",
"d) Process of automating data for test cases.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (62,5,
"What is record and playback?",
"d) Test automation approach where a tool capture the activity of the user and then imitates it.",
"a) Test automation type that allows the user to capture the activity and the time execution of a test case.",
"b) Functions in an automated framework for test case execution.",
"c) Testing time where the output is analyzed for quality process.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (63,5,
"Which of the following statements BEST captures the purpose of XPath in Selenium automation?",
"a) To locate objects on a web page",
"b) To create XPath expressions",
"c) To describe the appearance of HTML on a screen",
"d) To describe a tree format");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (64,5,
"Under what conditions a test case must be automated?",
"b) The test ensures the previous functionality didn’t break after a new change.",
"a) The software or the feature under the test changes frequently.",
"c) Exploratory testing is needed.",
"d) ROI takes more time than expected.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (65,5,
"What is not a type of locator in Selenium?",
"d) Image recognition.",
"a) ID.",
"b) XPATH.",
"c) Text");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (66,5,
"What is the best definition for test case",
"a) Test Case is a set of actions executed to verify a particular feature or functionality of your software application.",
"b) Focused more “what to test” than “how to test”.",
"c) A test case contains high-level documentation which describes an end to end functionality to be tested",
"d) Are mostly single line statement that tells what should be tested");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (67,5,
"What is regression testing?",
"c) Type of testing that is done to verify that a code change in the software does not impact the existing functionality of the product.",
"a) Type of testing that is done to verify that new functionalities does not impact the database.",
"b) Is a type of testing used used in waterfall model for test cases development.",
"d) Type of testing focused in finding new scenarios for test case development.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (68,5,
"Which of the following is the BEST approach for locating elements?",
"a) Use IDs.",
"b) Use class names.",
"c) Use Xpath",
"d) Use the link text.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (69,5,
"What is not an advantage of page objects.",
"d) A Page Object does not need to cover the whole page or form. It may control a section or other specific part of it",
"a) It reduces cost and maintenance efforts for test automation scripts",
"b) It gives a clear separation between the business and the technical parts for the test automation design",
"c) It encapsulates all operations on the SUT’s GUI in one layer");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (70,5,
"What is the main advantage of locating web page elements by their ID?",
"b) Because if a web page is valid XML, this attribute is unique, so element is found unambiguously",
"a) Because the method for finding elements by id has the shortest name.",
"c) Because all HTML tags have that attribute",
"d) Because this attribute can be used in all location strategies");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (71,5,
"What is page object model?",
"c) Is a design pattern that creates an object repository for sorting all web elements.",
"a) Is an extenssion of an object in Automation Frameworks.",
"b) Is a design pattern for object classes in Object-oriented programming.",
"d) Is a WebPage that contains all object elements in a module.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (72,5,
"Is not a type of automating testing?",
"b) Architecture testing",
"a) Unit Testing",
"c) Integration Testing",
"d) Acceptance Testing");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (73,5,
"What is test suite?",
"a) Set of tests which helps testers in executing and reporting the test execution status.",
"b) Set of instructions that testers uses for executing and reporting the test execution status.",
"c) Set of tests scenarios which helps testers in executing and reporting the test execution status.",
"d) Set of high level instructions for testers.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (74,5,
"When is feasible to automate?",
"a) Repetitive tasks.",
"b) Tasks that require external hardware.",
"c) Task that require ET.",
"d) All must be automated.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (75,5,
"What is the first action to do in the STLC?",
"c) Requirement analysis.",
"a) Test case design and development.",
"b) Test Plan",
"d) Test environment set up.");


INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (76,5,
"Which is a way to use the css selector in selenium?",
"d) All of avobe",
"a) Inline Style",
"b) External and internal style.",
"c) Browser default value.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (77,5,
"Which of the following XPATH expressions is valid relative xpath for a hyperlink tag in a HTML document?",
"c) //*[@id=\"gb\"]/div/div[1]/div/div[1]/a",
"a) /html/body/div[1]/div[1]/div/div/div/div[1]/div/div[1]/a",
"b) /div/div/div/div[1]/div/div[1]/a",
"d) /[@id=\"gb\"]/div/div[1]/div/div[1]");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (78,5,
"You have to wait for the availability of an element where that is not time-dependant, which wait is the most suitable for this situation.",
"c) Explicit wait.",
"a) Implicit global wait.",
"b) Implicit wait.",
"d) None of avobe.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (79,5,
"How can the entire browser and all of its tabs be closed at once with Selenium when you have more than one tab opened?",
"b) driver.quit()",
"a) driver.close(\"ALL\")",
"c) driver.close()",
"d) driver.quit('ALL')");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (80,5,
"Which type of XPATH gives you the full path of an object?",
"b) Absolute xpath",
"a) Relative xpath",
"c) a) and b)",
"d) None of them.");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (81,6,
"What is the main purpose of HTML?",
"b) To display and structure the content inside of a web page",
"a) To write text inside of a web page",
"c) To create a likeable user interface",
"d) To give styles to the content of a web page");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (82,6,
"What is the main porpuse of CSS?",
"a)To style and layout web using a family of standard properties for each Object",
"b)To create a likeable user interface",
"c) To display the content of a web page",
"d) To give responsiveness to a web page");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (83,6,
"What is a css preprocessor?",
"b) A css preprocessor is a program that lets you generate css from the preprocessor's own unique syntax",
"a) Is the motor from a web browser that interprets the css and applies it to the html",
"c) Is a standard to write css",
"d) Is a css framework");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (84,6,
"What is JavaScript?",
"d) JavaScript is a multi-paradigm scripting Language, that supports event-drive, functional, imperative, procedural, object-oriented programming",
"a) JavaScript is a Static Typed Object Oriented Programming Language",
"b) JavaScript is a Dynamic Functional Programming Language",
"c) JavaScript is a procedural programming language");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (85,6,
"What is the DOM in Javascript?",
"a) Is the Document Object Model, a programming web interface for web documents that a node for each element",
"b) Is a programming web interface that allows the developer to control the browser window native APIS",
"c) Is a programming web interface that allows the developer to control the css from the current document",
"d) All of the above");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (86,6,
"Why do we use the DOM for?",
"c) The DOM interface allows the developer to dynamically change the document object,  depending on events or http calls to a server, or only for mere user interaction",
"a) used to host styles",
"b) used to host javascript script files",
"d) used to host only html");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (87,6,
"What is a JavaScript Closure?",
"a) is function enclosed with references to its surrounding state",
"b) is a class",
"c) is a design pattern",
"d) is javascript module");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (88,6,
"What is the difference between a regular function and an arrow function",
"a) the value of 'this' keyword",
"b) it's syntax",
"c) arrow function has implicit return",
"d) none");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (89,6,
"Difference between function.prototype.bind and function.prototype.call",
"d) .bind adds a given value for  'this', and call does the same but also executes the function",
"a) .bind executes the function with the given value for 'this' and call just gives a value to 'this'",
"b) both .bind and .call add a given value for 'this'",
"c) .call does not add value for 'this', and .bind does add a value for 'this' but does not execute the function");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (90,6,
"What does the function addEventListener do?",
"c) executes a piece of code once a specified event is triggered inside of a given DOM node",
"a) executes a piece of code once a event is triggered on the dom",
"b) executes a piece of code once a event is triggered on the window object",
"d) executes a piece of code once a button is clicked");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (91,6,
"Whats the difference between \"var\" and \"let\"?",
"c) both are for variables but each one are permited and used depending of the execution context of a given scope",
"a)  there is no difference",
"b) var is for variable and let for constant valuest",
"d) var and let are the same but let is newer, it was introduced in ES6");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (92,6,
"What is a JavaScript Front End Framework?",
"a) Is a collection of JavaScript libraries",
"b) Is a code library",
"c) Is a design workflow",
"d) Is a CLI tool");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (93,6,
"Which ones of the next tools are JavaScript Front end frameworks?",
"b)Angular, Vue, ReactJS",
"a)Spring, Hiberbate, Play.",
"c)Ktor, Kweb, Javalin",
"d) Meteor.js, Nest.js, Koa.js, express.js");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (94,6,
"Is inheritence possible on vanilla JavaScript?",
"a)Yes",
"b) No",
"c) Not possible in JavaScript",
"d) I don't know");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (95,6,
"Can you inherit properties from a object to other without classes?",
"b) Yes, you can inherit using the prototype chain",
"a) No, you need to use classes",
"c) You can't, with or without classes",
"d) I don't know");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (96,6,
"what's the shadow DOM?",
"b) Is a object that allows to Hidden DOM trees to be attached to elements in the regular DOM",
"a) Is the part of the DOM that is rendering but no visible yet",
"c) Is a object that allows to hide DOM elements",
"d) Is a object that allows to see all Hidden DOM Elements");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (97,6,
"What's the main use of the shadow DOM?",
"a) controlling attaching, de-attaching, and encapsulate components inside of a web application",
"b) controlling html elements",
"c) controlling all properties surrounding html elements",
"d) creating declarative custom html elements");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (98,6,
"What is a spread operator and what is it used for?",
"c) the spread operator allows to get the items from inside an array or a object and put them inside another object",
"a) the spred operator allows to concadenate various strings",
"b) the spread operator allows to increment the value of a numeric variable; using self reference",
"d) the spread operator allows to have infinite number of parameters inside of function and this parameters will be part of an array");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (99,6,
"What is a rest operator and thwat is it used for?",
"d) the rest operator allows to have infinite number of parameters inside of function and this parameters will be part of an array",
"a) the rest operator allows to concadenate various strings",
"b) the rest operator allows to increment the value of a numeric variable; using self reference",
"c) the rest operator allows to get the items from inside an array or a object and put them inside another object");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (100,6,
"What is \"use strict\" used for?",
"c) disables silent errors for stric errors, and enables code optimization for javascript engines, prohibits certain types of syntax",
"a) allows the use of types on vanilla javascript",
"b) allows a faster interpretation of our code",
"d) enables sloppy mode for the javascript engines");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (101,2,
"What are the two types of learning in Machine Learning?",
"b) Supervised and unsupervised learning",
"a) Dependent and independent learning",
"c) Authorised and unathorised learning",
"d) Linear and non-linear learning");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (102,2,
"Which of the following Python libraries is used to create machine learning models?",
"d) Scikit-learn",
"a) Pandas",
"b) Matplotlib",
"c) Numpy");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (103,2,
"It refers to a model that performs well for very specific data but underperforms for new data",
"c) Overfitting ",
"a) Underfitting",
"b) Crossfitting",
"d) Superfitting");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (104,2,
"What are the two main types of supervised learning?",
"c) Regression and classification",
"a) Regression and clustering",
"b) Classification and clustering",
"d) Clustering and association");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (105,2,
"It's a machine learning technique used to find patterns (relations, structures etc.) in datasets",
"d) Association rule",
"a) Classification",
"b) Regression",
"c) Clustering");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (106,2,
"a) Classification",
"b) Regression",
"a) Classification",
"c) Clustering",
"d) Association rule");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (107,2,
"It's an unsupervised machine learning task that involves automatically discovering natural grouping in data ",
"c) Clustering",
"a) Classification",
"b) Regression",
"d) Association rule");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (108,2,
"It's a supervised machine learning technique which is used to predict continuous values",
"b) Regression",
"a) Classification",
"b) Regression",
"d) Association rule");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (109,2,
"It is NOT a filter method for feature selection",
"c) Forward selection",
"a) Linear discrimination analysis",
"b) ANOVA",
"d) Chi-Square");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (110,2,
"It is NOT a wrapper method for feature selection",
"a) Linear discrimination analysis",
"b) Forward selection",
"c) Backward selection",
"d) Recursive feature elimination");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (111,2,
"How would you calculate the Euclidean distance in Python for the points plot1 = [1,3] and plot2 = [2,5]?",
"d) euclidean_distance = sqrt( (plot1[0]-plot2[0])**2 + (plot1[1]-plot2[1])**2 )",
"a) euclidean_distance = sqrt( (plot1[1]-plot2[0])**2 + (plot1[0]-plot2[1])**2 )",
"b) euclidean_distance = sqrt( (plot1[1]-plot2[1])**2 + (plot1[0]-plot2[0])**2 )",
"c) euclidean_distance = sqrt( (plot1[0]-plot2[1])**2 + (plot1[1]-plot2[0])**2 )");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (112,2,
"Which algorithm can be used for inputting missing values of both categorical and continuous variables?",
"c) K-nearest neighbour (K-NN)",
"a) K-means clustering",
"b) Linear regression ",
"d) Decision trees ");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (113,2,
"What is the most appropriate algorithm to predict the probability of death from heart disease based on age, gender, and blood cholesterol level?",
"a) Logistic Regression",
"b) Linear Regression",
"c) K-means clustering",
"d) Apriori algorithm");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (114,2,
"It is NOT a type of bias that can occur during sampling",
"b) Climate bias",
"a) Selection bias",
"c) Undercoverage bias",
"d) Survivorship bias");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (115,2,
"It's the difference between the arithmetic mean of a group of values and the observed group of values",
"c) Residual Error",
"a) Root Mean Squared Error",
"b) Mean Absolute Error",
"d) Mean Squared Error");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (116,2,
"It's the difference between the actual value and the predicted value",
"b) Error",
"a) Residual error",
"c) Selection error",
"d) Undercoverage error");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (117,2,
"What are the three main methods to avoid overfitting?",
"a) Keep the model simple, use cross-validation techniques and use regularisation techniques",
"b) Make a complicated model, use a lot of features and increase validation loss",
"c) Avoid regularisation techniques, avoid feature engineering and keep the model simple",
"d) Make a complicated model,  avoid cross-validation techniques and increase training loss");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (118,2,
"It's the technique of converting data in such a way that it is normally distributed and has a standard deviation of 1 and a mean of 0",
"d) Standardization",
"a) Regularisation",
"b) Normalization",
"c) Cross-validation");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (119,2,
"It's the technique of converting data in such a way that it is normally distributed and has a standard deviation of 1 and a mean of 0",
"d) Standardization",
"a) Regularisation",
"b) Normalization",
"c) Cross-validation");

INSERT INTO preguntas (ID_pregunta, ID_puesto, Texto_pregunta, Respuesta_Correcta, Respuesta_1, Respuesta_2, Respuesta_3)
VALUES (200,2,
"It's any of various model validation techniques for assessing how the results of a statistical analysis will generalize to an independent data set",
"c) Cross-validation",
"a) Regularisation",
"b) Normalization",
"d) Standardization");

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'1234','6789','aplicante'),(2,'232','2323','aplicante'),(3,'343','2222','aplicante'),(4,'a00227714@itesm.mx','12345','aplicante'),(5,'34343@hotmail.com','12345','aplicante'),(8,'a23@tec.mx','2323','aplicante'),(9,'34343344@gmail.com','232323','aplicante'),(10,'33333@hotmail.com','2323','aplicante'),(12,'12@tec.mx','1212','aplicante'),(14,'2@sd','123','aplicante'),(15,'232@t','12','aplicante'),(16,'2323232@tec.mx','2222','aplicante'),(18,'hola@tec.mx','123456','aplicante'),(19,'eduardo@tec.mx','12345','aplicante'),(20,'eduardoflores@gmail.com','7890','aplicante'),(21,'holauwu@tec.mx','3232','aplicante'),(22,'dinosaurio@tec.mx','1234','aplicante'),(23,'nose@tec.mx','1234','aplicante'),(24,'Patricioestrella@tec.mx','1234','aplicante'),(25,'bobtoronja@tec.mx','1234','aplicante'),(26,'Franchis@tec.mx','6789','aplicante'),(27,'atox@tec.mx','1234','aplicante'),(28,'noes@tec.mx','1234','aplicante'),(29,'ciclo2@tec.mx','1234','aplicante'),(30,'pruebafinal@tec.mx','1234','aplicante');
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

-- Dump completed on 2022-06-01 12:47:10