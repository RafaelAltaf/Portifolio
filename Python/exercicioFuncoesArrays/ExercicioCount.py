#A função count mostra quantas vezes um elemento especificado aparece na lista.

nomes = ['Rafael', 'Altaf', 'da', 'silva', 'pereira', 'pinto', 'de', 'jesus', 'pinto', 'da', 'jesus', 'pereira', 'jesus', 'Altaf', 'Altaf', 'da', 'de', 'Rafael']

def Count(lista, elemento):
    numElemento = 0
    for i in lista:
        if i == elemento:
           numElemento = numElemento + 1
    return numElemento

numElemento = Count(nomes, "Rafael")
print(f"O elemento aparece {numElemento} vezes na lista.")
