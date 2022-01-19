#!/usr/bin/python3.8

first = 0
while True:
    sentence = input("Enter a sentence: ")
    
    if sentence.lower() == "c":
        break
    if first < len(sentence):
        first = len(sentence)
        second = sentence
        print(second)
    else:
        print(second)
