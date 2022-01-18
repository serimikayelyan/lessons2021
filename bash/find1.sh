#!/bin/bash


for i in $path/*
do
	if [[  -d $i ]]
	then
		echo $i
	else
	       	[[  -f $i ]]
	fi
done

