# 7 elif/else 

#explicação
'''
    O "elif" e o "else" são acompanhantes quase obrigatórios do "if". São as outras condições que complementam a primeira.
    O "else" não precisa de uma condição, pois ele engloba tudo que não está no "if" e "elif"
'''
temp = float(input("Digite a temperatura atual: "))
if temp <= 19:
    print("Está frio.")
elif temp > 19 and temp <= 27:
    print("Está uma temperatura amena.")
else:
    print("Está quente.")


# 10 listas

#explicação
'''
    Listas em python é como uma caixa onde se guarda 2 ou mais itens.
    Colocando colchetes ([]) após "chamar" a lista, é possível acessar os itens delaa individualmente.
    A ordem dos itens da lista sempre começa na posição 0.
'''
#Tipos de lista:

#lista de strings
amigos = ["Ana" , "Bruno"]
print(amigos)
#lista de números
notas = [8.5 , 9.0 , 7.5]
print(notas)

#Acessando itens individualmente:
comidas = ["pizza" , "batata" , "sorvete"]
print(comidas[0]) #pizza
print(comidas[1]) #batata
print(comidas[2]) #sorvete


# 11 for(1)
#explicação
'''
    "for" é um laço de repetição. É como um assistente que repete uma acão para cada item até alcançar a condição pré determinada.
    Tradução: "Para cada item NA lista, FAÇA isso."
'''
amigos = ["Ana" , "Bruno" , "Carla"] #lista de strings
for individuo in amigos: #Para cada intem na lista print a seguinte mensagem
    print("Mensagem para" , individuo , ": E aí, tudo bem?")
    # Mensagem para Ana: E aí, tudo bem?
    # O mesmo acontece para os outros itens da lista


# 12 for(2):len(lista)

#explicação:
'''
    Um dos principais acompanhantes do "for" é o "len".
    Quando é colocado na frente de umma lista, o termo passa a significar a quantidade de itens da lista.
'''

frutas = ["maçã , banana , laranja , uva"] # Lista com 4 itens
print("Número de frutas na lista: " , len(frutas))
    # Número de frutas na lista: 4


# 13 for(3): range

#explicação:
'''
    O "range" é um acompanhante que cria uma sequência de números para serem usados no "for" e em outras situações.
    Quando números são colocados após o "range" e entre parênteses, eles determinam o funcionamento no "range".
'''
#range(parada)
#Conta de 0 até 4
for numero in range(5):
    print(numero) #0 , 1 , 2 , 3 , 4

