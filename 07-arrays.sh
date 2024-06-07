#!/bin/bash

echo "Current Working Directory:$PWD"

DOCUMENTARY=("The Elephant" "The Cat" "The Cheetah")

echo "First Documentary is: ${DOCUMENTARY[0]}"
echo "Second Documentary is: ${DOCUMENTARY[1]}"
echo "All Documentaries is: ${DOCUMENTARY[@]}"

