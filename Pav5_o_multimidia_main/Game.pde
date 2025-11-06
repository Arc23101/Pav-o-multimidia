// game screen

int currentLevel = 1;

String[] optionsLevel1 = { "print(", "\"Hello World\"", ")" };
boolean[] usedOptionLevel1 = { false, false, false };
int[] answerLevel1 = {0,1,2}; 

String[] optionsLevel2 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel2 = { false, false, false, false };

String[] optionsLevel3 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel3 = { false, false, false, false };

String[] optionsLevel4 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel4 = { false, false, false, false };

String[] optionsLevel5 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel5 = { false, false, false, false };

String[] optionsLevel6 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel6 = { false, false, false, false };

String[] optionsLevel7 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel7 = { false, false, false, false }; 

String[] optionsLevel8 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel8 = { false, false, false, false };

String[] optionsLevel9 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel9 = { false, false, false, false };

String[] optionsLevel10 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel10 = { false, false, false, false }; 

String[] optionsLevel11= { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLeve11 = { false, false, false, false };

String[] optionsLevel12 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel12 = { false, false, false, false };

String[]optionsLevel13 = { "Numero =", "\"1010\"", "Booleana = ","True " };
boolean[] usedOptionLevel13 = { false, false, false, false };

ArrayList<Integer> picked = new ArrayList<Integer>();

// GUI
int btnX = 0;
int btnY = 0;
int btnW = 180;
int btnH = 50;


void drawGame() {
  basicInterface();
  
  switch(currentLevel) {
  case 1: drawLevel1(); break;
  case 2: drawLevel2(); break;
  case 3: drawLevel3(); break;
  case 4: drawLevel4(); break;
  case 5: drawLevel5(); break;
  case 6: drawLevel6(); break;
  case 7: drawLevel7(); break;
  case 8: drawLevel8(); break;
  case 9: drawLevel9(); break;
  case 10: drawLevel10(); break;
  case 11: drawLevel11(); break;
  case 12: drawLevel12(); break;
  case 13: drawLevel12(); break;
  }
  
}

void basicInterface() {
  noStroke();
  
  fill(#FFFFFF);
  rect(0, 0, width/2, height);
  
  fill(#E2E2E2);
  rect(width/2, 0, width/2, height/2);
  
  fill(#D0CFCF);
  rect(width/2, height/2, width/2, height/2);
  
  // continue button 
  
  btnX = width/2 + padding;
  btnY = height - padding*2;
  
  boolean canCheck = picked.size() == optionsLevel1.length;
  
  if (canCheck) fill(#ffffff); // white active
  else fill(#888888); // grey disabled

  rect(btnX, btnY, btnW, btnH);

  fill(#000000);
  textAlign(CENTER, CENTER);
  text("CONTINUAR", btnX + btnW/2, btnY + btnH/2);
  textAlign(LEFT, BASELINE); 
}

boolean isCorrect(int[] answer) {
  if (picked.size() != answer.length) return false;
  for (int i = 0; i < answer.length; i++) {
    if (picked.get(i) != answer[i]) return false;
  }
  return true;
}

void handleGameClick() {
  if (state == 1) {
    
    // remove last if click on middle
    if (mouseX > width/2 &&
        mouseX < width &&
        mouseY > 0 &&
        mouseY < height/2) {

      if (picked.size() > 0) {
        int lastIndex = picked.remove(picked.size()-1);
        usedOptionLevel1[lastIndex] = false;
      }
       return;
    }

    // check clickable options (only if not removed)
    for (int i = 0; i < optionsLevel1.length; i++) {
      float bx = width/2 + padding;
      float by = height/2 + padding * 2 + i*40;

      if (mouseX > bx && mouseX < bx+200 &&
          mouseY > by-20 && mouseY < by) {

        if (!usedOptionLevel1[i]) {
          picked.add(i);
          usedOptionLevel1[i] = true;

        }
      }
    }
  }

  if (mouseX > btnX && mouseX < btnX+btnW &&
      mouseY > btnY && mouseY < btnY+btnH) {

    if (picked.size() == optionsLevel1.length) {

      if (isCorrect(answerLevel1)) {
        
        currentLevel++; 
        
        picked.clear();
        for (int i = 0; i < usedOptionLevel1.length; i++) usedOptionLevel1[i] = false;
        
        if (currentLevel > 13) {
          state = 2; 
        }
      }
    }
  }
}

void drawLevelTitle(String topic) {
  float rectX = padding;
  float rectY = padding;
  float rectW = 200;
  float rectH = 40;  
  
  fill(#E2E2E2); 
  noStroke();
  rect(rectX, rectY, rectW, rectH); 
  
  textAlign(CENTER, CENTER);
  fill(#000000);
  textSize(20);
  text(topic, rectX + rectW/2, rectY + rectH/2);

  textAlign(LEFT, BASELINE); 
}

// levels

void drawLevel1() {
  drawLevelTitle("Variáveis");
  
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("[  ] Int \nInt é usada para números que sejam inteiros, ou seja, números que representam quantidades que não sejam quebradas. Esses números pode ser tanto negativo, como positivo. Exemplo: quantidade de doces no pote, carros estacionados.\n[  ] Float\nUtilizada para representar números decimais, como medidas, percentuais ou números que contenham parte fracionária. Exemplo: altura, peso.\n[  ] String\nSão utilizadas para representar e manipular textos, ou seja,  usado para armazenar informações de texto. Exemplo: nome, mensagem.\n[  ] Bool\nÉ utilizado para representar valores lógicos,  podendo assumir valores de verdadeiro ou falso. Exemplo: janela fechada ou aberta", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Crie quatro variáveis diferentes (uma de cada tipo: int, float, str, bool) e use print() para mostrar o valor de cada uma delas na tela.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel2.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel2[i], bx, by);
  }
}

void drawLevel2() {
   fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("A função PRINT é a forma mais básica e crucial de comunicar o programa com o usuário,\nsendo usada para exibir na tela mensagens de texto, os valores armazenados em variáveis\nou o resultado final de qualquer cálculo ou processamento de dados realizado internamente.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Mostre na tela uma frase que diga um nome e o que gosta de fazer..", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel2.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel2[i], bx, by);
  }
  drawLevelTitle("Print"); 
}

void drawLevel3() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("[  ] Int \nInt é usada para números que sejam inteiros, ou seja, números que representam quantidades que não sejam quebradas. Esses números pode ser tanto negativo, como positivo. Exemplo: quantidade de doces no pote, carros estacionados.\n[  ] Float\nUtilizada para representar números decimais, como medidas, percentuais ou números que contenham parte fracionária. Exemplo: altura, peso.\n[  ] String\nSão utilizadas para representar e manipular textos, ou seja,  usado para armazenar informações de texto. Exemplo: nome, mensagem.\n[  ] Bool\nÉ utilizado para representar valores lógicos,  podendo assumir valores de verdadeiro ou falso. Exemplo: janela fechada ou aberta", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Crie quatro variáveis diferentes (uma de cada tipo: int, float, str, bool) e use print() para mostrar o valor de cada uma delas na tela.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel3.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel3[i], bx, by);
  }
  drawLevelTitle("Input");
}

void drawLevel4() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("O s operadores matemáticos (+,-,*,/ e outros) são os símbolos que seu código utiliza para\nrealizar todas as operações numéricas necessárias, permitindo que você calcule novos\nvalores a partir de dados existentes, como somar preços ou dividir quantidades, e então\nusar esses resultados.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Peça dois números e mostre a soma deles.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel4.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel4[i], bx, by);
  }
  drawLevelTitle("Operações Matemáticas");
}

void drawLevel5() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Os Operadores de Comparação (==,>,<,!=, etc.) são usados para testar relações entre valores (se são iguais, diferentes, maiores ou menores). O resultado dessas comparações é sempre um valor booleano: True (Verdadeiro) se a condição for atendida ou False (Falso) se não for.\n== : iguail\n>= : maior ou igual\n<= : menor ou igual\n!= : diferente que\n> : maior que \n< : menor que ", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Peça a idade de uma pessoa e diga se ela é maior de idade (18 ou mais).", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel5.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel5[i], bx, by);
  }
  drawLevelTitle("Operações de Comparação");
}

void drawLevel6() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Usado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel6.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel6[i], bx, by);
  }
  drawLevelTitle("If");
}

void drawLevel7() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("O elif e o else são acompanhantes quase obrigatórios do if. São as outras condições que complementam a primeiraa.\nO else não precisa de uma condição, pois ele engloba tudo que não está no if e elif", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Peça a nota do aluno e mostre uma mensagem diferente para cada faixa de nota.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel7.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel7[i], bx, by);
  }
  drawLevelTitle("Elif / Else"); 
}

void drawLevel8() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("É usado como um recurso para executar um bloco de códigos receitas vezes enquanto é a ação do verdadeira. \nQuando a ação  pass a ser falsa, a execução do loop é interrompida.\nÉ ideal para situações em que o número de repetições é desconhecido previamente, como esperar por uma entrada válida do usuário ou repetir uma ação até que um evento específico ocorra.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Conte de 1 até 5 usando while.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel8.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel8[i], bx, by);
  }
  drawLevelTitle("While");
}

void drawLevel9() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Listas em python é como uma caixa onde se guarda 2 ou mais itens.\nColocando colchetes ([]) após chamar a lista, é possível acessar os itens delaa individualmente.\nA ordem dos itens da lista sempre começa na posição 0.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Crie uma lista com 3 comidas favoritas e mostre cada uma na tela.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel9.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel9[i], bx, by);
  }
  drawLevelTitle("Listas");
}

void drawLevel10() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("for é um laço de repetição. É como um assistente que repete uma acão para cada item até alcançar a condição pré determinada.\nTradução: \nPara cada item NA lista, FAÇA isso.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Use um for para mostrar todos os nomes de uma lista de amigos.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel10.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel10[i], bx, by);
  }
  drawLevelTitle("For"); 
}

void drawLevel11() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel11.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel11[i], bx, by);
  }
  drawLevelTitle("For"); 
}

void drawLevel12() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Usado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel12.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel12[i], bx, by);
  }
  drawLevelTitle("For");
}
void drawLevel13() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Usado para tomar decisões em um determinado programa, executando uma determinada ação somente se a ação for verdadeira.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("#Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6).", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel13.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel13[i], bx, by);
  }
  drawLevelTitle("Calculadora (Fase final)");
}
