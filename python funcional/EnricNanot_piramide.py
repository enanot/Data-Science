
n = int(input("introduce la altura "))
counter = 0
str =""
def piramide(n, counter,str):
    if(counter < n):
        str = str + "X"
        print(str)
        piramide(n,counter+1,str)
piramide(n,counter,str)       