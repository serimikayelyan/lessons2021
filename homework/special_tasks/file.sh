#!/bin/bash

read -p "str" str
read -p "delimiter" delim
echo ${str//$delim/" "}
