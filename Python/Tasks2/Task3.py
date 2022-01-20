#!/usr/bin/python3

sentence = input("Enter sentence: ")
num = input("Enter number: ")


if len(num) == 0 or len(sentence) == 0:
    print("Input is incorrect!")
elif len(num) > len(sentence):
    print("Number can not be bigger than characters in string!")
else:
    counter = 0
    for i in range(len(sentence)-1, 0, -1):
        if sentence[i].isspace():
            continue
        else:
            sentence = sentence[0:i]
            counter = counter + 1
            if int(num) == counter:
                print(sentence)
                break
