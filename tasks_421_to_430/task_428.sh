#!/bin/bash
declare -A matrix
num=0
 for ((i=0;i<$1;i++)) do
    for ((j=0;j<$1;j++)) do
    matrix[$i,$j]=$i+$j
    let var=${matrix[$i,$j]}
    echo -n "$var  "
    if [[ $var -eq 0 && $(($i+$j))<$$1 ]]; then
	    num=$(($num+1))
     fi
     done
         echo
done

echo $num


