-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: kirala
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Zaman` datetime DEFAULT CURRENT_TIMESTAMP,
  `MethodAdi` varchar(100) DEFAULT NULL,
  `SorguTipi` varchar(45) DEFAULT NULL,
  `Sure` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'2016-12-24 22:02:04','kirala2','Insert',4.19815352),(2,'2016-12-24 22:13:35','Tablom4','Select',0.006548765),(3,'2016-12-24 22:13:55','Tablom4','Select',0.00776968),(4,'2016-12-24 22:16:02','Tablom4','Select',0.315076816),(5,'2016-12-24 22:17:35','Kirala','Delete',0.045611461),(6,'2016-12-24 22:17:36','kirala2','Insert',1.447987769),(7,'2016-12-24 22:24:11','Tablom4','Select',0.313684711),(8,'2016-12-24 23:30:13','giris','Select',0.461111164),(9,'2016-12-24 23:30:15','tablom2','Select',0.00997176),(10,'2016-12-24 23:30:23','kayıt1','Insert',1.32243063),(11,'2016-12-24 23:30:23','Sil','Delete',0.054327411),(12,'2016-12-24 23:30:25','tablom2','Select',0.006727756),(13,'2016-12-24 23:30:30','Tablom1','Select',0.021976051),(14,'2016-12-24 23:31:08','kayıt2','Insert',1.634419444),(15,'2016-12-26 11:06:05','giris','Select',1.181168687),(16,'2016-12-26 11:56:44','giris','Select',0.586323458),(17,'2016-12-26 11:56:48','tablom2','Select',0.048095574),(18,'2016-12-26 11:56:54','Tablom1','Select',0.08470823),(19,'2016-12-26 11:57:18','giris','Select',0.50266372),(20,'2016-12-26 11:57:23','Tablom4','Select',0.080372629),(21,'2016-12-26 12:50:56','giris','Select',1.344342227),(22,'2016-12-26 12:51:01','tablom2','Select',0.009542756),(23,'2016-12-26 12:51:23','Tablom1','Select',0.006337753),(24,'2016-12-26 12:51:27','T1MouseClick','Select',0.104172662),(25,'2016-12-26 15:36:42','giris','Select',1.050315717),(26,'2016-12-26 15:38:15','giris','Select',0.480929472),(27,'2016-12-26 15:39:12','giris','Select',0.500079438),(28,'2016-12-26 17:30:22','giris','Select',0.72355934),(29,'2016-12-26 17:30:24','tablom2','Select',0.009385113),(30,'2016-12-26 17:30:29','Tablom1','Select',0.025683542),(31,'2016-12-26 17:30:30','T1MouseClick','Select',0.011070747),(32,'2016-12-26 17:30:46','giris','Select',0.226069932),(33,'2016-12-26 17:30:48','Tablom4','Select',0.006192426),(34,'2016-12-26 17:30:49','KT2MouseClick','Select',0.022373032),(35,'2016-12-26 17:37:11','giris','Select',0.56856724),(36,'2016-12-26 17:37:13','tablom2','Select',0.008419958),(37,'2016-12-26 17:37:19','Tablom1','Select',0.00636608),(38,'2016-12-26 17:37:23','T1MouseClick','Select',0.012114313),(39,'2016-12-26 23:24:09','giris','Select',0.838856646),(40,'2016-12-27 03:59:46','tablom2','Select',0.74980736),(41,'2016-12-27 04:01:04','Tablom1','Select',0.008603848),(42,'2016-12-27 11:23:13','giris','Select',3.967273933),(43,'2016-12-27 11:24:34','kayıt','Insert',2.08189994),(44,'2016-12-27 12:03:55','Tablom1','Select',0.312115053),(45,'2016-12-27 12:04:38','kayıt','Insert',1.185167867),(46,'2016-12-27 12:05:08','kayıt','Insert',1.977046554),(47,'2016-12-27 12:05:47','kayıt','Insert',1.410849108),(48,'2016-12-27 12:05:48','Tablom1','Select',0.006882503),(49,'2016-12-27 12:39:40','giris','Select',0.560832256),(50,'2016-12-27 12:39:45','tablom2','Select',0.009507419),(51,'2016-12-27 12:39:50','Tablom1','Select',0.006615249),(52,'2016-12-27 13:10:25','giris','Select',0.507668049),(53,'2016-12-27 13:10:31','tablom2','Select',0.008860017),(54,'2016-12-27 13:10:54','Tablom1','Select',0.006963377),(55,'2016-12-27 13:11:04','T1MouseClick','Select',0.01120249),(56,'2016-12-27 13:11:59','kirala_kayıt','Insert',2.488368302),(57,'2016-12-27 13:12:00','Kirala','Delete',0.12122853),(58,'2016-12-27 13:12:00','Tablom1','Select',0.008834154),(59,'2016-12-27 13:12:01','Tablom1','Select',0.005585645),(60,'2016-12-27 13:12:07','tablom2','Select',0.007388274),(61,'2016-12-27 13:12:31','kayıt1','Insert',1.380110408),(62,'2016-12-27 13:12:31','Sil','Delete',0.054848603),(63,'2016-12-27 13:12:35','Tablom1','Select',0.004832326),(64,'2016-12-28 23:24:33','tablom2','Select',0.674322331),(65,'2016-12-28 23:25:07','Tablom1','Select',0.098789476),(66,'2016-12-28 23:25:08','T1MouseClick','Select',0.040740395),(67,'2016-12-28 23:26:24','giris','Select',0.348950916),(68,'2016-12-28 23:26:26','Tablom4','Select',0.007080788),(69,'2016-12-28 23:26:29','KT2MouseClick','Select',0.006509333);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-29  1:45:33
