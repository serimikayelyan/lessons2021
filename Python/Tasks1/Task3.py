#!/usr/bin/python3

sentence = input("Input a sentence: ")

changed = ""

capital = ""
small = ""

for i in range(65, 91):
    capital += chr(i)

for i in range(97, 122):
    small += chr(i)

if len(sentence) > 0:
    for i in range(len(sentence)):
        if sentence[i].isalpha():
            if capital.find(sentence[i]) >= 0:
                num = capital.find(sentence[i])
                changed += small[num]
            elif small.find(sentence[i]) >= 0:
                num = small.find(sentence[i])
                changed += capital[num]
        else:
            changed += sentence[i]
    print(changed)
else:
    print("Input string!")

