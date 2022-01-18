#!/usr/bin/python3.8

text = input("Input text: ").strip()
longest_substring = ""

max_substr_len = 0

while len(text) != 0:
    text = text.strip()
    index = text.find(" ")

    if index != -1:
        substring = text[:index]
    else:
        index = len(text)
        substring = text
    
    if len(substring) > max_substr_len:
        longest_substring = substring
        max_substr_len = len(substring)
    elif len(substring) == max_substr_len and not substring.casefold() in longest_substring.casefold():
        longest_substring += "; " + substring
    
    text = text[index + 1:]

print(longest_substring)
