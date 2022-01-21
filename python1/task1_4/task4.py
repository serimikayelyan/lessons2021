#!/bin/python
sent = input("input snentence: ")
sym = input("symbol")
for i in sent:
    if i != sym and sent.isspace() == False:
        print(i,end = "")
        continue
        
    else:
        print()
    
    
print()
