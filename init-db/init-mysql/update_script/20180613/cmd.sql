-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- 主機: 172.17.0.1
-- 產生時間： 2018 年 06 月 14 日 07:50
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
CREATE TABLE `cmd` (
  `cmd_id` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `appid` varchar(36) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '指令名字',
  `target` int(4) DEFAULT NULL COMMENT '0:问题1:答案',
  `rule` text COMMENT 'json [{"type":"keyword", "value": ["kw1","kw2"]}, {"type":"regex", "value": ["[1-5]"]}',
  `answer` text COMMENT 'json, 同问答库answer格式',
  `response_type` int(4) DEFAULT NULL COMMENT '0:取代, 1: 附加至前, 2:附加至后',
  `status` int(4) DEFAULT '0' COMMENT '0: 关闭1: 开启',
  `begin_time` datetime DEFAULT NULL COMMENT '生效时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `cmd_class`
--

DROP TABLE IF EXISTS `cmd_class`;
CREATE TABLE `cmd_class` (
  `id` int(11) NOT NULL,
  `appid` char(36) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `cmd_robot_tag`
--

DROP TABLE IF EXISTS `cmd_robot_tag`;
CREATE TABLE `cmd_robot_tag` (
  `cmd_id` int(11) NOT NULL,
  `robot_tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `cmd`
--
ALTER TABLE `cmd`
  ADD PRIMARY KEY (`cmd_id`);

--
-- 資料表索引 `cmd_class`
--
ALTER TABLE `cmd_class`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `cmd_robot_tag`
--
ALTER TABLE `cmd_robot_tag`
  ADD PRIMARY KEY (`cmd_id`,`robot_tag_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cmd`
--
ALTER TABLE `cmd`
  MODIFY `cmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `cmd_class`
--
ALTER TABLE `cmd_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
