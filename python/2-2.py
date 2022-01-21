#!/usr/bin/python3

print("For exit input `exit` ")
text=input("Input number or letter: ")

while text != "exit":
    if text.isdigit():
        num = int(text)
        print(chr(num))
    elif text.isalpha() and len(text)<2:
        print(ord(text))
    text=input("Input number or letter: ")
    print("For exit input `exit` ")
print("Exit")
