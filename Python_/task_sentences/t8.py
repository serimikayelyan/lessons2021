#!/usr/bin/python3

text = input("Text: ")
max_ = 0
countt = 0
index = 0
a = 0  # a popoxakany chhaytararelu depqum nuynpes ashxatum e, chgitem inchu
while index < len(text):
    countt = text.count(text[index])
    if countt > max_ :
        max_ = countt
        a = text[index]
    index+=1
if max_ == 0:
    print(text[0])
else:
    print(a, "used-",max_)

