//Importa a biblioteca ControlP5
import controlP5.*;

//Objetos da classe ControlP5, que será utilizado para criar elementos de interface gráfica.
ControlP5 control; //aqui será o objeto que controla o tamanho do brush 
ControlP5 colorWheel;  //objeto do próprio control p5 que como o próprio nome diz, cria um color wheel que controla hue, saturation e brightness da cor do crush
ControlP5 Buttons;  //objeto para criar os botões
ControlP5 fileName;  //objeto para definir o nome do arquivo

//Objetos dos tipos específicos dos elementos da interface gráfica.
Slider brushSlider;  //slide do tamanho do brush
Button btnSalvar; //botão de salvar

Brush brush;

color corBrush; //variável para a cor do brush

int cor = color(100);
void setup() {
  size(923, 560); //tamanho da tela a ser criada 
  frameRate(300);  // especifica que os frames serão atualizados 300 vezes por segundo.
  background(255); //define a cor de fundo do protótipo, no caso, branco
  colorWheel = new ControlP5(this);
  noStroke(); //define que as formas desenhadas não vão ter borda
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
  
  //se o brush é desenhado apenas se o mouse passar dentro da área do quadrado branco, sendo possível apenas desenhar nesse espaço
  if (brush.getMousePress() == true && (mouseX >= 23 && mouseX <= 685 && mouseY >= 23 && mouseY <= height-23)) { 
    brush.exibeBrush();
  }
  stage(); //chamada da função stage para desenhá-la na tela
  
  //chamada da classe brush
  brush.atualizaPosicao(mouseX, mouseY); //chamada da função da classe brush que atualiza a posição do brush utilizando os parametros do movimento do mouse para essa atualização
  brush.atualizaTamanho(brushSlider.getValue());
  brush.atualizaCorBrush(corBrush);
  brush.previewBrush(700, 240); //chamada da função da classe brush que desenha o quadrado de pré-visualização do tamanho do brush
}

//função stage que desenha os espaços que serão e não serão possíveis a utilização do brush 
void stage() {
  noStroke();
  fill(126);
  rect(0, 0, width, 23);
  rect(0, height - 23, width, 23);
  rect(0, 0, 23, height);
  rect(685, 0, width - 685, height);
}

//função para desenhar o slider que define o tamanho do brush
void sliderBrushSize() {
  //Objeto da classe ControlP5 sendo instanciado. O this indica que queremos criar o objeto em nosso programa.
  control = new ControlP5(this);

  //O objeto do tipo slider recebe um slider criado no objeto control. Os métodos chamados por encadeamento definem atributos do slider.
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

//função para desenhar os botões que serão possíveis utilizar na tela
void Buttons() {
  //Objeto da classe ControlP5 sendo instanciado. O this indica que queremos criar o objeto em nosso programa. Nesse caso, para os botões da tela.
  Buttons = new ControlP5(this);

  Buttons.addButton("APAGAR") //aqui temos o botão de apagar o que já tinha sido desenhado na tela sendo criado
    .setValue(0)
    .setPosition(807, 240)
    .setSize(93, 93);
    
  //criação dos botões de formatos de imagem
  Buttons.addButton("JPEG") //criação do botão para ser possível salvar a imagem em jpg
    .setValue(0)
    .setPosition(700, 487)
    .setSize(50, 15);

  Buttons.addButton("PNG") //criação do botão para ser possível salvar a imagem em png
    .setValue(0)
    .setPosition(775, 487)
    .setSize(50, 15);

  Buttons.addButton("TIFF") ////criação do botão para salvar a imagem no formato tiff
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

/*Um botão não retorna um valor com o qual podemos trabalhar. Nisso, devemos utilizar a função controlEvent(), que é ativada toda vez que
um elemento da interface gráfica criada com o ControlP5 é interagido. Utilizando o método getName(), podemos saber qual elemento foi interagido,
definindo, por exemplo, uma resposta ao pressionar um botão. Nesses casos abaixo, a resposta é salvar a imagem no formato do botão pressionado*/
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
