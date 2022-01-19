#!/usr/bin/python3.8

sentence = input("Enter a sentence: ")
sent = ""
for i in range(len(sentence)):
	sent = sentence[i] + sent
print(sent)
