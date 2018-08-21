#!/bin/bash

REPO=docker-reg.emotibot.com.cn:55688
CONTAINER=init-elasticsearch
DATE=`date +%Y%m%d`
GIT_HEAD="$(git rev-parse --short HEAD)"
TAG=$1

if [ "$TAG" == "" ]; then
    TAG="$DATE-$GIT_HEAD"
elif [ "$TAG" == "LR" ]; then
    TAG=$LAST_RELEASE_TAG
fi

DOCKER_IMAGE=$REPO/$CONTAINER:$TAG

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GOSRCPATH="$(cd "$DIR/../" && pwd )"
BUILDROOT=$DIR/../

# Build docker
cmd="docker build \
  -t $DOCKER_IMAGE \
  -f $DIR/Dockerfile $BUILDROOT"
echo $cmd
eval $cmd

cmd="docker tag $DOCKER_IMAGE $REPO/$CONTAINER:latest"
echo $cmd
eval $cmd
