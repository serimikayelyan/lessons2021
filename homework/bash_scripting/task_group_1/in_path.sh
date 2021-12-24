#!/bin/bash

IFS=":"
for arg in $@; do
    if [[ ! "${IFS}${PATH[*]}${IFS}" =~ "${IFS}${arg}${IFS}" ]]; then
        echo $arg is not in \$PATH
    else
        echo $arg is in \$PATH
    fi
done

