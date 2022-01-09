#!/bin/bash

arr=( $@ )
sum=0

for i in ${arr[@]}
do
    if [[ $(( $i % 2 )) -eq 0 ]]; then
    	    (( sum += 1 ))
    fi
done
if [[ $sum -eq 0 ]]; then
    echo "chka zuyg tiv"
else
     echo $sum
fi
