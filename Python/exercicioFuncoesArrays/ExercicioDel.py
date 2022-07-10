#A função del deleta um elemento através de seu index.
nomes = ['Rafael', 'Altaf', 'da', 'Silva', 'Pinheiro', 'de', 'Jesus']

def Del(lista, index):
    if type(index) != int or index < 0:
        print("Index inválido.")
        exit()
    else:
        lista.remove(lista[index])
        return(lista)

print(Del(nomes, 5))