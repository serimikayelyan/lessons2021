#!/bin/bash

echo "Enter 2 numbers"
read a
read b

echo "Choice operators"
echo "1 add"
echo "2 sub"
echo "3 mult"
echo "4 div"
read choice 

case $choice in
1)res=`echo $a + $b | bc`
;;
2)res=`echo $a - $b | bc`
;;
3)res=`echo $a \* $b | bc`
;;
4)res=`echo "scale=2; $a / $b" | bc`
;;
esac
echo "Result $res"
