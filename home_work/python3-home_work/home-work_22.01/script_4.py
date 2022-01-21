#!/usr/bin/python3

sentence = input("Enter the text : ")
symbol = input("Enter the symbol : ")

if symbol in sentence:
    new = sentence.replace(symbol, "\n")
    print(new)
else:
    print("error -> symbol not found")
