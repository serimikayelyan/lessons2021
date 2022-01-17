#!/usr/bin/python3

sentence = input("Type a sentence: ")
consonants = ("b", "c", "d", "f", "g", "h", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z")
for i in sentence:
    if i in consonants:
        print(i)
