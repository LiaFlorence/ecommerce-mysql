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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_endereco` int NOT NULL,
  `id_cupom` int DEFAULT NULL,
  `data_pedido` datetime DEFAULT CURRENT_TIMESTAMP,
  `status_pedido` enum('aguardando_pagamento','pago','processando','enviado','entregue','cancelado') DEFAULT 'aguardando_pagamento',
  `subtotal` decimal(10,2) NOT NULL,
  `valor_frete` decimal(10,2) DEFAULT '0.00',
  `valor_desconto` decimal(10,2) DEFAULT '0.00',
  `valor_total` decimal(10,2) NOT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_cliente` (`id_cliente`),
  KEY `fk_pedido_endereco` (`id_endereco`),
  KEY `fk_pedido_cupom` (`id_cupom`),
  KEY `idx_pedidos_data` (`data_pedido`),
  KEY `idx_pedidos_status` (`status_pedido`),
  CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_pedido_cupom` FOREIGN KEY (`id_cupom`) REFERENCES `cupons` (`id_cupom`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_pedido_endereco` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id_endereco`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,1,1,'2026-04-02 10:15:00','entregue',289.70,12.90,28.97,273.63,NULL),(2,2,2,3,'2026-04-07 14:20:00','entregue',1019.70,0.00,152.96,866.74,NULL),(3,3,3,NULL,'2026-04-12 09:30:00','entregue',189.60,9.90,0.00,199.50,NULL),(4,4,4,5,'2026-04-20 16:10:00','entregue',2749.80,0.00,549.96,2199.84,'Entregar após 14h'),(5,5,5,2,'2026-04-28 12:00:00','entregue',369.70,12.90,25.00,357.60,NULL),(6,6,6,3,'2026-05-03 11:45:00','entregue',1389.80,0.00,208.47,1181.33,NULL),(7,7,7,1,'2026-05-08 18:25:00','entregue',279.70,9.90,27.97,261.63,NULL),(8,8,8,5,'2026-05-14 15:50:00','entregue',2099.70,0.00,419.94,1679.76,NULL),(9,9,9,NULL,'2026-05-20 13:10:00','entregue',369.70,14.90,0.00,384.60,NULL),(10,10,10,5,'2026-05-26 20:30:00','entregue',3659.70,0.00,731.94,2927.76,'Pedido de alto valor'),(11,11,11,4,'2026-06-01 09:10:00','entregue',549.80,0.00,50.00,499.80,NULL),(12,12,12,4,'2026-06-06 10:40:00','entregue',509.80,0.00,50.00,459.80,NULL),(13,13,13,1,'2026-06-11 14:55:00','entregue',439.70,12.90,43.97,408.63,NULL),(14,14,14,4,'2026-06-17 16:35:00','entregue',519.70,0.00,50.00,469.70,NULL),(15,15,15,2,'2026-06-24 19:15:00','enviado',309.60,9.90,25.00,294.50,NULL),(16,16,16,3,'2026-07-02 10:20:00','entregue',1029.80,0.00,154.47,875.33,NULL),(17,17,17,3,'2026-07-08 13:40:00','entregue',1459.60,0.00,218.94,1240.66,NULL),(18,18,18,5,'2026-07-14 17:25:00','enviado',2059.80,0.00,411.96,1647.84,NULL),(19,19,19,5,'2026-07-20 11:15:00','processando',2749.80,0.00,549.96,2199.84,NULL),(20,20,20,1,'2026-07-27 09:50:00','entregue',489.40,14.90,48.94,455.36,NULL),(21,1,1,2,'2026-08-02 14:30:00','entregue',429.80,12.90,25.00,417.70,NULL),(22,3,3,1,'2026-08-08 18:15:00','enviado',279.70,9.90,27.97,261.63,NULL),(23,5,5,2,'2026-08-14 12:45:00','processando',499.60,12.90,25.00,487.50,NULL),(24,7,7,4,'2026-08-20 16:20:00','pago',819.70,0.00,50.00,769.70,NULL),(25,10,10,1,'2026-08-25 20:10:00','aguardando_pagamento',319.70,9.90,31.97,297.63,NULL);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-26 14:31:37
