#!/bin/bash

for i in $@; do
    if ! (($i % 2)); then
	echo 1
	break
    elif [[ $i -eq ${@:(-1)} ]]; then
	echo 2
    fi
done
