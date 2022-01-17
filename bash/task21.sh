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

if [ $a -ge $b ] && [ $a -ge $c ] 
then
	echo $a
elif [ $b -ge $a ] && [ $b -ge $c ]
then 
	echo $b
else 
	echo $c
fi

