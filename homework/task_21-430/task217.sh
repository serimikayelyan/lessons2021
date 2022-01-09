#!/bin/bash

arr=( $@ )
zroN1=0

for i in ${!arr[@]}
do
    if [[ $(( $i % 2 )) -eq 1 ]]; then
	    (( zroN1 += $(( ${arr[$i]} * ${arr[$i]} )) ))
    fi
done
echo $zroN1
