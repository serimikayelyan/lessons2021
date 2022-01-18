#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
NEWTEXT = ""
if len(TEXT) > 0:
    for i in range(len(TEXT)):
        if TEXT[i].isalpha():
            NUM = ord(TEXT[i])
            if NUM > 95:
                NEWNUM = chr(NUM - 32)
            elif NUM < 95:
               NEWNUM = chr(NUM + 32)
        else:
            NEWNUM = TEXT[i]
        NEWTEXT += NEWNUM
print(NEWTEXT)
