#!/bin/bash

#script:Loops 101
#Author:Joaquin Cortes
#Date: 01/02/2024
#Purpose: Learn about loops

#define an array
names=("Bob" "Jane" "Mike" "sarah")
count=4


#FOR Loop
#Basic Syntax
#for name in ${names[@]}
#do
#echo $name

#done
#While Loop 
#Basic syntax
while [ $count -gt 0 ]; do 
echo "value of count is: $count"
count=$(($count -1))
done


#Main