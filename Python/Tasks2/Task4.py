#!/usr/bin/python3

sentence = input("Enter your sentence: ")
symbol = input("Enter your split symbol: ")

symCount = len(symbol)
iterJump = len(symbol)

if len(sentence) == 0 or len(symbol) == 0:
    print("Input is incorrect")
else:
    iter_ = 0

    for i in range(len(sentence)):
        if sentence[i:symCount] == symbol: 
            print(sentence[iter_:i])
            i = i + iterJump
            iter_ = i
        elif i == len(sentence)-1:
            print(sentence[iter_:])
        symCount = symCount + 1
