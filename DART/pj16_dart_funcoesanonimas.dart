void main() {
  saudacoes('Daniel', corpo: funcao);
}

void funcao(i) {
  //ele ja sabe que o i é int por causa da declaracao de atributo
  for (int j = 0; j < i; j++) {
    print("Olá $j");
  }
}

//Colocando o "?" falamos para o Dart que a váriavel pode assumir o valor null
void saudacoes(
  String nome, {
  bool mostrarAgora = true,
  String? cliente,
  required Function(int) corpo,
}) {
  print("Saudações do ${nome.toUpperCase()}");

  corpo(5);

  String c =
      cliente ??
      'Não informado'; //"??" se chama null-aware, onde se o valor for nulo, ele usa um valor padrão

  print("Seja bem-vindo(a), ${c.toUpperCase()}!");

  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
