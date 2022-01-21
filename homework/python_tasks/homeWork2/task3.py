#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
COUNT = int(input("Enter a number: "))
STR = ""
if len(TEXT) > 0:
    if COUNT > len(TEXT):
        COUNT = len(TEXT)    
    for i in range(0, len(TEXT) - COUNT):
        STR += TEXT[i]
print(STR)

