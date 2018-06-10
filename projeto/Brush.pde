class Brush {
  //parametros da classe
  float posX;
  float posY;
  float tam;
  color corAtual;
  boolean mousePress = false;
  String Forma;
  
  //construtor do objeto
  Brush(float posX, float posY, float tam, String forma) {
    this.posX = posX;
    this.posY = posY;
    this.tam = tam;
    this.Forma = forma;
  }

  //metodo de exibicao do brush
  void exibeBrush() {
    fill(corAtual);
    noStroke();
    switch(Forma) {
      case "Quadrado":
        rectMode(CENTER);
        rect(posX, posY, tam, tam);;
        break;
      case "Elipse H":
        ellipse(posX, posY, tam, tam/2);
        break;
      case "Elipse V":
        ellipse(posX, posY, tam/2, tam);
        break;
      case "Circulo":
        ellipse(posX, posY, tam, tam);
        break;
      default:
        break;
    }
  }
  
  //metodo de atulizacao da posicao do brush
  void atualizaPosicao(float x, float y) {
    posX = x;
    posY = y;
  }
  
  //metodo que atuliza o tamanho do brush
  void atualizaTamanho(float x) {
    tam = x;
  }
  
  //metodo que atualiza a cor do brush
  void atualizaCorBrush(color cor){
    corAtual = cor;
  }

  //metodo que que gera a visualizacao previa do brush
  void previewBrush(int posX, int posY) {
    fill(255);
    stroke(0);
    rectMode(CORNER);
    rect(posX, posY, 91, 91);
    fill(corAtual);
    noStroke();
    
    switch(Forma) {
      case "Quadrado":
        rectMode(CENTER);
        rect(posX+46, posY+46, tam, tam);;
        break;
      case "Elipse H":
        ellipse(posX+46, posY+46, tam, tam/2);
        break;
      case "Elipse V":
        ellipse(posX+46, posY+46, tam/2, tam);
        break;
      case "Circulo":
        ellipse(posX+46, posY+46, tam, tam);
        break;
      default:
        break;
    }
  }
  
  //metodo que retorna a forma do Brush
  void brushForm(String forma){
    switch(forma) {
      case "Quadrado":
        this.Forma = "Quadrado";
        break;
      case "Elipse H":
        this.Forma = "Elipse H";
        break;
      case "Elipse V":
        this.Forma = "Elipse V";
        break;
      case "Circulo":
        this.Forma = "Circulo";
        break;
      default:
        break;
    }
  }
  
  //metodo que checa se o mouse foi precionado
  void mousePress() {
     if(mousePressed && (mouseButton == LEFT)) {
       mousePress = true;
     } else {
       mousePress = false;
     }
  }

  //metodo que retorna a posicao x do brush
  float getPosX() {
    return posX;
  }
  
  //metodo que retorna a posicao y do brush
  float getPosY() {
    return posY;
  }
  
  //metodo que retorna o tamanho do brush
  float getTam() {
    return tam;
  }
  
  //metodo que retorna se o mouse esta sendo pressionado
  boolean getMousePress() {
    return mousePress;
  }
}