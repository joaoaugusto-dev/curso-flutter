//?

void main() {
  Pessoa pessoa1 = Pessoa(nome: "Daniel", idade: 40);
  print(pessoa1.nome);
  print(pessoa1.idade);

  Pessoa? pessoa2;
  print(pessoa2?.nome.toUpperCase());
  print(pessoa2?.idade);
  print(pessoa2?.cidade?.toUpperCase()); //se for null, ignora.
  pessoa2?.comer();
}

class Pessoa {
  //construtores sempre no topo
  Pessoa({required this.nome, required this.idade});

  //atributos no meio
  String nome;
  int idade;

  String? cidade;

  void comer() => print("Comendo...");
}
