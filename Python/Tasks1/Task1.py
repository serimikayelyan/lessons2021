#!/usr/bin/python3
    
string = input("Enter sentence: ")
count = 0

if string != "":
    for i in range(len(string)):
        if string[i].isspace() == False and string[i].isalpha() == True:
            count += 1
else:
    print("Need a sentence to count!")

if count > 0:
    print(count)
