#A função reverse reverte a lista.

nomes = ['Rafael', 'Altaf', 'da', 'Silva', 'Pinheiro', 'de', 'Jesus']

def Reverse(lista):
    listaReversa = []   
    numVar = 0
    numElementos = len(lista) - 1

    while(numVar <= numElementos):
        index = (numElementos - numVar) 
        elemento= [lista[index]]
        listaReversa = listaReversa + elemento
        numVar = numVar + 1
    lista = listaReversa 
    return lista

print(Reverse(nomes))
