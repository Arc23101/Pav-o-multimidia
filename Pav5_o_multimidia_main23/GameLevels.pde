// levels
void drawLevel1() {
  drawLevelTitle("Variáveis");

  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("[  ] Int \nInt é usada para números que sejam inteiros, ou seja, números que representam quantidades que não sejam quebradas. Esses números pode ser tanto negativo, como positivo. Exemplo: quantidade de doces no pote, carros estacionados.\n[  ] Float\nUtilizada para representar números decimais, como medidas, percentuais ou números que contenham parte fracionária. Exemplo: altura, peso.\n[  ] String\nSão utilizadas para representar e manipular textos, ou seja,  usado para armazenar informações de texto. Exemplo: nome, mensagem.\n[  ] Bool\nÉ utilizado para representar valores lógicos,  podendo assumir valores de verdadeiro ou falso. Exemplo: janela fechada ou aberta", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  
  image(pu1, width/4, height/4 + height/2 - padding, 650, 300); 

  // title for challenge
  text("Crie quatro variáveis diferentes (uma de cada tipo: int, float, str, bool) e use print() para mostrar o valor de cada uma delas na tela.", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel2[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel2.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel2[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
}

void drawLevel2() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("A função PRINT é a forma mais básica e crucial de comunicar o programa com o usuário,\nsendo usada para exibir na tela mensagens de texto, os valores armazenados em variáveis\nou o resultado final de qualquer cálculo ou processamento de dados realizado internamente.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu2, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Mostre na tela uma frase que diga um nome e o que gosta de fazer..", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel3[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel3.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel3[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("Print"); 
}

void drawLevel3() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("O comando INPUT é essencial, pois permite que o programa solicite e capture dados\ndiretamente do usuário enquanto está em execução, fazendo com que ele pause a ação e\nespere que uma informação, como um nome ou número, seja digitada e armazenada em\numa variável", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu3, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Peça o nome do usuário e mostre uma mensagem de boas-vindas", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel4[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel4.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel4[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("Input");
}

void drawLevel4() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Os operadores matemáticos (+,-,*,/ e outros) são os símbolos que seu código utiliza para\nrealizar todas as operações numéricas necessárias, permitindo que você calcule novos\nvalores a partir de dados existentes, como somar preços ou dividir quantidades, e então\nusar esses resultados.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu4, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Peça dois números e mostre a soma deles.", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel5[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel5.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel5[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("Operações Matemáticas");
}

void drawLevel5() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Os Operadores de Comparação (==,>,<,!=, etc.) são usados para testar relações entre valores (se são iguais, diferentes, maiores ou menores). O resultado dessas comparações é sempre um valor booleano: True (Verdadeiro) se a condição for atendida ou False (Falso) se não for.\n== : iguail\n>= : maior ou igual\n<= : menor ou igual\n!= : diferente que\n> : maior que \n< : menor que ", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu5, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Peça a idade de uma pessoa e diga se ela é maior de idade (18 ou mais).", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel6[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel6.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel6[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("Operações de Comparação");
}

void drawLevel6() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Usado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu6, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel7[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel7.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel7[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("If");
}

void drawLevel7() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("O elif e o else são acompanhantes quase obrigatórios do if. São as outras condições que complementam a primeiraa.\nO else não precisa de uma condição, pois ele engloba tudo que não está no if e elif", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu7, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Peça a nota do aluno e mostre uma mensagem diferente para cada faixa de nota.", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel8[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel8.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel8[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("Elif / Else"); 
}

void drawLevel8() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("É usado como um recurso para executar um bloco de códigos receitas vezes enquanto é a ação do verdadeira. \nQuando a ação  pass a ser falsa, a execução do loop é interrompida.\nÉ ideal para situações em que o número de repetições é desconhecido previamente, como esperar por uma entrada válida do usuário ou repetir uma ação até que um evento específico ocorra.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu8, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Conte de 1 até 5 usando while.", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel9[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel9.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel9[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("While");
}

void drawLevel9() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Listas em python é como uma caixa onde se guarda 2 ou mais itens.\nColocando colchetes ([]) após chamar a lista, é possível acessar os itens delaa individualmente.\nA ordem dos itens da lista sempre começa na posição 0.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu9, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Crie uma lista com 3 comidas favoritas e mostre cada uma na tela.", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel10[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel10.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel10[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("Listas");
}

void drawLevel10() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("for é um laço de repetição. É como um assistente que repete uma acão para cada item até alcançar a condição pré determinada.\nTradução: \nPara cada item NA lista, FAÇA isso.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu10, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("Use um for para mostrar todos os nomes de uma lista de amigos.", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel11[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel11.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel11[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("For"); 
}

void drawLevel11() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu11, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel12[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel12.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel12[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("For"); 
}

void drawLevel12() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Usado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(pu12, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel13[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel13.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel13[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("For");
}
void drawLevel13() {
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Usado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, width/4, height/4 + height/2 - padding, 650, 300);  

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2, width/2 - padding * 8, height - padding * 6);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 8, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel1.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 4 + i*40;
    text(optionsLevel1[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
  drawLevelTitle("DELETADO");
}
