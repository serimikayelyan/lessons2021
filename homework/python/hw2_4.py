#!/usr/bin/python3

sent = input("Enter sentence and symbol:  ")
word = ""
for i in sent:
	if i.isalpha():
		word = word + i
	if not i.isalpha():
		print(word)
		word = ""
print(word)
