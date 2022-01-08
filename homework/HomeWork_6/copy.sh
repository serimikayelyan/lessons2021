#!/bin/bash

function copy {
	d="$2"
	if [ -d "$d" ]; then
		d="$d/$1"
	fi
	
	cat "$1" > "$d"
}

copy $@
