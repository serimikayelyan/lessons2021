#!/usr/bin/python3.8

text = input("Input text: ").lower()

char = ""
char_count = 0

while len(text) != 0:
    if text[0].isalpha() and text.count(text[0]) > char_count:
        char = text[0]
        char_count = text.count(text[0])

    text = text.replace(text[0],"")

print(char)
