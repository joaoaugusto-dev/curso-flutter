void main() {
  const String nome = "Daniel";
  //nome = "Ciolfi"; -> Erro, pois nao pode ser alterado

  const int? idade = 50 + 30;
  //idade = 60; -> Erro, pois nao pode ser alterado

  const List<String> lista = ["Daniel", "Ciolfi"];
  //lista.add("Henrique"); -> Erro, pois nao pode ser adicionado
  print(lista);

  final DateTime agora = DateTime.now();
  //agora = DateTime.now(); -> Erro, pois nao pode ser alterado

  //Const -> Valores que podem ser atribuidos em tempo de compilação, antes de fato rodar.
  //Final -> Valores que vão ser atribuidos quando rodado, e não ao compilar, mas que tambem nao pode ser alterado

  const meuNome = "João";
  final String meuSobrenome; //final pode ser declarada, e só preenchida depois

  if (meuNome == "João") {
    meuSobrenome = "Freitas";
  } else {
    meuSobrenome = "Não sei";
  }

  print(meuNome);
  print(meuSobrenome);
}
