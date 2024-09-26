-- MySQL dump 10.13  Distrib 8.0.33, for macos12.6 (x86_64)
--
-- Host: curso025.cg60akqxqrj1.us-east-1.rds.amazonaws.com    Database: sales
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,101,'2023-01-01',1500.00),(2,102,'2023-01-02',2500.50),(3,103,'2023-01-03',3000.75),(4,104,'2023-01-04',4000.00),(5,105,'2023-01-05',5000.25),(6,106,'2023-01-06',6000.50),(7,107,'2023-01-07',7000.75),(8,108,'2023-01-08',8000.00),(9,109,'2023-01-09',9000.25),(10,110,'2023-01-10',10000.50),(11,111,'2023-01-11',11000.75),(12,112,'2023-01-12',12000.00),(13,113,'2023-01-13',13000.25),(14,114,'2023-01-14',14000.50),(15,115,'2023-01-15',15000.75),(16,116,'2023-01-16',16000.00),(17,117,'2023-01-17',17000.25),(18,118,'2023-01-18',18000.50),(19,119,'2023-01-19',19000.75),(20,120,'2023-01-20',20000.00),(21,121,'2023-01-21',21000.25),(22,122,'2023-01-22',22000.50),(23,123,'2023-01-23',23000.75),(24,124,'2023-01-24',24000.00),(25,125,'2023-01-25',25000.25),(26,126,'2023-01-26',26000.50),(27,127,'2023-01-27',27000.75),(28,128,'2023-01-28',28000.00),(29,129,'2023-01-29',29000.25),(30,130,'2023-01-30',30000.50),(31,131,'2023-01-31',31000.75),(32,132,'2023-02-01',32000.00),(33,133,'2023-02-02',33000.25),(34,134,'2023-02-03',34000.50),(35,135,'2023-02-04',35000.75),(36,136,'2023-02-05',36000.00),(37,137,'2023-02-06',37000.25),(38,138,'2023-02-07',38000.50),(39,139,'2023-02-08',39000.75),(40,140,'2023-02-09',40000.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'NY'),(2,'CA'),(3,'IL'),(4,'TX'),(5,'AZ'),(6,'WA'),(7,'MA'),(8,'FL'),(9,'IN'),(10,'OH'),(11,'NC'),(12,'MI'),(13,'TN'),(14,'MD'),(15,'WI'),(16,'NM'),(17,'MO'),(18,'VA'),(19,'GA'),(20,'CO'),(21,'NE'),(22,'OK'),(23,'MN'),(24,'KS');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `state_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'New York',1),(2,'Los Angeles',2),(3,'Chicago',3),(4,'Houston',4),(5,'Phoenix',5),(6,'San Francisco',2),(7,'Seattle',6),(8,'Boston',7),(9,'Dallas',4),(10,'Austin',4),(11,'San Diego',2),(12,'San Jose',2),(13,'Jacksonville',8),(14,'Indianapolis',9),(15,'Columbus',10),(16,'Charlotte',11),(17,'Detroit',12),(18,'El Paso',4),(19,'Memphis',13),(20,'Baltimore',14),(21,'Milwaukee',15),(22,'Albuquerque',16),(23,'Tucson',5),(24,'Fresno',2),(25,'Sacramento',2),(26,'Long Beach',2),(27,'Kansas City',17),(28,'Mesa',5),(29,'Virginia Beach',18),(30,'Atlanta',19),(31,'Colorado Springs',20),(32,'Omaha',21),(33,'Raleigh',11),(34,'Miami',8),(35,'Cleveland',10),(36,'Tulsa',22),(37,'Oakland',2),(38,'Minneapolis',23),(39,'Wichita',24);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `city_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (101,'Alice','Smith',1),(102,'Bob','Johnson',2),(103,'Charlie','Williams',3),(104,'David','Brown',4),(105,'Eva','Jones',5),(106,'Frank','Garcia',6),(107,'Grace','Martinez',7),(108,'Hank','Davis',8),(109,'Ivy','Rodriguez',9),(110,'Jack','Wilson',10),(111,'Kelly','Anderson',11),(112,'Liam','Thomas',12),(113,'Mia','Taylor',13),(114,'Noah','Moore',14),(115,'Olivia','Jackson',6),(116,'Paul','Martin',15),(117,'Quinn','Lee',16),(118,'Ryan','Harris',17),(119,'Sophia','Clark',18),(120,'Tom','Lewis',19),(121,'Uma','Robinson',20),(122,'Vera','Walker',21),(123,'Will','Hall',22),(124,'Xena','Young',23),(125,'Yara','Allen',24),(126,'Zoe','Sanchez',25),(127,'Adam','Wright',26),(128,'Bella','King',27),(129,'Cody','Scott',28),(130,'Diana','Green',29),(131,'Ethan','Baker',30),(132,'Fiona','Gonzalez',31),(133,'George','Nelson',32),(134,'Holly','Carter',33),(135,'Iris','Mitchell',34),(136,'Jake','Perez',35),(137,'Kara','Roberts',36),(138,'Leo','Turner',37),(139,'Maya','Phillips',38),(140,'Nate','Campbell',39);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 11:30:24
