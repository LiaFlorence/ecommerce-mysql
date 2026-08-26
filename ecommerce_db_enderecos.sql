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
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `cep` varchar(9) NOT NULL,
  `logradouro` varchar(150) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` char(2) NOT NULL,
  `tipo_endereco` enum('residencial','comercial','outro') DEFAULT 'residencial',
  PRIMARY KEY (`id_endereco`),
  KEY `fk_endereco_cliente` (`id_cliente`),
  CONSTRAINT `fk_endereco_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,1,'51020-000','Rua das Flores','120','Apto 301','Boa Viagem','Recife','PE','residencial'),(2,2,'50050-010','Rua da Aurora','850',NULL,'Boa Vista','Recife','PE','residencial'),(3,3,'54400-100','Rua São Sebastião','45',NULL,'Piedade','Jaboatão dos Guararapes','PE','residencial'),(4,4,'52060-020','Avenida Norte','1550','Casa 2','Casa Amarela','Recife','PE','residencial'),(5,5,'53030-010','Rua do Sol','321',NULL,'Bairro Novo','Olinda','PE','residencial'),(6,6,'51021-120','Rua Ribeiro de Brito','780','Apto 402','Boa Viagem','Recife','PE','residencial'),(7,7,'50070-200','Rua Benfica','210',NULL,'Madalena','Recife','PE','residencial'),(8,8,'52011-050','Rua das Graças','75',NULL,'Graças','Recife','PE','residencial'),(9,9,'54410-020','Avenida Bernardo Vieira de Melo','2200','Apto 804','Piedade','Jaboatão dos Guararapes','PE','residencial'),(10,10,'50030-230','Rua do Imperador','90',NULL,'Santo Antônio','Recife','PE','comercial'),(11,11,'50720-110','Rua Real da Torre','600',NULL,'Madalena','Recife','PE','residencial'),(12,12,'52050-120','Rua Conselheiro Portela','340','Apto 201','Espinheiro','Recife','PE','residencial'),(13,13,'51030-040','Rua Antônio Falcão','450',NULL,'Boa Viagem','Recife','PE','residencial'),(14,14,'54420-010','Rua José da Silva','54',NULL,'Candeias','Jaboatão dos Guararapes','PE','residencial'),(15,15,'53020-080','Avenida Getúlio Vargas','930',NULL,'Bairro Novo','Olinda','PE','residencial'),(16,16,'50740-000','Rua da Várzea','117','Casa A','Várzea','Recife','PE','residencial'),(17,17,'52020-060','Rua do Futuro','180',NULL,'Graças','Recife','PE','residencial'),(18,18,'51011-040','Rua Capitão Rebelinho','250',NULL,'Pina','Recife','PE','residencial'),(19,19,'54430-090','Rua Jangadeiro','76','Bloco B','Candeias','Jaboatão dos Guararapes','PE','residencial'),(20,20,'50010-120','Rua do Apolo','33',NULL,'Recife Antigo','Recife','PE','comercial');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
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
