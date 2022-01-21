#!/usr/bin/python3

text = input("Input text: ")
split = input("Input something for splitting the text: ")
str1 = ""
count = 0

while count < len(text):
    if text[count] != split:
        str1+=text[count]
        count+=1
    else:
        print(str1)
        str1 = ""
        count+=1
print(str1)    
