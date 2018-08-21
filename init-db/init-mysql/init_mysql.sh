#!/bin/bash
#make sure are put under /home/deployer/sqls
if [[ ${#INIT_MYSQL_HOST} == 0 ]]; then
	INIT_MYSQL_HOST=172.17.0.1
fi
if [[ ${#INIT_MYSQL_PORT} == 0 ]]; then
	INIT_MYSQL_PORT=3306
fi

if [[ ${#INIT_MYSQL_USER} == 0 ]]; then
	INIT_MYSQL_USER=root
fi
if [[ ${#INIT_MYSQL_PASSWORD} == 0 ]]; then
	INIT_MYSQL_PASSWORD=password
fi

until curl -sS $INIT_MYSQL_HOST":"$INIT_MYSQL_PORT &> /dev/null; do echo "wait mysql" && sleep 3; done
mysql -h$INIT_MYSQL_HOST -P$INIT_MYSQL_PORT -u$INIT_MYSQL_USER -p$INIT_MYSQL_PASSWORD < database.sql
mysql -h$INIT_MYSQL_HOST -P$INIT_MYSQL_PORT -u$INIT_MYSQL_USER -p$INIT_MYSQL_PASSWORD < authentication_cluster.sql
mysql -h$INIT_MYSQL_HOST -P$INIT_MYSQL_PORT -u$INIT_MYSQL_USER -p$INIT_MYSQL_PASSWORD < backend_log.sql
mysql -h$INIT_MYSQL_HOST -P$INIT_MYSQL_PORT -u$INIT_MYSQL_USER -p$INIT_MYSQL_PASSWORD < emotibot_schema.sql
mysql -h$INIT_MYSQL_HOST -P$INIT_MYSQL_PORT -u$INIT_MYSQL_USER -p$INIT_MYSQL_PASSWORD < emotibot_data.sql
mysql -h$INIT_MYSQL_HOST -P$INIT_MYSQL_PORT -u$INIT_MYSQL_USER -p$INIT_MYSQL_PASSWORD < task-engine.sql
