#!/bin/bash

[[ $1+$2 -gt $3 && $2+$3 -gt $1 && $1+$3 -gt $2 ]] && echo y=1 || echo y=2

