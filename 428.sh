#!/bin/bash


declare -A matrix
sum=0
var=0
m=$1

for ((i=0; i<$1; i++))
do
   for ((j=0; j<$1; j++))
   do
        matrix[$i,$j]=$(($i+$j))
        let var=${matrix[$i,$j]}
             if [[ $var -eq 0 && $(($i+$j))<=$1-1 ]]
             then
                  sum=$(($sum+1))
             fi
          echo -n ${matrix[$i,$j]}
   done
         echo 
done
echo $sum


