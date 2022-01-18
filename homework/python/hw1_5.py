#!/usr/bin/python3.8

sent = input("Enter sentence: ")

countsym = 0

for i in sent:

	if not i.isalnum():

		countsym += 1

print("Simvolneri qanak: ", countsym - sent.count(" ")) 
