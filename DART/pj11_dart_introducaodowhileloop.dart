void main() {
  int i = 10;

  while (i > 10) {
    // O While verifica logo no início, ou seja, se a condição não for atingida, ele nem começa.
    print("Olá!");
  }

  do {
    //Já o do-while, primeiro executa, e depois verifica.
    print("Olá 2");
  } while (i > 10);

  do {
    print("Olá 2 -- $i");
    i++;
  } while (i < 20);
}
