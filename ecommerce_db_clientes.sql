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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_clientes_nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana Beatriz Souza','111.111.111-01','ana.souza@email.com','(81) 99911-1001','1995-03-12','2026-01-10 10:15:00',1),(2,'Bruno Henrique Lima','111.111.111-02','bruno.lima@email.com','(81) 99911-1002','1990-07-24','2026-01-18 14:20:00',1),(3,'Carla Mendes Oliveira','111.111.111-03','carla.oliveira@email.com','(81) 99911-1003','1998-11-05','2026-02-02 09:10:00',1),(4,'Daniel Ferreira Santos','111.111.111-04','daniel.santos@email.com','(81) 99911-1004','1987-05-16','2026-02-15 16:40:00',1),(5,'Eduarda Martins Costa','111.111.111-05','eduarda.costa@email.com','(81) 99911-1005','2001-01-30','2026-02-27 11:32:00',1),(6,'Felipe Alves Rocha','111.111.111-06','felipe.rocha@email.com','(81) 99911-1006','1993-09-18','2026-03-03 13:50:00',1),(7,'Gabriela Ribeiro Melo','111.111.111-07','gabriela.melo@email.com','(81) 99911-1007','1997-06-08','2026-03-12 18:25:00',1),(8,'Henrique Barros Silva','111.111.111-08','henrique.silva@email.com','(81) 99911-1008','1989-12-22','2026-03-21 08:45:00',1),(9,'Isabela Freitas Gomes','111.111.111-09','isabela.gomes@email.com','(81) 99911-1009','1999-04-10','2026-04-01 12:00:00',1),(10,'João Victor Pereira','111.111.111-10','joao.pereira@email.com','(81) 99911-1010','1994-02-28','2026-04-11 15:37:00',1),(11,'Larissa Almeida Silva','111.111.111-11','larissa.silva@email.com','(81) 99911-1011','1996-08-15','2026-04-24 17:12:00',1),(12,'Marcos Vinicius Lopes','111.111.111-12','marcos.lopes@email.com','(81) 99911-1012','1988-10-04','2026-05-02 10:24:00',1),(13,'Natalia Barbosa Lima','111.111.111-13','natalia.lima@email.com','(81) 99911-1013','2000-05-19','2026-05-14 09:33:00',1),(14,'Otavio Moreira Costa','111.111.111-14','otavio.costa@email.com','(81) 99911-1014','1992-03-02','2026-05-28 14:11:00',1),(15,'Patricia Nunes Rocha','111.111.111-15','patricia.rocha@email.com','(81) 99911-1015','1985-07-07','2026-06-04 11:09:00',1),(16,'Rafael Carvalho Souza','111.111.111-16','rafael.souza@email.com','(81) 99911-1016','1991-11-11','2026-06-16 16:15:00',1),(17,'Sabrina Moura Alves','111.111.111-17','sabrina.alves@email.com','(81) 99911-1017','1998-01-20','2026-07-01 13:36:00',1),(18,'Thiago Fernandes Lima','111.111.111-18','thiago.lima@email.com','(81) 99911-1018','1993-06-25','2026-07-18 19:20:00',1),(19,'Vanessa Castro Melo','111.111.111-19','vanessa.melo@email.com','(81) 99911-1019','1997-09-03','2026-08-02 10:02:00',1),(20,'William Araújo Santos','111.111.111-20','william.santos@email.com','(81) 99911-1020','1990-04-14','2026-08-15 18:44:00',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
