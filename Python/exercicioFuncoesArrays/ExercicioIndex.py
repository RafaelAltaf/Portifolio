nomes = ['Rafael', 'Altaf', 'da', 'da' 'silva', 'pereira', 'pinto', 'de', 'jesus']
elemento = input("Você deseja saber o index de qual elemento? -> ")
contadora = 0

for a in nomes:
    contadora = contadora + 1
    if a == elemento:
        index = contadora - 1
        print(f"O index é igual a {index}")
        break

print(nomes[index])