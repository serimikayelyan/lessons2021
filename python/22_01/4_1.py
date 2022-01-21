#!/usr/bin/python3

sentence = input("Enter a sentence whit symbols: ")
sym = input("Enter a symbil: ")
for i in sentence:
    if i == sym:
        print("\n")
        continue
    print(i, end = "")

