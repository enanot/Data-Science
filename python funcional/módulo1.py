


h = input("Insertar altura: ")
if h.isdecimal():
    h=int(h)
    p = ""
    count = 0
    while count < h:
        p = p + "X"
        print(p)
        count = count + 1
else:
    print("Hay que introducir un valor numérico")