#!/bin/bash


function task151
{
    n=0
    for (( i=1; i <= $1/2; i++ ))
    do
        if [[ $1%i -eq 0 ]]
       	then
            n=$(($n+$i))
        fi
    done
    echo $n
}

function task152
{
    n=1
    for (( i=1; i <= $1/2; i++ ))
    do
        if [[ $1%i -eq 0 ]]
       	then
            n=$(($n*$i))
        fi
    done
    echo $n
}

function task153
{
    n=0
    for (( i=1; i <= $1/2; i++ ))
    do
        if [[ $1%i -eq 2 ]]
       	then
            n=$(($n+$i))
        fi
    done
    echo $n
}

function task154
{
    n=1
    for (( i=1; i <= $1; i++ ))
    do
        if [[ $1%i -eq 3 ]]
       	then
            n=$(($n*$i))
	fi
    done
    echo $n
}

function task155
{
    n=0
    for (( i=10; i < 100; i++))
    do
        if [[ $i%3 -eq 0 ]]
	then
        n=$(($n+$i))
	fi
    done
    echo $n
}

function task156
{
    n=1
    for (( i=10; i < 100; i++ ))
    do
        if [[ $i%3 -eq 0 && $i%5 -eq 0 ]]
       	then
	    n=$(($n*$i))
	fi
    done
    echo $n
}

function task157
{
    n=0
    for (( i=100; i < 1000; i++ ))
    do
        if [[ $i%5 -ne 0 ]]
       	then 
	    n=$(($n+$i))
	fi
    done
    echo $n
}

function task158
{
    n=1
    for (( i=100; i < 1000; i++ ))
    do
        if [[ $i%2 -ne 0 && $i%3 -ne 0 ]]
       	then
            n=$(($n*$i))
        fi
    done
    echo $n
}

