#!/usr/bin/python3

sent = input("Enter sentence: ")

max_ = 0
min_ = len(sent)


for i in sent:
	count = sent.count(i)

	if count > max_:
		max_ = count
		max_l = i

	if count < min_:
		min_ = count
		min_l = i

for i  in range(len(sent)):	
	
	if sent[i] == max_l:
		sent = sent[:i] + min_l + sent[i+1:]
	if sent[i] == min_l:
		sent = sent[:i] + max_l + sent[i+1:] 	
	
print(sent)
