#!/bin/bash

#script name:              Ops challenge 6
#author:                   Joaquin Cortes
#Date of last revision:    1/11/2024
#purpose:                  Lshw and grep script

echo Jlab-PC
#display cpu info
echo "=== CPU Information ==="
lshw | grep -A 6 "cpu" | grep -e "product" -e "vendor" -e "physical id: 4" -e "bus info" -e "width"


#Display RAM Information
echo "=== RAM Information ==="
lshw | grep -A 4 "memory" | grep -e "description: System Memory" -e "physical id: 2d" -e "size" |grep -v -e "resources"


#Display adapter
echo "=== Display Adapter ==="
lshw | grep -A 12 "display" | grep -v -e "logical" -e "version" 

#display network
echo "===  Network adapter ==="
lshw | grep -A 15 "network"