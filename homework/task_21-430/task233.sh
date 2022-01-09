#!/bin/bash

arr=( $@ )
sum=0
prod=1

for i in ${arr[@]}
do
    if [[ $(( $i % 2 )) -eq 0 ]]; then
	(( sum += $i ))
	(( prod *= $i ))
    fi
done
if [[ $sum -eq 0 ]]; then
	echo "chka zuyg tiv"
else
	echo $sum
	echo $prod
fi
