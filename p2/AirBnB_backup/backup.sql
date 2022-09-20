CREATE DATABASE  IF NOT EXISTS `AirBnB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `AirBnB`;
--

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
-- Table structure for table `accountPayable`
--

DROP TABLE IF EXISTS `accountPayable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountPayable` (
  `id_acctPayable` int NOT NULL AUTO_INCREMENT,
  `amount` int DEFAULT NULL,
  `orgName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_acctPayable`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='To define user as Guest or Host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountPayable`
--

LOCK TABLES `accountPayable` WRITE;
/*!40000 ALTER TABLE `accountPayable` DISABLE KEYS */;
INSERT INTO `accountPayable` VALUES (1,8785922,'Treutel Inc','61950 Wilson Parkway Apt. 499\nSouth Sibyl, OH 0958','1995-01-05 10:55:37','1987-10-27 08:59:42'),(2,1839387,'Bailey, Cormier and Wiza','894 Kendall Trail\nHerzogton, NY 17795-4025','1994-06-24 02:54:44','1993-04-09 11:03:32'),(3,1145380,'VonRueden Ltd','76434 Braun Street\nWest Jettmouth, WI 83879','2008-05-13 18:26:07','1989-07-20 02:41:25'),(4,8054806,'Runolfsdottir PLC','52882 Benton Knoll\nEast Lavada, TX 66574','1970-05-31 20:47:51','1993-01-26 22:00:20'),(5,9705992,'Wolf Inc','8946 Kerluke Vista\nHoracechester, MD 33443','2006-12-25 14:19:48','2013-02-24 12:15:01'),(6,8399297,'Adams-Renner','4180 Bode Rue Suite 007\nWest Darleneton, ME 42943-','1978-11-15 03:08:49','1983-08-03 18:41:36'),(7,6114609,'Grimes PLC','44391 Koch Drive Apt. 993\nSouth Jeffereychester, N','2007-10-11 23:35:12','2006-06-24 18:50:43'),(8,8230085,'Robel, Kiehn and Kuhic','354 Beatty Green Apt. 588\nHeidenreichville, NY 413','2007-04-15 01:11:36','1972-06-08 09:44:04'),(9,4317943,'Rempel Inc','430 Nicholas Forks Apt. 238\nIsadoreland, MS 70030-','1990-07-18 07:13:39','2019-10-06 00:03:40'),(10,6804273,'Orn-Aufderhar','55335 Connelly Crest\nEast Irmaborough, CA 71107-05','2010-12-30 23:24:10','2007-01-19 23:56:32'),(11,8585218,'Ferry Group','32840 Sonya Lane\nSouth Macie, NV 22273','1972-05-29 02:58:48','2000-07-29 18:09:52'),(12,7154032,'Kuhic-Reinger','91568 Dell Manors\nAndersonshire, NV 36253-3920','2003-05-31 18:52:44','2015-10-15 19:31:18'),(13,7303558,'McCullough, Harris and Kihn','0501 Arielle Parkway\nQuigleychester, VA 65109-7690','1971-06-27 23:05:32','2013-08-27 20:07:29'),(14,2398974,'Collins, Bailey and Mills','72467 Lockman Shore\nEast Destinee, UT 63238','1976-01-29 07:14:17','1990-07-16 06:37:45'),(15,7062881,'Dooley-Willms','00275 Camilla Stravenue\nSouth Fredericmouth, ID 99','2014-08-11 18:59:20','1981-11-08 03:50:30'),(16,2625134,'Buckridge Group','2840 Tremblay Run Apt. 782\nEast Jeffrey, ME 46202-','2018-01-03 03:02:02','2013-07-31 19:31:44'),(17,1508311,'Quigley Group','805 Moore Streets\nFramifurt, IL 60332-8642','1988-09-12 12:33:45','2022-06-04 02:26:43'),(18,5250675,'Sauer LLC','0383 Nikolaus Prairie\nLennamouth, PA 95091','1996-04-13 03:14:46','2013-02-02 03:32:38'),(19,1590894,'Stanton, Kessler and Tillman','6890 Vance Run Suite 185\nSchroedermouth, ME 89004-','1996-12-23 15:12:14','1984-09-12 04:08:50'),(20,9131377,'Zieme, Stroman and Baumbach','23443 Stamm Ridge Apt. 916\nZackland, FL 51302-5536','1996-12-16 14:18:16','2020-03-05 07:19:07');
/*!40000 ALTER TABLE `accountPayable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountReceivable`
--

DROP TABLE IF EXISTS `accountReceivable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountReceivable` (
  `id_acctReceivable` int NOT NULL AUTO_INCREMENT,
  `amount` int DEFAULT NULL,
  `orgName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_acctReceivable`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep account receivable';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountReceivable`
--

LOCK TABLES `accountReceivable` WRITE;
/*!40000 ALTER TABLE `accountReceivable` DISABLE KEYS */;
INSERT INTO `accountReceivable` VALUES (1,9211524,'Spinka Inc','3602 Sandra Prairie\nSouth Rosendo, NE 05968-8299','1986-12-13 05:00:17','1972-06-30 06:21:21'),(2,4601533,'Kozey-Roberts','90740 Marvin Drive\nLake Kareem, ME 46046-0401','1988-08-20 13:58:29','2017-01-15 14:02:36'),(3,2206962,'Murazik and Sons','42592 Kaia Stream\nEast Ivy, KY 32791','1985-05-23 17:42:00','1988-07-19 11:31:11'),(4,7048491,'Kirlin Inc','8570 Carroll Trail\nGerhardbury, IA 69966-1001','2014-12-04 08:07:25','2016-04-13 08:02:17'),(5,1669753,'Towne, Hyatt and Mraz','532 Purdy Station Suite 394\nPort Kamryn, NC 69482','1997-05-19 15:11:36','1984-12-15 03:53:54'),(6,1006152,'Becker PLC','6993 Rudolph Ferry Apt. 738\nGoyetteland, VT 02776-','1980-01-30 06:34:00','1973-02-07 03:56:42'),(7,2999679,'Okuneva, Gutkowski and Wisoky','99178 Schuppe Fort\nPort Jeramy, MD 35194','2015-07-10 08:30:17','1972-08-01 05:47:04'),(8,2844005,'Hauck and Sons','7086 Stephanie Terrace Apt. 474\nWest Judd, AL 7168','1993-12-24 12:50:34','1988-01-18 19:47:22'),(9,2812548,'Nicolas and Sons','6339 Glenna Isle\nNew Monserratfort, CT 48372','1994-05-13 16:09:45','2017-07-22 20:23:56'),(10,2451003,'Swaniawski, Kassulke and Wiza','50015 Hilpert Mission\nPort Mollie, AL 24554-7716','2013-10-12 11:02:56','1983-10-07 13:24:06'),(11,9035666,'Abshire-Powlowski','535 Rohan Shores\nJoseborough, AL 23654-6760','2012-02-05 12:28:48','2007-03-21 11:45:57'),(12,2985489,'Ondricka, Ziemann and Leuschke','1811 Tillman Squares\nHaleyhaven, NH 86551-4000','2001-04-17 06:24:22','1988-06-12 21:30:08'),(13,1098247,'Weber-Herman','567 Dare Ferry\nEast Maverickchester, UT 71084','1972-04-09 08:11:31','2014-01-09 11:05:16'),(14,2238215,'Bergnaum-Bode','185 Ankunding Walks\nLake Garrettborough, NE 21053','2022-04-16 16:39:05','2008-08-25 16:16:52'),(15,3951976,'Collins-Dibbert','59133 Ruecker Drives Apt. 691\nLake Nickolas, OR 64','1981-08-31 14:33:51','1987-12-04 10:28:08'),(16,3217900,'Gerlach Group','61232 Emely Crescent Suite 730\nSengerfurt, OK 3976','1982-01-09 04:29:40','1998-04-09 17:43:21'),(17,7957151,'Zemlak-Haag','134 Richie Oval Apt. 732\nWest Rosella, TX 28216','1972-09-26 19:04:02','1991-11-24 21:31:44'),(18,6015537,'Bergnaum LLC','58610 Leola Path Suite 562\nPort Ovaview, VA 32880-','1991-01-15 07:51:54','2002-12-13 15:56:41'),(19,1386321,'Simonis, Schmidt and Vandervort','07859 Medhurst Throughway Suite 714\nCourtneymouth,','2020-03-28 05:44:51','1987-10-05 22:30:03'),(20,9531137,'Lindgren-Satterfield','220 Leuschke Avenue\nLangoshstad, CA 18383','2000-12-30 22:19:08','2006-05-04 05:46:49');
/*!40000 ALTER TABLE `accountReceivable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountReceivable_has_facilityInvoice`
--

DROP TABLE IF EXISTS `accountReceivable_has_facilityInvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountReceivable_has_facilityInvoice` (
  `accountReceivable_id_acctReceivable` int NOT NULL,
  `facilityInvoice_id_facilityInvoice` int NOT NULL,
  PRIMARY KEY (`accountReceivable_id_acctReceivable`,`facilityInvoice_id_facilityInvoice`),
  KEY `fk_accountReceivable_has_facilityInvoice_facilityInvoice1_idx` (`facilityInvoice_id_facilityInvoice`),
  KEY `fk_accountReceivable_has_facilityInvoice_accountReceivable1_idx` (`accountReceivable_id_acctReceivable`),
  CONSTRAINT `fk_accountReceivable_has_facilityInvoice_accountReceivable1` FOREIGN KEY (`accountReceivable_id_acctReceivable`) REFERENCES `accountReceivable` (`id_acctReceivable`),
  CONSTRAINT `fk_accountReceivable_has_facilityInvoice_facilityInvoice1` FOREIGN KEY (`facilityInvoice_id_facilityInvoice`) REFERENCES `facilityInvoice` (`id_facilityInvoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountReceivable_has_facilityInvoice`
--

LOCK TABLES `accountReceivable_has_facilityInvoice` WRITE;
/*!40000 ALTER TABLE `accountReceivable_has_facilityInvoice` DISABLE KEYS */;
INSERT INTO `accountReceivable_has_facilityInvoice` VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,2),(7,3),(8,4),(9,5),(10,6),(11,7),(12,8),(13,9),(14,10),(15,11),(16,12),(17,12),(18,13),(19,14),(20,15);
/*!40000 ALTER TABLE `accountReceivable_has_facilityInvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `id_bank` int NOT NULL AUTO_INCREMENT,
  `bankName` varchar(250) DEFAULT NULL,
  `iban` varchar(50) DEFAULT NULL,
  `accountHolderNameSurname` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  `fk_userRole` int DEFAULT NULL,
  PRIMARY KEY (`id_bank`),
  KEY `fk_bank_1_idx` (`fk_facilityId`),
  KEY `fk_bank_2_idx` (`fk_userRole`),
  CONSTRAINT `fk_bank_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`),
  CONSTRAINT `fk_bank_2` FOREIGN KEY (`fk_userRole`) REFERENCES `userRole` (`id_userRole`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep bank records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'Smith Group','232710582809','Prof. Jarod Adams III','1994-07-02 22:18:14','1981-08-27 14:17:20',1,1),(2,'Lang PLC','734831648506','Jacques Rohan','1982-07-05 16:59:05','1972-11-12 05:22:43',2,2),(3,'Kovacek, Mosciski and Mosciski','683272848837','Mr. Donato Wehner MD','2011-01-30 04:48:31','2013-04-28 01:08:35',3,3),(4,'Leannon, Larson and Carter','438849907182','Amira Welch','2015-06-15 19:53:07','1983-01-22 13:39:08',4,4),(5,'Turcotte-Lowe','788009497430','Rogers Dibbert Jr.','2005-09-09 07:04:37','1977-10-08 23:53:01',5,5),(6,'Hodkiewicz Inc','971773613756','Mrs. Kattie Cartwright','1987-01-21 02:35:22','2020-08-24 08:54:57',6,6),(7,'Metz, Murphy and Schmeler','464122089138','Prof. Tressie Ruecker','1972-09-17 04:04:38','2002-05-07 16:51:28',7,7),(8,'Wuckert, Huels and Smith','718522131256','Sidney Wiza','2010-12-02 04:06:31','2012-12-15 20:54:17',8,8),(9,'Schuppe Group','771728149661','Bernice Wunsch PhD','1974-11-30 13:26:55','1982-11-18 05:50:07',9,9),(10,'Prohaska-Feil','965751768276','Sydnie Hartmann','1983-04-05 08:59:40','2019-06-23 00:15:45',10,10),(11,'Bradtke-Legros','190790513716','Marc Zulauf Jr.','1971-03-24 18:36:00','2009-02-02 02:43:12',11,11),(12,'Gleichner PLC','462278226343','Mrs. Noelia Wiegand I','1990-02-26 03:32:22','2020-03-30 08:11:48',12,12),(13,'Lindgren Ltd','939681075932','Olen Torp','1976-12-08 17:13:19','1973-07-30 14:38:25',13,13),(14,'Koelpin-Kunde','496180344140','Prof. Urban Rosenbaum','1984-01-29 11:46:20','1996-08-27 15:12:57',14,14),(15,'Littel-Rosenbaum','333704898552','Trycia Grady DDS','2013-12-02 22:21:18','2020-04-11 20:26:39',15,15),(16,'Goodwin-Nikolaus','785970765445','Mozelle Thiel','2013-06-05 05:01:27','1970-12-12 11:53:39',16,16),(17,'Gusikowski Group','318111092317','Claud Ledner','1999-01-06 10:20:22','2015-02-09 00:09:54',17,17),(18,'Swaniawski, Sauer and Grimes','813110936665','Ally Hayes','2016-09-15 10:19:08','2001-07-16 06:33:14',18,18),(19,'Johns PLC','917610177909','Ada Barrows','1981-08-20 20:05:53','2021-04-08 15:46:02',19,19),(20,'Abshire-Wintheiser','209173644240','Mr. Clark Hilll II','2014-01-18 17:12:58','1997-07-15 08:17:48',20,20);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrier`
--

DROP TABLE IF EXISTS `carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrier` (
  `id_carrier` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `itemSent` varchar(45) DEFAULT NULL,
  `trackingNo` varchar(25) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityInvoideId` int DEFAULT NULL,
  `fk_userRoleId` int DEFAULT NULL,
  PRIMARY KEY (`id_carrier`),
  KEY `fk_carrier_2_idx` (`fk_facilityInvoideId`),
  KEY `fk_carrier_3_idx` (`fk_userRoleId`),
  CONSTRAINT `fk_carrier_2` FOREIGN KEY (`fk_facilityInvoideId`) REFERENCES `facilityInvoice` (`id_facilityInvoice`),
  CONSTRAINT `fk_carrier_3` FOREIGN KEY (`fk_userRoleId`) REFERENCES `userRole` (`id_userRole`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep records of carrier that platform user can track the sent items like invoice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrier`
--

LOCK TABLES `carrier` WRITE;
/*!40000 ALTER TABLE `carrier` DISABLE KEYS */;
INSERT INTO `carrier` VALUES (1,'DHL',' invitation','1932617','2003-02-26 05:09:12','1989-06-25 06:00:36',1,1),(2,'UPS',' invitation','5886299','1996-08-11 22:05:10','1998-06-12 01:03:05',2,2),(3,'DHL',' invitation','6597402','2001-11-13 21:02:35','2000-09-15 11:39:44',3,3),(4,'DHL',' invitation','1932555','1994-03-17 11:31:54','1985-05-28 23:21:53',4,4),(5,'UPS','invoice','6705541','1991-06-13 05:06:30','1999-10-15 23:14:16',5,5),(6,'FEDEX',' invitation','2047048','1972-07-12 05:35:30','1972-08-26 02:32:54',6,6),(7,'FEDEX',' invitation','7104301','1994-04-30 09:14:53','2018-02-19 23:48:28',7,7),(8,'UPS','invoice','7059180','2011-11-04 23:22:54','2012-06-26 19:57:14',8,8),(9,'DHL','invoice','7543116','2004-10-15 02:46:04','1989-10-25 04:38:49',9,9),(10,'FEDEX','invoice','1342887','1973-01-03 08:32:41','1985-01-21 08:58:33',10,10),(11,'DHL',' invitation','2939812','1976-08-20 18:12:36','1982-01-11 23:58:50',11,11),(12,'FEDEX',' invitation','8485344','2008-09-17 12:37:48','2012-07-27 05:05:40',12,12),(13,'UPS','invoice','4575981','2015-01-27 20:31:35','2000-05-18 00:21:28',13,13),(14,'UPS',' invitation','3690298','2004-08-09 22:31:58','2014-03-20 02:53:31',14,14),(15,'DHL','invoice','5504065','2002-01-12 12:17:55','2000-08-15 00:00:32',15,15),(16,'DHL','invoice','9242029','1989-05-30 07:34:50','2000-08-26 20:30:30',16,16),(17,'FEDEX',' invitation','8931153','2008-10-16 01:12:46','2022-09-12 06:51:12',17,17),(18,'DHL','invoice','3896322','1999-04-13 11:32:06','1998-09-12 16:55:45',18,18),(19,'FEDEX','invoice','9837028','1977-06-11 16:37:18','1983-09-20 15:26:02',19,19),(20,'UPS',' invitation','5090941','1982-08-15 13:07:45','2014-07-11 15:16:12',20,20);
/*!40000 ALTER TABLE `carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_employee` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_employee`),
  KEY `fk_employee_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_employee_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='To define user as Guest or Host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Peggie','Bechtelar','1-019-451-9861x0725','2012-05-09 21:31:06','1986-06-02 22:30:25',1),(2,'Meaghan','Walter','1-042-864-8384x77899','1970-12-07 17:02:00','2021-01-18 07:06:09',2),(3,'Marlin','Eichmann','733.753.4397x21498','2013-12-21 10:25:13','1985-07-05 20:31:20',3),(4,'Rosella','Hauck','024-976-6827','1988-07-17 12:05:13','2006-02-04 13:00:16',4),(5,'Orland','Crona','03284385704','2008-05-04 13:41:29','1997-07-23 18:27:27',5),(6,'Annamarie','Bernier','166-227-3644x93438','1978-02-27 12:24:19','2010-02-11 08:39:53',6),(7,'Velda','Miller','+16(4)4141538950','2014-06-14 11:31:48','1983-07-11 06:12:42',7),(8,'Elizabeth','Kunde','533.467.6449','1974-12-26 12:56:09','1994-05-16 03:21:51',8),(9,'Elvis','Zulauf','582-007-3769','2015-09-24 13:35:47','2010-07-10 03:18:26',9),(10,'Allene','Pfannerstill','1-715-677-2734','2003-11-29 22:14:27','2014-06-30 10:06:54',10),(11,'Florence','Bahringer','376.519.5353','1997-07-10 20:07:56','2013-11-29 00:12:31',11),(12,'Edwina','Parisian','(182)459-4876x173','2021-04-19 14:30:52','2022-08-01 19:29:06',12),(13,'Axel','Hermiston','1-170-116-5377x6265','2010-01-24 17:59:16','2009-01-02 09:26:38',13),(14,'Ardith','Ward','1-218-321-4492','1997-06-22 19:53:25','1992-02-08 06:01:11',14),(15,'Carol','Howell','06232678667','2017-10-25 19:27:17','2000-05-26 06:09:58',15),(16,'Garnet','Reilly','294-778-5389','2006-03-04 13:00:08','1985-04-01 19:47:46',16),(17,'Emory','Gorczany','460-288-6980x89027','1985-12-04 01:05:11','2000-03-11 10:03:09',17),(18,'Ford','Romaguera','(054)371-8644x977','2015-07-17 16:12:03','1973-01-08 06:13:01',18),(19,'Lucienne','Harvey','129.992.0901','2011-11-19 23:09:07','2016-04-05 08:45:22',19),(20,'Granville','Watsica','01188560304','2009-06-05 21:06:41','1977-12-18 12:37:11',20);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expectedIncome`
--

DROP TABLE IF EXISTS `expectedIncome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expectedIncome` (
  `id_expectedIncome` int NOT NULL AUTO_INCREMENT,
  `expectedIncome` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  `fk_facilityPriceId` int DEFAULT NULL,
  `fk_facilityOrderId` int DEFAULT NULL,
  PRIMARY KEY (`id_expectedIncome`),
  KEY `fk_expectedIncome_1_idx` (`fk_facilityId`),
  KEY `fk_expectedIncome_2_idx` (`fk_facilityPriceId`),
  KEY `fk_expectedIncome_3_idx` (`fk_facilityOrderId`),
  CONSTRAINT `fk_expectedIncome_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`),
  CONSTRAINT `fk_expectedIncome_2` FOREIGN KEY (`fk_facilityPriceId`) REFERENCES `facilityPrice` (`id_facilityPrice`),
  CONSTRAINT `fk_expectedIncome_3` FOREIGN KEY (`fk_facilityOrderId`) REFERENCES `facilityOrder` (`id_facilityOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep record for the expected income';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expectedIncome`
--

LOCK TABLES `expectedIncome` WRITE;
/*!40000 ALTER TABLE `expectedIncome` DISABLE KEYS */;
INSERT INTO `expectedIncome` VALUES (1,4558,'1986-05-14 13:31:53','1979-05-22 05:51:45',1,1,1),(2,2325,'2003-11-09 00:00:56','2020-06-16 16:22:50',2,2,2),(3,5947,'1977-04-26 16:36:07','1977-10-01 14:11:27',3,3,3),(4,3332,'1983-04-05 05:43:58','2016-07-06 20:17:00',4,4,4),(5,513,'1989-08-09 10:23:46','1986-12-13 22:35:56',5,5,5),(6,5668,'1977-10-16 16:51:09','1997-03-17 13:37:35',6,6,6),(7,5741,'2002-11-23 08:45:41','2018-04-24 21:30:32',7,7,7),(8,1604,'1970-07-11 09:22:09','1980-12-25 04:57:43',8,8,8),(9,846,'1991-02-08 10:52:58','1973-10-23 12:07:08',9,9,9),(10,2534,'2004-02-18 12:42:40','1989-07-09 21:35:02',10,10,10),(11,3935,'2005-10-14 07:37:23','1990-06-27 20:53:37',11,11,11),(12,1568,'1983-04-21 18:07:43','1977-09-25 16:18:01',12,12,12),(13,4924,'1987-11-04 15:31:23','2021-07-04 19:21:17',13,13,13),(14,2939,'1973-06-21 06:49:57','1994-07-11 08:02:17',14,14,14),(15,2444,'2010-08-24 08:52:20','1979-09-23 20:02:41',15,15,15),(16,1863,'2009-04-27 10:42:39','2017-12-18 19:45:14',16,16,16),(17,4295,'1997-12-10 04:11:26','1994-10-09 08:44:51',17,17,17),(18,4003,'1979-02-26 14:09:07','1996-01-27 12:07:58',18,18,18),(19,5662,'1974-12-09 22:31:55','2012-04-08 05:07:36',19,19,19),(20,2765,'1980-04-11 14:11:58','2008-05-09 11:46:38',20,20,20);
/*!40000 ALTER TABLE `expectedIncome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `id_facility` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='To define facility type like Hotel, apart and etc..';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'apartment','sint','Apt. 247','hhackett@example.com','08339197935','1974-08-31 06:18:10','1970-09-01 23:18:50'),(2,'suite','incidunt','Apt. 285','ferry.omer@example.com','1-948-710-0828x427','2001-05-05 12:35:51','2014-05-23 23:46:12'),(3,'apartment','ipsum','Apt. 961','nikolaus.johnny@example.net','574.331.2756','1973-10-04 12:52:13','2012-04-29 06:30:01'),(4,'apartment','quae','Apt. 711','darby52@example.com','195.089.8563x717','2013-06-09 01:09:43','2005-02-10 21:35:37'),(5,'apartment','aut','Apt. 260','wbins@example.net','125-233-4162x0794','1974-06-28 17:09:23','1997-01-12 11:57:07'),(6,'bedroom','commodi','Suite 667','reichert.maximus@example.org','(707)841-9870','1971-01-28 01:36:41','2013-12-19 22:14:33'),(7,'apartment','sunt','Apt. 652','savion48@example.net','728-635-9306','1980-08-20 02:59:55','1983-12-29 12:13:18'),(8,'bedroom','iure','Suite 392','qgreen@example.net','(964)615-0386x29811','2006-07-10 04:58:00','2020-04-01 17:24:53'),(9,'apartment','voluptate','Apt. 959','brycen04@example.org','648-864-0373x38914','1986-08-25 01:03:03','2019-01-19 01:27:50'),(10,'bedroom','rem','Apt. 885','emil73@example.net','1-808-339-1892','2017-06-08 14:46:52','1987-05-30 16:00:25'),(11,'suite','et','Apt. 108','casimir98@example.net','859.418.4833','2007-10-19 04:01:55','1983-11-08 02:59:54'),(12,'apartment','eum','Apt. 441','fbruen@example.com','(653)441-5175x6509','1977-04-02 22:36:29','1974-02-13 17:20:45'),(13,'bedroom','quae','Suite 027','lorena.dare@example.net','+51(3)8026663936','1996-04-21 12:06:58','2008-07-30 00:08:12'),(14,'bedroom','ea','Apt. 595','dschiller@example.com','429-628-9315','1975-04-19 12:20:29','1983-05-27 03:05:10'),(15,'suite','quo','Apt. 193','xbaumbach@example.net','385.703.9229x497','2013-02-04 19:53:28','2002-10-29 22:06:13'),(16,'apartment','nam','Suite 293','wcummerata@example.com','(540)027-7970','2004-01-12 09:05:21','1978-03-25 13:44:48'),(17,'suite','debitis','Apt. 651','garrison29@example.com','(054)907-7471x806','2010-10-08 08:40:36','1978-06-13 05:19:37'),(18,'bedroom','commodi','Suite 857','lmcclure@example.org','1-272-738-9987x521','1987-02-12 01:04:16','1988-04-21 10:02:03'),(19,'bedroom','perspiciatis','Apt. 724','melisa23@example.com','(091)198-7337','2008-10-28 21:43:24','2019-10-31 06:34:03'),(20,'bedroom','consequatur','Suite 166','malika77@example.org','834-221-2257','1996-10-27 01:20:28','1993-01-27 20:39:58');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityAdvantages`
--

DROP TABLE IF EXISTS `facilityAdvantages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityAdvantages` (
  `id_facilityAdvantage` int NOT NULL AUTO_INCREMENT,
  `advantage` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityAdvantage`),
  KEY `fk_facilityAdvantages_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityAdvantages_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep records for the advantages of facility';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityAdvantages`
--

LOCK TABLES `facilityAdvantages` WRITE;
/*!40000 ALTER TABLE `facilityAdvantages` DISABLE KEYS */;
INSERT INTO `facilityAdvantages` VALUES (1,'Necessitatibus molestias beatae voluptates qu','1972-11-21 02:41:28','2021-06-27 13:42:03',1),(2,'Maxime quasi sequi aut est deserunt.','2011-05-13 07:07:57','1973-04-08 23:20:05',2),(3,'Nam eum ad eligendi facilis cupiditate velit ','2001-05-25 12:43:36','2013-02-10 01:10:39',3),(4,'Voluptatum aspernatur quia facilis quam quo n','1998-05-06 04:55:47','1981-06-17 05:38:11',4),(5,'Similique eos illum et rerum nam vel laborum ','2008-04-16 00:59:49','1970-08-26 00:43:34',5),(6,'Laudantium soluta ut culpa ut inventore.','2014-12-23 19:11:00','2013-04-22 04:16:29',6),(7,'Incidunt quo sed repellendus suscipit.','1978-05-19 20:55:40','1988-12-04 20:13:52',7),(8,'Laborum voluptas ut eligendi.','2021-02-28 00:34:24','2021-01-30 10:13:30',8),(9,'Quis libero dignissimos mollitia sint ut opti','1971-01-29 07:49:01','2005-07-19 21:49:50',9),(10,'Soluta praesentium nihil dolorem aliquam accu','1973-12-12 05:47:26','1977-05-29 13:37:20',10),(11,'Facere reiciendis incidunt est fuga architect','1997-03-06 21:16:52','1999-07-05 19:58:23',11),(12,'Saepe illum esse nisi.','1987-06-18 23:31:00','1983-02-02 19:22:13',12),(13,'Error sint eligendi velit laudantium.','1987-02-18 01:52:21','1971-07-24 08:22:17',13),(14,'Vitae dolore molestiae maxime perferendis.','1984-08-05 07:27:43','1982-04-02 11:36:28',14),(15,'Sit sed tempora dignissimos similique.','1990-11-18 07:18:34','1978-01-03 21:43:12',15),(16,'Dolores corporis eaque ea id dolores sit quod','2010-05-31 21:50:10','1996-02-21 21:10:08',16),(17,'Fugiat dolore voluptatem cum velit provident ','1977-08-27 09:35:29','2002-02-07 08:47:07',17),(18,'Asperiores quia amet unde dolor.','1976-08-17 04:06:11','1977-05-22 16:53:43',18),(19,'Cumque autem voluptas nihil labore nihil.','1980-09-10 06:29:37','2014-01-07 11:08:41',19),(20,'Et id numquam eos dignissimos.','2012-09-05 22:54:44','1985-10-27 14:19:19',20);
/*!40000 ALTER TABLE `facilityAdvantages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityArchitecture`
--

DROP TABLE IF EXISTS `facilityArchitecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityArchitecture` (
  `id_facilityArchitecture` int NOT NULL AUTO_INCREMENT,
  `hasRoom` int DEFAULT NULL,
  `totalSq` int DEFAULT NULL,
  `hasBalcoon` tinyint DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityArchitecture`),
  KEY `fk_facilityArchitecture_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityArchitecture_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep record of architectural details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityArchitecture`
--

LOCK TABLES `facilityArchitecture` WRITE;
/*!40000 ALTER TABLE `facilityArchitecture` DISABLE KEYS */;
INSERT INTO `facilityArchitecture` VALUES (1,0,80,1,'2000-08-02 20:46:49','2020-05-25 12:19:00',1),(2,0,41,0,'1986-08-27 17:09:57','2011-07-16 09:15:35',2),(3,0,37,1,'1991-04-17 18:50:19','2003-09-18 17:17:16',3),(4,0,37,0,'1980-10-09 20:36:22','1998-09-07 05:48:18',4),(5,1,71,1,'2004-12-13 00:13:37','1974-06-12 19:20:27',5),(6,0,70,0,'1983-11-21 18:10:08','2002-05-19 03:28:22',6),(7,1,39,0,'1986-08-24 17:07:54','1989-12-24 06:58:31',7),(8,0,80,0,'2014-12-17 22:26:19','1995-02-03 21:01:26',8),(9,0,51,0,'2012-01-03 11:50:47','1983-06-14 09:26:03',9),(10,0,40,0,'1981-04-10 21:04:59','1986-10-15 01:12:53',10),(11,1,52,0,'1970-11-28 12:39:54','2012-03-12 23:50:59',11),(12,0,25,0,'1984-02-09 03:39:00','2016-02-18 04:06:11',12),(13,0,50,0,'2010-11-10 23:23:44','2018-04-11 14:02:15',13),(14,0,62,0,'1985-09-24 05:36:19','1971-03-10 20:42:43',14),(15,1,41,1,'2004-09-08 18:33:46','1982-04-19 02:54:00',15),(16,0,75,0,'2007-03-18 13:39:37','1979-06-10 11:48:26',16),(17,1,66,1,'1989-06-23 08:42:52','1990-05-14 10:44:23',17),(18,0,38,1,'1970-06-25 14:28:01','1979-12-14 19:51:34',18),(19,1,78,0,'1982-03-15 20:07:10','1986-12-20 05:35:32',19),(20,1,33,0,'1996-12-05 15:47:34','1997-01-13 00:01:11',20);
/*!40000 ALTER TABLE `facilityArchitecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityAvailability`
--

DROP TABLE IF EXISTS `facilityAvailability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityAvailability` (
  `id_facilityAvailability` int NOT NULL AUTO_INCREMENT,
  `availableStartDate` timestamp NULL DEFAULT NULL,
  `availableEndDate` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityAvailability`),
  KEY `fk_facilityAvailability_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityAvailability_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep records of facility avaibality days';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityAvailability`
--

LOCK TABLES `facilityAvailability` WRITE;
/*!40000 ALTER TABLE `facilityAvailability` DISABLE KEYS */;
INSERT INTO `facilityAvailability` VALUES (1,'1998-02-21 22:31:23','1986-08-05 16:51:30','1971-06-17 20:59:55','1996-09-14 04:16:02',1),(2,'1979-10-19 12:38:07','1979-07-30 02:37:36','1973-09-25 19:34:58','1973-10-29 09:34:52',2),(3,'2004-03-31 16:30:10','1984-03-22 07:48:26','2009-10-06 11:59:47','2003-04-19 14:00:41',3),(4,'2011-06-20 13:50:53','1980-12-27 01:02:01','1987-01-12 19:29:28','1977-07-19 20:54:41',4),(5,'2011-01-23 21:43:03','1975-04-03 06:50:44','1996-05-02 19:14:18','1974-07-04 22:07:56',5),(6,'1990-10-17 21:34:09','1984-02-22 18:27:55','2004-03-09 15:30:19','2012-05-28 12:36:01',6),(7,'1984-10-13 22:50:02','2008-06-07 00:36:54','1997-02-24 17:12:09','1995-01-14 17:24:23',7),(8,'2016-11-22 17:03:48','2005-07-14 15:14:45','1973-08-22 05:08:43','2018-03-05 22:07:57',8),(9,'1996-10-27 04:43:15','1982-10-14 02:56:40','1986-07-11 08:05:09','1993-07-04 01:41:53',9),(10,'2000-07-20 17:40:15','2008-09-14 05:12:32','1991-07-26 23:46:54','2001-05-12 22:56:16',10),(11,'1977-01-09 01:50:08','1977-03-06 10:12:13','1996-05-08 22:45:38','1970-01-14 22:00:33',11),(12,'2021-05-10 03:54:10','2017-07-04 03:27:31','1995-08-13 20:09:20','1992-10-27 21:10:50',12),(13,'2010-02-09 07:51:00','1997-02-27 00:26:55','1990-10-19 14:38:09','2014-10-11 05:04:49',13),(14,'1991-05-03 00:32:59','1989-05-20 19:06:17','1986-08-03 10:45:19','2008-01-19 07:37:41',14),(15,'2003-06-25 19:02:20','1970-06-17 23:38:17','1986-08-08 23:13:35','2004-02-13 17:22:19',15),(16,'1976-07-10 05:32:00','1988-01-02 03:45:45','1991-05-29 10:15:42','2011-07-09 18:48:40',16),(17,'1975-04-25 18:46:38','2018-02-01 20:25:45','1974-11-27 18:52:56','1997-08-15 11:44:17',17),(18,'1979-08-20 05:10:49','2017-05-05 11:45:11','2016-12-01 20:17:41','1985-08-18 12:06:21',18),(19,'1985-12-24 01:22:09','2012-06-16 07:04:32','1973-09-10 03:55:33','1972-03-30 17:17:49',19),(20,'1970-07-17 01:23:27','2007-04-16 15:07:04','1997-12-18 06:59:37','1978-03-29 07:55:20',20);
/*!40000 ALTER TABLE `facilityAvailability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityInvoice`
--

DROP TABLE IF EXISTS `facilityInvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityInvoice` (
  `id_facilityInvoice` int NOT NULL AUTO_INCREMENT,
  `stayedDay` int DEFAULT NULL,
  `fk_facilityPriceId` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `fk_facilityTaxRateId` int DEFAULT NULL,
  `invoiceAmountTotal` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityInvoice`),
  KEY `fk_facilityInvoice_1_idx` (`fk_facilityPriceId`),
  KEY `fk_facilityInvoice_2_idx` (`fk_facilityId`),
  KEY `fk_facilityInvoice_3_idx` (`fk_facilityTaxRateId`),
  CONSTRAINT `fk_facilityInvoice_1` FOREIGN KEY (`fk_facilityPriceId`) REFERENCES `facilityPrice` (`id_facilityPrice`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_facilityInvoice_2` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`),
  CONSTRAINT `fk_facilityInvoice_3` FOREIGN KEY (`fk_facilityTaxRateId`) REFERENCES `facilityTaxRate` (`id_facilityTaxRate`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep record of invoice belongs to guest';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityInvoice`
--

LOCK TABLES `facilityInvoice` WRITE;
/*!40000 ALTER TABLE `facilityInvoice` DISABLE KEYS */;
INSERT INTO `facilityInvoice` VALUES (1,8,3,'1981-07-12 19:07:08','1976-04-27 13:20:32',3,0,3,8),(2,5,15,'1988-05-21 15:28:46','1989-05-30 05:29:20',15,7,15,1),(3,2,10,'2009-08-07 04:04:45','2004-10-03 16:01:12',10,5,10,6),(4,9,14,'1978-10-27 00:35:27','2019-03-10 00:15:15',14,7,14,7),(5,1,20,'1995-09-27 03:33:35','2014-01-27 11:52:09',20,9,20,3),(6,6,2,'2004-03-18 12:48:29','1973-08-08 17:33:49',2,0,2,1),(7,2,9,'1991-03-10 09:27:23','2008-04-18 09:30:58',9,5,9,7),(8,3,13,'2017-03-04 03:05:03','2012-04-25 18:01:32',13,7,13,9),(9,1,8,'1991-04-05 16:48:34','2004-10-20 16:30:04',8,5,8,9),(10,5,19,'1996-08-09 01:10:17','1996-07-10 10:21:37',19,8,19,3),(11,1,4,'1979-10-18 23:01:40','1980-11-20 01:55:09',4,2,4,9),(12,6,11,'2011-02-04 21:34:31','1976-03-03 12:55:06',11,6,11,9),(13,7,1,'1979-07-18 23:29:45','1986-02-13 20:22:55',1,0,1,6),(14,2,18,'2004-08-10 04:16:32','2011-07-29 16:55:28',18,8,18,4),(15,4,12,'1970-03-25 13:21:28','2009-10-08 04:22:32',12,7,12,6),(16,1,17,'2015-09-25 07:22:53','1973-09-10 02:35:33',17,8,17,3),(17,2,5,'1992-02-13 13:26:28','2008-09-17 19:09:36',5,4,5,9),(18,5,7,'2005-03-05 23:29:19','1998-05-27 00:29:11',7,5,7,2),(19,3,6,'1992-03-31 23:30:29','1998-04-30 23:54:09',6,5,6,0),(20,3,16,'1996-03-18 01:38:44','2017-06-11 15:52:13',16,8,16,1);
/*!40000 ALTER TABLE `facilityInvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityInvoice_has_accountPayable`
--

DROP TABLE IF EXISTS `facilityInvoice_has_accountPayable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityInvoice_has_accountPayable` (
  `facilityInvoice_id_facilityInvoice` int NOT NULL,
  `accountPayable_id_acctPayable` int NOT NULL,
  PRIMARY KEY (`facilityInvoice_id_facilityInvoice`,`accountPayable_id_acctPayable`),
  KEY `fk_facilityInvoice_has_accountPayable_accountPayable1_idx` (`accountPayable_id_acctPayable`),
  KEY `fk_facilityInvoice_has_accountPayable_facilityInvoice1_idx` (`facilityInvoice_id_facilityInvoice`),
  CONSTRAINT `fk_facilityInvoice_has_accountPayable_accountPayable1` FOREIGN KEY (`accountPayable_id_acctPayable`) REFERENCES `accountPayable` (`id_acctPayable`),
  CONSTRAINT `fk_facilityInvoice_has_accountPayable_facilityInvoice1` FOREIGN KEY (`facilityInvoice_id_facilityInvoice`) REFERENCES `facilityInvoice` (`id_facilityInvoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityInvoice_has_accountPayable`
--

LOCK TABLES `facilityInvoice_has_accountPayable` WRITE;
/*!40000 ALTER TABLE `facilityInvoice_has_accountPayable` DISABLE KEYS */;
INSERT INTO `facilityInvoice_has_accountPayable` VALUES (9,1),(7,2),(8,2),(5,3),(6,3),(3,4),(4,4),(1,5),(2,5),(10,6),(11,7),(14,8),(12,9),(13,10),(15,11),(16,11),(17,12),(18,13),(19,14),(20,15);
/*!40000 ALTER TABLE `facilityInvoice_has_accountPayable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityLocation`
--

DROP TABLE IF EXISTS `facilityLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityLocation` (
  `id_facilityLocation` int NOT NULL AUTO_INCREMENT COMMENT 'it will keep record of facility location geo coordinations',
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `cityName` varchar(45) DEFAULT NULL,
  `countryName` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityLocation`),
  KEY `fk_facilityLocation_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityLocation_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep record geolocation of facility';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityLocation`
--

LOCK TABLES `facilityLocation` WRITE;
/*!40000 ALTER TABLE `facilityLocation` DISABLE KEYS */;
INSERT INTO `facilityLocation` VALUES (1,'-37.839364','-76.102502','Wittingberg','French Southern Territories','1977-09-05 03:11:34','2003-08-04 04:07:01',1),(2,'79.432148','-14.340374','Malikaview','Albania','2009-12-08 13:54:50','1976-03-26 04:18:47',2),(3,'14.684606','122.174215','South Kyleighmouth','Isle of Man','1974-09-02 23:10:05','1997-07-23 07:44:02',3),(4,'-42.637453','81.985369','New Jasen','Uruguay','2013-07-04 03:00:16','2007-10-24 03:19:16',4),(5,'-4.063707','17.998111','New Alia','Costa Rica','1979-11-22 18:07:19','1977-11-24 00:27:11',5),(6,'57.040440','-49.949527','Port Arnoldomouth','Lesotho','1979-02-23 13:58:06','1989-04-14 03:12:46',6),(7,'-26.626233','-45.496033','Lake Mylene','Paraguay','2004-07-29 00:28:48','2016-06-10 09:48:44',7),(8,'-32.377042','34.719765','Mathildefurt','Mayotte','2005-06-17 16:32:13','1971-06-22 11:38:14',8),(9,'18.509736','-65.906424','Demetriusmouth','Georgia','2012-11-30 03:04:04','2007-11-09 02:25:24',9),(10,'52.430151','-116.974983','North Rhett','Cook Islands','2021-09-03 10:15:21','2019-08-21 16:06:00',10),(11,'-89.324550','70.185407','Kreigerton','Guadeloupe','2021-07-27 00:42:50','2009-12-15 23:09:25',11),(12,'-48.859680','-137.481033','Predovicside','Bhutan','1984-09-11 17:18:25','2020-04-22 03:18:12',12),(13,'-9.955752','127.699579','South Ward','Mayotte','1972-05-10 09:13:35','1989-11-27 15:50:33',13),(14,'11.225683','-127.270101','North Maia','Saint Pierre and Miquelon','1984-03-25 12:35:51','2016-05-06 12:59:56',14),(15,'65.706809','23.609907','Port August','Qatar','2021-07-13 13:30:52','1978-01-03 05:31:50',15),(16,'-85.710833','91.456002','West Eleonore','Myanmar','1976-05-15 19:19:02','1976-06-10 20:49:04',16),(17,'-84.997307','55.323147','Eldonton','Bangladesh','2003-09-13 17:28:19','1979-09-05 17:28:12',17),(18,'-7.724754','143.152590','Lake Junior','Iraq','2001-09-07 22:29:53','1993-11-27 03:08:36',18),(19,'-48.185318','176.264434','Ravenshire','Montserrat','1996-03-02 06:08:28','1998-01-04 16:46:30',19),(20,'-35.062858','4.233004','Herzogchester','Liechtenstein','1975-04-21 23:48:30','1987-05-22 13:12:42',20);
/*!40000 ALTER TABLE `facilityLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityOrder`
--

DROP TABLE IF EXISTS `facilityOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityOrder` (
  `id_facilityOrder` int NOT NULL AUTO_INCREMENT,
  `dayOrder` int DEFAULT NULL,
  `fk_userRoleId` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityOrder`),
  KEY `fk_facilityOrders_1_idx` (`fk_userRoleId`),
  KEY `fk_facilityOrder_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityOrder_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`),
  CONSTRAINT `fk_facilityOrders_1` FOREIGN KEY (`fk_userRoleId`) REFERENCES `userRole` (`id_userRole`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep record of facility order of guest';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityOrder`
--

LOCK TABLES `facilityOrder` WRITE;
/*!40000 ALTER TABLE `facilityOrder` DISABLE KEYS */;
INSERT INTO `facilityOrder` VALUES (1,2,1,'2022-04-25 18:52:01','1985-12-15 15:34:53',1),(2,3,2,'1992-06-22 18:40:09','2010-05-05 23:05:11',2),(3,8,3,'1984-05-03 21:41:52','1993-07-27 00:14:20',3),(4,9,4,'1971-07-22 06:34:45','1978-02-12 17:24:54',4),(5,2,5,'1972-02-19 20:26:42','2005-08-09 19:35:21',5),(6,8,6,'1978-11-14 15:37:25','2021-08-28 16:46:30',6),(7,0,7,'1984-12-22 01:59:20','1999-11-01 07:01:46',7),(8,6,8,'2021-07-26 15:28:11','1977-10-14 19:34:51',8),(9,8,9,'2006-05-09 14:01:10','2003-09-21 11:31:20',9),(10,6,10,'2009-06-21 17:11:18','1976-08-10 12:38:21',10),(11,8,11,'2015-10-14 04:02:33','1993-06-28 20:14:04',11),(12,5,12,'2004-09-18 11:03:08','2006-11-08 14:15:07',12),(13,9,13,'1970-04-28 14:45:21','1987-02-27 05:25:33',13),(14,3,14,'1973-12-25 02:42:52','2006-09-29 22:33:38',14),(15,3,15,'1999-06-20 11:53:42','2006-07-15 20:47:21',15),(16,7,16,'1972-06-06 01:27:02','2014-01-24 18:44:14',16),(17,6,17,'1997-06-03 11:10:11','1995-06-28 06:14:41',17),(18,9,18,'1977-08-16 11:18:36','1988-12-26 03:04:02',18),(19,4,19,'1973-05-20 22:16:03','1994-02-19 12:37:32',19),(20,9,20,'1992-07-24 11:12:04','2011-12-14 00:40:27',20);
/*!40000 ALTER TABLE `facilityOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityOverDayStayed`
--

DROP TABLE IF EXISTS `facilityOverDayStayed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityOverDayStayed` (
  `id_facilityOverDayStayed` int NOT NULL AUTO_INCREMENT,
  `overDays` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityOverDayStayed`),
  KEY `fk_facilityOverDayStayed_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityOverDayStayed_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='visitor can stay longer that planned';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityOverDayStayed`
--

LOCK TABLES `facilityOverDayStayed` WRITE;
/*!40000 ALTER TABLE `facilityOverDayStayed` DISABLE KEYS */;
INSERT INTO `facilityOverDayStayed` VALUES (1,8,'1998-08-16 18:29:21','2008-11-17 06:46:25',1),(2,7,'1982-01-07 08:34:16','2007-02-25 18:35:14',2),(3,3,'1980-06-08 16:22:42','2013-05-01 04:02:13',3),(4,2,'1995-10-23 08:14:17','2016-11-29 00:46:56',4),(5,3,'1975-09-07 07:45:12','1986-11-08 16:46:35',5),(6,0,'1998-05-16 10:21:06','1999-04-30 12:12:07',6),(7,3,'1988-08-15 19:32:16','2002-11-13 03:21:25',7),(8,2,'2020-12-09 13:15:34','1979-11-08 22:06:44',8),(9,5,'1971-03-02 05:46:17','2020-06-11 07:37:40',9),(10,0,'1981-09-06 17:48:46','1976-01-30 14:46:47',10),(11,4,'1975-01-22 07:51:58','1971-04-29 17:26:21',11),(12,1,'1995-09-20 12:19:08','1973-06-11 14:50:50',12),(13,4,'1973-07-15 09:33:42','2010-12-16 10:56:34',13),(14,6,'1990-11-19 17:45:56','2015-05-30 13:42:16',14),(15,2,'1976-12-02 09:58:30','2020-09-23 17:38:58',15),(16,6,'1971-06-22 15:59:59','1998-07-24 09:21:09',16),(17,2,'2003-05-11 12:37:00','1985-01-03 01:40:30',17),(18,5,'2002-03-08 13:58:23','2019-04-28 14:30:57',18),(19,0,'2003-09-09 01:25:55','1983-11-05 08:00:01',19),(20,2,'2012-02-09 11:30:29','1987-04-02 19:30:58',20);
/*!40000 ALTER TABLE `facilityOverDayStayed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityPrice`
--

DROP TABLE IF EXISTS `facilityPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityPrice` (
  `id_facilityPrice` int NOT NULL AUTO_INCREMENT,
  `pricePerDay` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityPrice`),
  KEY `fk_facilityPrice_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityPrice_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep records of facilty price/day';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityPrice`
--

LOCK TABLES `facilityPrice` WRITE;
/*!40000 ALTER TABLE `facilityPrice` DISABLE KEYS */;
INSERT INTO `facilityPrice` VALUES (1,5,'1998-05-17 17:00:03','1971-05-19 01:36:45',1),(2,2,'2007-12-07 05:23:10','1997-10-15 22:30:57',2),(3,4,'2010-03-29 23:54:22','2000-06-08 21:30:37',3),(4,3,'2014-09-10 17:07:48','1978-03-14 09:56:58',4),(5,2,'1978-01-25 17:46:51','1998-09-18 21:45:02',5),(6,1,'1992-02-23 00:48:13','1991-01-23 19:01:46',6),(7,4,'1979-02-16 11:41:48','1987-04-14 04:03:52',7),(8,7,'2011-01-24 16:23:10','1993-12-20 04:18:23',8),(9,2,'1999-07-06 12:21:05','2017-05-03 22:50:31',9),(10,3,'2018-03-19 03:29:05','1979-11-02 02:28:33',10),(11,1,'1980-07-18 02:34:47','1994-08-13 00:35:31',11),(12,1,'1992-01-08 12:13:51','1974-12-24 08:07:13',12),(13,3,'1995-08-06 13:42:36','2014-07-07 05:09:43',13),(14,2,'1985-01-09 21:10:00','2009-11-18 00:33:05',14),(15,7,'1979-06-07 23:27:56','2020-09-30 13:05:56',15),(16,9,'2009-01-23 13:38:58','2013-03-21 19:41:22',16),(17,5,'1970-04-01 13:34:05','2003-07-16 23:11:44',17),(18,3,'2003-12-02 01:07:25','2020-03-05 21:52:00',18),(19,2,'1989-05-18 04:36:51','1982-04-15 12:38:51',19),(20,9,'2022-03-05 23:01:15','1976-01-15 15:28:45',20);
/*!40000 ALTER TABLE `facilityPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityRate`
--

DROP TABLE IF EXISTS `facilityRate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityRate` (
  `id_facilityRate` int NOT NULL AUTO_INCREMENT,
  `rate` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_userRole` int DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityRate`),
  KEY `fk_facilityRate_2_idx` (`fk_userRole`),
  KEY `fk_facilityRate_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityRate_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`) ON DELETE CASCADE,
  CONSTRAINT `fk_facilityRate_2` FOREIGN KEY (`fk_userRole`) REFERENCES `userRole` (`id_userRole`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='To keep record facility rate that user gives';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityRate`
--

LOCK TABLES `facilityRate` WRITE;
/*!40000 ALTER TABLE `facilityRate` DISABLE KEYS */;
INSERT INTO `facilityRate` VALUES (1,3,'2008-06-28 06:32:51','1973-01-02 20:15:27',1,1),(2,5,'1975-03-21 16:07:49','1975-04-05 04:21:06',2,2),(3,4,'1976-10-22 10:34:03','1997-08-01 19:48:35',3,3),(4,1,'1998-06-05 01:20:04','1981-06-24 00:15:51',4,4),(5,5,'2005-06-02 17:01:16','1978-06-15 11:44:10',5,5),(6,3,'1993-06-23 03:04:16','1985-06-06 21:23:10',6,6),(7,5,'2000-04-06 07:02:39','2021-12-08 20:31:22',7,7),(8,5,'1998-10-25 02:10:38','1991-07-22 21:49:24',8,8),(9,3,'1989-08-20 23:37:29','1974-11-19 00:40:48',9,9),(10,4,'2012-07-31 10:44:27','1999-09-04 03:48:56',10,10),(11,3,'1989-08-30 12:55:51','2011-06-30 10:14:40',11,11),(12,4,'2002-11-18 11:44:14','2004-09-04 16:43:30',12,12),(13,3,'2022-06-27 09:45:17','1987-04-23 10:05:25',13,13),(14,1,'2002-11-01 07:13:44','1989-05-01 23:42:03',14,14),(15,5,'1974-05-12 15:51:49','1979-06-23 00:36:57',15,15),(16,4,'1970-12-03 20:58:10','2011-08-16 23:16:56',16,16),(17,2,'1972-08-10 19:54:27','1973-08-15 09:30:21',17,17),(18,5,'2000-09-25 11:58:28','1989-09-20 16:28:29',18,18),(19,1,'1987-07-29 07:29:54','1977-07-23 07:16:31',19,19),(20,4,'2011-01-31 20:10:37','2014-04-04 02:16:41',20,20);
/*!40000 ALTER TABLE `facilityRate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityReview`
--

DROP TABLE IF EXISTS `facilityReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityReview` (
  `id_facilityReview` int NOT NULL AUTO_INCREMENT,
  `guestComment` varchar(150) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityReview`),
  KEY `fk_facilityReview_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityReview_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep record for the comments of guest to facility';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityReview`
--

LOCK TABLES `facilityReview` WRITE;
/*!40000 ALTER TABLE `facilityReview` DISABLE KEYS */;
INSERT INTO `facilityReview` VALUES (1,'I was a most extraordinary noise going on within--a constant howling and sneezing, and every now and then; such as, \'Sure, I don\'t know,\' he went on, ','2012-10-18 00:15:03','1973-03-14 19:27:37',1),(2,'I say,\' the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on, \'\"--found it advisable to go after that into a doze;','1971-10-08 10:35:56','1980-01-20 04:21:54',2),(3,'Alice ventured to remark. \'Tut, tut, child!\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, (she had grown up,\' she sai','2014-01-17 07:09:45','2012-01-11 00:56:02',3),(4,'So they got settled down in an offended tone, and everybody else. \'Leave off that!\' screamed the Gryphon. \'Do you mean that you think I should think i','1986-07-31 13:54:13','1990-05-27 16:44:00',4),(5,'I don\'t understand. Where did they live at the other, and growing sometimes taller and sometimes shorter, until she had sat down in an agony of terror','2000-12-07 04:51:12','1988-01-21 08:05:51',5),(6,'Alice, \'a great girl like you,\' (she might well say that \"I see what was on the twelfth?\' Alice went on without attending to her, \'if we had the door ','2011-06-29 23:50:39','1979-05-29 10:37:54',6),(7,'Alice asked. \'We called him Tortoise because he was speaking, so that they had to stop and untwist it. After a minute or two. \'They couldn\'t have done','1996-03-11 18:10:02','2002-12-09 11:45:20',7),(8,'The Antipathies, I think--\' (she was rather glad there WAS no one to listen to her. \'I wish I had our Dinah here, I know all the jurymen on to the Moc','1991-07-27 03:53:50','2019-12-23 22:50:57',8),(9,'Hatter. \'I deny it!\' said the Duchess. An invitation from the trees as well as she could do, lying down with her head!\' about once in a shrill, passio','1992-11-16 01:46:40','1999-05-11 10:51:45',9),(10,'CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the centre of the song. \'What trial is it?\' Alice panted as she went back to the','2021-04-13 04:41:19','2008-07-23 23:45:11',10),(11,'Don\'t let me help to undo it!\' \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said to Alice, flin','1991-02-16 03:33:15','1973-04-26 07:52:27',11),(12,'Lobster; I heard him declare, \"You have baked me too brown, I must be really offended. \'We won\'t talk about cats or dogs either, if you wouldn\'t keep ','2022-08-25 21:57:24','2005-04-27 07:44:35',12),(13,'Dodo replied very readily: \'but that\'s because it stays the same thing with you,\' said Alice, \'and if it wasn\'t very civil of you to sit down without ','1973-10-05 07:55:09','1987-03-28 12:54:56',13),(14,'Oh dear! I shall have some fun now!\' thought Alice. One of the court. \'What do you know I\'m mad?\' said Alice. The poor little thing was waving its tai','1994-08-08 07:22:29','2009-09-21 16:43:34',14),(15,'White Rabbit, \'but it sounds uncommon nonsense.\' Alice said very politely, \'if I had to run back into the garden. Then she went on to the Knave \'Turn ','1979-05-25 05:59:26','2008-10-01 04:03:47',15),(16,'Gryphon. \'--you advance twice--\' \'Each with a kind of rule, \'and vinegar that makes them bitter--and--and barley-sugar and such things that make child','2012-01-26 11:15:20','2005-02-20 11:26:59',16),(17,'Mystery,\' the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little nervous about it while the Mock Turtle, who looked at Alice, as','1997-01-27 17:23:06','1991-07-05 20:59:17',17),(18,'MINE.\' The Queen turned crimson with fury, and, after waiting till she too began dreaming after a minute or two, looking for it, she found to be almos','1983-03-31 21:47:43','2005-04-20 14:51:54',18),(19,'CHORUS. (In which the words have got into a sort of way, \'Do cats eat bats? Do cats eat bats? Do cats eat bats? Do cats eat bats? Do cats eat bats?\' a','1992-04-11 15:21:05','1972-10-12 00:06:21',19),(20,'Who ever saw in my kitchen AT ALL. Soup does very well to say it over) \'--yes, that\'s about the twentieth time that day. \'A likely story indeed!\' said','1976-11-19 22:19:41','1999-12-19 01:43:11',20);
/*!40000 ALTER TABLE `facilityReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilitySocial`
--

DROP TABLE IF EXISTS `facilitySocial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilitySocial` (
  `id_facilitySocial` int NOT NULL AUTO_INCREMENT,
  `facebookLink` varchar(150) DEFAULT NULL,
  `instagramLink` varchar(150) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilitySocial`),
  KEY `fk_facilitySocial_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilitySocial_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='To keep record social network details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitySocial`
--

LOCK TABLES `facilitySocial` WRITE;
/*!40000 ALTER TABLE `facilitySocial` DISABLE KEYS */;
INSERT INTO `facilitySocial` VALUES (1,'http://www.hyatt.com/','http://runolfsdottirwunsch.com/','1995-03-12 10:02:23','2019-04-08 02:17:53',1),(2,'http://bartellbarrows.org/','http://fay.com/','2004-11-14 19:17:01','1988-05-09 21:51:03',2),(3,'http://fahey.com/','http://www.welchwaelchi.com/','2009-01-21 01:32:42','2008-09-01 15:00:11',3),(4,'http://feeneyritchie.info/','http://www.bartelljenkins.com/','2019-05-12 21:20:40','2004-12-01 07:18:32',4),(5,'http://lueilwitz.net/','http://www.corwin.biz/','2008-01-22 17:14:54','1987-05-20 06:57:14',5),(6,'http://www.armstrong.net/','http://www.smithstoltenberg.org/','1976-04-07 18:39:06','2014-07-16 19:29:06',6),(7,'http://www.koepp.com/','http://eichmann.com/','1988-03-23 11:51:55','2003-09-07 18:07:11',7),(8,'http://feeney.biz/','http://quitzon.com/','1970-08-15 13:55:14','2005-10-10 13:55:22',8),(9,'http://www.weber.net/','http://www.rolfson.biz/','2001-12-17 06:45:31','2018-10-09 19:52:10',9),(10,'http://www.oberbrunnerbode.info/','http://luettgenkoss.net/','2018-03-12 04:23:12','1986-11-30 20:08:42',10),(11,'http://www.bailey.com/','http://hackett.info/','2019-09-07 04:45:00','1989-06-16 11:17:31',11),(12,'http://www.wehnerstrosin.com/','http://heaney.com/','1984-08-06 11:24:59','1992-12-20 02:08:56',12),(13,'http://www.shields.net/','http://www.walsh.biz/','1972-06-16 21:01:31','2002-07-15 00:05:07',13),(14,'http://www.beierhintz.com/','http://www.waelchi.com/','2020-02-17 10:10:25','1993-07-19 08:46:35',14),(15,'http://www.mcglynnfahey.info/','http://beatty.com/','1988-07-07 15:11:16','1996-12-20 06:22:35',15),(16,'http://veum.com/','http://hand.com/','2001-05-03 08:17:54','1979-03-06 14:14:03',16),(17,'http://krajcik.com/','http://www.borerweissnat.com/','1973-10-27 06:38:47','1983-06-30 10:59:52',17),(18,'http://www.gerlachromaguera.com/','http://willms.com/','1975-01-07 04:34:21','2011-02-22 16:22:30',18),(19,'http://ritchiecrooks.com/','http://rosenbaum.net/','2019-04-15 17:17:04','1977-10-15 04:29:59',19),(20,'http://www.anderson.org/','http://www.wunsch.com/','1989-10-27 01:53:12','1970-08-06 07:16:52',20);
/*!40000 ALTER TABLE `facilitySocial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityTaxRate`
--

DROP TABLE IF EXISTS `facilityTaxRate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilityTaxRate` (
  `id_facilityTaxRate` int NOT NULL AUTO_INCREMENT,
  `taxRate` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_facilityId` int DEFAULT NULL,
  PRIMARY KEY (`id_facilityTaxRate`),
  KEY `fk_facilityTaxRate_1_idx` (`fk_facilityId`),
  CONSTRAINT `fk_facilityTaxRate_1` FOREIGN KEY (`fk_facilityId`) REFERENCES `facility` (`id_facility`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='each facility can have it own tax rate according to regulations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityTaxRate`
--

LOCK TABLES `facilityTaxRate` WRITE;
/*!40000 ALTER TABLE `facilityTaxRate` DISABLE KEYS */;
INSERT INTO `facilityTaxRate` VALUES (1,5,'1993-09-14 15:20:57','1978-08-03 13:20:00',1),(2,9,'1987-04-28 13:28:28','1992-09-13 02:03:56',2),(3,14,'1972-03-24 20:59:40','1990-11-05 02:41:32',3),(4,13,'1982-08-04 13:03:11','2003-09-17 12:22:14',4),(5,11,'1974-03-11 19:35:01','1971-06-27 10:34:54',5),(6,19,'2004-03-18 18:24:57','2004-01-18 14:51:42',6),(7,10,'1977-11-07 19:36:11','2002-03-20 02:15:35',7),(8,17,'1997-04-10 16:55:35','2002-03-10 07:05:55',8),(9,16,'2020-08-13 00:14:01','1996-02-14 16:10:13',9),(10,20,'1975-12-04 08:22:19','2003-10-29 08:44:59',10),(11,5,'2017-10-24 03:37:22','1977-06-08 10:54:03',11),(12,5,'2022-03-08 04:50:31','2012-02-29 17:33:19',12),(13,16,'1984-04-02 11:29:07','2020-01-16 01:17:29',13),(14,16,'1972-03-03 02:35:07','1971-04-06 15:01:26',14),(15,11,'2008-08-18 15:39:05','1991-12-16 20:15:13',15),(16,10,'2010-06-25 09:03:45','2018-06-05 06:31:51',16),(17,12,'2008-10-12 22:47:35','2013-11-23 20:56:41',17),(18,9,'2002-09-17 13:51:43','2003-08-03 23:57:33',18),(19,7,'2012-11-18 11:37:13','2009-11-14 07:45:44',19),(20,6,'1995-11-06 16:20:43','1997-02-23 15:29:32',20);
/*!40000 ALTER TABLE `facilityTaxRate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userRole`
--

DROP TABLE IF EXISTS `userRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userRole` (
  `id_userRole` int NOT NULL AUTO_INCREMENT,
  `userRole` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_userRole`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='To define user as Guest or Host';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userRole`
--

LOCK TABLES `userRole` WRITE;
/*!40000 ALTER TABLE `userRole` DISABLE KEYS */;
INSERT INTO `userRole` VALUES (1,'host','et','voluptatem','jrolfson@example.org','(606)634-1706x00704','2000-08-25 03:12:13','2004-10-18 01:12:38'),(2,'guest','illo','et','qhettinger@example.com','1-461-894-9228x057','2004-02-18 12:10:57','2003-09-28 21:44:07'),(3,'guest','ipsum','voluptatum','kuhlman.chauncey@example.org','1-610-422-7408x0839','2014-02-24 08:15:18','2002-09-05 04:27:53'),(4,'host','ut','excepturi','tkunze@example.com','05613297942','2012-09-25 03:11:34','2003-10-26 12:37:25'),(5,'guest','ipsa','mollitia','elna.schmidt@example.com','(539)821-9049','1994-06-24 00:20:30','1984-11-15 08:30:24'),(6,'guest','ipsa','sed','linnie.predovic@example.net','759-965-8281x76493','1977-08-21 13:20:34','1984-02-07 02:11:00'),(7,'host','vitae','nemo','russ13@example.com','104-108-1135x571','1999-05-13 14:26:32','2012-09-01 09:15:36'),(8,'guest','nemo','autem','kutch.idella@example.org','048-507-3214','1972-10-10 06:05:03','1982-06-21 13:52:14'),(9,'host','vel','consequatur','caden.christiansen@example.com','1-013-918-5587x037','2007-11-05 12:06:05','1996-03-27 21:37:45'),(10,'guest','optio','dolores','marina.treutel@example.com','827-284-9158x4761','2005-04-13 14:43:12','2013-10-29 09:25:55'),(11,'guest','sed','hic','hartmann.mitchel@example.org','(023)260-8363x78757','1995-07-18 19:15:37','1976-06-06 14:43:46'),(12,'host','dolore','exercitationem','kris.heber@example.org','835-878-5031x5977','1989-09-05 09:35:03','2008-03-12 18:50:38'),(13,'guest','eos','reiciendis','jpagac@example.org','112-504-7617','1987-03-11 02:10:12','2021-10-12 00:55:19'),(14,'guest','et','sed','asa.eichmann@example.org','889.799.5273x53418','2009-08-28 10:20:33','2015-11-25 18:11:01'),(15,'guest','quia','eaque','vanessa.heathcote@example.org','1-491-032-2376','1995-10-14 22:00:41','1974-07-25 03:06:19'),(16,'guest','ipsa','delectus','bweber@example.com','1-672-385-8697x7764','2018-06-19 00:28:13','1998-06-13 02:49:12'),(17,'host','quo','voluptatem','terrill81@example.net','1-307-805-2666x69731','2001-09-16 20:09:05','1995-05-18 21:13:57'),(18,'guest','enim','temporibus','mosciski.marcelino@example.org','01524203529','2010-09-19 05:49:07','1994-02-22 01:52:32'),(19,'guest','assumenda','tempora','schimmel.gilberto@example.org','656-302-6469x792','1981-05-28 15:45:57','2006-09-15 05:07:54'),(20,'host','qui','dolorem','parisian.gail@example.com','086.349.7159','1982-05-31 21:22:50','2006-12-12 04:19:49');
/*!40000 ALTER TABLE `userRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userTaxId`
--

DROP TABLE IF EXISTS `userTaxId`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userTaxId` (
  `id_userTaxId` int NOT NULL AUTO_INCREMENT,
  `userTaxNo` varchar(25) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `fk_userRoleId` int DEFAULT NULL,
  PRIMARY KEY (`id_userTaxId`),
  KEY `fk_userTaxId_1_idx` (`fk_userRoleId`),
  CONSTRAINT `fk_userTaxId_1` FOREIGN KEY (`fk_userRoleId`) REFERENCES `userRole` (`id_userRole`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='to keep records of the guest tax records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userTaxId`
--

LOCK TABLES `userTaxId` WRITE;
/*!40000 ALTER TABLE `userTaxId` DISABLE KEYS */;
INSERT INTO `userTaxId` VALUES (1,'90874-8312','2012-01-15 11:43:00','1997-12-31 03:12:11',1),(2,'38742','1989-09-06 08:18:00','2003-10-19 08:20:19',2),(3,'01989','2003-01-27 18:15:15','2014-05-11 17:32:12',3),(4,'12757','1992-12-28 02:31:14','1979-05-25 00:23:47',4),(5,'51590','2013-11-22 05:02:31','1973-10-21 09:23:58',5),(6,'99400-7219','1997-09-22 22:20:52','2007-10-20 06:08:51',6),(7,'48639','1982-03-01 07:24:10','1976-07-15 05:08:32',7),(8,'18234-2569','1985-08-21 14:22:01','1977-06-05 04:25:40',8),(9,'29800','2000-09-08 22:33:46','1996-12-22 09:36:17',9),(10,'63648-9182','1987-08-02 02:00:09','1992-10-25 12:06:20',10),(11,'78238-2670','2003-04-26 08:28:42','2019-08-11 04:39:37',11),(12,'82044-6421','1991-09-01 10:37:01','2000-11-24 12:05:06',12),(13,'66884','2002-04-24 10:13:56','1977-04-06 10:27:41',13),(14,'66186','1976-05-05 22:16:56','1997-01-20 18:00:11',14),(15,'97872-7923','2008-08-12 10:06:13','1980-06-12 13:05:42',15),(16,'37555-2247','2003-08-30 13:23:43','1987-11-21 20:54:22',16),(17,'94883-5564','2018-12-22 09:26:16','2000-01-10 00:00:15',17),(18,'31385','2012-08-19 18:30:42','2003-03-02 06:58:34',18),(19,'20760','1974-11-24 05:19:24','2011-11-26 00:07:50',19),(20,'88349-8975','1977-06-01 07:09:48','1983-07-09 16:42:20',20);
/*!40000 ALTER TABLE `userTaxId` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

