#O clear remove todos os elementos da lista

nomes = ['Rafael', 'Altaf', 'da', 'Silva', 'Pinheiro', 'de', 'Jesus']

def Clear(lista):
    while lista != []:
        lista.pop()
    print(nomes)

Clear(nomes)

