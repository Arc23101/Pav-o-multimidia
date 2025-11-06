#tipos de variaveis
#Crie quatro variáveis diferentes (uma de cada tipo: int, float, str, bool) e use print() para mostrar o valor de cada uma delas na tela.

idade = 15
altura = 1.70
nome = "Lucas"
tem_cachorro = True
print(idade, altura, nome, tem_cachorro)

#print
#Mostre na tela uma frase que diga um nome e o que gosta de fazer.

print("Meu nome é Lucas e eu gosto de jogar videogame!")

#input
#Peça o nome do usuário e mostre uma mensagem de boas-vindas.

nome = input("Digite seu nome: ")
print("Bem-vindo,", nome, "!")

#operaçoes matematicas
#Peça dois números e mostre a soma deles.

n1 = int(input("Digite o primeiro número: "))
n2 = int(input("Digite o segundo número: "))
print("A soma é:", n1 + n2)

#operaçoes de comparação
#Peça a idade de uma pessoa e diga se ela é maior de idade (18 ou mais).

idade = int(input("Digite sua idade: "))
print("Maior de idade?", idade >= 18)

#if
#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).

nota = float(input("Digite sua nota: "))
if nota >= 6:
    print("Aprovado!")
else:
    print("Reprovado.")

#elif/else
#Peça a nota do aluno e mostre uma mensagem diferente para cada faixa de nota.

nota = float(input("Digite sua nota: "))
if nota >= 9:
    print("Excelente!")
elif nota >= 6:
    print("Bom trabalho!")
else:
    print("Precisa melhorar.")

#while
#Conte de 1 até 5 usando while.

numero = 1
while numero <= 5:
    print(numero)
    numero += 1

#lista
#Crie uma lista com 3 comidas favoritas e mostre cada uma na tela.

comidas = ["pizza(0)", "hambúrguer(1)", "sorvete(2)"]
print(comidas[0])
print(comidas[1])
print(comidas[2])

#for
#Use um for para mostrar todos os nomes de uma lista de amigos.

amigos = ["Ana", "Pedro", "João"]
for nome in amigos:
    print("Olá,", nome, "!")

#len()
#Mostre quantos itens há em uma lista de cores.

cores = ["azul", "verde", "vermelho", "amarelo"]
print("Número de cores na lista:", len(cores))

#range
#Mostre os números de 1 até 10 com for e range.

for numero in range(1, 11):
    print(numero)