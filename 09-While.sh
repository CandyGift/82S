#!/bin/bash

path="/home/ec2-user/82S"
source=$(find $path -name "*.log") &>>$log_file
while read -r file_delete
do
 
 rm -rf $file_delete &>>$log_file
done <<< $log_file