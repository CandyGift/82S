#!/bin/bash

USERID=$(id -u)

Validate()
{
    if [ $1 -ne 0 ]
then
    echo "$2...failure"
    exit 1
else 
    echo "$2...success"
fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi

if [ $? -ne 0 ]
then
 dnf install mysql -y
  validate $? "Installing mysql"
  else 
  echo " sql already installed"
fi



if [ $? -ne 0 ]
then
   dnf install git -y
    VALIDATE $? "Installing git"
else 
    echo "git already installed"
fi