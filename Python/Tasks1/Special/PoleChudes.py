#!/usr/bin/python3

#Introduction
print("Rules: If you know the answer type the word immediately.\nIf not, enter letter by letter. \nIf you typed the same letter more than twice, you will lose the game\n")

#Question
print("What is the capital of France?")
print("-----")


word = "-----"

while True:
    #Actions
    answer = input("> ")

    if len(answer) > 5:
        print("Count of letters are less than 5")
    elif len(answer) > 1 and len(answer) < 5:
        print("Be aware to rules!")
    elif answer.lower() == "p":
        word = "P" + word[1:]
        print(word)
    elif answer.lower() == "a":
        word = word[0] + "a" + word[2:]
        print(word)
    elif answer.lower() == "r":
        word = word[:2] + "r" + word[3:]
        print(word)
    elif answer.lower() == "i":
        word = word[0:3] + "i" + word[4:]
        print(word)
    elif answer.lower() == "s":
        word = word[0:4] + "s"
        print(word)
    elif answer.lower() == "paris":
        word = "Paris"
        print(word)
    else:
        print("Does not match any letter in word!")
    
    if word.lower() == "paris":
        print("You win!")
        break
