#!/usr/bin/python3

text = input("Text: ")

maxx = text.count(text[0])
minn = text.count(text[1])
index = 0
min_letter = ""
max_letter = ""

while index < len(text):
    if text.count(text[index]) > maxx:
        maxx = text.count(text[index])
        max_letter = text[index]
    if text.count(text[index]) < minn:
        minn = text.count(text[index])
        min_letter = text[index]
    index+=1

text = text.replace(min_letter, "0")
text = text.replace(max_letter, min_letter)
text= text.replace("0", max_letter)
print(text)

#Առաջին տառի max լինելու դեպքում չի աշխատում
#Մնացած դեպքում նորմալ է
