#!/bin/bash

zuyg=0
kent=0
arr=( $@ )

for i in ${arr[@]}
do
    if [[ $(( $i % 2)) -eq 0 ]]; then
	    (( zuyg += $(( $i * $i )) ))
    fi
done
if [[ $zuyg -eq 0 ]]; then
	echo "chka zuyg tiv"
else
	(( zuyg += $(( $i * $i )) ))
	echo $zuyg
fi
