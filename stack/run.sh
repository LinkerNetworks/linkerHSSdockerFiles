#!/bin/bash

cd /linker/stack

./config.sh

echo "Stack Configured"

cd /linker/stack

./start.sh

echo "stack Started"
while :
do
    START_FLG=`ps aux | grep baoyun-hss | grep -v grep `
    if [ "x${START_FLG}"  == "x" ] 
    then

        cd /linker/stack
       ./start.sh

    fi
    sleep 5
done
