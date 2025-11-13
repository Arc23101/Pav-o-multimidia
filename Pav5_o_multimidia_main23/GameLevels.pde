void drawInfo(String topic, String explanation, PImage exampleImage, String challenge) { 
  float rectX = padding;
  float rectY = padding;
  float rectW = 200;
  float rectH = 40;  
  
  fill(blue3); 
  noStroke();
  rect(rectX, rectY, rectW, rectH); 
  
  textAlign(CENTER, CENTER);
  fill(#ffffff);
  textSize(24);
  text(topic, rectX + rectW/2, rectY + rectH/2);

  textAlign(LEFT, BASELINE); 
  
  text(explanation, padding, padding * 4 + 50, width / 2 - padding * 2, height - padding * 6);
  
  image(exampleImage, width / 4, height / 4 + height / 2 - padding, 650, 300);
  
  // Challenge title
  text(challenge, width / 2 + padding, padding * 2, width / 2 - padding * 8, height - padding * 6);
  
}

// Level 1: Variables
void drawLevel1() {
  String explanation = "[  ] Int \nInt é usada para números que sejam inteiros, ou seja, números que representam quantidades que não sejam quebradas. Esses números pode ser tanto negativo, como positivo. Exemplo: quantidade de doces no pote, carros estacionados.\n[  ] Float\nUtilizada para representar números decimais, como medidas, percentuais ou números que contenham parte fracionária. Exemplo: altura, peso.\n[  ] String\nSão utilizadas para representar e manipular textos, ou seja,  usado para armazenar informações de texto. Exemplo: nome, mensagem.\n[  ] Bool\nÉ utilizado para representar valores lógicos,  podendo assumir valores de verdadeiro ou falso. Exemplo: janela fechada ou aberta";
  String challenge = "Crie quatro variáveis diferentes (uma de cada tipo: int, float, str, bool) e use print() para mostrar o valor de cada uma delas na tela.";
  
  drawInfo("Variáveis", explanation, pu1, challenge);

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

// Level 2: Print
void drawLevel2() {
  String explanation = "A função PRINT é a forma mais básica e crucial de comunicar o programa com o usuário,\nsendo usada para exibir na tela mensagens de texto, os valores armazenados em variáveis\nou o resultado final de qualquer cálculo ou processamento de dados realizado internamente.";
  String challenge = "Mostre na tela uma frase que diga um nome e o que gosta de fazer..";
  
  drawInfo("Print", explanation, pu2, challenge);
  
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
}

// Level 3: Inout
void drawLevel3() {
  String explanation = "O comando INPUT é essencial, pois permite que o programa solicite e capture dados\ndiretamente do usuário enquanto está em execução, fazendo com que ele pause a ação e\nespere que uma informação, como um nome ou número, seja digitada e armazenada em\numa variável";
  String challenge = "Peça o nome do usuário e mostre uma mensagem de boas-vindas";
  
  drawInfo("Input", explanation, pu3, challenge);
  
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
}

// Level 4: Operations
void drawLevel4() {
  String explanation = "Os operadores matemáticos (+,-,*,/ e outros) são os símbolos que seu código utiliza para\nrealizar todas as operações numéricas necessárias, permitindo que você calcule novos\nvalores a partir de dados existentes, como somar preços ou dividir quantidades, e então\nusar esses resultados.";
  String challenge = "Peça dois números e mostre a soma deles.";
  
  drawInfo("Operações Matemáticas", explanation, pu4, challenge);
  
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
}

// Level 5: Operations
void drawLevel5() {
  String explanation = "Os Operadores de Comparação (==,>,<,!=, etc.) são usados para testar relações entre valores (se são iguais, diferentes, maiores ou menores). O resultado dessas comparações é sempre um valor booleano: True (Verdadeiro) se a condição for atendida ou False (Falso) se não for.\n== : igual\n>= : maior ou igual\n<= : menor ou igual\n!= : diferente que\n> : maior que \n< : menor que";
  String challenge = "Peça a idade de uma pessoa e diga se ela é maior de idade (18 ou mais).";
  
  drawInfo("Operações de Comparação", explanation, pu5, challenge);
  
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
}


// Level 6: If
void drawLevel6() {
  String explanation = "[  ] If\nUsado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.";
  String challenge = "#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).";
  
  drawInfo("If", explanation, pu6, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel7[idx] + " ";
  }
  text(code, width / 2 + padding, padding * 8, width / 2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel7.length; i++) {
    float bx = width / 2 + padding;
    float by = height / 2 + padding * 2 + i * 40;
    text(optionsLevel7[i], bx, by, width / 2 - padding * 8, height - padding * 6);
  }
}

// Level 7: Elif / Else
void drawLevel7() {
  String explanation = "O elif e o else são acompanhantes quase obrigatórios do if. São as outras condições que complementam a primeira.\nO else não precisa de uma condição, pois ele engloba tudo que não está no if e elif";
  String challenge = "Peça a nota do aluno e mostre uma mensagem diferente para cada faixa de nota.";
  
  drawInfo("Elif / Else", explanation, pu7, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel8[idx] + " ";
  }
  text(code, width / 2 + padding, padding * 8, width / 2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel8.length; i++) {
    float bx = width / 2 + padding;
    float by = height / 2 + padding * 2 + i * 40;
    text(optionsLevel8[i], bx, by, width / 2 - padding * 8, height - padding * 6);
  }
}

// Level 8: While
void drawLevel8() {
  String explanation = "É usado como um recurso para executar um bloco de códigos receitas vezes enquanto é a ação do verdadeira. Quando a ação  pass a ser falsa, a execução do loop é interrompida.\nÉ ideal para situações em que o número de repetições é desconhecido previamente, como esperar por uma entrada válida do usuário ou repetir uma ação até que um evento específico ocorra.";
  String challenge = "Conte de 1 até 5 usando while.";
  
  drawInfo("While", explanation, pu8, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel9[idx] + " ";
  }
  text(code, width / 2 + padding, padding * 8, width / 2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel9.length; i++) {
    float bx = width / 2 + padding;
    float by = height / 2 + padding * 2 + i * 40;
    text(optionsLevel9[i], bx, by, width / 2 - padding * 8, height - padding * 6);
  }
}

// Level 9: Lists
void drawLevel9() {
  String explanation = "Listas em Python são como uma caixa onde você pode guardar 2 ou mais itens.\nUsando colchetes ([]) após chamar a lista, você pode acessar os itens individualmente.\nA ordem dos itens começa com 0.";
  String challenge = "Crie uma lista com 3 comidas favoritas e mostre cada uma na tela.";
  
  drawInfo("Listas", explanation, pu9, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel10[idx] + " ";
  }
  text(code, width / 2 + padding, padding * 8, width / 2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel10.length; i++) {
    float bx = width / 2 + padding;
    float by = height / 2 + padding * 2 + i * 40;
    text(optionsLevel10[i], bx, by, width / 2 - padding * 8, height - padding * 6);
  }
}

// Level 10: For
void drawLevel10() {
  String explanation = "O for é um laço de repetição. Ele repete uma ação para cada item até alcançar a condição pré-determinada.\nTradução: Para cada item na lista, faça isso.";
  String challenge = "Use um for para mostrar todos os nomes de uma lista de amigos.";
  
  drawInfo("For", explanation, pu10, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel11[idx] + " ";
  }
  text(code, width / 2 + padding, padding * 8, width / 2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel11.length; i++) {
    float bx = width / 2 + padding;
    float by = height / 2 + padding * 2 + i * 40;
    text(optionsLevel11[i], bx, by, width / 2 - padding * 8, height - padding * 6);
  }
}

// Level 11: For (len)
void drawLevel11() {
  String explanation = "Um dos principais acompanhantes do \"for\" é o \"len\". Quando é colocado na frente de umma lista, o termo passa a significar a quantidade de itens da lista.";
  String challenge = "Mostre quantos itens há em uma lista de cores.";
  
  drawInfo("Len", explanation, pu11, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel12[idx] + " ";
  }
  text(code, width / 2 + padding, padding * 8, width / 2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel12.length; i++) {
    float bx = width / 2 + padding;
    float by = height / 2 + padding * 2 + i * 40;
    text(optionsLevel12[i], bx, by, width / 2 - padding * 8, height - padding * 6);
  }
}

// Level 12: For
void drawLevel12() {
  String explanation = "O \"range\" é um acompanhante que cria uma sequência de números para serem usados no \"for\" e em outras situações. Quando números são colocados após o \"range\" e entre parênteses, eles determinam o funcionamento no \"range\".";
  String challenge = "Mostre os números de 1 até 10 com for e range.";
  
  drawInfo("Level 12", explanation, pu12, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel13[idx] + " ";
  }
  text(code, width / 2 + padding, padding * 8, width / 2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel13.length; i++) {
    float bx = width / 2 + padding;
    float by = height / 2 + padding * 2 + i * 40;
    text(optionsLevel13[i], bx, by, width / 2 - padding * 8, height - padding * 6);
  }
}
