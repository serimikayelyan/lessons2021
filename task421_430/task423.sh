#!/bin/bash
declare -A matrix
m=$1
sum=0
num=0
var=0
sq=1
for (( i=0;i<m;i++ ))
 do
  for (( j=0;j<m;j++ ))
    do
	    matrix[$i,$j]=$(($i+$j))
            var=${matrix[$i,$j]}
           if [[ $var%2 -eq 0  && $j<$i || $j -eq $i ]]
            then     

		     sq=$(($var*$var))
		     sum=$(($sum+ $sq))
		     sqr=`echo "sqrt($sum)" | bc `
                     num=$(($num+1))
            fi
                echo -n "${matrix[$i,$j]} "
        done
        echo
done
res=$(($sqr/$num))
echo $res

