#!/bin/bash

function split {
	str=$(echo $1 | tr "$2" "\n")
	for i in $str
	do
		echo $i
	done
}

split $@
