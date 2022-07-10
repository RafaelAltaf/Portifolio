listaDeCompras = ['batata', 'macarrao', 'espinafre', 'alface', 'tomate', 'salsinha', 'berinjela', 'salada', 'molho', 'hamburguer']
indexTotal = len(listaDeCompras) - 1
elemento = [input("O que você deseja adicionar? -> ")]
indexElemento = int(input("Qual é o index em que você deseja colocar o elemento? -> "))

if indexElemento == indexTotal:
    listaDeCompras = listaDeCompras + elemento

elif indexElemento < 0 or indexElemento > indexTotal:
    print("Index Inválido.")
    exit()
else:
    #Capturar a primeira parte da lista
    controle = 0
    preLista = []

    while controle < indexElemento:
        preLista += [listaDeCompras[controle]]
        controle = controle + 1

    #Capturar a segunda parte da lista
    controle = indexElemento
    proLista = []

    while controle <= indexTotal:
        proLista += [listaDeCompras[controle]]
        controle = controle + 1

    #Juntando tudo e cumprindo o propósito do exercício
    listaDeCompras = preLista + elemento + proLista

print(listaDeCompras)