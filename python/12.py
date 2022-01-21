#!/usr/bin/python3

text=input("Input text: ")
count=0
min_l=0
max_l=0
str1=" "
for i in text:
    count=text.count(i)
    print(count)
    if count > max_l:
        max_l=count
    elif count < min_l:
        min_l=count
print("max",max_l, "min",min_l)
for i in range(len(text)):
    if text[i] == max_l:
        str1 = text[:i] + min_l + text[i+1:]
    elif text[i] == min_l:
        str1 = text[:i] + max_l + text[i+1:]
print(str1)
