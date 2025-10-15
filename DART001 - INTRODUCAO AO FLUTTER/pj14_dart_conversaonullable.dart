void main() {
  saudacoes('Daniel');

  //decarando uma variavel que pode ser nula, e nao dando nenhum valor a ela, implicitamente ela se tornará null.
  int? numero; //aqui ele vale nulo, portanto nao se pode realizar operacao

  numero = 10;

  numero++;

  print(numero);
}

//Colocando o "?" falamos para o Dart que a váriavel pode assumir o valor null
void saudacoes(String nome, {bool mostrarAgora = true, String? cliente}) {
  print("Saudações do ${nome.toUpperCase()}");

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
