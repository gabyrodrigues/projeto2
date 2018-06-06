class ColorHUD {
  float H;
  float S;
  float B;
  float posH;
  float posS;
  float posB;
  color corAtual;
  color corSelecao;
  //Objeto da classe ControlP5, que será utilizado para criar elementos de interface gráfica.
  ControlP5 slider;
  ControlP5 btn;
  
    
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
  // slider = new ControlP5();
  // slider.addSlider("Hue")
  // .setRange(0, 199)
  // .setValue(H)
  // .setNumberOfTickMarks(200)
  // .setPosition(685, 253)
  // .setSize(200, 10);
     
  // slider.addSlider("Saturation")
  // .setRange(0, 199)
  // .setValue(S)
  // .setNumberOfTickMarks(200)
  // .setPosition(685, 273)
  // .setSize(200, 10);
   
  // slider.addSlider("Brightness")
  // .setRange(0, 99)
  // .setValue(B)
  // .setNumberOfTickMarks(100)
  // .setPosition(685, 293)
  // .setSize(200, 10);
  //}  
  void exibeCor(){
  for(int i = 0; i < 200; i++){
    for(int j = 0; j < 200; j++){
      stroke(0+j, 0+i, B);
      point(685+j, 23+i);  
    }
  }
    for(int i = 0; i < 200; i++){
     for(int j = 0; j < 20; j++){

       if(i % 2 == 0){
       stroke(0, 0, i);
     
       }else{
         stroke(0, 0, i-1);
       }  
       point(900+j, 223-i);
     }
    }
       
  }
  
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
