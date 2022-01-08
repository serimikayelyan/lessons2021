#!/bin/bash

arr=( -1 -2 -3 4 5 6 )
summ=0
zro=0

for i in ${arr[@]}
do
    if [[  $i -gt 0 ]]; then
	(( summ += $i ))
	(( zro += 1 ))
    fi
done
echo $(( $summ / $zro ))
