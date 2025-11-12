// main screen

// vars
int state = 0; // menu = 0, game = 1, end = 2

// GUI vars
int padding = 24;
PFont f;
color blue1 = #97BDDE;
color blue2 = #79A6CC;
color blue3 = #689BC6;
color darkBlue = #376E9D;
color yellow = #FFCC3C;

// media
PImage img, confetti, pu1, pu2, pu3, pu4, pu5, pu6, pu7, pu8, pu9, pu10, pu11, pu12;

import processing.sound.*;
SoundFile wrongSound;


void setup() {
  size(1720, 980);
  pixelDensity(1);
  
  // images
  pu1 = loadImage("pu1.png");
  pu2 = loadImage("pu2.png");
  pu3 = loadImage("pu3.png");
  pu4 = loadImage("pu4.png");
  pu5 = loadImage("pu5.png");
  pu6 = loadImage("pu6.png");
  pu7 = loadImage("pu7.png");
  pu8 = loadImage("pu8.png");
  pu9 = loadImage("pu9.png");
  pu10 = loadImage("pu10.png");
  pu11 = loadImage("pu11.png");
  pu12 = loadImage("pu12.png");
  confetti = loadImage("confetti.png");
  
  // font
  f = createFont("Pixellari.ttf", 32);
  textFont(f);
  
  imageMode(CENTER);
  
  // sound
  wrongSound = new SoundFile(this, "soundE.mp3");
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
