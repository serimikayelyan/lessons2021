#!/bin/bash
a=$1
b=$2
c=$3
if [[ $a == 2 && $b == 2 ]]
then
       echo "true"
elif [[ $a == 2 &&  $c == 2 ]]
then
       echo "true"
elif [[ $c == 2 &&  $b == 2 ]]
then
       echo "true"
else
       echo "false"
fi


