#!/bin/bash


if [[ ! $2  ]];then
	echo " incorrect information "
fi
if [[ -f $2 ]]; then
	echo " $2 is file "
fi

if [[ -d $2 ]]; then
	cat $1 > $2/$1
fi

