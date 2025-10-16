//?

import 'dart:async';

void main() {
  Pessoa pessoa1 = Pessoa(nome: "Daniel", idade: 40);
  print(pessoa1.nome);
  print(pessoa1.idade);

  Pessoa pessoa2 = Pessoa(nome: "Ciolfi", idade: 25);
  print(pessoa1.nome);
  print(pessoa1.idade);

  int numero = 10;
  funcao(numero);
  print(numero);

  print(pessoa1.idade);

  /*Pessoa pessoa2 = pessoa1;
  print(pessoa2.nome);
  print(pessoa2.idade);

  pessoa1.nome = "Henrique";
  print(pessoa2.nome); //eles se tornam a mesma coisa, como uma mesma gaveta
  //O que um mudar, o outro muda junto.*/
}

void funcao(int x) {
  //quando se modifica algo na funcao, a modificacao so se mantem dentro dela
  x = 20;
  print(x);
}

class Pessoa {
  //construtores sempre no topo
  Pessoa({required this.nome, required this.idade});

  //atributos no meio
  String nome;
  int idade;
}
