//classe que guarda guarda as informacoes do arquivo salvo
class InfoFile {
  String title;
  String[] informacoes;
  int dia;
  int mes;
  int ano;
  int hora;
  int minuto;
  int segundo;
  
  //Construtor
  InfoFile() {
    //Aloca 4 espacos para o vetor de string que vai receber as infomacoes
    informacoes = new String[4];
  }
  
  //metodo que pega as informacoes de data, hora, nome do aquivo e copyright, alem de criar o arquivo .txt
  void saveCopyright(String title) {
    //as funcoes day(), hour() e assim por diante pegam informacoes do relogido do pc
    dia = day();
    mes = month();
    ano = year();
    hora = hour();
    minuto = minute();
    segundo = second();
    
    //guarda a informação do nome do arquivo
    informacoes[0] = title;
<<<<<<< HEAD
    //guarda a informação da data em que arquivo foi salvo
    informacoes[1] = "Data: " + dia + "/" + mes + "/" + ano;
    //guarda a informação da hora em que arquivo foi salvo
    informacoes[2] = "Hora: " + hora + ":" + minuto + ":" + segundo;
    //guarda a informação do copyright do arquivo
    informacoes[3] = "Essa imagem foi salva pelo programa feito na cadeira de Progamação II no curso de Sistemas e Mídias Digitas (SMD) por Gabriely Rodrigues e Henrique Artur";
=======
    informacoes[1] = dia + "/" + mes + "/" + ano;
    informacoes[2] = hora + ":" + minuto + ":" + segundo;
    informacoes[3] = "Essa imagem foi salva pelo programa feito na cadeira de Programação II no curso de Sistemas e Mídias Digitais (SMD) por Gabriely Rodrigues e Henrique Artur";
    */
    
    output.println(title);
    output.println(dia + "/" + mes + "/" + ano);
    output.println(hora + ":" + minuto + ":" + segundo);
    output.println("Essa imagem foi salva pelo programa feito na cadeira de Programação II no curso de Sistemas e Mídias Digitais (SMD) por Gabriely Rodrigues e Henrique Artur");
>>>>>>> 168bf8fd1e7a401aca2406d50256272e4d676f62
    
    //salva o .txt
    saveStrings(title + ".txt", informacoes);
  }
  
}
