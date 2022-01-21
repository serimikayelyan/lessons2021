#!/usr/bin/python3.8

sent = input("Write sentence and number: ")
sent1 = sent.split()
dig = sent1[-1]
dig1 = sent1[-1]
if dig.isdigit():
    dig = int(dig)
    if len(sent) > int(dig):
        print(sent[:len(sent)-dig-1-len(dig1)])
    elif len(sent) < int(dig):
        print("Ups!! The number entered is greater than the number of letters in the sentence.")
else:
		print("Upss!! Forgot to enter sentence or number.")
