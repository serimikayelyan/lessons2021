#!/bin/bash
#a=$1
#b=$2
#c=$3
#if [[ $(($a+$c)/2) ==  $b ]]
#then
#       echo "true"
#else
#     echo "false"
#fi


a=$(( $2-$1 ))
b=$(( $3 -$2))
if [[ $a -eq $b ]]
then
	echo "TRUE"
else
	echo "FALSE"
fi
