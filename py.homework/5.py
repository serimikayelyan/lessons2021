#!/usr/bin/python3

a = input("Your sentence:")

symvols=0

for i in a :
    if  not i.isalpha():
        if not i.isdigit():
            symvols+= 1
print(symvols)

