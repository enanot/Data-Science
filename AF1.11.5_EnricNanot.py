#Utiliza el m�dulo os para crear un nuevo directorio y luego listar todos los archivos y directorios en ese directorio.

import os

os.mkdir("newDir")

print(os.listdir(os.getcwd()))

os.rmdir("newDir") #borramos el directorio creado por comodidad

