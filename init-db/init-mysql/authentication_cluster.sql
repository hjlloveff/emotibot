# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.22)
# Database: anothertest
# Generation Time: 2018-06-12 09:32:07 +0000
# ************************************************************


/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth`;

START TRANSACTION;


DROP TABLE IF EXISTS `enterprises`;
CREATE TABLE `enterprises` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `human`;
CREATE TABLE `human` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `machine`;
CREATE TABLE `machine` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `count` bigint(20) DEFAULT NULL,
  `enterprise` char(32) NOT NULL DEFAULT '',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `enterprise of app` (`enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `robot_groups`;
CREATE TABLE `robot_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `enterprise` char(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `enterprise of group` (`enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `app_group`;
CREATE TABLE `app_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `robot_group` char(32) NOT NULL DEFAULT '',
  `app` char(32) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `app exist` (`robot_group`),
  KEY `app exists` (`app`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `columns`;
CREATE TABLE `columns` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `column` char(32) NOT NULL DEFAULT '',
  `display_name` varchar(64) NOT NULL DEFAULT '',
  `enterprise` char(32) NOT NULL DEFAULT '',
  `note` varchar(64) NOT NULL DEFAULT '',
  `ref` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `enterprise of custom column` (`enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL DEFAULT '',
  `display_name` varchar(64) NOT NULL DEFAULT '',
  `user_name` char(32) NOT NULL DEFAULT '',
  `email` char(255) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `enterprise` char(32) DEFAULT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `password` char(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `enterprise of user` (`enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` char(32) NOT NULL DEFAULT '',
  `name` varchar(36) NOT NULL DEFAULT '',
  `enterprise` char(32) DEFAULT '',
  `cmd_list` char(64) NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enterprise of modules` (`enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` char(32) NOT NULL DEFAULT '',
  `name` char(36) NOT NULL,
  `enterprise` char(32) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `enterprise of role` (`enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` bigint(20) NOT NULL,
  `module` bigint(20) NOT NULL,
  `cmd_list` char(64) NOT NULL DEFAULT '',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id of role` (`role`),
  KEY `id of module` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` char(36) NOT NULL DEFAULT '',
  `column_id` bigint(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user of info` (`user_id`),
  KEY `column of info` (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `user_privileges`;
CREATE TABLE `user_privileges` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `human` char(32) NOT NULL DEFAULT '',
  `machine` char(32) NOT NULL DEFAULT '',
  `role` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `human exist` (`human`),
  KEY `machine exist` (`machine`),
  KEY `role exist` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


LOCK TABLES `enterprises` WRITE;
INSERT INTO `enterprises` (`uuid`, `name`, `description`, `created_time`)
VALUES
  ('bb3e3925f0ad11e7bd860242ac120003','emotibot','','2018-06-12 17:23:15');
UNLOCK TABLES;

LOCK TABLES `machine` WRITE;
INSERT INTO `machine` (`uuid`)
VALUES
  ('csbot');
UNLOCK TABLES;

LOCK TABLES `human` WRITE;  
INSERT INTO `human` (`id`, `uuid`)
VALUES
  (1, '4b21158a395311e88a710242ac110003');
UNLOCK TABLES;

LOCK TABLES `users` WRITE;
INSERT INTO `users` (`uuid`, `display_name`, `user_name`, `email`, `phone`, `enterprise`, `type`, `password`, `status`, `created_time`)
VALUES
  ('4b21158a395311e88a710242ac110003','CSBOT','csbotadmin','csbotadmin@emotibot.com','','bb3e3925f0ad11e7bd860242ac120003',1,'ac04367d3155bb651df2e4220bdb8303',1,'2018-06-12 17:23:58'),
  ('4b21158a395311e88a710242ac110002','SYSTEM','deployer','admin@emotibot.com','',NULL,0,'7e2ba10110f719dd65a0403305770b08',1,'2018-06-12 17:23:58');
UNLOCK TABLES;

LOCK TABLES `apps` WRITE;
INSERT INTO `apps` (`uuid`, `name`, `status`, `description`, `start`, `end`, `count`, `enterprise`, `created_time`)
VALUES
  ('csbot','csbot',1,'',NULL,NULL,NULL,'bb3e3925f0ad11e7bd860242ac120003',CURRENT_TIMESTAMP());
UNLOCK TABLES;

LOCK TABLES `modules` WRITE;
INSERT INTO `modules` (`code`, `name`, `enterprise`, `cmd_list`, `description`, `status`, `created_time`)
VALUES
  ('statistic_dash', '', NULL, 'view', '', 1, CURRENT_TIMESTAMP()),
  ('ssm', '', NULL, 'view,edit,export,import', '', 1, CURRENT_TIMESTAMP()),
  ('qa_label', '', NULL, 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('task_engine', '', NULL, 'edit', '', 1, CURRENT_TIMESTAMP()),
  ('wordbank', '', NULL, 'view,edit,create,delete,export,import', '', 1, CURRENT_TIMESTAMP()),
  ('statistic_daily', '', NULL, 'view,export', '', 1, CURRENT_TIMESTAMP()),
  ('statistic_analysis', '', NULL, 'view,export', '', 1, CURRENT_TIMESTAMP()),
  ('statistic_audit', '', NULL, 'view,export', '', 1, CURRENT_TIMESTAMP()),
  ('robot_profile', '', NULL, 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('robot_chat_skill', '', NULL, 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('robot_function', '', NULL, 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('robot_command', '', NULL, 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('intent_manage', '', NULL, 'view,export,import', '', 1, CURRENT_TIMESTAMP()),
  ('statistic_dash', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view', '', 1, CURRENT_TIMESTAMP()),
  ('ssm', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,edit,export,import', '', 1, CURRENT_TIMESTAMP()),
  ('qa_label', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('task_engine', '', 'bb3e3925f0ad11e7bd860242ac120003', 'edit', '', 1, CURRENT_TIMESTAMP()),
  ('wordbank', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,edit,create,delete,export,import', '', 1, CURRENT_TIMESTAMP()),
  ('statistic_daily', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,export', '', 1, CURRENT_TIMESTAMP()),
  ('statistic_analysis', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,export', '', 1, CURRENT_TIMESTAMP()),
  ('statistic_audit', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,export', '', 1, CURRENT_TIMESTAMP()),
  ('robot_profile', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('robot_chat_skill', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('robot_function', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,edit', '', 1, CURRENT_TIMESTAMP()),
  ('robot_command', '', 'bb3e3925f0ad11e7bd860242ac120003', 'view,edit', '', 1, CURRENT_TIMESTAMP());
UNLOCK TABLES;
COMMIT;

