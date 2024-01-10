#!/bin/bash
#script name: conditionals demo
#author:Joaquin Cortes
#date of last revision:01/08/2024
#Purpose: a grocery list checker


#array to store the grocery list
grocery_list=(apples milk bread monster)
#function to check if the item is in the grocery list 
grocerry_list_checker(){
    search_item="$1"
    #for loop to go over each item in the list
    for item in "${grocery_list[@]}"; do
        #check if the item im looking for is in my list or not
        if [ "$item" == "$search_item" ]; then
            return 0 #if a computer returns 0 = success
            echo "The item is in your grocery list!"
        fi
    done
    return 1 #If a computer returns 1 = failure
}

#Main
#While loop
#this while loop is going to repetedly ask the user for items to check
while true; 
do
        #ask the user for input of an item to look for in the list 
        read -p "Enter an item to check if it's on your grocery list: (Type done to Exit.)" item_to_check
        #check if usset input is done 
    if [ "$item_to_check" == "done" ]; then
        break #exit the loop
    fi

    #check if the item is in the grocery list - call the function
   if  grocerry_list_checker "$item_to_check"; then
        echo "Item '$item_to_check' is already on the list."
    else 
        #if the item id not on the list ask the user of they would like to add at
        read -p "'$item_to_check'is not on your list, would you like to add it?" add_to_list
        if [ "$add_to_list" == "yes" ]; then
            grocery_list+=("$item_to_check")
            echo "'$item_to_check' was added to your list."
        else
            echo "'$item_to_check' was not added to your list."
        fi
    fi        
done

#ask the user if they are rady to see their completed grocery list
read -p "Are you ready to see your completed grocery list? (yes/no)" show_list
if [ "$show_list" == "yes" ]; then
    echo "Your completed grocery list:"
    echo "${grocery_list[*]}"
else 
    echo "Ok, you can check your list later"
fi
#end
