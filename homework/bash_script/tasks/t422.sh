#!/bin/bash
#task422

declare -A matrix
sum=0
num=0 
var=0

for ((i=0; i<$1; i++))
do
    for ((j=0; j<$1; j++))
    do
      
    matrix[$i,$j]=$RANDOM
    let var=${matrix[$i,$j]}

       if [[ $var%2 -eq 0 && $j<$i ]]
         then 
           sum=$(($sum+$var))
           num=$(($num+1))
       fi
          
           echo -n ${matrix[$i,$j]}

    done
           echo ""
done
           res=$(($sum/$num))
           echo $res
    

