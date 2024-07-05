#Implementa un bucle que imprima los números del 1 al 10, y si el número es divisible por 3, imprime "Fizz" en su lugar.

for n in range(1,11):
	if(n%3==0):
		print("Fizz")
	else:
		print(n)