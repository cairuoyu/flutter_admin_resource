-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- author: cairuoyu
-- github: https://github.com/cairuoyu/flutter_admin_resource
-- Host: cairuoyu.com    Database: flutter_admin
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` varchar(36) NOT NULL,
  `title` varchar(254) DEFAULT NULL,
  `title_sub` varchar(254) DEFAULT NULL,
  `author` varchar(36) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `publish_time` varchar(20) DEFAULT NULL,
  `order_by` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `file_url` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `id` varchar(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `name_short` varchar(254) DEFAULT NULL,
  `pid` varchar(36) DEFAULT NULL,
  `header_id` varchar(36) DEFAULT NULL,
  `fun` varchar(2) DEFAULT NULL,
  `remark` varchar(254) DEFAULT NULL,
  `order_by` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dict`
--

DROP TABLE IF EXISTS `dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dict` (
  `id` varchar(36) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `creater_id` varchar(45) DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dict_item`
--

DROP TABLE IF EXISTS `dict_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dict_item` (
  `id` varchar(36) NOT NULL,
  `dict_id` varchar(36) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `id` varchar(36) NOT NULL,
  `bid` varchar(36) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` varchar(36) NOT NULL,
  `title` varchar(145) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `thumbs` int DEFAULT NULL,
  `memo` varchar(245) DEFAULT NULL,
  `url` varchar(245) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `name_en` varchar(254) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `pid` varchar(254) DEFAULT NULL,
  `url` varchar(254) DEFAULT NULL,
  `module` varchar(254) DEFAULT NULL,
  `remark` varchar(254) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `order_by` int DEFAULT NULL,
  `subsystem_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` varchar(36) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `comment_count` int DEFAULT NULL,
  `appreciate_count` int DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message_replay`
--

DROP TABLE IF EXISTS `message_replay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_replay` (
  `id` varchar(36) NOT NULL,
  `message_id` varchar(36) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` varchar(254) NOT NULL,
  `user_id` varchar(254) DEFAULT NULL,
  `nick_name` varchar(254) DEFAULT NULL,
  `avatar_url` varchar(254) DEFAULT NULL,
  `gender` varchar(254) DEFAULT NULL,
  `country` varchar(254) DEFAULT NULL,
  `province` varchar(254) DEFAULT NULL,
  `city` varchar(254) DEFAULT NULL,
  `name` varchar(254) DEFAULT NULL,
  `school` varchar(254) DEFAULT NULL,
  `major` varchar(254) DEFAULT NULL,
  `birthday` varchar(254) DEFAULT NULL,
  `entrance` varchar(254) DEFAULT NULL,
  `hometown` varchar(254) DEFAULT NULL,
  `memo` varchar(254) DEFAULT NULL,
  `dept_id` varchar(254) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(145) DEFAULT NULL,
  `name_en` varchar(145) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` varchar(45) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_menu`
--

DROP TABLE IF EXISTS `role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_menu` (
  `menu_id` varchar(45) NOT NULL,
  `role_id` varchar(45) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` varchar(45) NOT NULL,
  `role_id` varchar(45) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `s_area_age_gender`
--

DROP TABLE IF EXISTS `s_area_age_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_area_age_gender` (
  `id` text,
  `area` text,
  `age` int DEFAULT NULL,
  `age_g1` int DEFAULT NULL,
  `age_g2` int DEFAULT NULL,
  `age1` int DEFAULT NULL,
  `age1_g1` int DEFAULT NULL,
  `age1_g2` int DEFAULT NULL,
  `age2` int DEFAULT NULL,
  `age2_g1` int DEFAULT NULL,
  `age2_g2` int DEFAULT NULL,
  `age3` int DEFAULT NULL,
  `age3_g1` int DEFAULT NULL,
  `age3_g2` int DEFAULT NULL,
  `age4` int DEFAULT NULL,
  `age4_g1` int DEFAULT NULL,
  `age4_g2` int DEFAULT NULL,
  `age5` int DEFAULT NULL,
  `age5_g1` int DEFAULT NULL,
  `age5_g2` int DEFAULT NULL,
  `age6` int DEFAULT NULL,
  `age6_g1` int DEFAULT NULL,
  `age6_g2` int DEFAULT NULL,
  `age7` int DEFAULT NULL,
  `age7_g1` int DEFAULT NULL,
  `age7_g2` int DEFAULT NULL,
  `age8` int DEFAULT NULL,
  `age8_g1` int DEFAULT NULL,
  `age8_g2` int DEFAULT NULL,
  `age9` int DEFAULT NULL,
  `age9_g1` int DEFAULT NULL,
  `age9_g2` int DEFAULT NULL,
  `age10` int DEFAULT NULL,
  `age10_g1` int DEFAULT NULL,
  `age10_g2` int DEFAULT NULL,
  `age11` int DEFAULT NULL,
  `age11_g1` int DEFAULT NULL,
  `age11_g2` int DEFAULT NULL,
  `age12` int DEFAULT NULL,
  `age12_g1` int DEFAULT NULL,
  `age12_g2` int DEFAULT NULL,
  `age13` int DEFAULT NULL,
  `age13_g1` int DEFAULT NULL,
  `age13_g2` int DEFAULT NULL,
  `age14` int DEFAULT NULL,
  `age14_g1` int DEFAULT NULL,
  `age14_g2` int DEFAULT NULL,
  `age15` int DEFAULT NULL,
  `age15_g1` int DEFAULT NULL,
  `age15_g2` int DEFAULT NULL,
  `age16` int DEFAULT NULL,
  `age16_g1` int DEFAULT NULL,
  `age16_g2` int DEFAULT NULL,
  `age17` int DEFAULT NULL,
  `age17_g1` int DEFAULT NULL,
  `age17_g2` int DEFAULT NULL,
  `age18` int DEFAULT NULL,
  `age18_g1` int DEFAULT NULL,
  `age18_g2` int DEFAULT NULL,
  `age19` int DEFAULT NULL,
  `age19_g1` int DEFAULT NULL,
  `age19_g2` int DEFAULT NULL,
  `age20` int DEFAULT NULL,
  `age20_g1` int DEFAULT NULL,
  `age20_g2` int DEFAULT NULL,
  `age21` int DEFAULT NULL,
  `age21_g1` int DEFAULT NULL,
  `age21_g2` int DEFAULT NULL,
  `age22` int DEFAULT NULL,
  `age22_g1` int DEFAULT NULL,
  `age22_g2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subsystem`
--

DROP TABLE IF EXISTS `subsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subsystem` (
  `id` varchar(36) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `order_by` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_log` (
  `id` varchar(254) NOT NULL COMMENT '日志ID',
  `user_id` varchar(254) DEFAULT NULL COMMENT '用户名字',
  `user_ip` varchar(254) DEFAULT NULL COMMENT '用户IP',
  `request_class` varchar(254) DEFAULT NULL COMMENT '请求方法',
  `request_method` varchar(254) DEFAULT NULL COMMENT '请求方法',
  `request_desc` varchar(254) DEFAULT NULL COMMENT '方法描述',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(254) NOT NULL,
  `user_name` varchar(254) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id` varchar(254) NOT NULL,
  `user_id` varchar(254) DEFAULT NULL,
  `user_name` varchar(245) DEFAULT NULL,
  `nick_name` varchar(254) DEFAULT NULL,
  `avatar_url` varchar(254) DEFAULT NULL,
  `gender` varchar(254) DEFAULT NULL,
  `country` varchar(254) DEFAULT NULL,
  `province` varchar(254) DEFAULT NULL,
  `city` varchar(254) DEFAULT NULL,
  `name` varchar(254) DEFAULT NULL,
  `school` varchar(254) DEFAULT NULL,
  `major` varchar(254) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `entrance` varchar(254) DEFAULT NULL,
  `hometown` varchar(254) DEFAULT NULL,
  `memo` varchar(254) DEFAULT NULL,
  `dept_id` varchar(254) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id` varchar(36) NOT NULL,
  `title` varchar(145) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `thumbs` int DEFAULT NULL,
  `memo` varchar(245) DEFAULT NULL,
  `url` varchar(245) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-22 15:09:04
