#!/bin/sh

if [[ ${#INIT_ELASTICSEARCH_HOST} == 0 ]]; then
	INIT_ELASTICSEARCH_HOST=172.17.0.1
fi

if [[ ${#INIT_ELASTICSEARCH_PORT} == 0 ]]; then
	INIT_ELASTICSEARCH_PORT=9200
fi

if [[ ${#INIT_ELASTICSEARCH_INDEX} == 0 ]]; then
	INIT_ELASTICSEARCH_INDEX=records
fi

until curl -sS $INIT_ELASTICSEARCH_HOST":"$INIT_ELASTICSEARCH_PORT &> /dev/null; do echo "Waiting Elasticsearch..." && sleep 3; done
echo -e "Delete index: "$INIT_ELASTICSEARCH_INDEX
curl -sS -XDELETE -H "Content-type:application/json" $INIT_ELASTICSEARCH_HOST":"$INIT_ELASTICSEARCH_PORT"/"$INIT_ELASTICSEARCH_INDEX
echo -e "\nCreate mapping for index: "$INIT_ELASTICSEARCH_INDEX
curl -sS -XPUT -H "Content-type:application/json" $INIT_ELASTICSEARCH_HOST":"$INIT_ELASTICSEARCH_PORT"/"$INIT_ELASTICSEARCH_INDEX -d @configs/mapping.json
echo -e "\nDone!!"
