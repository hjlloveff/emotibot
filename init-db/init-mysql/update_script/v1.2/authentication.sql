use auth;
INSERT INTO `modules` (`code`, `name`, `enterprise`, `cmd_list`, `description`, `status`, `created_time`)
VALUES
	('intent_manage', '', NULL, 'view,export,import', '', 1, CURRENT_TIMESTAMP());

DELETE FROM modules WHERE code = 'management';
