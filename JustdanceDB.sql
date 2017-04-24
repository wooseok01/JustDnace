-- MySQL dump 10.13  Distrib 5.7.15, for osx10.10 (x86_64)
--
-- Host: localhost    Database: Justdancemvmt
-- ------------------------------------------------------
-- Server version	5.7.15

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
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `bId` int(11) NOT NULL,
  `cDescription` varchar(200) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `bId` (`bId`),
  CONSTRAINT `career_ibfk_1` FOREIGN KEY (`bId`) REFERENCES `dancers` (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES (1,1,'2016 LETZDANCE Acamedy China Open '),(2,1,'2015 ~ 2017 Leader of Representative of Seoul City B-boy Seoul  Foundation for Arts and Culture '),(3,1,'2011 Kyunghee University Education Professor'),(4,1,'2010, JUSTDANCE Production Found. '),(5,1,'2010 LETZDANCE Academy Found. ( South Korea )'),(6,1,'2009 Professor of University of Arts, Seoul National University'),(7,1,'2009 FLOOR GANGZ WORLDWIDE section'),(8,1,'2008 Promoted Ambassador of Korea Tourism Organization'),(9,1,'Founded 2003 DRIFTERZ CREW'),(10,1,'2003 MYOSUNG dancer activities'),(11,1,'2002 PROJECT SOUL leader'),(12,1,'Founded 2002 BOPSTER SCAT '),(13,1,'2000, gorillas dancers Lee Juno and activities'),(14,1,'1999 EXPRESSION CREW founding member '),(15,1,'1996 PEOPLE CREW'),(16,2,'Director of Digital content Arts Management '),(17,2,'Artistic Director of Seoul Dance Theatre '),(18,2,'Visiting Professor , KyungHee University.'),(19,2,'2015  Remarkable Artist Award (The Korean Association of Critics)'),(20,2,'2014 Best Choreographer of the Year Award (Korea Dance Forum,  Inc.)'),(21,3,'2007 K-POP Drama Festival'),(22,3,'2007 Joongang Univ. Korea Tour Performance 5 City'),(23,3,'2008 President Lee Myung Bak\'s inauguration ceremony'),(24,3,'2010 RokJoo Park Awarded Grand Prix of Korean National Music Competition (Presidential Award)'),(25,3,'2010 Vancouver, LA, Hawaii, Auckland, Sydney, Jakarta, Bangkok  and Manila, touring 8 destinations in 7 countries'),(26,3,'2011 Concert for Peace Unification in Bucheon '),(27,3,'2013 New Zealand (Wellington), Australia (Sydney, Canberra) Three  City Cultural Delegation Performances '),(28,3,'2013 Rufxxx \'Deadman Walking’ Performance'),(29,4,'2008 V.A.J.P (Visual Art Jam Performance) Dancers'),(30,4,'2009-2010 M-NET OAP Dance Promotion Manager'),(31,4,'2013 Korea Foundation South Africa Tour Arirang Rhapsody Dancer'),(32,4,'2015 Korea Creative Content Agency Dancer'),(33,4,'2016 Boy London 2016 SS Planing Director'),(34,4,'2014 Louis Vuitton Performance Director'),(35,4,'2015 Hermes Performance Dancer'),(36,5,'2014 France International Amazing Day battle winner'),(37,5,'2015 USA BreakFree Winner'),(38,5,'2015 R16 Malaysia Judge'),(39,5,'2015 R16 Macau Judge'),(40,5,'2015 R16 World Final Performance winner'),(41,5,'2015 Battle of the year Korea winner'),(42,5,'2015 China International Hustle & Freeze winner'),(43,5,'2016 Marseille battle pro Korea qualification winner'),(44,5,'2016 France International UNVSTIEVENT battle winner'),(45,5,'2016 JeonJu GrandPrix 10th Anniversary winner'),(46,5,'2016 China International B.I.S battle winner'),(47,6,'2016 Presidential tour'),(48,6,'Korea Cultural Exchange in Uganda \'K-CULTURE IN UGAND'),(49,6,'2016 France BATTLE VNR - winner'),(50,6,'2016 France BREAK THE FLOOR - winner'),(51,6,'2015 Glory Surrender'),(52,6,'Liberation 70th Anniversary London Festival Performaces Korea'),(53,6,'2015 China BOMB JAM WORLD FINAL - winner'),(54,6,'2012,2014 Italy FLUIDO JAM - winner'),(55,6,'2012  UK B-BOY CHAMPIONSHIP WORLD FINAL - winner'),(56,6,'2010,2011 Korea R-16 World Master Championships Performance & Crew Battle Winner'),(57,6,'2010 BATTLE OF THE YEAR WORLD FINAL - winner'),(58,7,'October 22, 2005 BRAUNSCHWEIG, GERMANY   Won 3rd place of Battle of the Year'),(59,7,'February 18, 2005 OKINAWA, JAPAN Won 1st place at Street Style Festival'),(60,7,'February 19, 2005 OKINAWA, JAPAN  Participated in a guest show as representatives of Korea'),(61,7,'March, 2005 KOCHI, JAPAN Won 1st place at Bboy Festival Battle Royal '),(62,7,'March 25, 2007 KOCHI, JAPAN Won 1st place at Battle Runners Vol.4'),(63,7,'August 27, 2007 LOS ANGELES, UNITED STATES of AMERICA  Won 2nd place at FreeStyle Session'),(64,7,'April 5, 2008 LILLE, FRANCE Performed a showcase at Battle of the Year'),(65,7,'October 28, 2008 TAIWAN Participated in a guest show for FreeStyle Session'),(66,7,'December 6, 2008 NEW YORK, UNITED STATES of AMERICA  Won 1st place at Ill Skilled Kingz'),(67,7,'May 3, 2009 CHINA Won 1st place at Happy Valley Inter Bboy Championship  (Battle between China, Hong Kong, Macao)'),(68,7,'August 1, 2009   SINGAPORE     Won 2nd place at Battle of the Year Asia'),(69,7,'TELEVISION PROGRAMS July 14, 2010   KOREA  Participated in a MBC Documentary on Children who Love Bboying January 8, 2010 KOREA'),(70,7,'Participated in a KBS variety called Sponge 2.0'),(71,8,'2016 The Dance Zurich Champion (Zurich, Switzerland)'),(72,8,'2015 Hustle & Freeze 1 on 1 Bboy Champion (Shenzhen, China)'),(73,8,'2015, 2014, 2013 Break The Floor Champion (Cannes, France)'),(74,8,'2015 & 2013 World Powermove Series Champion (Dourdan, France)'),(75,8,'2014 Universal Dancers Champion (France)'),(76,8,'2013 International Royal Battle Champion (Germany)'),(77,8,'2013 UK Bboy Championship Winner (Birmingham, UK)'),(78,8,'2013 R16 World Finals Champion (Seoul, Korea)');
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dancers`
--

DROP TABLE IF EXISTS `dancers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dancers` (
  `bId` int(11) NOT NULL AUTO_INCREMENT,
  `bTitle` varchar(100) NOT NULL,
  `bName` varchar(30) NOT NULL,
  `bFileName` varchar(30) NOT NULL,
  `bDescription` varchar(1000) NOT NULL,
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dancers`
--

LOCK TABLES `dancers` WRITE;
/*!40000 ALTER TABLE `dancers` DISABLE KEYS */;
INSERT INTO `dancers` VALUES (1,'Ducky (Founder of JUSTDANCE)','Ducky','Bboy-Ducky.png','Organizations representing career'),(2,'JOONYONG (JOONYONG. BAE)','JOONYOUNG','JOONYONG.png','JungYong is an artist who produces various performances and has excellent sense of lighting. also He’s Director of Digital content Arts Management '),(3,'Gunn (Kunhyung Kim)','Gunn','Gunn.png','Gunn is the best performer who mastered all Korean percussion instruments. '),(4,'Wasabi (Junghyun Ryu)','Wasabi','Wasabi.png','Wasabi is one of OG Dancer in Southkorea(since1995). he’s Pioneer of Korean Dance Culture. also he’s famous of Directing of Show and Performances '),(5,'Bboy Dol (Jinhyoung Park)','Dol','Bboy-Dol.png','I started dancing in 2002. i’m focusing for world wide bboy competition and workshops, judge as bboy. also i’m interesting of musical and model activity. '),(6,'Bboy FE (Chulje Oh)','FE','Bboy-FE.png','FE From Jinjo Crew, He’s also representing Justdance. he’s 17years only just doing bboying. he’s style is dynamic and very light movement. he as know well for Freeze combination and nowadays he doing judge and competion at world wide. '),(7,'Bboy Pop (Sungjin Hong)','Pop','Bboy-Pop.png','I started dancing in 1998. I have been a member of Gamblerz Crew since 2004 and have traveled to over 30 countries for competitions and showcases. I am also the founder of Strength Korea. '),(8,'Bboy Pocket (Gijoo Kim)','Pocket','Bboy-Pocket.png',' Bboy Pocket is a young Powermove living legend from Korea. He started Breakin in 2005 at the young age of 9 and became recognized internationally for his unmatched speed and energy in his high risk skills. His unbelievable talent has got him the reputation as a team’s secret weapon which lead his teams to win many international titles. Many consider him to be an anomaly of the bboy culture as he continues to raise the level of difficulty throughout the entire world. ');
/*!40000 ALTER TABLE `dancers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `eId` int(11) NOT NULL AUTO_INCREMENT,
  `bId` int(11) DEFAULT NULL,
  `eDescription` varchar(200) NOT NULL,
  PRIMARY KEY (`eId`),
  KEY `bId` (`bId`),
  CONSTRAINT `education_ibfk_1` FOREIGN KEY (`bId`) REFERENCES `dancers` (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,2,'2015 Acquired doctoral degree'),(2,2,'2012 Graduated from Kyunghee University'),(3,3,'2013 Graduated from Korean Traditional Percussion at Chung-Ang University'),(4,4,'1998 Admitted to Dankook University, Department of LawDrop out of law School'),(5,5,'Broadcasting and Telecommunications University Attending of Department of Cultural Studies'),(6,6,'2003 Graduated Daegu Yeongnam High School'),(7,6,'2013 Attending of Daekyung University'),(8,7,'2005 Graduated Jungwon High School'),(9,8,'2008 Graduated Gunpo Elements School');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-24 18:32:44
