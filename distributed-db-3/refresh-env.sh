source host.env

# ==================================================================
# host test
# ==================================================================
echo "Host testing..."
ping -c 1 $DB_HOST_1 > /dev/null
if [[ $? -ne 0 ]]; then
    echo "Error ping "$DB_HOST_1": connection refused"
    exit 1
fi
ping -c 1 $DB_HOST_2 > /dev/null 
if [[ $? -ne 0 ]]; then
    echo "Error ping "$DB_HOST_2": connection refused"
    exit 1
fi
ping -c 1 $DB_HOST_3 > /dev/null 
if [[ $? -ne 0 ]]; then
    echo "Error ping "$DB_HOST_3": connection refused"
    exit 1
fi

echo "Host test done."
# ==================================================================
# set .env (infra)
# ==================================================================

rm -f .env
cat host.env > .env
myid=0
found=$(ifconfig | grep $DB_HOST_1)
if [[ ${#found} > 0 ]]; then
    myid=1 
    echo "DB_HOST_SELF=$DB_HOST_1" >> .env
    echo "DB_MYSQL_FIRST=yes" >> .env
    echo "DB_CONSUL_CMD=-bootstrap-expect=1" >> .env
    echo "DB_MYSQL_TYPE=master" >> .env
    echo "DB_MYSQL_EXERA_HOSTS=mysqlmgr$myid" >> .env
fi

found=$(ifconfig | grep $DB_HOST_2)
if [[ ${#found} > 0 ]]; then
    myid=2
    echo "DB_MYSQL_FIRST=no" >> .env
    echo "DB_HOST_SELF=$DB_HOST_2" >> .env
    echo "DB_CONSUL_CMD=-join "$DB_HOST_1 >> .env
    echo "DB_MYSQL_TYPE=slave" >> .env
    echo "DB_MYSQL_EXERA_HOSTS=mysqlmgr$myid" >> .env
fi

found=$(ifconfig | grep $DB_HOST_3)
if [[ ${#found} > 0 ]]; then
    myid=3
    echo "DB_MYSQL_FIRST=no" >> .env
    echo "DB_HOST_SELF=$DB_HOST_3" >> .env
    echo "DB_CONSUL_CMD=-join "$DB_HOST_1 >> .env
    echo "DB_MYSQL_TYPE=slave" >> .env
    echo "DB_MYSQL_EXERA_HOSTS=mysqlmgr$myid">> .env
fi

if [[ 0 == $myid ]]; then
    echo "host ip not found"
    exit 1
fi

echo "DB_HOST_ID=$myid" >> .env

