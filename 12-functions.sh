#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this Script with root access"
    
else
    echo "You are a Super User"
fi