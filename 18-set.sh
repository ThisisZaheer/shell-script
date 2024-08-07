#!/bin/bash

set -e 

trap 'console ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "Please run this Script with root access"
   exit 1 # manually exit if error comes
else
   echo "You are Super User"
fi

dnf install fail2ban -y
dnf install nginx -y

echo "Is Script Proceeding???"