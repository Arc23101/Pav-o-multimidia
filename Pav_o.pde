color verde = #00ff00;
int sizex = 200;
int sizey = 150;
int blocoSelecionado = 0;
void setup(){
size(1400, 900);
background(255);
}
void draw(){
noLoop();
textSize(20);
text("Print é uma função basica de diversas linguagens, ele serve para colocar no terminal informações para o desenvolvedor ver ", 1000, 1000);
line(700,0,700,900);
fill(verde);
rect(702,748,sizex,sizey);
fill(0);
textSize(50);
text("Conecte os blocos corretos", 760, 100);
textSize(20);
text("Print('Ola  mundo')", 702, 818);
}
