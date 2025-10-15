void main() {
  Pessoa.alturaPadrao = 1.80;

  Pessoa pessoa1 = Pessoa(nome: "Daniel", idade: 40);
  pessoa1.nome;
  pessoa1.idade;
  pessoa1.comer();

  print(pessoa1.altura);

  //pessoa1.atributoStatic; Não funciona, pois o static pertence a classe, e não ao objeto.
  Pessoa.atributoStatic = "Daniel";

  print(Pessoa.atributoStatic);

  print(Pessoa.metodoStatic());
}

class Pessoa {
  //construtores sempre no topo
  Pessoa({required this.nome, required this.idade});

  //atributos no meio
  String nome =
      atributoStatic; //Pode usar static de classe em objeto, mas de objeto em classe não.
  int idade;
  double altura = alturaPadrao;

  void comer() {
    print("Comendo...");
  }

  static String atributoStatic = "ABC";

  static String metodoStatic() {
    //print(nome); -- Não funciona por que não é um static, então pertence a um objeto, e não a classe.
    return "Olá, Mundo! $atributoStatic";
  }

  static double alturaPadrao = 0;
}
