#!/usr/bin/python3

text = input("Text: ")

maxx = text.count(text[0])
minn = text.count(text[1])
index = 0
min_letter = ""
max_letter = ""

while index < len(text):
    c = text.count(text[index])
    if c > maxx:
        maxx = c
        max_letter = text[index]
    if c < minn:
        minn = c
        min_letter = text[index]
    index+=1

text = text.replace(min_letter, max_letter)
print(text)



#My code makes a few a lot, but not the other way around 

