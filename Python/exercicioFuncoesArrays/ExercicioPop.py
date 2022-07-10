#A função Pop deleta o último elemento da lista.
nomes = ['Rafael', 'Altaf', 'da', 'Silva', 'Pinheiro', 'de', 'Jesus']

def Pop(lista):
    index = len(lista) - 1
    elemento = lista[index]
    lista.remove(elemento)
    return lista
print(Pop(nomes))