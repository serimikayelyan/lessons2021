#! /bin/bash


# !/bin/bash

# Take user Input
echo "Enter Two numbers : "
read a
read b

re='^[0-9]+$'
if ! [[ $a =~ $re ]]; then
        echo "error" >&2;
exit 1
fi

re='^[0-9]+$'
if ! [[ $b =~ $re ]]; then
        echo "error" >&2;
exit 1
fi

# Input type of operation
echo "Enter Choice Number:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch

# Switch Case to perform
# calculator operations
case $ch in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo  $a / $b | bc -l`
  ;;
esac
echo "Result : $res"


