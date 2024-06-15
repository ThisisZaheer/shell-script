#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
M="\e[35m"
C="\e[36m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"

VALIDATE(){
      if [ $1 -ne 0 ]
      then
          echo -e "$2 is:$R Failed $N"
          exit 1
      else
          echo -e "$2 is:$G Success $N"
      fi

}

 if [ $USERID -ne 0 ]
 then
    echo "Please run this Script with root access"
    exit 1
 else
    echo "You are a Super User"
 fi




dnf install nginx -y &>>$LOGFILE
VALIDATE $? "Installation of nginx"

dnf install gcc -y &>>$LOGFILE
VALIDATE $? "Installation of gcc"