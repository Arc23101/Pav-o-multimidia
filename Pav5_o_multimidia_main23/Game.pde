// game screen
import java.util.Arrays;
int currentLevel = 1;


// GUI
int btnX = 0;
int btnY = 0;
int btnW = 180;
int btnH = 50;

int confettiH = height;
boolean hasCelebrated = false;


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
  case 12: drawLevel12(); break;  // Only one case for Level 12
}

  
  if (isCorrect(answersLevels[currentLevel]) && !hasCelebrated) {
  image(confetti, width/2, confettiH, width, height);
  confettiH = confettiH + 40;
  
  if (confettiH > height) {
    hasCelebrated = true;
  }

  }
}

void basicInterface() {
  noStroke();
  
  fill(blue1);
  rect(0, 0, width/2, height);
  
  fill(blue2);
  rect(width/2, 0, width/2, height/2);
  
  fill(blue3);
  rect(width/2, height/2, width/2, height/2);
  
  // continue button 
  
  btnX = width/2 + padding;
  btnY = height - padding*4;
  
  boolean canCheck = picked.size() == usedOptionsLevels[currentLevel].length;
  
  fill(darkBlue);
  rect(btnX, btnY, btnW, btnH+10);
  
  if (canCheck) fill(yellow); //  active
  else fill(blue1); // disabled

  rect(btnX, btnY, btnW, btnH);
  
  textSize(24);
  fill(darkBlue);
  textAlign(CENTER, CENTER);
  text("CONTINUAR", btnX + btnW/2, btnY + btnH/2);
  textAlign(LEFT, BASELINE); 
  fill(#ffffff);
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
    
    String[] options = optionsLevels[currentLevel];
    boolean[] used = usedOptionsLevels[currentLevel];
    
    // remove last if clicked in middle area
    if (mouseX > width/2 &&
        mouseX < width &&
        mouseY > 0 &&
        mouseY < height/2) {

      if (picked.size() > 0) {
        int lastIndex = picked.remove(picked.size()-1);
        usedOptionsLevels[currentLevel][lastIndex] = false;  // Mark the option as unused
      }
      return;
    }

    // check clickable options (only if not removed)
    for (int i = 0; i < options.length; i++) {
      float bx = width/2 + padding;
      float by = height/2 + padding * 2 + i*40;

      if (mouseX > bx && mouseX < bx + 200 &&
          mouseY > by && mouseY < by + 40) {

        if (!used[i]) {  // If option is not already used
          picked.add(i);  // Add to picked list
          used[i] = true;  // Mark as used
        }
      }
    }
  }

  // Check if the user clicked on the "CONTINUAR" button
  if (mouseX > btnX && mouseX < btnX + btnW &&
      mouseY > btnY && mouseY < btnY + btnH) {

    if (picked.size() == optionsLevels[currentLevel].length) {  // All options picked
      if (isCorrect(answersLevels[currentLevel])) {  // If the answer is correct
        hasCelebrated = false;
        confettiH = -height;  
        
        picked.clear();  // Clear picked options
        Arrays.fill(usedOptionsLevels[currentLevel], false);  // Reset used options

        // Move to next level or restart if at level 12
        if (currentLevel >= 12) {
          currentLevel = 1;  // Reset to level 1
          state = 2;  // Change game state if needed
        } else {
          currentLevel++;  // Go to next level
        }
      }
    }
  }
}
