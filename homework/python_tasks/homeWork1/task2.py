#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
VOWELS = ("AEIOUaeiou")
COUNT = 0
if len(TEXT) > 0:
    for i in TEXT:
        if not i in VOWELS and i != " " and i.isalpha():
            COUNT += 1
print(COUNT)
