void drawInfo(String topic, String explanation, PImage exampleImage, String challenge) {  
  
  fill(blue3); 
  noStroke();
  rect(padding, padding, width/2 - padding*2, 40); 
  rect(width/2 + padding, padding, width/2 - padding*2, 40); 
  
  fill(#ffffff);
  textSize(24);
  text(topic, padding*2, padding*2 + 5);
  text("Desafio: ", width/2 + padding*2, padding*2 + 5);
  
  text(explanation, padding, padding * 5, width / 2 - padding * 2, height - padding * 6);
  
  image(exampleImage, width / 4, height - padding*8, 650, 300);
  
  // Challenge title
  text(challenge, width / 2 + padding, padding * 5, width / 2 - padding * 8, height - padding * 6);
  
}

// Level 1: Variables
void drawLevel1() {
  String explanation = "[  ] Int \nInt é usada para números que sejam inteiros, ou seja, números que representam quantidades que não sejam quebradas. Esses números podem ser tanto negativos quanto positivos. Exemplo: quantidade de doces no pote, carros estacionados.\n\n[  ] Float\nUtilizada para representar números decimais, como medidas, percentuais ou números que contenham parte fracionária. Exemplo: altura, peso.\n\n[  ] String\nUsada para representar e manipular textos, ou seja, utilizada para armazenar informações de texto. Exemplo: nome, mensagem.\n\n[  ] Bool\nUsada para representar valores lógicos, podendo assumir verdadeiro ou falso. Exemplo: janela fechada ou aberta.";
  String challenge = "Crie quatro variáveis diferentes (uma de cada tipo: int, float, str, bool) e use print() para mostrar o valor de cada uma delas na tela.";
  
  drawInfo("Variáveis", explanation, pu1, challenge);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel2[idx] + " ";
  }
  text(code, width/2 + padding, padding * 10, width/2 - padding * 8, height - padding * 6);

  for (int i = 0; i < optionsLevel2.length; i++) {
    float bx = width/2 + padding;
    float by = height/2 + padding * 2 + i*40;
    text(optionsLevel2[i], bx, by, width/2 - padding * 8, height - padding * 6);
  }
}

// Level 2: Print
void drawLevel2() {
  String explanation = "[  ] Print()\nA função print() é uma das formas mais simples e importantes de comunicação entre o programa e o usuário. Ela coloca na tela mensagens de texto, valores guardados em variáveis ou resultados de cálculos feitos pelo código.\n\nSempre que você quer entender o que está acontecendo no seu programa ou mostrar uma resposta para o usuário, o print() é a ferramenta ideal. Ele funciona como a 'voz' do programa, exibindo qualquer informação que você quiser.";
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
  String explanation = "[  ] Input()\nO comando input() deixa o programa fazer perguntas ao usuário e esperar uma resposta. Quando o input() é chamado, o programa pausa até que o usuário digite algo e aperte Enter.\n\nEssa resposta é então guardada dentro de uma variável, permitindo criar programas interativos, como formulários, jogos, escolhas e diálogos. O input() torna possível receber nomes, números ou qualquer informação vinda do usuário.";
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
  String explanation = "Os operadores matemáticos (+, -, *, / e outros) permitem que o programa realize cálculos. Eles servem para somar valores, subtrair quantidades, multiplicar números ou dividir resultados.\n\nEsses operadores aparecem o tempo todo em situações de compras, pontuações, medidas e em qualquer cálculo necessário no código. Usando operadores, você pode criar expressões mais complexas e gerar novos valores baseados em dados já existentes.";
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
  String explanation = "[  ] Aritméticos\nUsados para realizar cálculos matemáticos, como soma (+), subtração (-), multiplicação (*) e divisão (/). Exemplo: calcular total de pontos ou média.\n\n[  ] Relacionais\nComparam valores e retornam verdadeiro ou falso. Exemplos: >, <, ==. Exemplo: verificar se uma idade é maior que 18.\n\n[  ] Lógicos\nCombinam condições usando AND (&&), OR (||) e NOT (!). Exemplo: verificar se uma pessoa é maior de idade E possui autorização.";
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
  String explanation = "[  ] If()\nO comando if permite que o programa tome decisões. Ele executa um trecho de código apenas quando uma condição for verdadeira.\n\nÉ como dizer: 'se isso acontecer, faça aquilo'.\nO if é fundamental para criar comportamentos inteligentes, como permitir acesso somente a certas pessoas, exibir mensagens diferentes conforme uma condição ou reagir a ações durante um jogo.\nSem o if, o programa sempre faria tudo igual, sem escolhas.";
  String challenge = "Peça a nota de um aluno e diga se ele foi aprovado (nota >= 6).";
  
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
  String explanation = "[  ] If()\nExecuta um bloco de código somente se uma condição for verdadeira. Exemplo: se pontos > 10, então você ganha um bônus.\n\n[  ] Else()\nExecuta quando a condição do if é falsa. Exemplo: se pontos não forem suficientes, mostrar mensagem de erro.\n\n[  ] Else if()\nPermite testar várias condições em sequência. Exemplo: verificar níveis como iniciante, intermediário ou avançado.";
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
  String explanation = "[  ] While()\nO while cria um loop que repete um conjunto de instruções enquanto uma condição for verdadeira. Assim que a condição se tornar falsa, o loop para automaticamente.\n\nIsso é útil quando você não sabe quantas repetições serão necessárias, como pedir novamente uma senha até vir a correta ou repetir uma ação até que o usuário faça algo válido.\n\nO while permite repetir tarefas sem precisar escrever o mesmo código várias vezes.";
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
  String explanation = "[  ] Array\nEstrutura que armazena vários valores do mesmo tipo. Exemplo: lista de nomes ou pontuações.\n\n[  ] Acesso por índice\nCada posição tem um número começando em 0. Exemplo: array[0] acessa o primeiro item.\n\n[  ] Tamanho\nUsado para saber quantos elementos existem no array. Exemplo: array.length.";
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
  String explanation = "[  ] For()\nRepete um bloco de código um número específico de vezes. Exemplo: percorrer uma lista de itens.\n\n[  ] While\nRepete enquanto uma condição for verdadeira. Exemplo: continuar jogo enquanto vidas > 0.\n\n[  ] Do While\nParecido com while, mas garante que o código execute ao menos uma vez antes de testar a condição.";
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
  String explanation = "[  ] Len()\nA função len() mostra quantos itens existem em uma lista ou sequência. É muito útil quando você precisa saber o tamanho de algo antes de percorrer ou quando quer usar esse número em um cálculo.\n\nEla funciona como um contador automático e é frequentemente usada junto com loops, principalmente o for, deixando o código flexível e organizado.";
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
  String explanation = "[  ] Range()\nO range() cria uma sequência de números que pode ser usada dentro de um for para controlar repetições. Ele pode começar no 0 ou em outro valor que você escolher.\n\nVocê também pode definir onde a sequência termina e qual será o passo entre os números.\n\nO range é perfeito para criar contadores, loops numéricos, movimentos repetitivos e várias tarefas automáticas dentro do programa.";
  String challenge = "Mostre os números de 1 até 10 com for e range.";
  
  drawInfo("Range", explanation, pu12, challenge);

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
