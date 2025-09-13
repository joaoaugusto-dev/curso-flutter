void main() {
  double n1 = 10.5;
  double n2 = 47.9;
  int n3 = 3;

  double r1 = (n1 + n2 - 15) * n3 * 10;
  print(r1);

  n1 += 10; // substitui o n1 = n1 + 10;, sendo mais simples e eficiente.
  print(n1);

  n3++; //substitui o n3 = n3 + 1;
  n3--; //substitui o n3 = n3 - 1;
  print(n3);

  int r2 = n3 % 5; //o operarador "%" mostra o resto de uma divisão
  print(r2);
}
