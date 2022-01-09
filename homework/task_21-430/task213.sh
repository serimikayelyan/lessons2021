#!/bin/bash

arr=( $@ )
summ=0
zroN1=0
zroN2=0
for i in ${arr[@]}
do
    if [[ $i -lt 0 ]]; then
	(( summ += $(( $i * $i)) ))
	(( zroN1 += 1 ))
    fi
done
if [[ $zroN1 -eq 0 ]]; then
	echo " Eren Yeagar "
else
    zroN2=$(( $summ / $zroN1 ))
    bc <<< " scale=2; sqrt( $zroN2 )  " 
fi
