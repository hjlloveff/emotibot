#!/bin/bash 

#mongodb1=`getent hosts ${MONGOS} | awk '{ print $1 }'`
mongodb1=${MONGOS1}
mongodb2=${MONGOS2}
mongodb3=${MONGOS3}
#mongodb11=`getent hosts ${MONGO11} | awk '{ print $1 }'`
#mongodb12=`getent hosts ${MONGO12} | awk '{ print $1 }'`
#mongodb13=`getent hosts ${MONGO13} | awk '{ print $1 }'`
mongodb11=${MONGO11}
mongodb12=${MONGO12}
mongodb13=${MONGO13}

#mongodb21=`getent hosts ${MONGO21} | awk '{ print $1 }'`
#mongodb22=`getent hosts ${MONGO22} | awk '{ print $1 }'`
#mongodb23=`getent hosts ${MONGO23} | awk '{ print $1 }'`

#mongodb31=`getent hosts ${MONGO31} | awk '{ print $1 }'`
#mongodb32=`getent hosts ${MONGO32} | awk '{ print $1 }'`
#mongodb33=`getent hosts ${MONGO33} | awk '{ print $1 }'`

#port=${PORT:-27017}
port=${PORT_ROUTER}
echo "sleep 20 seconds...."
sleep 20s 

#echo "Waiting for startup.."
#until mongo --host ${mongodb1}:${port} --eval 'quit(db.runCommand({ ping: 1 }).ok ? 0 : 2)' &>/dev/null; do
#  printf '.'
#  sleep 1
#done

echo "Started.."

echo init-shard.sh time now: `date +"%T" `
mongo --host ${mongodb1}:${port} <<EOF
   sh.addShard( "${RS1}/${mongodb11}:${PORT1},${mongodb12}:${PORT2},${mongodb13}:${PORT3}" );
   sh.status();
EOF

mongo --host ${mongodb2}:${port} <<EOF
   sh.addShard( "${RS1}/${mongodb11}:${PORT1},${mongodb12}:${PORT2},${mongodb13}:${PORT3}" );
   sh.status();
EOF

mongo --host ${mongodb3}:${port} <<EOF
   sh.addShard( "${RS1}/${mongodb11}:${PORT1},${mongodb12}:${PORT2},${mongodb13}:${PORT3}" );
   sh.status();
EOF
