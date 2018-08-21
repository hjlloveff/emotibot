-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- 主機: 172.17.0.1
-- 產生時間： 2018 年 06 月 14 日 09:15
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
-- 資料表結構 `audit_record`
--

DROP TABLE IF EXISTS `audit_record`;
CREATE TABLE IF NOT EXISTS `audit_record` (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'audit id',
  `appid` char(36) NOT NULL,
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '进行修改的登录用户id',
  `ip_source` varchar(32) NOT NULL DEFAULT '' COMMENT '使用者IP',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改记录创建时间',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '操作模组',
  `operation` varchar(32) NOT NULL DEFAULT '' COMMENT '操作类型',
  `content` mediumtext COMMENT '操作变更纪录',
  `result` tinyint(1) NOT NULL DEFAULT '0' COMMENT '操作结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2037 DEFAULT CHARSET=utf8 COMMENT='记录管理界面上所有新增、编辑、删除、汇入、汇出动作';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

