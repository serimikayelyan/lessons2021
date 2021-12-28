#!/bin/bash
a=$1
b=$2
c=$3
if [[ $((a+b)) -gt $c ||  $((a+c)) -gt $b ||  $((b+c)) -gt $a ]]
then	
    echo "y=1"
else
	echo "y=2"
fi	

