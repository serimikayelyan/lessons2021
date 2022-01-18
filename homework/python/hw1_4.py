#!/usr/bin/python3.8

sent = input("Enter sntence: ")

countdig = 0

for i in sent:

	if i.isdigit():

		countdig = countdig + 1

print("Tvanshanneri qanak: ", countdig) 
