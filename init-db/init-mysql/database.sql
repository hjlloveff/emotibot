DROP database IF EXISTS backend_log;
create database backend_log;
DROP database IF EXISTS emotibot;
create database emotibot;
DROP database IF EXISTS auth;
create database auth;

SET GLOBAL event_scheduler = 1;
SET GLOBAL log_bin_trust_function_creators = 1;
SET GLOBAL max_connections=1000;
