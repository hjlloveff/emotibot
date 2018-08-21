#!/bin/bash

if [[ ${#INIT_MONGO_HOST} == 0 ]]; then
	INIT_MONGO_HOST=172.17.0.1
fi
if [[ ${#INIT_MONGO_PORT} == 0 ]]; then
	INIT_MONGO_PORT=27017
fi

until curl -sS $INIT_MONGO_HOST":"$INIT_MONGO_PORT &> /dev/null; do echo "wait mongo" && sleep 3; done

if [[ ${#INIT_MONGO_USER} == 0 ]] || [[ ${#INIT_MONGO_PASS} == 0 ]]; then
	mongorestore -h $INIT_MONGO_HOST --port $INIT_MONGO_PORT -d dataprocess --drop dataprocess
else
	mongorestore -u $INIT_MONGO_USER -p $INIT_MONGO_PASS -h $INIT_MONGO_HOST --port $INIT_MONGO_PORT -d dataprocess --drop dataprocess
fi

