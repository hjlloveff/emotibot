-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- 主機: 172.17.0.1
-- 產生時間： 2018 年 06 月 06 日 08:33
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
-- 資料庫： `emotibot`
--
CREATE DATABASE IF NOT EXISTS `emotibot` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `emotibot`;

-- --------------------------------------------------------

--
-- 資料表結構 `cmd`
--

DROP TABLE IF EXISTS `cmd`;
CREATE TABLE IF NOT EXISTS `cmd` (
  `cmd_id` int(9) NOT NULL AUTO_INCREMENT,
  `appid` varchar(36) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '指令名字',
  `target` int(4) DEFAULT NULL COMMENT '0:问题1:答案',
  `rule` text COMMENT 'json [{"type":"keyword", "value": ["kw1","kw2"]}, {"type":"regex", "value": ["[1-5]"]}',
  `answer` text COMMENT 'json, 同问答库answer格式',
  `response_type` int(4) DEFAULT NULL COMMENT '0:取代, 1: 附加至前, 2:附加至后',
  `status` int(4) DEFAULT '0' COMMENT '0: 关闭1: 开启',
  `begin_time` datetime DEFAULT NULL COMMENT '生效时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`cmd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `cmd_robot_tag`
--

DROP TABLE IF EXISTS `cmd_robot_tag`;
CREATE TABLE IF NOT EXISTS `cmd_robot_tag` (
  `cmd_id` int(9) NOT NULL,
  `robot_tag_id` int(9) NOT NULL,
  PRIMARY KEY (`cmd_id`,`robot_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `entities`
--

DROP TABLE IF EXISTS `entities`;
CREATE TABLE IF NOT EXISTS `entities` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editable` tinyint(1) DEFAULT NULL,
  `cid` int(20) NOT NULL,
  `similar_words` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `entity_class`
--

DROP TABLE IF EXISTS `entity_class`;
CREATE TABLE IF NOT EXISTS `entity_class` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `appid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(20) DEFAULT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `intent_engine` tinyint(1) NOT NULL DEFAULT '1',
  `rule_engine` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_appid` (`appid`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `function_switch`
--

DROP TABLE IF EXISTS `function_switch`;
CREATE TABLE IF NOT EXISTS `function_switch` (
  `function_id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` char(36) NOT NULL DEFAULT '',
  `module_name` varchar(20) NOT NULL,
  `module_name_zh` varchar(20) NOT NULL,
  `third_url` text,
  `on_off` tinyint(1) NOT NULL DEFAULT '0',
  `remark` varchar(50) DEFAULT NULL,
  `intent` varchar(20) NOT NULL,
  `share` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`function_id`),
  KEY `appid_Idx` (`appid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `robot_answer`
--

DROP TABLE IF EXISTS `robot_answer`;
CREATE TABLE IF NOT EXISTS `robot_answer` (
  `a_id` int(4) NOT NULL AUTO_INCREMENT,
  `appid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_q_id` int(4) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`a_id`),
  KEY `content` (`content`),
  KEY `IDX_a_id` (`a_id`),
  KEY `answer_parent_q_id` (`parent_q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `robot_question`
--

DROP TABLE IF EXISTS `robot_question`;
CREATE TABLE IF NOT EXISTS `robot_question` (
  `q_id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `answer_count` smallint(5) DEFAULT '0',
  `content2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  PRIMARY KEY (`q_id`),
  KEY `content` (`content`),
  KEY `IDX_q_id` (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `robot_words`
--

DROP TABLE IF EXISTS `robot_words`;
CREATE TABLE IF NOT EXISTS `robot_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` int(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `robot_words_type`
--

DROP TABLE IF EXISTS `robot_words_type`;
CREATE TABLE IF NOT EXISTS `robot_words_type` (
  `type` int(4) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
