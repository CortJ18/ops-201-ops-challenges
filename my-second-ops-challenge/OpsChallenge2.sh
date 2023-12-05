#!/bin/bash

# Script Name:                  Print login history
# Author:                       Joaquin Cortes
# Date of latest revision:      12/05/2023
# Purpose:                      Print login history

# Declaration of variables

# Declaration of functions
# we are going to echo this is your login history and use the last command to check the login history within the function that we are going to write

# Main
Print_login() {
last
 echo 'This your login history'
}

Print_login
Print_login
Print_login

# End