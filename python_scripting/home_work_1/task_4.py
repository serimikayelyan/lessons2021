#!/usr/bin/python3

sentence = input("Enter a sentence: ")
while len(sentence) == 0:
    print("Nothing to remove, duh.")
    sentence = input("Enter a sentence: ")

symbol = input("1 symbol or letter or whatever.")
while len(symbol) != 1:
    print("Just 1 symbol, please.")
    symbol = input("1 symbol or letter or whatever.")

sentence.strip(symbol)
while len(sentence):
    ind = sentence.find(symbol)
    if ind == -1:
        print(sentence)
        break
    else:
        print(sentence[:ind])
        sentence = sentence[ind + 1:]
    
