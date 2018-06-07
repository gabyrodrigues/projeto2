//Importa a biblioteca ControlP5
import controlP5.*;

ControlP5 control;
ControlP5 colorWheel;

Slider brushSlider;
Button btnSalvar;

Brush brush;

color corBrush;
float slideBrush;
int cor = color(100);
void setup(){
  size(960,560);
  frameRate(120);
  colorWheel = new ControlP5(this);
  noStroke();
  brush = new Brush(mouseX, mouseY, 5);
  colorWheel.addColorWheel("cor", 700, 10, 200 ).setRGB(color(128,0,255));
  sliderBrushSize();
}
void draw(){
   //Através do método getValue(), pegamos os valores de cada elemento da interface gráfica, que são atribuídos a variáveis criadas anteriormente.
   //slideBrush = brushSlider.getValue();
   corBrush = colorWheel.get(ColorWheel.class,"cor").getRGB();
   brush.exibeBrush();
   brush.atualizaPosicao(mouseX, mouseY);
   brush.atualizaTamanho(brushSlider.getValue());
   brush.atualizaCorBrush(corBrush);
   brush.previewBrush();
   colorWheel.get(ColorWheel.class,"cor").getRGB();
   
}
void stage(){
  
}

void sliderBrushSize(){
  //Objeto da classe ControlP5 sendo instanciado. O this indica que queremos criar o objeto em nosso programa.
  control = new ControlP5(this);
  
  //O objeto do tipo slider recebe um slider criado no objeto cp5. Os métodos chamados por encadeamento definem atributos do slider.
  brushSlider = control.addSlider("tamanho")
    .setRange(5, 91)
    .setValue(5)
    .setPosition(700, 250)
    .setSize(200, 20);
}
