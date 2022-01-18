#!/usr/bin/python3

text=input("Enter text: ")
count = 0

for i in text:
    if not i.isdigit() and not i.isalpha() and i != " ":
       count+=1

print ("Include",count,"symbol(s)")
