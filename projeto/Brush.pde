class Brush {
  float posX;
  float posY;
  float tam;

  Brush(float posX, float posY, float tam) {
    this.posX = posX;
    this.posY = posY;
    this.tam = tam;
  }

  void exibeBrush() {
    ellipse(posX, posY, tam, tam);
  }

  void atualizaPosicao() {
    posX = mouseX;
    posY = mouseY;
  }

  void atualizaTamanho() {
    tam = 5;
    //tamanho maximo 91
    //tamanho minimo 5;
    //slider(85 de range);
  }

  void previewBrush() {
    fill(0, 0, 100);
    stroke(0);
    rect(764, 375, 95, 95);
    ellipse(811, 422, 5, 5);
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
