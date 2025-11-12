# 1 tipos de variaveis

'''Explicação das variáveis 
[  ] Int
Int é usada para números que sejam inteiros, ou seja, números que representam quantidades que não sejam quebradas. Esses números pode ser tanto negativo, como positivo. Exemplo: quantidade de doces no pote, carros estacionados.
[  ] Float
Utilizada para representar números decimais, como medidas, percentuais ou números que contenham parte fracionária. Exemplo: altura, peso.
[  ] String
São utilizadas para representar e manipular textos, ou seja,  usado para armazenar informações de texto. Exemplo: nome, mensagem.
[  ] Bool
É utilizado para representar valores lógicos,  podendo assumir valores de verdadeiro ou falso. Exemplo: janela fechada ou aberta
'''

print("Escolha o tipo de variável usada para representar numero com vírgula:")
print("Opções: int, float, bool, str")
variavel = input("Digite aqui: ")
if variavel == "float":
   print("Você escolheu 'float'. Exemplo: altura = 1.80")
else:
   print("Tipo inválido. Tente novamente com: int, float, bool ou str.")
   variavel = input("Digite aqui: ")

# 2 print

#explicação 
'''
    A função PRINT é a forma mais básica e crucial de comunicar o programa com o usuário,
sendo usada para exibir na tela mensagens de texto, os valores armazenados em variáveis
ou o resultado final de qualquer cálculo ou processamento de dados realizado internamente.
'''
print("Oi")
# Oi

# 3 input

#explicação
'''
    O comando INPUT é essencial, pois permite que o programa solicite e capture dados
diretamente do usuário enquanto está em execução, fazendo com que ele pause a ação e
espere que uma informação, como um nome ou número, seja digitada e armazenada em
uma variável.
'''

valor1 = int(input("Insira o número inteiro: "))


# 4 operações matemáticas

#explicação
'''
    O s operadores matemáticos (+,-,*,/ e outros) são os símbolos que seu código utiliza para
realizar todas as operações numéricas necessárias, permitindo que você calcule novos
valores a partir de dados existentes, como somar preços ou dividir quantidades, e então
usar esses resultados.
'''

resultado = valor1 + 5
print(resultado) #valor que o usuário insiriu no input + 5


# 5 operações de comparação

#explicação
'''
Os Operadores de Comparação (==,>,<,!=, etc.) são usados para testar relações entre valores (se são iguais, diferentes, maiores ou menores). O resultado dessas comparações é sempre um valor booleano: True (Verdadeiro) se a condição for atendida ou False (Falso) se não for.
== : iguail
>= : maior ou igual
<= : menor ou igual
!= : diferente que
> : maior que 
< : menor que  
'''

print(8 != 5 and 10 > 7)
# True (verdadeiro)


# 6 if
'''
[  ] If
Usado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.
'''

idade = int(input(“Digite sua idade:”))
if idade <= 16:
	print(f”Você pode viajar sozinho.”)
else:
	print(f”Você já pode viajar sozinho.”)


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

# 8 while

'''
É usado como um recurso para executar um bloco de códigos receitas vezes enquanto é a ação do verdadeira. Quando a ação  pass a ser falsa, a execução do loop é interrompida.É ideal para situações em que o número de repetições é desconhecido previamente, como esperar por uma entrada válida do usuário ou repetir uma ação até que um evento específico ocorra.
'''

contador = int(input(“EScolha um número:”))
numero = 0 
while numero <= contador:
	print(numero)
	numero = numero + 1
print(“Programa finalizado”)


# 9 listas

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


# 10 for(1)
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


# 11 for(2):len(lista)

#explicação:
'''
    Um dos principais acompanhantes do "for" é o "len".
    Quando é colocado na frente de umma lista, o termo passa a significar a quantidade de itens da lista.
'''

frutas = ["maçã , banana , laranja , uva"] # Lista com 4 itens
print("Número de frutas na lista: " , len(frutas))
    # Número de frutas na lista: 4


# 12 for(3): range

#explicação:
'''
    O "range" é um acompanhante que cria uma sequência de números para serem usados no "for" e em outras situações.
    Quando números são colocados após o "range" e entre parênteses, eles determinam o funcionamento no "range".
'''
#range(parada)
#Conta de 0 até 4
for numero in range(5):
    print(numero) #0 , 1 , 2 , 3 , 4




