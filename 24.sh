#!/bin/bash


echo "enter the first number"
read first
echo "enter the second number"
read second
echo "enter the third number"
read third

if [[ $first -eq 2 && $second -eq 2 ]]
then 
	echo "True"
elif [[ $first -eq 2 && $third  -eq 2 ]]
then 
 	echo "True"
elif [[ $second -eq 2 && $third -eq 2 ]]
then
        echo "True"
else
        echo "Fals"
fi

