void main() {
  Map<int, String> ddds = {11: "São Paulo", 19: "Campinas", 41: "Curitiba"};

  print(ddds[19]);
  print(ddds[11]);
  print(ddds[41]);
  print(ddds[5]);

  print(ddds.length); //conta quantos elementos tem em um mapa

  ddds[61] = "Brasília"; //cria um novo elemento

  print(ddds);

  ddds[49] = "Santa Catarina"; //altera um elemento

  print(ddds);

  ddds.remove(49); //remove um elemento

  print(ddds);

  //Chaves nunca podem se repetir, mas valores sim.

  print(ddds.values); //mostra os valores em formato de lista
  print(ddds.keys); //mostra as chaves em formato de lista

  print(ddds.containsKey(50)); //retorna se tem ou não uma chave
  print(ddds.containsValue("Campinas")); //retorna se tem ou não um valor

  print(ddds.isEmpty); //Retorna true se está vazio
  print(ddds.isEmpty); //Retorna true se tem dados

  ddds.forEach(
    (key, value) => print("Key: $key -- Value: $value"),
  ); //percorre uma funcao apra cada item do map

  //ddds.clear(); //limpa o map

  ddds.addAll({
    90: "Cidade Legal",
    91: "Cidade chata",
  }); // Adicione mais de um dado

  ddds.removeWhere((key, value) => key > 20);

  print(ddds);

  String? cidade =
      ddds[19]!; //esse é o null assertion, só usamos quando temos CERTEZA ABSOLUTA de que aquele valor não será null.
  //Quando não temos certeza, usamos ?? para declarar um valor padrão
  print(cidade.toUpperCase());
}
