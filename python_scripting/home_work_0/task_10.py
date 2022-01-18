#!/usr/bin/python3

long_word = ""
long_word_len = 0

while True:
    inp = input("Input: ").strip()
    if inp.casefold() == "c":
        break
    if not inp.isprintable() or inp.count(" ") != 0:
        print("I will not count this as a word.")
        continue

    if len(inp) > long_word_len:
        long_word = inp
        long_word_len = len(inp)
    elif len(inp) == long_word_len and not inp.casefold() in long_word.casefold():
        long_word += ", " + inp

    print("Longest word:", long_word)
