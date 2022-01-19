#!/usr/bin/python3
count = 0
string = input("write text: ")
for i in string:
    if i.isalpha():
        count += 1
print(count)
