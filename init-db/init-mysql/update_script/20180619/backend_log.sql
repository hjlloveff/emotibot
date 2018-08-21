-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- 主機: 172.17.0.1
-- 產生時間： 2018 年 06 月 19 日 08:21
-- 伺服器版本: 5.7.20
-- PHP 版本： 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `backend_log`
--
CREATE DATABASE IF NOT EXISTS `backend_log` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `backend_log`;

-- --------------------------------------------------------

--
-- 資料表結構 `chat_record`
--

DROP TABLE IF EXISTS `chat_record`;
CREATE TABLE IF NOT EXISTS `chat_record` (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'chatlog id',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT 'robotID',
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '使用者id',
  `user_q` text COMMENT '用户提问',
  `std_q` varchar(255) NOT NULL DEFAULT '' COMMENT '标准问题',
  `answer` mediumtext COMMENT 'robot 答案',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '出话模组',
  `emotion` varchar(32) NOT NULL DEFAULT '' COMMENT '情绪',
  `emotion_score` int(11) NOT NULL DEFAULT '0' COMMENT '情绪分数',
  `intent` varchar(32) NOT NULL DEFAULT '' COMMENT '意图',
  `intent_score` int(11) NOT NULL DEFAULT '0' COMMENT '意图分数',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `log_time` varchar(32) NOT NULL DEFAULT '' COMMENT 'RFC3339时间格式',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '分数',
  `custom_info` text COMMENT 'json 客制化资讯',
  `host` varchar(32) NOT NULL DEFAULT '' COMMENT '纪录 log 来源机器',
  `unique_id` varchar(100) NOT NULL DEFAULT '' COMMENT '纪录 log ID',
  `note` text COMMENT '保留栏位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2474 DEFAULT CHARSET=utf8 COMMENT='暂存所有对话纪录，每个对话(单句)将存成一条row，转存进vipshop_record后将此表内同一笔作删除';

-- --------------------------------------------------------

--
-- 資料表結構 `custom_statics`
--

DROP TABLE IF EXISTS `custom_statics`;
CREATE TABLE IF NOT EXISTS `custom_statics` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '统计条目id',
  `app_id` varchar(64) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '1980-01-01' COMMENT '日期',
  `session_cnt` int(11) NOT NULL COMMENT '总会话数',
  `chat_user_cnt` int(11) NOT NULL COMMENT '聊天用户量',
  `active_user_cnt` int(11) NOT NULL COMMENT '活跃用户量',
  `new_user_cnt` int(11) NOT NULL COMMENT '新增用户量',
  `chat_cnt` int(11) NOT NULL COMMENT '对话量',
  `std_ans_cnt` int(11) NOT NULL COMMENT '出话为业务类, 并给出标准答案的数量 (module = faq)',
  `pure_chat_cnt` int(11) NOT NULL COMMENT '出话为聊天类的聊天数量 (module != faq, module != backfill)',
  `backfill_cnt` int(11) NOT NULL COMMENT '无法回答的数量',
  `unsolved_cnt` int(11) NOT NULL COMMENT '业务类中标记为未解决的问答数量',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `tag_type_id_str` varchar(100) DEFAULT NULL COMMENT '维度类型',
  `tag_id_str` varchar(100) DEFAULT NULL COMMENT '维度',
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `records`
--

DROP TABLE IF EXISTS `records`;
CREATE TABLE IF NOT EXISTS `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` char(64) NOT NULL DEFAULT '',
  `user_id` char(64) NOT NULL,
  `user_q` text NOT NULL,
  `std_q` char(255) DEFAULT NULL,
  `answer` mediumtext NOT NULL,
  `module` char(32) NOT NULL,
  `emotion` char(32) DEFAULT NULL,
  `emotion_score` int(4) NOT NULL DEFAULT '0' COMMENT '分数',
  `intent` varchar(32) NOT NULL COMMENT '情绪',
  `intent_score` int(4) NOT NULL DEFAULT '0' COMMENT '分数',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(4) DEFAULT NULL,
  `host` char(32) NOT NULL,
  `unique_id` char(100) NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  `note` text,
  `platform` char(32) DEFAULT '',
  `brand` char(32) DEFAULT '',
  `sex` char(32) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `appid` (`app_id`),
  KEY `created_time` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=613 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `statics`
--

DROP TABLE IF EXISTS `statics`;
CREATE TABLE IF NOT EXISTS `statics` (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '统计条目id',
  `app_id` char(64) NOT NULL,
  `date` date NOT NULL DEFAULT '1980-01-01' COMMENT '统计日期',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '统计类別 0:date 1:hour',
  `hour` int(11) NOT NULL DEFAULT '0' COMMENT '小时(0~23)',
  `chat_user_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '聊天用户量',
  `active_user_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '活跃用户量',
  `new_user_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '新增用户量',
  `session_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '对话session数量',
  `chat_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '对话量',
  `pure_chat_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '出话为聊天类的聊天数量 (module != faq, module != backfill)',
  `std_ans_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '出话为业务类, 并给出标准答案的数量 (module = faq)',
  `sensitive_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '用户问句命中敏感词的数量',
  `backfill_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '无法回答的数量',
  `solved_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '业务类中标记为解决的问答数量',
  `unsolved_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '业务类中标记为未解决的问答数量',
  `top_std_q` mediumtext COMMENT '纪录top n标准问题的内容及资讯',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `top_unmatch_q` mediumtext COMMENT '纪录top n未匹配问题的内容及资讯',
  `top_unresolved_q` mediumtext COMMENT '纪录top n未解決问题的内容及资讯',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1760 DEFAULT CHARSET=utf8 COMMENT='统计资料';

-- --------------------------------------------------------

--
-- 資料表結構 `static_record_info`
--

DROP TABLE IF EXISTS `static_record_info`;
CREATE TABLE IF NOT EXISTS `static_record_info` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `unique_id` varchar(100) NOT NULL DEFAULT '' COMMENT 'chat_record id',
  `qa_solved` tinyint(1) NOT NULL DEFAULT '0' COMMENT '纪录被标记为解决or未解决',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标记对话结果为解决或未解决';

-- --------------------------------------------------------

--
-- 資料表結構 `static_user`
--

DROP TABLE IF EXISTS `static_user`;
CREATE TABLE IF NOT EXISTS `static_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `app_id` char(64) NOT NULL,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '使用者id',
  `first_chat` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '纪录第一次使用系统时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='用户使用纪录';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

