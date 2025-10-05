void main() {
  List<String> nomes = [
    'Daniel',
    'Ciolfi',
    'Henrique',
    'Giovanna',
    'Marcos',
    'Eliane',
    'Mariane',
  ];

  print(nomes);

  //for (int i = 0; i < nomes.length; i++) {
  //  print(nomes[i].toUpperCase());
  //}

  //for (String nome in nomes) {
  //  print(nome.toUpperCase());
  //}

  //Sendo essa a mais legível de todas
  //for (String nome in nomes.sublist(2, 4)) {
  //  //o sublist diz que começa no indice 2, e termina no 4 (o ultimo entao seria o 3)
  //  print(nome.toUpperCase());
  //}

  nomes.sublist(2).forEach((nome) {
    print(nome.toUpperCase());
  });
}
