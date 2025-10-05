void main() {
  double nota = 4;
  String mensagem = nota >= 5 ? "Aprovado!" : "Reprovado!";
  int numero = nota == 5 && nota != 7 ? 10 : 2;
  //se nota == 5 e nota diferente de 7 o valor é 10, senão, é 2

  //Os ternários são como if's em uma linha

  print('$mensagem, $numero');
}
