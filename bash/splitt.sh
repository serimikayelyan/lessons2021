#!/bin/bash

g=$(echo $1 | tr '/' '\n')

for i in $g
   do
     echo $i
   done
