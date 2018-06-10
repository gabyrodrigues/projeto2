class Brush {
  float posX;
  float posY;
  float tam;
  color corAtual;
  boolean mousePress = false;
  
  Brush(float posX, float posY, float tam) {
    this.posX = posX;
    this.posY = posY;
    this.tam = tam;
  }

  void exibeBrush() {
    fill(corAtual);
    noStroke();
    ellipse(posX, posY, tam, tam);
  }

  void atualizaPosicao(float x, float y) {
    posX = x;
    posY = y;
  }

  void atualizaTamanho(float x) {
    tam = x;
  }
  
  void atualizaCorBrush(color cor){
    corAtual = cor;
  }

  void previewBrush(int posX, int posY) {
    fill(255);
    stroke(0);
    rect(posX, posY, 91, 91);
    fill(corAtual);
    noStroke();
    ellipse(posX+46, posY+46, tam, tam);
  }
  
  void mousePress() {
     if(mousePressed && (mouseButton == LEFT)) {
       mousePress = true;
     } else {
       mousePress = false;
     }
  }

  float getPosX() {
    return posX;
  }
  float getPosY() {
    return posY;
  }
  float getTam() {
    return tam;
  }
  boolean getMousePress() {
    return mousePress;
  }
}