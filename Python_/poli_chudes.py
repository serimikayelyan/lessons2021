#!/usr/bin/python3
import sys


print("Rules of the game: If you know the answer to the question, write the word in full, otherwise write a letter that can be found in the word.")
print("Question: What is the capital of Armenia?")
print("Answer: ------")
ans = "erevan"
quest = "------"

while True:
    alpha = input("Enter the word or any letter: ")
    if alpha.lower() == "erevan":
        print("Erevan")
        print("That's the right answer, You won.")
        sys.exit()
    if 0 < len(alpha) < 2:
        if alpha.lower() == "e" :
            quest = "E" + quest[1:2] + alpha + quest[3:]
            print(quest)
        elif alpha in ans:
            for i in range (1,len(ans)):
                if alpha == ans[i]:
                    quest = quest[:i] + alpha + quest[i+1:]
                    print(quest) 
        else:
            print(alpha, "_ is not in the answer") 
    else:
        print("Write the correct word, or 1 letter")
    if quest.lower() == "erevan":
        print("That's the right answer,you won")
        sys.exit()

