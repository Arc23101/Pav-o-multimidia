color verde = #00ff00;
int sizex = 250;
int sizey = 130;
int blocoSelecionado = 0;
int page = 2;
void setup(){
size(1400, 900);
background(255);
}
void draw(){
noLoop();
textSize(20);
text("Print é uma função basica de diversas linguagens, ele serve para colocar no terminal informações para o desenvolvedor ver ", 100, 100);
line(700,0,700,900);
line(700,320,1400,320);
fill(verde);
rect(702,748,sizex,sizey);
rect(702,610,sizex,sizey);
rect(702,472,sizex,sizey);
rect(702,334,sizex,sizey);

rect(1002,748,sizex,sizey);
rect(1002,610,sizex,sizey);
rect(1002,472,sizex,sizey);
rect(1002,334,sizex,sizey);
fill(0);
textSize(50);
text("Conecte os blocos corretos", 760, 100);
textSize(20);
text("Print('Ola  mundo')", 702, 818);
}
