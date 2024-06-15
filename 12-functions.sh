#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "Exit Status: $1"
    echo "Installing: $2"
}

if [ $USERID -ne 0 ]
then 
    echo "Please run this Script with root access"
    exit 1 # manually exit if error comes
else
    echo "You are a Super User"
fi

dnf install mysql -y
VALIDATE $? "Installing Mysql"

dnf install git -y
VALIDATE $? "Installing git"
