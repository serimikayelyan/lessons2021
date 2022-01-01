#!/bin/bash
function task151 
{
sum=0;
for (( i = 1; i <= $1/2; i++ ))
    do
	    if [[ $1%$i -eq 0 ]]
	    then
	        sum=$(($sum+$i))
	    fi
    done
    echo $sum


}


function task152{
 
p=1;
for (( i = 1; i <= $1/2; i++ ))
do
	if [[ $1%$i -eq 0 ]]
        then
		p=$(($p*$i))
	fi
done
echo $p

}


function task153 
{
sum=0;
for (( i = 1; i <= $1/2; i++ ))
    do
            if [[ $1%$i -eq 2 ]]
            then
                sum=$(($sum+$i))
            fi
    done
    echo $sum


}
 
function task154
{

p=1;
for (( i = 1; i <= $1/2; i++ ))
do
        if [[ $1%$i -eq 3 ]]
        then
                p=$(($p*$i))
        fi
done
echo $p

}

function task155 {
sum=0
for i in {10..100}
do
	if [[ $i%3 -eq 0 ]]
	  then 
		  sum=$(($sum+$i))
        fi
done
echo $sum
}

function task156 
{
p=1;
for i in {10..100}
do
	if [[ $i%3 -eq 0 &&  $i%5 -eq 0 ]]
	  then
		  p=$(($p*$i))
	fi
done
echo $p
}

function task157 
{
sum=0
for i in {100..1000}
do
	if (( $i%5!=0 ))
	then
		sum=$(($sum+$i))
	fi
done
echo $sum
}

function task158 
{
p=1
for i in {100..1000}
do
	if (( $i%2!=0  &&  $i%3!=0 ))
	then
		p=$(($p*$i))
	fi
done
echo $p
}

function task159
{
p=1
for i in {100..1000}
  do
	if [[ $i%3 -eq 1 && $i%4 -eq 2 ]]
	 then
		 p=$(($p*$i))
	fi
  done
  echo $p
}




function task160
{
for i in {100..1000}
do
 p=$(($i*16))
 sq=`echo "sqrt($p)" | bc `
 if [[ $(( $sq * $sq )) -eq $p ]]
  then
          echo $i
          break
  fi
done

}


function task161 
{
 for i in {1000..10000}
 do
 p=$(($i*26))
 sq=`echo "sqrt($p)" | bc `
 if [[ $(( $sq * $sq )) -eq $p ]]
 then
	 echo $i
	 break
 fi
done
}


function task162 
{
  for (( i=10000; i>=1000; i-- ))
  do 
  p=$(($i*14))
  sq=`echo "sqrt($p)" | bc `
  if [[ $(( $sq * $sq )) -eq $p ]]
  then
	  echo $i
	  break
  fi
done
#364
}


function task163
{
  for (( i=10000; i>=1000; i-- ))
  do
  p=$(($i*18))
  sq=`echo "sqrt($p)" | bc `
  if [[ $(( $sq * $sq )) -eq $p ]]
  then
          echo $i
          break
  fi
done
#420
}
########??
function task164
{
  
  for i in {100..1000}
  do
  p=$(($i*$i))
  if [[ `echo "sqrt($p)" | bc `   -gt $1  ]]
  then
	echo $i
        break
  fi
 done  

}

