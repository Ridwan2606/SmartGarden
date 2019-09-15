CREATE DATABASE  IF NOT EXISTS `smartgarden` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smartgarden`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: smartgarden
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `measurements`
--

DROP TABLE IF EXISTS `measurements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `measurements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `temperature` float DEFAULT '0',
  `fanstatus` varchar(3) DEFAULT NULL,
  `timeRecorded` varchar(30) DEFAULT NULL,
  `fetched` varchar(5) DEFAULT 'FALSE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurements`
--

LOCK TABLES `measurements` WRITE;
/*!40000 ALTER TABLE `measurements` DISABLE KEYS */;
INSERT INTO `measurements` VALUES (1,26.875,'OFF','2019-06-12 15:31:29','TRUE'),(2,26.875,'OFF','2019-06-12 15:31:51','TRUE'),(3,26.875,'OFF','2019-06-12 15:32:12','TRUE'),(4,26.875,'OFF','2019-06-12 15:32:34','TRUE'),(5,26.875,'OFF','2019-06-12 15:32:55','TRUE'),(6,26.875,'OFF','2019-06-12 15:33:16','TRUE'),(7,26.875,'OFF','2019-06-12 15:33:38','TRUE'),(8,26.875,'OFF','2019-06-12 15:33:59','TRUE'),(9,26.875,'OFF','2019-06-12 15:34:21','TRUE'),(10,26.312,'OFF','2019-06-12 15:34:42','TRUE'),(11,26.687,'OFF','2019-06-12 15:35:04','TRUE'),(12,27.875,'ON','2019-06-12 15:35:25','TRUE'),(13,29.25,'ON','2019-06-12 15:35:47','TRUE'),(14,28.375,'ON','2019-06-12 15:36:23','TRUE'),(15,28.187,'ON','2019-06-12 15:36:30','TRUE'),(16,28,'ON','2019-06-12 15:36:36','TRUE'),(17,27.875,'ON','2019-06-12 15:36:43','TRUE'),(18,27.75,'ON','2019-06-12 15:36:49','TRUE'),(19,27.687,'ON','2019-06-12 15:36:56','TRUE'),(20,27.562,'ON','2019-06-12 15:37:02','TRUE'),(21,27.5,'ON','2019-06-12 15:37:09','TRUE'),(22,27.437,'ON','2019-06-12 15:37:15','TRUE'),(23,27.375,'ON','2019-06-12 15:37:21','TRUE'),(24,27.312,'ON','2019-06-12 15:37:28','TRUE'),(25,27.312,'ON','2019-06-12 15:37:34','TRUE'),(26,27.25,'ON','2019-06-12 15:37:41','TRUE'),(27,27.125,'ON','2019-06-12 15:37:47','TRUE'),(28,27.125,'ON','2019-06-12 15:37:53','TRUE'),(29,27.062,'ON','2019-06-12 15:38:00','TRUE'),(30,26.937,'OFF','2019-06-12 15:38:06','TRUE'),(31,26.875,'OFF','2019-06-12 15:38:13','TRUE'),(32,26.875,'OFF','2019-06-12 15:38:19','TRUE'),(33,26.875,'OFF','2019-06-12 15:38:26','TRUE'),(34,26.75,'OFF','2019-06-12 15:38:32','TRUE'),(35,26.75,'OFF','2019-06-12 15:38:38','TRUE'),(36,26.687,'OFF','2019-06-12 15:38:45','TRUE'),(37,26.687,'OFF','2019-06-12 15:38:51','TRUE'),(38,26.625,'OFF','2019-06-12 15:38:58','TRUE'),(39,26.625,'OFF','2019-06-12 15:39:04','TRUE'),(40,26.562,'OFF','2019-06-12 15:39:11','TRUE'),(41,26.562,'OFF','2019-06-12 15:39:17','TRUE'),(42,26.562,'OFF','2019-06-12 15:39:23','TRUE'),(43,26.5,'OFF','2019-06-12 15:39:30','TRUE'),(44,26.5,'OFF','2019-06-12 15:39:36','TRUE'),(45,26.437,'OFF','2019-06-12 15:39:43','TRUE'),(46,26.437,'OFF','2019-06-12 15:39:49','TRUE'),(47,26.437,'OFF','2019-06-12 15:39:56','TRUE'),(48,26.375,'OFF','2019-06-12 15:40:02','TRUE'),(49,26.375,'OFF','2019-06-12 15:40:09','TRUE'),(50,26.375,'OFF','2019-06-12 15:40:15','TRUE'),(51,26.375,'OFF','2019-06-12 15:40:21','TRUE'),(52,26.312,'OFF','2019-06-12 15:40:28','TRUE'),(53,26.312,'OFF','2019-06-12 15:40:34','TRUE'),(54,26.312,'OFF','2019-06-12 15:40:41','TRUE'),(55,26.25,'OFF','2019-06-12 15:40:47','TRUE'),(56,26.25,'OFF','2019-06-12 15:40:53','TRUE'),(57,26.25,'OFF','2019-06-12 15:41:00','TRUE'),(58,26.25,'OFF','2019-06-12 15:41:06','TRUE'),(59,26.187,'OFF','2019-06-12 15:41:13','TRUE'),(60,26.187,'OFF','2019-06-12 15:41:19','TRUE'),(61,26.187,'OFF','2019-06-12 15:41:26','TRUE'),(62,26.187,'OFF','2019-06-12 15:41:32','TRUE'),(63,26.187,'OFF','2019-06-12 15:41:39','TRUE'),(64,26.125,'OFF','2019-06-12 15:41:45','TRUE'),(65,26.125,'OFF','2019-06-12 15:41:51','TRUE'),(66,26.125,'OFF','2019-06-12 15:41:58','TRUE'),(67,26.125,'OFF','2019-06-12 15:42:04','TRUE'),(68,26.125,'OFF','2019-06-12 15:42:11','TRUE'),(69,26.125,'OFF','2019-06-12 15:42:17','TRUE'),(70,26.125,'OFF','2019-06-12 15:42:24','TRUE'),(71,26.125,'OFF','2019-06-12 15:42:30','TRUE'),(72,26.062,'OFF','2019-06-12 15:42:36','TRUE'),(73,26.062,'OFF','2019-06-12 15:42:43','TRUE'),(74,26.062,'OFF','2019-06-12 15:42:49','TRUE'),(75,26.062,'OFF','2019-06-12 15:42:56','TRUE'),(76,26.062,'OFF','2019-06-12 15:43:02','TRUE'),(77,26.062,'OFF','2019-06-12 15:43:09','TRUE'),(78,26,'OFF','2019-06-12 15:43:15','TRUE'),(79,26,'OFF','2019-06-12 15:43:21','TRUE'),(80,26,'OFF','2019-06-12 15:43:28','TRUE'),(81,27,'ON','2019-06-12 15:43:34','TRUE'),(82,27.25,'ON','2019-06-12 15:43:41','TRUE'),(83,27.187,'ON','2019-06-12 15:43:47','TRUE'),(84,27.062,'ON','2019-06-12 15:43:54','TRUE'),(85,27,'ON','2019-06-12 15:44:00','TRUE'),(86,26.937,'OFF','2019-06-12 15:44:07','TRUE'),(87,26.875,'OFF','2019-06-12 15:44:13','TRUE'),(88,26.812,'OFF','2019-06-12 15:44:19','TRUE'),(89,26.75,'OFF','2019-06-12 15:44:26','TRUE'),(90,26.687,'OFF','2019-06-12 15:44:32','TRUE'),(91,26.625,'OFF','2019-06-12 15:44:39','TRUE'),(92,26.625,'OFF','2019-06-12 15:44:45','TRUE'),(93,26.625,'OFF','2019-06-12 15:44:52','TRUE'),(94,26.562,'OFF','2019-06-12 15:44:58','TRUE'),(95,26.562,'OFF','2019-06-12 15:45:05','TRUE'),(96,26.562,'OFF','2019-06-12 15:45:11','TRUE'),(97,26.5,'OFF','2019-06-12 15:45:17','TRUE'),(98,26.5,'OFF','2019-06-12 15:45:24','TRUE'),(99,26.5,'OFF','2019-06-12 15:45:30','TRUE'),(100,26.437,'OFF','2019-06-12 15:45:37','TRUE'),(101,26.437,'OFF','2019-06-12 15:45:43','TRUE'),(102,26.437,'OFF','2019-06-12 15:45:50','TRUE'),(103,26.437,'OFF','2019-06-12 15:45:56','TRUE'),(104,26.375,'OFF','2019-06-12 15:46:03','TRUE'),(105,26.375,'OFF','2019-06-12 15:46:09','TRUE'),(106,26.375,'OFF','2019-06-12 15:46:16','TRUE'),(107,26.312,'OFF','2019-06-12 15:46:22','TRUE'),(108,26.312,'OFF','2019-06-12 15:46:29','TRUE'),(109,26.312,'OFF','2019-06-12 15:46:35','TRUE'),(110,26.312,'OFF','2019-06-12 15:46:41','TRUE'),(111,26.25,'OFF','2019-06-12 15:46:48','TRUE'),(112,32.437,'ON','2019-06-12 16:01:59','TRUE'),(113,32.625,'ON','2019-06-12 16:24:59','TRUE'),(114,32.25,'ON','2019-06-12 16:25:05','TRUE'),(115,31.875,'ON','2019-06-12 16:25:11','TRUE'),(116,31.625,'ON','2019-06-12 16:25:18','TRUE'),(117,31.375,'ON','2019-06-12 16:25:24','TRUE'),(118,31.125,'ON','2019-06-12 16:25:31','TRUE'),(119,29.312,'ON','2019-06-12 16:25:53','TRUE'),(120,29.187,'ON','2019-06-12 16:25:59','TRUE'),(121,29.062,'ON','2019-06-12 16:26:05','TRUE'),(122,29,'ON','2019-06-12 16:27:02','TRUE'),(123,26.562,'OFF','2019-06-12 16:27:17','TRUE'),(124,26.562,'OFF','2019-06-12 16:27:24','TRUE'),(125,26.5,'OFF','2019-06-12 16:27:30','TRUE'),(126,26.437,'OFF','2019-06-12 16:31:23','TRUE'),(127,26.375,'OFF','2019-06-12 16:31:29','TRUE'),(128,26.312,'OFF','2019-06-12 16:31:36','TRUE'),(129,26.375,'OFF','2019-06-12 16:31:42','TRUE'),(130,26.375,'OFF','2019-06-12 16:31:49','TRUE'),(131,26.437,'OFF','2019-06-12 16:31:55','TRUE'),(132,26.437,'OFF','2019-06-12 16:32:01','TRUE'),(133,26.437,'OFF','2019-06-12 16:32:08','TRUE'),(134,26.437,'OFF','2019-06-12 16:32:14','TRUE'),(135,27.062,'ON','2019-06-12 16:32:21','TRUE'),(136,28,'ON','2019-06-12 16:32:27','TRUE'),(137,27.812,'ON','2019-06-12 16:32:33','TRUE'),(138,27.5,'ON','2019-06-12 16:32:40','TRUE'),(139,27.312,'ON','2019-06-12 16:32:46','TRUE'),(140,27.187,'ON','2019-06-12 16:32:53','TRUE'),(141,27.125,'ON','2019-06-12 16:32:59','TRUE'),(142,27.125,'ON','2019-06-12 16:33:05','TRUE'),(143,27.062,'ON','2019-06-12 16:33:12','TRUE'),(144,27.062,'ON','2019-06-12 16:33:18','TRUE'),(145,27,'ON','2019-06-12 16:33:25','TRUE'),(146,26.937,'OFF','2019-06-12 16:33:31','TRUE'),(147,26.875,'OFF','2019-06-12 16:33:37','TRUE'),(148,26.812,'OFF','2019-06-12 16:33:44','TRUE'),(149,26.75,'OFF','2019-06-12 16:33:50','TRUE'),(150,26.75,'OFF','2019-06-12 16:33:57','TRUE'),(151,26.75,'OFF','2019-06-12 16:34:03','TRUE'),(152,26.75,'OFF','2019-06-12 16:34:09','TRUE'),(153,26.812,'OFF','2019-06-12 16:34:16','TRUE'),(154,26.875,'OFF','2019-06-12 16:34:22','TRUE'),(155,26.937,'OFF','2019-06-12 16:34:29','TRUE'),(156,27.25,'ON','2019-06-12 16:34:35','TRUE'),(157,27.187,'ON','2019-06-12 16:34:41','TRUE'),(158,27.187,'ON','2019-06-12 16:34:48','TRUE'),(159,27.125,'ON','2019-06-12 16:34:54','TRUE'),(160,27.062,'ON','2019-06-12 16:35:01','TRUE'),(161,27,'ON','2019-06-12 16:35:07','TRUE'),(162,27,'ON','2019-06-12 16:35:13','TRUE'),(163,27,'ON','2019-06-12 16:35:20','TRUE'),(164,30,'ON','2019-06-03 05:05:05','TRUE');
/*!40000 ALTER TABLE `measurements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'smartgarden'
--

--
-- Dumping routines for database 'smartgarden'
--
/*!50003 DROP PROCEDURE IF EXISTS `ADDRECORD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ADDRECORD`(IN inputtemp FLOAT, IN inputfan VARCHAR(3),IN inputtime VARCHAR(30))
BEGIN
	INSERT INTO measurements (temperature, fanstatus, timeRecorded) VALUES ( inputtemp, inputfan, inputtime) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CLEAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CLEAR`()
BEGIN
	DELETE FROM measurements;
    ALTER TABLE measurements AUTO_INCREMENT = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FETCHNEW` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FETCHNEW`()
BEGIN
	SELECT id, temperature, fanstatus, timeRecorded FROM measurements
    WHERE fetched="FALSE"
    ORDER BY id ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FETCHNEWUPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FETCHNEWUPDATE`()
BEGIN
	SELECT id, temperature, fanstatus, timeRecorded FROM measurements
    WHERE fetched="FALSE"
    ORDER BY id ASC;
    
    UPDATE measurements
    SET fetched="TRUE"
    WHERE fetched="FALSE";

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SELECTALL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECTALL`()
BEGIN
	SELECT * FROM smartgarden.measurements;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SELECTLAST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECTLAST`(IN num INT)
BEGIN
    SELECT X.* FROM (
    SELECT id, temperature, fanstatus, timeRecorded FROM measurements
    ORDER BY id DESC
	LIMIT num ) X
    ORDER BY id ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SELECTLASTUPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECTLASTUPDATE`(IN num INT)
BEGIN

	UPDATE measurements 
	SET fetched = "TRUE";
    
    SELECT X.* FROM (
    SELECT id, temperature, fanstatus, timeRecorded FROM measurements
    ORDER BY id DESC
	LIMIT num ) X
    ORDER BY id ASC;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-28 10:49:55
