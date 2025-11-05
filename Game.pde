// game screen

int currentLevel = 1;

String[] optionsLevel1 = { "print(", "\"Hello World\"", ")" };
boolean[] usedOptionLevel1 = { false, false, false };

ArrayList<Integer> picked = new ArrayList<Integer>();


void drawGame() {
  basicInterface();
  
  switch(currentLevel) {
  case 1: drawLevel1(); break;
  case 2: drawLevel2(); break;
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
}

void handleGameClick() {
  if (state == 1 && currentLevel == 1) {
    
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
      float bx = width/2 + 20;
      float by = height/2 + 100 + i*40;

      if (mouseX > bx && mouseX < bx+200 &&
          mouseY > by-20 && mouseY < by) {

        if (!usedOptionLevel1[i]) {
          picked.add(i);
          usedOptionLevel1[i] = true;

        }
      }
    }
  }
}


// levels

void drawLevel1() {
  fill(0);
  textSize(24);
  
  // title for explanation
  text("Explicação:", padding, padding * 2);
  
  // explanation title
  text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", padding, padding * 4, width/2 - padding * 2, height - padding * 6);
  
  // example image
  image(img, padding, height - 500 - padding, 500, 500);

  // title for challenge
  text("Montar o comando para imprimir:", width/2 + padding, padding * 2);

  // show picked code middle right
  String code = "";
  for (int idx : picked) {
    code += optionsLevel1[idx] + " ";
  }
  text(code, width/2 + padding, padding * 4);


  // show clickable options bottom right
  for (int i = 0; i < optionsLevel1.length; i++) {
    float bx = width/2 + 20;
    float by = height/2 + 100 + i*40;
    text(optionsLevel1[i], bx, by);
  }
}


void drawLevel2() {
  picked.clear();  
  for (int i = 0; i < usedOptionLevel1.length; i++) usedOptionLevel1[i] = false;
}
