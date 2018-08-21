#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <module prefix>";
  exit 1
fi

yaml=docker-compose-infra.yaml
module=$(cat $yaml | grep $1 | head -n1 | sed -e 's/://g')
if [[ "" == $module ]]; then
    yaml=docker-compose-module.yaml
    module=$(cat $yaml | grep $1 | head -n1 | sed -e 's/://g')
fi

if [[ "" == $module ]]; then
    yaml=docker-compose-tool.yaml
    module=$(cat $yaml | grep $1 | head -n1 | sed -e 's/://g')
fi

if [[ "" == $module ]]; then
    exit 1
fi

echo "restart "$module "(Y/n)?"
read answer
if [[ "$answer" == "y" ]] || [[ "$answer" == "Y" ]] || [[ -z "$answer" ]]; then
    if [[ $module =~ "init-db" ]] || [[ $module =~ "test-script" ]]; then
        CMD="docker-compose -f $yaml up --force-recreate $module"
    else
        CMD="docker-compose -f $yaml up -d --force-recreate --build $module"
    fi
    docker-compose -f $yaml pull $module && docker-compose -f $yaml stop $module && eval $CMD
fi

. $(dirname "$0")/script/add-release-versions.sh
parse_yaml docker-compose-infra.yaml
parse_yaml docker-compose-module.yaml
add_deploy_info
