// fase1
String[] optionsLevel1 = { "print(", "\"Hello World\"", ")" };
boolean[] usedOptionLevel1 = { false, false, false };
int[] answerLevel1 = { 0, 1, 2 };

// fase2
String[] optionsLevel2 = { 
    " idade =", "15\n", "altura =", "1.70\n", 
    "nome =", "Lucas\n", "tem_cachorro =", "True"
};
boolean[] usedOptionLevel2 = { false, false, false, false, false, false, false, false };
int[] answerLevel2 = { 0, 1, 2, 3, 4, 5, 6, 7 };

// fase3
String[] optionsLevel3 = { 
    "print(", 
    "\"Meu nome é Lucas e eu gosto de jogar videogame!\"", 
    ")"
};
boolean[] usedOptionLevel3 = { false, false, false };
int[] answerLevel3 = { 0, 1, 2 };

// fase4
String[] optionsLevel4 = { 
    "nome = input(\"Digite seu nome: \")\n", 
    "print(\"Bem-vindo\", nome, \"!\")"
};
boolean[] usedOptionLevel4 = { false, false };
int[] answerLevel4 = { 0, 1 };

// fase5
String[] optionsLevel5 = { 
    "n1 = int(input(\"Digite o primeiro número: \"))\n", 
    "n2 = int(input(\"Digite o segundo número: \"))\n",
    "print(\"A soma é:\", n1 + n2)"
};
boolean[] usedOptionLevel5 = { false, false, false };
int[] answerLevel5 = { 0, 1, 2 };

// fase6
String[] optionsLevel6 = { 
    "idade = int(input(\"Digite sua idade: \"))\n", 
    "print(\"Maior de idade?\", idade >= 18)"
};
boolean[] usedOptionLevel6 = { false, false };
int[] answerLevel6 = { 0, 1 };

// fase7
String[] optionsLevel7 = { 
    "nota = float(input(\"Digite sua nota: \"))\n",
    "if nota >= 6:\n",
    "  print(\"Aprovado\")\n",
    "else:\n",
    "  print(\"Reprovado\")\n"
};
boolean[] usedOptionLevel7 = { false, false, false, false, false };
int[] answerLevel7 = { 0, 1, 2, 3, 4 };

// fase8
String[] optionsLevel8 = { 
    "nota = float(input(\"Digite sua nota: \"))\n",
    "if nota >= 9: \n",
    "  print(\"Excelente!\")\n",
    "elif nota >= 6:\n",
    "  print(\"Bom trabalho!\")\n",
    "else:\n",
    "  print(\"Precisa melhorar.\")"
};
boolean[] usedOptionLevel8 = { false, false, false, false, false, false, false };
int[] answerLevel8 = { 0, 1, 2, 3, 4, 5, 6 };

// fase9
String[] optionsLevel9 = { 
    "numero = 1\n",
    "while numero <= 5:\n",
    "  print(numero)\n",
    "  numero += 1"
};
boolean[] usedOptionLevel9 = { false, false, false, false };
int[] answerLevel9 = { 0, 1, 2, 3 };

// fase10
String[] optionsLevel10 = { 
    "comidas = [\"pizza\", \"hambúrguer\", \"sorvete\"]\n",
    "print(comidas[0])\n",
    "print(comidas[1])\n",
    "print(comidas[2])"
};
boolean[] usedOptionLevel10 = { false, false, false, false };
int[] answerLevel10 = { 0, 1, 2, 3 };

// fase11
String[] optionsLevel11= { 
    "amigos = [\"Ana\", \"Pedro\", \"João\"]\n",
    "for nome in amigos:\n",
    "  print(\"Olá,\", nome, \"!\")"
};
boolean[] usedOptionLevel11 = { false, false, false };
int[] answerLevel11 = { 0, 1, 2 };

// fase12
String[] optionsLevel12 = { 
    "cores = [\"azul\", \"verde\", \"vermelho\", \"amarelo\"]\n",
    "print(\"Número de cores na lista:\", len(cores))"
};
boolean[] usedOptionLevel12 = { false, false};
int[] answerLevel12 = { 0, 1 };

// fase13
String[] optionsLevel13 = { 
    "for numero in range(1, 11):\n",
    "  print(numero)"
};
boolean[] usedOptionLevel13 = { false, false };
int[] answerLevel13 = { 0, 1 };

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
