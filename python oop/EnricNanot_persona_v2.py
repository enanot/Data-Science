class Persona:
    def __init__(self, name, age, sex):
        setName(self,name)
        setSex(self,sex)
        setAge(self,age)
        self.__ocupation
        self.__is_tired = False

    def getName(self):
        return self.__name

    def setName(self,name):
        assert len(name)<20, "Name to long"
        self.__name= name

    def getSex(self):
        return self.sex
    def setSex(self,sex):
        self.__sex = sex

    def getAge(self):
        return self.__age
    def setAge(self, age):
        if (age < 0 or age > 120):
            self.__age = age
        else:
            print("Age not posible")

    def getOcupation(self):
        return self__ocupation
    def setOcupation(self,ocupation):
        if(len(ocupation)>20):
            print("Ocupation too long")
        else:
            self.__ocupation=ocupation

    def getIs_tired(self):
        return __is_tired

    def setIs_tired(self):
        self.__is_tired = no(__is_tired)
            
            

persona1= Persona("paco",20,"Male")

print(persona1.get_name)