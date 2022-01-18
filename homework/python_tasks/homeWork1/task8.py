#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
MAXCOUNT = 0
if len(TEXT) > 0:
    for i in TEXT:
        if i.isalpha():
            COUNT = TEXT.count(i)
            if COUNT > MAXCOUNT:
                MAXCOUNT = COUNT
                MAXLETTER = i
print(MAXLETTER)
