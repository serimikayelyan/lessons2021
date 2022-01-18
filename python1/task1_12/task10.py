#!/bin/python


while True:
    sent = input("input words- ")
    if sent.lower() == "c":
        break
    for i in range(len(sent)):
        longest = sent.split()
        max_value = longest[0]
        for j in longest:
            if len(max_value) < len(j):
                max_value = j
    print("The longest word is", max_value)



