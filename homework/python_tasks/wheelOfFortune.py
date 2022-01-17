#!/usr/bin/python3

FIND = "12345"
ANSWER = "paris"

print("What is the capital of France?")
print(FIND)

while True:
    WORD = input("Enter a letter: ")
    if WORD == ANSWER:
        print("This is the correct answer!")
        print(ANSWER)
        break
    if WORD in ANSWER:
        print("This letter is in the answer")
        for i in range(len(ANSWER)):
            if ANSWER[i] == WORD:
                FIND = FIND.replace(FIND[i], WORD, 1)
    else:
        print("This letter isn't in the answer")
    if FIND == ANSWER:
        print("You guessed the right answer!")
        print(ANSWER)
        break
    print(FIND)
