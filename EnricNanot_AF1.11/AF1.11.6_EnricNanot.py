#Importa las funciones sin() y cos() del m�dulo math y escribe un programa que calcule el seno y el coseno de un �ngulo dado por el usuario.
from math import sin, cos,pi

angulo = float(input("Introduce el angulo "))

print("El seno es ",sin(angulo*(pi/180)),"radianes, , y el coseno es ", cos(angulo*(pi/180)),"radianes")