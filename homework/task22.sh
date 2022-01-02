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

if [ $a -le $b ] && [ $a -le $c ] 
then
	echo $a
elif [ $b -le $a ] && [ $b -le $c ]
then 
	echo $b
else 
	echo $c
fi

