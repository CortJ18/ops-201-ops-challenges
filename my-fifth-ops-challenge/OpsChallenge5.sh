#!/bin/bash 
#script name:            Ops challenge 5 conditionals
#Author:                 Joaquin Cortes
#Date of last revision:  01/09/2024
#Purpose:                File and Directory detector


#array for the files and directories
Files_and_Directories=(file1.txt file2.txt directory1 directory2)

#Funtion to check for file and directories existence
Check_Existence(){
    search_file=$1
    for file in "${Files_and_Directories[@]}";do
        if [ "$file" == "$search_file" ];then 
            return 0
            echo "This File or Directory alrady exists!"
        fi
        return 1
    done
}


while true ; 
do
 read -p "Enter the name of the File or Directory you want to check for: (Type done to Exit.)" file_to_check
    if [ "$file_to_check" == "done" ]; then
        break
    fi

    if Check_Existence "$file_to_check" ; then 
        echo "File/Directory '$file_to_check' already exists."
    else
        read -p "'$file_to_check' does not exist would you like to create it:" want_to_add
        if [ "$want_to_add" == "yes" ];then
            read -p "Would you like to create as a file or dir:(file/dir)" file_type
            if [ "$file_type" == "file" ]; then 
                touch "$file_to_check"
                echo "'$file_to_check' has been created."
                echo "Thanks for using the File/Directory checker."
                break
            fi
            

            if [ "$file_type" == "dir" ]; then 
                mkdir "$file_to_check"
                echo "'$file_to_check' has been created."
                echo "Thanks for using the File/Directory checker."
                break
           fi     
        else
            echo "Thanks for using the File/Directory checker."
            break
        fi
    

    
    fi    
done
        

