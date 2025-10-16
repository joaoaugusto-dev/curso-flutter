void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = "Rex";
  cachorro1.idade = 3;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato();
  gato1.nome = "Fluflu";
  gato1.idade = 5;
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
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }
}

//  Animal funcao() {
//    return Cachorro();
//  }

class Animal /*extends Object*/ {
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
  void latir() {
    print("Au!");
  }

  @override
  void dormir() {
    print("Dormiu roncando muito!!");
  }

  @override //trocando a "resposta" ao chamar só o objeto
  String toString() {
    return "Cachorro: Nome: $nome -- Idade: $idade";
  }
}

class Gato extends Animal {
  int vidas = 7;

  void miar() {
    print("Miau!");
  }

  @override //trocando a "resposta" ao chamar só o objeto
  String toString() {
    return "Gato: Nome: $nome -- Idade: $idade";
  }
}
