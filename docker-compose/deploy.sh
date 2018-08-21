#!/bin/bash

$(dirname "$0")/script/./system-check.sh
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
	docker-compose -f docker-compose-infra.yaml up -d
elif [ $mode == "1-1" ]; then
	echo "[ -------- only install DB (init all data) -------- ]"
	docker-compose -f docker-compose-infra.yaml up -d
	docker-compose -f docker-compose-tool.yaml up init-db

elif [ $mode == "2" ]; then
	echo "[ -------- only install Module -------- ]"
	docker-compose -f docker-compose-module.yaml up -d
elif [ $mode == "3" ]; then
	echo "[ -------- deploy All-in-one  -------- ]"
	docker-compose -f docker-compose-infra.yaml up -d
	docker-compose -f docker-compose-module.yaml up -d
elif [ $mode == "3-1" ]; then
	echo "[ -------- deploy All-in-one (init all data) -------- ]"
	docker-compose -f docker-compose-infra.yaml up -d
	docker-compose -f docker-compose-tool.yaml up init-db
	docker-compose -f docker-compose-module.yaml up -d
elif [ $mode == "4" ]; then
	echo "[ -------- only remove DB  -------- ]"
        docker-compose -f docker-compose-infra.yaml down

elif [ $mode == "5" ]; then
	echo "[ -------- only remove Module  -------- ]"
	docker-compose -f docker-compose-module.yaml down
	
elif [ $mode == "6" ]; then
	echo "[ -------- Remove All-in-one  -------- ]"
	docker-compose -f docker-compose-infra.yaml down 
	docker-compose -f docker-compose-module.yaml down
else
	echo "[ -------- bye -------- ]"

fi

. $(dirname "$0")/script/add-release-versions.sh
parse_yaml docker-compose-infra.yaml
parse_yaml docker-compose-module.yaml
add_deploy_info
