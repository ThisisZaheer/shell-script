#!/bin/bash

echo "All Variables: $@"

echo "No.of Variables passed: $#"

echo "Script name: $0"

echo "Current Working Directory: $PWD"

echo "Home Directory of Current User: $HOME"

echo "Which User running the script: $USER"

echo "Hostname: $HOSTNAME"

echo "Process ID of Current Shell-Script: $$"

echo "Process ID of Last Background:$?"

sleep 77 &
