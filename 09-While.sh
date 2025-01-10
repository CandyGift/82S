#!/bin/bash

path="/home/ec2-user/82S"
log_file=$(echo $0 | cut -d "." -f1).log
source=$(find $path -name "*.log" -mtime +14) &>>$log_file
while read -r file_delete
do
 
 rm -rf $source
done <<< $log_file