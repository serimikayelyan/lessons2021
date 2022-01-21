#!/usr/bin/python3

TEXT = input("Enter a sentence: ")
SYMBOL = input("Enter a symbol: ")
if SYMBOL in TEXT:
    TEXT = TEXT.replace(SYMBOL, "\n")
print(TEXT)
