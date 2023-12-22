#!/bin/bash

#Script Name:             Ops Challenge 3 Arrays
#Author:                  Joaquin Cortes
#Date of latest review:   12/21/2023
#Purpose:                 Script for the third Ops Challenge

#Define arrays
directories=(dir1 dir2 dir3 dir4)

mkdir ${directories[@]}
textfile(){
    #I learned through chat gpt about using this method to create a loop and have the function append this to each of the strings in the array
    file_path=(${@/%/\/notes.txt})
    touch ${file_path[@]}

    
}
textfile ${directories[@]}



#Creates four directories: dir1, dir2, dir3, dir4
#Put the names of the four directories in an array
#References the array variable to create a new .txt file in each directory


