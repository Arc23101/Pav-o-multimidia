// main screen

// vars
int state = 0; // menu = 0, game = 1, end = 2

// GUI vars
int padding = 30;

// media
PImage img, calculadora, print, ints;


void setup() {
  size(1720, 980);
  pixelDensity(1);
  
  // images
  img = loadImage("image.png");
  calculadora = loadImage("calculadora.png");
  print = loadImage("print.png");
  ints = loadImage("ints.png");
  
}

void draw() {
  background(0);

  switch(state) {
    case 0: drawMenu(); break;
    case 1: drawGame(); break;
    case 2: drawEnd(); break;
  }
}

void mousePressed() {
  if(state == 0) handleMenuClick();
  else if(state == 1) handleGameClick();
  else if(state == 2) handleEndClick();
}
