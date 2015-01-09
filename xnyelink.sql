-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: xnyelink
-- ------------------------------------------------------
-- Server version	5.5.28-log

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
-- Table structure for table `link_category`
--

DROP TABLE IF EXISTS `link_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(16) NOT NULL COMMENT '类别名',
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_category`
--

LOCK TABLES `link_category` WRITE;
/*!40000 ALTER TABLE `link_category` DISABLE KEYS */;
INSERT INTO `link_category` VALUES (1,'php',0),(2,'前端',0),(3,'设计',0),(4,'励志',0);
/*!40000 ALTER TABLE `link_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_feed`
--

DROP TABLE IF EXISTS `link_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL COMMENT '标题',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `cid` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_feed`
--

LOCK TABLES `link_feed` WRITE;
/*!40000 ALTER TABLE `link_feed` DISABLE KEYS */;
INSERT INTO `link_feed` VALUES (26,'Redis学习手册(Set数据类型) - Stephen_Liu - 博客园','http://www.cnblogs.com/stephen-liu74/archive/2012/02/15/2352512.html',1,1404820735),(27,'千万别错过','http://www.qwbcg.com/',4,1404820918),(28,'Mr憬灏的微博_微博','http://weibo.com/u/2785708954?wvr=5&c=spr_web_sq_baidub_weibo_t001',1,1404828844),(29,'细说PHP中strlen和mb_strlen的区别 - 51CTO.COM','http://developer.51cto.com/art/201105/263103.htm',2,1404834090),(36,'百度一下，你就知道','http://www.baidu.com/',1,1404924017),(37,'xnye知识分享平台','http://115.29.36.137:8888/',1,1404975076),(38,'消息传递--扩展开发文档','http://open.chrome.360.cn/extension_dev/messaging.html',1,1404975461),(39,'百度一下，你就知道','http://www.baidu.com/',1,1404984633),(40,'HTML5梦工场-HTML5 Dreamworks -  Powered by Discuz!','http://www.html5dw.com/portal.php',1,1404991775),(41,'xnye','http://115.29.36.137:8888/',1,1405002706),(42,'泽洋设计｜专业界面设计公司','http://ceyoung.cn/index.html',1,1405002770),(43,'xnye','http://115.29.36.137:8888/',0,1405002834),(44,'希悦','http://seiue.com/#team',0,1405002863),(45,'百度一下dsfdsfd','http://www.baidu.com/',1,1405002917),(46,'［人人访谈］Worktile王涛：我在创业这一年里 - Worktile','https://worktile.com/blog/press/woshipm-interview-this-year-about-startup',4,1405047108),(47,'百度一下，你就知道','http://www.baidu.com/',3,1405047167),(48,'scrolltop_百度搜索','http://www.baidu.com/s?wd=scrolltop&tn=baidu&ie=utf-8&f=3&rsv_bp=1&rsv_sug3=3&rsv_sug4=187&rsv_sug1=',2,1405049018),(49,'select option 高度_百度搜索','http://www.baidu.com/s?wd=select%20option%20%E9%AB%98%E5%BA%A6&tn=baidu&ie=utf-8&f=3&oq=select%20opt',3,1405051509),(50,'		NignX 下nginx.conf 配置文件的详解 - 小小浮云的日志 - 网易博客','http://chengxcwl.blog.163.com/blog/static/382838972011313112521906/',2,1405063046),(51,'淘宝网 - 淘！我喜欢','http://www.taobao.com/',2,1407835911);
/*!40000 ALTER TABLE `link_feed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-24 12:07:09
