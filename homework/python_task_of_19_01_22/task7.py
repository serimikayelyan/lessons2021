#!/usr/bin/python3.8

sentence = input("Enter a sentence : ")
for i in sentence:
	sent = sentence.split()
start = sent[0]
for j in sent:
	if len(start) < len(j): 
		start = j
print(start)
