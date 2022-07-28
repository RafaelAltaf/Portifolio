#-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
#Criar um programa que peça valores numericos em loop até que a pessoa negue colocar mais valores
#Depois o programa classifica os números do menor pra maior numero
#Depois o programa classifica os números do maior para o menor numero
#Depois o programa classifica qual é o menor numero
#Depois o programa classifica qual é o maior numero

listaNum = []

while True:
    num = input("Digite um número ou digite *sair* para fechar o programa e exibir os resultados -> ")
    if num == "sair":
        break
    listaNum += [int(num)]

listaNum.sort()

print(f"Ordem crescente: {listaNum}")

listaNum.reverse()

print(f"Ordem decrescente: {listaNum}\nO menor número é {listaNum[len(listaNum)- 1]}\nO maior número é {listaNum[0]}")