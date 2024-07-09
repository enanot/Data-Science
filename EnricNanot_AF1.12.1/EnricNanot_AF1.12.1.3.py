
file= open("example.txt", 'r')


i = 0
content = file.readline()
while(len(content)!=0):
    print(i)
    i=i+1
    print(content)
    content = file.readline()

print("El archivo tiene", i, "lineas")


file.close()