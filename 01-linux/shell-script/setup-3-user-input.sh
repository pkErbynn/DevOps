#!/bin/bash

####### Reading User Input ######
echo "Reading user input"

read -p "Please enter your password: " user_pswd    # taking user input using the program code, previously was using terminal argument $1, now using read command to take user input from terminal
echo "Your password is: $user_pswd"
