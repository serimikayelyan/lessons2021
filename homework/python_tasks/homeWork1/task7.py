#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
MAXLENGTH = ""
FINDEX = 0
SINDEX = 1

if len(TEXT) > 0:
    WORD = TEXT.split(" ")
    while FINDEX <= len(WORD):
        if len(WORD[FINDEX]) >= len(WORD[SINDEX]):
            MAXLENGTH = WORD[FINDEX]
            SINDEX += 1
        elif len(WORD[FINDEX]) <= len(WORD[SINDEX]):
            FINDEX = SINDEX
            MAXLENGTH = WORD[SINDEX]
            SINDEX += 1
        if SINDEX == len(WORD):
            break

print(MAXLENGTH)
