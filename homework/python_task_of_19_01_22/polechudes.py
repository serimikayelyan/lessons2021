#!/usr/bin/python3.8

#Question
print("What is the capital of France?:P.S Answer in lower case:))")
#Answer
print("-----")
word = "-----"

while True :
    answer = input("Enter a letter: ")


    if  len(answer) > 1:
        print("Ups!! If you entered more than one letter,please enter one letter:))")
    elif answer == "p":
        word = "p" + word[1:]
        print(word )
    elif answer == "a":
        word = word[0] + "a" + word[2:]
        print(word )
    elif answer == "r":
        word = word[:2] + "r" + word[3:]
        print(word)
    elif answer == "i":
        word = word[0:3] + "i" + word[4:]
        print(word )
    elif answer == "s":
        word = word[0:4] + "s" + word[5:]
        print(word)
    elif answer == "paris":
        word = "paris"
        print(word)
    else:
       print("Ups!! You entered a wrong letter,please try again:))") 

    if word == "paris":
        print("WOW!! You won:))")
        break
