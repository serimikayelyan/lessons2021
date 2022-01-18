#!/usr/bin/python3

STRL = 0

while True:
    TEXT = input("Enter a word: ")
    
    if TEXT.lower() == "c":
        break
    if STRL < len(TEXT):
        STRL = len(TEXT)
        FSTR = TEXT
        print(FSTR)
    else:
        print(FSTR)
