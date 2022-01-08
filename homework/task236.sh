#!/bin/bash

arr=( $@ )
prod=1
count=0

for i in ${arr[@]}
do
    if [[ $(( $i % 2 )) -eq 1 ]]; then
	(( prod *= $i ))
	(( count += 1 ))
    fi
done
if [[ $count -eq 0 ]]; then
	echo "chka kent tiv"
else
	echo "prod" $prod
	echo "count" $count
fi
