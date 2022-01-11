#!/bin/bash


echo "enter first number "
read a
echo "enter second number "
read b

echo "press <a> if you want add numers"
echo "press <s> if you vant subtract numbers"
echo "press <m> if you vant multiply numbers"
echo "press <d> if you vant divide numbers"
read  op

if [[ ${a} =~ ^[[:digit:]]+$  && ${b} =~ ^[[:digit:]]+$ ]];then 
case $op in 
	a)res=`echo $a + $b | bc`;;
	s)res=`echo $a - $b | bc`;;
	m)res=`echo $a \* $b | bc`;;
	d)res=`echo "$a / $b" | bc`;;
	*)res="I don't know this operation yet )) "
esac
else
	res="enter number"
fi

echo "Result is  $res"
