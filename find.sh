#!/bin/bash 

read -p 'Enter the required file name : ' b


my_find ()
{
if [[ -n $1 ]]; then
	if [[ -d $1 ]]; then
		for i in $1/*
		do
			if [[ -n $b ]]; then	
				if [[ -f $i ]]; then
					echo $i | grep "$b"
				elif [[ -d $i	 ]]; then
					my_find $i
				fi
			else
				echo "error : Missing file name"
				break
			fi
		done
	else
		echo "error : Enter the correct directory name"
	fi
else
	echo "error : Enter the name of the directory"
fi
}

my_find $@
