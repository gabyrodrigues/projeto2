//Importa a biblioteca ControlP5
import controlP5.*;

ControlP5 control;
ControlP5 colorWheel;
ControlP5 Buttons;
ControlP5 fileName;

Slider brushSlider;
Button btnSalvar;

Brush brush;

color corBrush;
float slideBrush;
int cor = color(100);
void setup() {
  size(923, 560);
  frameRate(300);
  background(255);
  colorWheel = new ControlP5(this);
  noStroke();
  brush = new Brush(mouseX, mouseY, 5);
  colorWheel.addColorWheel("cor", 700, 23, 200 )
    .setRGB(color(128, 0, 255));
  sliderBrushSize();
  Buttons();
  fileNameBox();
}
void draw() {
  //Através do método getValue(), pegamos os valores de cada elemento da interface gráfica, que são atribuídos a variáveis criadas anteriormente.
  corBrush = colorWheel.get(ColorWheel.class, "cor").getRGB();
  colorWheel.get(ColorWheel.class, "cor").getRGB();

  Cursor();
  brush.mousePress();
  if (brush.getMousePress() == true && (mouseX >= 23 && mouseX <= 685 && mouseY >= 23 && mouseY <= height-23)) {
    brush.exibeBrush();
  }
  stage();

  brush.atualizaPosicao(mouseX, mouseY);
  brush.atualizaTamanho(brushSlider.getValue());
  brush.atualizaCorBrush(corBrush);
  brush.previewBrush(700, 240);
}

void stage() {
  noStroke();
  fill(126);
  rect(0, 0, width, 23);
  rect(0, height - 23, width, 23);
  rect(0, 0, 23, height);
  rect(685, 0, width - 685, height);
}

void sliderBrushSize() {
  //Objeto da classe ControlP5 sendo instanciado. O this indica que queremos criar o objeto em nosso programa.
  control = new ControlP5(this);

  //O objeto do tipo slider recebe um slider criado no objeto cp5. Os métodos chamados por encadeamento definem atributos do slider.
  brushSlider = control.addSlider("Tamanho")
    .setRange(5, 91)
    .setValue(5)
    .setPosition(700, 340)
    .setSize(160, 13);
}

void Cursor() {
  if (mouseX >= 23 && mouseX <= 685 && mouseY >= 23 && mouseY <= height-23) {
    //noCursor();
    cursor();
  } else {
    cursor();
  }
}

void Buttons() {
  Buttons = new ControlP5(this);

  Buttons.addButton("APAGAR")
    .setValue(0)
    .setPosition(807, 240)
    .setSize(93, 93);

  Buttons.addButton("JPEG")
    .setValue(0)
    .setPosition(700, 487)
    .setSize(50, 15);

  Buttons.addButton("PNG")
    .setValue(0)
    .setPosition(775, 487)
    .setSize(50, 15);

  Buttons.addButton("TIFF")
    .setValue(0)
    .setPosition(850, 487)
    .setSize(50, 15);
}

void fileNameBox() {
  fileName = new ControlP5(this);
  fileName.addTextfield("Nome do Arquivo")
    .setPosition(700, 507)
    .setSize(200, 20)
    .setAutoClear(false);
}

void controlEvent(ControlEvent event) {
  if (event.isController()) {
    if (event.getController().getName() == "APAGAR") {
      background(255);
    }

    if (event.getController().getName() == "JPEG") {
      PImage img = get(23, 23, 662, 514);
      img.save(fileName.get(Textfield.class,"Nome do Arquivo").getText()+".jpeg");
    }
    
    if (event.getController().getName() == "PNG") {
      PImage img = get(23, 23, 662, 514);
      img.save(fileName.get(Textfield.class,"Nome do Arquivo").getText()+".png");
    }
    
    if (event.getController().getName() == "TIFF") {
      PImage img = get(23, 23, 662, 514);
      img.save(fileName.get(Textfield.class,"Nome do Arquivo").getText()+".tiff");
    }
  }
}