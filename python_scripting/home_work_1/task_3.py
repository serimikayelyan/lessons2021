#!/usr/bin/python3

sentence = input("Enter a sentence: ")
while len(sentence) == 0:
    print("Nothing to remove, duh.")
    sentence = input("Enter a sentence: ")
rm = input("Enter a number for amount of characters to remove: ")
while not rm.isdigit() or int(rm) > len(sentence):
    print("Non-integer number or it's greater then the length of the given sentence.")
    rm = input("Enter a number for amount of characters to remove: ")

print(sentence[:len(sentence) - int(rm)])



