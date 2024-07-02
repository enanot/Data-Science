class Persona:
    def __init__(self, name, age, sex):
        self.__name = set_name(name)
        self.__sex = set_age(age)
        self.__age = set_age(age)
        self.__ocupation=""
        self.__is_tired

    def get_name(self):
        return self.__name
    def set_name(self,name):
        if(len(name) > 20):
            print("name too long")
        else:
            self.__name= name

    def get_sex(self):
        return self.sex
    def set_sex(self,sex):
        self.sex = sex

    def get_age(self):
        return self._age
    def set_age(self, age):
        if (age < 0 or age > 120):
            self.__age = age
        else:
            print("Age not posible")

   
    def get_ocupation(self):
        return self.__ocupation

mydog = Dog("White", 2, "Bulldog")
print("Color:", mydog.get_color())
print("Edad:", mydog.get_edad())
print("Raza:", mydog.get_raza())

mydog.set_name("Sherlock")

print("Nombre:", mydog.get_name())
 