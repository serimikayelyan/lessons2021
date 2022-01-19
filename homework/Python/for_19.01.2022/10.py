#!/bin/python


while True:
    word = input("Write words,please: ")
    if word.lower() == "c":
        break
    for i in range(len(word)):
        longest = word.split()
        max_value = longest[0]
        for j in longest:
            if len(max_value) < len(j):
                max_value = j
    print("The longest word is", max_value)
