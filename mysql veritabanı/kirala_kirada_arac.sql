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
-- Table structure for table `kirada_arac`
--

DROP TABLE IF EXISTS `kirada_arac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kirada_arac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` varchar(45) NOT NULL,
  `tckimlik` varchar(11) NOT NULL,
  `ad` varchar(45) NOT NULL,
  `soyad` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `adres` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `marka` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `plaka` varchar(45) NOT NULL,
  `vgun` varchar(45) DEFAULT NULL,
  `vkm` varchar(45) DEFAULT NULL,
  `kgun` int(11) NOT NULL,
  `ucret` int(11) NOT NULL,
  `dgun` varchar(45) NOT NULL,
  `gkm` varchar(45) DEFAULT NULL,
  `tucret` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kirada_arac`
--

LOCK TABLES `kirada_arac` WRITE;
/*!40000 ALTER TABLE `kirada_arac` DISABLE KEYS */;
INSERT INTO `kirada_arac` VALUES (3,'KİRALANDİ','1234567890','sibel','köklü','08887776655','dfghjklşi','dfghjklş','renault','clio','35-ks-2789','18-12-2016','12000',3,115,'21-12-2016',NULL,345),(4,'KIRALANDI','11111111111','eda','akın','05554447788','dfghjklfghjklş','dfghjklşdfghjk','nissan','micra','34 ok 456','24-12-2016','3000',2,99,'26-12-2016',NULL,198),(5,'KIRALANDI','22222222222','büşra','okun','05556667788','dfgklşdfhjklş','dfghjklşfghjkl','nissan','juke','34 uj 6789','24-12-2016','1000',4,129,'28-12-2016',NULL,516);
/*!40000 ALTER TABLE `kirada_arac` ENABLE KEYS */;
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
