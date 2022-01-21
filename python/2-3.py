#!/usr/bin/python3

text=input("Input text: ")
num=int(input("Input number: "))
str1=""
count=0
while count <= (len(text)-num-1):
    str1+= text[count]
    count+=1
print(str1)
