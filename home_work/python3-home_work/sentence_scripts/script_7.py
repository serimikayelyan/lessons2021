#!/usr/bin/python3

#### requirement : Enter a sentence. Type the longest word used in a sentence. 

sentence = input("Enter the text : ")

for i in sentence:
    new_sent = sentence.split()

default = new_sent[0]

for j in new_sent:
    if len(default) < len(j):
        default = j

print(default)
