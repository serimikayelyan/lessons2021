#!/bin/bash
#task 422

declare -A matrix
m=$1
sum=0
num=0
var=0

for ((i=0; i<m; i++))
do
  for ((j=0; j<m; j++))
  do
#    matrix[$i,$j]=$(($i+$j))
     matrix[$i,$j]=$RANDOM
    let var=${matrix[$i,$j]}
    if [[ $var%5 -eq 0 && $j<$i ]]
      then  
      sum=$(($sum+$var))
      num=$(($num+1))
    fi
    echo -n ${matrix[$i,$j]}   
  done
  echo ""
done
  ave=$(($sum/$num))
  echo $ave

#task424

declare -A matrix
m=$1
sum=0
num=0
var=0
for ((i=0; i<m; i++))
do
  for ((j=0; j<m; j++))
  do
    matrix[$i,$j]=$RANDOM
    let var=${matrix[$i,$j]}
    if [[ $var%2 -ne 0 && $j<=$i ]]
      then  
      sum=$(($sum+$var))
      num=$(($num+1))
    fi
    echo -n ${matrix[$i,$j]}   
  done
  echo ""
done
  ave=$(($sum/$num))
  echo $ave

#task426

declare -A matrix
m=$1
sum=0
num=0
var=0

for ((i=0; i<$m; i++))
do
    for ((j=0; j<$m; j++))
    do
    matrix[$i,$j]=$RANDOM
#   matrix[$i,$j]=$(($i+$j))
    let var=${matrix[$i,$j]}
      if [[ $var%2 -eq 0 && $RANDOM<$(($1-1)) ]]
      then
      sum=$(($sum+$var))
      fi
       echo -n ${matrix[$i,$j]} 
    done
       echo ""
done
       echo $sum  



#task428

m=$1
sum=0
num=0
var=0

for ((i=0; i<$m; i++))
do
   for ((j=0; j<$m; j++))
   do
   
   matrix[$i,$j]=$(($i+$j))
   let var=${matrix[$i,$j]}
   
   if [[ $var -eq 0 && $(($i+$j))<=$(($1-1)) ]]
   then
   sum=$(($sum+1))
   fi
  
   echo -n ${matrix[$i,$j]}

   done
   
   echo ""
done
    
   echo $sum
