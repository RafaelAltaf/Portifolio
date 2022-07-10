lista = ['Santos', 'dos','Araújo', 'de', 'Pangaré', 'Cavaaaaaaaaaaaalo', 'Freitas', 'Pinto', 'Isadora'] 
listaReversa = []
numVar = 0
numElementos = len(lista) - 1

while(numVar <= numElementos):
    index = (numElementos - numVar) 
    elemento= [lista[index]]
    listaReversa = listaReversa + elemento
    numVar = numVar + 1
lista = listaReversa 
print(lista)

