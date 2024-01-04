#!/bin/bash

#Script Name: Loops
#Author:Joaquin Cortes
#Date: 01/03/2024
#Purpose: Ops challenge 4

#While Loop
#The while true loop creates an infinite loop 
while true; do
    clear
    echo "Running Processes:"
    ps aux
#The read command is what prompts the user to type in the PID number
    read -p "Enter PID to kill: " userInput

    if [["$userInput" =~ ^[0-9]+$ ]]; then
        echo "killing process with PID $userInput..."
        kill -9 "$userInput" 
    fi
done


