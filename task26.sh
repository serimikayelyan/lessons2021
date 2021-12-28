#!/bin/bash
a=$1
b=$2
c=$3
if [[ $(($a%2)) -eq 0 || $(($b%2)) -eq 0 || $(($c%2)) -eq 0 ]]
then 
       echo "1"
else
       echo "2"
fi

