#Genera una lista aleatoria de 5 n�meros utilizando el m�dulo random y luego calcular el promedio de esos n�meros.

import random, statistics

list = []
for i in range (0,5):
    list.append(random.random()*10)
print(statistics.mean(list))
