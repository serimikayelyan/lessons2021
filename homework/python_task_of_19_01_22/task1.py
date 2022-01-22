#!/usr/bin/python3.8

count = 0
sentence = input("Enter a sentence: ")
for i in sentence:
	if i.isalpha():
		count += 1
print(count)
