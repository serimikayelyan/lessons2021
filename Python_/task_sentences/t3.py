#!/usr/bin/python3

#text = input("Text: ")
#my_test = text.swapcase()
#print(my_test)

text = input("text: ")
ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
alpha = "abcdefghijklmnopqrstuvwxyz"
for i in range(len(text)):
    if text[i] in ALPHA:
        if ALPHA.index(text[i]):
            x = ALPHA.index(text[i])
            text == text[:i] + text[i] + text[i+1:]
    elif text[i] in alpha:
        text == text[:i] + text[i] + text[i+1:]
print(text)


