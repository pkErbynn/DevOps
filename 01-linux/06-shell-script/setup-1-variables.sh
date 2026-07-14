#!/bin/bash

echo "Setup and configure server"

file_name=config.yaml   # variable assignment, no spaces around the equal sign
config_dir_files=$(ls config) # the output of the command is stored in the variable and not print to the terminal standard output

echo "using file $file_name to configure sth"
echo "here are all the config files: $config_dir_files"

# use '$' to access the value of a variable, e.g. $file_name, $config_dir_files'
# sort of string interpolation
