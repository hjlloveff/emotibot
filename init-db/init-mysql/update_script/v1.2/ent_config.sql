use emotibot;

UPDATE `emotibot`.`ent_config` SET `value`='{\n \"items\": [{\n  \"name\": \"candidate\",\n  \"value\": 5\n }, {\n  \"name\": \"seg_url\",\n  \"value\": \"http://172.17.0.1:13901\"\n }, {\n  \"name\": \"rank\",\n  \"value\": [{\n   \"dependency\": [{\n    \"name\": \"ml\",\n    \"weight\": 1\n   }],\n   \"order\": 1,\n   \"source\": \"ml\",\n   \"threadholds\": 97\n  }, {\n   \"dependency\": [{\n    \"name\": \"se\",\n    \"weight\": 0.300000\n   }, {\n    \"name\": \"w2v\",\n    \"weight\": 0.600000\n   }, {\n    \"name\": \"solr\",\n    \"weight\": 0.100000\n   }],\n   \"order\": 2,\n   \"source\": \"qq\",\n   \"threadholds\": 85\n  }]\n }, {\n  \"name\": \"dependency\",\n  \"value\": [{\n   \"candidate\": 30,\n   \"clazz\": \"SSMDependencySolr\",\n   \"enabled\": true,\n   \"method\": \"get\",\n   \"name\": \"solr\",\n   \"order\": 1,\n   \"parameters\": \"p\",\n   \"result\": [{\n    \"answer\": \"@[d]/answer_list[0]\",\n    \"keywords\": \"@[d]/keywords\",\n    \"matchQuestion\": \"@[d]/question\",\n    \"question_id\": \"@[d]/question_id:int\",\n    \"score\": \"@[d]/score:~toPercent\",\n    \"source\": \"solr\",\n    \"stop_words\": \"@[d]/stop_words\",\n    \"tokens\": \"@[d]/tokens\"\n   }],\n   \"timeout\": 60000,\n   \"url\": \"http://172.17.0.1:8081/solr\"\n  }, {\n   \"candidate\": 5,\n   \"enabled\": true,\n   \"method\": \"POST\",\n   \"name\": \"ml\",\n   \"order\": 2,\n   \"parameters\": {\n    \"candidate\": \"@candidate\",\n    \"data\": \"@Text\",\n    \"model\": \"@model\"\n   },\n   \"result\": [{\n    \"answer\": \"@result/predict\",\n    \"matchQuestion\": \"@result/predict\",\n    \"score\": \"@result/score\",\n    \"source\": \"ML\"\n   }],\n   \"timeout\": 60000,\n   \"url\": \"@model_predict_url\"\n  }, {\n   \"enabled\": true,\n   \"formData\": false,\n   \"method\": \"POST\",\n   \"name\": \"se\",\n   \"order\": 2,\n   \"parameters\": {\n    \"match_q\": [\"@solr[d]/matchQuestion\"],\n    \"user_q\": \"@Text\"\n   },\n   \"result\": [{\n    \"answer\": \"@solr[d]/answer\",\n    \"matchQuestion\": \"@solr[d]/matchQuestion\",\n    \"score\": \"@Msg/{d}:~toPercent\",\n    \"source\": \"SE\"\n   }],\n   \"timeout\": 60000,\n   \"url\": \"http://172.17.0.1:15601/similar\"\n  }, {\n   \"enabled\": true,\n   \"formData\": false,\n   \"method\": \"POST\",\n   \"name\": \"w2v\",\n   \"order\": 2,\n   \"parameters\": [{\n    \"src\": {\n     \"src_kw\": \"@nlp/key_words:~joinByComma\",\n     \"src_seg\": \"@nlp/tokens:~joinByComma\",\n     \"stoplist\": \"@nlp/stop_words:~joinByComma\"\n    },\n    \"tar\": [{\n     \"id\": \"{d}\",\n     \"tar_kw\": \"@solr[d]/keywords:~joinByComma\",\n     \"tar_seg\": \"@solr[d]/tokens:~joinByComma\"\n    }]\n   }],\n   \"result\": [{\n    \"answer\": \"@solr[d]/answer\",\n    \"matchQuestion\": \"@solr[d]/matchQuestion\",\n    \"score\": \"@scores/{d}:~toPercent\",\n    \"source\": \"w2v\"\n   }],\n   \"timeout\": 60000,\n   \"url\": \"http://172.17.0.1:11501/partial_w2v\"\n  }]\n }]\n}' WHERE `name`='ssm_config';

DELETE FROM `ent_config_appid_customization` WHERE `ent_config_appid_customization`.`name` = 'ssm_config';
UPDATE `ent_config_version` SET `version_value` = NOW();
