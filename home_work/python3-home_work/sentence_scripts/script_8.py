#!/usr/bin/python3

#### requirement :  Enter a sentence. Print the most used letter in the sentence.

sentence = input("Enter the text : ")
maxm = 1

for i in sentence:
    if i.isalpha():
        new_sent = sentence.count(i)
        if new_sent > maxm:
            maxm = new_sent
            value = i     


print("Most used letter : " + value)
print("Count : " , maxm)
