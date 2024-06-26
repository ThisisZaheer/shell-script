#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "Please run this Script with root access"
   exit 1 # manually exit if error comes
else
   echo "You are Super User"
fi

dnf install mysql -y

if [ $? -ne o ]
 then
    echo "Installation of mysql ... FAILURE"
    exit 1
 else
    echo "Installation of mysql ... SUCCESS"
 fi   

 dnf install git -y

if [ $? -ne o ]
 then
    echo "Installation of git ... FAILURE"
    exit 1
 else
    echo "Installation of git ... SUCCESS"
 fi   