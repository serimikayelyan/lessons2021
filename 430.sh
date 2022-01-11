#!/bin/bash


declare -A matrix
m=$1
sum=0
num=0
var=0
for ((i=0;i<m;i++)); do
        for ((j=0;j<m; j++)); do
                matrix[$i,$j]=$(($i+$j))
                let var=${matrix[$i,$j]}
                if [[ $var -eq 0 && $j<$i ]]; then
                        sum=$(($sum+$var))
                fi
                echo -n "${matrix[$i,$j]} "
        done
        echo
done
echo $sum

