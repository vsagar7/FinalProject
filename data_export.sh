#!/bin/bash

batchid=`cat /home/acadgild/project/logs/current-batch.txt`
LOGFILE=/home/acadgild/project/logs/log_batch_$batchid

echo "Creating mysql tables if not present..." >> $LOGFILE

#mysql -u root  < /home/acadgild/project/scripts/create_schema.sql

echo "Running sqoop job for data export..." >> $LOGFILE

sqoop export connect jdbc:mysql://localhost/project username 'root' password Root@123 table top_10_stations export-dir=/user/hive/warehouse/project.db/top_10_stations/batchid=$batchid input-fields-terminated-by ',' -m 1

sqoop export connect jdbc:mysql://localhost/project username 'root' password Root@123 table users_behaviour export-dir=/user/hive/warehouse/project.db/users_behaviour/batchid=$batchid input-fields-terminated-by ',' -m 1

sqoop export connect jdbc:mysql://localhost/project username 'root' password Root@123 table connected_artists export-dir=/user/hive/warehouse/project.db/connected_artists/batchid=$batchid input-fields-terminated-by ',' -m 1
