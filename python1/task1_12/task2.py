#/bin/python
sent=input("Enter sentences- ")
for i in range(len(sent)):
    if sent[i].isalpha()  == True:
        if sent[i].lower() != "a" and sent[i].lower() != "e" and sent[i].lower() != "i" and sent[i].lower() != "o"and sent[i].lower() != "u" and sent[i].lower() != "y":
            print(sent[i])




