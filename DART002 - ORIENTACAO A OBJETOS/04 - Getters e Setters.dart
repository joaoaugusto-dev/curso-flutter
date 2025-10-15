void main() {
  Pessoa pessoa1 = Pessoa(nome: "Daniel", idade: 40);
  Pessoa pessoa2 = Pessoa(nome: "Ciolfi", idade: 30, casado: true);

  pessoa1.dinheiro = 100000000000;
  pessoa2.dinheiro = 300;

  print(pessoa2.dinheiro);
}

class Pessoa {
  //construtores sempre no topo
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print("Criando o $nome com idade $idade");
  }

  //atributos no meio
  String nome;
  int idade;
  bool casado;
  double? _dinheiro; //atributo privado

  //métodos por ultimo
  int aniversario() {
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

  set dinheiro(double? valor) {
    if (valor != null && valor >= 0 && valor <= 1000000) {
      print("Modificando o dinheiro do $nome");
      _dinheiro = valor;
    }
  }

  double? get dinheiro {
    print("Lendo dinheiro do $nome.");
    return _dinheiro;
  }
}
