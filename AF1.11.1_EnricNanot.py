#Escribe una función que tome dos números como argumentos y devuelva su suma, diferencia, producto y cociente.


def fun(a,b):
	if(b==0):
		print("Error, b no puede ser 0")
		return
	else:
		res = []
		res.append(a+b)
		res.append(a-b)
		res.append(a*b)
		res.append(a/b)
	return res

print (fun(1,0))