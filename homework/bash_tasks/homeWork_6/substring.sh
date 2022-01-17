#!/bin/bash

#version 1
if grep "$2" <<< "$1"; then
	echo true
else
	echo false
fi

#version 2
if [[ "$1" == *"$2"* ]]; then
	echo true
else
	echo false
fi
