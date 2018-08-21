#!/bin/bash

if [ "${INIT_MONGO_CLUSTER}" == "true" ] || [ "${INIT_MYSQL_CLUSTER}" == "TRUE" ] ; then
        cd /usr/src/app/init-monogo-cluster  \
        && ./setup.sh \
        && ./setup-cnf.sh \
        && ./init-shard.sh
fi

if [ "${INIT_MYSQL_INIT}" == "true" ] || [ "${INIT_MYSQL_INIT}" == "TRUE" ] ; then
	cd /usr/src/app/init-mysql && ./init_mysql.sh
fi

if [ "${INIT_MONGO_INIT}" == "true" ] || [ "${INIT_MONGO_INIT}" == "TRUE" ] ; then
	cd /usr/src/app/init-mongo && ./init_mongo.sh
fi

if [ "${INIT_ELASTICSEARCH_INIT}" == "true" ] || [ "${INIT_ELASTICSEARCH_INIT}" == "TRUE" ] ; then
	cd /usr/src/app/init-elasticsearch && ./entrypoint.sh
fi

if [ "${INIT_TDE_INIT}" == "true" ] || [ "${INIT_TDE_INIT}" == "TRUE" ] ; then
	cd /usr/src/app/init-tde && ./entrypoint.sh
fi

