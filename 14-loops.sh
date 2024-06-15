#!/bin/bash

for i in {1..35}
do
   echo $i
done

for i in $@
do 
   echo $i
done
