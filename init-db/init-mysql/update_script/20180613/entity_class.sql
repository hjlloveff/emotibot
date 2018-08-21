-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- 主機: 172.17.0.1
-- 產生時間： 2018 年 06 月 13 日 10:53
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

-- --------------------------------------------------------

--
-- 資料表結構 `entity_class`
--

CREATE TABLE `entity_class` (
  `id` int(20) NOT NULL,
  `appid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(20) DEFAULT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `intent_engine` tinyint(1) NOT NULL DEFAULT '1',
  `rule_engine` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `entity_class`
--

INSERT INTO `entity_class` (`id`, `appid`, `name`, `pid`, `editable`, `intent_engine`, `rule_engine`, `created_at`) VALUES
(152, 'csbot', '敏感词库', NULL, 1, 0, 1, '2018-06-13 07:07:00');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `entity_class`
--
ALTER TABLE `entity_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_appid` (`appid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `entity_class`
--
ALTER TABLE `entity_class`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

