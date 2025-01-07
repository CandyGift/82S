#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi

dnf install mysqll -y
if [ $? ne 0 ]
then
    echo "sql install status...failure"
    exit 1
else 
    echo "sql install status...success"
fi

dnf install git -y
if[ $? ne 0 ]
then
    echo "git install.....failur"
    exit 1
else 
    echo "git install....success"
fi