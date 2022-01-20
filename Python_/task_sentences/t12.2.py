#!/usr/bin/python3

text = input("Text: ")

maxx = text.count(text[0])
minn = text.count(text[1])
index = 0
min_letter = text[0]
max_letter = text[1]

while index < len(text):
    if text.count(text[index]) > maxx:
        maxx = text.count(text[index])
        max_letter = text[index]
    if text.count(text[index]) < minn:
        minn = text.count(text[index])
        min_letter = text[index]
    index+=1
for i in range(len(text)):
    if text[i] == max_letter:
        text = text[:i] + min_letter + text[i+1:]
    elif text[i] == min_letter:
        text = text[:i] + max_letter + text[i+1:]
print(text)
