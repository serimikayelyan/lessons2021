#!/bin/python
print("Which is the highest mountain in the world")
right_answer = "xxxxxxx"
print(right_answer)
while True:
    answer = input("Enter a letter or all word ")
    if len(answer) > 7:
        print("Your answer must contain 7 letters")
    
    elif answer == "e":
        right_answer = "E" + right_answer[1:]
        right_answer = right_answer[0:2] + "e" + right_answer[3:]
        right_answer = right_answer[0:4] + "e" + right_answer[5:]
        print(right_answer)
    elif answer == "v":
        right_answer = right_answer[0] + "v" + right_answer[2:]
        print(right_answer)
    elif answer == "r":
        right_answer = right_answer[0:3] + "r" + right_answer[4:]
        print(right_answer)
    elif answer == "s":
        right_answer = right_answer[0:5] + "s" + right_answer[6:]
        print(right_answer)
    elif answer == "t":
        right_answer = right_answer[0:6] + "t" + right_answer[7:]
        print(right_answer)
    elif answer == "Everest":
        right_answer = "Everest"
        
    else:
       print("You are wrong, try again")
       
    if right_answer.lower() == "everest":
        print("!!YOU WIN!!")
        break
