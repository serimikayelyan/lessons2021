#!/bin/bash

find2 () {
	   for i in $1/*
	   do
		if [[ -d $i ]]
		then
			echo $i
		find2 $i
else
	echo $i
		fi
done

}

find2 $1


