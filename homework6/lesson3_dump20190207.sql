-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: lesson3
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `all_employees`
--

DROP TABLE IF EXISTS `all_employees`;
/*!50001 DROP VIEW IF EXISTS `all_employees`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `all_employees` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `lastname`,
 1 AS `department`,
 1 AS `salary`,
 1 AS `position`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `depart`
--

DROP TABLE IF EXISTS `depart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `depart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) DEFAULT '0',
  `head_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depart`
--

LOCK TABLES `depart` WRITE;
/*!40000 ALTER TABLE `depart` DISABLE KEYS */;
INSERT INTO `depart` VALUES (1,'Бухгалтерия',0,NULL),(2,'IT',0,NULL),(3,'HR',0,10),(4,'RnD',0,NULL);
/*!40000 ALTER TABLE `depart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `department_average_salary`
--

DROP TABLE IF EXISTS `department_average_salary`;
/*!50001 DROP VIEW IF EXISTS `department_average_salary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `department_average_salary` AS SELECT 
 1 AS `department`,
 1 AS `Ср. ЗП`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `department_salary_and_people_count`
--

DROP TABLE IF EXISTS `department_salary_and_people_count`;
/*!50001 DROP VIEW IF EXISTS `department_salary_and_people_count`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `department_salary_and_people_count` AS SELECT 
 1 AS `department`,
 1 AS `кол-во сотрудников`,
 1 AS `ФОТ`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `salaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salary_shtat` (`emp_id`),
  CONSTRAINT `salary_shtat` FOREIGN KEY (`emp_id`) REFERENCES `shtat` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (32,1,60117,'1986-06-26','1987-06-26'),(33,1,62102,'1987-06-26','1988-06-25'),(34,1,66074,'1988-06-25','1989-06-25'),(35,1,66596,'1989-06-25','1990-06-25'),(36,1,66961,'1990-06-25','1991-06-25'),(37,1,71046,'1991-06-25','1992-06-24'),(38,1,74333,'1992-06-24','1993-06-24'),(39,1,75286,'1993-06-24','1994-06-24'),(40,1,75994,'1994-06-24','1995-06-24'),(41,1,76884,'1995-06-24','1996-06-23'),(42,1,80013,'1996-06-23','1997-06-23'),(43,1,81025,'1997-06-23','1998-06-23'),(44,1,81097,'1998-06-23','1999-06-23'),(45,1,84917,'1999-06-23','2000-06-22'),(46,1,85112,'2000-06-22','2001-06-22'),(47,1,85097,'2001-06-22','2002-06-22'),(48,1,88958,'2002-06-22','9999-01-01'),(49,2,65828,'1996-08-03','1997-08-03'),(50,2,65909,'1997-08-03','1998-08-03'),(51,2,67534,'1998-08-03','1999-08-03'),(52,2,69366,'1999-08-03','2000-08-02'),(53,2,71963,'2000-08-02','2001-08-02'),(54,2,72527,'2001-08-02','9999-01-01'),(55,3,40006,'1995-12-03','1996-12-02'),(56,3,43616,'1996-12-02','1997-12-02'),(57,3,43466,'1997-12-02','1998-12-02'),(58,3,43636,'1998-12-02','1999-12-02'),(59,3,43478,'1999-12-02','2000-12-01'),(60,3,43699,'2000-12-01','2001-12-01'),(61,3,43311,'2001-12-01','9999-01-01'),(62,4,40054,'1986-12-01','1987-12-01'),(63,11,120000,'2019-01-31','2019-01-31'),(64,7,10500,'2019-02-04','2019-02-04');
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shtat`
--

DROP TABLE IF EXISTS `shtat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shtat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otdel` int(11) DEFAULT NULL,
  `zp` int(11) NOT NULL,
  `position` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shtat_position` (`position`),
  KEY `shtat_zp` (`zp`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shtat`
--

LOCK TABLES `shtat` WRITE;
/*!40000 ALTER TABLE `shtat` DISABLE KEYS */;
INSERT INTO `shtat` VALUES (1,'Андрей','Боголюбов',1,108100,'Event manager'),(2,'Василий','Теркин',1,60000,'Junior QA'),(3,'Борис','Кошкин',1,55000,'PR'),(4,'Дмитрий','Михайлов',2,120000,'QA'),(5,'Алексей','Хитров',4,170000,'Project manager'),(6,'Станислав','Бурчак',4,146000,'Embedded developer'),(7,'Павел','Рукавишников',4,70000,'Backend developer'),(8,'Дмитрий','Михеев',4,160000,'Frontend developer'),(10,'Александр','Дудь',3,130000,'HR director'),(11,'Владимир','Капустин',4,120000,'iOS developer');
/*!40000 ALTER TABLE `shtat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `lifting_allowance` AFTER INSERT ON `shtat` FOR EACH ROW INSERT INTO `salaries` (`emp_id`, `salary`, `from_date`, `to_date`) VALUES (NEW.id, NEW.zp, curdate(), curdate()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `all_employees`
--

/*!50001 DROP VIEW IF EXISTS `all_employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `all_employees` AS select `shtat`.`id` AS `id`,`shtat`.`name` AS `name`,`shtat`.`lastname` AS `lastname`,`depart`.`name` AS `department`,`shtat`.`zp` AS `salary`,`shtat`.`position` AS `position` from (`shtat` left join `depart` on((`depart`.`id` = `shtat`.`otdel`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `department_average_salary`
--

/*!50001 DROP VIEW IF EXISTS `department_average_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `department_average_salary` AS select `depart`.`name` AS `department`,avg(`shtat`.`zp`) AS `Ср. ЗП` from (`shtat` left join `depart` on((`depart`.`id` = `shtat`.`otdel`))) group by `shtat`.`otdel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `department_salary_and_people_count`
--

/*!50001 DROP VIEW IF EXISTS `department_salary_and_people_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `department_salary_and_people_count` AS select `depart`.`name` AS `department`,count(0) AS `кол-во сотрудников`,sum(`shtat`.`zp`) AS `ФОТ` from (`shtat` left join `depart` on((`depart`.`id` = `shtat`.`otdel`))) group by `shtat`.`otdel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-07  2:43:27
