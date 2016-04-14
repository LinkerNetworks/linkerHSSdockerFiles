#!/bin/bash

nohup /usr/bin/memcached -u memcached -p 11211 -m 64 -c 1024 >/dev/null 2>memcache.log &

echo "memcached started"

cd $HSS_HOME

./start.sh

echo "Hss Started"
