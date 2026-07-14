#!/bin/bash

######## Conditions + Terminal Arguments ######
echo "Setup and configure server"

file_name=config.yaml
config_dir=$1	# argument user input from terminal

if [ -d "$config_dir" ] # condition checking, using [ ] with spaces around the brackets
then
	echo "storing config dir files in variable..."
	config_files=$(ls "$config_dir")	# variable reference then converted into string, since "ls mydir" from terminal is string command
else
	echo "config dir not found. creating the dir ($config_dir) with the default config file..."
	mkdir "$config_dir"
	touch "$config_dir/config.sh"
fi

# usage: 
# $ ./setup-2-conditions-args.sh setup-script
# $ ./setup-2-conditions-args.sh unknown-dir


user_group=$2	# with second terminal argument
if [ "$user_group" == "erbynn" ]
then
	echo "configure the server"
elif [ "$user_group" == "admin" ]
then
	echo "administer the server"
else
	echo "No perm to configure server; wrong user group"
fi

echo "using file $file_name to configure something"
echo "here are all config files inside config dir: $config_files"

# usage:
# $ ./setup-2-conditions-args.sh config erbynn
# $ ./setup-2-conditions-args.sh config admin
# $ ./setup-2-conditions-args.sh config unknown-group