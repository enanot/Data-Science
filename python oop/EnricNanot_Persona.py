class Persona:
    def __init__(self, name, age, sex):
        self.setName(name)
        self.setSex(sex)
        self.setAge(age)
        self.__ocupation=""
        self.__is_tired = False

    def getName(self):
        return self.__name

    def setName(self,name):
        assert len(name)<20, "Name to long"
        self.__name= name

    def getSex(self):
        return self.__sex
    def setSex(self,sex):
        assert (sex == "Male" or sex == "Female")
        self.__sex = sex

    def getAge(self):
        return self.__age
    def setAge(self, age):
        if (int(age) > 0 or int(age) < 120):
            self.__age = age
        else:
            print("Age not posible")

    def getOcupation(self):
        return self.__ocupation
    def setOcupation(self,ocupation):
        if(len(ocupation)>20):
            print("Ocupation too long")
        else:
            self.__ocupation=ocupation

    def getIs_tired(self):
        return self.__is_tired

    def setIs_tired(self):
        self.__is_tired = no(__is_tired)
            
            

persona1= Persona("paco",20,"Male")

print(persona1.getName())
print(persona1.getAge())
print(persona1.getSex())
print(persona1.getOcupation())
print(persona1.getIs_tired())

persona1.setOcupation("Developer")
persona1.setAge("21")
persona1.setSex("Female")
persona1.setName("Paca")
persona1.setIs_tired

print(persona1.getName())
print(persona1.getAge())
print(persona1.getSex())
print(persona1.getOcupation())
print(persona1.getIs_tired())