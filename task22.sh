#!/bin/bash
a=$1
b=$2
c=$3
if [ $1 -lt $2 -a $1 -lt $3 ]
then
        echo "$1 is min"
elif [ $2 -lt $1 -a  $2 -lt $3 ]
then
        echo "$2 is min"
else
        echo "$3 is min"
fi
