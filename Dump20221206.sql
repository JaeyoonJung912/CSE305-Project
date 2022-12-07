CREATE DATABASE  IF NOT EXISTS `cse305` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cse305`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cse305
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `AccNumber` int NOT NULL,
  `CreationDate` varchar(30) DEFAULT NULL,
  `CustID` varchar(20) NOT NULL,
  `Stock` varchar(45) DEFAULT NULL,
  `NumShares` int DEFAULT NULL,
  PRIMARY KEY (`AccNumber`),
  KEY `CustID` (`CustID`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'10-1-06','444-44-4444','GM',250),(2,'10-1-06','444-44-4444','Ford',100),(3,'10-15-06','222-22-2222','IBM',50);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `FirstName` text,
  `LastName` text NOT NULL,
  `Address` text,
  `Telephone` varchar(30) DEFAULT NULL,
  `City` text,
  `State` text,
  `ZipCode` text,
  `CustID` varchar(30) NOT NULL,
  `Rating` bigint NOT NULL,
  `Email` text NOT NULL,
  `CreditCard` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Yang','Shang','123 Success Stree','516-632-8959','Stony Brook','NY','11790','111-11-1111',1,'syang@cs.sunysb.edu','1234-5678-1234-5678'),('Du','Victor','456 Fortune Road','516-632-4360','Stony Brook','NY','11790','222-22-2222',1,'vicdu@cs.sunysb.edu','5678-1234-5678-1234'),('Smith','John','798 Peace Blvd.','315-443-4321','Los Angeles','CA','93536','3333-33-3333',1,'jsmith@ic.sunysb.edu','2345-6789-2345-6798'),('Philip','Lewis','135 Knowledge Lane','516-666-8888','Stony Brook','NY','11794','444-44-4444',1,'pml@cs.sunysb.edu','6789-2345-6789-2345');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(20) DEFAULT NULL,
  `StartDate` varchar(20) DEFAULT NULL,
  `HourlyRate` varchar(20) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zipcode` varchar(45) DEFAULT NULL,
  `Telephone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SSN` (`SSN`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2,'789-12-3456','2022-2-06','$50.0','Warren','David','456 Sunken Road','Stony','NY','11794','631-632-9987','davewarren@noemail.com'),(3,'100-10-1000','2023-01-15','$60.0','Singh','Mike','37 West Street','Dix','NY','11790','631-222-3353','mike@noemail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `ZipCode` int NOT NULL,
  `City` char(20) NOT NULL,
  `State` char(20) NOT NULL,
  PRIMARY KEY (`ZipCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderId` int NOT NULL AUTO_INCREMENT,
  `OrderType` varchar(30) DEFAULT NULL,
  `PriceType` varchar(30) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `NumShares` int DEFAULT NULL,
  `AccNum` varchar(30) DEFAULT NULL,
  `EmpId` varchar(30) DEFAULT NULL,
  `StockSymbol` char(20) DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `StockSymbol` (`StockSymbol`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`StockSymbol`) REFERENCES `stock` (`StockSymbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'buy','market','2022-05-12 00:00:00',75,'444-44-4444 1',NULL,'GM'),(2,'sell','trailing stop 10%',NULL,10,'222-22-2222 1',NULL,'IBM'),(3,'sell','$90',NULL,10,'222-22-2222 1',NULL,'IBM');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `SSN` varchar(20) NOT NULL,
  `LastName` char(20) NOT NULL,
  `FirstName` char(20) NOT NULL,
  `Address` char(20) DEFAULT NULL,
  `ZipCode` int DEFAULT NULL,
  `Telephone` int DEFAULT NULL,
  PRIMARY KEY (`SSN`),
  KEY `ZipCode` (`ZipCode`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`ZipCode`) REFERENCES `location` (`ZipCode`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `StockName` char(20) NOT NULL,
  `StockSymbol` char(20) NOT NULL,
  `StockType` char(20) NOT NULL,
  `StockPrice` double NOT NULL,
  `NumberOfShares` int NOT NULL,
  PRIMARY KEY (`StockSymbol`),
  UNIQUE KEY `StockName` (`StockName`),
  CONSTRAINT `StockPositiveNumbers` CHECK (((`NumberOfShares` > 0) and (`StockPrice` >= 0)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES ('Ford','F','automotive',9,750),('General Motors','GM','automotive',34.23,1000),('IBM','IBM','computer',91.41,500);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trade` (
  `AccountId` int NOT NULL,
  `BrokerId` int NOT NULL,
  `TxnId` int NOT NULL,
  `OrderId` int NOT NULL,
  `StockId` char(20) NOT NULL,
  PRIMARY KEY (`AccountId`,`BrokerId`,`TxnId`,`OrderId`,`StockId`),
  KEY `BrokerId` (`BrokerId`),
  KEY `OrderId` (`OrderId`),
  KEY `StockId` (`StockId`),
  KEY `trade_ibfk_3` (`TxnId`),
  CONSTRAINT `trade_ibfk_1` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccNumber`) ON UPDATE CASCADE,
  CONSTRAINT `trade_ibfk_2` FOREIGN KEY (`BrokerId`) REFERENCES `employee` (`ID`) ON UPDATE CASCADE,
  CONSTRAINT `trade_ibfk_3` FOREIGN KEY (`TxnId`) REFERENCES `transaction` (`TxnId`) ON UPDATE CASCADE,
  CONSTRAINT `trade_ibfk_4` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`) ON UPDATE CASCADE,
  CONSTRAINT `trade_ibfk_5` FOREIGN KEY (`StockId`) REFERENCES `stock` (`StockSymbol`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TxnId` int NOT NULL,
  `Fee` varchar(30) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `PricePerShare` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`TxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'128.36','2011-09-22 00:00:00','34.23'),(2,'45','2011-09-22 00:00:00','90');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Username` varchar(45) NOT NULL,
  `Password` text NOT NULL,
  `Role` text NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cse305'
--

--
-- Dumping routines for database 'cse305'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06  0:57:42
