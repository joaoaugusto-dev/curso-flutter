void main() {
  int n = 10;

  //booleana é true ou false, como uma alternativa
  //"==" retorna true, se a afirmação é verdadeira
  bool r1 = n == 15;
  print(r1);

  //"!=" retorna true, se a afirmação é falsa
  bool r2 = n != 13;
  print(r2);

  int n2 = 14;
  bool r3 = n == n2;
  print(r3);

  bool r4 = n > n2;
  print(r4);

  bool r5 = n < n2;
  print(r5);

  bool r6 = n >= n2;
  print(r6);

  bool r7 = n <= n2;
  print(r7);

  //por fim temos as operacoes:
  // ==
  // !=
  // >
  // <
  // >=
  // <=

  //estudo das condicoes e operadores
  // && = "E"
  // Só quando todos são true, ele é definido como true
  bool r8 = 10 <= 20 && 20 >= 10;
  print(r8);

  //|| = "OU"
  // Quando um é true, ele já considera como true
  bool r9 = 10 == 20 || 10 == 5 || 15 == 10;
  print(r9);
}
