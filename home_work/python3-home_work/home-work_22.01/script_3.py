#!/usr/bin/python3

sentence = input("Enter your text : ")
num = input("Enter number : ")

if num.isdigit():
    num = int(num)
    sent_len = len(sentence) - num
    print(sentence[:sent_len])
else:
    print("error(number) -> enter only number")
