#!/bin/bash

#mongodb1=`getent hosts ${MONGO1} | awk '{ print $1 }'`
#mongodb2=`getent hosts ${MONGO2} | awk '{ print $1 }'`
#mongodb3=`getent hosts ${MONGO3} | awk '{ print $1 }'`
mongodb1=${MONGO1}
mongodb2=${MONGO2}
mongodb3=${MONGO3}

echo "mongodb1 = ${mongodb1}"
echo "mongodb2 = ${mongodb2}"
echo "mongodb3 = ${mongodb3}"
echo "--------------------------"
#port=${PORT-SHARD:-27017}
port=${PORT_SHARD}
echo "port =${port}"
echo "id value =${RS}"
echo "--------------------------"
#echo "Waiting for startup.."
#until mongo --host ${mongodb1}:${port} --eval 'quit(db.runCommand({ ping: 1 }).ok ? 0 : 2)' &>/dev/null; do
#  printf '.'
#  sleep 1
#done

echo "Started.."

echo setup.sh time now: `date +"%T" `
mongo --host ${mongodb1}:${port} <<EOF
   var cfg = {
        "_id": "${RS}",
        "members": [
            {
                "_id": 0,
                "host": "${mongodb1}:${port}"
            },
            {
                "_id": 1,
                "host": "${mongodb2}:${port}"
            },
            {
                "_id": 2,
                "host": "${mongodb3}:${port}"
            }
        ]
    };
    rs.initiate(cfg, { force: true });
    rs.reconfig(cfg, { force: true });
EOF
