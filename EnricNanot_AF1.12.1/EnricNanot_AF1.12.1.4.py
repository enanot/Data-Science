


file= open("example.txt", 'r')
file2= open("ejercicio 4.txt", 'w')

content = file.readline()
while(len(content)!=0):
    file2.write(content)
    content = file.readline()




file.close()



file2.close()