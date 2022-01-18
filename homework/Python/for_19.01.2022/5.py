#!/bin/python
text = input("Write youre text,please: ")
count = 0
for i in text:
    if  not  i.isalnum()  and not  i.isspace():
       count +=1
print(count)
