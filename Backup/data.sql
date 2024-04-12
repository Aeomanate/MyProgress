-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: myprogress
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `activity_source`
--

LOCK TABLES `activity_source` WRITE;
/*!40000 ALTER TABLE `activity_source` DISABLE KEYS */;
INSERT INTO `activity_source` VALUES (1,1,3,'Beaulieu Alan'),(2,1,1,'MyProgress DB'),(3,2,3,'Base 3D course - Knower school'),(4,3,4,'Improvisation'),(5,4,3,'Unix network programming 1 - Stivens'),(6,4,3,'Unix network programming 2 - Stivens'),(7,5,2,'PingPongNet'),(8,5,3,'The UE4 Dev Prof 2020 - Skillbox'),(9,6,3,'C++ Concurrency in Action'),(10,7,3,'Project12'),(11,8,3,'Fundamental algorithms on C++ - Sedgewick'),(12,9,3,'3D Math Primer for Graphics and GameDev 2nd'),(13,10,4,'Internet'),(14,11,3,'Professional programming in C++/Qt - Shlee'),(15,11,3,'Qt Fundamental Algorithms'),(16,7,1,'English homework'),(17,12,2,'SpaceShipBP'),(18,11,3,'Qt6. Develop window apps - Prohorenok');
/*!40000 ALTER TABLE `activity_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `activity_source_class`
--

LOCK TABLES `activity_source_class` WRITE;
/*!40000 ALTER TABLE `activity_source_class` DISABLE KEYS */;
INSERT INTO `activity_source_class` VALUES (1,'Self projects','Self'),(2,'Test projects','Test'),(3,'Learn projects','Learn'),(4,'Fun & rest','Fun');
/*!40000 ALTER TABLE `activity_source_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `activity_type`
--

LOCK TABLES `activity_type` WRITE;
/*!40000 ALTER TABLE `activity_type` DISABLE KEYS */;
INSERT INTO `activity_type` VALUES (1,'SQL'),(2,'3D'),(3,'Workout'),(4,'Networks'),(5,'Unreal Engine 5'),(6,'Multithreading'),(7,'English'),(8,'Algorithms'),(9,'Linear algebra'),(10,'C++'),(11,'Qt'),(12,'CMake'),(13,'Git'),(14,'C#'),(15,'Unity');
/*!40000 ALTER TABLE `activity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Aeomanate');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12  2:43:31
