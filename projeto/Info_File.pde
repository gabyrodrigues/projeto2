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
    //guarda a informação da data em que arquivo foi salvo
    informacoes[1] = "Data: " + dia + "/" + mes + "/" + ano;
    //guarda a informação da hora em que arquivo foi salvo
    informacoes[2] = "Hora: " + hora + ":" + minuto + ":" + segundo;
    //guarda a informação do copyright do arquivo
    informacoes[3] = "Essa imagem foi salva pelo programa feito na cadeira de Progamação II no curso de Sistemas e Mídias Digitas (SMD) por Gabriely Rodrigues e Henrique Artur";
    
    //salva o .txt
    saveStrings(title + ".txt", informacoes);
  }
  
}