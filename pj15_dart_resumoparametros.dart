void main() {
  saudacoes('Daniel');

  //decarando uma variavel que pode ser nula, e nao dando nenhum valor a ela, implicitamente ela se tornará null.
  int? numero; //aqui ele vale nulo, portanto nao se pode realizar operacao

  numero = 10;

  numero++;

  print(numero);

  funcao("Olá!", null, c: "123", d: "Teste", e: null);
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

void funcao(
  String a, //obrigatório e não-nulo
  String? b, { //obtigatório, mas permitido ser null
  String? c = "abc", //variavel opcional/nomeada, e pode ser null
  required String d, //obrigatório, e não pode ser null
  required String? e, //obrigatório, mas pode ser null
  String f = "qwe", //nomeada, não pode ser null, já vem com valor padrão
}) {}
