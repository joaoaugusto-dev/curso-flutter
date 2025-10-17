void main() {
  Movel movel1 = Pessoa();
  movel1
    ..frente()
    ..esquerda()
    ..direita();

  Vendivel vendivel1 = Geladeira();
  print(vendivel1.preco());
}

class Geladeira implements Vendivel {
  @override
  double preco() {
    return 1000;
  }
}

class Pessoa implements Movel {
  String? nome;

  @override
  void direita() {}

  @override
  void esquerda() {}

  @override
  void frente() {}
}

class Carro implements Movel, Vendivel {
  @override
  void direita() {}

  @override
  void esquerda() {}

  @override
  void frente() {}

  @override
  double preco() {
    return 50000;
  }
}

abstract class Movel {
  void frente();
  void esquerda();
  void direita();
}

abstract class Vendivel {
  double preco();
}
