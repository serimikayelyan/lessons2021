#!/bin/bash

function task_151
{
    # [[ $1 =~ ^[0-9]+$ && $1 -ge 0 ]] && sqrt_n=`bc <<< "scale=2; sqrt($1)"` || echo NAN && exit 1 
    if [[ $1 =~ ^-?[0-9]+$ ]]; then
	sqrt_n=`bc <<< "scale=0; sqrt($1)"`
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ $1 -lt 0 ]]; then
	echo Negative number is given
	return 2
    else
	echo NAN
	return 3
    fi
    
    sum=0
    for ((i=1;i<(($sqrt_n + 1));i++)); do
	! (($1 % $i)) && ((sum+=$i + $1 / $i))
    done
    #checking if the number is a square number
    [[ $(($sqrt_n * $sqrt_n)) -eq $1 ]]  && ((sum-=$sqrt_n))
    
    echo $sum
}

function task_152
{
    if [[ $1 =~ ^-?[0-9]+$ ]]; then
	sqrt_n=`bc <<< "scale=0; sqrt($1)"`
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ $1 -lt 0 ]]; then
	echo Negative number is given
	return 2
    else
	echo NAN
	return 3
    fi
    
    prod=1
    for ((i=1;i<(($sqrt_n + 1 ));i++)); do
	! (($1 % $i)) && ((prod*=$i * $1 / $i)) 
    done
    [[ $(($sqrt_n * $sqrt_n)) -eq $1 ]] && ((prod/=$sqrt_n))
    echo $prod
}  

function task_153
{
    #(n/k = (n-2)/k + 2/k
    #remainder -------^
    #quotient --> (n-2)/k

    if [[ $1 =~ ^-?[0-9]+$ ]]; then
        ! [[ $1 -gt 2 ]] && return 0

        quotient_d=$(($1 - 2))
        sqrt_n=`bc <<< "scale=0; sqrt($quotient_d)"`
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ $1 -lt 0 ]]; then
	echo Negative number is given
	return 2
    else
	echo NAN
	return 3
    fi

    sum=0
    for ((i=1;i<(($sqrt_n + 1));i++)); do
	if ! (($quotient_d % $i)); then
	    [[ $i -gt 2 ]] && ((sum+=$i))
	    [[ ! $i -eq $(($quotient_d / $i)) ]] && ((sum+=$quotient_d / $i))
	fi
    done
    
    echo $sum
}  

function task_154
{ 
    #(n/k = (n-3)/k + 3/k
    #remainder -------^
    #quotient --> (n-3)/k

    if [[ $1 =~ ^-?[0-9]+$ ]]; then
        ! [[ $1 -gt 3 ]] && return 0

        quotient_d=$(($1 - 3))
        sqrt_n=`bc <<< "scale=0; sqrt($quotient_d)"`
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ $1 -lt 0 ]]; then
	echo Negative number is given
	return 2
    else
	echo NAN
	return 3
    fi

    prod=1
    for ((i=1;i<(($sqrt_n + 1));i++)); do
	if ! (($quotient_d % $i)); then
	    [[ $i -gt 3 ]] && ((prod*=$i))
	    [[ $(($quotient_d / $i)) -gt 3 && ! $i -eq $(($quotient_d / $i)) ]] && ((prod*=$quotient_d / $i))
	fi
    done
    
    [[ $prod -eq 1 ]] && echo 0 || echo $prod
}

function task_155
{
    upper_bound=100
    lower_bound=10
    divisor=3
    ((sm_multiple=$lower_bound + $divisor - ($lower_bound % $divisor)))
    sum=0
    for ((i=$sm_multiple;i<$upper_bound;i+=$divisor)); do
	((sum+=$i))
    done
    echo $sum
}

function task_156
{
    upper_bound=100
    lower_bound=10
    # 3 * 5 = 15
    divisor=15
    ((sm_multiple=$lower_bound + $divisor - ($lower_bound % $divisor)))
    prod=1
    for ((i=$sm_multiple;i<$upper_bound;i+=$divisor)); do
	((prod*=$i))
    done
    echo $prod
}  

function task_157
{
    ((sum_all=(100 + 999) * (1000 - 100) / 2))
    
    sum_5=0
    for ((i=100;i<1000;i+=5)); do
	((sum_5+=$i))
    done
    echo $(($sum_all - $sum_5))
}  

function task_158
{
    prod=1
    for ((i=100;i<1000;i++)); do
	(($i % 6)) && ((prod_all*=$i))
    done
    echo $prod
}  

function task_159
{
    #recursion (time: ~42sec)
    
    #n=${1:-100} 
    #
    #if [[ $n -ge 1000 ]]; then
    #    echo 1
    #elif [[ $(($n % 3)) -eq 1 && $(($n % 4)) -eq 2 ]]; then
    #    echo $(($n * `task_159 $(($n + 1))`))
    #else
    #    echo `task_159 $(($n + 1))`
    #fi

    #iteration (time: ~instant)
    
    prod=1
    for ((i=100;i<1000;i++)); do
        if [[ $(($i % 3)) -eq 1 && $(($i % 4)) -eq 2 ]]; then
            ((prod*=$i))
        fi
    done
    echo $prod". The number is too great to be stored."
}  

function task_160
{
    for ((i=100;i<1000;i++));do
	n=`bc <<< "scale=0; sqrt($i * 16)"`
	if [[ $(($n * $n)) -eq $(($i * 16)) ]]; then
	    echo $i
	    break
	fi
    done
}  

function task_161
{
    for ((i=1000;i<10000;i++));do
	n=`bc <<< "scale=0; sqrt($i * 26)"`
	if [[ $(($n * $n)) -eq $(($i * 26)) ]]; then
	    echo $i
	    break
	fi
    done
}  

function task_162
{
    for ((i=9999;i>=1000;i--));do
	n=`bc <<< "scale=0; sqrt($i * 14)"`
	if [[ $(($n * $n)) -eq $(($i * 14)) ]]; then
	    echo $i
	    break
	fi
    done
}  

function task_163
{  
    for ((i=9999;i>=1000;i--));do
	n=`bc <<< "scale=0; sqrt($i * 18)"`
	if [[ $(($n * $n)) -eq $(($i * 18)) ]]; then
	    echo $i
	    break
	fi
    done
}

function task_164
{
    if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ $1 -le 0 ]]; then
	echo No squer number is less than a negative number or zero
	return 2
    fi

    for ((i=100;i<1000;i++)); do
	if [[ `bc <<< "scale=0; sqrt($i)"` -gt $1 ]]; then
	    echo $i
	    break
	fi
    done
}  

function task_165
{
    if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ $1 -le 0 ]]; then
	echo The power of 3 can not be a negative number or 0
	return 2
    fi
    
    for ((i=$1;i>0;i/=3)); do
	if [[ $i -eq 3 ]]; then
	    t=true
	    break
	elif [[ $i -lt 3 ]]; then
	    t=false
	    break
	fi
    done

    echo $t
}  

function task_166
{ 
    if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ $1 -le 0 ]]; then
	echo The power of 4 can not be a negative number or 0
	return 2
    fi


    for ((i=$1;i>0;i/=4)); do
	if [[ $i -eq 4 ]]; then
	    y=1
	    break
	elif [[ $i -lt 4 ]]; then
	    y=0
	    break
	fi
    done

    echo $y
}  

function task_167
{
    if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    fi

    y=false
    for ((i=0;i<31;i++)); do
	if [[ `bc -l <<< "s($1^$i) < 0"` ]]; then
	    y=true
	    break
	fi
    done

    echo $y
}  

function task_168
{
    if [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ ! $1 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $1 -le 0 ]]; then
	echo Negative number is given
	return 2
    fi

    p=true

    for ((i=2;i<`bc <<< "scale=0; sqrt($1) + 1"`;i++)); do
	if ! (( $1 % $i )); then
	    p=false
	    break
	fi
    done

    echo $p
}  

function task_169
{
    if [[ $# -lt 2 ]]; then
	echo $# arguments are given
	return 1
    elif [[ ! $1 =~ ^-?[0-9]+$ || ! $2 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $1 -le 0 || $2 -le 0 ]]; then
	echo Negative number is given
	return 2
    fi
    
    z=5

    for ((i=2;i<`bc <<< "scale=0; sqrt($1 + $2) + 1"`;i++)); do
	if ! (( ($1 + $2) % $i )); then
	    z=6
	    break
	fi
    done

    echo $z
}  

function task_170
{
    if [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ ! $1 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $1 -le 0 ]]; then
	echo Negative number is given
	return 2
    fi
    
    i=2
    while [[ $i -le $1 ]]; do ((i*=2)); done
    echo $i
}  

function task_171
{
    if [[ $# -eq 0 ]]; then
	echo No arguments are given
	return 1
    elif [[ ! $1 =~ ^-?[0-9]+$ ]]; then
        echo NAN
	return 3 
    elif [[ $1 -le 0 ]]; then
	echo Negative number is given
	return 2
    fi
    
    factorial=1
    for ((i=2;i<=$1;i++)); do ((factorial*=$i)); done
    echo $factorial
}  
