#!/usr/bin/python3.8

text = input("Enter a sentence: ")
char = input("Enter a char: ")
var = ""
for i in text:
	if len(char) == 1:
		if i == char:
			print(var)
			var = ""
			continue
		var += i
	else:
		print("Please enter a only one char.")
		break
