#Escreva um algoritmo para ler o número total de eleitores de um município, o número de votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em relação ao total de eleitores.

eleitores = int(input("Digite o número total de eleitores -> "))
votosB = int(input("Digite o número de votos em branco -> "))
votosN = int(input("Digite o número de votos nulos -> "))
votos = int(input("Digite o número de votos válidos -> "))

if votosB + votosN + votos != eleitores:
    print("O número de votos não é compatível ao número de eleitores")
else:
    print(f"O percentual de votos em branco é igual a {(votosB*100)/eleitores}%")
    print(f"O percentual de votos nulos é igual a {(votosN*100)/eleitores}%")
    print(f"O percentual de votos válidos é igual a {(votos*100)/eleitores}%")