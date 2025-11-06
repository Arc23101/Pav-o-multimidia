// main screen

// vars
int state = 0; // menu = 0, game = 1, end = 2

// GUI vars
int padding = 24;
PFont f;
color blue1 = #97BDDE;
color blue2 = #79A6CC;
color blue3 = #4C8BC2;
color darkBlue = #376E9D;
color yellow = #FFCC3C;

// media
PImage img;


void setup() {
  size(1720, 980);
  pixelDensity(1);
  
  // images
  img = loadImage("image.png");
  
  // font
  f = createFont("Pixellari.ttf", 32);
  textFont(f);
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
