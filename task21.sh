#!/bin/bash
a=$1
b=$2
c=$3
if [ $1 -gt $2 -a $1 -gt $3 ]
then 
	echo "$1 is max"
elif [ $2 -gt $1 -a $2 -gt $3 ]
then
      echo "$2 is max"
else 
      echo  "$3 is max" 
fi

