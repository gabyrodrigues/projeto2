//Importa a biblioteca ControlP5
import controlP5.*;

float H = 0;
float S = 0;
float B = 100;
//Objeto da classe ControlP5, que será utilizado para criar elementos de interface gráfica.
ControlP5 slider;
ControlP5 btn;

void setup(){
  size(960,560);
  colorMode(HSB, 200, 200, 100);
}
void draw(){
   stage();
   exibeCor();
}
void stage(){
  fill(50);
  noStroke();
  PShape s = createShape();
  s.beginShape();
  s.vertex(0, 0);
  s.vertex(960, 0);
  s.vertex(960, 560);
  s.vertex(0, 560);
  
  s.beginContour();
  s.vertex(23, 23);
  s.vertex(619, 23);
  s.vertex(619, 538);
  s.vertex(23, 538);
  s.endContour();
  
  s.endShape();
}
void exibeCor(){
  for(int i = 0; i < 200; i++){
    for(int j = 0; j < 200; j++){
      stroke(0+j, 0+i, B);
      point(685+j, 23+i);  
    }
  }
  for(int i = 0; i < 200; i++){
   for(int j = 0; j < 20; j++){
     stroke(i);
     point(900+j, 23+i);
   }
  }
     
}
