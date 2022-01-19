#!/usr/bin/python3.8

sentence = input("Enter a sentence: ")
count = 0
for i in sentence:
	if i.isalpha() == True:
		if i != "a" and i != "e" and i != "i": 
			if i != "o" and i != "u" and i != "e" and i != "y":
				count += 1
print(count)
