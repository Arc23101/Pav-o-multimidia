// menu screen

void drawMenu() {
  background(blue1);

  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  textSize(120);
  fill(darkBlue);
  text("Pylingo", width/2, height/2);
  
  fill(yellow);
  text("Pylingo", width/2, height/2 - 10);

  noStroke();
  fill(darkBlue);
  rect(width/2, height/2 + height/4, padding * 8, padding * 4);
  
  fill(yellow);
  rect(width/2, height/2 + height/4 - 10, padding * 8, padding * 4);

  fill(darkBlue);
  textSize(24);
  text("Começar", width/2, height/2 + height/4 - 10);
  
  rectMode(CORNER);
  textAlign(LEFT, BASELINE);
}


void handleMenuClick() {
  if (mouseX > width/2 - padding * 3 &&
        mouseX < width/2 + padding * 3 &&
        mouseY > height/2 + height/4 - 10 - padding * 2 &&
        mouseY < height/2 + height/4 - 10 + padding * 2) {
          state = 1;
        }
}
