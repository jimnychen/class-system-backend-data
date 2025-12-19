-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 192.168.0.30    Database: ClassSystenData
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isadmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('11200001','王大明','password123',0),('11200002','陳曉華','password123',0),('11200003','李志強','password123',0),('11200004','林美玲','password123',0),('11200005','張家豪','password123',0),('11200101','黃雅婷','password123',0),('11200102','吳淑芬','password123',0),('11200103','劉冠廷','password123',0),('11200104','蔡宜君','password123',0),('11200105','楊曉薇','password123',0),('11200106','許建國','password123',0),('11200107','鄭伯翰','password123',0),('11200108','謝佩珊','password123',0),('11200109','郭俊宏','password123',0),('11200110','洪詩涵','password123',0),('11200111','曾冠宇','password123',0),('11200112','邱昱嘉','password123',0),('11200113','廖偉翔','password123',0),('11200114','賴欣怡','password123',0),('11200115','徐佳穎','password123',0),('11200116','周子敬','password123',0),('11200117','葉柏睿','password123',0),('11200118','莊雅文','password123',0),('11200119','呂嘉銘','password123',0),('11200120','蘇郁珊','password123',0),('11200121','彭于晏','password123',0),('11200122','何宗憲','password123',0),('11200123','江佳樺','password123',0),('11200124','羅敏睿','password123',0),('11200125','高以翔','password123',0),('11200126','馬英杰','password123',0),('11200127','蕭敬騰','password123',0),('11200128','丁曉雨','password123',0),('11200129','魏如萱','password123',0),('11200130','薛之謙','password123',0),('11200131','沈春華','password123',0),('11200132','田馥甄','password123',0),('11200133','任家萱','password123',0),('11200134','簡廷芮','password123',0),('11200135','方文山','password123',0),('11200136','柯有倫','password123',0),('11200137','范瑋琪','password123',0),('11200138','汪東城','password123',0),('11200139','余文樂','password123',0),('11200140','唐禹哲','password123',0),('11200141','潘瑋柏','password123',0),('11200142','霍建華','password123',0),('11200143','鍾漢良','password123',0),('11200144','連勝文','password123',0),('11200145','宋楚瑜','password123',0),('122214225','陳彥廷','student',0),('MIKU','初音未來','admin39',1);
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

-- Dump completed on 2025-12-19 17:13:25
