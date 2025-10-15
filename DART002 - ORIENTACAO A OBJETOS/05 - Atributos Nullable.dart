void main() {
  Pessoa pessoa1 = Pessoa(nome: "Daniel", idade: 40);
  Pessoa pessoa2 = Pessoa(nome: "Ciolfi", idade: 30, casado: true);

  pessoa1.dinheiro = 100000000000;
  pessoa2.dinheiro = 300;

  if (pessoa2.dinheiro > 150) {
    print(pessoa2.dinheiro);
  }

  String? nome = pessoa1.nomeSecreto;
  if (nome != null) {
    print(nome.toUpperCase());
  }

  if (pessoa1.atributo != null) {
    print(pessoa1.atributo!.toUpperCase());
  } else {
    print("Olá".toUpperCase());
  }

  print(pessoa1.nomeSecreto);
  print(pessoa1.nomeSecreto);
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

  double _dinheiro = 0; //atributo privado

  String? _nomeSecreto = "Flutter";

  String? atributo;

  get nomeSecreto {
    String? nome = _nomeSecreto;
    if (nome != null) {
      _nomeSecreto = null;
      return nome;
    } else {
      null;
    }
  }

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

  set dinheiro(double valor) {
    if (valor >= 0 && valor <= 1000000) {
      print("Modificando o dinheiro do $nome");
      _dinheiro = valor;
    }
  }

  double get dinheiro {
    print("Lendo dinheiro do $nome.");
    _dinheiro -= 100;
    return _dinheiro;
  }
}
