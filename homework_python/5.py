#!/usr/bin/python3
text = input()
for i in text:
    if not i.isalpha() and not i.isdigit():
     print(i)
