#O Append adiciona um elemento no final da lista

nomes = ['Rafael', 'Altaf', 'da', 'Silva', 'Pinheiro', 'de', 'Jesus']

def Append(lista, elemento):
    lista += [elemento]
    return lista
print(Append(nomes, "Lima")) 