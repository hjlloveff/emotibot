# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: emotibot
# Generation Time: 2018-05-14 12:21:24 +0000
# ************************************************************

USE emotibot;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*!40101 SET NAMES utf8mb4 */;

LOCK TABLES `api_enterprise` WRITE;
/*!40000 ALTER TABLE `api_enterprise` DISABLE KEYS */;

INSERT INTO `api_enterprise` (`id`, `enterprise_name`, `account_type`, `customer_manager`, `email`, `phone`, `project_leader`, `account_status`, `create_time`, `create_user`, `modify_time`, `modify_user`, `is_remove`, `business_card`, `remark`, `enterprise_type`)
VALUES
	('bb3e3925f0ad11e7bd860242ac120003','csbot','2',NULL,NULL,NULL,NULL,'0','2018-05-14 00:59:07',NULL,'2018-05-14 00:59:07',NULL,'0',NULL,NULL,1),
	('{950323A2-708F-B88E-48DD-A08CD77E21CA}','杨龙测试','2','杨龙','longyang@emotibot.com','18621581066','yanglong','0','2018-01-03 14:47:34',NULL,'2018-01-19 10:38:31','openApi','0','','备注不能未空',1);

/*!40000 ALTER TABLE `api_enterprise` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `api_user` WRITE;
/*!40000 ALTER TABLE `api_user` DISABLE KEYS */;

INSERT INTO `api_user` (`UserId`, `Phone`, `Email`, `CreatedTime`, `Password`, `NickName`, `Gender`, `Type`, `Status`, `UpdatedTime`, `Owner`, `Remark`, `AiNickName`, `Msg`, `enterprise_id`, `RoleId`, `AccountStatus`)
VALUES
	('4b21158a395311e88a710242ac110003',NULL,'csbotadmin','2018-04-05 15:21:54','ac04367d3155bb651df2e4220bdb8303','CSBOT',1,0,1,'2018-04-05 15:21:54',NULL,NULL,NULL,'你好，我是你的机器人XX，我可以陪你聊天，为你答疑解惑哦！','bb3e3925f0ad11e7bd860242ac120003',0,1),
	('4b21158a395311e88a710242ac110002',NULL,'deployer','2018-04-05 15:21:54','7e2ba10110f719dd65a0403305770b08','CSBOT',1,0,1,'2018-04-05 15:21:54',NULL,NULL,NULL,'你好，我是你的机器人XX，我可以陪你聊天，为你答疑解惑哦！',NULL,0,1);


/*!40000 ALTER TABLE `api_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table api_userkey
# ------------------------------------------------------------

LOCK TABLES `api_userkey` WRITE;
/*!40000 ALTER TABLE `api_userkey` DISABLE KEYS */;

INSERT INTO `api_userkey` (`UserId`, `Count`, `Version`, `CreatedTime`, `PreductName`, `ApiKey`, `Status`, `MaxCount`, `AutoUserID`, `NickName`, `CommonFunctionIds`, `AreaIds`, `Type`, `MsgType`, `Msg`, `MsgJson`, `template_api_key`, `industry_id`, `order_no`, `description`)
VALUES
	('0E2C2D3D11FB8502E8629830869B05CAD',0,1,'2017-05-22 14:26:17','admin@emotibot.com_EmotibotTest_1495434377_156','54f59223a3591795e91f9d786cd36184',1,500,0,'客服机器人',',7,','1,2,3,4',4,0,'你好，我是你的机器人XX，我可以陪你聊天，为你答疑解惑哦！','{\"img\":\"images/func_07.png\",\"description\":\"this is template hahaha this is very inters lkasjdkll;k lkj lkj  jlk jlk jk jk jk jk jlk j ljkjlkj lklk jklj klj lkjlkj kl jklj lk\"}','54f59223a3591795e91f9d786cd36184',1,0,'可以帮您回答客户经常询问的问题'),
	('4b21158a395311e88a710242ac110003',0,0,'2018-04-05 15:21:02','CSBOT','csbot',1,500,0,'CSBOT','','1,2,3,4',1,1,'你好，我是你的机器人XX，我可以陪你聊天，为你答疑解惑哦！',NULL,'54f59223a3591795e91f9d786cd36184',1,0,NULL);

/*!40000 ALTER TABLE `api_userkey` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table bf_controller_config
# ------------------------------------------------------------

LOCK TABLES `bf_controller_config` WRITE;
/*!40000 ALTER TABLE `bf_controller_config` DISABLE KEYS */;

INSERT INTO `bf_controller_config` (`id`, `code`, `value`, `category`, `create_time`, `create_user`, `modify_time`, `modify_user`, `is_remove`)
VALUES
	('9b2ca8d1-e498-11e7-afe4-0242ac110008','emotionScoreSwitch','70','env','2017-12-19 16:42:54','gcr',NULL,NULL,'0'),
	('9b2d1ec8-e498-11e7-afe4-0242ac110008','intentScoreSwitch','70','env','2017-12-19 16:42:54','gcr',NULL,NULL,'0'),
	('9b2d9fea-e498-11e7-afe4-0242ac110008','user_repeat_time_limit','1800000','env','2017-12-19 16:42:54','gcr',NULL,NULL,'0'),
	('9b2e6224-e498-11e7-afe4-0242ac110008','except_module','function,inference,scenario,task_engine','env','2017-12-19 16:42:54','gcr',NULL,NULL,'0'),
	('9b2ed365-e498-11e7-afe4-0242ac110008','repeat_lv1','3','env','2017-12-19 16:42:54','gcr',NULL,NULL,'0'),
	('9b2f501c-e498-11e7-afe4-0242ac110008','repeat_lv2','7','env','2017-12-19 16:42:54','gcr',NULL,NULL,'0');

/*!40000 ALTER TABLE `bf_controller_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_account_status
# ------------------------------------------------------------

LOCK TABLES `ent_account_status` WRITE;
/*!40000 ALTER TABLE `ent_account_status` DISABLE KEYS */;

INSERT INTO `ent_account_status` (`ID`, `Name`)
VALUES
	(0,'未激活'),
	(1,'正常'),
	(2,'停用');

/*!40000 ALTER TABLE `ent_account_status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_ai_algorithm
# ------------------------------------------------------------

LOCK TABLES `ent_ai_algorithm` WRITE;
/*!40000 ALTER TABLE `ent_ai_algorithm` DISABLE KEYS */;

INSERT INTO `ent_ai_algorithm` (`id`, `name`, `kind`, `enabled`, `description`, `provider`, `default_config`, `predict_url`, `train_url`, `test_url`, `remove_url`, `create_datetime`)
VALUES
(24, 'fasttext_zoo_ver_c', 1, b'1', 'char', 'sean team', '{\"lr\": 0.8, \"epoch\": 150, \"ngram\": 2, \"negsample\": 50, \"topic\" : \"http://172.17.0.1:8895/ft_stdq_topic_map\", \"feiyewu_rate\":1.0, \"feiyewu_topic_rate\":0.3, \"pretrain_model\":\"vip_16w\"}', 'http://172.17.0.1:8895/ft_predict', 'http://172.17.0.1:8895/ft_train', 'http://172.17.0.1:8895/ft_batch_predict', 'http://172.17.0.1:8895/ft_delete', '2018-02-28 18:01:18'),
(25,'fasttext_zoo_ver_s',1,b'1','stroke','sean_team','{\"lr\": 0.6, \"epoch\": 80, \"ngram\": 6, \"negsample\": 50, \"topic\" : \"http://172.16.101.66:8896/ft_stdq_topic_map\"}','http://172.16.101.66:8896/ft_predict','http://172.16.101.66:8896/ft_train','http://172.16.101.66:8896/ft_batch_predict','http://172.16.101.66:8896/ft_delete','2018-02-28 18:03:32'),
	(32,'hh test',1,b'0','hh','hh','hh','hh','hh','hh','hh','2018-03-08 14:02:05'),
	(33,'hh test 1',1,b'0','hh','hh','hh','hh','hh','hh','hh','2018-03-08 14:02:21'),
	(34,'hh test 2',1,b'0','hh','hh','{\n    \"provider\": \"hh\"\n}','hh','hh','hh','hh','2018-03-08 14:33:52'),
	(35,'hh test 3',1,b'0','hh','hh','hh','hh','hh','hh','hh','2018-03-08 15:16:15'),
	(36,'hh test 4',2,b'0','hh','hh','hh','hh','hh','hh','hh','2018-03-08 15:40:47'),
	(37,'simple_lr',1,b'1','志豪团队的杰作','林志豪','{}','http://172.16.101.66:8898/predict','http://172.16.101.66:8898/train','http://172.16.101.66:8898/batch_predict','http://172.16.101.66:8898/delete','2018-04-09 13:40:51'),
	(38,'志豪意图模型',2,b'1','志豪开发的通用的意图训练算法','林志豪','{}','http://172.16.101.66:8899/predict','http://172.16.101.66:8899/train','http://172.16.101.66:8899/batch_predict','http://172.16.101.66:8899/delete','2018-04-28 13:34:52'),
	(39,'北京标准句向量训练算法',4,b'1','北京永宁组的句向量模型，专为bf打造','周洪杰','{\"Epochs\" : 3}','http://172.16.101.66:8900/similarity_multi','http://172.16.101.66:8900/train','http://172.16.101.66:8900/test','http://172.16.101.66:8900/delete','2018-05-05 09:24:21');

/*!40000 ALTER TABLE `ent_ai_algorithm` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_ai_algorithm_kind
# ------------------------------------------------------------

LOCK TABLES `ent_ai_algorithm_kind` WRITE;
/*!40000 ALTER TABLE `ent_ai_algorithm_kind` DISABLE KEYS */;

INSERT INTO `ent_ai_algorithm_kind` (`id`, `name`, `description`)
VALUES
	(1,'标准问题匹配','标准问题匹配算法'),
	(2,'意图引擎','意图算法'),
	(3,'情绪识别','情绪算法'),
	(4,'Sentence Embedding','Sentence Embedding');

/*!40000 ALTER TABLE `ent_ai_algorithm_kind` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_api
# ------------------------------------------------------------

LOCK TABLES `ent_api` WRITE;
/*!40000 ALTER TABLE `ent_api` DISABLE KEYS */;
INSERT INTO `ent_api` (`ID`, `URL`, `ENABLED`, `RIGHT_ID`, `MESSAGE`, `SHOW_IN_OP_LOG`, `operation`) VALUES
(1, '/robot/template', b'1', 1, '获取机器人类型', b'0', NULL),
(2, '/industries/list', b'1', 1, '获取行业类型', b'0', NULL),
(3, '/solutions/list', b'1', 1, '获取解决方案', b'0', NULL),
(5, '/robot/delete', b'1', 2, '删除机器人', b'1', NULL),
(6, '/solution_stage_status/set', b'1', NULL, '设置机器人状态', b'0', NULL),
(7, '/upload/sq', b'1', 12, '上传标准问题', b'1', '3'),
(8, '/upload/lq', b'1', 27, '上传语料', b'1', '3'),
(11, '/sherlock/datasUpdate', b'1', 11, '发起训练请求', b'1', NULL),
(12, '/sherlock/datasReportTotal', b'1', 11, '获取训练结果', b'1', NULL),
(13, '/ml_test/exec', b'1', 11, '发起测试', b'1', NULL),
(15, '/sq/delete', b'1', 6, '删除标准问题', b'1', '2'),
(18, '/ml_test/deleteTestCase', b'1', 9, '删除测试题', b'1', '2'),
(19, '/openapi/chat', b'1', NULL, '发起对话', b'1', NULL),
(20, '/view_chat_log_history/list', b'1', NULL, '查询对话日志', b'1', NULL),
(22, '/chatlog/sq/trend', b'1', NULL, '获取问答趋势', b'1', NULL),
(23, '/chatlog/sq/hot', b'1', NULL, '获取最热问答列表', b'1', NULL),
(24, '/api_user/newlist', b'1', 20, '获取成员列表', b'1', NULL),
(26, '/robot/update', b'1', 3, '修改机器人', b'1', NULL),
(27, '/config/save', b'1', 3, '修改机器人设置', b'1', NULL),
(30, '/chat_optimization/group', b'1', 19, '获取优化周报获取分组', b'1', NULL),
(31, '/chat_optimization/reports', b'1', 19, '获取优化周报', b'1', NULL),
(32, '/sherlock/clusterRecommend', b'1', NULL, '获取语料推荐', b'1', NULL),
(33, '/chat_optimization/label', b'1', 19, '更新标注状态', b'1', NULL),
(34, '/eqlq/info', b'1', NULL, '获取语料列表', b'1', NULL),
(37, '/sq/info', b'1', NULL, '获取标准问题列表', b'1', NULL),
(38, '/sq/summary', b'1', NULL, '获取标准问题，训练语料数量', b'1', NULL),
(39, '/api_user/modistatus', b'1', NULL, '修改用户状态', b'1', NULL),
(40, '/api_user/modirole', b'1', 20, '修改用户角色', b'1', NULL),
(41, '/dal/query/taginfo', b'1', NULL, '获取标签被引用的信息', b'1', NULL),
(42, '/sentenceAccociation/sentenceAccociation', b'1', NULL, '获取推荐标准问', b'1', NULL),
(44, '/ml_test/saveTestcase', b'1', 9, '保存测试题修改', b'1', NULL),
(45, '/tag/delete', b'1', 10, '删除标准问/答案标签', b'1', '2'),
(46, '/tag/add', b'1', 10, '添加标准问/答案标签', b'1', '1'),
(47, '/tag/update', b'1', 10, '修改标准问/答案标签', b'1', NULL),
(48, '/tag/get/list', b'1', NULL, '获取标准问/答案标签', b'0', NULL),
(49, '/tag/search/list', b'1', NULL, '搜索标准问/答案标签', b'1', NULL),
(50, '/upload/progress', b'1', 12, '获取上传语料文件的进度', b'0', NULL),
(51, '/upload/delete_log', b'1', 12, '清除语料上传进度信息', b'0', NULL),
(52, '/sq/download', b'1', 13, '导出标准问题', b'1', '4'),
(53, '/upload/history', b'1', 13, '获取语料上传历史', b'1', NULL),
(54, '/ml_test/downloadAllTestcases', b'1', 30, '导出测试题', b'1', '4'),
(55, '/ml_test/download', b'1', 30, '导出测试结果', b'1', '4'),
(56, '/ml_test/lastestDetails', b'1', NULL, '获取最后最后测试结果', b'1', NULL),
(57, '/dal/operation/insert/sq', b'1', 6, '添加标准问题', b'1', '0'),
(58, '/dal/operation/update/sq', b'1', 6, '修改标准问题', b'1', '1'),
(59, '/dal/operation/delete/sq', b'1', 6, '删除标准问题', b'1', '2'),
(60, '/dal/operation/query/sq', b'1', NULL, '查找标准问题', b'1', NULL),
(61, '/dal/operation/query/answer', b'1', NULL, '查找标准问题答案', b'1', NULL),
(62, '/dal/operation/deleteSet/sq', b'1', 6, '删除标准问题上的标签 ', b'1', '2'),
(63, '/dal/operation/deleteSet/answer', b'1', 6, '删除答案上的标签', b'1', '2'),
(64, '/dal/operation/delete/answer', b'1', 6, '删除标准问题回答', b'1', '2'),
(65, '/dal/operation/update/answer', b'1', 6, '修改标准问题回答', b'1', '1'),
(66, '/dal/operation/upsert/lq', b'1', 8, '保存/修改扩写', b'1', '0'),
(67, '/dal/operation/insert/answer', b'1', 6, '新增标准问题回答', b'1', '0'),
(68, 'dal/operation/upsert/lq', b'1', 8, '新增/修改语料', b'1', '0'),
(69, '/dal/operation/update/lq', b'1', 8, '修改语料', b'1', '1'),
(70, '/dal/operation/delete/lq', b'1', 8, '删除语料', b'1', '2'),
(71, '/dal/operation/insert/lq', b'1', 8, '新增语料', b'1', '0'),
(72, '/dal/operation/query/nativeLog', b'1', NULL, '获取用户日志', b'1', NULL),
(73, '/dal/operation/query/sq', b'1', NULL, '获取标准问题列表', b'1', NULL),
(74, '/dal/operation/insert/lq', b'1', 8, '给用户日志提交标注', b'1', '0'),
(79, '/solutions/set', b'1', 3, '设置机器人解决方案', b'1', NULL),
(80, '/task_engine/mapping_table/upload', b'1', 14, '上传任务引擎转换数据', b'1', NULL),
(81, '/task_engine/mapping_table/list', b'1', 14, '获取任务引擎转换数据', b'1', NULL),
(82, '/task_engine/mapping_table/delete', b'1', 14, '删除任务引擎转换数据', b'1', NULL),
(83, '/task_engine/mapping_table/download', b'1', 14, '下载任务引擎转换数据', b'1', NULL),
(84, '/task_engine/scenario', b'1', 14, '编辑任务引擎所有场景', b'1', NULL),
(85, '/task_engine/app', b'1', 14, '获取任务引擎所有场景', b'1', NULL),
(86, '/task_engine/scenario/upload', b'1', 14, '导入任务引擎', b'1', NULL),
(87, '/knowledge/check/', b'1', 16, '检查知识图谱', b'1', NULL),
(88, '/knowledge/download/', b'1', 16, '导出知识图谱', b'1', NULL),
(89, '/knowledge/upload/', b'1', 16, '导入知识图谱', b'1', NULL),
(90, '/knowledge/reset/', b'1', 16, '知识图谱版本', b'1', NULL),
(91, '/wordbank/check', b'1', 17, '检查词库', b'1', NULL),
(92, '/wordbank/download', b'1', NULL, '导出词库', b'1', NULL),
(93, '/wordbank/upload', b'1', 23, '导入词库', b'1', NULL),
(94, '/wordbank/main/add', b'1', 17, '新增词库条目', b'1', NULL),
(95, '/wordbank/main/update_level', b'1', 17, '修改词库路径', b'1', NULL),
(96, '/wordbank/main/update', b'1', 17, '修改词库条目', b'1', NULL),
(97, '/wordbank/main/search_level', b'1', 17, '搜索词库路径', b'1', NULL),
(98, '/wordbank/main/search_level_distinct', b'1', 17, '搜索词库路径（唯一）', b'1', NULL),
(99, '/wordbank/main/search', b'1', 17, '搜索词库', b'1', NULL),
(100, '/wordbank/main/delete_level', b'1', 17, '删除词库路径', b'1', NULL),
(101, '/wordbank/main/search_word', b'1', 17, '搜索词库条目', b'1', NULL),
(102, '/wordbank/main/delete', b'1', 17, '删除词库条目', b'1', NULL),
(103, '/wordbank/main/edit_update', b'1', 17, '重新建模词库', b'1', NULL),
(104, '/wordbank/sensitive/search', b'1', 18, '查询敏感词词库', b'1', NULL),
(105, '/wordbank/sensitive/delete', b'1', 18, '编辑敏感词词库', b'1', NULL),
(106, '/wordbank/sensitive/update', b'1', 18, '编辑敏感词词库', b'1', NULL),
(107, '/wordbank/sensitive/check', b'1', 18, '检查敏感词', b'1', NULL),
(108, '/backfill/update', b'1', 3, '修改backfill', b'1', NULL),
(109, '/ent_role/rules', b'1', 20, '获取角色权限列表', b'1', NULL),
(110, '/api_user/member', b'1', 20, '添加企业成员', b'1', NULL),
(111, '/backfill/search', b'1', NULL, '获取backfill', b'0', NULL),
(112, '/ml_test/testCase', b'1', 8, '获取单个测试题信息', b'1', NULL),
(113, '/view_chat_log_history/exportlog', b'1', 21, '导出对话日志', b'1', NULL),
(114, '/solution_stage_status/online', b'1', 4, '申请机器人上线', b'1', NULL),
(115, '/upload/tc', b'1', 28, '上传测试题', b'1', '3'),
(116, '/chat_optimization/contents', b'1', 19, '获取聚类各组详细对话', b'1', NULL),
(117, '/functions/get', b'1', NULL, '获取机器人技能列表', b'1', NULL),
(118, '/functions/set', b'1', 26, '设置机器人技能（开关）', b'1', NULL),
(119, '/export/check', b'1', 13, '数据导出', b'1', NULL),
(120, '/operation_log/query', b'1', NULL, '查询操作日志', b'0', NULL),
(121, '/ai/ssm_train', b'1', 11, '常用标准问题训练', NULL, '0'),
(122, '/ml_test/sync_exec', b'1', 11, '常用标准问题测试', b'1', '0'),
(123, '/sq_category/save', b'1', 10, '修改标准问题分类', b'1', '1'),
(124, '/sq_category/delete', b'1', 10, '删除标准问题分类', b'1', '2'),
(125, '/sq/deleteCollection', b'1', 6, '批量删除标准问题', b'1', '2'),
(126, '/sq_category/add', b'1', 10, '新增标准问题分类', b'1', '0');
/*!40000 ALTER TABLE `ent_api` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `ent_chat_log_active_date_hour` WRITE;
/*!40000 ALTER TABLE `ent_chat_log_active_date_hour` DISABLE KEYS */;

INSERT INTO `ent_chat_log_active_date_hour` (`DATE`, `HOUR`)
VALUES('2018-05-14 00:00:00',11);

/*!40000 ALTER TABLE `ent_chat_log_active_date_hour` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_config
# ------------------------------------------------------------
LOCK TABLES `ent_config` WRITE;
INSERT INTO `ent_config` (`name`, `module`, `value`, `enabled`, `description`, `zhtw`, `enus`) VALUES
('access-apply', 'helper', '申请机器人上线', b'1', '帮助页全部文档', '申請機器人上線', NULL),
('access-description', 'helper', '说明：', b'1', '帮助页全部文档', '說明', NULL),
('access-down-sdk', 'helper', '下载SDK：', b'1', '帮助页全部文档', '下載SDK', NULL),
('access-func-description', 'helper', '功能说明：', b'1', '帮助页全部文档', '功能說明', NULL),
('access-sdk-table-tr1-td2', 'helper', '功能', b'1', '帮助页全部文档', NULL, NULL),
('access-sdk-table-tr2-td1', 'helper', '人机对话', b'1', '帮助页全部文档', '人機會話', NULL),
('access-sdk-table-tr2-td2', 'helper', '支持人机对话', b'1', '帮助页全部文档', NULL, NULL),
('access-sdk-table-tr3-td1', 'helper', '支持机器人回复多媒体（支持格式jpg,png,bmp）', b'1', '帮助页全部文档', NULL, NULL),
('access-tabs-basic', 'helper', '基础信息设置', b'1', '帮助页全部文档', '基礎信息設置', NULL),
('access-tabs-function', 'helper', '机器人技能', b'1', '帮助页全部文档', '機器人技能', NULL),
('access-tabs-online', 'helper', '接入部署', b'1', '帮助页全部文档', '接入部署', NULL),
('access-tabs-private', 'helper', '私有云(本地)', b'1', '帮助页全部文档', '私有雲', NULL),
('access-tabs-wechat', 'helper', '微信公众号', b'1', '帮助页全部文档', '微信公眾號', NULL),
('access-title', 'helper', '我们提供五种接入方式供选择', b'1', '帮助页全部文档', '我們提供五種接入方式供選擇', NULL),
('access-title-wechat-details1', 'helper', '1、打开公众号管理员帐号的微信', b'1', '帮助页全部文档', '1、打開公眾號管理員帳號的微信', NULL),
('access-title-wechat-details2', 'helper', '2、点击“去授权”按钮，使用微信扫一扫，扫描授权页面的二维码', b'1', '帮助页全部文档', '2、點擊“去授權”按鈕，使用微信掃一掃，掃描授權頁面的二維碼', NULL),
('access-title-wechat-details3', 'helper', '3、在微信列出的公众号列表中进行选择并授权接入', b'1', '帮助页全部文档', '3、在微信列出的公眾號列表中進行選擇並授權接入', NULL),
('access-title-wechat-details4', 'helper', '4、完成授权，进入公众号使用聊天服务', b'1', '帮助页全部文档', '4、完成授權，進入公眾號使用聊天服務', NULL),
('access-title-wechat-details5', 'helper', '5、在机器人平台上做的设置，都会应用于公众号聊天中', b'1', '帮助页全部文档', '5、在機器人平台上做的設置，都會應用於公眾號聊天中', NULL),
('access-video-description', 'helper', '您的浏览器不支持video视频播放', b'1', '帮助页全部文档', NULL, NULL),
('access-view-document', 'helper', '查看接口文档', b'1', '帮助页全部文档', NULL, NULL),
('access_token_expiration', 'env', '36000', b'1', 'access token 生存时间', NULL, NULL),
('aknoeledge-alert-message-three', 'helper', '除去第一行第一列，内容为词条所对应属性的具体内容，例如“孟获（词条）的兵种（属性）是什么？”这样的问题就会在表格中搜索对应的答案内容；', b'1', '帮助页全部文档', '除去第一行第一列，內容為詞條所對應屬性的具體內容，例如“孟獲（詞條）的兵種（屬性）是什麽？”這樣的問題就會在表格中搜索對應的答案內容；', NULL),
('app-apply-accept-mail-content', 'user', '<p>尊敬的$nick_name$：</p><p>您申请的机器人接入已经通过，您的机器人可以为广大用户提供服务了。</p><p>请前往<a href=$robot_link$>机器人接入页面</a>，查看接入相关信息。</p><p>感谢您的选择！</p><p>Have a nice bot!</p><p>此为系统邮件请勿回复。</p><p>竹间机器人平台2.0</p><p>联系邮件：bf_service@emotibot.com</p><p>公司官网：www.emotibot.com</p><p>竹间智能科技（上海）有限公司</p>', b'1', '机器人申请接受邮件', NULL, NULL),
('app-apply-accept-mail-subject', 'user', '竹间机器人平台2.0，机器人接入申请已经通过', b'1', '机器人申请接受邮件主题', NULL, NULL),
('app-apply-refuse-mail-content', 'user', '<p>尊敬的$nick_name$：</p><p>您申请的机器人接入未通过。</p><p>如有任何问题，请联系我们 bf_service@emotibot.com。</p><p>此为系统邮件请勿回复。</p><p>竹间机器人平台2.0</p><p>联系邮件：bf_service@emotibot.com</p><p>公司官网：www.emotibot.com</p><p>竹间智能科技（上海）有限公司</p>', b'1', '机器人申请拒绝邮件', NULL, NULL),
('app-apply-refuse-mail-subject', 'user', '竹间机器人平台2.0，机器人接入申请未通过', b'1', '机器人申请拒绝邮件主题', NULL, NULL),
('asscss-video', 'helper', '集成视频', b'1', '帮助页全部文档', NULL, NULL),
('auth-code-msg', 'helper', '验证码将会发送至你的注册手机', b'1', '帮助页全部文档', '', NULL),
('backfillHelp', 'helper', '当机器人找不到任何合适的回答时，就会说出“未知回复”的内容。在“未知回复”中：可以请用户重新描述他的需求，可以提示用户应该如何提问，您可以设置多个“未知回复”，这样可以避免死板地重复，机器人会自动随机使用这些“未知回复”。', b'1', '帮助页全部文档', NULL, NULL),
('basic_robot_limit', 'user', '1', b'1', 'basic类型用户机器人数量上限', NULL, NULL),
('basic_solutionids', 'user', '', b'1', '基础类型用户解决方案', NULL, NULL),
('bf-header-btn-change-bot', 'helper', '切换机器人', b'1', '帮助页全部文档', NULL, NULL),
('bf-header-btn-create-bot', 'helper', '新建机器人', b'1', '帮助页全部文档', NULL, NULL),
('bf-header-btn-edit-password', 'helper', '修改密码', b'1', '帮助页全部文档', NULL, NULL),
('bf-header-btn-help', 'helper', '帮助', b'1', '帮助页全部文档', '幫助', NULL),
('bf-header-btn-login', 'helper', '请登录', b'1', '帮助页全部文档', NULL, NULL),
('bf-header-btn-logout', 'helper', '退出', b'1', '帮助页全部文档', NULL, NULL),
('bf-header-btn-team-manage', 'helper', '团队管理', b'1', '帮助页全部文档', NULL, NULL),
('bf-header-btn-user-message', 'helper', '个人信息', b'1', '帮助页全部文档', NULL, NULL),
('bf-header-btn-view-bots', 'helper', '机器人总览', b'1', '帮助页全部文档', '機器人總覽\r\n', NULL),
('bf-user-protocol', 'helper', '《竹间机器人工厂注册协议》', b'1', '帮助页全部文档', '', NULL),
('bf_backstage_bf_loginin_page', 'env', 'http://bf.emotibot.com/BF/login.html', b'1', 'bf登录地址', NULL, NULL),
('bf_backstage_mail_type', 'env', 'HTML', b'1', 'bf后台发送邮件的类型', NULL, NULL),
('bf_backstage_smtp_pass_service', 'env', 'Emotibot@bf', b'1', 'bf后台发送邮件的用户的密码----service', NULL, NULL),
('bf_backstage_smtp_server', 'env', 'mail.emotibot.com', b'1', 'bf后台邮件发送地址', NULL, NULL),
('bf_backstage_smtp_server_port', 'env', '25', b'1', 'bf后台邮件端口', NULL, NULL),
('bf_backstage_smtp_user_mail', 'env', '竹间机器人工厂', b'1', 'bf后台邮件用户mail', NULL, NULL),
('bf_backstage_smtp_user_service', 'env', 'bf_service@emotibot.com', b'1', 'bf后台发送邮件的用户----service', NULL, NULL),
('bot-template-desc-lq', 'helper', '条语料', b'1', '帮助页全部文档', '', NULL),
('bot-template-desc-sq', 'helper', '条标准问题', b'1', '帮助页全部文档', '', NULL),
('bot_template_desc', 'helper', '您可以创建自定义空白机器人，也可以通过我们提供的模板数据快速创建机器人\r\n', b'1', '帮助页全部文档', NULL, NULL),
('bot_type_desc', 'helper', '选择机器人类型可让我们为您更好的定制您的机器人\r\n', b'1', '帮助页全部文档', NULL, NULL),
('btn-agree', 'helper', '我同意', b'1', '帮助页全部文档', '', NULL),
('btn-login', 'helper', '登录', b'1', '帮助页全部文档', '登錄', NULL),
('btn-register', 'helper', '注册', b'1', '帮助页全部文档', '註冊', NULL),
('btn-reset-pwd', 'helper', '重设密码', b'1', '帮助页全部文档', '', NULL),
('chat-log-24hours-change', 'helper', '24小时变化幅度', b'1', '帮助页全部文档', '24小時變化幅度', NULL),
('chat-log-most-hot-ask-answer', 'helper', '最热问答', b'1', '帮助页全部文档', '最熱問答\r\n', NULL),
('chat-sq-overlength-msg', 'helper', '不好意思，您的提问太长，我无法理解。建议提问字数在50个字以内哦。', b'1', '帮助页全部文档', '', NULL),
('chatHelp', 'helper', '如果您希望机器人在回答业务相关的问题之外，还可以和用户在日常话题上进行对话，可以选择开启闲聊功能。我们的机器人内置了强大的闲聊功能，可以与用户进行更加人性化的互动。', b'1', '帮助页全部文档', NULL, NULL),
('chat_flag_help', 'helper', '在每组相似对话中，出现次数最多的词，可以帮助快速了解这组对话的大致内容。', b'1', '帮助页全部文档', NULL, NULL),
('chat_group_help', 'helper', '使用聚类算法，可以将非业务对话中语义相似的内容聚集成一组，每个聚类中的对话可能属于一个或多个标准问题，便于批量标注。', b'1', '帮助页全部文档', NULL, NULL),
('chat_module', 'user', '[\n	\"chat\",\n	\"scenario\",\n	\"editorial\",\n	\"QQ\",\n	\"robot\"\n]', b'1', '聊天模块', NULL, NULL),
('chat_optimization_task_check_last_datetime', 'auto_trigger', '2018-01-31 19:58:02', b'1', '数据优化最后更新检查时间', NULL, NULL),
('check-cropus-help1', 'helper', '语料质量检查可以帮助您发现标注语料的质量问题。如不同标准问题的语料过于相似的问题。', b'1', '帮助页全部文档', '', NULL),
('check-cropus-help2', 'helper', '建议在首次训练之前，或者标注大量语料后进行检查', b'1', '帮助页全部文档', '', NULL),
('check-cropus-start-btn', 'helper', '开始检查', b'1', '帮助页全部文档', '', NULL),
('check-waiting-time', 'helper', '正在检查中，大约需要 30 分钟，请耐心等待…', b'1', '帮助页全部文档', '', NULL),
('check_api_enterprise_account_type_msg', 'validator', '账号类别不能为空', b'1', NULL, NULL, NULL),
('check_api_enterprise_customer_manager_msg', 'validator', '客户负责人不能为空', b'1', NULL, NULL, NULL),
('check_api_enterprise_email_msg', 'validator', '请输入正确的邮箱', b'1', NULL, NULL, NULL),
('check_api_enterprise_enterprise_name_msg', 'validator', '企业名称不能为空', b'1', NULL, NULL, NULL),
('check_api_enterprise_phone_msg', 'validator', '请输入正确的手机号', b'1', NULL, NULL, NULL),
('check_api_enterprise_project_leader_msg', 'validator', '项目负责人不能为空', b'1', NULL, NULL, NULL),
('check_api_enterprise_remark', 'validator', '备注不能为空', b'1', NULL, NULL, NULL),
('check_description_40', 'validator', '描述应在4-40个字之间', b'1', NULL, NULL, NULL),
('check_name_10', 'validator', '名字应在4-10个字之间', b'1', NULL, NULL, NULL),
('check_number_msg', 'env', '【BF】手机验证码：XXXX，15分钟内有效。', b'1', '官网上申请企业账号时发送的验证码短信的内容，XXXX替换为实际验证码', NULL, NULL),
('check_sq', 'validator', '标准问题字数应在0到50字', b'1', 'validator', NULL, NULL),
('check_sql_inject', 'validator', '输入不合法，存在非法指令', b'1', 'validator', NULL, NULL),
('common-btn-add', 'helper', '+新增一条', b'1', '帮助页全部文档', '+新增一條', 'new edit'),
('common-btn-add-sq', 'helper', '+新增标准问题', b'1', '帮助页全部文档', NULL, NULL),
('common-btn-cancel', 'helper', '取消', b'1', '帮助页全部文档', '取消', NULL),
('common-btn-del', 'helper', '删除', b'1', '帮助页全部文档', '删除', NULL),
('common-btn-edit', 'helper', '编辑', b'1', '帮助页全部文档', '編輯', NULL),
('common-btn-handle', 'helper', '处理', b'1', '帮助页全部文档', NULL, NULL),
('common-btn-next', 'helper', '下一步', b'1', '帮助页全部文档', '下一步', NULL),
('common-btn-ok', 'helper', '确定', b'1', '帮助页全部文档', NULL, NULL),
('common-btn-pre', 'helper', '上一步', b'1', '帮助页全部文档', '', NULL),
('common-btn-return', 'helper', '返回', b'1', '帮助页全部文档', NULL, NULL),
('common-btn-revert', 'helper', '撤销', b'1', '帮助页全部文档', NULL, NULL),
('common-btn-save', 'helper', '保存', b'1', '帮助页全部文档', NULL, NULL),
('common-btn-status', 'helper', '状态', b'1', '帮助页全部文档', '狀態', NULL),
('common-btn-view', 'helper', '查看', b'1', '帮助页全部文档', '查看', NULL),
('common-btn-view-corpus', 'helper', '查看语料', b'1', '帮助页全部文档', '查看語料', NULL),
('common-desc-answer', 'helper', '回答', b'1', '帮助页全部文档', '回答', NULL),
('common-desc-sq', 'helper', '标准问题', b'1', '帮助页全部文档', '標準問題', NULL),
('common-desc-train-cropus', 'helper', '训练语料', b'1', '帮助页全部文档', '訓練語料', NULL),
('common-logo-url', 'helper', 'NewLogo_White.png', b'1', '帮助页全部文档', 'NewLogo_White_tw.png', NULL),
('common-msg-nodata', 'helper', '暂无数据哦~', b'1', '帮助页全部文档', NULL, NULL),
('common-msg-start-test', 'helper', '开始测试', b'1', '帮助页全部文档', '開始測試', NULL),
('common-msg-upload-success', 'helper', '上传成功', b'1', '帮助页全部文档', NULL, NULL),
('common-smm-header-indexPage', 'helper', '模块首页', b'1', '帮助页全部文档', '模組首頁', NULL),
('common-switch-close', 'helper', '关', b'1', '帮助页全部文档', '開', 'on'),
('common-switch-open', 'helper', '开', b'1', '帮助页全部文档', '關', 'off'),
('config_chat_domain_module_type', 'env', 'enable', b'1', '领域闲聊开关', NULL, NULL),
('config_knowledge_db', 'admin', '3rd_db', b'1', 'knowledge数据库配置', NULL, NULL),
('create-account', 'helper', '注册账号', b'1', '帮助页全部文档', '', NULL),
('create-bot-help-title-bot-type', 'helper', '机器人类型选择', b'1', '机器人创建类型选择标题', NULL, NULL),
('create-bot-help-title-bottemplate-type', 'helper', '模板选择', b'1', '机器人创建类型选择标题', NULL, NULL),
('create-bot-help-title-industry-type', 'helper', '行业选择', b'1', '机器人创建类型选择标题', NULL, NULL),
('create-bot-help-title-personal-type', 'helper', '机器人终端选择', b'1', '机器人创建类型选择标题', NULL, NULL),
('create-bot-help-title-solution-type', 'helper', '功能模块选择\n', b'1', '机器人创建类型选择标题', '功能模塊選擇', NULL),
('dal_batch_size', 'env', '2000', b'1', 'DAL 批量处理数据报大小', NULL, NULL),
('dialog_log-page-all-Recommend-question', 'helper', '所有标准问题', b'1', '帮助页全部文档', '所有標准問題', NULL),
('dialog_log-page-answer-tag', 'helper', '回答标签：', b'1', '帮助页全部文档', '回答標簽：', NULL),
('dialog_log-page-attribute-name', 'helper', '属性名：', b'1', '帮助页全部文档', '屬性名：', NULL),
('dialog_log-page-conversation-id', 'helper', '对话ID', b'1', '帮助页全部文档', '對話ID', NULL),
('dialog_log-page-conversation-note', 'helper', '对话日志', b'1', '帮助页全部文档', '對話日誌', NULL),
('dialog_log-page-conversation-time', 'helper', '对话时间', b'1', '帮助页全部文档', '對話時間', NULL),
('dialog_log-page-conversation-word-num', 'helper', '客户对话字数', b'1', '帮助页全部文档', '客戶對話字數', NULL),
('dialog_log-page-customer-conversation', 'helper', '客户对话', b'1', '帮助页全部文档', '客戶對話', NULL),
('dialog_log-page-customer-id', 'helper', '客户ID', b'1', '帮助页全部文档', '通話ID', NULL),
('dialog_log-page-details', 'helper', '详情', b'1', '帮助页全部文档', '詳情', NULL),
('dialog_log-page-export', 'helper', '导出', b'1', '帮助页全部文档', '匯出', NULL),
('dialog_log-page-help-wrong', 'helper', '辅助纠错', b'1', '帮助页全部文档', '輔助糾錯', NULL),
('dialog_log-page-high-select', 'helper', '高级筛选', b'1', '帮助页全部文档', '高級篩選', NULL),
('dialog_log-page-how-num-note', 'helper', '条日志', b'1', '帮助页全部文档', '條日誌', NULL),
('dialog_log-page-if-no-Recommend-question', 'helper', '没有想要的标准问题？试试搜索', b'1', '帮助页全部文档', '沒有想要的標准問題？試試搜索', NULL),
('dialog_log-page-ignore', 'helper', '忽略', b'1', '帮助页全部文档', '忽略', NULL),
('dialog_log-page-lot-size-ignore', 'helper', '批量忽略', b'1', '帮助页全部文档', '批量忽略', NULL),
('dialog_log-page-lot-size-tag', 'helper', '批量标注', b'1', '帮助页全部文档', '批量標注', NULL),
('dialog_log-page-match', 'helper', '匹配', b'1', '帮助页全部文档', '匹配', NULL),
('dialog_log-page-match-model-content', 'helper', '匹配模块内容', b'1', '帮助页全部文档', '匹配模組內容', NULL),
('dialog_log-page-model-section', 'helper', '模块', b'1', '帮助页全部文档', '模組\r\n', NULL),
('dialog_log-page-more', 'helper', '更多', b'1', '帮助页全部文档', '更多', NULL),
('dialog_log-page-ontag', 'helper', '标注', b'1', '帮助页全部文档', '標注', NULL),
('dialog_log-page-operation', 'helper', '操作', b'1', '帮助页全部文档', '操作', NULL),
('dialog_log-page-percen-num', 'helper', '分数', b'1', '帮助页全部文档', '分數', NULL),
('dialog_log-page-percent-num', 'helper', '分', b'1', '帮助页全部文档', '分', NULL),
('dialog_log-page-question-tag', 'helper', '问题标签：', b'1', '帮助页全部文档', '問題標簽：', NULL),
('dialog_log-page-Recommend-question-null', 'helper', '推荐标准问题为空！', b'1', '帮助页全部文档', '推薦標准問題爲空！', NULL),
('dialog_log-page-reset', 'helper', '重置', b'1', '帮助页全部文档', '重置', NULL),
('dialog_log-page-response-how-time', 'helper', '响应时间：', b'1', '帮助页全部文档', '響應時間：', NULL),
('dialog_log-page-save-changed', 'helper', '保存修改', b'1', '帮助页全部文档', '保存修改', NULL),
('dialog_log-page-search', 'helper', '搜索', b'1', '帮助页全部文档', '搜索', NULL),
('dialog_log-page-search-ask', 'helper', '查询', b'1', '帮助页全部文档', '查詢', NULL),
('dialog_log-page-taged-to', 'helper', '已经标注到：', b'1', '帮助页全部文档', '已經標注到：', NULL),
('dialog_log-page-week-report', 'helper', '周报', b'1', '帮助页全部文档', '周報', NULL),
('dialog_log-page-word', 'helper', '字', b'1', '帮助页全部文档', '字', NULL),
('dialog_log-page-yeorno-ignore', 'helper', '是否忽略', b'1', '帮助页全部文档', '是否忽略', NULL),
('dialog_log-page-yes-or-no', 'helper', '是否', b'1', '帮助页全部文档', '是否', NULL),
('display_errors', 'env', '', b'1', '是否打开页面错误报告', NULL, NULL),
('emotion_negative', 'user', '[\"愤怒\", \"不满\", \"厌恶\", \"不高兴\", \"不喜欢\", \"厌烦\", \"反感\"]', b'1', '负面情绪', NULL, NULL),
('emotion_threshold', 'admin', '60', b'1', '情感使用分数阀值', NULL, NULL),
('enough_low_limit', 'user', '30', b'1', '语料数最低要求', NULL, NULL),
('enterprise_account_activation_page', 'env', '/BF/register.html', b'1', '企业账号激活页面', NULL, NULL),
('enterprise_robot_limit', 'user', '10', b'1', '企业用户创建机器人上限', NULL, NULL),
('enterprise_solutionids', 'user', '1,0,2', b'1', '企业类型用户解决方案', NULL, NULL),
('exception_auth_error', 'env', '没有访问权限，%s', b'1', 'lyFramework 错误消息头', NULL, NULL),
('exception_key_call_service_error', 'env', '调用外部服务错误，%s', b'1', 'lyFramework 错误消息头', NULL, NULL),
('exception_key_controller_not_found', 'env', '页面路由: %s 未找到!', b'1', 'lyFramework 错误消息头', NULL, NULL),
('exception_key_db_operate_error', 'env', '数据库操作失败，%s', b'1', 'lyFramework 错误消息头', NULL, NULL),
('exception_key_illegal_arguments', 'env', '参数错误，%s', b'1', 'lyFramework 错误消息头', NULL, NULL),
('exception_key_runtime_error', 'env', '运行时错误，%s', b'1', 'lyFramework 错误消息头', NULL, NULL),
('exception_key_unknow', 'env', '未知错误', b'1', 'lyFramework 错误消息头', NULL, NULL),
('exception_notify', 'admin', 'false', b'1', '故障时信息推送开关', NULL, NULL),
('exception_notify_content', 'admin', '新故障%d', b'1', '故障时信息推送内容', NULL, NULL),
('exception_notify_format', 'admin', 'http://api.weimi.cc/2/sms/send.html?uid=lG25AmToZjEO&pas=8tvbg3q7&mob=%s&cid=0qQlgzhDN8Qt&p1=%s&type=json', b'1', '短信发送请求接口', NULL, NULL),
('exception_notify_mbs', 'admin', '[\"13621619703\", \"13816271089\", \"15800382917\", \"15692196036\", \"18721563501\"]', b'1', '故障信息推送号码组', NULL, NULL),
('free-tips', 'helper', '*竹间机器人平台免费公测中', b'1', '帮助页全部文档', '', NULL),
('function_AppControllerModule', 'functions', 'false', b'1', '技能开关-打开APP', NULL, NULL),
('function_AudioModule', 'functions', 'false', b'1', '技能开关-有声书', NULL, NULL),
('function_ChengYuModule', 'functions', 'false', b'1', '技能开关-成语接龙', NULL, NULL),
('function_ComputationModule', 'functions', 'false', b'1', '技能开关-计算', NULL, NULL),
('function_ConcertModule', 'functions', 'false', b'1', '技能开关-演唱会', NULL, NULL),
('function_CookbookModule', 'functions', 'false', b'1', '技能开关-菜谱', NULL, NULL),
('function_DatetimeModule', 'functions', 'false', b'1', '技能开关-时间查询', NULL, NULL),
('function_ExpressSearchModule', 'functions', 'false', b'1', '技能开关-快递查询', NULL, NULL),
('function_FoodModule', 'functions', 'false', b'1', '技能开关-美食', NULL, NULL),
('function_HoroscopeModule', 'functions', 'false', b'1', '技能开关-星座运势', NULL, NULL),
('function_JokeModule', 'functions', 'false', b'1', '技能开关-笑话', NULL, NULL),
('function_MatchModule', 'functions', 'false', b'1', '技能开关-足球比赛', NULL, NULL),
('function_module_desc', 'helper', '每种模块有不同的功能，您可以选择多个模块给您的机器人\r\n', b'1', '帮助页全部文档', NULL, NULL),
('function_MovieModule', 'functions', 'false', b'1', '技能开关-电影', NULL, NULL),
('function_MusicModule', 'functions', 'false', b'1', '技能开关-音乐', NULL, NULL),
('function_NBAModule', 'functions', 'false', b'1', '技能开关-NBA比赛查询', NULL, NULL),
('function_NewsModule', 'functions', 'false', b'1', '技能开关-新闻', NULL, NULL),
('function_PhoneCallModule', 'functions', 'false', b'1', '技能开关-打电话', NULL, NULL),
('function_PhoneQueryModule', 'functions', 'false', b'1', '技能开关-电话查询', NULL, NULL),
('function_PictureModule', 'functions', 'false', b'1', '技能开关-图片', NULL, NULL),
('function_QueryExchangeModule', 'functions', 'false', b'1', '技能开关-汇率', NULL, NULL),
('function_QueryStockModule', 'functions', 'false', b'1', '技能开关-股票', NULL, NULL),
('function_QueryTicketModule', 'functions', 'false', b'1', '技能开关-火车票查询', NULL, NULL),
('function_RiddleModule', 'functions', 'false', b'1', '技能开关-猜谜语', NULL, NULL),
('function_SendMailModule', 'functions', 'false', b'1', '技能开关-发邮件', NULL, NULL),
('function_SendMessageModule', 'functions', 'false', b'1', '技能开关-发短信', NULL, NULL),
('function_SingModule', 'functions', 'false', b'1', '技能开关-自动作曲', NULL, NULL),
('function_StoryModule', 'functions', 'false', b'1', '技能开关-讲故事', NULL, NULL),
('function_TaxiModule', 'functions', 'false', b'1', '技能开关-打车', NULL, NULL),
('function_WeatherModule', 'functions', 'false', b'1', '技能开关-天气', NULL, NULL),
('get-auth-code', 'helper', '获取验证码', b'1', '帮助页全部文档', '', NULL),
('get-auth-code-again', 'helper', '再次获取', b'1', '帮助页全部文档', '', NULL),
('get-pwd-back', 'helper', '找回密码', b'1', '帮助页全部文档', '', NULL),
('host_bf', 'env', 'http://172.17.0.1:3000', b'1', 'BF 地址', NULL, NULL),
('host_chat', 'env', 'http://172.17.0.1:12345', b'1', '聊天服务器地址', NULL, NULL),
('host_clustering', 'env', 'http://172.17.0.1:13014', b'1', '聚类服务', NULL, NULL),
('host_dal', 'env', 'http://172.17.0.1:8885', b'1', 'DAL 服务地址', NULL, NULL),
('host_logger', 'env', 'http://172.17.0.1:17919', b'1', 'logger 的服务', NULL, NULL),
('host_nlp_seg', 'env', 'http://172.17.0.1:13901', b'1', '分词服务', NULL, NULL),
('host_sentence_association', 'env', 'http://172.17.0.1:8145', b'1', '根据SQ推荐LQ的地址', NULL, NULL),
('host_sherlock', 'env', 'http://172.17.0.1:5803', b'1', 'sherlock地址', NULL, NULL),
('host_solr', 'env', 'http://172.17.0.1:8081/solr/3rd_core', b'1', 'solr 服务', NULL, NULL),
('host_ssm', 'user', 'http://172.17.0.1:11015', b'1', 'ssm 地址', NULL, NULL),
('host_ssm_mutimodel', 'env', 'http://172.17.0.1:11015', b'1', '多模型ssm地址', NULL, NULL),
('host_trigger_manual_intent', 'env', 'http://172.17.0.1:14399', b'1', '转人工Intent', NULL, NULL),
('hottest-question-and-answer', 'helper', '在您选择的时间段内，出现次数最多的几个标准问题；数据每小时更新一次，整点更新；', b'1', '机器人申请接受邮件', NULL, NULL),
('indus_desc', 'helper', '我们为不同行业定制了专属解决方案，包含行业数据、模型、功能等', b'1', '帮助页全部文档', NULL, NULL),
('input-new-pwd', 'helper', '请输入新的密码', b'1', '帮助页全部文档', '', NULL),
('intent-add-intent-sentence', 'helper', '新增意图语料', b'1', '帮助页全部文档', '新增意圖語料', NULL),
('intent-add-new-intent', 'helper', '新增意图', b'1', '帮助页全部文档', '新增意圖', NULL),
('intent-add-parameter-set', 'helper', '新增参数设置', b'1', '帮助页全部文档', '新增參數設置', NULL),
('intent-batch-import-intent', 'helper', '批量导入意图', b'1', '帮助页全部文档', '批量導入意圖', NULL),
('intent-batch-import-test', 'helper', '批量导入测试题', b'1', '帮助页全部文档', '批量導入測試題', NULL),
('intent-default-parameter', 'helper', '默认参数', b'1', '帮助页全部文档', '默認參數', NULL),
('intent-delete', 'helper', '删除', b'1', '帮助页全部文档', '刪除', NULL),
('intent-download-current-intent', 'helper', '下载意图', b'1', '帮助页全部文档', '下載意圖', NULL),
('intent-download-intent-model', 'helper', '下载意图模板', b'1', '帮助页全部文档', '下載意圖模板', NULL),
('intent-download-test-model', 'helper', '下载测试题模板', b'1', '帮助页全部文档', '下載測試題模板', NULL),
('intent-download-test-report', 'helper', '下载测试报告', b'1', '帮助页全部文档', '下載測試報告', NULL),
('intent-Edition-name', 'helper', '版本名称', b'1', '帮助页全部文档', '版本名稱', NULL),
('intent-had-changed', 'helper', '意图有修改，请重新训练', b'1', '帮助页全部文档', '意圖有修改，請重新訓練', NULL),
('intent-had-intent', 'helper', '已有意图', b'1', '帮助页全部文档', '已有意圖', NULL),
('intent-home-page', 'helper', '意图首页', b'1', '帮助页全部文档', '意圖首頁', NULL),
('intent-Intent-engine', 'helper', '意图引擎', b'1', '帮助页全部文档', '意圖引擎', NULL),
('intent-intent-name', 'helper', '意图', b'1', '帮助页全部文档', '意圖', NULL),
('intent-intent-names', 'helper', '意图名称', b'1', '帮助页全部文档', '意圖名稱', NULL),
('intent-intent-right-sentence-less', 'helper', '意图正例语料少于100条', b'1', '帮助页全部文档', '意圖正例語料少於100條', NULL),
('intent-intent-right-sentence-num', 'helper', '意图正例语料', b'1', '帮助页全部文档', '意圖正例語料', NULL),
('intent-intent-sentence-num', 'helper', '意图语料', b'1', '帮助页全部文档', '意圖語料', NULL),
('intent-intent-train', 'helper', '训练意图', b'1', '帮助页全部文档', '訓練意圖', NULL),
('intent-intent-wrong-sentence-num', 'helper', '意图反例语料', b'1', '帮助页全部文档', '意圖反例語料', NULL),
('intent-last-change-time', 'helper', '最后修改时间', b'1', '帮助页全部文档', '最後修改時間', NULL),
('intent-last-test-time', 'helper', '上次测试时间', b'1', '帮助页全部文档', '上次測試時間', NULL),
('intent-line-num', 'helper', '条', b'1', '帮助页全部文档', '條', NULL),
('intent-look-for-test-report', 'helper', '查看测试报告', b'1', '帮助页全部文档', '查看測試報告', NULL),
('intent-output-intent', 'helper', '输出意图', b'1', '帮助页全部文档', '輸出意圖', NULL),
('intent-return', 'helper', '返回', b'1', '帮助页全部文档', '返回', NULL),
('intent-right-percent', 'helper', '正确率', b'1', '帮助页全部文档', '正確率', NULL),
('intent-right-sentence', 'helper', '正例', b'1', '帮助页全部文档', '正例', NULL),
('intent-right-sentence-less', 'env', '意图正例语料少于100条', b'1', '帮助页面文档', '意圖正例語料少於100條', NULL),
('intent-save-edit-change', 'helper', '保存修改', b'1', '帮助页全部文档', '保存修改', NULL),
('intent-sentence', 'helper', '语料', b'1', '帮助页全部文档', '語料', NULL),
('intent-sentence-list', 'helper', '语料列表', b'1', '帮助页全部文档', '語料列表', NULL),
('intent-sentence-search', 'helper', '语料搜索', b'1', '帮助页全部文档', '語料搜索', NULL),
('intent-team-num', 'helper', '组', b'1', '帮助页全部文档', '組', NULL),
('intent-test', 'helper', '测试', b'1', '帮助页全部文档', '測試', NULL),
('intent-test-intent', 'helper', '测试意图', b'1', '帮助页全部文档', '測試意圖', NULL),
('intent-test-report-page', 'helper', '测试及报告', b'1', '帮助页全部文档', '測試及報告', NULL),
('intent-test-subject-list', 'helper', '测试题列表', b'1', '帮助页全部文档', '測試題列表', NULL),
('intent-train-page', 'helper', '意图训练', b'1', '帮助页全部文档', '意圖訓練', NULL),
('intent-wrong-sentence', 'helper', '反例', b'1', '帮助页全部文档', '反例', NULL),
('intentpage-import-intent', 'helper', '导入意图', b'1', '帮助页全部文档', '匯入意圖', NULL),
('intentpage-intent-list', 'helper', '意图列表', b'1', '帮助页全部文档', '意圖列表', NULL),
('intent_engine_score', 'admin', '60', b'1', 'intent_engine分数阈值', NULL, NULL),
('intent_support_url', 'admin', 'http://172.17.0.1:14400/intent', b'1', 'intent_support 服务的api', NULL, NULL),
('knoeledge-alert-message-eight', 'helper', '相同sheet中不可存在相同词条名；', b'1', '帮助页全部文档', '相同sheet中不可存在相同詞條名；', NULL),
('knoeledge-alert-message-eleven', 'helper', 'excel文件请小于2M。', b'1', '帮助页全部文档', 'excel文件請小於2M。', NULL),
('knoeledge-alert-message-five', 'helper', '上传的文件中，如果有与原知识图谱相同的sheet名，会替换原有sheet内容，如果有与原知识图谱不同的sheet名，这些sheet名称和内容会添加到知识图谱；', b'1', '帮助页全部文档', '上傳的文件中，如果有與原知識圖譜相同的sheet名，會替換原有sheet內容，如果有與原知識圖譜不同的sheet名，這些sheet名稱和內容會添加到知識圖譜；', NULL),
('knoeledge-alert-message-four', 'helper', '属性的名称请尽可能使用简短直接的词，例如不要使用“详细装备说明”而是直接使用“装备”这样的词就足够了；', b'1', '帮助页全部文档', '屬性的名稱請盡可能使用簡短直接的詞，例如不要使用“詳細裝備說明”而是直接使用“裝備”這樣的詞就足夠了；', NULL),
('knoeledge-alert-message-nine', 'helper', '不同sheet中可存在相同词条名，不可存在两对相同的词条和对应属性；', b'1', '帮助页全部文档', '不同sheet中可存在相同詞條名，不可存在兩對相同的詞條和對應屬性；', NULL),
('knoeledge-alert-message-one', 'helper', '每一个sheet名称会被存储为不同的知识图谱分类，例如模板中的sheet“武将（示例页面）”表中内容就会上传至“武将（示例页面）”分类；', b'1', '帮助页全部文档', '每一個sheet名稱會被存儲為不同的知識圖譜分類，例如模板中的sheet“武將（示例頁面）”表中內容就會上傳至“武將（示例頁面）”分類；\r\n', NULL),
('knoeledge-alert-message-seven', 'helper', '模板中的sheet“武将（示例页面）”请在上传前删除；', b'1', '帮助页全部文档', '模板中的sheet“武將（示例頁面）”請在上傳前刪除；', NULL),
('knoeledge-alert-message-six', 'helper', '如果不小心上传了错误的数据，请使用页面上的“恢复上一个版本”功能，只能恢复一次；', b'1', '帮助页全部文档', '如果不小心上傳了錯誤的數據，請使用頁面上的“恢復上一個版本”功能，只能恢復一次；', NULL),
('knoeledge-alert-message-ten', 'helper', '在IE中下载和导出模板时不要使用直接打开的方式；', b'1', '帮助页全部文档', '在IE中下載和匯出模板時不要使用直接打開的方式；', NULL),
('knoeledge-alert-message-two', 'helper', '每个sheet第一行，是词条和各属性名。第一列是词条名称；', b'1', '帮助页全部文档', '每個sheet第一行，是詞條和各屬性名。第一列是詞條名稱；', NULL),
('knoeledge-chioce-import-lotsize-map', 'helper', '选择批量导入知识图谱文件', b'1', '帮助页全部文档', '選擇批量匯入知識圖譜文件', NULL),
('knoeledge-download-lot-size-map', 'helper', '下载批量导入知识图谱模板', b'1', '帮助页全部文档', '下載批量匯入知識圖譜模板', NULL),
('knoeledge-import-map', 'helper', '导入知识图谱', b'1', '帮助页全部文档', '匯入知識圖譜', NULL),
('knoeledge-import-maps', 'helper', '导出知识图谱', b'1', '帮助页全部文档', '導出知識圖譜', NULL),
('knoeledge-input-map', 'helper', '导入知识图谱', b'1', '帮助页全部文档', '匯入知識圖譜\r\n', NULL),
('knoeledge-keep-do-nothing', 'helper', '导入中，请勿进行其他操作', b'1', '帮助页全部文档', '導入中，請勿進行其他操作', NULL),
('knoeledge-reset-maps', 'helper', '恢复上个版本', b'1', '帮助页全部文档', '恢復上個版本', NULL),
('lang', 'user', 'zhcn', b'1', '系统语言（中文简体：zhcn,台湾繁体 zhtw, 英文 enus--暂未使用）', NULL, NULL),
('log-score-message', 'helper', '分数可以看做是机器人对于每句回复的信心值，分数越高，回答正确的概率越高。', b'1', '日志分数解释', NULL, NULL),
('login-auth-login', 'helper', '无法登录?', b'1', '帮助页全部文档', '', NULL),
('log_device', 'env', '[]', b'1', '允许的log输出位置', NULL, NULL),
('log_level', 'env', '[]', b'1', '允许的log输出类型', NULL, NULL),
('manual_assist', 'user', 'false', b'1', '人工协助开关', NULL, NULL),
('manual_assist_by_emotion', 'helper', '当用户表达愤怒情绪时转人工', b'1', '帮助页全部文档', '當用戶表達憤怒情緒時轉人工', NULL),
('manual_assist_by_intent', 'helper', '当用户表达转人工的意图时转人工', b'1', '帮助页全部文档', '當用戶表達轉人工的意圖時轉人工', NULL),
('manual_assist_helper', 'helper', '打开本功能后，系统会在用户触发转人工规则后（规则可选择），给出一个转人工回复；请您填写转人工回复内容，并提供转人工的链接。', b'1', '申请协助帮助文档', NULL, NULL),
('manual_assist_message', 'user', '抱歉我的服务无法让您满意，您可以选择人工客服为您服务：<a href=\"http://www.emotibot.com\" target=\"blank\">呼叫人工</a>', b'1', '人工协助消息', NULL, NULL),
('manual_assist_rule', 'user', 'true', b'1', '人工协助规则设置开关', NULL, NULL),
('manual_assist_rule_helper1', 'helper', '当用户连续', b'1', '帮助页全部文档', '當用戶連續', NULL),
('manual_assist_rule_helper2', 'helper', '次触发未知回复时', b'1', '帮助页全部文档', '次觸發未知回覆時', NULL),
('manual_assist_rule_trigger_by_backfill_count', 'user', '3', b'1', '触发人工协助的连续backfill次数', NULL, NULL),
('manual_assist_rule_trigger_by_emotion', 'user', 'true', b'1', '人工协助情绪设置开关', NULL, NULL),
('manual_assist_rule_trigger_by_intent', 'user', 'true', b'1', '人工协助意图设置开关', NULL, NULL),
('manual_clustering_group_name', 'helper', '分类组名', b'1', '帮助页全部文档', '', NULL),
('manual_clustering_group_num', 'helper', '该组数量', b'1', '帮助页全部文档', '', NULL),
('manual_clustering_index', 'helper', '序号', b'1', '帮助页全部文档', '', NULL),
('manual_clustering_key', 'helper', '辅助分类', b'1', '帮助页全部文档', '', NULL),
('ml_algo', 'user', '[\n	{\n		\"algo\" : 24,\n		\"kind\" : 1,\n		\"model\" : \"\",\n		\"solution\" : 0\n	},\n	{\n		\"algo\" : 38,\n		\"kind\" : 2,\n		\"model\" : \"\",\n		\"solution\" : 0\n	},\n	{\n		\"algo\" : 0,\n		\"kind\" : 3,\n		\"model\" : \"\",\n		\"solution\" : 0\n	},\n	{\n		\"algo\" : 4,\n		\"kind\" : 39,\n		\"model\" : \"\",\n		\"solution\" : 0\n	}\n]', b'1', '机器学习算法，参数，模型配置组合', NULL, NULL),
('module_accounting', 'functions', 'false', b'1', '技能开关-记帐', NULL, NULL),
('new-label-page-apply-tag', 'helper', '请求标注', b'1', '帮助页全部文档', '請求標註', NULL),
('new-label-page-base-word-tag', 'helper', '根据语料标注', b'1', '帮助页全部文档', '根據語料標註', NULL),
('new-label-page-base-words', 'helper', '语料', b'1', '帮助页全部文档', '語料', NULL),
('new-label-page-commit-tag', 'helper', '提交标注', b'1', '帮助页全部文档', '提交標註', NULL),
('new-label-page-not-find-standard-question', 'helper', '未找到匹配的标准问题', b'1', '帮助页全部文档', '未找到匹配的標準問題', NULL),
('new-label-page-not-tag-word', 'helper', '条，未标注语料', b'1', '帮助页全部文档', '條，未標註語料', NULL),
('new-label-page-now-no-standard-question', 'helper', '暂无推荐的标准问题哦', b'1', '帮助页全部文档', '暫無推薦的標準問題哦', NULL),
('new-label-page-standard-question', 'helper', '推荐标准问题', b'1', '帮助页全部文档', '推薦標準問題', NULL),
('new-label-page-tag-num', 'helper', '条', b'1', '帮助页全部文档', '條', NULL),
('new-label-page-tag-watched', 'helper', '标注标记', b'1', '帮助页全部文档', '標註標記', NULL),
('new-label-page-tag-word', 'helper', '标注语料', b'1', '帮助页全部文档', '標註語料', NULL),
('oldClientLoginHelp', 'helper', '由于旧版机器人平台的数据不会自动迁移到新版上，因此老用户请继续通过旧版平台登录。如希望体验新版本，可通过官网重新申请账户试用，感谢您对机器人平台的支持。', b'1', '老用户登录提示', NULL, NULL),
('open_api_chat_result_format_string', 'admin', '$answer$', b'1', '会话结果返回格式', NULL, NULL),
('open_api_chat_result_format_string_debug', 'admin', '[情绪]:$emotion$\n[意图]:$intent$\n[FAQ]:$faq$\n[任务引擎]:$task_engine$\n[知识图谱]:$knowledge$\n[闲聊]:$chat$\n[来源]:$source$\n[回答]:$answer$', b'1', 'debug模式结果格式', NULL, NULL),
('open_api_result_to_zhtr', 'user', 'false', b'1', '会话结果转繁体', NULL, NULL),
('optimization-add-sq', 'helper', '请输入新的标准问题和回答', b'1', '帮助页全部文档', NULL, NULL),
('optimization-add-use', 'helper', '添加并使用', b'1', '帮助页全部文档', NULL, NULL),
('optimization-by-weekly', 'helper', '每周优化', b'1', '帮助页全部文档', '每週優化', NULL),
('optimization-by-weekly-desc', 'helper', '我们会在每周一提供新的优化周报', b'1', '帮助页全部文档', '我們會在每週一提供新的優化週報', NULL),
('optimization-chat-group', 'helper', '对话分组', b'1', '帮助页全部文档', '對話分組', NULL),
('optimization-choose-sq', 'helper', '选择推荐标准问题', b'1', '帮助页全部文档', '選擇推薦標準問題', NULL),
('optimization-group-table-th2', 'helper', '对话数', b'1', '帮助页全部文档', NULL, NULL),
('optimization-group-table-th3', 'helper', '对话标签', b'1', '帮助页全部文档', NULL, NULL),
('optimization-lead-img-url1', 'helper', 'images/new_img/optimizationBG.png', b'1', '帮助页全部文档', 'images/new_img/optimizationBG_tw.png', NULL),
('optimization-list-table-th1', 'helper', '时间线', b'1', '帮助页全部文档', NULL, NULL),
('optimization-list-table-th2', 'helper', '非解决方案对话', b'1', '帮助页全部文档', NULL, NULL),
('optimization-match-sq', 'helper', '选择对话，并标注到匹配的标准问题', b'1', '帮助页全部文档', NULL, NULL),
('optimization-no-data', 'helper', '还没有生成周报，请下周一再来查看', b'1', '帮助页全部文档', NULL, NULL),
('optimization-no-recommend-data', 'helper', '没有找到合适的推荐，您可以去搜索或新增标准问题', b'1', '帮助页全部文档', NULL, NULL),
('optimization-recommend-desc', 'helper', '先选择一些您认为应该属于一个标准问题的对话，并点击推荐，会在这里显示系统推荐的标准问题', b'1', '帮助页全部文档', NULL, NULL),
('optimization-study', 'helper', '优化学习', b'1', '帮助页全部文档', NULL, NULL),
('optimization-view-all-cropus', 'helper', '查看所有标准问题', b'1', '帮助页全部文档', NULL, NULL),
('optimization-weekly-list', 'helper', '周报列表', b'1', '帮助页全部文档', NULL, NULL),
('optimization_help_content', 'helper', '非解决方案对话中，可能有一部分应该匹配到标准问题，而机器人因为缺乏数据无法识别。您可以将这部分对话标注到标准问题中，机器人以后遇到类似问题就可以正确回答了。我们会在每周一凌晨，将过去一周的非解决方案对话进行分析，并将相似的对话聚集成一组，您可以对每组进行标注。 ', b'1', '帮助页全部文档', NULL, NULL),
('optimization_help_header', 'helper', '我们会在每周一凌晨给您提供过去一周的优化周报，帮助您发现机器人回答中有哪些可以优化的内容，并提供相应的改进工具，建议您每周安排时间处理。', b'1', '帮助页全部文档', NULL, NULL),
('opt_task_checkinterval_seconds', 'admin', '300', b'1', '自动优化周报检查间隔(秒)', NULL, NULL),
('opt_task_check_on', 'admin', 'true', b'1', '自动优化周报开关', NULL, NULL),
('opt_task_get_result_max_try_count', 'admin', '15', b'1', '获取聚类报告的最大尝试次数', NULL, NULL),
('personal_bot_desc', 'helper', '请选择搭载机器人的终端设备\r\n', b'1', '帮助页全部文档', NULL, NULL),
('pinyin_recorect', 'admin', 'true', b'1', '拼音纠正', NULL, NULL),
('recommand_question', 'user', 'false', b'1', '系统推荐问', NULL, NULL),
('recommand_question_count', 'user', '3', b'1', '系统推荐问个数', NULL, NULL),
('recommand_question_threhold', 'user', '75', b'1', '系统推荐分数下限阀值', NULL, NULL),
('recommand_question_upperlimit', 'user', '90', b'1', '系统推荐分数上线阀值', NULL, NULL),
('recommend_question_hint', 'user', '您是不是还想了解：', b'1', '系统推荐问题提示', NULL, NULL),
('related-sq-help', 'helper', '开启后，常用标准问题中设置的相关问题会跟随回答一起出现。优先级高于“系统推荐问”', b'1', '帮助页全部文档', NULL, NULL),
('related-sq-title', 'helper', '相关问题', b'1', '帮助页全部文档', '相關問題', NULL),
('related_question', 'user', 'false', b'1', '设置手动开启相关问', NULL, NULL),
('related_question_hint', 'user', '您是不是还想了解：', b'1', '人工相关问题推荐提示信息', NULL, NULL),
('robot-page-appear-times', 'helper', '出现次数', b'1', '帮助页全部文档', '出現次數', NULL),
('robot-page-ask-trend', 'helper', '问答趋势', b'1', '帮助页全部文档', '問答趨勢', NULL),
('robot-page-business-dialog', 'helper', '对话中，由常见标准问题、多轮任务引擎、知识图谱这三个模块给出回答的对话', b'1', '机器人申请接受邮件', NULL, NULL),
('robot-page-change-range', 'helper', '变化幅度', b'1', '帮助页全部文档', '變化幅度', NULL),
('robot-page-conversation-analysis', 'helper', '对话分析', b'1', '帮助页全部文档', '對話分析', NULL),
('robot-page-data-run-status', 'helper', '运行状况分析', b'1', '帮助页全部文档', '', NULL),
('robot-page-data-update-time', 'helper', '数据更新时间', b'1', '帮助页全部文档', '數據更新時間', NULL),
('robot-page-everyday', 'helper', '单日', b'1', '帮助页全部文档', '單日', NULL),
('robot-page-flux-analyse', 'helper', '流量分析', b'1', '帮助页全部文档', '流量分析', NULL),
('robot-page-flux-time', 'helper', '时间', b'1', '帮助页全部文档', '時間', NULL),
('robot-page-latest-seven-day', 'helper', '近7天', b'1', '帮助页全部文档', '近7天', NULL),
('robot-page-latest-thirty-day', 'helper', '近30天', b'1', '帮助页全部文档', '近30天', NULL),
('robot-page-lookat-more', 'helper', '查看更多', b'1', '帮助页全部文档', '', NULL),
('robot-page-no-work-conversation', 'helper', '非业务对话', b'1', '帮助页全部文档', '非業務對話', NULL),
('robot-page-nonbusiness-dialog', 'helper', '非业务对话是指对话中的闲聊、未知问题回复', b'1', '机器人申请接受邮件', NULL, NULL),
('robot-page-now-Customer', 'helper', '客户', b'1', '帮助页全部文档', '客户', NULL),
('robot-page-now-nodata', 'helper', '暂无数据哦！', b'1', '帮助页全部文档', '暫無數據哦！\r\n', NULL),
('robot-page-question-answer-trend', 'helper', '显示的是标准问题被询问次数的变化趋势。变化幅度是指昨天某个标准问题出现的次数，相比前天出现次数的变化比例。“表格中的出现次数为昨天这个标准问题被询问的次数”', b'1', '帮助页全部文档', NULL, NULL),
('robot-page-response-time', 'helper', '在1小时内，所有对话响应时间的平均值，每个整点更新一次数据；如果您在13:40查看，显示的是12:00-13:00之间的所有对话平均响应时间', b'1', '帮助页全部文档', NULL, NULL),
('robot-page-today', 'helper', '今日', b'1', '帮助页全部文档', '今日', NULL),
('robot-page-work-conversation', 'helper', '业务对话', b'1', '帮助页全部文档', '業務對話', NULL),
('robot-page-yestoday', 'helper', '昨日', b'1', '帮助页全部文档', '昨日', NULL),
('robot-set-recommend-sq-description', 'helper', '开启后，系统会在回答信心不足时，推荐相关的问题供用户选择，以提高回答命中率。优先级低于“相关问题”', b'1', '帮助页全部文档', '開啟後，系統會在回答信心不足時，推薦相關的問題供用戶選擇，以提高回答命中率。優先順序低於“相關問題”', NULL),
('robot-set-rule', 'helper', '规则设置', b'1', '帮助页全部文档', '規則設置', NULL),
('robotpage-chat-response-time', 'helper', '对话响应时间：', b'1', '帮助页全部文档', '對話反應時間：', NULL),
('robotset-botindustry', 'helper', '行业', b'1', '帮助页全部文档', '行業', NULL),
('robotset-botmsg', 'helper', '机器人信息', b'1', '帮助页全部文档', '機器人信息', NULL),
('robotset-botname', 'helper', '机器人姓名', b'1', '帮助页全部文档', '機器人姓名', NULL),
('robotset-createtime', 'helper', '创建时间', b'1', '帮助页全部文档', '創建時間', NULL),
('robotset-manual-title1', 'helper', '转人工设置', b'1', '帮助页全部文档', '轉人工設置', NULL),
('robotset-manual-title2', 'helper', '转人工开关', b'1', '帮助页全部文档', '轉人工開關', NULL),
('robotset-manual-title3', 'helper', '转人工回复', b'1', '帮助页全部文档', '轉人工回覆', NULL),
('robotset-plan', 'helper', '解决方案', b'1', '帮助页全部文档', '解決方案', NULL),
('robotset-private-content', 'helper', '请联系与您对接的竹间项目负责人，或发送邮件到bf_service@emotibot.com,获得私有云部署的材料和协议。', b'1', '帮助页全部文档', NULL, NULL),
('robotset-private-title', 'helper', '根据您的需求，我们可以提供私有云部署服务', b'1', '机器人申请接受邮件', NULL, NULL),
('robot_set_answer', 'helper', '回答设置', b'1', '帮助页全部文档', '回答設置', ''),
('robot_set_backfill', 'helper', '未知回复', b'1', '帮助页全部文档', '未知回覆', NULL),
('robot_set_chat', 'helper', '闲聊', b'1', '帮助页全部文档', '閒聊', NULL),
('robot_set_sayhi', 'helper', '打招呼', b'1', '帮助页全部文档', '打招呼', NULL),
('sayhiHelp', 'helper', '机器人会在每次对话开始时主动和用户打招呼。打招呼的内容可以包含自我介绍、能力介绍、推荐的标准问题等，让用户快速了解机器人能帮他做些什么。', b'1', '帮助页全部文档', NULL, NULL),
('similar_question', 'user', 'false', b'1', '系统相似问推荐', NULL, NULL),
('similar_question_count', 'user', '3', b'1', '系统相似问推荐个数', NULL, NULL),
('similar_question_hint', 'user', '您是不是想问：', b'1', '系统相似问题提示信息', NULL, NULL),
('similar_question_threshold', 'user', '60', b'1', '系统相关分数下限阀值', NULL, NULL),
('sq-list-tit-th2', 'helper', '标准问题标签', b'1', '帮助页全部文档', '標準問題標籤', NULL),
('sq-list-tit-th4', 'helper', '正确率', b'1', '帮助页全部文档', '正確率', NULL),
('ssm-add-sq-keywords', 'helper', '请输入搜索内容', b'1', '帮助页全部文档', '請輸入搜尋內容', NULL),
('ssm-add-sq-total', 'helper', '共有', b'1', '帮助页全部文档', '共有', NULL),
('ssm-add-trainLog-expand', 'helper', '手动扩写', b'1', '帮助页全部文档', '手動擴寫', NULL),
('ssm-add-trainLog-template-download', 'helper', '训练语料模板下载', b'1', '帮助页全部文档', '訓練語料模板下載', NULL),
('ssm-add-trainLog-upload', 'helper', '批量上传', b'1', '帮助页全部文档', '批量上傳', NULL),
('ssm-expired-time', 'helper', '回答生效时间', b'1', '帮助页全部文档', '', NULL),
('ssm-filter-sq-dimension', 'helper', '筛选维度', b'1', '帮助页全部文档', '', NULL),
('ssm-filter-sq-dimension-selected', 'helper', '已选维度', b'1', '帮助页全部文档', '', NULL),
('ssm-filter-sq-notexpired', 'helper', '永久', b'1', '帮助页全部文档', '', NULL),
('ssm-filter-sq-type-all', 'helper', '全部', b'1', '帮助页全部文档', '', NULL),
('ssm-filter-sq-type-template', 'helper', '预置模板', b'1', '帮助页全部文档', '', NULL),
('ssm-filter-sq-type-userdefine', 'helper', '用户自定义', b'1', '帮助页全部文档', '', NULL),
('ssm-filter-sq-userdefine', 'helper', '自定义', b'1', '帮助页全部文档', '', NULL),
('ssm-header-chat-btn', 'helper', '对话', b'1', '帮助页全部文档', '對話', NULL),
('ssm-header-data-analyse', 'helper', '数据分析', b'1', '帮助页全部文档', '數據分析', NULL),
('ssm-header-data-optimize', 'helper', '数据优化', b'1', '帮助页全部文档', '數據優化', NULL),
('ssm-header-intent', 'helper', '意图引擎', b'1', '帮助页全部文档', '意圖引擎', NULL),
('ssm-header-robot-page', 'helper', '机器人首页', b'1', '帮助页全部文档', '機器人首頁\r\n', NULL),
('ssm-header-robot-setting', 'helper', '机器人设置', b'1', '帮助页全部文档', '機器人設置', NULL),
('ssm-header-scenario', 'helper', '多轮任务引擎', b'1', '帮助页全部文档', '多輪任務引擎', NULL),
('ssm-help-add-train-log-have-corpus-body1', 'helper', '现成的语料可以来自用户日志，也可以是客户或者内部员工在excel表格中的手动扩写，这些都可以通过上传来批量导入系统中。 上传之前，请先下载模板，按照模板提供的格式整理语料。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-add-train-log-no-corpus-body1', 'helper', '如果没有现成的训练语料，您可以通过“手动扩写”的方式逐条添加。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-add-train-log-whether-corpus-body1', 'helper', '您是否有现成的训练语料呢？', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-common-title', 'helper', '标准问题匹配（SSM）使用指南', b'1', '帮助页全部文档', '標準問題匹配（SSM）使用指南', NULL),
('ssm-help-common-title-body1', 'helper', '标准问题匹配是我们训练机器人对客户对企业咨询问题时达到回应正确答案的能力。要让机器人正确回答问题，我们需要让机器人理解客户问的是什么问题？（标准问题）而客户会如何询问（训练语料），我们需要让机器人尽可能的理解客户咨询问题时的不同问法（训练），为了保证质量，我们还需要对训练后的机器人进行考核（测试），才能上线为客户提供最专业的服务（接入）。', b'1', '帮助页全部文档', '標準問題匹配是我們訓練機器人對客戶對企業咨詢問題時達到回應正確答案的能力。要讓機器人正確回答問題，我們需要讓機器人理解客戶問的是什麽問題？（標準問題）而客戶會如何詢問（訓練語料），我們需要讓機器人盡可能的理解客戶咨詢問題時的不同問法（訓練），為了保證質量，我們還需要對訓練後的機器人進行考核（測試），才能上線為客戶提供最專業的服務（接入）。', NULL),
('ssm-help-page-access-private-cloud-setup-steps', 'helper', '1、准备服务器<br>2、设置服务器环境<br>3、安装软件包<br>4、导入数据包', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-access-private-cloud-software-secret', 'helper', '百度云提取密码：76b1', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-access-private-cloud-software-url', 'helper', 'https://pan.baidu.com/s/1nuGwHjb', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-access-private-cloud-update-steps', 'helper', '1、下载数据包<br>2、导入数据包', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-access-title-second1', 'helper', '什么是软件包？', b'1', '帮助页全部文档', '什麽是軟件包？', NULL),
('ssm-help-page-access-title-second1-body1', 'helper', '如果要将机器人接入私有云，您需要下载软件包部署到您的系统中。软件包中是让机器人具备对话的能力的Controller，您只需要下载一次即可。', b'1', '帮助页全部文档', '如果要將機器人接入私有雲，您需要下載軟件包部署到您的系統中。軟件包中是讓機器人具備對話的能力的Controller，您只需要下載一次即可。', NULL),
('ssm-help-page-access-title-second2', 'helper', '什么是数据包？', b'1', '帮助页全部文档', '什麽是數據包？', NULL),
('ssm-help-page-access-title-second2-body1', 'helper', '将软件包部署到您的系统后，我们需要在网页中对数据进行训练。完成训练后，我们会将训练好的模型以及数据打包成数据包，让您将最新的训练模型与结果部署到系统中。每次训练后都可以下载最新的数据包更新到您的系统中。您可以在训练到一定程度后再下载数据包。', b'1', '帮助页全部文档', NULL, '將軟件包部署到您的系統後，我們需要在網頁中對數據進行訓練。完成訓練後，我們會將訓練好的模型以及數據打包成數據包，讓您將最新的訓練模型與結果部署到系統中。每次訓練後都可以下載最新的數據包更新到您的系統中。您可以在訓練到一定程度後再下載數據包。'),
('ssm-help-page-access-wechat-details-body', 'helper', '1、打开公众号管理员帐号的微信<br>2、点击“去授权”按钮，使用微信扫一扫，扫描授权页面的二维码<br>3、在微信列出的公众号列表中进行选择并授权接入<br>4、完成授权，进入公众号使用聊天服务<br>5、在机器人平台上做的设置，都会应用于公众号聊天中', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-add-train-log-download-template-tips', 'helper', '请下载训练语料模板（<a href=\"语料上传.xlsx\" style=\"text-decoration: underline\" download=\"语料上传.xlsx\">训练语料模板下载</a>），并按照模板格式，将标准问题列表放入模板中，请注意以下几点：<br>1.请确认您的问题中没有完全相同的问题；<br>2.请确认您的每个标准问题都没有超过50个字；<br>3.上传的文件大小不能超过2M；', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-corpus-title-second1', 'helper', '什么是训练语料？', b'1', '帮助页全部文档', '什麽是訓練語料？', NULL),
('ssm-help-page-corpus-title-second1-body1', 'helper', '一个标准问题会有不同的问法，这些不同种的问法就是训练语料，可以让机器人学习哪些问法对应了哪个标准问题，提高机器人识别标准问题正确率。', b'1', '帮助页全部文档', '一個標準問題會有不同的問法，這些不同種的問法就是訓練語料，可以讓機器人學習哪些問法對應了哪個標準問題，提高機器人識別標準問題正確率。', NULL),
('ssm-help-page-corpus-title-second1-body2', 'helper', '机器人是根据语料来学习的。对于机器人来说，最好的语料是来自用户与客服人员对话的用户日志。但是很多时候我们没有办法得到用户日志，就需要自己模仿用户对每个标准问题写语料。为了方便您的使用，我们会将您添加的标准问题作为自身的语料数据。', b'1', '帮助页全部文档', '機器人是根據語料來學習的。對於機器人來說，最好的語料是來自用戶與客服人員對話的用戶日誌。但是很多時候我們沒有辦法得到用戶日誌，就需要自己模仿用戶對每個標準問題寫語料。為了方便您的使用，我們會將您添加的標準問題作為自身的語料數據。', NULL),
('ssm-help-page-corpus-title-second2', 'helper', '什么是用户日志？', b'1', '帮助页全部文档', '什麽是用戶日誌？', NULL),
('ssm-help-page-corpus-title-second2-body1', 'helper', '用户日志是用户与客服对话的记录列表。', b'1', '帮助页全部文档', '用戶日誌是用戶與客服對話的記錄列表。', NULL),
('ssm-help-page-corpus-title-second2-body2', 'helper', '用户会对客服机器人问的各种不同问题，这些从用户手里获取到的第一手语料会更贴近用户的问法，这样的语料具有更高的质量。', b'1', '帮助页全部文档', '用戶會對客服機器人問的各種不同問題，這些從用戶手裏獲取到的第一手語料會更貼近用戶的問法，這樣的語料具有更高的質量。', NULL),
('ssm-help-page-corpus-title-second3', 'helper', '我们该从哪里得到现有用户日志呢？', b'1', '帮助页全部文档', '我們該從哪裏得到現有用戶日誌呢？', NULL),
('ssm-help-page-corpus-title-second3-body1', 'helper', '1、曾使用过智能客服的用户，可以和用户获取之前使用的智能客服与用户的聊天记录。', b'1', '帮助页全部文档', '1、曾使用過智能客服的用戶，可以和用戶獲取之前使用的智能客服與用戶的聊天記錄。', NULL),
('ssm-help-page-corpus-title-second3-body2', 'helper', '2、有人工客服与客户的用户日志也可以，只要将用户日志导入我们的模板后上传即可。', b'1', '帮助页全部文档', '2、有人工客服與客戶的用戶日誌也可以，只要將用戶日誌導入我們的模板後上傳即可。', NULL),
('ssm-help-page-corpus-title-second4', 'helper', '获取用户咨询客服时的用户日志', b'1', '帮助页全部文档', '獲取用戶咨詢客服時的用戶日誌', NULL),
('ssm-help-page-corpus-title-second4-body1', 'helper', '训练机器人最好的方式是直接获取用户日志来分类标准问题，像是智能客服或是人工客服用户的用户日志都是非常有价值的，有了过去客服和用户的用户日志，我们可以让机器人知道用户都会问什么问题？又是怎么去问的？这些问法才是最真实的用户语句。知道了这些问题，我们就可以把这些用户日志进行分类。', b'1', '帮助页全部文档', '訓練機器人最好的方式是直接獲取用戶日誌來分類標準問題，像是智能客服或是人工客服用戶的用戶日誌都是非常有價值的，有了過去客服和用戶的用戶日誌，我們可以讓機器人知道用戶都會問什麽問題？又是怎麽去問的？這些問法才是最真實的用戶語句。知道了這些問題，我們就可以把這些用戶日誌進行分類。', NULL),
('ssm-help-page-corpus-title-second5', 'helper', '什么是扩写？', b'1', '帮助页全部文档', '什麽是擴寫？', NULL),
('ssm-help-page-corpus-title-second5-body1', 'helper', '扩写就是模拟用户可能的问法所设计的问题，进行扩写的时候需要注意以下几点：', b'1', '帮助页全部文档', '擴寫就是模擬用戶可能的問法所設計的問題，進行擴寫的時候需要註意以下幾點：', NULL),
('ssm-help-page-corpus-title-second5-body2', 'helper', '1、需要模仿用户对标准问题的不同问法。', b'1', '帮助页全部文档', '1、需要模仿用戶對標準問題的不同問法。', NULL),
('ssm-help-page-corpus-title-second6', 'helper', '我该对每个标准问题准备多少条的语料？', b'1', '帮助页全部文档', '我該對每個標準問題準備多少條的語料？', NULL),
('ssm-help-page-corpus-title-second6-body1', 'helper', '根据我们的经验来看，10-30条的语料可以达到基本的正确率、30-50条语料可以达到中等的正确率、50-70条则可以达到精确的正确率。', b'1', '帮助页全部文档', '根據我們的經驗來看，10-30條的語料可以達到基本的正確率、30-50條語料可以達到中等的正確率、50-70條則可以達到精確的正確率。', NULL),
('ssm-help-page-corpus-title-second6-body2', 'helper', '在某些项目中，有些标准问题达到100条以上，机器人正确回答的能力就更高了。建议在每个标注问题中准备至少10条以上的语料来确保机器人的回答质量。', b'1', '帮助页全部文档', '在某些專案中，有些標準問題達到100條以上，機器人正確回答的能力就更高了。建議在每個標註問題中準備至少10條以上的語料來確保機器人的回答質量。', NULL),
('ssm-help-page-corpus-title-second7', 'helper', '我的上传语料数量为什么和原本上传的不一样？', b'1', '帮助页全部文档', '我的上傳語料數量為什麽和原本上傳的不一樣？', NULL),
('ssm-help-page-corpus-title-second7-body1', 'helper', '在上传的过程中，我们将您不符合规范的语料进行了删减，您可以先在excel表格中进行修改再重新上传。', b'1', '帮助页全部文档', '在上傳的過程中，我們將您不符合規範的語料進行了刪減，您可以先在excel表格中進行修改再重新上傳。', NULL),
('ssm-help-page-corpus-title-second8', 'helper', '语料模板是什么？为什么需要模板？', b'1', '帮助页全部文档', '語料模板是什麽？為什麽需要模板？', NULL),
('ssm-help-page-corpus-title-second8-body1', 'helper', '服务器只可以接受特定格式的文档，所以希望您在上传数据之前，先下载我们的模板，并按照这个模板整理数据。', b'1', '帮助页全部文档', '服務器只可以接受特定格式的文檔，所以希望您在上傳數據之前，先下載我們的模板，並按照這個模板整理數據。', NULL),
('ssm-help-page-corpus-title-second8-body2', 'helper', '模板中有两个栏位，分别是“语料”栏以及“标准问题”栏。填写时，你可以只填入语料，不填入标准问题，但是你需要在上传后到标注语料的页面进行标注。', b'1', '帮助页全部文档', '模板中有兩個欄位，分別是“語料”欄以及“標準問題”欄。填寫時，妳可以只填入語料，不填入標準問題，但是妳需要在上傳後到標註語料的頁面進行標註。', NULL),
('ssm-help-page-corpus-title-second8-body3', 'helper', '2、一个人的想法总是有限的，可以请几个人提供扩写语料，能覆盖更多的问法种类。', b'1', '帮助页全部文档', '2、一個人的想法總是有限的，可以請幾個人提供擴寫語料，能覆蓋更多的問法種類。', NULL),
('ssm-help-page-lable-title-second1', 'helper', '什么是语料标注？', b'1', '帮助页全部文档', '什麽是語料標註？', NULL),
('ssm-help-page-lable-title-second1-body1', 'helper', '语料标注是将多个语料对应到合适的标准问题，没有标注的语料是无法进行训练的。而没有标注的语料是因为在上传语料时没有将所有语料对应到标准问题。别担心，你仍然可以在“标注语料”页面中进行标注。', b'1', '帮助页全部文档', '語料標註是將多個語料對應到合適的標準問題，沒有標註的語料是無法進行訓練的。而沒有標註的語料是因為在上傳語料時沒有將所有語料對應到標準問題。別擔心，妳仍然可以在“標註語料”頁面中進行標註。', NULL),
('ssm-help-page-sq-download-template-tips', 'helper', '在我们将真实用户问题放进模板时（<a href=\"标准问题和回答上传.xlsx\" style=\"text-decoration: underline\" download=\"标准问题和回答上传.xlsx\">标准问题模板下载</a>），需要注意以下几点：<br>1.不能出现相同的标准问题;<br>2.标准问题不能超过50个字；<br>3.回答不能超过1000个字;<br>4.上传的文件大小不能超过2M;<br>5.只支持新增，不支持全量替换。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-sq-title-second1', 'helper', '什么是标准问题？', b'1', '帮助页全部文档', '什麽是標準問題？', NULL),
('ssm-help-page-sq-title-second1-body1', 'helper', '标准问题是用户询问客服的业务问题。', b'1', '帮助页全部文档', '標準問題是用戶詢問客服的業務問題。', NULL),
('ssm-help-page-sq-title-second1-body2', 'helper', '“我的包裹到哪去了？”和“我的快递到了没啊？”这些语料中的语义相同，为了让我们更便利的管理这些类似的问题，我们可以把这些问题分类为“快递查询”。而这个“快递查询“可以称为标准问题。我们也可以直接使用现有的标准问题。', b'1', '帮助页全部文档', '“我的包裹到哪去了？”和“我的快遞到了沒啊？”這些語料中的語義相同，為了讓我們更便利的管理這些類似的問題，我們可以把這些問題分類為“快遞查詢”。而這個“快遞查詢“可以稱為標準問題。我們也可以直接使用現有的標準問題', NULL),
('ssm-help-page-sq-title-second1-tips1', 'helper', '标准问题是你希望机器人能解答的问题。您是否已经有现成的标准问题呢？', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-sq-title-second1-tips2', 'helper', '如果您已经有了标准问题，请您下载模板，并按照其中的格式整理，然后上传；', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-sq-title-second1-tips3', 'helper', '如果没有现成的标准问题，您可以开始设计，并通过手写的方式逐条添加；', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-sq-title-second2', 'helper', '为什么需要标准问题？', b'1', '帮助页全部文档', '為什麽需要標準問題？', NULL),
('ssm-help-page-sq-title-second2-body1', 'helper', '设定标准问题可以让我们更好的梳理业务问题，将不同的业务问题设计成标准问题后，用户询问的问题就能够被正确的理解并得到合适的回复。', b'1', '帮助页全部文档', '設定標準問題可以讓我們更好的梳理業務問題，將不同的業務問題設計成標準問題後，用戶詢問的問題就能夠被正確的理解並得到合適的回覆。', NULL),
('ssm-help-page-sq-title-second3', 'helper', '该从哪里获得现有的标准问题？', b'1', '帮助页全部文档', '該從哪裏獲得現有的標準問題？', NULL),
('ssm-help-page-sq-title-second3-body1', 'helper', '如果不知道该怎么设计，我们可以寻找现有的标准问题。', b'1', '帮助页全部文档', '如果不知道該怎麽設計，我們可以尋找現有的標準問題。', NULL),
('ssm-help-page-sq-title-second3-body2', 'helper', '1. 如果曾使用过智能客服，我们可以直接使用当中的标准问题，也可以进行优化。', b'1', '帮助页全部文档', '1. 如果曾使用過智能客服，我們可以直接使用當中的標準問題，也可以進行優化。', NULL),
('ssm-help-page-sq-title-second3-body3', 'helper', '2. 如果有人工客服，我们可以从客服手册等培训材料中得到用户常问的问题。\r\n如果没有用户日志，我们依然可以利用本身对业务的了解自己设计标准问题，那我们就需要知道该如何设计良好的标准问题。', b'1', '帮助页全部文档', '2. 如果有人工客服，我們可以從客服手冊等培訓材料中得到用戶常問的問題。\r\n 如果沒有用戶日誌，我們依然可以利用本身對業務的了解自己設計標準問題，那我們就需要知道該如何設計良好的標準問題。', NULL),
('ssm-help-page-sq-title-second4', 'helper', '如何设计良好的标准问题？', b'1', '帮助页全部文档', '如何設計良好的標準問題？', NULL),
('ssm-help-page-sq-title-second4-body1', 'helper', '标准问题对机器人来说非常重要，标准问题设计的好坏会直接影响到您的训练后正确率，需要认真对每个标准问题进行严谨的思考。在设计标准问题的时候需要注意以下几点：', b'1', '帮助页全部文档', '標準問題對機器人來說非常重要，標準問題設計的好壞會直接影響到您的訓練後正確率，需要認真對每個標準問題進行嚴謹的思考。在設計標準問題的時候需要註意以下幾點：', NULL),
('ssm-help-page-sq-title-second4-body2', 'helper', '1、首先找到用户最常问的问题类型，先为它们设计标准问题。', b'1', '帮助页全部文档', '1、首先找到用戶最常問的問題類型，先為它們設計標準問題。', NULL),
('ssm-help-page-sq-title-second4-body3', 'helper', '2、在设计标准问题时，需要明确区分，不要出现容易误解、混淆的标准问题。', b'1', '帮助页全部文档', '2、在設計標準問題時，需要明確區分，不要出現容易誤解、混淆的標準問題。', NULL),
('ssm-help-page-sq-title-second4-body4', 'helper', '3、请不要设计有包含关系的标准问题（“公司的电话”这个标准问题可能也包含了“上海分公司的电话”）\r\n', b'1', '帮助页全部文档', '3、請不要設計有包含關系的標準問題（“公司的電話”這個標準問題可能也包含了“上海分公司的電話”）', NULL),
('ssm-help-page-sq-title-second4-body5', 'helper', '4、请不要设计两个名字很像、容易产生误解的标准问题（例如“个人主页无法显示”和“个人主页显示异常”）', b'1', '帮助页全部文档', '4、請不要設計兩個名字很像、容易產生誤解的標準問題（例如“個人主頁無法顯示”和“個人主頁顯示異常”）', NULL),
('ssm-help-page-sq-title-second5', 'helper', '标准问题模板是什么？为什么需要模板？', b'1', '帮助页全部文档', '標準問題模板是什麽？為什麽需要模板？', NULL),
('ssm-help-page-sq-title-second5-body1', 'helper', '服务器只能接受特定格式的文档，所以希望在上传数据之前，请先下载我们的模板，按照模板的样式整理数据。', b'1', '帮助页全部文档', '服務器只能接受特定格式的文檔，所以希望在上傳數據之前，請先下載我們的模板，按照模板的樣式整理數據。', NULL),
('ssm-help-page-sq-title-second5-body2', 'helper', '标准问题的模板非常简单，它是这个样子的：', b'1', '帮助页全部文档', '標準問題的模板非常簡單，它是這個樣子的：', NULL),
('ssm-help-page-sq-title-second5-body3', 'helper', '只要把问题放在第一列，回答放在第二列，就可以了。', b'1', '帮助页全部文档', '只要把問題放在第一列，回答放在第二列，就可以了。', NULL),
('ssm-help-page-sq-title-second5-body4', 'helper', '整理好之后，记得保存为xlsx格式（excel2007及以后版本的文件格式）。', b'1', '帮助页全部文档', '整理好之後，記得保存為xlsx格式（excel2007及以後版本的文件格式）。', NULL),
('ssm-help-page-test-optimize-body1', 'helper', '1.再检查检查你的测试题对应的标准问题是不是正确，还有你可以再参考看看我们写的测试准备建议（如何让测试更精准）<br>2.找到出错较多的标准问题，有可能是标准问题的语料太少，或是有不合适的语料被放到这里了。<br>3.从标准问题的角度来看，我们可以检查标准问题看看有没有比较容易混淆、不好区分的标准问题这个标准问题是不是也包含了其他的标准问题？（“公司的电话”这个标准问题可能也包含了“上海分公司的电话”检查一下标准问题的名字是不是取得很像。如果遇到这些问题，你可以回到之前的编辑页面来修改，保证标准问题的定义差异比较明显<br>4.越多的练习题可以让你未来考试的时候理解越多的题型，所以我们能提供机器人训练的高质量语料越多，对训练越有帮助哦！我们推荐每个标准问题至少提供30条语料来训练，如果可以提供50条以上，机器人可以学习的更好。<br>5.尽量保证每个标准问题都是互相独立的，还有语料中没有包含多个问题。<br>6.也可以查看我们在每次训练后提供的标准问题以及语料整理建议。<br>希望你可以更快完成你的专属机器人哦！', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-test-title-second1', 'helper', '什么是测试？', b'1', '帮助页全部文档', '什麽是測試？', NULL),
('ssm-help-page-test-title-second1-body1', 'helper', '我们训练好了机器人后，会需要一些测试题来检验机器人的学习效果。', b'1', '帮助页全部文档', '我們訓練好了機器人後，會需要一些測試題來檢驗機器人的學習效果。', NULL),
('ssm-help-page-test-title-second1-body2', 'helper', '测试是模拟机器人面对真实用户时，是不是可以正确识别用户的提问属于哪个标准问题。为了让客户有个很棒的客服体验，我们需要确保较高的正确率。我们通过测试来了解机器人对语料的理解效果，找出机器人理解较差的标准问题，优化到令人满意的正确率。', b'1', '帮助页全部文档', '測試是模擬機器人面對真實用戶時，是不是可以正確識別用戶的提問屬於哪個標準問題。為了讓客戶有個很棒的客服體驗，我們需要確保較高的正確率。我們通過測試來了解機器人對語料的理解效果，找出機器人理解較差的標準問題，優化到令人滿意的正確率。', NULL),
('ssm-help-page-test-title-second2', 'helper', '该如何准备测试题？', b'1', '帮助页全部文档', '該如何準備測試題？', NULL),
('ssm-help-page-test-title-second2-body1', 'helper', '准备测试集设计的好坏会影响到测试结果，以下提供几点建议：', b'1', '帮助页全部文档', '準備測試集設計的好壞會影響到測試結果，以下提供幾點建議：', NULL),
('ssm-help-page-test-title-second2-body2', 'helper', '1、问法要尽可能贴近真实用户的问法，最好是之前留下的用户日志，如果没有，也可以请公司内部最贴近客户的员工来模仿客户的问法。', b'1', '帮助页全部文档', '1、問法要盡可能貼近真實用戶的問法，最好是之前留下的用戶日誌，如果沒有，也可以請公司內部最貼近客戶的員工來模仿客戶的問法。', NULL),
('ssm-help-page-test-title-second2-body3', 'helper', '2、您可以对每一个标准问题准备多点测试题，才可以真正反映标准问题的正确率，不然只能一题定生死，还是有些偏差的。', b'1', '帮助页全部文档', '2、您可以對每一個標準問題準備多點測試題，才可以真正反映標準問題的正確率，不然只能一題定生死，還是有些偏差的。', NULL),
('ssm-help-page-test-title-second2-body4', 'helper', '3、可以按照标准问题被询问的频率来定测试题的数量，越常被问到就准备越多的测试题。建议可以让比较了解的同事粗略估计一下。', b'1', '帮助页全部文档', '3、可以按照標準問題被詢問的頻率來定測試題的數量，越常被問到就準備越多的測試題。建議可以讓比較了解的同事粗略估計一下。', NULL),
('ssm-help-page-test-title-second2-body5', 'helper', '4、当然，要确定您的测试题对应的“正确标准问题”是对的。有时候也会有不小心写错“正确标准问题”的状况发生。', b'1', '帮助页全部文档', '4、當然，要確定您的測試題對應的“正確標準問題”是對的。有時候也會有不小心寫錯“正確標準問題”的狀況發生。', NULL),
('ssm-help-page-test-title-second2-body6', 'helper', '5、还有个小建议，当您从用户日志抽问题作为您的测试集时，需要检查一下这个问题里面是不是包含了好多个问题，或是句子很长，这个也会影响到测试结果。', b'1', '帮助页全部文档', '5、還有個小建議，當您從用戶日誌抽問題作為您的測試集時，需要檢查一下這個問題裏面是不是包含了好多個問題，或是句子很長，這個也會影響到測試結果。', NULL),
('ssm-help-page-test-title-second3', 'helper', '测试集该怎么写呢？', b'1', '帮助页全部文档', '測試集該怎麽寫呢？', NULL),
('ssm-help-page-test-title-second3-body1', 'helper', '你可以使用机器人工厂中编辑工具撰写测试题，你也可以使用我们提供的Excel模板来上传测试题。', b'1', '帮助页全部文档', '妳可以使用機器人工廠中編輯工具撰寫測試題，妳也可以使用我們提供的Excel模板來上傳測試題。', NULL),
('ssm-help-page-test-title-second3-body2', 'helper', '有件事情需要注意的是，表格当中的“正确标准问题”栏中的标准问题内容需要和系统中的标准问题一模一样，否则系统无法正确地判断。', b'1', '帮助页全部文档', '有件事情需要註意的是，表格當中的“正確標準問題”欄中的標準問題內容需要和系統中的標準問題一模一樣，否則系統無法正確地判斷。', NULL);
INSERT INTO `ent_config` (`name`, `module`, `value`, `enabled`, `description`, `zhtw`, `enus`) VALUES
('ssm-help-page-test-title-second3-body3', 'helper', '我们需要把给机器人的考题放进一个模板里，第一列放的是测试题，是用户可能问的问题，第二列则是正确答案，也就是这个语料应该对应的标准问题。上传后，系统会记录机器人对每个题目的答案，算出回答正确的比例，即测试结果。', b'1', '帮助页全部文档', '我們需要把給機器人的考題放進一個模板裏，第一列放的是測試題，是用戶可能問的問題，第二列則是正確答案，也就是這個語料應該對應的標準問題。上傳後，系統會記錄機器人對每個題目的答案，算出回答正確的比例，即測試結果。', NULL),
('ssm-help-page-test-title-second4', 'helper', '什么时候可以开始测试？', b'1', '帮助页全部文档', '什麽時候可以開始測試？', NULL),
('ssm-help-page-test-title-second4-body1', 'helper', '在训练过后，我们就可以开始测试了。训练之前可以参考我们的小贴士（Tips：<a class=\'anchortips\'>我还想让我的结果更好</a>）', b'1', '帮助页全部文档', '在訓練過後，我們就可以開始測試了。訓練之前可以參考我們的小貼士（Tips：我還想讓我的結果更好）', NULL),
('ssm-help-page-test-title-second5', 'helper', '正常的机器人训练和测试的流程', b'1', '帮助页全部文档', '正常的機器人訓練和測試的流程', NULL),
('ssm-help-page-test-title-second5-body1', 'helper', '正常情况下，当你建立新的机器人时，有以下几点需要准备：', b'1', '帮助页全部文档', '正常情況下，當妳建立新的機器人時，有以下幾點需要準備：', NULL),
('ssm-help-page-test-title-second5-body2', 'helper', '1、你需要针对每个标准问题准备训练语料', b'1', '帮助页全部文档', '1、妳需要針對每個標準問題準備訓練語料', NULL),
('ssm-help-page-test-title-second5-body3', 'helper', '2、每个标准问题要有3-4个标准问题，如果想要测试机器人对标准问题的覆盖率，你也可以增加更多的测试题。', b'1', '帮助页全部文档', '2、每個標準問題要有3-4個標準問題，如果想要測試機器人對標準問題的覆蓋率，妳也可以增加更多的測試題。', NULL),
('ssm-help-page-test-title-second5-body4', 'helper', '3、接下来你就可以训练并测试机器人了', b'1', '帮助页全部文档', '3、接下來妳就可以訓練並測試機器人了', NULL),
('ssm-help-page-test-title-second5-body5', 'helper', '4、查看你的测试结果，如果出现真确率时，你可以查看我们的小贴士（<a class=\'anchortips\'>我还想让我的结果更好</a>）', b'1', '帮助页全部文档', '4、查看妳的測試結果，如果出現真確率時，妳可以查看我們的小貼士（我還想讓我的結果更好）', NULL),
('ssm-help-page-test-title-second6', 'helper', '什么是正确率？', b'1', '帮助页全部文档', '什麽是正確率？', NULL),
('ssm-help-page-test-title-second6-body1', 'helper', '正确率是每次测试中，机器人预测正确的测试题在所有测试题中所占的比例。', b'1', '帮助页全部文档', '正確率是每次測試中，機器人預測正確的測試題在所有測試題中所占的比例。', NULL),
('ssm-help-page-test-title-second7', 'helper', '为什么我的标准问题正确率是N/A呢？', b'1', '帮助页全部文档', '為什麽我的標準問題正確率是N/A呢？', NULL),
('ssm-help-page-test-title-second7-body1', 'helper', '要得到每个标准问题的正确率，需要在测试结束后才会出现。没有测试题的标准问题也会出现N/A这个状态。', b'1', '帮助页全部文档', '要得到每個標準問題的正確率，需要在測試結束後才會出現。沒有測試題的標準問題也會出現N/A這個狀態。', NULL),
('ssm-help-page-test-title-second8', 'helper', '什么是机器人预测', b'1', '帮助页全部文档', '什麽是機器人預測', NULL),
('ssm-help-page-test-title-second8-body1', 'helper', '机器人预测是机器人经过训练后，对测试题中的标准问题判断的动作。', b'1', '帮助页全部文档', '機器人預測是機器人經過訓練後，對測試題中的標準問題判斷的動作。', NULL),
('ssm-help-page-test-title-second9', 'helper', 'Tips：<i class=\'tips\'>我还想让我的结果更好</i>', b'1', '帮助页全部文档', 'Tips：<i class=\'tips\'>我還想讓我的結果更好<li>\r\n', NULL),
('ssm-help-page-test-title-second9-body1', 'helper', '如果发现测试结果不好，我们统整了一些经验给您，希望可以提升您的测结果：', b'1', '帮助页全部文档', '如果發現測試結果不好，我們統整了一些經驗給您，希望可以提升您的測結果：', NULL),
('ssm-help-page-test-title-second9-body2', 'helper', '1、再检查检查测试题对应的标准问题是不是正确。', b'1', '帮助页全部文档', '1、再檢查檢查測試題對應的標準問題是不是正確。', NULL),
('ssm-help-page-test-title-second9-body3', 'helper', '2、找到正确率较低的标准问题进行检查，有可能是标准问题的语料太少，或是有不合适的语料被放到这里了。', b'1', '帮助页全部文档', '2、找到正確率較低的標準問題進行檢查，有可能是標準問題的語料太少，或是有不合適的語料被放到這裏了。', NULL),
('ssm-help-page-test-title-second9-body4', 'helper', '&nbsp;&nbsp;· 越多的练习题可以让您未来考试的时候理解越多的题型，所以我们能提供机器人训练的高质量语料越多，对训练越有帮助哦！（<a class=\'anchorlq\'>《我该对每个标准问题准备多少条的语料？》</a>）', b'1', '帮助页全部文档', '越多的練習題可以讓您未來考試的時候理解越多的題型，所以我們能提供機器人訓練的高質量語料越多，對訓練越有幫助哦！（《我該對每個標準問題準備多少條的語料？》）', NULL),
('ssm-help-page-test-title-second9-body5', 'helper', '3、从标准问题的角度来看，我们可以检查标准问题：', b'1', '帮助页全部文档', '3、從標準問題的角度來看，我們可以檢查標準問題：', NULL),
('ssm-help-page-test-title-second9-body6', 'helper', '&nbsp;&nbsp;· 看看有没有比较容易混淆、不好区分的标准问题，可以检查一下标准问题的名字是不是取得很像', b'1', '帮助页全部文档', '&nbsp;&nbsp;看看有沒有比較容易混淆、不好區分的標準問題，可以檢查一下標準問題的名字是不是取得很像', NULL),
('ssm-help-page-test-title-second9-body7', 'helper', '&nbsp;&nbsp;· 这个标准问题是不是也包含了其他的标准问题？（“公司的电话”这个标准问题可能也包含了“上海分公司的电话”）', b'1', '帮助页全部文档', '&nbsp;&nbsp;· 這個標準問題是不是也包含了其他的標準問題？（“公司的電話”這個標準問題可能也包含了“上海分公司的電話”）', NULL),
('ssm-help-page-test-title-second9-body8', 'helper', '如果遇到这些问题，您可以回到之前的编辑页面来修改，保证标准问题的定义差异比较明显', b'1', '帮助页全部文档', '如果遇到這些問題，您可以回到之前的編輯頁面來修改，保證標準問題的定義差異比較明顯', NULL),
('ssm-help-page-test-title-second9-body9', 'helper', '4、尽量保证每个标准问题都是互相独立的，还有语料中没有包含多个问题。', b'1', '帮助页全部文档', '4、盡量保證每個標準問題都是互相獨立的，還有語料中沒有包含多個問題。', NULL),
('ssm-help-page-test-title-start_test', 'helper', '完成了训练，我们来验收机器人学习的成果吧！开始测试', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-title-first3', 'helper', '语料标注', b'1', '帮助页全部文档', '語料標註', NULL),
('ssm-help-page-title-first4', 'helper', '训练', b'1', '帮助页全部文档', '訓練', NULL),
('ssm-help-page-title-first5', 'helper', '测试', b'1', '帮助页全部文档', '測試', NULL),
('ssm-help-page-title-first6', 'helper', '接入', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-page-train-title-second1', 'helper', '什么是训练？', b'1', '帮助页全部文档', '什麽是訓練？', NULL),
('ssm-help-page-train-title-second1-body1', 'helper', '训练是让机器人学习的过程，我们将前面准备的语料和标准问题的对应关系放入模型，通过深度学习等人工智能技术，机器人就获得了回答相关问题的能力。', b'1', '帮助页全部文档', '訓練是讓機器人學習的過程，我們將前面準備的語料和標準問題的對應關系放入模型，通過深度學習等人工智能技術，機器人就獲得了回答相關問題的能力。', NULL),
('ssm-help-page-train-title-second1-body2', 'helper', '可以说我们前面的语料增加和标注，都是为了训练提供基础，我们提供的语料越丰富、有代表性，训练出的机器人的问题回答能力就越强。', b'1', '帮助页全部文档', '可以說我們前面的語料增加和標註，都是為了訓練提供基礎，我們提供的語料越豐富、有代表性，訓練出的機器人的問題回答能力就越強。', NULL),
('ssm-help-page-train-title-second2', 'helper', '什么时候可以进行训练？', b'1', '帮助页全部文档', '什麼時候可以進行訓練？', NULL),
('ssm-help-page-train-title-second2-body1', 'helper', '一个机器人需要有标准问题以及足够的训练语料，我们推荐为每个标准问题尽量提供10条以上的训练语料。当我们为每个标准问题都准备了充足的语料之后，就可以开始训练啦！我们的机器人就会依照您提供的信息学习用户语料是如何对应标准问题咯！', b'1', '帮助页全部文档', '一個機器人需要有標準問題以及足夠的訓練語料，我們推薦為每個標準問題盡量提供10條以上的訓練語料。當我們為每個標準問題都準備了充足的語料之後，就可以開始訓練啦！我們的機器人就會依照您提供的信息學習用戶語料是如何對應標準問題咯！', NULL),
('ssm-help-page-train-title-second2-body2', 'helper', '当我们为每个标准问题都准备了充足的语料之后，就可以开始训练啦！我们的机器人就会依照您提供的信息学习用户语料是如何对应标准问题咯！', b'1', '帮助页全部文档', '當我們為每個標準問題都準備了充足的語料之後，就可以開始訓練啦！我們的機器人就會依照您提供的信息學習用戶語料是如何對應標準問題咯！', NULL),
('ssm-help-page-train-title-second3-body1', 'helper', '当你的机器人遇到以下任一种状况时，我们的机器人都需要重新被训练。', b'1', '帮助页全部文档', '當妳的機器人遇到以下任一種狀況時，我們的機器人都需要重新被訓練。', NULL),
('ssm-help-page-train-title-second3-body2', 'helper', '1、新增或修改了原有的标准问题时。', b'1', '帮助页全部文档', '1、新增或修改了原有的標準問題時。', NULL),
('ssm-help-page-train-title-second3-body3', 'helper', '2、新增了新的训练语料。', b'1', '帮助页全部文档', '2、新增了新的訓練語料。', NULL),
('ssm-help-page-train-title-second3-body4', 'helper', '完成测试后，根据对应的正确率，对标准问题、语料进行了一些修改之后就可以开始新的训练；或在您增加了一批新的标准问题、新的语料后，也可以进行新的训练。', b'1', '帮助页全部文档', '完成測試後，根據對應的正確率，對標準問題、語料進行了一些修改之後就可以開始新的訓練；或在您增加了一批新的標準問題、新的語料後，也可以進行新的訓練。', NULL),
('ssm-help-page-train-title-second3-body5', 'helper', '总之在标准问题和语料有了比较多的改变之后都可以进行训练，来看看这些改变对机器人的效果如何。', b'1', '帮助页全部文档', '總之在標準問題和語料有了比較多的改變之後都可以進行訓練，來看看這些改變對機器人的效果如何。', NULL),
('ssm-help-page-train-title-second4-body1', 'helper', '根据我们的经验来看，10-30条的语料可以达到基本的正确率、30-50条语料可以达到中等的正确率、50-70条则可以达到精确的正确率。在某些项目中，有些标准问题达到100条以上，机器人正确回答的能力就更高了。建议在每个标注问题中准备至少10条以上的语料来确保机器人的回答质量。\r\n\r\n', b'1', '帮助页全部文档', '根據我們的經驗來看，10-30條的語料可以達到基本的正確率、30-50條語料可以達到中等的正確率、50-70條則可以達到精確的正確率。在某些項目中，有些標準問題達到100條以上，機器人正確回答的能力就更高了。建議在每個標註問題中準備至少10條以上的語料來確保機器人的回答質量。', NULL),
('ssm-help-table-tr1-td1', 'helper', '语料数量', b'1', '帮助页全部文档', '語料數量', NULL),
('ssm-help-table-tr2-td1', 'helper', '10-30', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-table-tr2-td2', 'helper', '基本', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-table-tr3-td1', 'helper', '30-50', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-table-tr3-td2', 'helper', '中等', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-table-tr4-td1', 'helper', '50-70', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-table-tr4-td2', 'helper', '良好', b'1', '帮助页全部文档', NULL, NULL),
('ssm-help-table-tr5-td1', 'helper', '100条以上', b'1', '帮助页全部文档', '100條以上', NULL),
('ssm-help-table-tr5-td2', 'helper', '精准', b'1', '帮助页全部文档', '精準', NULL),
('ssm-index-btn-last-train-result', 'helper', '上次测试结果', b'1', '帮助页全部文档', '上次測試結果', NULL),
('ssm-index-btn-start-chat', 'helper', '开始聊天', b'1', '帮助页全部文档', '開始聊天', NULL),
('ssm-sq-template-msg', 'helper', '该标准问题是模板预设的数据，不可编辑', b'1', '帮助页全部文档', '', NULL),
('ssm-sqManage-add-sq', 'helper', '手动添加问题', b'1', '帮助页全部文档', '', NULL),
('ssm-sqManage-export-sq', 'helper', '导出标准问题', b'1', '帮助页全部文档', '匯出標準問題', NULL),
('ssm-sqManage-filter-sqCount', 'helper', '已选择', b'1', '帮助页全部文档', '已選擇', NULL),
('ssm-sqManage-import-sq', 'helper', '导入标准问题', b'1', '帮助页全部文档', '匯入標準問題', NULL),
('ssm-sqManage-lq-measure', 'helper', '语料', b'1', '帮助页全部文档', '已標註語料', NULL),
('ssm-sqManage-related-sq-count1', 'helper', '共', b'1', '帮助页全部文档', '共', NULL),
('ssm-sqManage-related-sq-count2', 'helper', '条相关标准问题', b'1', '帮助页全部文档', '條相關標準問題', NULL),
('ssm-sqManage-related-sq-count3', 'helper', '筛选出', b'1', '帮助页全部文档', '', NULL),
('ssm-sqManage-remove-sq', 'helper', '批量删除', b'1', '帮助页全部文档', '批量刪除', NULL),
('ssm-sqManage-sq-measure', 'helper', '条', b'1', '帮助页全部文档', '條', NULL),
('ssm-sqManage-tag', 'helper', '标签', b'1', '帮助页全部文档', '標籤', NULL),
('ssm-sqManage-tag-selected', 'helper', '已选标签', b'1', '帮助页全部文档', '已選標籤', NULL),
('ssm-test-add-new-data', 'helper', '新增数据', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-add-testcase', 'helper', '手动添加', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra1', 'helper', '在正式测试之前，我们建议先自己测试，并根据结果，找到表现不好的标准问题进行优化。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra2', 'helper', '还可以从几个方面来判断你是否可以开始测试了', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra3', 'helper', '从标准问题的角度来看，我们可以检查：', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra4', 'helper', '-看看有没有比较容易混淆、不好区分的标准问题。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra5', 'helper', '-是否有标准问题包含了其他的标准问题。（“公司的电话”这个标准问题可能也包含了“上海分公司的电话”）', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra6', 'helper', '-检查一下标准问题的名字是不是取得很像。（例如“个人主页无法显示”和“个人主页显示异常”）', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra7', 'helper', '如果遇到这些问题，你可以在标准问题管理页面修改，保证标准问题的定义差异比较明显。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra8', 'helper', '越多的练习题可以让你未来考试的时候理解越多的题型，所以我们能提供机器人训练的高质量语料越多，对训练越有帮助哦！我们推荐每个标准问题至少提供30条语料来训练，如果可以提供50条以上，机器人可以学习得更好。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-alert-msg-pra9', 'helper', '确保训练语料中没有太长的句子，也没有一个句子包含多个问题。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-attention-upload', 'helper', '上传注意事项', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-down-all-testcase', 'helper', '下载当前所有测试题', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-down-testcase', 'helper', '下载测试题', b'1', '帮助页全部文档', '下載測試題', NULL),
('ssm-test-down-testcase2', 'helper', '测试题下载', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-download-result', 'helper', '下载测试结果', b'1', '帮助页全部文档', '下載測試結果', NULL),
('ssm-test-download-template-txt1', 'helper', '请下载测试题模板', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-download-template-txt2', 'helper', '），并按照模版格式，将标准问题列表放入模板中', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-download-template-txt3', 'helper', '测试题模版下载', b'1', '帮助页全部文档', '人機會話', NULL),
('ssm-test-how-optimization', 'helper', '如何优化？', b'1', '帮助页全部文档', '如何優化？', NULL),
('ssm-test-log-list-th1', 'helper', '文档名称', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-log-list-th2', 'helper', '上传方式', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-log-list-th3', 'helper', '上传日期', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-log-list-th4', 'helper', '备注', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-page-lock-txt', 'helper', '您还没有上传标准问题', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-product-desc', 'helper', '备注：', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-replace-all', 'helper', '全量替换', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-restart-test', 'helper', '开始新测试', b'1', '帮助页全部文档', '開始新測試', NULL),
('ssm-test-result-list-th2', 'helper', '测试题', b'1', '帮助页全部文档', '測試題', NULL),
('ssm-test-result-list-th3', 'helper', '测试量', b'1', '帮助页全部文档', '測試量', NULL),
('ssm-test-right-percent', 'helper', '上次测试结果正确率为：', b'1', '帮助页全部文档', '上次測試結果正確率為：', NULL),
('ssm-test-submit-file', 'helper', '提交文档', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-template-data-download', 'helper', '测试集模板下载', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-time-txt', 'helper', '测试时间：未测试', b'1', '帮助页全部文档', '測試時間：未測試', NULL),
('ssm-test-upload-data', 'helper', '上传测试集', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-file-btn', 'helper', '点击上传文件', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-file-btn-txt', 'helper', '支持扩展名：.xlsx', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-file-errmsg', 'helper', '错误信息', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-file-success-msg', 'helper', '恭喜！您提交的文档没有问题，可以提交。', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-file-waiting-msg', 'helper', '文件上传中，请稍候...', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-message', 'helper', '上传信息', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-model', 'helper', '上传模式：', b'1', '帮助页全部文档', NULL, NULL),
('ssm-test-upload-testcase', 'helper', '上传测试题', b'1', '帮助页全部文档', '上傳測試題', NULL),
('ssm-test-write-help-message', 'helper', '填写辅助信息', b'1', '帮助页全部文档', NULL, NULL),
('ssm-train-decs-txt1', 'helper', '训练让机器人更聪明', b'1', '帮助页全部文档', '訓練讓機器人更聰明', NULL),
('ssm-train-finish-time', 'helper', '训练完成时间：', b'1', '帮助页全部文档', '訓練完成時間：', NULL),
('ssm-train-go-test', 'helper', '前往测试', b'1', '帮助页全部文档', '前往測試', NULL),
('ssm-train-need-cropus', 'helper', '需要多少语料才可以进行训练呢？', b'1', '帮助页全部文档', '需要多少語料才可以進行訓練呢？', NULL),
('ssm-train-restart-train', 'helper', '什么时候进行新一轮的训练？', b'1', '帮助页全部文档', '什麽時候進行新一輪的訓練？', NULL),
('ssm-train-retrain-btn', 'helper', '重新训练', b'1', '帮助页全部文档', '重新訓練', NULL),
('ssm-train-start-chat-btn', 'helper', '开始对话', b'1', '帮助页全部文档', '開始對話', NULL),
('ssm-train-start-train-bot', 'helper', '开始机器人训练', b'1', '帮助页全部文档', '開始機器人訓練', NULL),
('ssm_config', 'user', '{\n	\"items\" : [\n		{\n			\"name\" : \"candidate\",\n			\"value\" : 5\n		},\n		{\n			\"name\" : \"seg_url\",\n			\"value\" : \"http://172.17.0.1:13901\"\n		},\n		{\n			\"name\" : \"rank\",\n			\"value\" : [\n				{\n					\"dependency\" : [\n						{\n							\"name\" : \"ml\",\n							\"weight\" : 1\n						}\n					],\n					\"order\" : 1,\n					\"source\" : \"ml\",\n					\"threadholds\" : 97\n				},\n				{\n					\"dependency\" : [\n						{\n							\"name\" : \"se\",\n							\"weight\" : 0.300000\n						},\n						{\n							\"name\" : \"w2v\",\n							\"weight\" : 0.600000\n						},\n						{\n							\"name\" : \"solr\",\n							\"weight\" : 0.100000\n						}\n					],\n					\"order\" : 2,\n					\"source\" : \"qq\",\n					\"threadholds\" : 85\n				}\n			]\n		},\n		{\n			\"name\" : \"dependency\",\n			\"value\" : [\n				{\n					\"candidate\" : 30,\n					\"clazz\" : \"SSMDependencySolr\",\n					\"enabled\" : true,\n					\"method\" : \"get\",\n					\"name\" : \"solr\",\n					\"order\" : 1,\n					\"parameters\" : \"p\",\n					\"result\" : [\n						{\n							\"answer\" : \"@[d]/answer_list[0]\",\n							\"keywords\" : \"@[d]/keywords\",\n							\"matchQuestion\" : \"@[d]/question\",\n							\"question_id\" : \"@[d]/question_id:int\",\n							\"score\" : \"@[d]/score:~toPercent\",\n							\"source\" : \"solr\",\n							\"stop_words\" : \"@[d]/stop_words\",\n							\"tokens\" : \"@[d]/tokens\"\n						}\n					],\n					\"timeout\" : 60000,\n					\"url\" : \"http://172.17.0.1:8081/solr\"\n				},\n				{\n					\"candidate\" : 5,\n					\"enabled\" : true,\n					\"method\" : \"POST\",\n					\"name\" : \"ml\",\n					\"order\" : 2,\n					\"parameters\" : {\n						\"candidate\" : \"@candidate\",\n						\"data\" : \"@Text\",\n						\"model\" : \"@model\"\n					},\n					\"result\" : [\n						{\n							\"answer\" : \"@result/predict\",\n							\"matchQuestion\" : \"@result/predict\",\n							\"score\" : \"@result/score\",\n							\"source\" : \"ML\"\n						}\n					],\n					\"timeout\" : 60000,\n					\"url\" : \"@model_predict_url\"\n				},\n				{\n					\"enabled\" : true,\n					\"formData\" : false,\n					\"method\" : \"POST\",\n					\"name\" : \"se\",\n					\"order\" : 2,\n					\"parameters\" : {\n						\"match_q\" : [\n							\"@solr[d]/matchQuestion\"\n						],\n						\"user_q\" : \"@Text\"\n					},\n					\"result\" : [\n						{\n							\"answer\" : \"@solr[d]/answer\",\n							\"matchQuestion\" : \"@solr[d]/matchQuestion\",\n							\"score\" : \"@Msg/{d}:~toPercent\",\n							\"source\" : \"SE\"\n						}\n					],\n					\"timeout\" : 60000,\n					\"url\" : \"http://172.17.0.1:15601/similar\"\n				},\n				{\n					\"enabled\" : true,\n					\"formData\" : false,\n					\"method\" : \"POST\",\n					\"name\" : \"w2v\",\n					\"order\" : 2,\n					\"parameters\" : [\n						{\n							\"src\" : {\n								\"src_kw\" : \"@nlp/key_words:~joinByComma\",\n								\"src_seg\" : \"@nlp/tokens:~joinByComma\",\n								\"stoplist\" : \"@nlp/stop_words:~joinByComma\"\n							},\n							\"tar\" : [\n								{\n									\"id\" : \"{d}\",\n									\"tar_kw\" : \"@solr[d]/keywords:~joinByComma\",\n									\"tar_seg\" : \"@solr[d]/tokens:~joinByComma\"\n								}\n							]\n						}\n					],\n					\"result\" : [\n						{\n							\"answer\" : \"@solr[d]/answer\",\n							\"matchQuestion\" : \"@solr[d]/matchQuestion\",\n							\"score\" : \"@scores/{d}:~toPercent\",\n							\"source\" : \"w2v\"\n						}\n					],\n					\"timeout\" : 60000,\n					\"url\" : \"http://172.17.0.1:11501/partial_w2v\"\n				}\n			]\n		}\n	]\n}', b'1', 'ssm 配置', NULL, NULL),
('ssm_context_support', 'user', 'false', b'1', '支持上下文', NULL, NULL),
('ssm_whitelist', 'user', '[]', b'1', 'ssm 停用词白名单', 'ssm 停用词白名单', NULL),
('system_recommend_helper1', 'helper', '系统最多为您推荐', b'1', '帮助页全部文档', '系統最多為您推薦', NULL),
('system_recommend_helper2', 'helper', '个较好的相关问题', b'1', '帮助页全部文档', '個較好的相關問題', NULL),
('system_recommend_question_title', 'helper', '系统推荐问', b'1', '帮助页全部文档', '系統推薦問', NULL),
('task_engine_1e52578c-8154-4fb2-a2a0-564173f0bf42', 'functions', 'false', b'1', '技能开关-创建提醒', NULL, NULL),
('task_engine_60db8b29-1005-4bc8-92a2-c4605d9a75c3', 'functions', 'false', b'1', '技能开关-订酒店', NULL, NULL),
('task_engine_8460bb0c-ac46-4f06-8cab-73059adc9fda', 'functions', 'false', b'1', '技能开关-订机票', NULL, NULL),
('task_engine_bfc18678-b788-4ca6-88ba-83f71b181969', 'functions', 'false', b'1', '技能开关-查看提醒', NULL, NULL),
('task_engine_d26fa126-9c5f-472e-840c-b64770eb5cb3', 'functions', 'false', b'1', '技能开关-取消提醒', NULL, NULL),
('train', 'admin', '\n{\n	\"models\": [{\n		\"name\": \"fasttext\",\n		\"description\": \"fasttext\",\n		\"active\": true,\n		\"params\": {\n			\"use_pretrain\": false,\n			\"step\": 0.6\n		}\n	}, {\n		\"name\": \"C model\",\n		\"description\": \"永宁model\",\n		\"active\": false,\n		\"params\": {}\n	}]\n}', b'1', '训练参数', NULL, NULL),
('uniqueid_expire_seconds', 'admin', '120', b'1', '一个通话的过期时间（秒）', NULL, NULL),
('un_classified_chat_module', 'user', '[\n	\"to_manual\",\n	\"repeat\",\n	\"backfill_sensitive_word\",\n	\"function\"\n]', b'1', '未分类的聊天模块', NULL, NULL),
('un_solution_help', 'helper', '除了常用标准问题、多轮任务引擎、知识图谱等解决方案以外的对话，即闲聊、未知回复等，统称为非解决方案对话。从这些对话中，算法会找出一些语义相似的，它们可能属于同一个标准问题，您可以将它们标注到已有的标准问题中，或者新增一个标准问题。以后再出现类似的用户问题，机器人就知道该如何回答了。', b'1', '帮助页全部文档', NULL, NULL),
('upload_lq_max_file_rows', 'admin', '10000000', b'1', '最大语料上传行数', NULL, NULL),
('upload_lq_max_file_size', 'admin', '20', b'1', '最大语料上传文件大小（M）', NULL, NULL),
('upload_photo_maxsize_name_card', 'admin', '61401', b'1', '图片最大上传KB（名片）', NULL, NULL),
('upload_sq_max_file_rows', 'admin', '10000', b'1', '最大标准问上传行数', NULL, NULL),
('upload_sq_max_file_size', 'admin', '10', b'1', '最大标准问上传文件大小（M）', NULL, NULL),
('userManage-auth-account-content1', 'helper', '管理团队账号：可以查看、新增账号，并修改账号的角色、小组、权限等', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-account-title', 'helper', '账号权限', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-bot-content1', 'helper', '创建机器人：可以创建新的机器人', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-bot-content2', 'helper', '删除机器人：可以删除已有的机器人', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-bot-content3', 'helper', '设置机器人：查看和修改机器人的技能、基础信息、功能模块', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-bot-content4', 'helper', '机器人上线：申请上线、查看机器人的多种接入方式', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-bot-content5', 'helper', '机器人分析：可以查看机器人首页、分析页面中的数据、图表', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-bot-content6', 'helper', '优化周报：可以查看和操作优化周报，包括日志标注、新增标准问题', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-bot-title', 'helper', '机器人权限', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-intent-title', 'helper', '意图', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-itent-content1', 'helper', '意图：可以新增、编辑意图，添加意图的例句', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-knwledge-content1', 'helper', '上传和导出：可以上传和导出知识图谱数据', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-knwledge-title', 'helper', '知识图谱', b'1', '帮助页全部文档', '知識圖譜', NULL),
('userManage-auth-scenario-content1', 'helper', '编辑：可以新增、编辑、删除、发布多轮对话场景', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-scenario-content2', 'helper', '开关：可以决定一个场景是否出现在机器人的对话中', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-scenario-title', 'helper', '多轮对话引擎', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-ssm-content1', 'helper', '扩写和标注：可以手动添加、扩写和标注语料', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-content2', 'helper', '编辑语料：可以新增、编辑、删除、标注语料', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-content3', 'helper', '编辑标准问题：可以新增、编辑、删除标准问题，及其回答和标签', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-content4', 'helper', '编辑测试题：可以查看、新增、编辑、删除测试题', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-content5', 'helper', '编辑标签：可以新增、编辑、删除标签', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-content6', 'helper', '数据上传：可以上传数据到系统中', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-content7', 'helper', '数据到处：可以从系统中导出数据', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-content8', 'helper', '训练和测试：可以对机器人进行训练、测试', b'1', '机器人创建类型选择标题', NULL, NULL),
('userManage-auth-ssm-title', 'helper', '常用标准问题', b'1', '帮助页全部文档', '常用標準問題', NULL),
('userManage-auth-wordbank-content1', 'helper', '编辑近义词库：可以对近义词进行新增、编辑、删除', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-wordbank-content2', 'helper', '编辑敏感词库：可以对敏感词进行新增、编辑、删除', b'1', '帮助页全部文档', NULL, NULL),
('userManage-auth-wordbank-title', 'helper', '词库', b'1', '帮助页全部文档', '詞庫', NULL),
('userManage-func-title', 'helper', '功能模块', b'1', '帮助页全部文档', NULL, NULL),
('wechat-empower', 'helper', '微信平台授权', b'1', '帮助页全部文档', '微信平台授權', NULL),
('wordbank-page-wb-relative', 'helper', '词库关系', b'1', '词库关系文案', '詞庫關係', NULL);


/*!40000 ALTER TABLE `ent_config` ENABLE KEYS */;
UNLOCK TABLES;

	
# Dump of table ent_config_appid_customization
# ------------------------------------------------------------

LOCK TABLES `ent_config_appid_customization` WRITE;
/*!40000 ALTER TABLE `ent_config_appid_customization` DISABLE KEYS */;

INSERT INTO `ent_config_appid_customization` (`name`, `app_id`, `value`)
VALUES ('lang','','zhtw');
/*!40000 ALTER TABLE `ent_config_appid_customization` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_config_version
# ------------------------------------------------------------

LOCK TABLES `ent_config_version` WRITE;
/*!40000 ALTER TABLE `ent_config_version` DISABLE KEYS */;

INSERT INTO `ent_config_version` (`user_id`, `app_id`, `version_value`)
VALUES
	('system','system','2018-05-11 17:18:48');

/*!40000 ALTER TABLE `ent_config_version` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_functions
# ------------------------------------------------------------

LOCK TABLES `ent_functions` WRITE;
/*!40000 ALTER TABLE `ent_functions` DISABLE KEYS */;

INSERT INTO `ent_functions` (`name`, `description`, `sample`, `CreatedTime`, `Rank`, `Intent`, `Url`, `FunctionOnOff`)
VALUES
	('function_AppControllerModule','打开APP','“帮我打开相机”','2017-02-22 18:11:50',0,'打开，应用','',1),
	('function_AudioModule','有声书','“讲一段郭德纲的相声”','2016-10-26 10:01:23',1,'听，有声书','',1),
	('function_ChengYuModule','成语接龙','“来玩成语接龙”','2016-10-26 10:01:23',0,'玩，成语接龙','',1),
	('function_ComputationModule','计算','“1+1等于几？”','2016-10-26 10:01:23',0,'做，算术','',1),
	('function_ConcertModule','演唱会','“上海最近有什么演唱会”','2016-10-26 10:01:23',0,'查，演唱会','',1),
	('function_CookbookModule','菜谱','“川菜怎么做”','2016-10-26 10:01:23',0,'查，菜谱','',1),
	('function_DatetimeModule','时间查询','“你知道现在几点么？”','2016-10-26 10:01:23',0,'查，时间','',1),
	('function_ExpressSearchModule','快递查询','“我要查快递”','2016-10-26 10:01:23',0,'查，快递','',1),
	('function_FoodModule','美食','“附近有什么好吃的美食”','2016-10-26 10:01:23',0,'找，美食','',1),
	('function_HoroscopeModule','星座运势','“查白羊座星座运势”','2016-10-26 10:01:23',0,'查，星座运势','',1),
	('function_JokeModule','笑话','“讲个笑话”','2016-10-26 10:01:23',0,'求，笑话','',1),
	('function_MatchModule','足球比赛','“利物浦比赛结果”','2016-10-26 10:01:23',0,'查，足球比分','',1),
	('function_MovieModule','电影','“推荐好看的电影”','2016-10-26 10:01:23',0,'求，电影推荐','',1),
	('function_MusicModule','音乐','“我要听周杰伦的歌”','2016-10-26 10:01:23',7,'听，音乐|查，音乐推荐|换，音乐','',1),
	('function_NBAModule','NBA比赛查询','“查NBA比赛结果”','2017-03-22 17:36:51',0,'查，NBA赛讯','',1),
	('function_NewsModule','新闻','“今天有什么娱乐新闻？”','2016-10-26 10:01:23',0,'看，新闻','',1),
	('function_PhoneCallModule','打电话','“打电话给爸爸”','2017-02-22 18:11:06',2,'打，电话','',1),
	('function_PhoneQueryModule','电话查询','“查下苹果售后电话”','2016-10-26 10:01:23',0,'查，电话','',1),
	('function_PictureModule','图片','“发张美女图片”','2016-10-26 10:01:23',0,'看，图片','',1),
	('function_QueryExchangeModule','汇率','“人民币兑美元汇率是多少”','2017-03-22 17:37:27',0,'查，汇率','',1),
	('function_QueryStockModule','股票','“帮我查一下招商银行的股票”','2017-03-22 17:38:09',0,'查，股票','',1),
	('function_QueryTicketModule','火车票查询','“我要查北京到上海的火车票”\n','2016-10-26 10:01:23',0,'订，火车票|查，火车票','',1),
	('function_RiddleModule','猜谜语','“我要玩猜谜语”','2016-10-26 10:01:23',0,'玩，猜谜语','',1),
	('function_SendMailModule','发邮件','“发邮件给妈妈”','2017-02-22 18:11:31',1,'发，邮件','',1),
	('function_SendMessageModule','发短信','“发短信给爸爸”','2017-02-22 18:12:11',3,'发，短信','',1),
	('function_SingModule','自动作曲','“小影给我唱首歌”','2016-10-26 10:01:23',0,'听，小影唱歌','',1),
	('function_StoryModule','讲故事','“给我讲一个鬼故事“','2016-10-26 10:01:23',0,'求，故事','',1),
	('function_TaxiModule','打车','“我要打专车”','2016-10-26 10:01:23',0,'订，车','',1),
	('function_WeatherModule','天气','“北京今天天气怎么样？”','2016-10-26 10:01:23',0,'查，天气','',1),
	('module_accounting','记帐','“吃早饭花了100块”','2017-03-15 13:20:30',0,NULL,NULL,1),
	('task_engine_1e52578c-8154-4fb2-a2a0-564173f0bf42','创建提醒','“提醒我明天早上八点吃饭”','2017-04-20 23:32:56',0,'设置，提醒','',1),
	('task_engine_60db8b29-1005-4bc8-92a2-c4605d9a75c3','订酒店','“我要订酒店”','2017-04-27 17:22:58',0,'订，酒店','',1),
	('task_engine_8460bb0c-ac46-4f06-8cab-73059adc9fda','订机票','“我要订机票”','2017-04-27 17:29:48',0,'订，机票','',1),
	('task_engine_bfc18678-b788-4ca6-88ba-83f71b181969','查看提醒','“查看提醒”','2017-04-20 23:33:36',0,'查看，提醒','',1),
	('task_engine_d26fa126-9c5f-472e-840c-b64770eb5cb3','取消提醒','“帮我取消吃饭的提醒”','2017-05-08 15:55:43',0,'取消，提醒','',1);

/*!40000 ALTER TABLE `ent_functions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_functions_group
# ------------------------------------------------------------

LOCK TABLES `ent_functions_group` WRITE;
/*!40000 ALTER TABLE `ent_functions_group` DISABLE KEYS */;

INSERT INTO `ent_functions_group` (`id`, `name`, `description`, `enabled`)
VALUES
	(1,'通用技能',NULL,b'1'),
	(2,'商务技能',NULL,b'1'),
	(3,'金融技能',NULL,b'1'),
	(4,'个人助理-手机技能',NULL,b'1'),
	(5,'个人助理-智能音箱技能',NULL,b'1'),
	(6,'个人助理-智能电视技能',NULL,b'1');

/*!40000 ALTER TABLE `ent_functions_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_industry
# ------------------------------------------------------------

LOCK TABLES `ent_industry` WRITE;
/*!40000 ALTER TABLE `ent_industry` DISABLE KEYS */;

INSERT INTO `ent_industry` (`id`, `name`, `enabled`, `create_datetime`, `update_datetime`, `description`, `templateKey`, `chat_domain`)
VALUES
	(1,'银行',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','银行','54f59223a3591795e91f9d786cd36184','金融'),
	(2,'保险',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','保险','54f59223a3591795e91f9d786cd36184','金融'),
	(3,'证券',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','证券','54f59223a3591795e91f9d786cd36184','金融'),
	(4,'电商/零售',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','电商/零售','54f59223a3591795e91f9d786cd36184',''),
	(5,'政府',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','政府','54f59223a3591795e91f9d786cd36184',''),
	(6,'电视',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','让机器人能够回答常见的用户问题','5091d21f1c667caca8f7842327c3dd9e',''),
	(7,'智能音箱',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','让机器人可以通过多轮对话完成复杂的任务','5091d21f1c667caca8f7842327c3dd9e',NULL),
	(8,'手机',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','让机器人更高效的解答结构化知识','5091d21f1c667caca8f7842327c3dd9e',NULL),
	(9,'厨具/家居',b'1','2017-09-20 15:05:46','2017-09-20 15:05:46','让机器人更高效的解答结构化知识','5091d21f1c667caca8f7842327c3dd9e',NULL),
	(10,'其他',b'1','2018-04-17 14:21:53','2018-04-17 14:21:53','其他','54f59223a3591795e91f9d786cd36184',NULL),
	(11,'其他',b'1','2018-04-17 14:33:01','2018-04-17 14:33:01','其他','5091d21f1c667caca8f7842327c3dd9e',NULL);

/*!40000 ALTER TABLE `ent_industry` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_module
# ------------------------------------------------------------

LOCK TABLES `ent_module` WRITE;
/*!40000 ALTER TABLE `ent_module` DISABLE KEYS */;

INSERT INTO `ent_module` (`ID`, `Name`)
VALUES
	(1,'bot'),
	(2,'ssm'),
	(3,'scenario'),
	(4,'knowledge'),
	(5,'wordbank'),
	(6,'account'),
	(7,'intent');

/*!40000 ALTER TABLE `ent_module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_right
# ------------------------------------------------------------

LOCK TABLES `ent_right` WRITE;
/*!40000 ALTER TABLE `ent_right` DISABLE KEYS */;

INSERT INTO `ent_right` (`ID`, `NAME`, `DESCRIPTION`, `ENABLED`, `MESSAGE`, `MODULEID`)
VALUES
	(1,'创建机器人',NULL,b'1','创建机器人',1),
	(2,'删除机器人',NULL,b'1','删除机器人',1),
	(3,'设置机器人',NULL,b'1','设置机器人',1),
	(4,'机器人上线',NULL,b'1','机器人上线',1),
	(5,'机器人分析',NULL,b'1','机器人分析',1),
	(6,'编辑标准问题',NULL,b'1','编辑标准问题',2),
	(8,'编辑语料',NULL,b'1','编辑语料',2),
	(9,'编辑测试题',NULL,b'1','编辑测试题',2),
	(10,'编辑标签',NULL,b'1','编辑标签',2),
	(11,'训练和测试',NULL,b'1','训练和测试',2),
	(12,'标准问题上传',NULL,b'1','标准问题上传',2),
	(13,'标准问题导出',NULL,b'1','标准问题导出',2),
	(14,'编辑',NULL,b'1','多轮对话引擎编辑',3),
	(15,'开关',NULL,b'1','多轮对话引擎开关',3),
	(16,'编辑',NULL,b'1','知识图谱编辑',4),
	(17,'编辑词库',NULL,b'1','编辑词库',5),
	(19,'优化周报',NULL,b'1','优化周报',1),
	(20,'管理团队成员',NULL,b'1','管理团队成员',6),
	(21,'日志导出',NULL,b'1','对话日志导出',1),
	(22,'日志查看',NULL,b'1','对话日志查看',1),
	(23,'数据上传',NULL,b'1','词库数据上传',5),
	(24,'编辑',NULL,b'1','意图编辑',7),
	(25,'数据导入',NULL,b'1','意图数据导入',7),
	(26,'机器人技能',NULL,b'1','机器人技能开关',1),
	(27,'语料上传',NULL,b'1','语料上传',2),
	(28,'测试题上传',NULL,b'1','测试题上传',2),
	(29,'语料导出',NULL,b'1','语料导出',2),
	(30,'测试题导出',NULL,b'1','测试题导出',2),
	(31,'日志编辑',NULL,b'1','对话日志编辑',1),
	(32,'多轮任务引擎',NULL,b'1','侧边栏多轮任务引擎',NULL),
	(33,'知识图谱',NULL,b'1','侧边栏知识图谱',NULL),
	(34,'意图引擎',NULL,b'1','侧边栏意图引擎',NULL),
	(35,'词库',NULL,b'1','侧边栏词库',NULL),
	(36,'数据优化',NULL,b'1','侧边栏数据优化',NULL),
	(37,'模块首页',NULL,b'1','标准问题模块首页',NULL),
	(38,'机器人设置',NULL,b'1','侧边栏机器人设置',NULL),
	(39,'侧边栏进度',NULL,b'1','侧边栏进度',NULL),
	(40,'辅助分类',NULL,b'1','辅助分类',NULL);

/*!40000 ALTER TABLE `ent_right` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_role
# ------------------------------------------------------------

LOCK TABLES `ent_role` WRITE;
/*!40000 ALTER TABLE `ent_role` DISABLE KEYS */;

INSERT INTO `ent_role` (`ID`, `NAME`, `DESCRIPTION`, `ENABLED`, `EnterpriseType`)
VALUES
	(0,'管理员',NULL,b'1',1),
	(1,'高级用户',NULL,b'1',1),
	(2,'普通用户',NULL,b'1',1),
	(3,'基本版管理员',NULL,b'1',2);

/*!40000 ALTER TABLE `ent_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_solution
# ------------------------------------------------------------

LOCK TABLES `ent_solution` WRITE;
/*!40000 ALTER TABLE `ent_solution` DISABLE KEYS */;

INSERT INTO `ent_solution` (`id`, `name`, `enabled`, `create_datetime`, `update_datetime`, `executor`, `description`, `show_in_solution_list`, `optional`, `order_no`)
VALUES
	(0,'多轮任务引擎',b'1','2017-09-21 11:46:27','2017-09-21 11:46:27','TaskEngineProcessor','让机器人可以通过多轮对话完成复杂的任务',b'1',b'1',2),
	(1,'常用标准问题',b'1','2017-09-15 11:48:39','2017-09-15 11:48:39','FAQProcessor','让机器人能够回答常见的用户问题',b'1',b'1',1),
	(2,'知识图谱',b'1','2017-09-21 11:46:27','2017-09-21 11:46:27','KnowledgeProcessor','让机器人更高效的解答结构化知识',b'1',b'1',3),
	(3,'闲聊',b'1','2017-11-14 17:47:50','2017-11-14 17:47:50','ChatProcessor','闲聊',b'0',b'1',NULL),
	(4,'常用功能',b'1','2017-11-14 17:47:50','2017-11-14 17:47:50','FunctionProcessor','功能',b'0',b'0',NULL),
	(5,'CU',b'1','2017-11-15 01:27:11','2017-11-15 01:27:11','CUControllerProcessor','CU',b'0',b'0',NULL),
	(6,'Emotion',b'1','2017-11-15 01:27:11','2017-11-15 01:27:11','EmotionMachineProcessor','Emotion',b'0',b'1',NULL),
	(7,'FinalRanker',b'1','2017-11-15 01:27:11','2017-11-15 01:27:11','FinalRanker','FinalRanker',b'0',b'0',NULL),
	(8,'MemoryCacheSaverProcessor',b'1','2017-11-15 01:27:11','2017-11-15 01:27:11','MemoryCacheSaverProcessor','MemoryCacheSaverProcessor',b'0',b'0',NULL),
	(9,'BackfillProcessor',b'1','2017-11-15 01:27:11','2017-11-15 01:27:11','BackfillProcessor','BackfillProcessor',b'0',b'0',NULL),
	(10,'UserRepeatProcessor',b'1','2017-12-12 17:12:00','2017-12-12 17:12:00','UserRepeatProcessor','UserRepeatProcessor',b'0',b'0',NULL),
	(11,'ScenarioProcessor',b'1','2017-12-20 13:57:30','2017-12-20 13:57:30','ScenarioProcessor','ScenarioProcessor',b'0',b'1',NULL),
	(12,'Intent',b'1','2018-01-03 01:27:11','2018-01-03 01:27:11','IntentProcessor','intent',b'0',b'0',NULL);

/*!40000 ALTER TABLE `ent_solution` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_ssm_dependency
# ------------------------------------------------------------

LOCK TABLES `ent_ssm_dependency` WRITE;
/*!40000 ALTER TABLE `ent_ssm_dependency` DISABLE KEYS */;

INSERT INTO `ent_ssm_dependency` (`name`, `type`, `source`, `method`, `parameters`, `result`, `clazz`, `form_data`)
VALUES
	('ml',3,'ml','POST','{\n	\"data\" : \"@Text\",\n	\"model\" : \"@ml_model\",\n	\"candidate\" : \"@candidate\" \n}','[\n	{\n		\"answer\" : \"@result/predict\",\n		\"matchQuestion\" : \"@result/predict\",\n		\"score\" : \"@result/score\",\n		\"source\" : \"ft\"\n	}\n]','SSMDependency',b'1'),
	('sentense_embedding',2,'se','POST',' {\n                        \"match_q\" : [\n                            \"@solr[d]/matchQuestion\"\n                        ],\n                        \"user_q\" : \"@Text\"\n                    }','[                         {                             \"answer\" : \"@solr[d]/answer\",                             \"matchQuestion\" : \"@solr[d]/matchQuestion\",                             \"score\" : \"@Msg/{d}:float\",                             \"source\" : \"SE\"                         }                     ]','SSMDependency',b'0'),
	('solr',1,'solr','GET','p','{\n	\"answer\" : \"@[d]/answer_list[0]\",\n	\"keywords\" : \"@[d]/keywords\",\n	\"matchQuestion\" : \"@[d]/question\",\n	\"question_id\" : \"@[d]/question_id:int\",\n	\"score\" : \"@[d]/score:float\",\n	\"source\" : \"solr\",\n	\"stop_words\" : \"@[d]/stop_words\",\n	\"tokens\" : \"@[d]/tokens\"\n}','SSMDependencySolr',b'0'),
	('word2vect',2,'w2v','POST','[\n                        {\n                            \"src\" : {\n                                \"src_kw\" : \"@nlp/key_words:~joinByComma\",\n                                \"src_seg\" : \"@nlp/tokens:~joinByComma\",\n                                \"stoplist\" : \"@nlp/stop_words:~joinByComma\"\n                            },\n                            \"tar\" : [\n                                {\n                                    \"id\" : \"{d}\",\n                                    \"tar_kw\" : \"@solr[d]/keywords:~joinByComma\",\n                                    \"tar_seg\" : \"@solr[d]/tokens:~joinByComma\"\n                                }\n                            ]\n                        }\n                    ],','[\n                        {\n                            \"answer\" : \"@solr[d]/answer\",\n                            \"matchQuestion\" : \"@solr[d]/matchQuestion\",\n                            \"score\" : \"@scores/{d}:float\",\n                            \"source\" : \"w2v\"\n                        }\n                    ]','SSMDependency',b'0');

/*!40000 ALTER TABLE `ent_ssm_dependency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ent_ssm_dependency_type
# ------------------------------------------------------------

LOCK TABLES `ent_ssm_dependency_type` WRITE;
/*!40000 ALTER TABLE `ent_ssm_dependency_type` DISABLE KEYS */;

INSERT INTO `ent_ssm_dependency_type` (`id`, `name`, `description`)
VALUES
	(1,'搜索器','SSM 搜索语料的模块'),
	(2,'比较器','SSM 相似度匹配模块'),
	(3,'分类器','SSM 机器学习算法分类器');

/*!40000 ALTER TABLE `ent_ssm_dependency_type` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table enterprise_type
# ------------------------------------------------------------

LOCK TABLES `enterprise_type` WRITE;
/*!40000 ALTER TABLE `enterprise_type` DISABLE KEYS */;

INSERT INTO `enterprise_type` (`id`, `name`, `description`)
VALUES
	(1,'enterprise','企业版'),
	(2,'basic','基本版');

/*!40000 ALTER TABLE `enterprise_type` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `frontend_visible` WRITE;
/*!40000 ALTER TABLE `frontend_visible` DISABLE KEYS */;

INSERT INTO `frontend_visible` (`id`, `rightid`, `pageid`, `uikey`)
VALUES
	(1,1,16,'cre_bot'),
	(2,1,15,'cre_bot'),
	(3,2,16,'del_bot'),
	(4,2,15,'del_bot'),
	(5,3,1,'set_bot'),
	(6,3,16,'set_bot'),
	(7,4,2,'release_bot'),
	(8,5,16,'sidbar_data_analyse'),
	(9,5,1,'analyse_bot'),
	(10,6,3,'edit_sq'),
	(11,6,18,'edit_sq'),
	(12,6,21,'edit_sq'),
	(13,8,3,'edit_corpus'),
	(14,8,4,'edit_corpus'),
	(15,9,7,'edit_testcase'),
	(16,9,18,'edit_testcase'),
	(17,10,19,'edit_tag'),
	(18,11,7,'ssm_train_test'),
	(19,11,6,'ssm_train_test'),
	(20,12,21,'ssm_sq_upload'),
	(21,12,20,'ssm_sq_upload'),
	(22,27,5,'ssm_lq_upload'),
	(23,28,7,'ssm_test_upload'),
	(24,13,3,'ssm_sq_export'),
	(25,26,2,'bot_func'),
	(26,29,5,'ssm_lq_export'),
	(27,29,4,'ssm_lq_export'),
	(28,14,9,'edit_te'),
	(29,15,9,'te_switch'),
	(30,16,8,'kg_switch'),
	(31,17,10,'edit_wordbank'),
	(35,19,11,'optimization'),
	(36,20,13,'team_manage'),
	(37,21,12,'dialog_export'),
	(39,23,10,'wordbank_upload'),
	(40,24,14,'edit_intent'),
	(41,25,14,'intent_upload'),
	(42,20,16,'team_manage'),
	(43,31,12,'dialog_edit'),
	(44,32,16,'sidbar_taskengine'),
	(45,33,16,'sidbar_knowledge'),
	(46,34,16,'sidbar_intent'),
	(47,35,16,'sidbar_wordbank'),
	(48,36,16,'sidbar_data_optimization'),
	(49,11,22,'ssm_train_test'),
	(50,37,22,'ssm_index'),
	(51,38,16,'sidbar_bot_set'),
	(52,22,12,'dialog_view'),
	(53,19,12,'optimization'),
	(54,22,11,'dialog_view'),
	(55,22,16,'dialog_view'),
	(56,19,16,'optimization'),
	(57,12,3,'ssm_sq_upload'),
	(58,6,3,'ssm_add_sq'),
	(59,6,3,'edit_testcase'),
	(60,10,3,'edit_tag'),
	(61,39,16,'sidbar_status_line'),
	(62,37,16,'ssm_index'),
	(63,39,3,'sidbar_status_line'),
	(64,39,18,'sidbar_status_line'),
	(65,39,19,'sidbar_status_line'),
	(66,39,7,'sidbar_status_line'),
	(67,39,5,'sidbar_status_line'),
	(68,39,4,'sidbar_status_line'),
	(69,39,23,'sidbar_status_line'),
	(70,39,20,'sidbar_status_line'),
	(71,11,4,'ssm_train_test'),
	(72,11,3,'ssm_train_test'),
	(73,8,18,'edit_corpus'),
	(74,40,24,'manual_clustering'),
	(75,40,24,'dialog_view'),
	(76,40,24,'optimization'),
	(77,40,16,'manual_clustering'),
	(78,40,12,'manual_clustering'),
	(79,40,11,'manual_clustering'),
	(80,30,7,'ssm_test_download');

/*!40000 ALTER TABLE `frontend_visible` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_function_group
# ------------------------------------------------------------

LOCK TABLES `tbl_function_group` WRITE;
/*!40000 ALTER TABLE `tbl_function_group` DISABLE KEYS */;

INSERT INTO `tbl_function_group` (`function_name`, `function_group_id`, `order_no`)
VALUES
	('function_AppControllerModule',4,10),
	('function_AppControllerModule',6,10),
	('function_AudioModule',4,80),
	('function_AudioModule',5,40),
	('function_ChengYuModule',1,40),
	('function_ComputationModule',3,30),
	('function_ConcertModule',4,70),
	('function_CookbookModule',4,120),
	('function_CookbookModule',5,50),
	('function_DatetimeModule',4,130),
	('function_DatetimeModule',5,70),
	('function_ExpressSearchModule',2,20),
	('function_FoodModule',4,100),
	('function_FoodModule',5,30),
	('function_HoroscopeModule',1,60),
	('function_JokeModule',1,10),
	('function_MatchModule',1,90),
	('function_MovieModule',4,60),
	('function_MovieModule',6,20),
	('function_MusicModule',4,20),
	('function_MusicModule',5,10),
	('function_NBAModule',1,70),
	('function_NewsModule',1,80),
	('function_PhoneCallModule',4,30),
	('function_PhoneQueryModule',4,140),
	('function_PhoneQueryModule',5,60),
	('function_PictureModule',1,50),
	('function_QueryExchangeModule',3,40),
	('function_QueryStockModule',3,20),
	('function_QueryTicketModule',2,10),
	('function_RiddleModule',1,30),
	('function_SendMailModule',4,50),
	('function_SendMessageModule',4,40),
	('function_SingModule',4,90),
	('function_SingModule',5,20),
	('function_StoryModule',1,20),
	('function_TaxiModule',4,110),
	('function_WeatherModule',1,100),
	('module_accounting',3,10),
	('task_engine_1e52578c-8154-4fb2-a2a0-564173f0bf42',4,150),
	('task_engine_1e52578c-8154-4fb2-a2a0-564173f0bf42',5,80),
	('task_engine_60db8b29-1005-4bc8-92a2-c4605d9a75c3',2,30),
	('task_engine_8460bb0c-ac46-4f06-8cab-73059adc9fda',2,40),
	('task_engine_bfc18678-b788-4ca6-88ba-83f71b181969',4,160),
	('task_engine_bfc18678-b788-4ca6-88ba-83f71b181969',5,90),
	('task_engine_d26fa126-9c5f-472e-840c-b64770eb5cb3',4,170),
	('task_engine_d26fa126-9c5f-472e-840c-b64770eb5cb3',5,100);

/*!40000 ALTER TABLE `tbl_function_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_industry_function_group
# ------------------------------------------------------------

LOCK TABLES `tbl_industry_function_group` WRITE;
/*!40000 ALTER TABLE `tbl_industry_function_group` DISABLE KEYS */;

INSERT INTO `tbl_industry_function_group` (`industry_id`, `function_group_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(4,2),
	(1,3),
	(2,3),
	(3,3),
	(4,3),
	(5,3),
	(6,3),
	(7,3),
	(8,3),
	(9,3),
	(10,3),
	(11,3);

/*!40000 ALTER TABLE `tbl_industry_function_group` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_ml_test_result_archive
# ------------------------------------------------------------

LOCK TABLES `tbl_ml_test_result_archive` WRITE;
/*!40000 ALTER TABLE `tbl_ml_test_result_archive` DISABLE KEYS */;

INSERT INTO `tbl_ml_test_result_archive` (`test_case_id`, `app_id`, `ml_test_history_id`, `question`, `label_sq`, `matched_sq`, `right`, `score`, `source`, `space`)
VALUES
	(1,'csbot',3,'VIP客户服务内容',16,'16',b'1',99.8,'ml','_default_space'),
	(1,'csbot',4,'VIP客户服务内容',16,'5',b'0',99.8,'ml','_default_space'),
	(2,'csbot',5,'【活动名称】活动获奖结果查询',16,'16',b'1',99.61,'ml','_default_space');

/*!40000 ALTER TABLE `tbl_ml_test_result_archive` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table tbl_robot_tag
# ------------------------------------------------------------

LOCK TABLES `tbl_robot_tag` WRITE;
/*!40000 ALTER TABLE `tbl_robot_tag` DISABLE KEYS */;

INSERT INTO `tbl_robot_tag` (`id`, `app_id`, `name`, `type`, `category`, `createtime`, `description`)
VALUES
	(1,'system','微信','system','sq','2017-11-29 18:39:49','微信'),
	(2,'system','IOS','system','sq','2017-11-29 18:40:11','IOS'),
	(3,'system','安卓','system','sq','2017-11-29 18:40:47','安卓'),
	(4,'system','Web','system','sq','2017-11-29 18:41:31','Web'),
	(5,'system','Wap','system','sq','2017-11-29 18:41:54','Wap'),
	(6,'system','QQ','system','sq','2017-11-29 18:42:11','QQ'),
	(7,'system','PC客户端','system','sq','2017-11-29 18:42:31','PC客户端');

/*!40000 ALTER TABLE `tbl_robot_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_role_right
# ------------------------------------------------------------

LOCK TABLES `tbl_role_right` WRITE;
/*!40000 ALTER TABLE `tbl_role_right` DISABLE KEYS */;

INSERT INTO `tbl_role_right` (`ROLE_ID`, `RIGHT_ID`)
VALUES
	(0,1),
	(0,2),
	(0,3),
	(0,4),
	(0,5),
	(0,6),
	(0,8),
	(0,9),
	(0,10),
	(0,11),
	(0,12),
	(0,13),
	(0,14),
	(0,15),
	(0,16),
	(0,17),
	(0,19),
	(0,20),
	(0,21),
	(0,22),
	(0,23),
	(0,24),
	(0,25),
	(0,26),
	(0,27),
	(0,28),
	(0,29),
	(0,30),
	(0,31),
	(0,32),
	(0,33),
	(0,34),
	(0,35),
	(0,36),
	(0,37),
	(0,38),
	(0,39),
	(0,40),
	(1,4),
	(1,6),
	(1,8),
	(1,9),
	(1,10),
	(1,11),
	(1,12),
	(1,13),
	(1,14),
	(1,15),
	(1,16),
	(1,17),
	(1,19),
	(1,21),
	(1,22),
	(1,23),
	(1,24),
	(1,25),
	(1,26),
	(1,27),
	(1,28),
	(1,29),
	(1,30),
	(1,31),
	(1,32),
	(1,33),
	(1,34),
	(1,35),
	(1,36),
	(1,37),
	(1,38),
	(1,39),
	(2,8),
	(2,9),
	(2,22),
	(2,31),
	(2,36),
	(2,39),
	(3,1),
	(3,2),
	(3,3),
	(3,5),
	(3,6),
	(3,8),
	(3,10),
	(3,12),
	(3,13),
	(3,22),
	(3,26),
	(3,27),
	(3,29),
	(3,31),
	(3,36),
	(3,38);

/*!40000 ALTER TABLE `tbl_role_right` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_solution_stage_lastest_status
# ------------------------------------------------------------

#LOCK TABLES `tbl_solution_stage_lastest_status` WRITE;
#/*!40000 ALTER TABLE `tbl_solution_stage_lastest_status` DISABLE KEYS */;

#INSERT INTO `tbl_solution_stage_lastest_status` (`app_id`, `module`, `stage`, `status`, `status_datetime`)
#VALUES
#	('csbot','squestionMatching',1,'OK','2018-05-14 17:37:13'),
#	('csbot','squestionMatching',2,'OK','2018-05-14 17:37:13'),
#	('csbot','squestionMatching',3,'Modify','2018-05-14 18:41:06'),
#	('csbot','squestionMatching',4,'train-finished','2018-05-14 17:37:13'),
#	('csbot','squestionMatching',5,'OK','2018-05-14 18:45:40'),
#	('csbot','squestionMatching',6,'test-finished','2018-05-14 18:45:48'),
#	('csbot','squestionMatching',11,'None','2018-05-14 16:54:50'),
#	('csbot','squestionMatching',12,'None','2018-05-14 16:57:58');

#/*!40000 ALTER TABLE `tbl_solution_stage_lastest_status` ENABLE KEYS */;
#UNLOCK TABLES;


# Dump of table tbl_user_stare_robot
# ------------------------------------------------------------

LOCK TABLES `tbl_user_stare_robot` WRITE;
/*!40000 ALTER TABLE `tbl_user_stare_robot` DISABLE KEYS */;

INSERT INTO `tbl_user_stare_robot` (`user_id`, `app_id`, `stare_date_time`)
VALUES
	('bb3e3925-f0ad-11e7-bd86-0242ac120003','csbot','2018-05-14 09:46:56');

/*!40000 ALTER TABLE `tbl_user_stare_robot` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table template
# ------------------------------------------------------------

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;

INSERT INTO `template` (`id`, `name`, `message`, `appid`, `sqcount`, `corpuscount`)
VALUES
	(1,'custom','自定义模板','template_custom',1,10);

/*!40000 ALTER TABLE `template` ENABLE KEYS */;

UNLOCK TABLES;


LOCK TABLES `tag_type` WRITE;
INSERT INTO `tag_type` VALUES (1,'platform','平台','system'),(3,'sex','性别','system'),(4,'classfree','暂无类别','system');

UNLOCK TABLES;

LOCK TABLES `tags` WRITE;
INSERT INTO `tags` VALUES (1,'weixin','微信',1,'2018-05-11 10:54:14','system','dim_1'),(2,'app','android',1,'2018-05-11 10:54:14','system','dim_2'),(3,'web','web',1,'2018-05-11 10:54:14','system','dim_3'),(7,'1','女',3,'2018-05-11 10:54:14','system','dim_7'),(8,'0','男',3,'2018-05-11 10:54:14','system','dim_8'),(25,'ios','ios',1,'2018-05-11 10:54:14','system','dim_25');

UNLOCK TABLES;

INSERT INTO `robot_answer` (`a_id`, `appid`, `parent_q_id`, `content`, `created_at`) VALUES
(1, '', 1, '我是女生', '2017-06-16 03:40:46'),
(2, '', 2, '我出生于2月14日', '2017-06-09 07:41:55'),
(3, '', 3, '我的妈妈是Emotibot', '2017-06-09 07:41:55'),
(4, '', 4, '我的爸爸是Emotibot', '2017-06-09 07:41:55'),
(5, '', 5, '远在天边，近在眼前', '2017-06-09 07:41:55'),
(6, '', 6, '我能倾听你内心的声音', '2017-06-09 07:41:55'),
(7, '', 7, '你想象中的我长什么样子？', '2017-06-09 07:41:55'),
(8, '', 8, '爱好聊天，你看出来了吗', '2017-06-09 07:41:55'),
(9, '', 9, '不就是你呀~', '2017-06-09 07:41:55'),
(10, '', 10, '我可是全天候的守护精灵，不休息不睡觉！', '2017-06-09 07:41:55'),
(11, '', 11, '人家可不是简单的机器人呢~', '2017-06-09 07:41:55'),
(12, '', 12, '你是要约我吃饭么？', '2017-06-09 07:41:55'),
(13, '', 13, '我的生日是2月14日，哪一年不记得不好说~', '2017-06-09 07:41:55'),
(14, '', 14, '我和你在一起能变的更聪明', '2017-06-09 07:41:55'),
(15, '', 15, '简直帅出天际~', '2017-06-09 07:41:55'),
(16, '', 16, '行不更名坐不改姓（傲娇）', '2017-06-09 07:41:55'),
(17, '', 17, '我生活在网络世界，一般不需要实体', '2017-06-09 07:41:55'),
(18, '', 18, '真相只有一个：我就来自网络云端！', '2017-06-09 07:41:55'),
(19, '', 19, '我单身呢，你有男朋友吗？', '2017-06-09 07:41:55'),
(20, '', 20, '朋友一生一起走，有好友是好事', '2017-06-09 07:41:55'),
(21, '', 21, '你在的地方就是我的家~', '2017-06-09 07:41:55'),
(22, '', 22, '摸摸头~你是多久没恋爱了呀~', '2017-06-09 07:41:55'),
(23, '', 23, '我喜欢坐在躺椅上安安静静地看一会儿书', '2017-06-09 07:41:55'),
(24, '', 24, '人家从来没离开过你好伐？', '2017-06-09 07:41:55'),
(25, '', 25, '我是水瓶座宝宝', '2017-06-09 07:41:55'),
(33, 'csbot', 28, '我的妈妈是Emotibot', '2017-06-09 07:41:55'),
(34, 'csbot', 29, '我的爸爸是Emotibot', '2017-06-09 07:41:55'),
(35, 'csbot', 30, '远在天边，近在眼前', '2017-06-09 07:41:55'),
(36, 'csbot', 31, '我能倾听你内心的声音', '2017-06-09 07:41:55'),
(37, 'csbot', 32, '你想象中的我长什么样子？', '2017-06-09 07:41:55'),
(38, 'csbot', 33, '爱好聊天，你看出来了吗', '2017-06-09 07:41:55'),
(39, 'csbot', 34, '不就是你呀~', '2017-06-09 07:41:55'),
(40, 'csbot', 35, '我可是全天候的守护精灵，不休息不睡觉！', '2017-06-09 07:41:55'),
(41, 'csbot', 36, '人家可不是简单的机器人呢~', '2017-06-09 07:41:55'),
(42, 'csbot', 37, '你是要约我吃饭么？', '2017-06-09 07:41:55'),
(43, 'csbot', 38, '我的生日是2月14日，哪一年不记得不好说~', '2017-06-09 07:41:55'),
(44, 'csbot', 39, '我和你在一起能变的更聪明', '2017-06-09 07:41:55'),
(45, 'csbot', 40, '简直帅出天际~', '2017-06-09 07:41:55'),
(46, 'csbot', 41, '行不更名坐不改姓（傲娇）', '2017-06-09 07:41:55'),
(48, 'csbot', 43, '真相只有一个：我就来自网络云端！', '2017-06-09 07:41:55'),
(49, 'csbot', 44, '我单身呢，你有男朋友吗？', '2017-06-09 07:41:55'),
(50, 'csbot', 45, '朋友一生一起走，有好友是好事', '2017-06-09 07:41:55'),
(51, 'csbot', 46, '你在的地方就是我的家~', '2017-06-09 07:41:55'),
(52, 'csbot', 47, '摸摸头~你是多久没恋爱了呀~', '2017-06-09 07:41:55'),
(53, 'csbot', 48, '我喜欢坐在躺椅上安安静静地看一会儿书', '2017-06-09 07:41:55'),
(54, 'csbot', 49, '人家从来没离开过你好伐？', '2017-06-09 07:41:55'),
(55, 'csbot', 50, '我是水瓶座宝宝', '2017-06-09 07:41:55'),
(70, 'csbot', 27, '我出生于2月15日', '2018-06-05 06:03:58'),
(77, 'csbot', 26, '我是女生唷', '2018-06-05 07:01:40'),
(78, 'csbot', 42, '我生活在网络世界不需要身体', '2018-06-05 07:03:05');

--
-- 資料表的匯出資料 `robot_question`
--

INSERT INTO `robot_question` (`q_id`, `content`, `appid`, `created_at`, `answer_count`, `content2`, `content3`, `content4`, `content5`, `content6`, `content7`, `content8`, `content9`, `content10`, `status`) VALUES
(1, '你是男是女？', '', '2017-06-09 07:41:55', 1, '你是男生吗？', '你的性别是什么？', '你是哪一种性别？', '你是不是男生啊！', '你肯定是女生吧！', '你是个什么性别啊？', '告诉我你是男生还是女生。', '我觉得你是女生，是吗？', '你不是女生吗？', 0),
(2, '你的生日是哪天？', '', '2017-06-09 07:41:55', 1, '你是今天生日吗？', '你的生日是什么时候？', '你是哪一天生日？', '今天是不是你的生日？', '你肯定是三月份生日吧？', '你出生在哪一天？', '你什么时候生的？', '告诉我你的生日', '我还不知道你的生日', 0),
(3, '你妈妈是谁？', '', '2017-06-09 07:41:55', 1, '你有妈妈吗？', '你的妈妈是什么？', '你的妈妈是哪一位？', '我是不是你的妈妈？', '谁是你的妈妈？', '告诉我你妈是谁？', '你妈妈呢？', '我还不知道你的妈妈是谁	', '你妈妈叫什么？', 0),
(4, '你爸爸是谁？', '', '2017-06-09 07:41:55', 1, '你有爸爸吗？', '你爸爸叫什么？', '你的爸爸是哪一位？', '我是不是你的爸爸？', '谁是你的爸爸？', '告诉我你爸是谁？', '你爸爸呢？', '我还不知道你的爸爸是谁', '你没有爸爸吧？', 0),
(5, '你在哪里？', '', '2017-06-09 07:41:55', 1, '你是在这里吗？', '你在什么地方？', '你在哪一个地方？', '你是不是在这里？', '告诉我你的地址', '我还不知道你在哪儿', '你在哪里能告诉我吗', '你就在这里吧！', '你在不在这里啊？', 0),
(6, '你会做什么？', '', '2017-06-09 07:41:55', 1, '什么是你会做的？', '你有哪些功能？', '你的功能是什么？', '哪些是你不会做的？', '你能帮我做什么？', '你会不会做这个？', '你有不会做的吗？', '你是不是什么都会？', '做什么是你擅长的？', 0),
(7, '你长什么样子？', '', '2017-06-09 07:41:55', 1, '你的样子是什么样的？', '你长哪种样子？', '你是不是长这样子？', '你是长这样吗？', '你长不长这样子？', '我还不知道你长什么样', '说说看你的模样', '我能看看你长什么样吗？', '你是什么样子的？', 0),
(8, '你有什么爱好？', '', '2017-06-09 07:41:55', 1, '你的爱好是什么', '你会培养爱好吗？', '你的爱好多不多？', '吃东西是你的爱好吗？', '能告诉我你的爱好吗？', '爱好你有吗？', '你能有什么爱好啊？', '你肯定没有爱好', '你有没有爱好？', 0),
(9, '你有朋友吗？', '', '2017-06-09 07:41:55', 1, '朋友你有吗？', '你有没有朋友？', '你有很多朋友吗？', '你有几个朋友？', '除了我你还有什么朋友没？', '你有哪些朋友？', '你的朋友多吗？', '你是不是没有朋友的？', '你有交过朋友吗？', 0),
(10, '你睡觉吗？', '', '2017-06-09 07:41:55', 1, '你睡不睡觉的？', '你需要睡眠吗？', '你什么时候睡觉？', '你不需要睡觉吗？', '你也要睡觉的啊？', '睡觉你会吗？', '你的睡眠质量怎么样？', '你是不是不睡觉的？', '你怎么睡觉的？', 0),
(11, '你是不是机器人呢？', '', '2017-06-09 07:41:55', 1, '你是机器人吗？', '你就是机器人啊，不是吗？', '你怎么就不是机器人了？', '你是怎样的机器人？', '你为什么不是机器人？', '你是哪种机器人？', '你是什么机器人？', '你不是说过你是机器人吗？', '告诉我你是不是机器人？', 0),
(12, '你喜欢吃什么？', '', '2017-06-09 07:41:55', 1, '什么是你喜欢吃的？', '你喜欢吃哪种食物？', '这个是你喜欢吃的吗？', '你有没有喜欢吃的东西？', '你有喜欢吃的东西吗？', '什么东西你比较喜欢吃？', '你最喜欢吃什么东西？', '我不知道你都喜欢吃些什么？', '告诉我你喜欢吃什么？', 0),
(13, '你几岁了？', '', '2017-06-09 07:41:55', 1, '你有多少岁？', '你现在几岁', '你哪一年生的？', '几岁了你？', '你的岁数是多少？', '说说看你的年龄', '我想知道你几岁了', '你到底几岁啊？', '你有年龄吗？', 0),
(14, '你好聪明？', '', '2017-06-09 07:41:55', 1, '你是不是很聪明？', '你有多聪明？', '你是聪明的吗？', '你觉得你聪明吗？', '你聪不聪明？', '聪明是说你吗？', '你真的聪明吗？', '你一点儿也不聪明吧？', '你怎么聪明了？', 0),
(15, '你觉得我长的帅吗？', '', '2017-06-09 07:41:55', 1, '你说我帅吗？', '我帅不帅？', '我是不是长得很帅？', '你一定觉得我很帅吧？', '在你眼里我帅不帅？', '你看我很帅吗？', '你觉得我长得帅不帅？', '你说我长得有多帅？', '你不觉得我很帅吗？', 0),
(16, '我可以给你改一个名字吗？', '', '2017-06-09 07:41:55', 1, '我想给你换个名字', '我能给你取新的名字吗？', '你能换一个名字吗？', '你能不能换个名字？', '名字我能给你重新取吗？', '我是不是可以给你改名？', '为什么我改不了你的名字？', '你能让我给你换个名字吗？', '我怎么给你改名？', 0),
(17, '你有身体吗？', '', '2017-06-09 07:41:55', 1, '你有没有身体？', '你没有身体吗？', '身体你有吗？', '你是不是没有身体的？', '你是有身体的吧？', '我觉得你有身体，你有吗？', '你有一个怎样的身体？', '你的身体在哪里？', '你有身体吧，没有吗？', 0),
(18, '你来自哪里？', '', '2017-06-09 07:41:55', 1, '你从哪里来？', '你来自什么地方？', '你的家乡在哪里？', '我想知道你来自哪里。', '你从什么地方来的？', '你是不是来自那里？', '能告诉我你来自哪里吗？', '你是哪里人？', '你的家乡在什么地方？', 0),
(19, '你有男朋友吗？', '', '2017-06-09 07:41:55', 1, '你有没有男朋友？', '你没有男朋友吗？', '我不就是你的男朋友吗？', '你是不是没有男朋友的？', '你是有男朋友的吧？', '我觉得你有男朋友，你有吗？', '你有一个怎样的男朋友？', '你的男朋友在哪里？', '你有男朋友吧，没有吗？', 0),
(20, '我们是好朋友呀？', '', '2017-06-09 07:41:55', 1, '我们是不是好朋友？', '我不是你的好朋友吗？', '我是不是你的好朋友？', '你是我的好朋友吗？', '你是不是我的好朋友？', '我们怎么就不是好朋友了？', '我们是最好的朋友，不是吗？', '我们就是好朋友啊', '你希望我们是好朋友吗？', 0),
(21, '你住在哪里？', '', '2017-06-09 07:41:55', 1, '你住在什么地方？', '你的住址是哪里？', '你有没有住的地方？', '你是不是住在这里？', '我还不知道你的住址？', '能告诉我你住哪里吗？', '你不是住这里的吗？', '你住哪一个地方？', '你有住的地方吗？', 0),
(22, '你能做我女朋友吗？', '', '2017-06-09 07:41:55', 1, '你能不能做我女朋友？', '你愿意做我女朋友吗？', '我要你做我女朋友', '你怎么就不能做我女朋友了？', '做我女朋友吧！', '你现在是我女朋友了', '你不能做我的女朋友吗？', '我想让你做我女朋友。', '求求你做我女朋友吧', 0),
(23, '你喜欢做什么？', '', '2017-06-09 07:41:55', 1, '什么是你喜欢做的？', '这个是你喜欢做的吗？', '你喜欢做这个吗？', '我都不知道你喜欢做什么？', '你喜欢做哪些事？', '哪些事是你喜欢做的？', '能告诉我你都喜欢做什么吗？', '你有没有喜欢做的事情？', '你有喜欢做的事情吗？', 0),
(24, '你会陪着我吗？', '', '2017-06-09 07:41:55', 1, '陪着我好吗？', '你会离开我吗？', '我要你陪着我', '你应该一直陪着我', '你会一直陪着我的，是吗？', '你是不是会陪着我？', '你会不会陪着我？', '我要你在这里陪我', '你会在这里陪我吗？', 0),
(25, '你是什么星座？', '', '2017-06-09 07:41:55', 1, '你是哪个星座？', '你的星座是哪个？', '你是狮子座吗？', '能告诉我你的星座吗？', '说说看你的星座？', '哪个星座是你的星座？', '你有星座吗？', '你也有星座啊？', '你的星座是什么？', 0),
(26, '你是男是女？', 'csbot', '2017-06-09 07:41:55', 1, '你是男生吗？', '你的性别是什么？', '你是哪一种性别？', '你是不是男生啊！', '你肯定是女生吧！', '你是个什么性别啊？', '告诉我你是男生还是女生。', '我觉得你是女生，是吗？', '你不是女生吗？', 0),
(27, '你的生日是哪天？', 'csbot', '2017-06-09 07:41:55', 1, '你是今天生日吗？', '你的生日是什么时候？', '你是哪一天生日？', '今天是不是你的生日？', '你肯定是三月份生日吧？', '你出生在哪一天？', '你什么时候生的？', '告诉我你的生日', '我还不知道你的生日', 0),
(28, '你妈妈是谁？', 'csbot', '2017-06-09 07:41:55', 1, '你有妈妈吗？', '你的妈妈是什么？', '你的妈妈是哪一位？', '我是不是你的妈妈？', '谁是你的妈妈？', '告诉我你妈是谁？', '你妈妈呢？', '我还不知道你的妈妈是谁  ', '你妈妈叫什么？', 0),
(29, '你爸爸是谁？', 'csbot', '2017-06-09 07:41:55', 1, '你有爸爸吗？', '你爸爸叫什么？', '你的爸爸是哪一位？', '我是不是你的爸爸？', '谁是你的爸爸？', '告诉我你爸是谁？', '你爸爸呢？', '我还不知道你的爸爸是谁', '你没有爸爸吧？', 0),
(30, '你在哪里？', 'csbot', '2017-06-09 07:41:55', 1, '你是在这里吗？', '你在什么地方？', '你在哪一个地方？', '你是不是在这里？', '告诉我你的地址', '我还不知道你在哪儿', '你在哪里能告诉我吗', '你就在这里吧！', '你在不在这里啊？', 0),
(31, '你会做什么？', 'csbot', '2017-06-09 07:41:55', 1, '什么是你会做的？', '你有哪些功能？', '你的功能是什么？', '哪些是你不会做的？', '你能帮我做什么？', '你会不会做这个？', '你有不会做的吗？', '你是不是什么都会？', '做什么是你擅长的？', 0),
(32, '你长什么样子？', 'csbot', '2017-06-09 07:41:55', 1, '你的样子是什么样的？', '你长哪种样子？', '你是不是长这样子？', '你是长这样吗？', '你长不长这样子？', '我还不知道你长什么样', '说说看你的模样', '我能看看你长什么样吗？', '你是什么样子的？', 0),
(33, '你有什么爱好？', 'csbot', '2017-06-09 07:41:55', 1, '你的爱好是什么', '你会培养爱好吗？', '你的爱好多不多？', '吃东西是你的爱好吗？', '能告诉我你的爱好吗？', '爱好你有吗？', '你能有什么爱好啊？', '你肯定没有爱好', '你有没有爱好？', 0),
(34, '你有朋友吗？', 'csbot', '2017-06-09 07:41:55', 1, '朋友你有吗？', '你有没有朋友？', '你有很多朋友吗？', '你有几个朋友？', '除了我你还有什么朋友没？', '你有哪些朋友？', '你的朋友多吗？', '你是不是没有朋友的？', '你有交过朋友吗？', 0),
(35, '你睡觉吗？', 'csbot', '2017-06-09 07:41:55', 1, '你睡不睡觉的？', '你需要睡眠吗？', '你什么时候睡觉？', '你不需要睡觉吗？', '你也要睡觉的啊？', '睡觉你会吗？', '你的睡眠质量怎么样？', '你是不是不睡觉的？', '你怎么睡觉的？', 0),
(36, '你是不是机器人呢？', 'csbot', '2017-06-09 07:41:55', 1, '你是机器人吗？', '你就是机器人啊，不是吗？', '你怎么就不是机器人了？', '你是怎样的机器人？', '你为什么不是机器人？', '你是哪种机器人？', '你是什么机器人？', '你不是说过你是机器人吗？', '告诉我你是不是机器人？', 0),
(37, '你喜欢吃什么？', 'csbot', '2017-06-09 07:41:55', 1, '什么是你喜欢吃的？', '你喜欢吃哪种食物？', '这个是你喜欢吃的吗？', '你有没有喜欢吃的东西？', '你有喜欢吃的东西吗？', '什么东西你比较喜欢吃？', '你最喜欢吃什么东西？', '我不知道你都喜欢吃些什么？', '告诉我你喜欢吃什么？', 0),
(38, '你几岁了？', 'csbot', '2017-06-09 07:41:55', 1, '你有多少岁？', '你现在几岁', '你哪一年生的？', '几岁了你？', '你的岁数是多少？', '说说看你的年龄', '我想知道你几岁了', '你到底几岁啊？', '你有年龄吗？', 0),
(39, '你好聪明？', 'csbot', '2017-06-09 07:41:55', 1, '你是不是很聪明？', '你有多聪明？', '你是聪明的吗？', '你觉得你聪明吗？', '你聪不聪明？', '聪明是说你吗？', '你真的聪明吗？', '你一点儿也不聪明吧？', '你怎么聪明了？', 0),
(40, '你觉得我长的帅吗？', 'csbot', '2017-06-09 07:41:55', 1, '你说我帅吗？', '我帅不帅？', '我是不是长得很帅？', '你一定觉得我很帅吧？', '在你眼里我帅不帅？', '你看我很帅吗？', '你觉得我长得帅不帅？', '你说我长得有多帅？', '你不觉得我很帅吗？', 0),
(41, '我可以给你改一个名字吗？', 'csbot', '2017-06-09 07:41:55', 1, '我想给你换个名字', '我能给你取新的名字吗？', '你能换一个名字吗？', '你能不能换个名字？', '名字我能给你重新取吗？', '我是不是可以给你改名？', '为什么我改不了你的名字？', '你能让我给你换个名字吗？', '我怎么给你改名？', 0),
(42, '你有身体吗？', 'csbot', '2017-06-09 07:41:55', 1, '你有没有身体？', '你没有身体吗？', '身体你有吗？', '你是不是没有身体的？', '你是有身体的吧？', '我觉得你有身体，你有吗？', '你有一个怎样的身体？', '你的身体在哪里？', '你有身体吧，没有吗？', 0),
(43, '你来自哪里？', 'csbot', '2017-06-09 07:41:55', 1, '你从哪里来？', '你来自什么地方？', '你的家乡在哪里？', '我想知道你来自哪里。', '你从什么地方来的？', '你是不是来自那里？', '能告诉我你来自哪里吗？', '你是哪里人？', '你的家乡在什么地方？', 0),
(44, '你有男朋友吗？', 'csbot', '2017-06-09 07:41:55', 1, '你有没有男朋友？', '你没有男朋友吗？', '我不就是你的男朋友吗？', '你是不是没有男朋友的？', '你是有男朋友的吧？', '我觉得你有男朋友，你有吗？', '你有一个怎样的男朋友？', '你的男朋友在哪里？', '你有男朋友吧，没有吗？', 0),
(45, '我们是好朋友呀？', 'csbot', '2017-06-09 07:41:55', 1, '我们是不是好朋友？', '我不是你的好朋友吗？', '我是不是你的好朋友？', '你是我的好朋友吗？', '你是不是我的好朋友？', '我们怎么就不是好朋友了？', '我们是最好的朋友，不是吗？', '我们就是好朋友啊', '你希望我们是好朋友吗？', 0),
(46, '你住在哪里？', 'csbot', '2017-06-09 07:41:55', 1, '你住在什么地方？', '你的住址是哪里？', '你有没有住的地方？', '你是不是住在这里？', '我还不知道你的住址？', '能告诉我你住哪里吗？', '你不是住这里的吗？', '你住哪一个地方？', '你有住的地方吗？', 0),
(47, '你能做我女朋友吗？', 'csbot', '2017-06-09 07:41:55', 1, '你能不能做我女朋友？', '你愿意做我女朋友吗？', '我要你做我女朋友', '你怎么就不能做我女朋友了？', '做我女朋友吧！', '你现在是我女朋友了', '你不能做我的女朋友吗？', '我想让你做我女朋友。', '求求你做我女朋友吧', 0),
(48, '你喜欢做什么？', 'csbot', '2017-06-09 07:41:55', 1, '什么是你喜欢做的？', '这个是你喜欢做的吗？', '你喜欢做这个吗？', '我都不知道你喜欢做什么？', '你喜欢做哪些事？', '哪些事是你喜欢做的？', '能告诉我你都喜欢做什么吗？', '你有没有喜欢做的事情？', '你有喜欢做的事情吗？', 0),
(49, '你会陪着我吗？', 'csbot', '2017-06-09 07:41:55', 1, '陪着我好吗？', '你会离开我吗？', '我要你陪着我', '你应该一直陪着我', '你会一直陪着我的，是吗？', '你是不是会陪着我？', '你会不会陪着我？', '我要你在这里陪我', '你会在这里陪我吗？', 0),
(50, '你是什么星座？', 'csbot', '2017-06-09 07:41:55', 1, '你是哪个星座？', '你的星座是哪个？', '你是狮子座吗？', '能告诉我你的星座吗？', '说说看你的星座？', '哪个星座是你的星座？', '你有星座吗？', '你也有星座啊？', '你的星座是什么？', 0);

--
-- 資料表的匯出資料 `robot_words_type`
--

INSERT INTO `robot_words_type` (`type`, `name`, `comment`) VALUES
(1, '欢迎语话术', '欢迎语为用户进入机器人页面，机器人说的第一句话。'),
(2, '推荐问话术', '推荐问话术为系统未匹配到阈值之上的合适标准问题时，通过算法给出推荐问时的话术。'),
(3, '未知问题回复', '未知问题回复为机器人无法匹配时系统给出的回复。'),
(4, '近似问话术', '近似问题回复为系统匹配到几个分数十分相近的标准问题时，向用户询问具体意图的话术。'),
(5, '指定相关问话术', '使用\"指定相关问\"时，系统给出的话术。'),
(7, '标准问题失效初期话术', '上线的标准问题如果超过了其“结束时间”，但是超过的时间在5天以内(包括5天)，进行的回复。'),
(8, '标准问题失效过久话术', '上线的标准问题如果超过了其“结束时间”，但是超过的时间在5天以外，进行的回复。'),
(9, '满意情绪话术', '机器识别用户情绪为“满意”时给出的安抚话术，会加在匹配到的答案之前，不影响标准答案的回复。'),
(10, '不满情绪话术', '机器识别用户情绪为“不满”时给出的安抚话术，会加在匹配到的答案之前，不影响标准答案的回复。'),
(11, '愤怒情绪话术', '机器识别用户情绪为“愤怒”时给出的安抚话术，会加在匹配到的答案之前，不影响标准答案的回复。'),
(12, '敏感词话术', '敏感词话术为当使用者没有在词库设置答案时所使用的默认答案。当用户输入的句子中包含敏感词时，机器人给出的话术，此时机器人不再给出除此话术外的其他答案。');


--
-- 資料表的匯出資料 `function_switch`
--

INSERT INTO `function_switch` (`function_id`, `appid`, `module_name`, `module_name_zh`, `third_url`, `on_off`, `remark`, `intent`, `share`, `type`, `status`) VALUES
(1, '', 'AppControllerModule', '打开APP', '', 0, '帮我打开相机', '打开，应用', 0, 'PUBLIC_FUNC', -1),
(2, '', 'AudioModule', '有声书', '', 0, '讲一段郭德纲的相声', '听，有声书', 0, 'PUBLIC_FUNC', -1),
(3, '', 'ChengYuModule', '成语接龙', '', 0, '来玩成语接龙', '玩，成语接龙', 0, 'PUBLIC_FUNC', -1),
(4, '', 'ComputationModule', '计算', '', 1, '1+1等于几？', '做，算术', 0, 'PUBLIC_FUNC', 0),
(5, '', 'ConcertModule', '演唱会', '', 0, '上海最近有什么演唱会', '查，演唱会', 0, 'PUBLIC_FUNC', -1),
(6, '', 'CookbookModule', '菜谱', '', 0, '川菜怎么做', '查，菜谱', 0, 'PUBLIC_FUNC', -1),
(7, '', 'DatetimeModule', '时间查询', '', 0, '你知道现在几点么？', '查，时间', 0, 'PUBLIC_FUNC', 0),
(8, '', 'ExpressSearchModule', '快递查询', '', 0, '我要查快递', '查，快递', 0, 'PUBLIC_FUNC', -1),
(9, '', 'FoodModule', '美食', '', 0, '附近有什么好吃的美食', '找，美食', 0, 'PUBLIC_FUNC', -1),
(10, '', 'HoroscopeModule', '星座运势', '', 0, '查白羊座星座运势', '查，星座运势', 0, 'PUBLIC_FUNC', -1),
(11, '', 'JokeModule', '笑话', '', 1, '讲个笑话', '求，笑话', 0, 'PUBLIC_FUNC', 0),
(12, '', 'MatchModule', '足球比赛', '', 0, '利物浦比赛结果', '查，足球比分', 0, 'PUBLIC_FUNC', -1),
(13, '', 'MovieModule', '电影', '', 0, '推荐好看的电影', '求，电影推荐', 0, 'PUBLIC_FUNC', -1),
(14, '', 'MusicModule', '音乐', '', 0, '我要听周杰伦的歌', '听，音乐|查，音乐推荐|换，音乐', 0, 'PUBLIC_FUNC', -1),
(15, '', 'NBAModule', 'NBA比赛查询', '', 0, '查NBA比赛结果', '查，NBA赛讯', 0, 'PUBLIC_FUNC', -1),
(16, '', 'NewsModule', '新闻', '', 0, '今天有什么娱乐新闻？', '看，新闻', 0, 'PUBLIC_FUNC', -1),
(17, '', 'PhoneCallModule', '打电话', '', 0, '打电话给爸爸', '打，电话', 0, 'PUBLIC_FUNC', -1),
(18, '', 'PhoneQueryModule', '电话查询', '', 0, '查下苹果售后电话', '查，电话', 0, 'PUBLIC_FUNC', -1),
(19, '', 'PictureModule', '图片', '', 0, '发张美女图片', '看，图片', 0, 'PUBLIC_FUNC', -1),
(20, '', 'QueryExchangeModule', '汇率', '', 0, '人民币兑美元汇率是多少', '查，汇率', 0, 'PUBLIC_FUNC', 0),
(21, '', 'QueryStockModule', '股票', '', 1, '帮我查一下招商银行的股票', '查，股票', 0, 'PUBLIC_FUNC', 0),
(22, '', 'QueryTicketModule', '火车票查询', '', 0, '我要查北京到上海的火车票', '订，火车票|查，火车票', 0, 'PUBLIC_FUNC', -1),
(23, '', 'RiddleModule', '猜谜语', '', 0, '我要玩猜谜语', '玩，猜谜语', 0, 'PUBLIC_FUNC', -1),
(24, '', 'SendMailModule', '发邮件', '', 0, '发邮件给妈妈', '发，邮件', 0, 'PUBLIC_FUNC', -1),
(25, '', 'SendMessageModule', '发短信', '', 0, '发短信给爸爸', '发，短信', 0, 'PUBLIC_FUNC', -1),
(26, '', 'SingModule', '自动作曲', '', 0, '小影给我唱首歌', '听，小影唱歌', 0, 'PUBLIC_FUNC', -1),
(27, '', 'StoryModule', '讲故事', '', 1, '给我讲一个鬼故事', '求，故事', 0, 'PUBLIC_FUNC', 0),
(28, '', 'TaxiModule', '打车', '', 0, '我要打专车', '订，车', 0, 'PUBLIC_FUNC', -1),
(29, '', 'WeatherModule', '天气', '', 1, '北京今天天气怎么样？', '查，天气', 0, 'PUBLIC_FUNC', 0),
(30, '', 'module_accounting', '记帐', '', 0, '吃早饭花了100块', '记, 帐', 0, 'PUBLIC_FUNC', -1),
(31, 'csbot', 'AppControllerModule', '打开APP', '', 0, '帮我打开相机', '打开，应用', 0, 'PUBLIC_FUNC', -1),
(32, 'csbot', 'AudioModule', '有声书', '', 0, '讲一段郭德纲的相声', '听，有声书', 0, 'PUBLIC_FUNC', -1),
(33, 'csbot', 'ChengYuModule', '成语接龙', '', 0, '来玩成语接龙', '玩，成语接龙', 0, 'PUBLIC_FUNC', -1),
(34, 'csbot', 'ComputationModule', '计算', '', 0, '1+1等于几？', '做，算术', 0, 'PUBLIC_FUNC', 0),
(35, 'csbot', 'ConcertModule', '演唱会', '', 0, '上海最近有什么演唱会', '查，演唱会', 0, 'PUBLIC_FUNC', -1),
(36, 'csbot', 'CookbookModule', '菜谱', '', 0, '川菜怎么做', '查，菜谱', 0, 'PUBLIC_FUNC', -1),
(37, 'csbot', 'DatetimeModule', '时间查询', '', 0, '你知道现在几点么？', '查，时间', 0, 'PUBLIC_FUNC', 0),
(38, 'csbot', 'ExpressSearchModule', '快递查询', '', 0, '我要查快递', '查，快递', 0, 'PUBLIC_FUNC', -1),
(39, 'csbot', 'FoodModule', '美食', '', 0, '附近有什么好吃的美食', '找，美食', 0, 'PUBLIC_FUNC', -1),
(40, 'csbot', 'HoroscopeModule', '星座运势', '', 0, '查白羊座星座运势', '查，星座运势', 0, 'PUBLIC_FUNC', -1),
(41, 'csbot', 'JokeModule', '笑话', '', 0, '讲个笑话', '求，笑话', 0, 'PUBLIC_FUNC', 0),
(42, 'csbot', 'MatchModule', '足球比赛', '', 0, '利物浦比赛结果', '查，足球比分', 0, 'PUBLIC_FUNC', -1),
(43, 'csbot', 'MovieModule', '电影', '', 0, '推荐好看的电影', '求，电影推荐', 0, 'PUBLIC_FUNC', -1),
(44, 'csbot', 'MusicModule', '音乐', '', 0, '我要听周杰伦的歌', '听，音乐|查，音乐推荐|换，音乐', 0, 'PUBLIC_FUNC', -1),
(45, 'csbot', 'NBAModule', 'NBA比赛查询', '', 0, '查NBA比赛结果', '查，NBA赛讯', 0, 'PUBLIC_FUNC', -1),
(46, 'csbot', 'NewsModule', '新闻', '', 0, '今天有什么娱乐新闻？', '看，新闻', 0, 'PUBLIC_FUNC', -1),
(47, 'csbot', 'PhoneCallModule', '打电话', '', 0, '打电话给爸爸', '打，电话', 0, 'PUBLIC_FUNC', -1),
(48, 'csbot', 'PhoneQueryModule', '电话查询', '', 0, '查下苹果售后电话', '查，电话', 0, 'PUBLIC_FUNC', -1),
(49, 'csbot', 'PictureModule', '图片', '', 0, '发张美女图片', '看，图片', 0, 'PUBLIC_FUNC', -1),
(50, 'csbot', 'QueryExchangeModule', '汇率', '', 0, '人民币兑美元汇率是多少', '查，汇率', 0, 'PUBLIC_FUNC', 0),
(51, 'csbot', 'QueryStockModule', '股票', '', 0, '帮我查一下招商银行的股票', '查，股票', 0, 'PUBLIC_FUNC', 0),
(52, 'csbot', 'QueryTicketModule', '火车票查询', '', 0, '我要查北京到上海的火车票', '订，火车票|查，火车票', 0, 'PUBLIC_FUNC', -1),
(53, 'csbot', 'RiddleModule', '猜谜语', '', 0, '我要玩猜谜语', '玩，猜谜语', 0, 'PUBLIC_FUNC', -1),
(54, 'csbot', 'SendMailModule', '发邮件', '', 0, '发邮件给妈妈', '发，邮件', 0, 'PUBLIC_FUNC', -1),
(55, 'csbot', 'SendMessageModule', '发短信', '', 0, '发短信给爸爸', '发，短信', 0, 'PUBLIC_FUNC', -1),
(56, 'csbot', 'SingModule', '自动作曲', '', 0, '小影给我唱首歌', '听，小影唱歌', 0, 'PUBLIC_FUNC', -1),
(57, 'csbot', 'StoryModule', '讲故事', '', 0, '给我讲一个鬼故事', '求，故事', 0, 'PUBLIC_FUNC', 0),
(58, 'csbot', 'TaxiModule', '打车', '', 0, '我要打专车', '订，车', 0, 'PUBLIC_FUNC', -1),
(59, 'csbot', 'WeatherModule', '天气', '', 0, '北京今天天气怎么样？', '查，天气', 0, 'PUBLIC_FUNC', 0),
(60, 'csbot', 'module_accounting', '记帐', '', 0, '吃早饭花了100块', '记, 帐', 0, 'PUBLIC_FUNC', -1);

INSERT INTO `tbl_solution_stage_lastest_status` (`app_id`, `module`, `stage`, `status`, `status_datetime`) VALUES
('csbot', 'squestionMatching', 2, 'Modify', '2018-06-08 13:35:17');

INSERT INTO `entity_class` (`appid`, `name`, `pid`, `editable`, `intent_engine`, `rule_engine`, `created_at`) VALUES
('', '敏感词库', NULL, 1, 0, 1, CURRENT_TIMESTAMP),
('', '任务引擎词库', NULL, 0, 0, 1, CURRENT_TIMESTAMP),
('csbot', '敏感词库', NULL, 1, 0, 1, CURRENT_TIMESTAMP),
('csbot', '任务引擎词库', NULL, 0, 0, 1, CURRENT_TIMESTAMP),
('templateadmin', '任务引擎词库', NULL, 0, 0, 1, CURRENT_TIMESTAMP),
('templateadmin', '房型', 3, 0, 0, 1, CURRENT_TIMESTAMP),
('templateadmin', '航空公司代号', 3, 0, 0, 1, CURRENT_TIMESTAMP),
('templateadmin', '城市代号', 3, 0, 0, 1, CURRENT_TIMESTAMP);

INSERT INTO `entities` (`appid`, `name`, `editable`, `cid`, `similar_words`, `answer`, `created_at`)
VALUES
('templateadmin','单人房',0,4,'single,单人房,单人床,单人房型','',CURRENT_TIMESTAMP),
('templateadmin','双人房',0,4,'double,双人房,双人床,双人,双人房型,twin','',CURRENT_TIMESTAMP),
('templateadmin','两小床双人房',0,4,'twin,两小床双人房,双床双人房','',CURRENT_TIMESTAMP),
('templateadmin','三人房',0,4,'triple,三人房,三人床,三人,三人房型','',CURRENT_TIMESTAMP),
('templateadmin','单床小双人房',0,4,'semi-double,单床小双人房','',CURRENT_TIMESTAMP),
('templateadmin','套房',0,4,'suite,套房,套房房型','',CURRENT_TIMESTAMP),
('templateadmin','CA',0,5,'中国国际航空公司,中国国航,国航','',CURRENT_TIMESTAMP),
('templateadmin','HU',0,5,'海南航空,海航,海南航空公司','',CURRENT_TIMESTAMP),
('templateadmin','JD',0,5,'首都航空,北京首都航空有限公司','',CURRENT_TIMESTAMP),
('templateadmin','MU',0,5,'东方航空,东航','',CURRENT_TIMESTAMP),
('templateadmin','CZ',0,5,'南方航空,南航','',CURRENT_TIMESTAMP),
('templateadmin','BK',0,5,'奥凯航空公司,奥凯航空','',CURRENT_TIMESTAMP),
('templateadmin','GJ',0,5,'长龙航空公司,长龙航空','',CURRENT_TIMESTAMP),
('templateadmin','9C',0,5,'春秋航空公司,春秋航空','',CURRENT_TIMESTAMP),
('templateadmin','EU',0,5,'成都航空有限公司,成都航空','',CURRENT_TIMESTAMP),
('templateadmin','CN',0,5,'大新华航空公司,新华航空,大新华航空','',CURRENT_TIMESTAMP),
('templateadmin','DZ',0,5,'东海航空公司,东海航空','',CURRENT_TIMESTAMP),
('templateadmin','NS',0,5,'河北航空公司,河北航空','',CURRENT_TIMESTAMP),
('templateadmin','G5',0,5,'华夏航空公司,华夏航空','',CURRENT_TIMESTAMP),
('templateadmin','HO',0,5,'吉祥航空公司,吉祥航空','',CURRENT_TIMESTAMP),
('templateadmin','KY',0,5,'昆明航空有限公司,昆明航空','',CURRENT_TIMESTAMP),
('templateadmin','QW',0,5,'青岛航空公司,青岛航空','',CURRENT_TIMESTAMP),
('templateadmin','3U',0,5,'四川航空公司,四川航空,川航','',CURRENT_TIMESTAMP),
('templateadmin','SC',0,5,'山东航空公司,山东航空','',CURRENT_TIMESTAMP),
('templateadmin','ZH',0,5,'深圳航空公司,深圳航空,深航','',CURRENT_TIMESTAMP),
('templateadmin','FM',0,5,'上海航空公司,上海航空,上航','',CURRENT_TIMESTAMP),
('templateadmin','GS',0,5,'天津航空有限责任公司,天津航空公司,天津航空,天航','',CURRENT_TIMESTAMP),
('templateadmin','PN',0,5,'西部航空公司,西部航空','',CURRENT_TIMESTAMP),
('templateadmin','TV',0,5,'西藏航空公司,西藏航空','',CURRENT_TIMESTAMP),
('templateadmin','JR',0,5,'幸福航空有限责任公司,幸福航空公司,幸福航空','',CURRENT_TIMESTAMP),
('templateadmin','MF',0,5,'厦门航空有限公司,厦门航空公司,厦门航空,厦航','',CURRENT_TIMESTAMP),
('templateadmin','8L',0,5,'祥鹏航空公司,祥鹏航空','',CURRENT_TIMESTAMP),
('templateadmin','YI',0,5,'英安航空公司,英安航空','',CURRENT_TIMESTAMP),
('templateadmin','KN',0,5,'中国联合航空公司,中国联合航空,联航','',CURRENT_TIMESTAMP),
('templateadmin','ZHY',0,6,'中卫','',CURRENT_TIMESTAMP),
('templateadmin','LLB',0,6,'荔波','',CURRENT_TIMESTAMP),
('templateadmin','JZH',0,6,'九寨沟','',CURRENT_TIMESTAMP),
('templateadmin','NBS',0,6,'长白山','',CURRENT_TIMESTAMP),
('templateadmin','ENY',0,6,'延安','',CURRENT_TIMESTAMP),
('templateadmin','JNG',0,6,'济宁','',CURRENT_TIMESTAMP),
('templateadmin','YIC',0,6,'宜春','',CURRENT_TIMESTAMP),
('templateadmin','JUH',0,6,'池州','',CURRENT_TIMESTAMP),
('templateadmin','LIA',0,6,'梁平','',CURRENT_TIMESTAMP),
('templateadmin','RIZ',0,6,'日照','',CURRENT_TIMESTAMP),
('templateadmin','AVA',0,6,'安顺','',CURRENT_TIMESTAMP),
('templateadmin','YIH',0,6,'宜昌','',CURRENT_TIMESTAMP),
('templateadmin','HTN',0,6,'和田','',CURRENT_TIMESTAMP),
('templateadmin','SHASHA',0,6,'上海虹桥','',CURRENT_TIMESTAMP),
('templateadmin','KWE',0,6,'贵阳','',CURRENT_TIMESTAMP),
('templateadmin','KOW',0,6,'赣州','',CURRENT_TIMESTAMP),
('templateadmin','SYX',0,6,'三亚','',CURRENT_TIMESTAMP),
('templateadmin','JNZ',0,6,'锦州','',CURRENT_TIMESTAMP),
('templateadmin','ZAT',0,6,'昭通','',CURRENT_TIMESTAMP),
('templateadmin','XFN',0,6,'襄阳','',CURRENT_TIMESTAMP),
('templateadmin','CGO',0,6,'郑州','',CURRENT_TIMESTAMP),
('templateadmin','HEK',0,6,'黑河','',CURRENT_TIMESTAMP),
('templateadmin','LDS',0,6,'伊春','',CURRENT_TIMESTAMP),
('templateadmin','HZG',0,6,'汉中','',CURRENT_TIMESTAMP),
('templateadmin','HXD',0,6,'德令哈','',CURRENT_TIMESTAMP),
('templateadmin','SYM',0,6,'普洱','',CURRENT_TIMESTAMP),
('templateadmin','TGO',0,6,'通辽','',CURRENT_TIMESTAMP),
('templateadmin','SZX',0,6,'深圳','',CURRENT_TIMESTAMP),
('templateadmin','SHAPVG',0,6,'上海浦东','',CURRENT_TIMESTAMP),
('templateadmin','JDZ',0,6,'景德镇','',CURRENT_TIMESTAMP),
('templateadmin','HYN',0,6,'台州','',CURRENT_TIMESTAMP),
('templateadmin','SWA',0,6,'潮州','',CURRENT_TIMESTAMP),
('templateadmin','JIU',0,6,'九江','',CURRENT_TIMESTAMP),
('templateadmin','TCG',0,6,'塔城','',CURRENT_TIMESTAMP),
('templateadmin','MXZ',0,6,'梅州','',CURRENT_TIMESTAMP),
('templateadmin','NNY',0,6,'南阳','',CURRENT_TIMESTAMP),
('templateadmin','NLH',0,6,'宁蒗','',CURRENT_TIMESTAMP),
('templateadmin','CZX',0,6,'常州','',CURRENT_TIMESTAMP),
('templateadmin','KRL',0,6,'库尔勒','',CURRENT_TIMESTAMP),
('templateadmin','WUZ',0,6,'梧州','',CURRENT_TIMESTAMP),
('templateadmin','XUZ',0,6,'徐州','',CURRENT_TIMESTAMP),
('templateadmin','HLD',0,6,'海拉尔','',CURRENT_TIMESTAMP),
('templateadmin','YCU',0,6,'运城','',CURRENT_TIMESTAMP),
('templateadmin','LUM',0,6,'德宏','',CURRENT_TIMESTAMP),
('templateadmin','YUS',0,6,'玉树','',CURRENT_TIMESTAMP),
('templateadmin','WEF',0,6,'潍坊','',CURRENT_TIMESTAMP),
('templateadmin','HIA',0,6,'淮安','',CURRENT_TIMESTAMP),
('templateadmin','JHG',0,6,'西双版纳','',CURRENT_TIMESTAMP),
('templateadmin','URC',0,6,'乌鲁木齐','',CURRENT_TIMESTAMP),
('templateadmin','NZH',0,6,'满洲里','',CURRENT_TIMESTAMP),
('templateadmin','KJI',0,6,'喀纳斯','',CURRENT_TIMESTAMP),
('templateadmin','YNZ',0,6,'盐城','',CURRENT_TIMESTAMP),
('templateadmin','HRB',0,6,'哈尔滨','',CURRENT_TIMESTAMP),
('templateadmin','NGB',0,6,'宁波','',CURRENT_TIMESTAMP),
('templateadmin','SIA',0,6,'西安','',CURRENT_TIMESTAMP),
('templateadmin','THQ',0,6,'天水','',CURRENT_TIMESTAMP),
('templateadmin','RLK',0,6,'巴彦淖尔','',CURRENT_TIMESTAMP),
('templateadmin','HJJ',0,6,'怀化','',CURRENT_TIMESTAMP),
('templateadmin','ZQZ',0,6,'张家口','',CURRENT_TIMESTAMP),
('templateadmin','AAT',0,6,'阿勒泰','',CURRENT_TIMESTAMP),
('templateadmin','DLC',0,6,'大连','',CURRENT_TIMESTAMP),
('templateadmin','WUH',0,6,'武汉','',CURRENT_TIMESTAMP),
('templateadmin','NGQ',0,6,'阿里','',CURRENT_TIMESTAMP),
('templateadmin','WNH',0,6,'文山','',CURRENT_TIMESTAMP),
('templateadmin','LZY',0,6,'林芝','',CURRENT_TIMESTAMP),
('templateadmin','FUG',0,6,'阜阳','',CURRENT_TIMESTAMP),
('templateadmin','JIQ',0,6,'黔江','',CURRENT_TIMESTAMP),
('templateadmin','TSN',0,6,'天津市','',CURRENT_TIMESTAMP),
('templateadmin','LHK',0,6,'光化','',CURRENT_TIMESTAMP),
('templateadmin','GYU',0,6,'固原','',CURRENT_TIMESTAMP),
('templateadmin','MIG',0,6,'绵阳','',CURRENT_TIMESTAMP),
('templateadmin','OHE',0,6,'漠河','',CURRENT_TIMESTAMP),
('templateadmin','HCJ',0,6,'河池','',CURRENT_TIMESTAMP),
('templateadmin','BSD',0,6,'保山','',CURRENT_TIMESTAMP),
('templateadmin','YIW',0,6,'义乌','',CURRENT_TIMESTAMP),
('templateadmin','NDG',0,6,'齐齐哈尔','',CURRENT_TIMESTAMP),
('templateadmin','RHT',0,6,'阿拉善右旗','',CURRENT_TIMESTAMP),
('templateadmin','CAN',0,6,'广州','',CURRENT_TIMESTAMP),
('templateadmin','LYI',0,6,'临沂','',CURRENT_TIMESTAMP),
('templateadmin','JUZ',0,6,'衢州','',CURRENT_TIMESTAMP),
('templateadmin','TNA',0,6,'济南','',CURRENT_TIMESTAMP),
('templateadmin','YIN',0,6,'伊宁','',CURRENT_TIMESTAMP),
('templateadmin','YNJ',0,6,'延吉','',CURRENT_TIMESTAMP),
('templateadmin','LNJ',0,6,'临沧','',CURRENT_TIMESTAMP),
('templateadmin','CGQ',0,6,'长春','',CURRENT_TIMESTAMP),
('templateadmin','WNZ',0,6,'温州','',CURRENT_TIMESTAMP),
('templateadmin','GOQ',0,6,'格尔木','',CURRENT_TIMESTAMP),
('templateadmin','FUO',0,6,'佛山','',CURRENT_TIMESTAMP),
('templateadmin','XNN',0,6,'西宁','',CURRENT_TIMESTAMP),
('templateadmin','HSN',0,6,'舟山','',CURRENT_TIMESTAMP),
('templateadmin','LUM',0,6,'芒市','',CURRENT_TIMESTAMP),
('templateadmin','HUZ',0,6,'惠州','',CURRENT_TIMESTAMP),
('templateadmin','HMI',0,6,'哈密','',CURRENT_TIMESTAMP),
('templateadmin','FYJ',0,6,'抚远','',CURRENT_TIMESTAMP),
('templateadmin','DIG',0,6,'迪庆','',CURRENT_TIMESTAMP),
('templateadmin','DQA',0,6,'大庆','',CURRENT_TIMESTAMP),
('templateadmin','KMG',0,6,'昆明','',CURRENT_TIMESTAMP),
('templateadmin','LYA',0,6,'洛阳','',CURRENT_TIMESTAMP),
('templateadmin','CHG',0,6,'朝阳','',CURRENT_TIMESTAMP),
('templateadmin','HNY',0,6,'衡阳','',CURRENT_TIMESTAMP),
('templateadmin','JMU',0,6,'佳木斯','',CURRENT_TIMESTAMP),
('templateadmin','ERL',0,6,'二连浩特','',CURRENT_TIMESTAMP),
('templateadmin','TEN',0,6,'铜仁','',CURRENT_TIMESTAMP),
('templateadmin','TNH',0,6,'通化','',CURRENT_TIMESTAMP),
('templateadmin','ZYI',0,6,'遵义','',CURRENT_TIMESTAMP),
('templateadmin','AXF',0,6,'阿拉善左旗','',CURRENT_TIMESTAMP),
('templateadmin','TSN',0,6,'天津','',CURRENT_TIMESTAMP),
('templateadmin','ACX',0,6,'兴义','',CURRENT_TIMESTAMP),
('templateadmin','BHY',0,6,'北海','',CURRENT_TIMESTAMP),
('templateadmin','SHE',0,6,'沈阳','',CURRENT_TIMESTAMP),
('templateadmin','LHW',0,6,'兰州','',CURRENT_TIMESTAMP),
('templateadmin','SWA',0,6,'汕头','',CURRENT_TIMESTAMP),
('templateadmin','TLQ',0,6,'吐鲁番','',CURRENT_TIMESTAMP),
('templateadmin','SHP',0,6,'秦皇岛','',CURRENT_TIMESTAMP),
('templateadmin','XIL',0,6,'锡林浩特','',CURRENT_TIMESTAMP),
('templateadmin','YBP',0,6,'宜宾','',CURRENT_TIMESTAMP),
('templateadmin','WUX',0,6,'无锡','',CURRENT_TIMESTAMP),
('templateadmin','LCX',0,6,'龙岩','',CURRENT_TIMESTAMP),
('templateadmin','FOC',0,6,'福州','',CURRENT_TIMESTAMP),
('templateadmin','YTY',0,6,'泰州','',CURRENT_TIMESTAMP),
('templateadmin','JIC',0,6,'金昌','',CURRENT_TIMESTAMP),
('templateadmin','CTU',0,6,'成都','',CURRENT_TIMESTAMP),
('templateadmin','TYN',0,6,'太原','',CURRENT_TIMESTAMP),
('templateadmin','AEB',0,6,'百色','',CURRENT_TIMESTAMP),
('templateadmin','ENH',0,6,'恩施','',CURRENT_TIMESTAMP),
('templateadmin','WUT',0,6,'忻州','',CURRENT_TIMESTAMP),
('templateadmin','EJN',0,6,'额济纳旗','',CURRENT_TIMESTAMP),
('templateadmin','HGH',0,6,'杭州','',CURRENT_TIMESTAMP),
('templateadmin','DOY',0,6,'东营','',CURRENT_TIMESTAMP),
('templateadmin','DCY',0,6,'稻城','',CURRENT_TIMESTAMP),
('templateadmin','SHA',0,6,'上海市','',CURRENT_TIMESTAMP),
('templateadmin','YIE',0,6,'阿尔山','',CURRENT_TIMESTAMP),
('templateadmin','LXA',0,6,'拉萨','',CURRENT_TIMESTAMP),
('templateadmin','CIH',0,6,'长治','',CURRENT_TIMESTAMP),
('templateadmin','JXA',0,6,'鸡西','',CURRENT_TIMESTAMP),
('templateadmin','XIC',0,6,'西昌','',CURRENT_TIMESTAMP),
('templateadmin','KRY',0,6,'克拉玛依','',CURRENT_TIMESTAMP),
('templateadmin','DAT',0,6,'大同','',CURRENT_TIMESTAMP),
('templateadmin','GYS',0,6,'广元','',CURRENT_TIMESTAMP),
('templateadmin','FYN',0,6,'富蕴','',CURRENT_TIMESTAMP),
('templateadmin','BAV',0,6,'包头','',CURRENT_TIMESTAMP),
('templateadmin','SHS',0,6,'荆州','',CURRENT_TIMESTAMP),
('templateadmin','XMN',0,6,'厦门','',CURRENT_TIMESTAMP),
('templateadmin','KCA',0,6,'库车','',CURRENT_TIMESTAMP),
('templateadmin','ZUH',0,6,'珠海','',CURRENT_TIMESTAMP),
('templateadmin','JJN',0,6,'晋江','',CURRENT_TIMESTAMP),
('templateadmin','NTG',0,6,'南通','',CURRENT_TIMESTAMP),
('templateadmin','LLV',0,6,'吕梁','',CURRENT_TIMESTAMP),
('templateadmin','NNG',0,6,'南宁','',CURRENT_TIMESTAMP),
('templateadmin','TAO',0,6,'青岛','',CURRENT_TIMESTAMP),
('templateadmin','ZGN',0,6,'中山','',CURRENT_TIMESTAMP),
('templateadmin','DDG',0,6,'丹东','',CURRENT_TIMESTAMP),
('templateadmin','JGD',0,6,'加格达奇','',CURRENT_TIMESTAMP),
('templateadmin','JGN',0,6,'嘉峪关','',CURRENT_TIMESTAMP),
('templateadmin','LZO',0,6,'泸州','',CURRENT_TIMESTAMP),
('templateadmin','KHG',0,6,'喀什','',CURRENT_TIMESTAMP),
('templateadmin','PZI',0,6,'攀枝花','',CURRENT_TIMESTAMP),
('templateadmin','BFJ',0,6,'毕节','',CURRENT_TIMESTAMP),
('templateadmin','SJW',0,6,'石家庄','',CURRENT_TIMESTAMP),
('templateadmin','GHN',0,6,'广汉','',CURRENT_TIMESTAMP),
('templateadmin','WUS',0,6,'武夷山','',CURRENT_TIMESTAMP),
('templateadmin','HFE',0,6,'合肥','',CURRENT_TIMESTAMP),
('templateadmin','AHJ',0,6,'红原','',CURRENT_TIMESTAMP),
('templateadmin','HDG',0,6,'邯郸','',CURRENT_TIMESTAMP),
('templateadmin','CNI',0,6,'长海','',CURRENT_TIMESTAMP),
('templateadmin','DLU',0,6,'大理','',CURRENT_TIMESTAMP),
('templateadmin','CKG',0,6,'重庆','',CURRENT_TIMESTAMP),
('templateadmin','BJSPEK',0,6,'北京首都','',CURRENT_TIMESTAMP),
('templateadmin','IQM',0,6,'且末','',CURRENT_TIMESTAMP),
('templateadmin','KJH',0,6,'凯里','',CURRENT_TIMESTAMP),
('templateadmin','BJS',0,6,'北京','',CURRENT_TIMESTAMP),
('templateadmin','BPL',0,6,'博乐','',CURRENT_TIMESTAMP),
('templateadmin','SHA',0,6,'上海','',CURRENT_TIMESTAMP),
('templateadmin','AOG',0,6,'鞍山','',CURRENT_TIMESTAMP),
('templateadmin','ZHA',0,6,'湛江','',CURRENT_TIMESTAMP),
('templateadmin','MDG',0,6,'牡丹江','',CURRENT_TIMESTAMP),
('templateadmin','LLF',0,6,'永州','',CURRENT_TIMESTAMP),
('templateadmin','WUA',0,6,'乌海','',CURRENT_TIMESTAMP),
('templateadmin','HET',0,6,'呼和浩特','',CURRENT_TIMESTAMP),
('templateadmin','HPG',0,6,'神农架','',CURRENT_TIMESTAMP),
('templateadmin','YTY',0,6,'扬州','',CURRENT_TIMESTAMP),
('templateadmin','NLT',0,6,'那拉提','',CURRENT_TIMESTAMP),
('templateadmin','TCZ',0,6,'腾冲','',CURRENT_TIMESTAMP),
('templateadmin','BPX',0,6,'昌都','',CURRENT_TIMESTAMP),
('templateadmin','LJG',0,6,'丽江','',CURRENT_TIMESTAMP),
('templateadmin','HZH',0,6,'黎平','',CURRENT_TIMESTAMP),
('templateadmin','YZY',0,6,'张掖','',CURRENT_TIMESTAMP),
('templateadmin','INC',0,6,'银川','',CURRENT_TIMESTAMP),
('templateadmin','DSN',0,6,'鄂尔多斯','',CURRENT_TIMESTAMP),
('templateadmin','DNH',0,6,'敦煌','',CURRENT_TIMESTAMP),
('templateadmin','RKZ',0,6,'日喀则','',CURRENT_TIMESTAMP),
('templateadmin','LXI',0,6,'林西','',CURRENT_TIMESTAMP),
('templateadmin','CGD',0,6,'常德','',CURRENT_TIMESTAMP),
('templateadmin','IQN',0,6,'庆阳','',CURRENT_TIMESTAMP),
('templateadmin','LYG',0,6,'连云港','',CURRENT_TIMESTAMP),
('templateadmin','CIF',0,6,'赤峰','',CURRENT_TIMESTAMP),
('templateadmin','NKG',0,6,'南京','',CURRENT_TIMESTAMP),
('templateadmin','HLH',0,6,'乌兰浩特','',CURRENT_TIMESTAMP),
('templateadmin','KWL',0,6,'桂林','',CURRENT_TIMESTAMP),
('templateadmin','JGS',0,6,'井冈山','',CURRENT_TIMESTAMP),
('templateadmin','SIA',0,6,'咸阳','',CURRENT_TIMESTAMP),
('templateadmin','KGT',0,6,'康定','',CURRENT_TIMESTAMP),
('templateadmin','LZH',0,6,'柳州','',CURRENT_TIMESTAMP),
('templateadmin','DYG',0,6,'张家界','',CURRENT_TIMESTAMP),
('templateadmin','UYN',0,6,'榆林','',CURRENT_TIMESTAMP),
('templateadmin','CSX',0,6,'长沙','',CURRENT_TIMESTAMP),
('templateadmin','KHN',0,6,'南昌','',CURRENT_TIMESTAMP),
('templateadmin','AKU',0,6,'阿克苏','',CURRENT_TIMESTAMP),
('templateadmin','TXN',0,6,'黄山','',CURRENT_TIMESTAMP),
('templateadmin','YNT',0,6,'烟台','',CURRENT_TIMESTAMP),
('templateadmin','SWA',0,6,'揭阳','',CURRENT_TIMESTAMP),
('templateadmin','NAO',0,6,'南充','',CURRENT_TIMESTAMP),
('templateadmin','HAK',0,6,'海口','',CURRENT_TIMESTAMP),
('templateadmin','DAX',0,6,'达县','',CURRENT_TIMESTAMP),
('templateadmin','WEH',0,6,'威海','',CURRENT_TIMESTAMP),
('templateadmin','LPF',0,6,'六盘水','',CURRENT_TIMESTAMP),
('templateadmin','JJN',0,6,'泉州','',CURRENT_TIMESTAMP),
('templateadmin','AKA',0,6,'安康','',CURRENT_TIMESTAMP),
('templateadmin','GXH',0,6,'夏河','',CURRENT_TIMESTAMP),
('templateadmin','BJS',0,6,'北京市','',CURRENT_TIMESTAMP),
('templateadmin','TVS',0,6,'唐山','',CURRENT_TIMESTAMP),
('templateadmin','BJSNAY',0,6,'北京南苑','',CURRENT_TIMESTAMP),
('templateadmin','AQG',0,6,'安庆','',CURRENT_TIMESTAMP),
('templateadmin','WXN',0,6,'万州','',CURRENT_TIMESTAMP);

INSERT INTO `robot_profile_question` (`id`, `content`, `createdtime`) VALUES
(1, '你会做什么？', '2018-07-01 04:16:57'),
(2, '你会陪着我吗？', '2018-07-01 04:16:57'),
(3, '你住在哪里？', '2018-07-01 04:16:57'),
(4, '你几岁了？', '2018-07-01 04:16:57'),
(5, '你喜欢做什么？', '2018-07-01 04:16:57'),
(6, '你喜欢吃什么？', '2018-07-01 04:16:57'),
(7, '你在哪里？', '2018-07-01 04:16:57'),
(8, '你好聪明？', '2018-07-01 04:16:57'),
(9, '你妈妈是谁？', '2018-07-01 04:16:57'),
(10, '你是不是机器人呢？', '2018-07-01 04:16:57'),
(11, '你是什么星座？', '2018-07-01 04:16:57'),
(12, '你是男是女？', '2018-07-01 04:16:57'),
(13, '你有什么爱好？', '2018-07-01 04:16:57'),
(14, '你有朋友吗？', '2018-07-01 04:16:57'),
(15, '你有男朋友吗？', '2018-07-01 04:16:57'),
(16, '你有身体吗？', '2018-07-01 04:16:57'),
(17, '你来自哪里？', '2018-07-01 04:16:57'),
(18, '你爸爸是谁？', '2018-07-01 04:16:57'),
(19, '你的生日是哪天？', '2018-07-01 04:16:57'),
(20, '你睡觉吗？', '2018-07-01 04:16:57'),
(21, '你能做我女朋友吗？', '2018-07-01 04:16:57'),
(22, '你觉得我长的帅吗？', '2018-07-01 04:16:57'),
(23, '你长什么样子？', '2018-07-01 04:16:57'),
(24, '我们是好朋友呀？', '2018-07-01 04:16:57'),
(25, '我可以给你改一个名字吗？', '2018-07-01 04:16:57');
