-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 172.16.101.66    Database: emotibot
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `ent_api`
--

DROP TABLE IF EXISTS `ent_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ent_api` (
  `ID` int(11) NOT NULL,
  `URL` varchar(50) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `RIGHT_ID` int(11) DEFAULT NULL,
  `MESSAGE` varchar(50) DEFAULT NULL,
  `SHOW_IN_OP_LOG` bit(1) DEFAULT b'1',
  `operation` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_right_id` (`RIGHT_ID`),
  KEY `idx_url` (`URL`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ent_api`
--

LOCK TABLES `ent_api` WRITE;
/*!40000 ALTER TABLE `ent_api` DISABLE KEYS */;
INSERT INTO `ent_api` VALUES (1,'/robot/template','',1,'获取机器人类型','\0',NULL),(2,'/industries/list','',1,'获取行业类型','\0',NULL),(3,'/solutions/list','',1,'获取解决方案','\0',NULL),(5,'/robot/delete','',2,'删除机器人','',NULL),(6,'/solution_stage_status/set','',NULL,'设置机器人状态','\0',NULL),(7,'/upload/sq','',12,'上传标准问题','','3'),(8,'/upload/lq','',27,'上传语料','','3'),(11,'/sherlock/datasUpdate','',11,'发起训练请求','',NULL),(12,'/sherlock/datasReportTotal','',11,'获取训练结果','',NULL),(13,'/ml_test/exec','',11,'发起测试','',NULL),(15,'/sq/delete','',6,'删除标准问题','','2'),(18,'/ml_test/deleteTestCase','',9,'删除测试题','',NULL),(19,'/openapi/chat','',NULL,'发起对话','',NULL),(20,'/view_chat_log_history/list','',NULL,'查询对话日志','',NULL),(22,'/chatlog/sq/trend','',NULL,'获取问答趋势','',NULL),(23,'/chatlog/sq/hot','',NULL,'获取最热问答列表','',NULL),(24,'/api_user/newlist','',20,'获取成员列表','',NULL),(26,'/robot/update','',3,'修改机器人','',NULL),(27,'/config/save','',3,'修改机器人设置','',NULL),(30,'/chat_optimization/group','',19,'获取优化周报获取分组','',NULL),(31,'/chat_optimization/reports','',19,'获取优化周报','',NULL),(32,'/sherlock/clusterRecommend','',NULL,'获取语料推荐','',NULL),(33,'/chat_optimization/label','',19,'更新标注状态','',NULL),(34,'/eqlq/info','',8,'获取语料列表','',NULL),(37,'/sq/info','',NULL,'获取标准问题列表','',NULL),(38,'/sq/summary','',NULL,'获取标准问题，训练语料数量','',NULL),(39,'/api_user/modistatus','',NULL,'修改用户状态','',NULL),(40,'/api_user/modirole','',20,'修改用户角色','',NULL),(41,'/dal/query/taginfo','',NULL,'获取标签被引用的信息','',NULL),(42,'/sentenceAccociation/sentenceAccociation','',NULL,'获取推荐标准问','',NULL),(44,'/ml_test/saveTestcase','',9,'保存测试题修改','',NULL),(45,'/tag/delete','',10,'删除标准问/答案标签','',NULL),(46,'/tag/add','',10,'添加标准问/答案标签','',NULL),(47,'/tag/update','',10,'修改标准问/答案标签','',NULL),(48,'/tag/get/list','',NULL,'获取标准问/答案标签','\0',NULL),(49,'/tag/search/list','',NULL,'搜索标准问/答案标签','',NULL),(50,'/upload/progress','',12,'获取上传语料文件的进度','\0',NULL),(51,'/upload/delete_log','',12,'清除语料上传进度信息','\0',NULL),(52,'/sq/download','',13,'导出标准问题','','4'),(53,'/upload/history','',13,'获取语料上传历史','',NULL),(54,'/ml_test/downloadAllTestcases','',30,'导出测试题','',NULL),(55,'/ml_test/download','',30,'导出测试结果','',NULL),(56,'/ml_test/lastestDetails','',NULL,'获取最后最后测试结果','',NULL),(57,'/dal/operation/insert/sq','',6,'添加标准问题','','0'),(58,'/dal/operation/update/sq','',6,'修改标准问题','','1'),(59,'/dal/operation/delete/sq','',6,'删除标准问题','','2'),(60,'/dal/operation/query/sq','',NULL,'查找标准问题','',NULL),(61,'/dal/operation/query/answer','',NULL,'查找标准问题答案','',NULL),(62,'/dal/operation/deleteSet/sq','',6,'删除标准问题上的标签 ','','2'),(63,'/dal/operation/deleteSet/answer','',6,'删除答案上的标签','','2'),(64,'/dal/operation/delete/answer','',6,'删除标准问题回答','','2'),(65,'/dal/operation/update/answer','',6,'修改标准问题回答','','1'),(66,'/dal/operation/upsert/lq','',8,'保存/修改扩写','','0'),(67,'/dal/operation/insert/answer','',6,'新增标准问题回答','','0'),(68,'dal/operation/upsert/lq','',8,'新增/修改语料','','0'),(69,'/dal/operation/update/lq','',8,'修改语料','','1'),(70,'/dal/operation/delete/lq','',8,'删除语料','','2'),(71,'/dal/operation/insert/lq','',8,'新增语料','','0'),(72,'/dal/operation/query/nativeLog','',NULL,'获取用户日志','',NULL),(73,'/dal/operation/query/sq','',NULL,'获取标准问题列表','',NULL),(74,'/dal/operation/insert/lq','',8,'给用户日志提交标注','','0'),(79,'/solutions/set','',3,'设置机器人解决方案','',NULL),(80,'/task_engine/mapping_table/upload','',14,'上传任务引擎转换数据','',NULL),(81,'/task_engine/mapping_table/list','',14,'获取任务引擎转换数据','',NULL),(82,'/task_engine/mapping_table/delete','',14,'删除任务引擎转换数据','',NULL),(83,'/task_engine/mapping_table/download','',14,'下载任务引擎转换数据','',NULL),(84,'/task_engine/scenario','',14,'编辑任务引擎所有场景','',NULL),(85,'/task_engine/app','',14,'获取任务引擎所有场景','',NULL),(86,'/task_engine/scenario/upload','',14,'导入任务引擎','',NULL),(87,'/knowledge/check/','',16,'检查知识图谱','',NULL),(88,'/knowledge/download/','',16,'导出知识图谱','',NULL),(89,'/knowledge/upload/','',16,'导入知识图谱','',NULL),(90,'/knowledge/reset/','',16,'知识图谱版本','',NULL),(91,'/wordbank/check','',17,'检查词库','',NULL),(92,'/wordbank/download','',NULL,'导出词库','',NULL),(93,'/wordbank/upload','',23,'导入词库','',NULL),(94,'/wordbank/main/add','',17,'新增词库条目','',NULL),(95,'/wordbank/main/update_level','',17,'修改词库路径','',NULL),(96,'/wordbank/main/update','',17,'修改词库条目','',NULL),(97,'/wordbank/main/search_level','',17,'搜索词库路径','',NULL),(98,'/wordbank/main/search_level_distinct','',17,'搜索词库路径（唯一）','',NULL),(99,'/wordbank/main/search','',17,'搜索词库','',NULL),(100,'/wordbank/main/delete_level','',17,'删除词库路径','',NULL),(101,'/wordbank/main/search_word','',17,'搜索词库条目','',NULL),(102,'/wordbank/main/delete','',17,'删除词库条目','',NULL),(103,'/wordbank/main/edit_update','',17,'重新建模词库','',NULL),(104,'/wordbank/sensitive/search','',18,'查询敏感词词库','',NULL),(105,'/wordbank/sensitive/delete','',18,'编辑敏感词词库','',NULL),(106,'/wordbank/sensitive/update','',18,'编辑敏感词词库','',NULL),(107,'/wordbank/sensitive/check','',18,'检查敏感词','',NULL),(108,'/backfill/update','',3,'修改backfill','',NULL),(109,'/ent_role/rules','',20,'获取角色权限列表','',NULL),(110,'/api_user/member','',20,'添加企业成员','',NULL),(111,'/backfill/search','',NULL,'获取backfill','\0',NULL),(112,'/ml_test/testCase','',8,'获取单个测试题信息','',NULL),(113,'/view_chat_log_history/exportlog','',21,'导出对话日志','',NULL),(114,'/solution_stage_status/online','',4,'申请机器人上线','',NULL),(115,'/upload/tc','',28,'上传测试题','',NULL),(116,'/chat_optimization/contents','',19,'获取聚类各组详细对话','',NULL),(117,'/functions/get','',NULL,'获取机器人技能列表','',NULL),(118,'/functions/set','',26,'设置机器人技能（开关）','',NULL),(119,'/export/check','',13,'数据导出','',NULL),(120,'/operation_log/query','',NULL,'查询操作日志','\0',NULL),(121,'/ai/ssm_train','',11,'常用标准问题训练',NULL,NULL),(122,'/ml_test/sync_exec','',11,'常用标准问题测试','',NULL);
/*!40000 ALTER TABLE `ent_api` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-05 16:44:35
