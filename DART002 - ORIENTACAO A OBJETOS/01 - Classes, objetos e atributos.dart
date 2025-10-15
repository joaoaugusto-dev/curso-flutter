void main() {
  Pessoa pessoa1 = Pessoa();

  pessoa1.nome = "Daniel";
  pessoa1.idade = 40;

  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  //============================

  Pessoa pessoa2 = Pessoa();

  pessoa2.nome = "Ciolfi";
  pessoa2.idade = 35;
  pessoa2.casado = true;

  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);
}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false; //valor padrao
}
