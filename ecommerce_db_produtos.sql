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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `id_fornecedor` int DEFAULT NULL,
  `nome_produto` varchar(150) NOT NULL,
  `descricao` text,
  `sku` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `custo` decimal(10,2) DEFAULT NULL,
  `peso` decimal(10,3) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT '1',
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_produto`),
  UNIQUE KEY `sku` (`sku`),
  KEY `fk_produto_categoria` (`id_categoria`),
  KEY `fk_produto_fornecedor` (`id_fornecedor`),
  KEY `idx_produtos_nome` (`nome_produto`),
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_produto_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`id_fornecedor`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,4,4,'Tênis Casual Urban','Tênis casual unissex para uso diário','MOD-001',129.90,75.00,0.650,1,'2026-08-26 10:24:09'),(2,4,4,'Jaqueta Jeans Premium','Jaqueta jeans de corte moderno','MOD-002',249.90,145.00,0.850,1,'2026-08-26 10:24:09'),(3,4,4,'Mochila Casual','Mochila resistente com múltiplos compartimentos','MOD-003',89.90,45.00,0.450,1,'2026-08-26 10:24:09'),(4,4,4,'Relógio Casual','Relógio analógico com pulseira ajustável','MOD-004',159.90,88.00,0.200,1,'2026-08-26 10:24:09'),(5,4,4,'Tênis Running Pro','Tênis esportivo leve para corrida','MOD-005',349.90,210.00,0.700,1,'2026-08-26 10:24:09'),(6,5,3,'Kit Skincare Facial','Kit para rotina diária de cuidados faciais','BEL-001',79.90,39.00,0.400,1,'2026-08-26 10:24:09'),(7,5,3,'Perfume Essence 100ml','Fragrância feminina de longa duração','BEL-002',119.90,62.00,0.350,1,'2026-08-26 10:24:09'),(8,5,3,'Kit Maquiagem Básico','Kit com itens essenciais de maquiagem','BEL-003',59.90,28.00,0.300,1,'2026-08-26 10:24:09'),(9,5,3,'Secador de Cabelo 2000W','Secador potente com duas velocidades','BEL-004',199.90,120.00,0.900,1,'2026-08-26 10:24:09'),(10,5,3,'Chapinha Profissional','Prancha alisadora com controle de temperatura','BEL-005',289.90,170.00,0.650,1,'2026-08-26 10:24:09'),(11,7,3,'Livro SQL para Iniciantes','Introdução prática a bancos de dados SQL','LIV-001',39.90,20.00,0.320,1,'2026-08-26 10:24:09'),(12,7,3,'Livro Python na Prática','Programação Python com exercícios','LIV-002',69.90,35.00,0.450,1,'2026-08-26 10:24:09'),(13,7,3,'Livro Banco de Dados','Modelagem e fundamentos de banco de dados','LIV-003',99.90,50.00,0.600,1,'2026-08-26 10:24:09'),(14,7,3,'Box Fantasia Épica','Coleção com três livros de fantasia','LIV-004',149.90,80.00,1.400,1,'2026-08-26 10:24:09'),(15,7,3,'Livro Gestão de Tecnologia','Fundamentos de gestão aplicada à TI','LIV-005',219.90,125.00,0.750,1,'2026-08-26 10:24:09'),(16,1,1,'Smartphone Alpha 128GB','Smartphone com 128GB de armazenamento','ELE-001',899.90,650.00,0.450,1,'2026-08-26 10:24:09'),(17,1,1,'Smartphone Pro 256GB','Smartphone premium com 256GB','ELE-002',1299.90,930.00,0.480,1,'2026-08-26 10:24:09'),(18,2,2,'Notebook Office 15','Notebook para estudo e trabalho','INF-001',1999.90,1550.00,1.800,1,'2026-08-26 10:24:09'),(19,2,2,'Notebook Gamer X','Notebook gamer de alto desempenho','INF-002',3499.90,2700.00,2.500,1,'2026-08-26 10:24:09'),(20,2,2,'Desktop Gamer Pro','Computador gamer completo','INF-003',2499.90,1850.00,7.500,1,'2026-08-26 10:24:09'),(21,2,2,'Mouse Gamer RGB','Mouse gamer com iluminação RGB','INF-004',59.90,28.00,0.180,1,'2026-08-26 10:24:09'),(22,2,2,'Teclado Mecânico','Teclado mecânico com iluminação','INF-005',89.90,45.00,0.850,1,'2026-08-26 10:24:09'),(23,2,2,'Headset Gamer','Headset com microfone e som estéreo','INF-006',129.90,70.00,0.400,1,'2026-08-26 10:24:09'),(24,8,6,'Controle Wireless','Controle sem fio para PC e console','GAM-001',179.90,105.00,0.320,1,'2026-08-26 10:24:09'),(25,8,6,'Cadeira Gamer Basic','Cadeira gamer ergonômica','GAM-002',249.90,160.00,12.000,1,'2026-08-26 10:24:09'),(26,3,3,'Jogo de Toalhas Premium','Conjunto de toalhas macias','CAS-001',49.90,25.00,0.800,1,'2026-08-26 10:24:09'),(27,3,3,'Kit Panelas 5 Peças','Conjunto de panelas antiaderentes','CAS-002',79.90,42.00,3.500,1,'2026-08-26 10:24:09'),(28,3,3,'Cafeteira Elétrica','Cafeteira elétrica de 30 xícaras','CAS-003',119.90,68.00,1.200,1,'2026-08-26 10:24:09'),(29,6,5,'Kit Academia Casa','Kit básico para exercícios domésticos','ESP-001',169.90,98.00,4.000,1,'2026-08-26 10:24:09'),(30,6,5,'Bicicleta Ergométrica','Bicicleta para treino residencial','ESP-002',229.90,145.00,18.000,1,'2026-08-26 10:24:09');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
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
