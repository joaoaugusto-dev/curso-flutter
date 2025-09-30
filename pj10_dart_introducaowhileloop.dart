void main() {
  int i = 1;

  while (i <= 100) {
    print(i);
    i++;
  }

  print("Terminou");

  //----------------------------------------------------------------------------

  int i2 = 100;

  while (i2 >= 0) {
    print(i2);
    i2--;
  }

  print("Terminou");

  //----------------------------------------------------------------------------

  int i3 = 100;
  int j = 75;

  while (i3 >= 0 && j > -200) {
    print(i3);
    print(j);
    i3--;
    j -= 10;
  }

  print("Terminou");

  //----------------------------------------------------------------------------

  int i4 = 100;
  int j1 = 75;

  while (i4 >= 0 || j1 > -200) {
    print(i4);
    print(j1);
    i4--;
    j1 -= 10;
  }

  print("Terminou");

  // Teste realizado fora dos exercícios da aula, mais por curiosidade, por fim, acabei fazendo um programa que encontra a média aritmética
  /*
  int n1 = 225;
  int n2 = 999;

  print("$n1 -- $n2");
  while (n1 != n2) {
    n1++;
    n2--;
    print("$n1 -- $n2");
  }
  */
}
