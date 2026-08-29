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
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `id_pagamento` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `forma_pagamento` enum('pix','cartao_credito','cartao_debito','boleto') NOT NULL,
  `valor_pagamento` decimal(10,2) NOT NULL,
  `status_pagamento` enum('pendente','aprovado','recusado','cancelado','estornado') DEFAULT 'pendente',
  `parcelas` int DEFAULT '1',
  `codigo_transacao` varchar(100) DEFAULT NULL,
  `data_pagamento` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pagamento`),
  KEY `fk_pagamento_pedido` (`id_pedido`),
  KEY `idx_pagamentos_status` (`status_pagamento`),
  CONSTRAINT `fk_pagamento_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (1,1,'pix',273.63,'aprovado',1,'PIX000001','2026-04-02 10:18:00'),(2,2,'cartao_credito',866.74,'aprovado',3,'CC000002','2026-04-07 14:25:00'),(3,3,'boleto',199.50,'aprovado',1,'BOL000003','2026-04-13 10:00:00'),(4,4,'cartao_credito',2199.84,'aprovado',10,'CC000004','2026-04-20 16:15:00'),(5,5,'pix',357.60,'aprovado',1,'PIX000005','2026-04-28 12:03:00'),(6,6,'cartao_credito',1181.33,'aprovado',6,'CC000006','2026-05-03 11:50:00'),(7,7,'pix',261.63,'aprovado',1,'PIX000007','2026-05-08 18:28:00'),(8,8,'cartao_credito',1679.76,'aprovado',8,'CC000008','2026-05-14 15:55:00'),(9,9,'cartao_debito',384.60,'aprovado',1,'CD000009','2026-05-20 13:15:00'),(10,10,'cartao_credito',2927.76,'aprovado',10,'CC000010','2026-05-26 20:35:00'),(11,11,'pix',499.80,'aprovado',1,'PIX000011','2026-06-01 09:13:00'),(12,12,'cartao_debito',459.80,'aprovado',1,'CD000012','2026-06-06 10:45:00'),(13,13,'cartao_credito',408.63,'aprovado',2,'CC000013','2026-06-11 15:00:00'),(14,14,'pix',469.70,'aprovado',1,'PIX000014','2026-06-17 16:40:00'),(15,15,'boleto',294.50,'aprovado',1,'BOL000015','2026-06-25 09:10:00'),(16,16,'cartao_credito',875.33,'aprovado',5,'CC000016','2026-07-02 10:25:00'),(17,17,'pix',1240.66,'aprovado',1,'PIX000017','2026-07-08 13:43:00'),(18,18,'cartao_credito',1647.84,'aprovado',8,'CC000018','2026-07-14 17:30:00'),(19,19,'cartao_credito',2199.84,'aprovado',10,'CC000019','2026-07-20 11:20:00'),(20,20,'pix',455.36,'aprovado',1,'PIX000020','2026-07-27 09:54:00'),(21,21,'cartao_debito',417.70,'aprovado',1,'CD000021','2026-08-02 14:35:00'),(22,22,'pix',261.63,'aprovado',1,'PIX000022','2026-08-08 18:18:00'),(23,23,'cartao_credito',487.50,'aprovado',3,'CC000023','2026-08-14 12:50:00'),(24,24,'pix',769.70,'aprovado',1,'PIX000024','2026-08-20 16:25:00'),(25,25,'boleto',297.63,'pendente',1,'BOL000025','2026-08-25 20:15:00');
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-26 14:31:38
