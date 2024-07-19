
class Vehicle:
 
    def __init__(self, make, model,year,color,kil):
        self.__make= make
        self.__model= model
        self.__year=year
        self.__color=color  
        self.__kil=kil

    def accelerate(self):
        print("accerelate")

    def stop(self):
        print("Deteniendo el vehiculo")

    def info(self):
        print(str(self))
    
    def getMake(self):
        return self.__make
    def getModel(self):
        return self.__model
    def getYear(self):
        return self.__year
    def getColor(self):
        return self.__color
    def getKil(self):
        return self.__kil
    
    def __str__(self):
        return "Modelo es "+self.getModel()+", marca "+self.getMake()+", del year"+str(self.getYear())+", el color "+self.getColor()+", y tiene "+str(self.getKil())+" kilometros"
    def __eq__(self,other):
        return (self.getModel() == other.getModel()) and (self.getMake() == other.getMake())

    def __len__(self):
        return(len(self.getModel()+self.getMake()))
    
ve1 = Vehicle("BMW","500",2020,"Rojo",200000)

ve2 = Vehicle("Fiat","Panda",2000,"Rojo",200000)

ve3 = Vehicle("Peugot","206",2000,"Verde",200000)

ve4 = Vehicle("Dacia","Sandero", 2006,"Negro",50000)

ve5 = Vehicle("Peugot","206", 2008,"Negro",55000)

print (ve1.__eq__(ve2))

print (ve5.__eq__(ve3))

print(ve4)

print(len(ve1))

