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
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entregas` (
  `id_entrega` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `transportadora` varchar(100) DEFAULT NULL,
  `codigo_rastreio` varchar(100) DEFAULT NULL,
  `status_entrega` enum('preparando','coletado','em_transporte','saiu_para_entrega','entregue','devolvido') DEFAULT 'preparando',
  `data_envio` datetime DEFAULT NULL,
  `data_prevista` date DEFAULT NULL,
  `data_entrega` datetime DEFAULT NULL,
  PRIMARY KEY (`id_entrega`),
  UNIQUE KEY `id_pedido` (`id_pedido`),
  KEY `idx_entregas_status` (`status_entrega`),
  CONSTRAINT `fk_entrega_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
INSERT INTO `entregas` VALUES (1,1,'Loggi','BR000001','entregue','2026-04-03 09:00:00','2026-04-07','2026-04-06 15:20:00'),(2,2,'Correios','BR000002','entregue','2026-04-08 11:00:00','2026-04-12','2026-04-11 14:10:00'),(3,3,'Jadlog','BR000003','entregue','2026-04-14 08:30:00','2026-04-18','2026-04-17 17:40:00'),(4,4,'Loggi','BR000004','entregue','2026-04-21 10:15:00','2026-04-25','2026-04-24 13:20:00'),(5,5,'Correios','BR000005','entregue','2026-04-29 12:00:00','2026-05-04','2026-05-03 16:10:00'),(6,6,'Jadlog','BR000006','entregue','2026-05-04 09:20:00','2026-05-08','2026-05-07 12:50:00'),(7,7,'Loggi','BR000007','entregue','2026-05-09 14:20:00','2026-05-13','2026-05-12 15:05:00'),(8,8,'Correios','BR000008','entregue','2026-05-15 10:00:00','2026-05-20','2026-05-19 13:45:00'),(9,9,'Jadlog','BR000009','entregue','2026-05-21 09:10:00','2026-05-25','2026-05-24 11:30:00'),(10,10,'Loggi','BR000010','entregue','2026-05-27 16:20:00','2026-06-01','2026-05-31 10:40:00'),(11,11,'Correios','BR000011','entregue','2026-06-02 08:50:00','2026-06-06','2026-06-05 15:15:00'),(12,12,'Jadlog','BR000012','entregue','2026-06-07 09:30:00','2026-06-11','2026-06-10 14:25:00'),(13,13,'Loggi','BR000013','entregue','2026-06-12 11:00:00','2026-06-16','2026-06-15 16:30:00'),(14,14,'Correios','BR000014','entregue','2026-06-18 10:10:00','2026-06-22','2026-06-21 12:20:00'),(15,15,'Jadlog','BR000015','em_transporte','2026-06-25 13:00:00','2026-06-30',NULL),(16,16,'Loggi','BR000016','entregue','2026-07-03 09:00:00','2026-07-07','2026-07-06 16:10:00'),(17,17,'Correios','BR000017','entregue','2026-07-09 08:40:00','2026-07-13','2026-07-12 13:55:00'),(18,18,'Jadlog','BR000018','saiu_para_entrega','2026-07-15 12:00:00','2026-07-19',NULL),(19,19,'Loggi','BR000019','preparando',NULL,'2026-07-26',NULL),(20,20,'Correios','BR000020','entregue','2026-07-28 10:30:00','2026-08-02','2026-08-01 14:20:00'),(21,21,'Jadlog','BR000021','entregue','2026-08-03 08:50:00','2026-08-07','2026-08-06 15:35:00'),(22,22,'Loggi','BR000022','em_transporte','2026-08-09 11:10:00','2026-08-13',NULL),(23,23,'Correios','BR000023','preparando',NULL,'2026-08-20',NULL),(24,24,'Jadlog','BR000024','preparando',NULL,'2026-08-26',NULL);
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
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
