UPDATE `ent_config` SET `value`='[]' WHERE `ent_config`.`name`= 'log_device';
UPDATE `ent_config` SET `value`='[]' WHERE `ent_config`.`name`= 'LOG_LEVEL';
UPDATE `ent_ai_algorithm` SET `default_config` = '{\"lr\": 0.01, \"epoch\": 100, \"ngram\": 2, \"negsample\": 50, \"topic\" : \"http://127.0.0.1:8895/ft_stdq_topic_map\", \"feiyewu_rate\":1.0, \"feiyewu_topic_rate\":0.3, \"pretrain_model\":\"vip_16w\"}' WHERE`ent_ai_algorithm`.`id` = 24;
