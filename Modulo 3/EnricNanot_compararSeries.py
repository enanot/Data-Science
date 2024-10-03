import numpy as np
import pandas as pd
from scipy import stats
import matplotlib.pyplot as plt

#Supón que tienes cinco series de datos que representan las calificaciones de estudiantes en diferentes materias:

# Serie A: [78, 85, 91, 76, 84, 90, 72, 88, 95, 80, 89, 83, 77, 82, 74]
# Serie B: [55, 60, 58, 62, 65, 59, 54, 61, 67, 63, 57, 66, 64, 68, 69]
# Serie C: [82, 90, 78, 88, 95, 85, 87, 92, 91, 89, 84, 93, 80, 81, 94]
# Serie D: [45, 50, 52, 55, 53, 48, 49, 51, 47, 54, 56, 58, 59, 60, 62]
# Serie E: [90, 92, 88, 87, 95, 94, 93, 91, 96, 89, 85, 91, 90, 88, 92]
# Tareas
# Calcula la media para cada serie.
# Calcula la desviación estándar (una medida de dispersión) para cada serie.
# Calcula la asimetría para cada serie.
# Compara las medias y determina cuál serie tiene la media más alta.
# Compara las desviaciones estándar y determina cuál serie tiene más dispersión.
# Compara las asimetrías y determina cuál serie tiene más asimetría.


#Guardamos las series como como array
a= [78, 85, 91, 76, 84, 90, 72, 88, 95, 80, 89, 83, 77, 82, 74]
b= [55, 60, 58, 62, 65, 59, 54, 61, 67, 63, 57, 66, 64, 68, 69]
c= [82, 90, 78, 88, 95, 85, 87, 92, 91, 89, 84, 93, 80, 81, 94]
d= [45, 50, 52, 55, 53, 48, 49, 51, 47, 54, 56, 58, 59, 60, 62]
e= [90, 92, 88, 87, 95, 94, 93, 91, 96, 89, 85, 91, 90, 88, 92]

arr_a= np.array(a)
arr_b= np.array(b)
arr_c= np.array(c)
arr_d= np.array(d)
arr_e= np.array(e)

#calculamos las medias

mean_a = np.mean(arr_a)
mean_b = np.mean(arr_b)
mean_c = np.mean(arr_c)
mean_d = np.mean(arr_d)
mean_e = np.mean(arr_e)

#calculamos las desviaciones estandar

std_a = np.std(arr_a)
std_b = np.std(arr_b)
std_c = np.std(arr_c)
std_d = np.std(arr_d)
std_e = np.std(arr_e)

#calculamos las asimetrias(usando el metodo skew)

skw_a = stats.skew(arr_a)
skw_b = stats.skew(arr_b)
skw_c = stats.skew(arr_c)
skw_d = stats.skew(arr_d)
skw_e = stats.skew(arr_e)

#calculamos los valores maximos

mean_max = np.max(np.array([mean_a,mean_b,mean_c,mean_d,mean_e]))

std_max= np.max(np.array([std_a,std_b,std_c,std_d,std_e]))

skw_max = np.max(np.array([skw_a,skw_b,skw_c,skw_d,skw_e]))

#printamos los valores

print("medias: ")
print("")
print( "media a: " , mean_a)
print( "media b: " , mean_b)
print( "media c: " , mean_c)
print( "media d: " , mean_d)
print( "media e: " , mean_e)
print( "media maxima: " , mean_max)
print("")
print("desviaciones estandar")
print("")
print("desviacion de a: " , std_a)
print("desviacion de b: " , std_b)
print("desviacion de c: " , std_c)
print("desviacion de d: " , std_d)
print("desviacion de e: " , std_e)
print("desviacion maxima: " , std_max)
print("")
print("asimetrias : ")
print("")
print("asimetria de a: " , skw_a)
print("asimetria de b: " , skw_b)
print("asimetria de c: " , skw_c)
print("asimetria de d: " , skw_d)
print("asimetria de e: " , skw_e)
print("asimetria de max: " , skw_max)