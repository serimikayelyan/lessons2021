#!/bin/bash

#2.21

if [[ $1 -ge $2 && $1 -ge $3 ]]
then
	echo "Mecaguyn-$1"
elif [[ $2 -ge $1 && $2 -ge $3 ]]
then 
	echo "Mecaguyn-$2"
elif [[ $3 -ge $1 && $3 -ge $2 ]]
then 
	echo "Mecaguyn-$3"
fi
