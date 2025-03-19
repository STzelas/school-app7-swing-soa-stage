-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: schooldb7staging
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cities_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Αθήνα'),(3,'Βόλος'),(7,'Δράμα'),(10,'Ηράκλειο'),(5,'Θεσσαλονίκη'),(9,'Καλαμάτα'),(6,'Κέρκυρα'),(4,'Λάρισσα'),(2,'Πάτρα'),(8,'Πύργος'),(11,'Χανιά');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `vat` varchar(45) NOT NULL,
  `fathername` varchar(45) DEFAULT NULL,
  `phone_num` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `street_num` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_teachers_lastname` (`lastname`) /*!80000 INVISIBLE */,
  KEY `idx_teachers_vat` (`vat`) /*!80000 INVISIBLE */,
  KEY `idx_teachers_city_id` (`city_id`),
  CONSTRAINT `fk_teachers_city_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Αθανάσιος','Ανδρούτσος','87654321','Ανδρέας','6935565765','a8ana@gmail.com','Πατησίων','76','10434',7,'5d24deb8-601d-451d-94f7-b89bf64b78e6','2025-03-10 14:32:45','2025-03-10 14:32:45'),(2,'Άννα','Γιαννούτσου','12345678','Κώ','12345678','anna@gmail.com','Γεωργούτσου','12','67856',5,'8ae1db31-7e12-4677-8097-961a26f6b664','2025-03-10 14:32:45','2025-03-10 14:32:45'),(3,'Μάκης','Καπέτης','987654321','Ευάγγελος','6935465768','makis@gmail.com','Πατησίων','76','10434',1,'619cdd10-2dfe-4eca-8d7f-abba6db5f625','2025-03-10 14:32:45','2025-03-10 14:32:45'),(4,'Νίκη','Γιαννούτσου','918273645','Αθανάσιος','6934564890','niki@gmail.com','Λαμπρούτσου','12','65098',7,'7c51ea7f-5c8b-43d0-a570-e9b10b04abc3','2025-03-10 14:32:45','2025-03-10 14:32:45'),(5,'Κωνσταντίνος','Ρούμπας','456782341','Κλεάνθης','69987678767','kostis@gmail.com','Φράγκου','37','34567',3,'f37c9f54-2156-42a3-8165-4f8ee692d221','2025-03-10 14:32:45','2025-03-10 14:32:45'),(6,'Ελένη','Λαμπρούτσου','9078563411','Λάμπρος','2111309876','eleni@aueb.gr','Αδριανής','12','98076',7,'1edc6e35-877f-4b9f-a73a-57d2e71c2a29','2025-03-10 14:32:45','2025-03-10 14:32:45'),(7,'Κυριάκος','Νικολαϊδης','76859401','Νίκος','90235674','kyriakos@gmail.com','Πατησίων','76','89750',5,'3fccd18d-667d-4733-aade-8e8c89df53db','2025-03-10 14:32:45','2025-03-10 14:32:45'),(8,'Ανδρέας','Ανδρούτσος','9812002345','Αθανάσιος','2103098765','andreas@gmail.com','Ανακούς','119','10434',5,'066aa896-448d-4cab-ac8a-4dccf2f2c71d','2025-03-10 14:32:45','2025-03-10 14:32:45'),(9,'Ηφαιστίων','Αλεξανδρής','656565637','Γρηγόριος','2109876567','ifaist@gmail.com','Ανακούς','77','14341',1,'f13d19d8-846f-47d9-bee0-add1ed1ad012','2025-03-10 14:32:45','2025-03-10 14:32:45'),(10,'Ανδρέας','Παπαδόπουλος','09090876','Ανδρέας','2109090908','andreas@gmail.com','Πατησίων','76','10434',3,'602305af-a5fe-4a65-bc20-57fc979dec14','2025-03-11 16:51:56','2025-03-11 16:51:56');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-12 18:49:30
