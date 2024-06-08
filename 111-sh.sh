#!/bin/bash

player1=$2
player2=$1

echo "Hi,Devops"

echo "$player1 is good in cricket"
echo "$player2 is good in football"
echo "$player1 is batsman"
echo "$player2 is goalkeeper"
echo "$player1 batting strike rate is 175"
echo "$player2 keeping is just beyond"

echo "What is your bank atm card name --> "

read -s BANK

echo "what is your atm pin -->"

read -s PIN

echo "Card name --> $BANK, Atm pin --> $PIN"