class InfoFile {
  String title;
  String[] informacoes;
  PrintWriter output;
  int dia;
  int mes;
  int ano;
  int hora;
  int minuto;
  int segundo;
  
  InfoFile() {
    informacoes = new String[4];
  }
  
  void saveCopyright(String title) {
    output = createWriter(title + ".txt");
    dia = day();
    mes = month();
    ano = year();
    hora = hour();
    minuto = minute();
    segundo = second();
    /*
    informacoes[0] = title;
    informacoes[1] = dia + "/" + mes + "/" + ano;
    informacoes[2] = hora + ":" + minuto + ":" + segundo;
    informacoes[3] = "Essa imagem foi salva pelo programa feito na cadeira de Programação II no curso de Sistemas e Mídias Digitais (SMD) por Gabriely Rodrigues e Henrique Artur";
    */
    
    output.println(title);
    output.println(dia + "/" + mes + "/" + ano);
    output.println(hora + ":" + minuto + ":" + segundo);
    output.println("Essa imagem foi salva pelo programa feito na cadeira de Programação II no curso de Sistemas e Mídias Digitais (SMD) por Gabriely Rodrigues e Henrique Artur");
    
    output.flush();
    output.close();
    println(dia, mes, ano, hora, minuto, segundo);
    saveStrings(title + ".txt", informacoes);
  }
  
}
