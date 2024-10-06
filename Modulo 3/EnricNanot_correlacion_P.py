import numpy as np
from scipy.stats import pearsonr


horas_E =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
calificaciones =  [50, 55, 60, 65, 70, 75, 80, 85, 90, 95]


correlacion, p_valor = pearsonr(horas_E, calificaciones)

print(f"Coeficiente horas-calificiones: {correlacion:.4f}")
print(f"Valor p: {p_valor:.4f}")

#------------------------------------------------------------------


temperatura= [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
ropa_invierno= [200, 180, 160, 140, 120, 100, 80, 60, 40, 20]

correlacion, p_valor = pearsonr(temperatura, ropa_invierno)

print(f"Coeficiente temperatura-ropa: {correlacion:.4f}")
print(f"Valor p temperatura-ropa: {p_valor:.4f}")

#------------------------------------------------------------------#


edad =  [23, 30, 45, 22, 34, 29, 40, 28, 35, 31, 27, 38, 33, 26, 24]
libros = [5, 3, 6, 2, 4, 3, 7, 2, 5, 3, 4, 6, 5, 3, 4]

# Calcular la correlación de Pearson
correlacion, p_valor = pearsonr(edad, libros)

print(f"Coeficiente edad-libros: {correlacion:.4f}")
print(f"Valor p edad-libros: {p_valor:.4f}")