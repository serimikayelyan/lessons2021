#!/bin/bash
declare -A matrix
m=$1
sum=0
count=0
for (( i=0; i<$m; i++ ))
 do
    for (( j=0; j<$m; j++ ))
      do
		   matrix[$i,$j]=$(($i+$j))
		   var=${matrix[$i,$j]}
		   if [[ $var%2 -eq 0 && $j -lt $i || $j -eq $i ]]
		   then
			   count=$(($count+1))
			   sum=$(($sum + $var))
		  fi
		  echo -n "${matrix[$i,$j]} "
	  done
	  echo
done
res=$(($sum/$count))
echo $res
