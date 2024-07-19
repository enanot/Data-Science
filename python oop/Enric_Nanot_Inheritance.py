class Animal:
    
    def __init__(self, type, age):
        self.__type  = type
        self.__age = age
    
    def get_type(self):
        return self.__type
    
    def get_age(self):
        return self.__age

    def move(self):
        print("moving...")

    def eat(self):
        message = str(self.__class__)
        print (message[17:len(message)].replace("'>",""), "is eating...")

class Dog(Animal):

    def __init__(self, age):
        super().__init__("Mammal", age) ##llamo al constructor de la clase Animal

    def ladrar(self):
        print("Wooof")

class Cat(Animal):
    def __init__(self, age):
        super().__init__("Mammal", age)
    def maullar(self):
        print("Meooow")

class Ant(Animal):
    def __init__(self,age):
        super().__init__("Insect",age)
    
class Pidgeon(Animal):
    def __init__(self, age):
        super().__init__("Bird",1)

mydog = Dog(3)
mycat = Cat(4)
myant = Ant(0)
mypidgeon = Pidgeon(2)
print(mydog.get_type())
print(mycat.get_age())
mydog.move()
mydog.ladrar()
mycat.maullar()
myant.eat()
mydog.eat()
mycat.eat()
mypidgeon.eat()
