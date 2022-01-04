#!/bin/bash



function 151
{
sum=0
for (( i = 1 ; i <= $(($1/2)); i++ ))
do
        if [[ $1%i -eq 0 ]]
        then    
                sum=$(($sum+$i))
        fi      
done    
b=$(($sum+$1))
echo $b

}


function 152
{
sum=1
for (( i = 1 ; i <= $(($1/2)); i++ ))
do
        if [[ $1%i -eq 0 ]]
        then    
                sum=$(($sum*i))
        fi      
done    
b=$(($sum*$1))
echo $b
}



function 153
{
sum=0
for (( i = 1 ; i <= $(($1/2)); i++ ))
do
        if [[ $1%i -eq 2 ]]
        then    
                sum=$(($sum+$i))
        fi      
done    
b=$(($sum+$1))
echo $b

}


function 154

{
sum=0
for (( i = 1 ; i <= $(($1/2)); i++ ))
do
        if [[ $1%i -eq 3 ]]
        then    
                sum=$(($sum+$i))
        fi      
done    
b=$(($sum+$1))
echo $b

}


