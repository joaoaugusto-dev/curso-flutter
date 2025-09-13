void main() {
  saudacoes('Daniel', cliente: "Mari");

  //decarando uma variavel que pode ser nula, e nao dando nenhum valor a ela, implicitamente ela se tornará null.
  int? numero;
}

//Colocando o "?" falamos para o Dart que a váriavel pode assumir o valor null
void saudacoes(String nome, {bool mostrarAgora = true, String? cliente}) {
  print("Saudações do $nome");

  if (cliente != null) {
    print("Seja bem-vindo(a), $cliente!");
  }

  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
