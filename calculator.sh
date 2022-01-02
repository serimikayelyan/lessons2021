#!/bin/bash
function cal
{

echo "Enter fist number"
read a
echo "Enter second number"
read b
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Divition"
echo "5.Square_root"
echo "6.Division_balance"
#echo "7.COS"
#echo "8.SIN"
echo "CHOOSE"

read ch
case $ch in
     "1" )res=$(expr $a + $b)

        echo "Sum is $res"
        ;;
     "2" )res=$(expr $a - $b)
        echo "Sub is $res"
        ;;
     "3" )res=$(expr $a \*  $b)
        echo "Mul is $res"
        ;;
     "4" )res=`echo $a / $b | bc`
        echo "Div is $res"
        ;;
      "5" )res=`echo "sqrt($a * $b)" | bc `
        echo "Square_root is $res"
         ;;
       "6" )res=$(expr $a % $b)
        echo "Balance is $res"
        ;;
     #"7" ) res1= `Math.cos($a)`
           #res2= Math.cos($b)`
           #echo "Cos(a)= $res1"
           #echo "Cos(b)= $res2"
           #;;

esac
}
cal
####???
read -p "For continue input Y  :" ans
while [[ $ans -eq "Y" ]]
do
        cal
        read -p "For continue input Y  :" ans



   if [[ $ans != "Y" ]]
      then
         exit
    fi
done

