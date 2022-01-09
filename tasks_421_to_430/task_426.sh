#!/bin/bash
declare -A matrix
var=0
 for ((i=0;i<$1;i++)) do
    for ((j=0;j<$1;j++)) do
    matrix[$i,$j]=$i+$j
    let var=${matrix[$i,$j]}
    echo -n "$var  "
    if [[ $var%2 -eq 0 && $(($i+$j))<$(($1-1)) ]]; then
                    sum=$(($sum + $var))
                             fi
     done
         echo
done
    
echo $sum

