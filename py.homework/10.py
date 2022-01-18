#!/usr/bin/python3

while True:
    a = input("Your sentence :")
    if a == "c":
        break
    longest = max(a.split()  , key=len ) 
    print("Longest word is: ", longest) 
