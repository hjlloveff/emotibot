#!/bin/bash

WORK_PATH=$(dirname "$0")
INFRA_PREFIX="docker-compose -f $WORK_PATH/../docker-compose/docker-compose-infra.yaml -f docker-compose-infra.yaml"
MODULE_PREFIX="docker-compose -f $WORK_PATH/../docker-compose/docker-compose-module.yaml -f docker-compose-module.yaml"
INFRA_UP=$INFRA_PREFIX" up -d"
MODULE_UP=$MODULE_PREFIX" up -d"

INFRA_DOWN=$INFRA_PREFIX" down"
MODULE_DOWN=$MODULE_PREFIX" down"
INIT_UP="docker-compose -f $WORK_PATH/../docker-compose/docker-compose-tool.yaml -f docker-compose-init.yaml up init-db"

echo $INFRA_UP
echo $INIT_UP

$WORK_PATH/./refresh-env.sh
if [[ $? -ne 0 ]]; then
    exit $?
fi

$WORK_PATH/../docker-compose/script/./system-check.sh
if [[ $? -ne 0 ]]; then
    exit 1
fi

echo "[ -------- 1.   only install DB enter                    -------- ]"
echo "[ -------- 1-1. only install DB (init all data) enter    -------- ]"
echo "[ -------- 2.   only install Module enter                -------- ]"
echo "[ -------- 3.   All-in-one  enter                        -------- ]"
echo "[ -------- 3-1. All-in-one (init all data) enter         -------- ]"
echo "[ -------- 4.   only remove DB enter                     -------- ]"
echo "[ -------- 5.   only remove Module enter                 -------- ]"
echo "[ -------- 6.   All remove  enter                        -------- ]"

read mode

echo "mode:"$mode

if [ $mode == "1" ]; then
	echo "[ -------- only install DB -------- ]"
        eval $INFRA_UP
elif [ $mode == "1-1" ]; then
	echo "[ -------- only install DB (init all data) -------- ]"
        eval $INFRA_UP && eval $INIT_UP
elif [ $mode == "2" ]; then
	echo "[ -------- only install Module -------- ]"
        eval $MODULE_UP
elif [ $mode == "3" ]; then
	echo "[ -------- deploy All-in-one  -------- ]"
        eval $INFRA_UP && eval $MODULE_UP
elif [ $mode == "3-1" ]; then
	echo "[ -------- deploy All-in-one (init all data) -------- ]"
        eval $INFRA_UP && eval $INIT_UP && eval $MODULE_UP
elif [ $mode == "4" ]; then
	echo "[ -------- only remove DB  -------- ]"
        eval $INFRA_DOWN
elif [ $mode == "5" ]; then
	echo "[ -------- only remove Module  -------- ]"
        eval $MODULE_DOWN
elif [ $mode == "6" ]; then
	echo "[ -------- Remove All-in-one  -------- ]"
        eval $INFRA_DOWN
        eval $MODULE_DOWN
else
	echo "[ -------- bye -------- ]"

fi
. $WORK_PATH/../docker-compose/script/add-release-versions.sh
parse_yaml $WORK_PATH/../docker-compose/docker-compose-infra.yaml
parse_yaml $WORK_PATH/../docker-compose/docker-compose-module.yaml
add_deploy_info


