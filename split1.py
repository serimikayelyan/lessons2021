string = input("run string ") 
splitBy = input("inchov split enel ") 


def split(string, splitBy):
    result = []
    word = ''
    for i in string:
        if i not in splitBy:
            word += i
        elif word:
            result.append(word)
            word = ''

    if word:
        result.append(word)

    return result

print(split(string, splitBy))