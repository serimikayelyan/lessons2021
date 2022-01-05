#!/bin/bash

a=( 55 1 33 45 28 12 7 99 ) 
sum=0
max=0
min=1

for i in ${a[@]}
do

    if [[ $i > $max ]] 
    then
        max=$i
    fi

       if [[ $i < $min ]] 
       then
           min=$i

       fi

done
 
sum=$(($max+$min))

echo $sum 
