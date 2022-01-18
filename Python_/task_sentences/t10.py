#!/usr/bin/python3

max_ = ""
while True:
    
    letter = input("Word: ")
    if len(letter) > len(max_):
        max_ = letter
        print(max_ )
    elif letter == "c":
        break
    else:
        print(max_)

