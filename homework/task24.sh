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

if ([[ $a -eq 2 ]] && [[ $b -eq 2 ]]) || ([[ $a -eq 2 ]] && [[ $c -eq 2 ]])
then
	echo "true"
elif ([[ $b -eq 2 ]] && [[ $a -eq 2 ]]) || ([[ $b -eq 2 ]] && [[ $c -eq 2 ]])
then 
	echo "true"
elif ([[ $c -eq 2 ]] && [[ $a -eq 2 ]]) || ([[ $c -eq 2 ]] && [[ $b -eq 2 ]])
then
	echo "true"
else 
	echo "false"
fi

