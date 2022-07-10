#A função index mostra o index da primeira vez em que o elemento aparece na lista.

nomes = ['Rafael', 'Altaf', 'da', 'Silva', 'Pinheiro', 'de', 'Jesus']

def Index(lista, elemento):
    contadora = 0
    for a in lista:
        contadora = contadora + 1
        if a == elemento:
            index = contadora - 1
            break
    return index

print(Index(nomes, "Rafael"))