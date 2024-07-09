#Define una clase "Rect�ngulo" que tenga atributos de largo y ancho, y m�todos para calcular el �rea y el per�metro.

class Rectangulo:
    def __init__(self, largo, ancho):
        self.largo = largo  
        self.ancho = ancho
    def area(self,n,m):
        return (n*m)
    def perimetro(self,n,m):
        return((2*n)+(2*m))

rect = Rectangulo(2,3)
   
print("Area es ", rect.area(2,3))

print("Perimetro es", rect.perimetro(2,3))