use backend_logs;
ALTER TABLE `chat_record` ADD `session_id` VARCHAR(64) NOT NULL COMMENT '会话id' AFTER `user_id`;
ALTER TABLE `records` ADD `session_id` VARCHAR(64) NOT NULL AFTER `user_id`;
