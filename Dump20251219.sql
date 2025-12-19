-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: lms_db
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.2

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `answerno` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credate` datetime(6) DEFAULT NULL,
  `moddate` datetime(6) DEFAULT NULL,
  `member_memberno` int DEFAULT NULL,
  `question_questionno` int DEFAULT NULL,
  PRIMARY KEY (`answerno`),
  KEY `FKi2axmgiid7dwysfsmnien2u5n` (`member_memberno`),
  KEY `FK9xri7vyg7knotn1dys7ltbyg6` (`question_questionno`),
  CONSTRAINT `FK9xri7vyg7knotn1dys7ltbyg6` FOREIGN KEY (`question_questionno`) REFERENCES `question` (`questionno`),
  CONSTRAINT `FKi2axmgiid7dwysfsmnien2u5n` FOREIGN KEY (`member_memberno`) REFERENCES `member` (`memberno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apply` (
  `applyno` int NOT NULL AUTO_INCREMENT,
  `apldate` datetime(6) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `course_courseno` int DEFAULT NULL,
  `member_memberno` int DEFAULT NULL,
  PRIMARY KEY (`applyno`),
  KEY `FK1um36g1t03o2p0y5ugex42xcg` (`course_courseno`),
  KEY `FKgejmdeb8oqy4p5984rx2raylp` (`member_memberno`),
  CONSTRAINT `FK1um36g1t03o2p0y5ugex42xcg` FOREIGN KEY (`course_courseno`) REFERENCES `course` (`courseno`),
  CONSTRAINT `FKgejmdeb8oqy4p5984rx2raylp` FOREIGN KEY (`member_memberno`) REFERENCES `member` (`memberno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,'2025-12-16 11:47:05.332546',1,1,5);
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attempt`
--

DROP TABLE IF EXISTS `attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attempt` (
  `attemptno` int NOT NULL AUTO_INCREMENT,
  `score` int DEFAULT NULL,
  `member_memberno` int DEFAULT NULL,
  `quiz_quizno` int DEFAULT NULL,
  PRIMARY KEY (`attemptno`),
  KEY `FKecyvl21jj5ysit9gf51a2tcoq` (`member_memberno`),
  KEY `FK4uyoou8rt8yaol2i373uo6rh8` (`quiz_quizno`),
  CONSTRAINT `FK4uyoou8rt8yaol2i373uo6rh8` FOREIGN KEY (`quiz_quizno`) REFERENCES `quiz` (`quizno`),
  CONSTRAINT `FKecyvl21jj5ysit9gf51a2tcoq` FOREIGN KEY (`member_memberno`) REFERENCES `member` (`memberno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempt`
--

LOCK TABLES `attempt` WRITE;
/*!40000 ALTER TABLE `attempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendanceno` int NOT NULL AUTO_INCREMENT,
  `attdate` date NOT NULL,
  `point` int DEFAULT NULL,
  `member_memberno` int DEFAULT NULL,
  PRIMARY KEY (`attendanceno`),
  KEY `FKf3kl4otwnrobbbkdtl5flu65b` (`member_memberno`),
  CONSTRAINT `FKf3kl4otwnrobbbkdtl5flu65b` FOREIGN KEY (`member_memberno`) REFERENCES `member` (`memberno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`categoryno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'국어'),(2,'수학'),(3,'사회'),(4,'과학'),(5,'영어');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `courseno` int NOT NULL AUTO_INCREMENT,
  `book` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bookimg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseimg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credate` datetime(6) DEFAULT NULL,
  `grade` int NOT NULL,
  `moddate` datetime(6) DEFAULT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_categoryno` int DEFAULT NULL,
  `instructor_memberno` int DEFAULT NULL,
  PRIMARY KEY (`courseno`),
  KEY `FKbfg8eqs4v188lr7wfiqh76unj` (`category_categoryno`),
  KEY `FKqpj06126ilgkf63jjbsmxwagy` (`instructor_memberno`),
  CONSTRAINT `FKbfg8eqs4v188lr7wfiqh76unj` FOREIGN KEY (`category_categoryno`) REFERENCES `category` (`categoryno`),
  CONSTRAINT `FKqpj06126ilgkf63jjbsmxwagy` FOREIGN KEY (`instructor_memberno`) REFERENCES `member` (`memberno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'','','국어','https://cbox.ebs.co.kr/course/2025/3/4/100006189/124105586064065305_course.jpg','2025-12-16 11:23:23.374416',1,'2025-12-16 11:29:25.273072','신나는국어',1,2),(2,'','','영어','https://cbox.ebs.co.kr/course/2025/1/15/100006184/119976294404710637_course.jpg','2025-12-16 13:46:40.040279',1,'2025-12-16 13:46:40.040301','재밌는영어',5,2);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `lessonno` int NOT NULL AUTO_INCREMENT,
  `content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credate` datetime(6) DEFAULT NULL,
  `moddate` datetime(6) DEFAULT NULL,
  `time` int NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_courseno` int DEFAULT NULL,
  PRIMARY KEY (`lessonno`),
  UNIQUE KEY `UK2kno9t51acnontrndhrf1n5wf` (`video`),
  KEY `FKeelrte423lj5tsufmt1sqb44p` (`course_courseno`),
  CONSTRAINT `FKeelrte423lj5tsufmt1sqb44p` FOREIGN KEY (`course_courseno`) REFERENCES `course` (`courseno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'국어','2025-12-16 11:31:49.010158','2025-12-16 11:31:49.010175',10,'신나는국어','https://youtu.be/Tall-kOmlPk?si=60Oc2Et1CPP_SF9y',1);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `memberno` int NOT NULL AUTO_INCREMENT,
  `birth` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellnum` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cre_date` datetime(6) DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberid` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_date` datetime(6) DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int DEFAULT NULL,
  `proimg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint DEFAULT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`memberno`),
  UNIQUE KEY `UKmbmcqelty0fbrvxp1q58dn57t` (`email`),
  UNIQUE KEY `UKabcxqx5ksg9injsjhxxct3t7q` (`memberid`),
  UNIQUE KEY `UKqecy9nok2uc0k09clurtnid3j` (`cellnum`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,'2020-10-10','010-8888-8888','2025-12-16 10:41:53.614731','QWER11@naver.com','강사','2025-12-16 10:41:53.614757','강사',0,'/images/profile.png','$2a$10$bZZ0AYBYIdtja5ovFBUJgOzkeLdXc8sbXEY3.C03xgURFh8sHaC9S',2,'대구고등학교'),(3,'2020-10-10','010-7777-7777','2025-12-16 11:15:14.580264','lms@naver.com','관리자','2025-12-16 11:17:42.310807','관리자',0,'/images/profile.png','$2a$10$unhUT03Hp8XV2PP/VQ4tpu85PoOvzmy0V.V.nGBTIPw4jA8w57FfO',0,NULL),(5,'2020-10-10','010-5555-5555','2025-12-16 11:46:01.471392','lms123@naver.com','학생','2025-12-16 11:46:01.471413','학생',0,'/images/profile.png','$2a$10$PWiFMI.REtweb6C2rIpW3uM6EMetJlZ4DpV0PXI/QDDzlulMrcgoq',1,NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memo` (
  `memono` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cre_date` datetime(6) DEFAULT NULL,
  `courseno` int DEFAULT NULL,
  `lesson_lessonno` int DEFAULT NULL,
  `member_memberno` int DEFAULT NULL,
  PRIMARY KEY (`memono`),
  KEY `FK6js2t1mxy754p9uevsr04kteu` (`courseno`),
  KEY `FKkeoe6j4uy5ra3nahkqnrw0gv` (`lesson_lessonno`),
  KEY `FKek95f7749vle2i6pqq3xdjs33` (`member_memberno`),
  CONSTRAINT `FK6js2t1mxy754p9uevsr04kteu` FOREIGN KEY (`courseno`) REFERENCES `course` (`courseno`),
  CONSTRAINT `FKek95f7749vle2i6pqq3xdjs33` FOREIGN KEY (`member_memberno`) REFERENCES `member` (`memberno`),
  CONSTRAINT `FKkeoe6j4uy5ra3nahkqnrw0gv` FOREIGN KEY (`lesson_lessonno`) REFERENCES `lesson` (`lessonno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
INSERT INTO `memo` VALUES (1,'국어1-1메모','2025-12-16 11:32:00.204086',1,1,2);
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progress` (
  `progressno` int NOT NULL AUTO_INCREMENT,
  `completed` bit(1) NOT NULL,
  `lessonno` int NOT NULL,
  `memberno` int NOT NULL,
  PRIMARY KEY (`progressno`),
  KEY `FKn567re0m8m8j91g7wscctfa4d` (`lessonno`),
  KEY `FK1nqw53fhk5ty4ixsqf3hpns40` (`memberno`),
  CONSTRAINT `FK1nqw53fhk5ty4ixsqf3hpns40` FOREIGN KEY (`memberno`) REFERENCES `member` (`memberno`),
  CONSTRAINT `FKn567re0m8m8j91g7wscctfa4d` FOREIGN KEY (`lessonno`) REFERENCES `lesson` (`lessonno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `questionno` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credate` datetime(6) DEFAULT NULL,
  `moddate` datetime(6) DEFAULT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_courseno` int DEFAULT NULL,
  `lesson_lessonno` int DEFAULT NULL,
  `member_memberno` int DEFAULT NULL,
  PRIMARY KEY (`questionno`),
  KEY `FKltafen7okygtcmn3kuupnbw9f` (`course_courseno`),
  KEY `FKr2pbko7xh9f7awcbnpr8jheq6` (`lesson_lessonno`),
  KEY `FKf8lon1h9ht0vhjco9ao4bfhtt` (`member_memberno`),
  CONSTRAINT `FKf8lon1h9ht0vhjco9ao4bfhtt` FOREIGN KEY (`member_memberno`) REFERENCES `member` (`memberno`),
  CONSTRAINT `FKltafen7okygtcmn3kuupnbw9f` FOREIGN KEY (`course_courseno`) REFERENCES `course` (`courseno`),
  CONSTRAINT `FKr2pbko7xh9f7awcbnpr8jheq6` FOREIGN KEY (`lesson_lessonno`) REFERENCES `lesson` (`lessonno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'왜 사과가 과일일까요?','2025-12-16 11:48:13.730842','2025-12-16 11:48:13.730874','국어질문입니다',1,1,5);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `quizno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalpoint` int NOT NULL,
  `lessonno` int DEFAULT NULL,
  `courseno` int DEFAULT NULL,
  PRIMARY KEY (`quizno`),
  UNIQUE KEY `UKrxv9fsblnek5e2yg6m7oligr1` (`lessonno`),
  UNIQUE KEY `UK57bo3awb8cxjhjix84ju4yaty` (`courseno`),
  CONSTRAINT `FK63mi7xue5n3uk8o1bfkj336ug` FOREIGN KEY (`lessonno`) REFERENCES `lesson` (`lessonno`),
  CONSTRAINT `FKgwsmva6ddrtqlc0eiwr5i03s2` FOREIGN KEY (`courseno`) REFERENCES `course` (`courseno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'1학년국어',100,NULL,1);
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_question` (
  `quizquestionno` int NOT NULL AUTO_INCREMENT,
  `answer` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int NOT NULL,
  `type` enum('MULTIPLE_CHOICE','OX_QUIZ','SHORT_ANSWER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quizno` int DEFAULT NULL,
  PRIMARY KEY (`quizquestionno`),
  KEY `FK7row122mfo2207wxypf12ecwi` (`quizno`),
  CONSTRAINT `FK7row122mfo2207wxypf12ecwi` FOREIGN KEY (`quizno`) REFERENCES `quiz` (`quizno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_question`
--

LOCK TABLES `quiz_question` WRITE;
/*!40000 ALTER TABLE `quiz_question` DISABLE KEYS */;
INSERT INTO `quiz_question` VALUES (1,'O','“나는 학교에 갔어요.”는 맞는 문장이다.',50,'OX_QUIZ',1),(2,'X','사과는 과일이 아니다',50,'OX_QUIZ',1);
/*!40000 ALTER TABLE `quiz_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewno` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credate` datetime(6) DEFAULT NULL,
  `moddate` datetime(6) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `course_courseno` int DEFAULT NULL,
  `lesson_lessonno` int DEFAULT NULL,
  `member_memberno` int DEFAULT NULL,
  PRIMARY KEY (`reviewno`),
  KEY `FKdeeuj40iwrdpb4q4ppfdvem6j` (`course_courseno`),
  KEY `FKlg4qddn90oebmgss4vu7a9t4a` (`lesson_lessonno`),
  KEY `FKf8omplkweg8lcc6de6cn3hcvj` (`member_memberno`),
  CONSTRAINT `FKdeeuj40iwrdpb4q4ppfdvem6j` FOREIGN KEY (`course_courseno`) REFERENCES `course` (`courseno`),
  CONSTRAINT `FKf8omplkweg8lcc6de6cn3hcvj` FOREIGN KEY (`member_memberno`) REFERENCES `member` (`memberno`),
  CONSTRAINT `FKlg4qddn90oebmgss4vu7a9t4a` FOREIGN KEY (`lesson_lessonno`) REFERENCES `lesson` (`lessonno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'알찬 강의였습니다','2025-12-16 11:48:28.369654','2025-12-16 11:48:28.369677',5,1,NULL,5);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answer`
--

DROP TABLE IF EXISTS `user_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_answer` (
  `useranswerno` int NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iscorrect` bit(1) DEFAULT NULL,
  `attempt_attemptno` int DEFAULT NULL,
  `quiz_question_quizquestionno` int DEFAULT NULL,
  PRIMARY KEY (`useranswerno`),
  KEY `FKa3xjfqa26lg45x911d8ir1otq` (`attempt_attemptno`),
  KEY `FK4bnrr2wiyc6subqt99y13qlld` (`quiz_question_quizquestionno`),
  CONSTRAINT `FK4bnrr2wiyc6subqt99y13qlld` FOREIGN KEY (`quiz_question_quizquestionno`) REFERENCES `quiz_question` (`quizquestionno`),
  CONSTRAINT `FKa3xjfqa26lg45x911d8ir1otq` FOREIGN KEY (`attempt_attemptno`) REFERENCES `attempt` (`attemptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answer`
--

LOCK TABLES `user_answer` WRITE;
/*!40000 ALTER TABLE `user_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-19 16:20:53
