# -=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
#Crie um programa que transforme qualquer numero romano em um numero inteiro
#Exemplo: XVIII sera transformado automaticamente no numero 18
#O I corresponde ao número 1
#O V corresponde ao numero ao 5
#O X corresponde ao numero  10
#O L corresponde ao numero 50
#O C corresponde ao numero 100
#O D corresponde ao numero 500
#O M corresponde ao numero 1000
#NUMERO DE LINHAS MAXIMAS: 50 (O número de linhas do código é 46, tirando esse enunciado)

i = 0
v = 0
x = 0
l = 0
c = 0
d = 0
m = 0
tem4ou9 = True
quatro = 0
nove = 0


romano = input("Digite um numeral romano -> ")

for numR in romano:
    if numR == "I":
        i += 1
    if numR == "V":
        v += 1
    if numR == "X":
        x += 1
    if numR == "L":
        l += 1
    if numR == "C":
        c += 1
    if numR ==  "D":
        d += 1
    if numR == "M":
        m += 1
    if tem4ou9 == True:
        if romano[len(romano) - 1] == "V" and romano[len(romano) - 2] == "I": #IV era somado como se fosse 6 
            quatro = 4
            v -= 1
            i -= 1
            tem4ou9 = False
        elif romano[len(romano) - 1] == "X" and romano[len(romano) - 2] == "I": #IX era somado como se fosse 11
            nove = 9
            x -= 1
            i -= 1
            tem4ou9 = False
        else:
            tem4ou9 = False
    

num = (1 * i) + (quatro) + (5 * v) + (nove) + (10 * x) + (50 * l) + (100 * c) + (500 * d) + (1000 * m)
print(num)