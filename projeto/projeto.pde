//Importa a biblioteca ControlP5
import controlP5.*;

ColorHUD hud;
Brush brush;
float H = 0;
float S = 0;
float B = 100;


void setup(){
  size(960,560);
  colorMode(HSB, 200, 200, 100);
  hud = new ColorHUD(0, 0, 100, 685, 23, 223, color(0, 0, 100), color(0, 0, 100));
  brush = new Brush(mouseX, mouseY, 5);
}
void draw(){
   stage();
   hud.exibeCor();
   brush.exibeBrush(mouseX, mouseY);
   brush.previewBrush();
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
