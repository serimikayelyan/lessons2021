#!/bin/bash

arr=( $@ )
sum=0
count=0

for i in ${arr[@]}
do
    if [[ $(( $i % 2 )) -eq 1 ]]; then
	(( sum += $(( $i * $i)) ))
	(( count += 1 ))
    fi
done
if [[ $sum -eq 0 ]]; then
	echo "chka kent tiv"
else
    bc <<< " scale=2; sqrt( $sum / $count ) "
fi
