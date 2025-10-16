import 'dart:math';

void main() {
  Pessoa pessoa1 = Pessoa(nome: "Daniel", idade: 40);
  pessoa1.cpf = "456.123.789-06";
  print(pessoa1.cpf);

  print(pessoa1.temperatura);
  print(pessoa1.temperatura);
  print(pessoa1.temperatura);

  print(pessoa1.temperatura2);
  print(pessoa1.temperatura2);
  print(pessoa1.temperatura2);
}

class Pessoa {
  //construtores sempre no topo
  Pessoa({required this.nome, required this.idade});

  //atributos no meio
  String nome;
  int idade;
  late String cpf; //declara como configurar "depois", e se não for, terá crash

  late double temperatura = medirTemperatura(); //executa só a primeira vez

  double get temperatura2 => medirTemperatura(); //executa toda vez

  double medirTemperatura() {
    print("Mediu a temperatura");
    return double.parse((25 + Random().nextDouble() * 15).toStringAsFixed(1));
  }
}
