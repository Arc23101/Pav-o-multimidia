print("Calculadora Simples") 
print("Selecione a operação:")

operaçoes = ['1.Adicionar','2.Subtrair','3.Multiplicar','4.Dividir','5.Sair']

for item in range(len(operaçoes)):
    print(operaçoes[item])

escolha = int(input("Digite a opção (1/2/3/4/5): "))

while escolha != 5:

    num1 = float(input("Digite o primeiro número: "))
    num2 = float(input("Digite o segundo número: "))

    if escolha == 1:
        print(num1, "+", num2, "=", num1 + num2) 
    elif escolha == 2:
        print(num1, "-", num2, "=", num1 - num2)
    elif escolha == 3:
        print(num1, "*", num2, "=", num1 * num2)
    elif escolha == 4:
        print(num1, "/", num2, "=", num1 / num2)    
    else:
        print("Opção inválida") 
    escolha = int(input("Digite a opção (1/2/3/4/5): "))        

print("Saindo da calculadora.")
