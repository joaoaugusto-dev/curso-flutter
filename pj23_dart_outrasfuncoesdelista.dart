void main() {
  List<int> maluca = List.filled(
    100,
    8,
  ); //Preenche o mesmo valor mais de uma vez

  print(maluca);

  List<int> doida = List.generate(
    10,
    (i) => i * 10,
  ); //no generate podemos usar funcoes para alimentar uma lista

  doida.removeAt(0);

  print(doida.isEmpty); //mostra true se a lista está vazia
  print(doida.isNotEmpty); //mostra true se a lista coném dados

  print(
    doida.any((i) => i % 20 == 0),
  ); //retorna true se encontrou qualquer numero divisivel por 20
  print(doida.any((i) => i % 33 == 0)); //exemplo de um false nessa funçao

  print(
    doida.firstWhere((i) => i % 40 == 0),
  ); //procura e retorna o PRIMEIRO item que corresponde a condicao, nesse caso, divisivel de 40

  print(
    doida.lastWhere((i) => i % 40 == 0),
  ); //procura e retorna o ULTIMO item que corresponde a condicao, nesse caso, divisivel de 40

  print(
    doida.where((i) => i % 40 == 0),
  ); //procura e retorna TODOS os itens que correspondem a condicao, nesse caso, divisivel de 40

  print(
    doida.map((i) => i + 1),
  ); //Retona uma lista com todos os dados incrementados a um -> mapeia e executa funcoes
}
