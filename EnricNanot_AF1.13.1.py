import numpy as np

#Ejercicio 1

print(np.array([[1,2,3,4],[4,5,6,7],[8,9,10,11]]))

print("-----------------------------------------------------")
#Ejercicio 2
colection = []

colection2 = np.random.randint(0,100,[5,5])
   

sum = 0
for i in range (5):
    for j in range(5):
        sum = colection2[i][j]+sum

print(colection2)

print (sum)

print("-----------------------------------------------------")

#Ejercicio 3


colection3 = np.random.randint(0,50,[10,5])
max = np.max(colection3)
min = np.min(colection3)
print (colection3)

print(max)

print(min)