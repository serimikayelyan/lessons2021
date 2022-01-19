#!/usr/bin/python3

sent = input("sentence: ")
count = 0

for i in sent:
    if i.isdigit():
        count += 1
print(count)
