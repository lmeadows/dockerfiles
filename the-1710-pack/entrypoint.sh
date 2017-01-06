#!/bin/bash

static_files=( "server.properties" "banned-ips.json" "banned-players.json" "ops.json" "whitelist.json" "config" "hats" "world" "logs" "structures" )
static_dirs=( "config" "hats" "world" "logs" "structures" )


for i in "${static_files[@]}"
do
    SRC=/app/$i
    DST=/data/$i

    if [[ ! -L "$SRC" ]]; then
        echo doing $SRC
        if [[ " ${array[@]} " =~ " $i " ]]; then
            echo mkdir -p $SRC
            mkdir -p $SRC
        else
            echo touch $SRC
            touch $SRC
        fi
        echo move+symlink $SRC
        mv $SRC $DST
        ln -s $DST $SRC
    fi
done


if [ "$#" -ne 1 ]; then
    java -server -Xmx4G -XX:PermSize=256M -Dfml.queryResult=confirm -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar
else
    $@
fi
