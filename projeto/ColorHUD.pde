class ColorHUD {
  float H;
  float S;
  float B;
  float posH;
  float posS;
  float posB;
  color corAtual;
  color corSelecao;
  
    
  ColorHUD(float H, float S, float B, float posH, float posS, float posB, color corAtual, color corSelecao){
    this.H = H;
    this.S = S;
    this.B = B;
    this.posH = posH;
    this.posS = posS;
    this.posB = posB;
    this.corAtual = corAtual;
    this.corSelecao = corSelecao;
     
  }
  
  //void exibeSlider(){
  // slider  = new ControlP5(this);
  // slider.addSlider("Hue")
  // .setRange(1, 200)
  // .setValue(H)
  // .setNumberOfTickMarks(200)
  // .setPosition(685, 253)
  // .setSize(200, 10);
   
  // slider.addSlider("Saturation")
  // .setRange(1, 200)
  // .setValue(S)
  // .setNumberOfTickMarks(200)
  // .setPosition(685, 273)
  // .setSize(200, 10);
   
  // slider.addSlider("Brightness")
  // .setRange(1, 200)
  // .setValue(B)
  // .setNumberOfTickMarks(200)
  // .setPosition(685, 293)
  // .setSize(200, 10);
    
  //}
  
  float getHue(){
    return H;
  }
  float getSaturation(){
    return S;
  }
  float getBrightness(){
    return B;
  }
  float getPosHue(){
    return posH;
  }
  float getPosSaturation(){
    return posS;
  }
  float getPosBrightness(){
    return posB;
  }
  color getCorAtual(){
    return corAtual;
  }
  color getCorSelecao(){
    return corSelecao;
  }

}
