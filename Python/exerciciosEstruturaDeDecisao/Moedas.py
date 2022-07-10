#Escreva um programa que leia um valor em reais e passe para dólares
#Variáveis das moedas
dolar = 5.15
euro = 5.40
libraEstrelina = 6.30
dolarCanadense = 3.96
a = "-="*30
menu = 10

#Exibição do resultado e estrutura de repetição

while(menu != 0):
   #Menu
   print(f"\n{a}\nDigite o número correspondete à moeda à qual você deseja converter o valor: \n1 - Dólar\n2 - Dólar Canadense\n3 - Euro\n4 - Libra Estrelina\n0 - Fechar Programa\n {a}\n")
   menu = int(input("Digite aqui -> "))
    
   #estrutura condicional
   if menu == 1:
      reais = float(input("\nDigite o valor em reais que você deseja converter -> "))
      print(f"R${reais} convertido em dólares é igual a ${reais / dolar}")

      continuar = int(input("Digite 1 para continuar ou 0 para sair -> "))
      if continuar == 0:
        exit()

   elif menu == 2:
      reais = float(input("\nDigite o valor em reais que você deseja converter -> "))
      print(f"R${reais} convertido em dólares canadenses é igual a ${reais / dolarCanadense}")

      continuar = int(input("Digite 1 para continuar ou 0 para sair"))
      if continuar == 0:
        exit()

   elif menu == 3:
      reais = float(input("\nDigite o valor em reais que você deseja converter -> "))
      print(f"R${reais} convertido em euros é igual a ${reais / euro}")

      continuar = int(input("Digite 1 para continuar ou 0 para sair"))
      if continuar == 0:
        exit()

   elif menu == 4:
      reais = float(input("\nDigite o valor em reais que você deseja converter -> "))
      print(f"R${reais} convertido em libras é igual a ${reais / libraEstrelina}")

      continuar = int(input("Digite 1 para continuar ou 0 para sair"))
      if continuar == 0:
        exit()
   elif menu == 0:
      pass
   else:
      print(f"\nValor Inválido\n")