#!/usr/bin/python3

a = input("Your sentence:")

countdig = 0

for i in a:
	if i.isdigit():
		countdig = countdig + 1
print( countdig)
