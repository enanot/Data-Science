#Calculadora 

class calculadora:
        
    def suma(self,n1,n2):
        sum = n1+n2
        return sum
    def resta(self,n1,n2):
        res =n1-n2
        return res
    def prod(self, n1,n2):
        prod=n1*n2
        return prod
    def div(self, n1,n2):
        div= n1/n2
        return div


op = int(input("1-suma, 2-resta,3-producto,4-division "))

calc = calculadora()

n1 = float(input("introduce n1 "))
n2 = float(input("introduce n2 "))

print("Suma",calc.suma(n1,n2))

print("resta",calc.resta(n1,n2))

print("Prod",calc.prod(n1,n2))

print("Div",calc.div(n1,n2))