#!/bin/sh

map_count=$(cat /proc/sys/vm/max_map_count)
if [[ $map_count -lt 262144 ]]; then
	echo "max_map_count size is "$map_count.
	echo "please execute: 'sudo sysctl -w vm.max_map_count=262144'"
	exit 1
fi
