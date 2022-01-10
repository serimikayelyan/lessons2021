#!/bin/bash

path=$(echo $1/* | tr '/' '\n')

for  i  in $path
do

    echo $i

done
