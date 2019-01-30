#!/bin/bash

batchid=`cat /home/acadgild/project/logs/current-batch.txt`
echo $batchid

LOGFILE=/home/acadgild/project/logs/log_batch_$batchid

echo $LOGFILE

echo "Running hive script for data analysis..." >> $LOGFILE

#hive -hiveconf batchid=$batchid -f /home/acadgild/project/scripts/data_analysis.hql

#sh /home/acadgild/project/scripts/data_export.sh

echo "Incrementing batchid..." >> $LOGFILE

batchid=`expr $batchid + 1`
echo $batchid
echo -n $batchid > /home/acadgild/project/logs/current-batch.txt
