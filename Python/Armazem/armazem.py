# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-
#                                                      FUNÇÕES
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-

menu = "=-=" * 30

def GetData():
    '''Get the data from the database and transform it into a dictionary.'''
    data = {}
    try:
        with open("armazem.txt", "r") as database:
            for i in database.readlines():
                product = i.strip().split("_")
                data[product[0]] = [product[1], int(product[2])]
            return data
    except FileNotFoundError:
        with open("armazem.txt", "w"):
            pass
        return data

def _PullData(data):
    '''Update the data from the database.'''
    with open("armazem.txt", "w") as database:
        for key, values in data.items():
            newData = f"{key}_{values[0]}_{values[1]}\n"
            database.write(newData)
    print('Dados atualizados com sucesso!!!')

def LessThanThree(data):
    '''Check if there are less than three units from the items from the database. 
    If that condicion is true, a warning is printed in the terminal.'''
    if type(data) == dict:
        warning = ""
        for key, value in data.items():
            if value[1] < 3:
                warning += "\n" + f"!!! Há apenas {value[1]} unidades do produto {key} !!! \n"
        print(f"{warning}")

def ShowData(data):
    '''Show all data contained by the database.'''
    print(f"{menu}\n\nPRODUTOS DO ARMAZEM DO SEU MARCOS\n")
    for key, values in data.items():
        print(f"{key} -> id = {values[0]} | quantidade = {values[1]}\n")
    print(menu)

def SearchData(data): 
    '''Show the database item searched by the user.'''
    while True:
        product = _GetDataByIdOrName(data)
        if product:
            print(f"{product[0]} -> id: {product[1]} | unidades: {product[2]}")
        else:
            print("Produto não encontrado.")
        choice = input("\nDeseja buscar por outro produto (s/n)? -> ")
        if choice == "n" or choice == "N":
            break

def AddData(data):
    '''Capture and add the inputs from the user to the database'''

    while True:
        name = input("Digite o nome do produto -> ")
        identifier = input("Dê uma id única para o seu produto -> ")
        quant = input("Digite a quantidade de unidades desse produto -> ")

        check = _Check(data, name, identifier)
        if check[0]:
            name = check[0]
        if check[1]:
            identifier = check[1]
        data.update({name: [identifier, int(quant)]})

        choice = input("Deseja adicionar mais produtos (s/n)? -> ")
        if choice == "n" or choice == "N":
            break

    _PullData(data)

def _Check(data, name, identifier):
    '''Confirm if the product's name and id are new and unique.'''
    newName = name
    newId = identifier

    for key, values in data.items():
        if key == name:
            newName = input("Este produto já está no sistema. Digite outro nome para concluir o cadastro -> ")
        if values[0] == identifier:
            newId = input("Essa id já foi registrada. Digite uma nova para concluir o cadastro -> ")
    return[newName, newId]

def EditQuant(data): 
    '''Edit the amount of unities from the product indicated by the user.'''
    while True:
        product = _GetDataByIdOrName(data)
        if product:
            quant = input("Digite a nova quantidade -> ")
            data.update({product[0]: [product[1], quant]})
            _PullData(data)
        else:
            print("Produto não encontrado")
        continuar = input("Deseja adicionar ao estoque de outros produtos? (s/n) -> ")
        if continuar == "n" or continuar == "N":
            break

def DelData(data):
    '''Deleta um produto através do nome dele'''
    while True:
        product = _GetDataByIdOrName(data)
        if product:
            confirm = input(f"Você deseja mesmo deletar o produto {product[0]} (s/n)? -> ")
            if confirm == "s" or confirm == "S":
                del(data[product[0]])
                _PullData(data)
        else:
            print("\n!!Produto não cadastrado. Nenhuma alteração foi realizada!!")
        choice = input("Deseja deletar mais um produto (s/n)?")
        if choice == "n" or choice == "N":
            break
    
def _GetDataByIdOrName(data):
    product = input("\nDigite o nome ou id do produto -> ")
    for key, values in data.items(): 
      if product == key or product == values[0]:
        return[key, values[0], int(values[1])]
    return False
    
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-
#                                                      MENU
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-
while True:
    data = GetData()
    LessThanThree(data)

    if data == {}:
        choice = input("Não há nenhum dado no database. Deseja adicionar (1) ou fechar o programa (2)? ->")
        if choice == "1":
            AddData(data)
        elif choice == "2":
            exit()
    else:
        choice = input(f"{menu}\n ARMAZEM DO SEU MARCOS \n1- Mostrar todos os produtos \n2- Pesquisar um produto específico \n3- Adicionar produto \n4- Editar o estoque do produto \n5- Deletar produto \n6- Fechar programa \n{menu}\nDigite aqui -> ")

        if choice == "6":
            exit()
        elif choice == "1":
            ShowData(data)
        elif choice == "2":
            SearchData(data)
        elif choice == "3":
            AddData(data)
        elif choice == "4":
            EditQuant(data)
        elif choice == "5":
            DelData(data)
        else:
            print("\nOpção inválida. Digite uma das opções apresentadas no menu abaixo: \n \n")