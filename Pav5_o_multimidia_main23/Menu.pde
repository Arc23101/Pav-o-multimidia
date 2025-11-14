// menu screen

boolean upDown = false;

void drawMenu() {
  background(blue1);

  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  image(py, width/2 - width/5, middleOfScreen, height/5, height/5);
  image(py, width/2 + width/5, middleOfScreen, height/5, height/5);
  
  textSize(120);
  fill(darkBlue);
  text("Pylingo", width/2, height/2);
  
  fill(yellow);
  text("Pylingo", width/2, height/2 - 10);

  noStroke();
  fill(darkBlue);
  rect(width/2, height/1.5, padding * 6, padding * 3);
  
  fill(yellow);
  rect(width/2, height/1.5 - 10, padding * 6, padding * 3);

  fill(darkBlue);
  textSize(24);
  text("Começar", width/2, height/1.5 - 10);
  
  textSize(20);
  fill(#ffffff);
  text("Como jogar:", width/2, height/1.5 + padding*3);
  text("Selecione os pedaços de código que achar correto no último quadrante.", width/2, height/1.5 + padding*4);
  text("Clique no penúltimo quadrante para remover o que for necessário e poder tentar novamente.", width/2, height/1.5 + padding*5);
  
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


void handleMenuClick() {

  float btnCenterX = width/2;
  float btnCenterY = height/1.5 - 10;
  float btnW = padding * 6;
  float btnH = padding * 3;

  float left   = btnCenterX - btnW/2;
  float right  = btnCenterX + btnW/2;
  float top    = btnCenterY - btnH/2;
  float bottom = btnCenterY + btnH/2;

  if (mouseX > left && mouseX < right &&
      mouseY > top && mouseY < bottom) {

    click3.rewind();
    click3.play();
    middleOfScreen = height/2;
    state = 1;

  } else {
    click1.rewind();
    click1.play();
  }
}
