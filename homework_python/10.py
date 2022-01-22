#!/usr/bin/python3
while True:
    text = input()
    for i in text:
         sentence = text.split()
         word = sentence[0]
         for j in sentence:
             if len(word) < len(j):
                 word = j

    print(word)

