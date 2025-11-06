// menu screen

void drawMenu() {
  background(#ffffff);

  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  fill(#ffffff);
  rect(width/2, height/2, padding * 6, padding * 4);

  fill(#000000);
  textSize(24);
  text("Começar", width/2, height/2);
  
  rectMode(CORNER);
  textAlign(LEFT, BASELINE);
}


void handleMenuClick() {
  if (mouseX > width/2 - padding * 3 &&
        mouseX < width/2 + padding * 3 &&
        mouseY > height/2 - padding * 2 &&
        mouseY < height/2 + padding * 2) {
          state = 1;
        }
}
