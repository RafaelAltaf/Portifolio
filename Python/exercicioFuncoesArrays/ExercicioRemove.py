#A função remove deleta um elemento.
nomes = ['Rafael', 'Altaf', 'da', 'da', 'silva', 'pereira', 'pinto', 'de', 'jesus']

def Remove(lista,elemento):
    if elemento not in lista:
        print("O elemento não está na lista")
        exit()
    else:
        del lista[lista.index(elemento)]
        return lista

print (Remove(nomes, "Rafael"))