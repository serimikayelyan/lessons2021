#!/usr/bin/python3
#includes spaces
TEXT = input("Enter a sentence: ")
COUNT = 0
if len(TEXT) > 0:
    for i in range(len(TEXT)):
        if TEXT[i].isalnum() == False:
            COUNT += 1
print(COUNT)
