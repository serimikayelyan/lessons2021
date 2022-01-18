#!/usr/bin/python3

text = input("Text: ")
count = 0


for i in text:
    if not i.isalpha() and not i.isdigit():
        count+=1
print(count)

 # Սփեյսը նույնպես հասկանում է "այլ սիմվոլ"

#for i in text:
#    if not i.isalpha() and not i.isdigit() and not i.isspace():
#        count+=1
#print(count)

