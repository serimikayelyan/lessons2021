#!/bin/bash
#task 22

a=75
b=30
c=58
if [[ $a<$b && $a<$c ]]
then 
    echo "a-n amenapoqrn e"
elif [[ $b<$a && $b<$c ]]
then 
    echo "b"
else 
   echo "c"
fi


