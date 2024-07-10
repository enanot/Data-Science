import numpy as np
import time as t

#Ejercicio 1

#print(np.array([[1,2,3,4],[4,5,6,7],[8,9,10,11]]))

a = np.arange(1,13,).reshape(3,4)
print(a)
print("-----------------------------------------------------")
#Ejercicio 2
colection = []

colection2 = np.random.randint(0,101,[50000,50000])
   
a1 = t.time()
sum = 0
for i in range (50000):
    for j in range(50000):
        sum = colection2[i][j]+sum
a2 = t.time()
sum2 = np.sum(colection2)
a3 = t.time()


print("con for", a2-a1 )
print("con sum", a3-a1)
print(colection2)

print (sum)

print (sum2)

print("-----------------------------------------------------")

#Ejercicio 3


colection3 = np.random.randint(0,51,[10,5])
max = np.max(colection3)
min = np.min(colection3)

print (colection3)

print(max)

print(min)