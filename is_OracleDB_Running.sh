#!/bin/bash

dockerOptions="inspect -f {{.State.Running}} oracle_db"
isOracleDBRunning=`docker ${dockerOptions}`

if [ "$isOracleDBRunning" == "true" ];  then
    echo
    echo "### Oracle DB is running ###"
    echo
else
    echo
	echo "### Starting Oracle DB ###"
    echo
	docker start oracle_db
	sleep 10s
fi

exit 0
