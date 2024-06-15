-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ludotheque
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `ludotheque_auteurs`
--

DROP TABLE IF EXISTS `ludotheque_auteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ludotheque_auteurs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ludotheque_auteurs`
--

LOCK TABLES `ludotheque_auteurs` WRITE;
/*!40000 ALTER TABLE `ludotheque_auteurs` DISABLE KEYS */;
INSERT INTO `ludotheque_auteurs` VALUES (4,'Robbins','Merle','72',''),(6,'llk','k,k,','19','images/Ephraim_Hertzano.jpg');
/*!40000 ALTER TABLE `ludotheque_auteurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ludotheque_categories`
--

DROP TABLE IF EXISTS `ludotheque_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ludotheque_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `desc` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ludotheque_categories`
--

LOCK TABLES `ludotheque_categories` WRITE;
/*!40000 ALTER TABLE `ludotheque_categories` DISABLE KEYS */;
INSERT INTO `ludotheque_categories` VALUES (1,'Cartes','Jeu de cartes'),(2,'Jeux sur plateau','');
/*!40000 ALTER TABLE `ludotheque_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ludotheque_commentaires`
--

DROP TABLE IF EXISTS `ludotheque_commentaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ludotheque_commentaires` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `note` varchar(100) NOT NULL,
  `commentaire` longtext,
  `date` date NOT NULL,
  `jeux_id` bigint NOT NULL,
  `joueurs_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ludotheque_commentaires_jeux_id_4f19d2db_fk_ludotheque_jeux_id` (`jeux_id`),
  KEY `ludotheque_commentai_joueurs_id_b8f8d564_fk_ludothequ` (`joueurs_id`),
  CONSTRAINT `ludotheque_commentai_joueurs_id_b8f8d564_fk_ludothequ` FOREIGN KEY (`joueurs_id`) REFERENCES `ludotheque_joueurs` (`id`),
  CONSTRAINT `ludotheque_commentaires_jeux_id_4f19d2db_fk_ludotheque_jeux_id` FOREIGN KEY (`jeux_id`) REFERENCES `ludotheque_jeux` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ludotheque_commentaires`
--

LOCK TABLES `ludotheque_commentaires` WRITE;
/*!40000 ALTER TABLE `ludotheque_commentaires` DISABLE KEYS */;
INSERT INTO `ludotheque_commentaires` VALUES (8,'9','test','2024-05-05',11,8);
/*!40000 ALTER TABLE `ludotheque_commentaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ludotheque_jeux`
--

DROP TABLE IF EXISTS `ludotheque_jeux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ludotheque_jeux` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `anneeSortie` int NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `editeur` varchar(100) NOT NULL,
  `auteur_id` bigint NOT NULL,
  `cat_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ludotheque_jeux_auteur_id_0e61e11b_fk_ludotheque_auteurs_id` (`auteur_id`),
  KEY `ludotheque_jeux_cat_id_abfebf5f_fk_ludotheque_categories_id` (`cat_id`),
  CONSTRAINT `ludotheque_jeux_auteur_id_0e61e11b_fk_ludotheque_auteurs_id` FOREIGN KEY (`auteur_id`) REFERENCES `ludotheque_auteurs` (`id`),
  CONSTRAINT `ludotheque_jeux_cat_id_abfebf5f_fk_ludotheque_categories_id` FOREIGN KEY (`cat_id`) REFERENCES `ludotheque_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ludotheque_jeux`
--

LOCK TABLES `ludotheque_jeux` WRITE;
/*!40000 ALTER TABLE `ludotheque_jeux` DISABLE KEYS */;
INSERT INTO `ludotheque_jeux` VALUES (10,'Rummikub',2000,'images/rummikub.jpg','Ok',4,2),(11,'Uno',1973,'images/rummikub_cRPjj2P.jpg','oioi',4,1);
/*!40000 ALTER TABLE `ludotheque_jeux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ludotheque_joueurs`
--

DROP TABLE IF EXISTS `ludotheque_joueurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ludotheque_joueurs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ludotheque_joueurs`
--

LOCK TABLES `ludotheque_joueurs` WRITE;
/*!40000 ALTER TABLE `ludotheque_joueurs` DISABLE KEYS */;
INSERT INTO `ludotheque_joueurs` VALUES (5,'Schermesser','Evan','evan@schermesser.net','toto','particulier'),(6,'Beltran','Loan','loan.beltran@uha.fr','1234','particulier'),(7,'Knoblauch','Benjamin','benjamin.knoblauch@uha.fr','ouistiti','particulier'),(8,'Adam','Kylian','adam@kylian.fr','ok','professionnel');
/*!40000 ALTER TABLE `ludotheque_joueurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ludotheque_listejeuxjoueurs`
--

DROP TABLE IF EXISTS `ludotheque_listejeuxjoueurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ludotheque_listejeuxjoueurs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jeux_id` bigint NOT NULL,
  `joueurs_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ludotheque_listejeux_jeux_id_473a7814_fk_ludothequ` (`jeux_id`),
  KEY `ludotheque_listejeux_joueurs_id_2faa4275_fk_ludothequ` (`joueurs_id`),
  CONSTRAINT `ludotheque_listejeux_jeux_id_473a7814_fk_ludothequ` FOREIGN KEY (`jeux_id`) REFERENCES `ludotheque_jeux` (`id`),
  CONSTRAINT `ludotheque_listejeux_joueurs_id_2faa4275_fk_ludothequ` FOREIGN KEY (`joueurs_id`) REFERENCES `ludotheque_joueurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ludotheque_listejeuxjoueurs`
--

LOCK TABLES `ludotheque_listejeuxjoueurs` WRITE;
/*!40000 ALTER TABLE `ludotheque_listejeuxjoueurs` DISABLE KEYS */;
INSERT INTO `ludotheque_listejeuxjoueurs` VALUES (10,10,5);
/*!40000 ALTER TABLE `ludotheque_listejeuxjoueurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-14 21:11:03
