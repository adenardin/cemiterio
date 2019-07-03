-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: cemiterio
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jazigos`
--

DROP TABLE IF EXISTS `jazigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jazigos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `capacidade` int(11) NOT NULL,
  `disponivel` tinyint(1) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `moradores_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jazigos`
--

LOCK TABLES `jazigos` WRITE;
/*!40000 ALTER TABLE `jazigos` DISABLE KEYS */;
INSERT INTO `jazigos` VALUES (2,2,2,102.34,1,'2019-06-29 22:59:35','2019-06-29 22:59:35'),(3,2,0,102.34,1,'2019-06-29 22:59:45','2019-06-29 22:59:45');
/*!40000 ALTER TABLE `jazigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_06_18_010438_create_moradores_table',1),(4,'2019_06_23_230735_create_jazigos_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moradores`
--

DROP TABLE IF EXISTS `moradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moradores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `num_cert_obito` int(11) NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_falecimento` date NOT NULL,
  `data_sepultamento` date NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_resp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ender_resp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_resp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_para_pagamento` date NOT NULL,
  `data_ultimo_pagamento` date NOT NULL,
  `obs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jazigo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moradores`
--

LOCK TABLES `moradores` WRITE;
/*!40000 ALTER TABLE `moradores` DISABLE KEYS */;
INSERT INTO `moradores` VALUES (1,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-29 18:26:16','2019-06-29 18:26:16'),(3,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 04:21:50','2019-06-30 04:21:50'),(4,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 04:22:55','2019-06-30 04:22:55'),(5,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 04:23:40','2019-06-30 04:23:40'),(6,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 04:23:43','2019-06-30 04:23:43'),(7,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 04:25:07','2019-06-30 04:25:07'),(8,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 04:26:42','2019-06-30 04:26:42'),(9,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 04:27:36','2019-06-30 04:27:36'),(10,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 05:04:53','2019-06-30 05:04:53'),(11,'Anderson Denardin','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 05:07:45','2019-06-30 05:07:45'),(12,'Ketrin Natalie','2019-03-02',123,'00850835003','2019-03-02','2019-03-02','M','Ketrin','Protasio','99999999','2019-03-02','2019-03-02','Teste',1,'2019-06-30 05:08:11','2019-06-30 05:08:11');
/*!40000 ALTER TABLE `moradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test Man','test@email.com',NULL,'$2y$10$kb9OadlRU/dQkzdzcVIhEeEsUzZySShD8dO7Imks0Zb6RsPFruJ7i',NULL,'2019-06-29 17:45:21','2019-06-29 17:45:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-03  0:55:56
