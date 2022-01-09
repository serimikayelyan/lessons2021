#!/bin/bash 

gumar=$(( ( 100 + 999 ) * 450 ))

haryur=100

for (( i=101; i<1000; i++ ))
do
    if ! (( $i % 5 )); then
	(( haryur += $i ))
    fi
done
echo $(( $gumar - $haryur ))
