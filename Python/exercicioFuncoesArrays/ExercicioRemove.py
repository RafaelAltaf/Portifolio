nomes = ['Rafael', 'Altaf', 'da', 'da', 'silva', 'pereira', 'pinto', 'de', 'jesus']
remover = input("Qual é o elemento que você quer remover? -> ")
del nomes[nomes.index(remover)]
print (nomes)