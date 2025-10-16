void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = "Rex";
  cachorro1.idade = 3;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  Gato gato1 = Gato();
  gato1.nome = "Fluflu";
  gato1.idade = 5;
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  gato1.vidas--;
}

class Animal {
  String? nome;
  int? idade;

  void comer() {
    print("Comeu");
  }

  void dormir() {
    print("Dormiu");
  }
}

class Cachorro extends Animal {
  void latir() {
    print("Au!");
  }
}

class Gato extends Animal {
  int vidas = 7;

  void miar() {
    print("Miau!");
  }
}
