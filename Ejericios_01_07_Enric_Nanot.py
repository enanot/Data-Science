# Ejercicios dia 01/07/2024 python.

num_ex= int(input("Introduce el ejercicio que quieres resolver "))

if(num_ex== 1):
 
    print ("Ejercicio 1 ")
    def fun_1(n1, n2):
        return n1+n2

    n1 = int(input("Introduce numero 1 "))
    n2 = int(input("introduce numero 2 "))
    print("La suma de n1 mas n2 es:" ,fun_1 (n1,n2))
    
elif(num_ex == 2):

     print ("Ejercicio 2 ")

     def fun_2(nombre):
        print("Hola", nombre)
        return
     nombre = input("introduce un nombre ")
     fun_2(nombre)
    
elif(num_ex == 3):
     print (" Ejercicio 3 ")

     def fun_3(alto, largo):
         return alto*largo
     alto = float(input("introduce altura "))
     largo = float(input("introduce longuitud "))

     print("El area es ",fun_3(alto,largo))

elif(num_ex == 4):
     print ("Ejercicio 4 ")

     def fun_4 (num_list):
         return max(num_list)
     nums = int(input("Cuantos numeros quieres introducir? "))
     count = 0
     num_list=[]
     while(count < nums):
         num = int(input("Introduce numero "))
         num_list.append(num)
         count +=1
     
     print("El numero maximo es", fun_4(num_list))

elif(num_ex == 5):
    print ("Ejercicio 5 ")

    def fun5(num):
         
        if (num % 2== 0):
            return True
        else:
            return False
    num = int(input("Introduce un numero "))
    if(fun5(num)):
        print("El numero es par ")
    else:
        print("El numero es impar ")
   
   
elif(num_ex == 6):
    print ("Ejercicio 6 ")

    def fun_6(num_list):
        length = len(num_list)
        suma = sum(num_list)
        return suma/length
    nums = int(input("Cuantos numeros quieres introducir? "))
    count = 0
    num_list=[]
    while(count < nums):
        num = int(input("Introduce numero "))
        num_list.append(num)
        count +=1
    print("La media de la lista es ",fun_6(num_list))

elif(num_ex == 7):
     print ("Ejercicio 7 ")

     def fun_7(cad):
        return len(cad)
     cad = input("Introduce una cadena ")
     print("La longuitud es ", fun_7(cad))

elif(num_ex == 8):
    print ("Ejercicio 8 ")

    def fun_8(num_list):
       num_list_sqr= []
       lentgh = len(num_list)
       count = 0
       while (count < lentgh):
           num_list_sqr.append(num_list[count]*num_list[count])
           count +=1
       return num_list_sqr

    nums = int(input("Cuantos numeros quieres introducir? "))
    count = 0
    num_list=[]
    while(count < nums):
        num = int(input("Introduce numero "))
        num_list.append(num)
        count +=1
    print("La lista al quadrado es",fun_8(num_list))


elif(num_ex == 9):
    print ("Ejercicio 9 ")
    
    def fun_9(word_list):
        return sorted(word_list)
    nums = int(input("Cuantas palabras quieres introducir? "))
    count = 0
    word_list=[]
    while(count < nums):
        num = input("Introduce palabra ")
        word_list.append(num)
        count +=1
    
    print("La lista ordenada es ", fun_9(word_list))

elif(num_ex == 10):
     print ("Ejercicio 10 ")

     def fun_10(num):
         for i in range (2,num):
             if (num%i) == 0:
                return False
         else:
             return True
     num = int(input("introduce un numero "))

     if (fun_10(num)):
        print("El numero es primo")
     else:
        print ("El numero no es primo")
