#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
M="\e[35m"
C="\e[36m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
  echo -e "$G Source Directory Exist $N"
else
  echo -e "$Y Please make sure $SOURCE_DIRECTORY exist $N"
  exit
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

echo "Files to delete:$FILES"

while IFS= read -r line
do
   echo "Deleting file: $line"
   rm -rf $line
done <<< $FILES