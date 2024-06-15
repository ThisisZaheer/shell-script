#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
   if [ $1 -ne 0 ]
   then 
       echo "$2 is failed"
       exit 1
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

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing Mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"
