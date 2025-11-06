// game screen
import java.util.Arrays;

int currentLevel = 1;
// fase1
String[] optionsLevel1 = { "print(", "\"Hello World\"", ")" };
boolean[] usedOptionLevel1 = { false, false, false};
int[] answerLevel1 = {0, 1, 2}; 
//fase2
String[] optionsLevel2 = { 
    "idade =", "15","altura = ", "1.70", 
    "nome =", "Lucas", "tem_cachorro =", "True",
    "print(idade, altura, nome, tem_cachorro)"};
boolean[] usedOptionLevel2 = { false, false, false};
int[] answerLevel2 = {0, 1, 2};
//fase3
String[] optionsLevel3 = { 
    "print(", 
    "Meu nome é Lucas e eu gosto de jogar videogame!", 
    ")" };
boolean[] usedOptionLevel3 = { false, false, false };
int[] answerLevel3 = {0, 1, 2};
//fase4
String[] optionsLevel4 = { 
    "nome = input(Digite seu nome: ", 
    "print(Bem-vindo", "nome", "!"};
boolean[] usedOptionLevel4 = { false, false, false};
int[] answerLevel4 = {0, 1, 2};
//fase5
String[] optionsLevel5 = { 
    "n1 = int(input(Digite o primeiro número: )", 
    "n2 = int(input(Digite o segundo número: )",
    "print(A soma é:", "n1 + n2)"};
boolean[] usedOptionLevel5 = { false, false, false};
int[] answerLevel5 = {0, 1, 2};
//fase6
String[] optionsLevel6 = { 
    "idade = int(input(Digite sua idade: )", 
    "print(Maior de idade?", "idade >= 18)" };
boolean[] usedOptionLevel6 = { false, false, false };
int[] answerLevel6 = {0, 1, 2};
//fase7
String[] optionsLevel7 = { 
    "nota = float(input(Digite sua nota: )",
    "if nota >= 6:",
    "  print(\"Aprovado",
    "else:",
    "  print(\"Reprovado"};
boolean[] usedOptionLevel7 = { false, false, false};
int[] answerLevel7 = {0, 1, 2};
//fase8
String[] optionsLevel8 = { 
    "nota = float(input(Digite sua nota: )",
    "if nota >= 9: ",
    "  print(Excelente!",
    "elif nota >= 6:",
    "  print(Bom trabalho!",
    "else:",
    "  print(Precisa melhorar."};
boolean[] usedOptionLevel8 = { false, false, false};
int[] answerLevel8 = {0, 1, 2};
//fase9
String[] optionsLevel9 = { 
    "numero = 1",
    "while numero <= 5:",
    "  print(numero)",
    "  numero += 1"};
boolean[] usedOptionLevel9 = { false, false, false};
int[] answerLevel9 = {0, 1, 2};
//fase10
String[] optionsLevel10 = { 
    "comidas = [pizza(0)", "hambúrguer(1)", "sorvete(2)]",
    "print(comidas[0])",
    "print(comidas[1])",
    "print(comidas[2])"};
boolean[] usedOptionLevel10 = { false, false, false};
int[] answerLevel10 = {0, 1, 2};
//fase11
String[] optionsLevel11= { 
    "amigos = [Ana", "Pedro", "João]",
    "for nome in amigos:",
    "  print(Olá,", "nome", "!)"};
boolean[] usedOptionLevel11 = { false, false, false};
int[] answerLevel11 = {0, 1, 2};
//fase12
String[] optionsLevel12 = { 
    "cores = [azul", "verde", "vermelho", "amarelo]",
    "print(Número de cores na lista:", "len(cores))"};
boolean[] usedOptionLevel12 = { false, false, false};
int[] answerLevel12 = {0, 1, 2};
//fase13
String[] optionsLevel13 = { 
    "for numero in range(1, 11):",
    "  print(numero)"};

boolean[] usedOptionLevel13 = { false, false };
int[] answerLevel13 = {0, 1};

String[][] optionsLevels = {
  optionsLevel1,
  optionsLevel2,
  optionsLevel3,
  optionsLevel4,
  optionsLevel5,
  optionsLevel6,
  optionsLevel7,
  optionsLevel8,
  optionsLevel9,
  optionsLevel10,
  optionsLevel11,
  optionsLevel12,
  optionsLevel13
};

boolean[][] usedOptionsLevels = {
  usedOptionLevel1,
  usedOptionLevel2,
  usedOptionLevel3,
  usedOptionLevel4,
  usedOptionLevel5,
  usedOptionLevel6,
  usedOptionLevel7,
  usedOptionLevel8,
  usedOptionLevel9,
  usedOptionLevel10,
  usedOptionLevel11,
  usedOptionLevel12,
  usedOptionLevel13
};

int[][] answersLevels = {
  answerLevel1,
  answerLevel2,
  answerLevel3,
  answerLevel4,
  answerLevel5,
  answerLevel6,
  answerLevel7,
  answerLevel8,
  answerLevel9,
  answerLevel10,
  answerLevel11,
  answerLevel12,
  answerLevel13
};


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
        usedOptionsLevels[currentLevel-1][lastIndex] = false;
      }
       return;
    }

    // check clickable options (only if not removed)
    String[] options = optionsLevels[currentLevel-1];
    boolean[] used = usedOptionsLevels[currentLevel-1];

    for (int i = 0; i < options.length; i++) {

      float bx = width/2 + padding;
      float by = height/2 + padding * 2 + i*40;

      if (mouseX > bx && mouseX < bx+200 &&
          mouseY > by-20 && mouseY < by) {

        if (!used[i]) {
          picked.add(i);
          used[i] = true;
        }
      }
    }
  }

  if (mouseX > btnX && mouseX < btnX+btnW &&
      mouseY > btnY && mouseY < btnY+btnH) {

    if (picked.size() == optionsLevels[currentLevel-1].length) {
      if (isCorrect(answersLevels[currentLevel-1])) {

        currentLevel++; 
        
        picked.clear();
        Arrays.fill(usedOptionsLevels[currentLevel-1], false);

        
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
    code += optionsLevel2[idx] + " ";
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
    code += optionsLevel3[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel3.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel3[i], bx, by);
  }
  drawLevelTitle("Print"); 
}

void drawLevel3() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("O comando INPUT é essencial, pois permite que o programa solicite e capture dados\ndiretamente do usuário enquanto está em execução, fazendo com que ele pause a ação e\nespere que uma informação, como um nome ou número, seja digitada e armazenada em\numa variável", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Peça o nome do usuário e mostre uma mensagem de boas-vindas", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel4[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel4.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel4[i], bx, by);
  }
  drawLevelTitle("Input");
}

void drawLevel4() {
  fill(0);
  textSize(24);
  
  // title for explanation 
  text("Explicação:", padding, padding * 2 + 50); 
  
  // explanation title
  text("Os operadores matemáticos (+,-,*,/ e outros) são os símbolos que seu código utiliza para\nrealizar todas as operações numéricas necessárias, permitindo que você calcule novos\nvalores a partir de dados existentes, como somar preços ou dividir quantidades, e então\nusar esses resultados.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Peça dois números e mostre a soma deles.", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel5[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel5.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel5[i], bx, by);
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
    code += optionsLevel6[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel6.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel6[i], bx, by);
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
    code += optionsLevel7[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel7.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel7[i], bx, by);
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
    code += optionsLevel8[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel8.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel8[i], bx, by);
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
    code += optionsLevel9[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel9.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel9[i], bx, by);
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
    code += optionsLevel10[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel10.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel10[i], bx, by);
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
    code += optionsLevel11[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel11.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel11[i], bx, by);
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
    code += optionsLevel12[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel12.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel12[i], bx, by);
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
    code += optionsLevel13[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);

  for (int i = 0; i < optionsLevel13.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel13[i], bx, by);
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

  for (int i = 0; i < optionsLevel1.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel1[i], bx, by);
  }
  drawLevelTitle("DELETADO");
}
