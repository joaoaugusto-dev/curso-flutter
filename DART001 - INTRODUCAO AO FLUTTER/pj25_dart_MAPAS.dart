void main() {
  Map<int, String?> ddds = {
    11: "São Paulo",
    19: "Campinas",
    41: "Curitiba",
    49: null,
  };

  print(ddds[19]);
  print(ddds[11]);
  print(ddds[41]);
  print(ddds[5]);

  String? cidade = ddds[5];
  print(cidade);

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
}
