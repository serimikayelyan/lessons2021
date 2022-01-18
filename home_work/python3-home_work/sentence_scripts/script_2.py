#!/usr/bin/python3

#### requirement : enter a sentence. Type the consonants used in the sentence. 

sentence = input("Enter the text : ")

new_sent = sentence.replace("a", "").replace("o", "").replace("e", "").replace("i", "").replace("u", "")

print(new_sent)
