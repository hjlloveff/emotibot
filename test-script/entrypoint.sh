#!/bin/bash

printf "\e[31mmysql \e[0m \n"
echo "show databases;" > test.sql
mysql -u $TEST_MYSQL_USER -p$TEST_MYSQL_PASS -h $TEST_MYSQL_HOST -P $TEST_MYSQL_PORT < test.sql

printf "\e[31mmongo \e[0m \n"
echo "show dbs" > test.sql
mongo --host $TEST_MONGO_HOST --port $TEST_MONGO_PORT < test.sql

printf "\e[31mredis \e[0m \n"
redis-cli -a $TEST_REDIS_PASS -h $TEST_REDIS_HOST -p $TEST_REDIS_PORT ping

printf "\e[31msolr \e[0m \n"
curl -sS -X GET "http://"$TEST_SOLR_URL"/solr/3rd_core/select?q=database%3A%22csbot_other%22&rows=1&wt=json&indent=true"

printf "\e[31mconsul \e[0m \n"
curl -sS -X GET 'http://'$TEST_CONSUL_URL'/v1/catalog/service/solr'

printf "\n\e[31msentence-type \e[0m \n"
curl -sS -X GET "http://"$TEST_ST_URL"/getType?s=我不喜歡�"

printf "\n\e[31mcommon-parser-service \e[0m \n"
curl -sS -X GET 'http://'$TEST_CPS_URL'/common-parser-service?text=我想明天订一张去上海的机票&tags=time_module'

printf "\n\e[31mintent-support \e[0m \n"
curl -sS -X GET 'http://'$TEST_INTENT_URL'/intent/?sentence=%E8%AE%B2%E7%AC%91%E8%AF%9D'

printf "\n\e[31mfunction-intent \e[0m \n"
curl -sS -X GET 'http://'$TEST_F_INTENT_URL'/intent/?sentence=%E8%AE%B2%E7%AC%91%E8%AF%9D'

printf "\n\e[31memotion-support \e[0m \n"
curl -sS -X GET 'http://'$TEST_EMOTION_URL'/mood?uniqueID=123&sentence=%E6%B0%94%E6%AD%BB%E6%88%91'

printf "\n\e[31mwordtovecservice \e[0m \n"
curl -sS -X GET "http://"$TEST_W2V_URL"/qq_similarity?src=今天天气不错&tar=你觉得今天天气怎么样"

printf "\n\e[31mcustom-inference-service \e[0m \n"
curl -sS -X POST 'http://'$TEST_CIS_URL'/similar' -d '{ "user_q":"test1", "match_q":["test1","test2"] }'

printf "\n\e[31msnlu-all \e[0m \n"
curl -sS 'http://'$TEST_NLU_URL -H "Content-Type: application/json" -d '{"queries":["我喜  欢你"],"flags":"segment","appid":"csbot"}'

printf "\n\e[31mfaq-module-20 \e[0m \n"
curl -sS 'http://'$TEST_FAQ_URL -H "Content-Type: application/json" -d '{"Text":"DemoQ","UserId":"123","Robot":"csbot", "UniqueId":"111"}'

printf "\n\e[31mchat-service \e[0m \n"
curl -sS -X GET "http://"$TEST_CHAT_URL"/chat?robot=csbot&uuId=xxxxx&userId=xxxx&userQ=%E4%BD%A0%E7%9A%84%E7%94%9F%E6%97%A5%E6%98%AF"

printf "\n\e[31mtask-engine \e[0m \n"
curl -sS -X POST -d '{"AppID": "csbot", "UserID": "0", "CU": {}, "Intent": "", "Text": "%E6%88%91%E8%A6%81%E7%9C%8B%E5%A4%A7%E8%A9%B1%E8%A5%BF%E9%81%8A=", "QualifiedScenarioIDs": ["60db8b29-1005-4bc8-92a2-c4605d9a75c3"]}' 'http://'$TEST_TASK_URL'/task_engine/ET'

printf "\n\e[31memotibot-controller-20 \e[0m \n"
curl -sS -X POST -d '{"userId":"123", "uniqueId":"123", "question":"你的生日是", "robotId":"csbot"}'  'http://'$TEST_EC_URL'/v1/QAtest'

printf "\n\e[31mbot-bot-factory-backend-service \e[0m \n"
curl -sS -X GET $TEST_BFB_URL'/_health_check'

printf "\n\e[31mrobotwriter \e[0m \n"
curl -sS -X GET $TEST_RW_URL'/V2/weather?city_name=北京'

printf "\n\e[31mfunction-content \e[0m \n"
curl -sS -X GET $TEST_FC_URL"/exchange/V1/query?do=currency_by_code&from=JPY&to=BHD"

printf "\n\e[31mfunction-web-service \e[0m \n"
curl -sS -X POST -d '{"Text0":"1-1","Text1":"1-1","Text1_Old":"1-1","UserID":"787a1b57da75fa43bacb49339bcd3b25","UniqueID":"20180413102536961835647","robot":"csbot","AfterRewriteInfo":{"intent_zoo":{"ver":"1.0.0","res":[{"item":"做，算术","score":90.0,"other_info":[]}],"status":"OK"},"CustomCU":[{"type":"userDefine","intent":{"ver":"1.0.5","res":[],"status":"OK"}}]},"CustomCU":[]}' -H "Content-Type: application/json"  'http://'$TEST_FUN_URL'/function/post'

printf "\n\e[31mtask-parser \e[0m \n"
curl -sS -X POST -d '{"text": "明天北京到上海的机票", "tags": ["from_place", "to_place", "depart_date", "arrive_date", "return_date"]}' 'http://'$TEST_TP_URL'/tags/parser'

printf "\n\e[31mfaq-module-dal \e[0m \n"
curl -sS -X POST -d '{"op": "query","category": "appid","data": {"subop": "conditionsSubop","conditions": {}}}' 'http://'$TEST_DAL_URL'/dal'

printf "\n\e[31mparser-service \e[0m \n"
curl -sS -X GET 'http://'$TEST_PS_URL'/parser?text=10号天气不错,十五号入住,住两天,花费300左右&tags=checkindate'

printf "\n\e[31madmin-ui \e[0m \n"
curl -sS -X GET $TEST_ADMIN_URL'/api/v1/ui/decrypt?text=9GwWQvCzROQ='

printf "\n\e[31msimple-ft-service \e[0m \n"
curl -sS -X GET 'http://'$TEST_ML_URL'/similar?user_q=user_q&match_q=match_q'
printf "\n"

