import random, string 

def ranList():
    numList = []
    while (len(numList)< 7):
        num = random.randint(0,9)
        if (num in numList) == False :
            numList.append(num)
    return numList


#--------------------------------------------------

def ranList2(n,l):
    numList = []

    while (len(numList)< n):
        num = random.randint(0,l)
        if (num in numList) == False :  #if num not in numList
            numList.append(num)
    return numList

def ranPass(n):
    list= string.ascii_letters+string.digits
    l = len(string.ascii_letters+string.digits)
    myList = ranList2(n,l)
    myPass=""
    for i in range(0,n):
        myPass=myPass+list[myList[i]]
    return myPass
  

myList = ranList() 
print(myList)
    

print("--------------------------------------------------")

myPass= ranPass(8)
       
print(myPass)
     