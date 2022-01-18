#!/bin/bash

echo "Enter Two numbers : "
read u
read e
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice


if [[ $u =~ ^[0-9]+$ && $e =~ ^[0-9]+$ ]]
then
 if [[ $choice -eq 1 ]] ; then
	 echo "$u+$e" | bc
 elif [[ $choice -eq 2 ]] ; then
	 echo "$u-$e" | bc
 elif [[ $choice -eq 3 ]] ; then
	 echo "$u*$e" | bc
elif [[ $choice -eq 4 ]] ; then
	echo "$u/$e" | bc
 fi
else echo "Error"

 fi
 
