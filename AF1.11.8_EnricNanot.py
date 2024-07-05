#Genera una lista aleatoria de 5 números utilizando el módulo random y luego calcular el promedio de esos números.

import random, statistics

list = []
for i in range (0,5):
    list.append(random.random()*10)
print(statistics.mean(list))
