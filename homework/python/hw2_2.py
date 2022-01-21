#!/usr/bin/python3


while True:

	txt = input("Enter letter or number: ")

	if txt == "0":
		break	
	if txt.isalpha():
		print(ord(txt))
	if txt.isdigit():
		num = int(txt)
		print(chr(num))
	
