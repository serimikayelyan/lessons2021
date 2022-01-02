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

if [[ $(( a + b )) -lt $c ]] || [[ $(( b + c )) -lt $a ]] || [[ $(( c + a )) -lt $b ]]
then
	echo "y=2"
else
	echo "y=1"
fi

