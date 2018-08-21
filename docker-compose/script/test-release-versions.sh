#!/bin/sh

. $(dirname "$0")/add-release-versions.sh
parse_yaml docker-compose-infra.yaml
parse_yaml docker-compose-module.yaml

add_deploy_info
