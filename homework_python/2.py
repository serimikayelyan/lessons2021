#!/usr/bin/python3
string = input("write text: ")
for i in string:
    if i.isalpha() == True :
        if i != "a"  and i != "e" and i != "i" and i != "o" and i != "u" and i != "y" :
          print(i)
