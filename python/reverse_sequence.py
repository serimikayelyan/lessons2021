#!/usr/bin/python3

sentence = input("type a sentence: ")
sentence += " "
split = ""
new_sent = ""

for i in sentence:
    if i != " ":
        split += i
    else:
        for j in range(len(split)):
            new_sent += split[len(split) - j - 1]
        new_sent += " "
        split = ""

print(new_sent)
