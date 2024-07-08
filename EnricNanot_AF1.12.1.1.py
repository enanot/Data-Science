

file= open("example.txt", 'r')

content = file.readline()




print(len(content))
while(len(content)!=0):
    print(content)
    content = file.readline()
file.close()
print("----------------------------------")

file= open("example.txt", 'r')
lines = file.readlines()
content = file.readline()
for i1 in range(len(lines)):
    print(lines[i1])

file.close()