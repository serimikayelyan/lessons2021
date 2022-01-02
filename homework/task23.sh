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

if [ $a -eq 1 ] || [ $b -eq 1 ] || [ $c -eq 1 ]
then
	echo "true"
else 
	echo "false"
fi

