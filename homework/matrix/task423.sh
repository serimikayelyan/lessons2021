#!/bin/bash

sum=0
count=0
read -p "m: " m
arr=( $@ )

for (( y=0; y<$m; y++ )) ; do
    for (( x=0; x<$m; x++ )) ; do
        (( i= $y * $m + $x ))
	if [[ $y -ge $x && $(( ${arr[$i]} % 2 )) -eq 0 ]]; then
		(( sum += $(( ${arr[$i]} * ${arr[$i]} )) ))
		(( count ++ ))
        fi
    done
done
bc <<<  " scale=2; sqrt( $sum / $count ) "

