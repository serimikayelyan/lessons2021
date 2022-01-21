#!/usr/bin/python3

print("input end to finish program")

while True:
    
    sent = input("sentance: ")
    
    if sent == "end":
        break
    
    num = input("number: ")
    
    if not num.isdigit():
        print("gmpac")
        continue
    if len(sent)-int(num) > 0:
        sentance = sent[:len(sent)-int(num)]
        print(sentance)
    else:
        print("gmpac")
