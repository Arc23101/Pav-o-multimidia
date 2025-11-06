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
  text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", padding, padding * 4 + 50, width/2 - padding * 2, height - padding * 6); 
  
  // example image
  image(img, padding, height - 500 - padding, 650, 700); 

  // title for challenge
  text("Montar o comando para imprimir:", width/2 + padding, padding * 2);

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
}

void drawLevel2() {
  drawLevel1();
  drawLevelTitle("Print"); 
}

void drawLevel3() {
  drawLevel1();
  drawLevelTitle("Input");
}

void drawLevel4() {
  drawLevel1();
  drawLevelTitle("Operações Matemáticas");
}

void drawLevel5() {
  drawLevel1();
  drawLevelTitle("Operações de Comparação");
}

void drawLevel6() {
  drawLevel1();
  drawLevelTitle("If");
}

void drawLevel7() {
  drawLevel1();
  drawLevelTitle("Elif / Else"); 
}

void drawLevel8() {
  drawLevel1();
  drawLevelTitle("While");
}

void drawLevel9() {
  drawLevel1();
  drawLevelTitle("Listas");
}

void drawLevel10() {
  drawLevel1();
  drawLevelTitle("For"); 
}

void drawLevel11() {
  drawLevel1();
  drawLevelTitle("For"); 
}

void drawLevel12() {
  drawLevel1();
  drawLevelTitle("For");
}
void drawLevel13() {
  drawLevel1();
  drawLevelTitle("Calculadora (Fase final)");
}
