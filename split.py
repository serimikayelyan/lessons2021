


string = input("run string ") 
splitBy = input("inchov split enel ") 

newArr = []
num = 0
print(newArr[num])
for i in range(len(string)):
    print(string[i])
    if string[i] == splitBy:
       num = num + 1
       continue
    #if num not in newArr:
      # newArr.append(string[i]) 
    #else:   
    newArr[num] = newArr[num] + string[i]
print(newArr)

