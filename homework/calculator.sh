#!/bin/bash

  sum=0
  z="a"
  echo "type only numbers"
  echo "enter the first number"
  read n1
  echo "enter the second number"
  read n2
  echo "1.Addition"
  echo "2.Subtraction"
  echo "3.Multiplication"
  echo "4.Division"
  echo "enter your choice"
  read ch
  case $ch in
       1)sum=`expr $n1 + $n2`
               echo "Sum = "$sum;;
       2)sum=`expr $n1 - $n2`
               echo "Sub = "$sum;;
       3)sum=`expr $n1 \* $n2`
               echo "Mul = "$sum;;
       4)sum=`expr $n1 / $n2`
               echo "Div = "$sum;;
       *)echo "invalid choice";;
  esac

