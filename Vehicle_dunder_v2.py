class Persona:
    def __init__(self, name, age, ocupation):
        self.__name=name
        self.__age=age
        self.__ocupation=ocupation
    def getName(self):
        return self.__name
    def getAge(self):
        return self.__age
    def getOcupation(self):
        return self.__ocupation
    def __str__(self):
        return f'Mi nombre es {self.getName()}, tengo {self.getAge()}, y soy {self.getOcupation()}'
    def __repr__(self):
        #return f'Persona ({self.getName()},{self.getAge()},{self.getOcupation()})'
        #return "(%s, %d, %s)" % (self.getName(),self.getAge(), self.getOcupation())
        return 'Marca: ' + self.getName() + 'Modelo: ' + str(self.getAge())+'Ano: ' + self.getOcupation()

persona1 = Persona("Pablo",60,"DJ")
persona2 = Persona("Paco",30,"Carnicero")
persona3 = Persona("Maria",30,"Abogada")
print(persona1)
print(repr(persona1))
print(persona2)
print(repr(persona2))
print(persona3)
print(repr(persona3))