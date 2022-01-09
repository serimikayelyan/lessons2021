#!/bin/bash
declare -A matrix
var=0
 for ((i=0;i<$1;i++)) do
    for ((j=0;j<$1;j++)) do
    matrix[$i,$j]=$i+$j
    let var=${matrix[$i,$j]}
    echo -n "$var  "
    if [[ $var%2 -eq 0 && $i>=$j ]]; then





                    sum=$(($sum + $var))
                    num=$(($num+1))


             fi
     done
         echo
done
     ave=$(($sum/$num))
     echo $ave


