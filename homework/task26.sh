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

if [[ $(( a % 2 )) -eq 0 ]] || [[ $(( b % 2 )) -eq 0 ]] || [[ $(( c % 2 )) -eq 0 ]]
then  
 	echo "1"
else 
	echo "2"
fi	
