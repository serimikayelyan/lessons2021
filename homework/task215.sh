#!/bin/bash


arr=( 2 4 5 7 6 1 )
summ=0

for i in ${!arr[@]}
do
    if [[ $(( $i % 2)) -eq 0 ]]; then
	(( summ += ${arr[$i]} ))
    fi
done
echo $summ
