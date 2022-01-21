#!/usr/bin/python3

sentence = input("Enter a sentence: ")
num = int(input("enter a number: "))
print(sentence[:-num])
if num >= len(sentence):
    print("You enter mor letters then in sentence: ")

