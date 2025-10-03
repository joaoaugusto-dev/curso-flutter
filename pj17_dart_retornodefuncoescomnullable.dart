void main() {
  String nome = funcao(12) ?? "Não informado";
  print(nome.toUpperCase());
}

//String funcao() => "Daniel".toUpperCase(); -> quando uma funcao e nmuito pequena, pode ser representada em uma linha

String? funcao(int x) {
  if (x > 10) {
    return "Olá, mundo!";
  }
}
