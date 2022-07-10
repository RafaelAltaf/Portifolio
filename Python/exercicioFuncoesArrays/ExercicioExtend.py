#A função extend adiciona os elementos de uma lista em outra lista.

nomes = ['Rafael', 'Altaf', 'da', 'silva', 'pereira', 'pinto', 'de', 'jesus']
comida = ['batata', 'feijoada', 'carne']

def Extend(receber, adicionar):
    receber += adicionar
    return receber
print(Extend(nomes, comida))
