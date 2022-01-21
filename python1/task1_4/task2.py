#!/bin/python
change = ""
while True:
    num_letter = input( "letter or number- ")
    if num_letter.lower() == "c":
        break
    if num_letter.isalpha() == True:
        change = ord(num_letter)
        print(num_letter,"is equivalent",change)
        continue
    if num_letter.isdigit() == True:
        num_letter = int(num_letter)
        change = chr(num_letter)
        print(num_letter,"is equivalent",change)
        continue
    else:
        print("Unknown value")
