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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `departmentID` varchar(10) NOT NULL,
  `departmentName` varchar(500) DEFAULT NULL,
  `academicSystemID` int DEFAULT NULL,
  PRIMARY KEY (`departmentID`),
  KEY `academicSystemID` (`academicSystemID`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`academicSystemID`) REFERENCES `academicSystemType` (`academicSystemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES ('11120','二年制護理系',2),('11140','四年制護理系',4),('11161','護理系碩士班護研成人組',6),('11162','護理系碩士班護研老人組',6),('11163','護理系碩士班護研婦女組',6),('11164','護理系碩士班護研精神組',6),('11165','護理系碩士班護研社區組',6),('11166','護理系碩士班護研兒童組',6),('11167','護理系碩士班護研資訊組',6),('11168','護理系碩士班護研成人專科組',6),('11169','護理系中西醫結合護理碩士班',6),('11170','護理系博士班',7),('11190','護理系學士後學士班(學士後護理系)',9),('11230','二年制進修部護理系(日間班)',3),('11330','二年制進修部護理系(夜間班)',3),('11461','護理系碩士在職專班護專成人組',6),('11462','護理系碩士在職專班護專老人組',6),('11463','護理系碩士在職專班護專婦女組',6),('11464','護理系碩士在職專班護專精神組',6),('11465','護理系碩士在職專班護專社區組',6),('11466','護理系碩士在職專班護專兒童組',6),('11467','護理系碩士在職專班護專資訊組',6),('11468','護理系碩士在職專班護專成人專科組',6),('11860','國際護理碩士班',6),('11870','國際護理博士班',7),('13140','四年制高齡健康照護系',4),('13160','高齡健康照護系碩士班',6),('1C120','二年制護理助產及婦女健康系',2),('1C160','護理助產及婦女健康系護理助產碩士班',6),('1C330','二年制進修部護理助產及婦女健康系',3),('1C860','國際護理助產碩士班',6),('1D110',' 二專醫護教育暨數位學習科 ',1),('1D120','二年制醫護教育暨數位學習系',2),('1D160','醫護教育暨數位學習系碩士班',6),('20160','健康科技學院碩士班',6),('21120','二年制健康事業管理系',2),('21140','四年制健康事業管理系',4),('21160','健康事業管理系碩士班',6),('21330','二年制進修部健康事業管理系',3),('21460','健康事業管理系碩士在職專班',6),('22140','四年制資訊管理系',4),('22160','資訊管理系碩士班',6),('23140','四年制休閒產業與健康促進系',4),('23160','休閒產業與健康促進系旅遊健康碩士班',6),('23460','休閒產業與健康促進系碩士在職專班',6),('24120','二年制長期照護系',2),('24150','長期照護系學士後多元專長培力課程專班',5),('24160','長期照護系碩士班',6),('25140','四年制語言治療與聽力學系',4),('25161','語言治療與聽力學系碩士班語言治療組',6),('25162','語言治療與聽力學系碩士班聽力組',6),('26860','國際健康科技碩士學位學程國際生碩士班',6),('30860','國際運動科學外國學生專班',6),('31120','二年制嬰幼兒保育系',2),('31140','四年制嬰幼兒保育系',4),('31160','嬰幼兒保育系碩士班',6),('31180','嬰幼兒保育系學士後教保學位學程',8),('31860','國際蒙特梭利碩士專班',6),('32140','四年制運動保健系',4),('32160','運動保健系碩士班',6),('32460','運動保健系碩士在職專班',6),('32860','國際運動科學暨智慧健康科技碩士專班',6),('33140','四年制生死與健康心理諮商系',4),('33161','生死與健康心理諮商系碩士班生死學組',6),('33162','生死與健康心理諮商系碩士班諮商心理組',6),('41140','高齡與運動健康暨嬰幼兒保育技優專班',4),('42140','智慧健康科技技優專班',4),('43160','人工智慧與健康大數據研究所',6);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
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
