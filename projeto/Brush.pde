class Brush {
  float posX;
  float posY;
  float tam;
  color corAtual;
  
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

  void previewBrush() {
    fill(255);
    stroke(0);
    rect(764, 375, 95, 95);
    ellipse(811, 422, tam, tam);
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
}
