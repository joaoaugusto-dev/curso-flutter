void main() {
  Pessoa pessoa1 = Pessoa();

  pessoa1.nome = "Daniel";
  pessoa1.idade = 40;

  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  pessoa1.aniversario();

  print(pessoa1.idade);

  pessoa1.casar();

  print(pessoa1.casado);

  pessoa1.trocarNome("Henrique");

  print(pessoa1.nome);

  print(pessoa1.aniversario());

  //============================

  Pessoa pessoa2 = Pessoa();

  pessoa2.nome = "Ciolfi";
  pessoa2.idade = 35;
  pessoa2.casado = true;

  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);

  pessoa2.aniversario();

  print(pessoa2.idade);
}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false; //valor padrao

  int? aniversario() {
    print("Parabéns ${nome}!!");
    if (idade != null) {
      idade = idade! + 1;
    }
    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }
}
