#!/usr/bin/python3.8
print("You can exit the program by entering 'break'")
while True:
	text = input("Enter a number/letter: ")
	if text.lower() == "break":
		break
#If the input is a letter, it will work as follows:
	if text.isalpha():
		if len(text) < 2:
			print(ord(text))
		else:
			print("Please enter a only one letter. ")
#If the input is a number, it will work as follows
	elif text.isdigit():
		if int(text) > 0:
			print(chr(int(text)))
#If the input is a char, it will work as follows
		else:
			print("Please enter a only positive numbers. ")
	else:
		print(ord(text))
