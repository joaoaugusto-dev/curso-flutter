void main() {
  List<String> nomes = [];

  List<String> mod = nomes
    ..add("Daniel")
    ..add("Ciolfi")
    ..remove(
      "Daniel",
    ); //Operador cascasta permite chamar varios metodos de uma vez. Basicamente ele retorna o que foi alterado apra a proxima função utilizar

  print(mod);

  List<String> funcao(List<String> lista) {
    return lista
      ..add("Daniel")
      ..add("Ciolfi")
      ..remove("Daniel");
  }
}
