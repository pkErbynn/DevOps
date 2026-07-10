#!/bin/bash

### function declaration or definition ###

function total_score {
	sum=0
	while true
		do 
			read -p "enter a score: " score
			
			if [ "$score" == "q" ]	# string comparison
			then
				break
			fi

			sum=$(($sum+$score))
			echo "total score so far: $sum"
		done
}

total_score  # function call or invocation


#### another function declaration way ###
function creat_file() {
	file_name=$1	# script terminal argument/param
	is_shell_script=$2

	touch $file_name
	echo "file: $file_name, created"

	if [ "$is_shell_script" == "true" ]
	then
		chmod u+x $file_name
		echo "file: $file_name, is now executable"
	fi

	ls -l $file_name
}

creat_file "my_script.sh" "true"  # function call or invocation - stringified
creat_file my_script_2.sh true  # function call or invocation - non-stringified


##### function with return value #####
function add_numbers() {
	num1=$1
	num2=$2
	total=$(($num1+$num2))
	echo "total: $total"

	return $total
}

add_numbers 5 10
result=$?	# $? is a special variable that holds the return value of the last executed command or function

echo "sum of 5 and 10 is: $result"