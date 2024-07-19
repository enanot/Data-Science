class Vehicle:
    def init(self, make, model):
        self.make= make
        self.model= model

    def start(self):
        print("Arrancando el vehiculo")

    def stop(self):
        print("Deteniendo el vehiculo")

class Motorcycle(Vehicle):
    def __init__(self, make, model, engine_cc, has_sidecart):
        super().init(make, model)
        self.engine_cc = engine_cc
        self.has_sidecart = has_sidecart

        engine_cc= 0
        has_sidecart= False

    def rev_engine(self): 
        print("Vroooom!")

class Bike(Vehicle):

    def __init__(self,make,model,num_wheels,is_electric):
         super().__init__(make,model)
         self.num_wheels = num_wheels
         self.is_electric = is_electric
    def ring_bell(self):
        print("Ring ring! Cuidado con el ciclista.")

class Car(Vehicle):
    def  __init__(self,make,model,num_doors,is_automatic):
        super().__init__(make,model)
        self.num_doors=num_doors
        self.is_automatic=is_automatic
    def honk_horn(self):
        print("Beeep beeep!")

class Supercar(Vehicle):
    def init(self, make, model, top_speed, is_limited_edition):
        super().init(make, model)
        self.top_speed = top_speed
        self.is_limited_edition = is_limited_edition

    def accelerate(self):
        print("Acelerando a toda velocidad!")


mybike = Bike("BMX","2024",2,False)
mycar= Car("Ford","Fiesta",4,False)
mymotorcycle= Motorcycle("Honda","CBX",500,True)
mysupercar= Supercar("Ferrari","Testarosa",2,False,300,True)

mybike.ring_bell()
mycar. honk_horn()
mymotorcycle.rev_engine()
mysupercar.accelerate()