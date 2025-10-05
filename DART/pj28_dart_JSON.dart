import 'dart:convert';

void main() {
  Map<String, dynamic> dados = json.decode(dadosDoUsuario());

  print(dados["cursos"][0]["dificuldade"]);
}

String dadosDoUsuario() {
  return """
{
  "nome": "Daniel Henrique",
  "sobrenome": "Ciolfi",
  "idade": 50,
  "casado": false,
  "altura": 1.82,
  "cursos": [
    {
      "nome": "Dart",
      "dificuldade": 1
    },
    {
      "nome": "Flutter",
      "dificuldade": 2
    }
  ],
  "endereco": {
    "cidade": "Campinas",
    "pais": "Brasil",
    "numero": 100
  }
}
""";
}
