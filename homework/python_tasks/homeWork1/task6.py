#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
TEXT = TEXT[::-1]
if len(TEXT) > 0:
    TEXT = TEXT.split()
    TEXT.reverse()
    for i in TEXT:
        print(i, end=' ')
