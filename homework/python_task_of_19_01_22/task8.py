#!/usr/bin/python3.8

sentence = input("Enter a sentence: ")
bcount = 0
if len(sentence) > 0:
    for i in sentence:
        if i.isalpha():
            count = sentence.count(i)
            if count > bcount:
                bcount = count
                letter = i
print(letter)	
