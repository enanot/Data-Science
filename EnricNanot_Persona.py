class Persona:

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
        return self__ocupation
    def set_ocupation(self,ocupation):
        if(len(ocupation)>20):
            print("Ocupation too long")
        else:
            self.__ocupation=ocupation

    def get_is_tired(self):
        return __is_tired

    def __init__(self, name, age, sex):
        self.__name = set_name(self,name)
        self.__sex = set_age(age)
        self.__age = set_age(age)
        self.__ocupation
        self.__is_tired

persona1= Persona("paco",20,"Male")

print (persona1.get_name)