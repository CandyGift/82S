#!/bin/bash
path="/82S"
log_file=$(echo $0 | cut -d "." -f1).log

while read -r file_delete
do
source=$(find $path -name "*.log" -mtime +14) &>>$log_file
rm -rf $source
done