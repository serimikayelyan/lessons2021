#!/usr/bin/python3

#### requirement : Enter a sentence. Type the words of the sentence in the same order, butthe letters of the words in the opposite order (hello world → olleh dlrow). 

sentence = input("Enter the text : ")

new_sentence = ""

for i in range(len(sentence)):
    new_sentence = sentence[i] + new_sentence

print(new_sentence)
