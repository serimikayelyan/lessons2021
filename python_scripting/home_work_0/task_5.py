#!/usr/bin/python3.8

text = input("Input text: ")

while len(text) != 0:
    if not text[0].isalnum():
        print(f"{text[0]}: {text.count(text[0])}")
    text = text.replace(text[0],"")
