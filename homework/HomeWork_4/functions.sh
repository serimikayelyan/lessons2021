#!/bin/bash

arr=(-2 4 -8 16 -32 64 -128 256)

function task211 {
	sum=0
	n=0
	for i in ${arr[@]}
	do
		if [[ $i -gt 0 ]]; then
			sum=$(($sum + $i))
			n=$(($n + 1))
		fi
	done
	final=$(($sum / $n))
	echo $final
}

function task213 {
	sum=0
	n=0
	for i in ${arr[@]}
	do
		if [[ $i -lt 0 ]]; then
			j=$(($i**2))
			sum=$(($sum + $j))
			n=$(($n + 1))			
		fi
	done
	mult=$(($sum / $n))
	bc <<< "scale=2; sqrt($mult)"
}

function task215 {
	sum=0
	for i in ${!arr[@]}
	do
		if [[ $i%2 -eq 0 ]]; then
			sum=$(($sum + arr[$i]))
		fi
	done
	echo $sum
}

function task217 {
	mult=1
	for i in ${!arr[@]}
	do
		if [[ $i%2 -eq 1 ]]; then
			j=$((arr[$i]**2))
			mult=$(($mult * $j))
		fi
	done
	echo $mult
}

function task219 {
	n=0
	for i in ${!arr[@]}
	do
		if [[ $i%$1 -eq 0 && $i -ne 0 ]]; then
                	n=$(($n + 1))
            	fi
	done
	echo $n
}
arr1=(3 6 9 12 15 18 21 24 27 30)

function task231 {
	sum=0
	for i in ${arr1[@]}
	do
		if [[ $i%2 -eq 0 ]]; then
			j=$(($i**2))
			sum=$(($sum + $j))
		fi
	done
	echo $sum
}

function task232 {
	n=0
	for i in ${arr1[@]}
	do
		if [[ $i%2 -eq 0 ]]; then
			n=$(($n + 1))
		fi
	done
	echo $n
}

function task233 {
	sum=0
	mult=1
	for i in ${arr1[@]}
	do
		if [[ $i%2 -eq 0 ]]; then
			mult=$(($mult * $i))
			sum=$(($sum + $i))
		fi
	done
	echo $mult $sum
}

function task234 {
	sum=0
	n=0
	for i in ${arr1[@]}
	do
		if [[ $i%2 -eq 1 ]]; then
			sum=$(($sum + $i))		
			n=$(($n + 1))
		fi
	done
	final=$(($sum/$n))
	echo $final
}

function task235 {
	sum=0
	n=0
	for i in ${arr1[@]}
	do
		if [[ $i%2 -eq 1 ]]; then
			j=$(($i**2))
			sum=$(($sum + $j))
			n=$(($n + 1))			
		fi
	done
	mult=$(($sum / $n))
	bc <<< "scale=2; sqrt($mult)"
}

function task236 {
	mult=1
	n=0
	for i in ${arr1[@]}
	do
		if [[ $i%2 -eq 1 ]]; then
			mult=$(($mult * $i))
			n=$(($n + 1))			
		fi
	done
	echo $n $mult
}

arr2=(1 2 3 0 4 5 6 0 7 8 9 0)

function task237 {
	n=0
	for i in ${arr2[@]}
	do 
		if [[ $i -eq 0 ]]; then
			n=$(($n + 1))
		fi
	done
	echo $n
}
array=(15 15 25 10 35 5 45 20 55 25)

function task251 {
	max=array[0];
	for i in ${array[@]}
	do
		if [[ $i -gt $max ]]; then
			max=$i
		fi
	done
	echo $max
}

function task253 {
	max=array[0];
	min=array[0];
	for i in ${array[@]}
	do
		if [[ $i -gt $max ]]; then
			max=$i
		elif [[ $i -lt $min ]]; then
			min=$i
		fi
	done
	sum=$(($max + $min))
	echo $sum
}
