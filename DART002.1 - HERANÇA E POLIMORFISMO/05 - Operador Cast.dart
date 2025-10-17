void main() {
  Cachorro cachorro1 = Cachorro("Rex", 3);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato("Fluflu", 5);
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  gato1.vidas--;

  print(gato1);
  Object object = Object();
  object.hashCode; //gerado, e define unicamente um objeto
  object.runtimeType; //indica qual o tipo desse objeto
  //object.noSuchMethod(action); quase nao usa, levata uma exception quando é usado

  int x = 10;
  10.hashCode; //todo objeto por tras dos panos é um Object

  List<Cachorro> cachorros = [];
  List<Gato> gatos = [];

  List<Animal> animais = [];

  animais
    ..add(cachorro1)
    ..add(gato1);

  Animal animal1 = animais.first;
  //Animal animal1 = funcao();

  if (animal1 is Cachorro) {
    //solucao recomendada
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }

  //Cachorro animal2 = funcao() as Cachorro; -- só usa se tiver certeza, na verdade, não é uma boa pratica
  //animal2.latir();

  Animal animal3 = funcao(); //solucao recomendada
  if (animal3 is Cachorro) {
    animal3.latir();
  }
}

Animal funcao() {
  return Gato("Miauau", 5);
}

class Animal /*extends Object*/ {
  Animal(this.nome, this.idade);
  //é o que acontece no fundo
  String? nome;
  int? idade;

  void comer() {
    print("Comeu");
  }

  void dormir() {
    print("Dormiu");
  }

  //Aqui estamos dando override no Object
  @override //trocando a "resposta" ao chamar só o objeto
  String toString() {
    return "Nome: $nome -- Idade: $idade";
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade) {
    print("Criou o cachorro: $nome");
  }
  void latir() {
    print("Au!");
    dormir();
  }

  @override
  void dormir() {
    super.dormir();
    print("Dormiu roncando muito!!");
  }

  @override //trocando a "resposta" ao chamar só o objeto
  String toString() {
    return "Cachorro: Nome: $nome -- Idade: $idade";
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade) {
    print("Criou o gato: $nome");
  }
  int vidas = 7;

  void miar() {
    print("Miau!");
    dormir();
  }

  @override //trocando a "resposta" ao chamar só o objeto
  String toString() {
    return "Gato: Nome: $nome -- Idade: $idade";
  }
}
