#!/bin/bash
mstr = input("Enter a sentence: ")
mstr = mstr[::-1]
rstr = ""
mstr = mstr.split()
mstr.reverse()
for i in mstr:
    rstr += i + " "
print(rstr )
