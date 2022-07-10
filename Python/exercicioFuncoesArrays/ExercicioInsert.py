#O insert adiciona um elemento em uma posição específica da lista.

listaDeCompras = ['batata', 'macarrao', 'espinafre', 'alface', 'tomate', 'salsinha', 'berinjela', 'salada', 'molho', 'hamburguer']

def Insert(lista, elemento, indexElemento):
    indexTotal = len(lista) - 1

    if indexElemento == indexTotal:
        lista = lista + elemento

    elif indexElemento < 0 or indexElemento > indexTotal:
        print("Index Inválido.")
        exit()
    else:
        #Capturar a primeira parte da lista
        controle = 0
        preLista = []

        while controle < indexElemento:
            preLista += [lista[controle]]
            controle = controle + 1

        #Capturar a segunda parte da lista
        controle = indexElemento
        proLista = []

        while controle <= indexTotal:
            proLista += [lista[controle]]
            controle = controle + 1

        #Juntando tudo e cumprindo o propósito do exercício
        lista = preLista + [elemento] + proLista
        return lista

print(Insert(listaDeCompras, "Rúcula", 6))

