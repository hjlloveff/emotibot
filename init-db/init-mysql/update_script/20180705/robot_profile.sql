-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- 主機: 172.17.0.1
-- 產生時間： 2018 年 07 月 05 日 04:19
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
CREATE DATABASE IF NOT EXISTS `emotibot` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emotibot`;

-- --------------------------------------------------------

--
-- 資料表結構 `robot_profile_answer`
--

CREATE TABLE IF NOT EXISTS `robot_profile_answer` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '答案id',
  `appid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '机器人id',
  `qid` int(10) NOT NULL COMMENT '关连问题id',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '答案内容',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `content` (`content`),
  KEY `IDX_a_id` (`id`),
  KEY `answer_parent_q_id` (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `robot_profile_extend`
--

CREATE TABLE IF NOT EXISTS `robot_profile_extend` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '扩展问id',
  `appid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '机器人id',
  `qid` int(10) NOT NULL COMMENT '关连问题id',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '问题内容',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `content` (`content`),
  KEY `IDX_q_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='机器人形象扩展问题';

-- --------------------------------------------------------

--
-- 資料表結構 `robot_profile_question`
--

CREATE TABLE IF NOT EXISTS `robot_profile_question` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '机器人形象问题',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '问题内容',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `content` (`content`),
  KEY `IDX_q_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='机器人形象问题';

--
-- 資料表的匯出資料 `robot_profile_question`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

