#!/usr/bin/python3


#1st Version
sentence = input("Input sentence: ")

rvrsd = ""

if len(sentence) > 0:
    for i in sentence:
        rvrsd = i + rvrsd 
    print(rvrsd)
else:
    print("Input sentence!")


#2nd Version
sentence = input("Input sentence: ")

rvrsd = ""

if len(sentence) > 0:
    for i in range(len(sentence)-1, -1, -1):
        rvrsd += sentence[i]
    print(rvrsd)
else:
    print("Input sentence!")
