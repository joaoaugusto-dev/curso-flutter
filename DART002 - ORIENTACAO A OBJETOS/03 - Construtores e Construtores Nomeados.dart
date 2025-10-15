void main() {
  Pessoa pessoa1 = Pessoa.casada(nome: "Daniel", idade: 40);

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
}

class Pessoa {
  //construtores sempre no topo
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print("Criando o $nome com idade $idade");
  }

  Pessoa.casada({required this.nome, required this.idade, this.casado = true});

  Pessoa.solteira({
    required this.nome,
    required this.idade,
    this.casado = false,
  });

  //atributos no meio
  String nome;
  int idade;
  bool casado; //valor padrao

  //métodos por ultimo
  int? aniversario() {
    print("Parabéns ${nome}!!");
    idade++;
    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }
}
