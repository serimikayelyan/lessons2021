#!/usr/bin/python3.8

text = input("Input text: ").lower()

while len(text) != 0:
    if text[0].isalpha():
        print(f"{text[0]}: {text.count(text[0])}")
    text = text.replace(text[0],"")
