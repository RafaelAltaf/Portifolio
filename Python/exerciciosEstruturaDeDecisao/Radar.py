#Exercício (8)
#Simule um radar de rodovia  onde a velocidade máxima permitida na rodovia é 90 Km/h e a mínima 30 Km/h
#-O programa deve capturar a velocidade do usuário por terminal, caso a resposta esteja em branco o programa deve indicar que a velocidade não foi fornecida
#-Caso o usuário esteja abaixo da velocidade o programa deve retornar que o carro está muito lento e que o usuário deve mudar de mão
#-Caso o usuário esteja acima da velocidade o programa deve computar uma multa para o usuário, sendo o valor dessa multa o excesso de velocidade * 7
#-Caso a velocidade não seja fornecida pelo usuário o programa deve sortear um numero entre 1 e 120 e aplicar a mecânica acima com o numero sorteado

from random import randint

velocidade = input("Digite a velocidade do veículo (em Km/h) -> ")

if velocidade == "":
    print("------- Resposta em branco -------")
    velocidade = (randint(1,120))
if int(velocidade) < 30:
    print("O veículo está lento demais, mude de mão!")
elif int(velocidade) > 90:
    print(f"Veículo multado no valor de {int(velocidade) * 7} reais por excesso de velocidade.")
else:
    print(f"A velocidade ({velocidade} km/h) está dentro das normas. Tudo certo!")