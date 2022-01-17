#!/usr/bin/python3

sentence = input("Enter sentence: ")

words = ""

maxx = ""

iterr1 = 0
iterr2 = 1

if len(sentence) > 0:
    words = sentence.split(" ")

    while iterr1 <= len(words):

        if len(words[iterr1]) >= len(words[iterr2]):
            maxx = words[iterr1]
            iterr2 += 1
        elif len(words[iterr1]) <= len(words[iterr2]):
            iterr1 = iterr2
            maxx = words[iterr2]
            iterr2 += 1
        if iterr2 == len(words):
            break
else:
    print("Input sentence!")

print(maxx)
