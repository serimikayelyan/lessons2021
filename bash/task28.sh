#!/bin/bash

declare -i a
declare -i b
declare -i c

echo -n "Insert number 1 - "
read a
echo -n "Insert number 2 - "
read b
echo -n "Insert number 3 - "
read c

if [[ $(( c / b )) -eq $(( b / a )) ]]
then 
	echo "true"
else 
	echo "false"
fi
