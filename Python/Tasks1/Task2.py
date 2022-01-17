#!/usr/bin/python3

char = input("Input sentence: ")

consonants = ""

if len(char) > 0:
    for i in range(len(char)):
        if char[i].isalpha() == True:
            if char[i].lower() != "a" and char[i].lower() != "e" and char[i].lower() != "i":
                if char[i].lower() != "o" and char[i].lower() != "u" and char[i].lower != "y":
                    consonants += char[i] + ", "
else:
    print("Input string!")

if len(consonants) > 0:
    print(consonants)
