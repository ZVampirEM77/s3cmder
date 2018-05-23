#!/bin/bash

if [ "$#" -eq 4 ] ; then
    ACCESS_KEY=$1
    SECRET_KEY=$2
    RUNNER_NAME=$3
    HOST=$4
else
    if [ "$#" -eq 2 ] ; then
        echo "AccessKey, SecretKey, RunnerName will all be set to $1"
        ACCESS_KEY=$1
        SECRET_KEY=$1
        RUNNER_NAME=$1
        HOST=$2
    else
        echo "Error Input Parameters!"
        exit
    fi
fi

if [ ! -d "conf" ] ; then
    mkdir conf
fi

sh ums3setter.sh $ACCESS_KEY $SECRET_KEY $RUNNER_NAME $HOST

chmod 700 $RUNNER_NAME


APPEND_CONF="export PATH=$PWD:\$PATH"
if [ `grep -c "$APPEND_CONF" ~/.bashrc` -eq '0' ] ; then
    echo $APPEND_CONF >> ~/.bashrc
else
    echo "The Path configuration has existed!"
fi

source ~/.bashrc
