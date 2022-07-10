nomes = ['Rafael', 'Altaf', 'da', 'silva', 'pereira', 'pinto', 'de', 'jesus', 'pinto', 'da', 'jesus', 'pereira', 'jesus', 'Altaf', 'Altaf', 'da', 'de', 'Rafael']
elemento = input("Qual elemento você deseja verificar -> ")
numElemento = 0

for nome in nomes:
    if nome == elemento:
       numElemento = numElemento + 1

print(f"Há {numElemento} {elemento}'s na lista.")
