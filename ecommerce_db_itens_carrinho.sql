-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `itens_carrinho`
--

DROP TABLE IF EXISTS `itens_carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_carrinho` (
  `id_item_carrinho` int NOT NULL AUTO_INCREMENT,
  `id_carrinho` int NOT NULL,
  `id_produto` int NOT NULL,
  `quantidade` int NOT NULL DEFAULT '1',
  `data_adicionado` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_item_carrinho`),
  UNIQUE KEY `uq_carrinho_produto` (`id_carrinho`,`id_produto`),
  KEY `fk_item_carrinho_produto` (`id_produto`),
  CONSTRAINT `fk_item_carrinho` FOREIGN KEY (`id_carrinho`) REFERENCES `carrinhos` (`id_carrinho`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_item_carrinho_produto` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_carrinho`
--

LOCK TABLES `itens_carrinho` WRITE;
/*!40000 ALTER TABLE `itens_carrinho` DISABLE KEYS */;
INSERT INTO `itens_carrinho` VALUES (1,1,16,1,'2026-08-26 10:24:09'),(2,1,21,2,'2026-08-26 10:24:09'),(3,2,5,1,'2026-08-26 10:24:09'),(4,3,12,2,'2026-08-26 10:24:09'),(5,3,13,1,'2026-08-26 10:24:09'),(6,4,19,1,'2026-08-26 10:24:09'),(7,5,6,2,'2026-08-26 10:24:09'),(8,6,23,1,'2026-08-26 10:24:09'),(9,6,24,1,'2026-08-26 10:24:09'),(10,7,28,1,'2026-08-26 10:24:09'),(11,8,17,1,'2026-08-26 10:24:09'),(12,9,1,1,'2026-08-26 10:24:09'),(13,9,3,1,'2026-08-26 10:24:09'),(14,10,20,1,'2026-08-26 10:24:09'),(15,11,14,1,'2026-08-26 10:24:09'),(16,12,10,1,'2026-08-26 10:24:09'),(17,13,26,3,'2026-08-26 10:24:09'),(18,14,30,1,'2026-08-26 10:24:09'),(19,15,8,2,'2026-08-26 10:24:09'),(20,16,18,1,'2026-08-26 10:24:09'),(21,17,22,1,'2026-08-26 10:24:09'),(22,18,29,1,'2026-08-26 10:24:09'),(23,19,7,1,'2026-08-26 10:24:09'),(24,20,25,1,'2026-08-26 10:24:09');
/*!40000 ALTER TABLE `itens_carrinho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-26 14:31:39
