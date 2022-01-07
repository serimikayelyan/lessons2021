#!/bin/bash

mydir=$1

if [ -d $mydir ]
then
	echo "The $mydir directory exists "
	cd $mydir
	ls 
else
	echo "The $mydir directory doesnt exist "
fi
