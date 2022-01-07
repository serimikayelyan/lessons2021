#!/bin/bash
function task_151 {
if [[ $1 =~ ^[0-9]+$ ]] && [[ $1 -ne 0 ]]
then
        sum=0
        for (( i=1; i <= $1; i++ )); do
                if [[ $1%$i -eq 0 ]]; then
                        sum=$(($sum + $i))
                fi
                done
                echo $sum

else
    echo "please insert correct number "
fi
}
function task_152
{
        if [[ $1 =~ ^[0-9]+$ ]] && [[ $1 -ne 0 ]]
then
        res=1
        for (( i=1; i <= $1; i++ )); do
                if [[ $1%$i -eq 0 ]]; then
                        res=$(($res * $i))
                fi
                done
                echo $res


else
    echo "please insert correct number "
        fi
}
function task_153 {
if [[ $1 =~ ^[0-9]+$ ]] && [[ $1 -ne 0 ]]
then
        sum=0
        for (( i=1; i <= $1; i++ )); do
                if [[ $1%$i -eq 2 ]]; then
                        sum=$(($sum + $i))
                fi
                done
                echo $sum

else
    echo "please insert correct number "
fi
}
function task_154
{
        if [[ $1 =~ ^[0-9]+$ ]] && [[ $1 -ne 0 ]]
           then
        res=1
        for (( i=1; i <= $1; i++ )); do
                if [[ $1%$i -eq 3 ]]; then
                        res=$(($res * $i))
                fi
                done
                echo $res


else
    echo "please insert correct number "
        fi
}
function task_155
{
         sum=0
	for (( i=10; i<100; i++ ));do
	    if [[ $i%3 -eq 0 ]]
	     then
		sum=$(($sum+$i))
        	fi
        done
           echo $sum
}
function task_156
{
	res=1
	for (( i=10; i<100; i++ )); do
		if [[ $i%3 -eq 0 ]] && [[ $i%5 -eq 0 ]]
		then
			res=$(($res*$i))
		fi
	done
	echo $res
}
function task_157
{
	sum=0
	for (( i=100; i<1000; l++ ));do
		if [[ $i%5 -ne 0 ]];then
			sum=$(($sum+$i))
		fi
	done
	echo $sum
}
function task_158 
{ 
	res=1
	for (( i=100; i<1000; i++ )); do
		if [[ $i%2 -ne 0 ]] && [[ $i%3 -ne 0 ]]; then
			res=$(($res*$i))
		fi
	done
	echo $res
}
function task_159
{
	res=1
	for ((i=100; i<1000; i++ )); do
		if [[ $i%3 -eq 1 ]] && [[ $i%4 -eq 2 ]]; then
			res=$(($res*$i))
		fi
	done
	echo $res
}
function task_168
{

  if [[ $1 =~ ^[1-9]+$ ]] && [[ $1 -ne 0 ]];then

	for (( i=2; i<$1; i++ )); do
		if [[ $1%$i -eq 0 ]];then
			p=false
			break
		else
			p=true
		
		fi		


	done
	echo $p
  else
     echo "please insert correct number "

  fi
	
}
function task_169
{
	
	d=$1+$2
	if [[ $1|| $2 =~ ^[1-9]+$ ]] && [[ $1 -ne 0 ]];then
		for (( i=2; i<$d; i++ )); do
			if [[ $d%$i -eq 0 ]]; then
				y=5
				break
			else
				y=6
			fi
		done
		echo $y
	else
		echo "please insert correct number "

  fi

}
 
