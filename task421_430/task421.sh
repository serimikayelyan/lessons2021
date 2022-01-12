#!/bin/bash

declare -A matrix
m=$1
count=0
var=0

for (( i=0;i<m;i++ ))
 do
  for (( j=0;j<m;j++ ))
    do
	    matrix[$i,$j]=$RANDOM
	    var=${matrix[$i,$j]}
	    if [[ $(($var%$2)) -eq 0  && $j<$i  ]]
            then
		    
		    count=$(($count+1))
            fi
                echo -n "${matrix[$i,$j]} "
        done
        echo
done
echo $count


