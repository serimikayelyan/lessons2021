#!/usr/bin/python3.8

sent = input("Enter sentence: ")

count = 0

for i in range(len(sent)):

	if sent[i].isalpha():

		count += 1

print("Count: ", count)

