#!/bin/bash
#task426

declare -A matrix

sum=0
num=0
var=0

for ((i=0; i<$1; i++))
do
    for ((j=0; j<$1; j++))
    do
   matrix[$i,$j]=$(($i+$j))
    let var=${matrix[$i,$j]}
      if [[ $var%2 -eq 0 && $(($i+$j))<$(($1-1)) ]]
      then
      sum=$(($sum+$var))
      fi
       echo -n ${matrix[$i,$j]} 
    done
       echo ""
done
       echo $sum  




