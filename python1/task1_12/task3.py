#!/bin/python
sent = input("input sentence: ")
capital = ""
lower = ""
new_text = ""
new_ind = ""
for i in range(65, 90):
    capital += chr(i)
for i in range(97, 122):
    lower += chr(i)
if len(sent) > 0:
    for i in range(len(sent)):
        #x = capital.index(sent[i])
        if capital.find(sent[i]) >= 0:
        #if x >= 0:
            new_ind = capital.find(sent[i])
            new_text += lower[new_ind]
           # y = lower.index(sen[i])
        elif lower.find(sent[i]) >= 0:
        #elif y >= 0:
            new_ind = lower.find(sent[i])
            new_text += capital[new_ind]
        else:
            new_text += sent[i]
    print(new_text)
#I also tried the indes method but it didn't work
