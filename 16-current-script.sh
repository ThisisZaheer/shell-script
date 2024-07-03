#!/bin/bash

COURSE="Devops from Current-Script" 

echo "Before Calling the other-script, course:$COURSE"
echo "Process-ID of Current Shell-Script:$$"

./17-other-script.sh

echo "After Calling the other-script, course:$COURSE"