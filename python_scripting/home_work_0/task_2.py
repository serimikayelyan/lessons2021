#!/usr/bin/python3

consonants = "bcdfghjklmnpqrstvwxyz"

text = input("Input text: ").casefold()

while len(text) != 0:
    if text[0] in consonants:
        print(text[0])
    text = text.replace(text[0],"")
