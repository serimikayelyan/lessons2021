#!/usr/bin/python3

text = input("Write your text,please: ")
n_text = ""

for i in range(len(text)-1, -1 ,-1):
    n_text += text[i]
print(n_text)    
