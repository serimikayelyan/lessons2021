#!/usr/bin/python3

sent = input("sentance: ")
consonant = "qwrtypsdfghjklzxcvbnm"

for i in sent:
    if i in consonant:
        print(i)
