#!/usr/bin/python3

text=input("Input word: ")
word = " "

while text != "c":
    if text.isdigit():
        print("Supported only strings.")
        text=input("Input word,pleace: ")
    else:
        if len(text) > len (word):
            word = text
        text=input("Input word: ")
print("Longest word is-",word)


