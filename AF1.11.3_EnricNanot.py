#Implementa un bucle que imprima los n�meros del 1 al 10, y si el n�mero es divisible por 3, imprime "Fizz" en su lugar.

for n in range(1,11):
	if(n%3==0):
		print("Fizz")
	else:
		print(n)