#!/bin/bash
mountdir=`cat *.*ml | grep infrastructure | grep -v '#'`
for i in $mountdir
do
  if [[ $i =~ "infrastructure" ]] && [[ ! -d $i ]]
    then
      mkdir -p ${i%%:*}
  fi
done
