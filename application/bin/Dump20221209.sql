-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: squid
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `fk_authorId` int NOT NULL,
  `fk_postId` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `commentPost_idx` (`fk_postId`),
  KEY `commentAuthor_idx` (`fk_authorId`),
  CONSTRAINT `commentAuthor` FOREIGN KEY (`fk_authorId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `commentPost` FOREIGN KEY (`fk_postId`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (11,'0',31,23,'2022-12-08 13:30:13'),(12,'1',31,23,'2022-12-08 13:36:50'),(13,'3',31,23,'2022-12-08 13:48:01'),(14,'3',31,23,'2022-12-08 13:48:02'),(15,'cdwbcjbwcbdwbc`',31,23,'2022-12-08 13:48:19'),(16,'cknvdj',30,23,'2022-12-08 16:11:08');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_authorId` int NOT NULL,
  `image` varchar(4096) NOT NULL,
  `thumbnail` varchar(4096) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `postID_UNIQUE` (`id`),
  KEY `postAuthor_idx` (`fk_authorId`),
  CONSTRAINT `postAuthor` FOREIGN KEY (`fk_authorId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (23,'0','2022-12-08 13:29:35',31,'public/images/uploads/uploadImage - 1670534975699-185967968.png','public/images/uploads/thumbnail-uploadImage - 1670534975699-185967968.png','0'),(24,'1','2022-12-08 19:14:10',30,'public/images/uploads/uploadImage - 1670555649843-666450937.png','public/images/uploads/thumbnail-uploadImage - 1670555649843-666450937.png','1'),(25,'2','2022-12-08 19:14:28',30,'public/images/uploads/uploadImage - 1670555668328-193986716.png','public/images/uploads/thumbnail-uploadImage - 1670555668328-193986716.png','1000'),(26,'lol','2022-12-08 19:14:53',30,'public/images/uploads/uploadImage - 1670555693125-368631246.jpeg','public/images/uploads/thumbnail-uploadImage - 1670555693125-368631246.jpeg','33'),(27,'big','2022-12-08 19:17:19',30,'public/images/uploads/uploadImage - 1670555839805-950527556.jpeg','public/images/uploads/thumbnail-uploadImage - 1670555839805-950527556.jpeg','lol'),(28,'big','2022-12-08 19:17:59',30,'public/images/uploads/uploadImage - 1670555879530-839873026.jpeg','public/images/uploads/thumbnail-uploadImage - 1670555879530-839873026.jpeg','hehe'),(29,'tall','2022-12-08 20:15:10',30,'public/images/uploads/uploadImage - 1670559310430-31801405.jpeg','public/images/uploads/thumbnail-uploadImage - 1670559310430-31801405.jpeg','tall'),(30,'wide','2022-12-08 20:19:14',30,'public/images/uploads/uploadImage - 1670559553839-509872583.jpeg','public/images/uploads/thumbnail-uploadImage - 1670559553839-509872583.jpeg','wide'),(31,'newline','2022-12-08 20:40:35',30,'public/images/uploads/uploadImage - 1670560835675-762170090.jpeg','public/images/uploads/thumbnail-uploadImage - 1670560835675-762170090.jpeg','he'),(32,'newline 1','2022-12-08 20:40:53',30,'public/images/uploads/uploadImage - 1670560853548-629033924.png','public/images/uploads/thumbnail-uploadImage - 1670560853548-629033924.png','07'),(33,'tall1','2022-12-08 20:41:07',30,'public/images/uploads/uploadImage - 1670560867427-831711552.png','public/images/uploads/thumbnail-uploadImage - 1670560867427-831711552.png','dede'),(34,'ff','2022-12-08 20:41:26',30,'public/images/uploads/uploadImage - 1670560886953-717871408.jpeg','public/images/uploads/thumbnail-uploadImage - 1670560886953-717871408.jpeg','ddd'),(35,'tall','2022-12-09 16:07:21',30,'public/images/uploads/uploadImage - 1670630841454-52241236.jpeg','public/images/uploads/thumbnail-uploadImage - 1670630841454-52241236.jpeg','tall'),(36,'wide','2022-12-09 16:07:57',30,'public/images/uploads/uploadImage - 1670630877459-390587020.jpeg','public/images/uploads/thumbnail-uploadImage - 1670630877459-390587020.jpeg','wide'),(37,'brick','2022-12-09 16:08:18',30,'public/images/uploads/uploadImage - 1670630898616-815608165.jpeg','public/images/uploads/thumbnail-uploadImage - 1670630898616-815608165.jpeg','brick'),(38,'bye?','2022-12-09 16:10:15',30,'public/images/uploads/uploadImage - 1670631015618-334413112.jpeg','public/images/uploads/thumbnail-uploadImage - 1670631015618-334413112.jpeg','bye');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('mFYCFWULGrjiBCx1ogCDQcKvIjLO3Hd-',1670718820,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"userId\":30,\"username\":\"GANG SHIT THAT\'S ALL I\'M ON\"}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `idusersTable_UNIQUE` (`userId`),
  UNIQUE KEY `userName_UNIQUE` (`username`),
  UNIQUE KEY `userEmail_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (29,'bob','1@1.com','$2b$04$41aIpnw/CA17BcfJfkDOK.Uo22Kbs3CUyUQEhgLOiP..jsD80FztK','2022-12-01 21:22:23'),(30,'GANG SHIT THAT\'S ALL I\'M ON','SLAUGHTER@GANG.COM','$2b$04$hKRgi2isZQ6QZrRCR9AwdeHsu39DSQK3y4AlJYGs4SUd5DLVHcWPm','2022-12-05 14:16:21'),(31,'everyone','34@gmail.com','$2b$04$Q5xmBJ/n8JJARSz5Asp2puUnZ.8Gn0vjhbgeeC0itq6jLzQhVKQjO','2022-12-08 12:37:01');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-09 16:41:50
