#!/bin/bash

IP=$(curl ipv4.icanhazip.com)

trap "exit 0" SIGINT SIGTERM

while true;
do
	LOAD=$(cat /proc/loadavg | tr '.' ' ' | awk '{print $1}')
	if [ $LOAD -gt $LOAD_THRESHOLD ]; then
		PAYLOAD="payload={\"text\": \"Load on ${IP} is ${LOAD}\"}"
		curl -X POST --data-urlencode "${PAYLOAD}" ${WEBHOOK}
		echo Alerting...
	fi
	echo Loop - load is $LOAD
	sleep 10
done
