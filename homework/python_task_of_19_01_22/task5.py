#!/usr/bin/python3.8

sentence = input("Enter a sentence: ")
count = 0
for i in sentence:
	if not i.isalnum():
		count += 1
print(count) 

