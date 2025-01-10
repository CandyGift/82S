#!/bin/bash

path="/home/ec2-user/82S"
log_file=$(echo $0 | cut -d "." -f1).log
source=$(find $path -name "1.log") &>>$log_file
echo $source
# while read -r file_delete
# do
 
#  rm -rf $file_delete &>>$log_file
# done <<< $log_file