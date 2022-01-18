#!/usr/bin/python3.8

text = input("Input text: ").strip()
rev_text = ""

while len(text) != 0:
    text = text.strip()
    index = text.find(" ")

    if index != -1:
        substring = text[:index]
    else:
        substring = text
        index = len(text)
    
    rev_text += substring[::-1] + " "
    text = text[index + 1:]

print(rev_text)
