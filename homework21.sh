#!/bin/bash
####21
a=$1
b=$2
c=$3
if [ $1 -gt $2 -a $1 -gt $3 ]
then
	echo "$1 is max"
elif [ $2 -gt $1 -a  $2 -gt $3 ]
then 
	echo "$2 is max"
else 
	echo "$3 is max"
fi


######22

#a=$1
#b=$2
#c=$3
#if [ $1 -lt $2 -a $1 -lt $3 ]
#then
#        echo "$1 is min"
#elif [ $2 -lt $1 -a  $2 -lt $3 ]
#then
#        echo "$2 is min"
#else
#        echo "$3 is min"
#fi


#####23

#a=$1
#b=$2
#c=$3
#if [[ $a == 1 || $b == 1 || $c == 1 ]]

#then
#	echo "true"
#else
#	echo "false"
#fi


############24
#a=$1
#b=$2
#c=$3
#if [[ $a == 2 && $b == 2 ]]
#then
#	echo "true"
#elif [[ $a == 2 &&  $c == 2 ]]
#then 
#	echo "true"
#elif [[ $c == 2 &&  $b == 2 ]]
#then 
#	echo "true"
#else
#	echo "false"
#fi


#########25  ??

#a=$1
#b=$2
#c=$3
#if (( $a + $b > $c &&  $b + $c > $a &&  $c + $a > $2 ))
#then
#	echo "y=1"
#else
#	echo "y=2"
#fi



########26

#a=$1
#b=$2
#c=$3
#if [[ $(($a%2)) -eq 0 || $(($b%2)) -eq 0 || $(($c%2)) -eq 0 ]]
#then 
#	echo "1"
#else
#	echo "2"
#fi


########27 ??
#a=$1
#b=$2
#c=$3
#if [[ '$a+$c'/2 =  $b ]]
#then
#	echo "true"
#else
#     echo "false"
#fi      



#############28
#a=$1
#b=$2
#c=$3
#if [[ $b = $(($a*$c))**((1/2)) ]]
#then
#	echo "true"
#else 
#	echo "false"
#fi



#########30
#a=$1
#b=$2
#c=$3
#if [[ $a -gt $b && $b -gt $c ]]
#then 
#	echo "$a $b $c "
#elif [[ $b -gt $a && $a -gt $c ]]
#then 
#	echo "$b $a $c"
#else 
#	echo "$c $a $b"
#fi




#############29 ??
#a=$1
#b=$2
#c=$3
#if [[ $a -gt $b && $b -gt $c ]]
#then
#        echo "$c $b $a "
#elif [[ $b -gt $a && $a -gt $c ]]
#then
#        echo "$c $a $b"
#else
#        echo "$a $b $c"
#fi
