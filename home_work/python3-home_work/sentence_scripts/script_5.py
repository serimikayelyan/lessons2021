#!/usr/bin/python3

#### requirement : Enter a sentence. Print the number of other characters used in the sentence (no letter, no digit). 

sentence = input("Enter the text : ")

####### version 1

#help_num = 0
#
#for i in sentence:
#    if not i.isalnum():
#        help_num += 1
#
#print(help_num)

####### version 2

#help_str = ""
#
#for i in sentence:
#    if not i.isalnum():
#        help_str += i
#
#print(len(help_str))
