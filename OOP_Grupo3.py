class Vehicle:

    make= 'Uninitialized'
    model= 'Unknown'

    def __init__(self, make, model):
        self.__make= make
        self.__model= model

    def start(self):
        print("Arrancando el vehiculo")

    def stop(self):
        print("Deteniendo el vehiculo")
    
    def getMake():
        return self.make
    def getModel():
        return self.model

class Motorcycle(Vehicle):
   def __init__(self,make,model,engine_cc,has_sidecart):
        super().__init__(make,model)
        self.engine_cc=engine_cc
        self.has_sidecart=has_sidecart
    
   def rev_engine(self): 
        print("Vroooom!")
   def getEngine_cc():
        return self.engine_cc
   def hasHas_sidecart():
        return self.has_sidecart()

class Bike(Vehicle):
    def __init__(self,make,model,num_wheels,is_electric):
         super().__init__(make,model)
         self.num_wheels = num_wheels
         self.is_electric = is_electric
    def ring_bell(self):
        print("Ring ring! Cuidado con el ciclista.")

    def getNum_wheels():
        return self.num_wheels
    def isIS_electric():
        return self.is_electric

class Car(Vehicle):
    def  __init__(self,make,model,num_doors,is_automatic):
        super().__init__(make,model)
        self.num_doors=num_doors
        self.is_automatic=is_automatic
    def honk_horn(self):
        print("Beeep beeep!")

    def getNum_doors():
        return self.num_doors
    def isIs_automatic():
        return self.is_automatic


class Supercar(Car):
    def __init__(self,make,model,num_doors,is_automatic,top_speed,is_limited_edition):
        super().__init__(make,model,num_doors,is_automatic)
        self.top_speed = top_speed
        self.is_limited_edition = is_limited_edition
    def accelerate(self):
        print("Acelerando a toda velocidad!")

    def getTop_speed():
        return self.top_speed   
    
    def isIs_limited_edtion():  
        return self.is_limited_edition

mybike = Bike("BMX","2024",2,False)
mycar= Car("Ford","Fiesta",4,False)
mymotorcycle= Motorcycle("Honda","CBX",500,True)
mysupercar= Supercar("Ferrari","Testarosa",2,False,300,True)

mybike.ring_bell()
mycar. honk_horn()
mymotorcycle.rev_engine()
mysupercar.accelerate()