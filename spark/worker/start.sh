#!/bin/sh

WORKER_NUMBER=${1:-"1"}
MASTER_URL=${2:-"spark://spark-master:7077"}

#echo 'worker ->' $WORKER_NUMBER
#echo 'master ->' $MASTER_URL

/spark/sbin/start-slave.sh $WORKER_NUMBER $MASTER_URL

tail -F /spark/logs/spark*

