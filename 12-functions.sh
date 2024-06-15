#!/bin/bash

USERID=$(id -u)

VALIDATE(){
   if [ $1 -ne 0 ]
   then 
       echo "$2 is failed"
       
    else
       echo "$2 is success"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Please run this Script with root access"
    exit 1 # manually exit if error comes
else
    echo "You are a Super User"
fi

dnf install mysqld -y
VALIDATE $? "Installing Mysql"

dnf install git -y
VALIDATE $? "Installing git"
