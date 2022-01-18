#!/usr/bin/python3

string = input("Write your text,please:")
for i in range(len(string)):
    if string[i].isalpha() == True  :
        if string[i].lower() != "a" and string[i].lower() != "e" and string[i].lower() != "i" and string[i].lower() != "o" and string[i].lower() != "u":

            print(string[i])
      
                                           
