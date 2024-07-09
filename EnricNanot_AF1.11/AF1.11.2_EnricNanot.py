#Crea un programa que solicite al usuario un número y determine si es par o impar utilizando condicionales.

def parOImpar():
	n = int(input("introduce un numero entero "))

	if(n % 2 == 0):	
		print("el numero es par ")
	else:
		print("El numero es impar")
parOImpar()
