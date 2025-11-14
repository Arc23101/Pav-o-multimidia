// end screen

void drawEnd() {
  background(blue1);

  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  textSize(120);
  fill(darkBlue);
  text("Muito bom!", width/2, middleOfScreen);
  
  fill(yellow);
  text("Muito Bom!", width/2, middleOfScreen - 10);

  noStroke();
  fill(darkBlue);
  rect(width/2, height/2 + height/4, padding * 10, padding * 4);
  
  fill(yellow);
  rect(width/2, height/2 + height/4 - 10, padding * 10, padding * 4);

  fill(darkBlue);
  textSize(24);
  text("Jogar novamente", width/2, height/2 + height/4 - 10);
  
  textSize(20);
  fill(#ffffff);
  text("Agora você é um mago da computação!!!", width/2, height/1.5 + padding*8);
  
  if (goingDown) {
    middleOfScreen += speed;
    if (middleOfScreen >= maxY) goingDown = false;
  } else {
    middleOfScreen -= speed;
    if (middleOfScreen <= minY) goingDown = true;
  }
  
  rectMode(CORNER);
  textAlign(LEFT, BASELINE);
}

void handleEndClick() {
  if (mouseX > width/2 - padding * 3 &&
        mouseX < width/2 + padding * 3 &&
        mouseY > height/2 + height/4 - 10 - padding * 2 &&
        mouseY < height/2 + height/4 - 10 + padding * 2) {
          click3.rewind();
          click3.play();
          middleOfScreen = height/2;
          state = 0;
        }else {
          click1.rewind();
          click1.play();
        }
}
