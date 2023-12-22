#!/bin/bash

#Script name:                Arrays 101
#Author:                     Joaquin Cortes
#Date of last latest review: 12/21/2023
#Purpose:                    learn about arrays

#Define Variables
PRICE_PER_APPLE=5

#Define Array
grocery_list=(apple bananas orange onion)

#print out the entire grocery list 
#echo ${grocery_list[*]}
#this is a fundemental idea of computing
#echo ${grocery_list[*]}

#Append a new item on the list
new_snack=monster
grocery_list+=($new_snack)

echo ${grocery_list[${#grocery_list[*]}-1]}
