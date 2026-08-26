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
-- Table structure for table `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacoes` (
  `id_avaliacao` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_produto` int NOT NULL,
  `nota` tinyint NOT NULL,
  `comentario` text,
  `data_avaliacao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_avaliacao`),
  UNIQUE KEY `uq_avaliacao_cliente_produto` (`id_cliente`,`id_produto`),
  KEY `fk_avaliacao_produto` (`id_produto`),
  CONSTRAINT `fk_avaliacao_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_avaliacao_produto` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_nota` CHECK ((`nota` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoes`
--

LOCK TABLES `avaliacoes` WRITE;
/*!40000 ALTER TABLE `avaliacoes` DISABLE KEYS */;
INSERT INTO `avaliacoes` VALUES (1,1,1,5,'Produto muito bom e chegou dentro do prazo.','2026-04-08 10:30:00'),(2,2,16,4,'Bom aparelho e ótimo custo-benefício.','2026-04-14 14:20:00'),(3,3,11,5,'Livro excelente para começar a estudar SQL.','2026-04-20 09:15:00'),(4,4,20,5,'Computador rápido e bem montado.','2026-04-27 18:40:00'),(5,5,2,4,'Jaqueta bonita e de boa qualidade.','2026-05-05 11:10:00'),(6,6,17,5,'Celular excelente, gostei bastante.','2026-05-10 15:50:00'),(7,7,3,4,'Mochila espaçosa e resistente.','2026-05-15 13:25:00'),(8,8,18,5,'Notebook muito bom para trabalho.','2026-05-22 16:00:00'),(9,9,4,3,'Produto bom, mas poderia ter acabamento melhor.','2026-05-28 10:45:00'),(10,10,19,5,'Excelente desempenho nos jogos.','2026-06-03 20:15:00'),(11,11,5,4,'Tênis confortável para corrida.','2026-06-08 09:30:00'),(12,12,10,4,'Esquenta rápido e funciona muito bem.','2026-06-13 14:00:00'),(13,13,23,5,'Som muito bom e microfone claro.','2026-06-18 11:25:00'),(14,14,28,4,'Cafeteira simples e prática.','2026-06-24 10:10:00'),(15,16,16,5,'Gostei bastante do smartphone.','2026-07-10 17:20:00'),(16,17,17,5,'Ótimo desempenho e boa câmera.','2026-07-16 12:30:00'),(17,20,21,4,'Mouse leve e confortável.','2026-08-05 09:40:00'),(18,1,24,5,'Controle confortável e fácil de conectar.','2026-08-10 14:35:00'),(19,3,27,4,'Panelas bonitas e fáceis de limpar.','2026-08-15 11:55:00'),(20,5,29,5,'Kit ótimo para treinar em casa.','2026-08-22 17:05:00');
/*!40000 ALTER TABLE `avaliacoes` ENABLE KEYS */;
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
