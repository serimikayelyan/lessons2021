#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
MAXCOUNT = 0
MINCOUNT = 26
if len(TEXT) > 1:
    for i in TEXT:
        if i.isalpha():
            COUNT = TEXT.count(i)
            if COUNT > MAXCOUNT:
                MAXCOUNT = COUNT
                MAXLETTER = i     
            elif COUNT < MINCOUNT:
                MINCOUNT = COUNT
                MINLETTER = i
    TEXT = TEXT.replace(MAXLETTER, MINLETTER)
print(TEXT)
