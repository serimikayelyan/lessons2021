#!/usr/bin/python3

sent = input("sentance: ")

for i in sent:
    if i.isalpha():
        print(sent.count(i))
        
