#!/bin/bash

echo "all script params or terminal arguments: $*"
echo "number of script params or terminal arguments: $#"

# similar to for-each loop
for param in $*
	do 
		if [ -d "$param" ]
			then 
				echo "printing files in the config directory"
				ls -l "$param"
		fi
		
		echo "dir param passed: $param"
	done

echo "##################"

# while loop to accumulate sum of scores, until user input 'q' to quit the loop
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
